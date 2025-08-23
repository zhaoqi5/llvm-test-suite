	.file	"partition.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh17partition_measureEv
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI0_1:
	.dword	0x40b087c3b666fb67              # double 4231.7645019878173
.LCPI0_2:
	.dword	0x4046a09e667f3bcd              # double 45.254833995939045
.LCPI0_3:
	.dword	0x3f80000000000000              # double 0.0078125
	.text
	.globl	_ZN4Mesh17partition_measureEv
	.p2align	2
	.type	_ZN4Mesh17partition_measureEv,@function
_ZN4Mesh17partition_measureEv:          # @_ZN4Mesh17partition_measureEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
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
	pcalau12i	$a1, %pc_hi20(measure_type)
	ld.w	$a1, $a1, %pc_lo12(measure_type)
	beqz	$a1, .LBB0_209
# %bb.1:                                # %if.then
	move	$fp, $a0
	ld.d	$a0, $a0, 1160
	addi.d	$a2, $a0, 127
	srli.d	$a2, $a2, 7
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	bltu	$a2, $a1, .LBB0_208
# %bb.2:                                # %if.then
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI0_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.w	$s6, $a2, 0
	pcalau12i	$s7, %pc_hi20(.LCPI0_3)
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	jr	$a1
.LBB0_3:                                # %for.cond.preheader
	beqz	$s6, .LBB0_208
# %bb.4:                                # %for.body.lr.ph
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	ld.d	$a1, $fp, 1368
	ld.d	$a2, $fp, 1352
	ld.d	$a3, $fp, 1392
	ld.d	$a4, $fp, 1376
	ld.d	$a5, $fp, 1384
	move	$a6, $zero
	move	$a7, $zero
	ori	$t0, $zero, 128
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.cond.cleanup9
                                        #   in Loop: Header=BB0_6 Depth=1
	fld.d	$fa1, $s7, %pc_lo12(.LCPI0_3)
	addi.w	$a6, $a6, 128
	movgr2fr.w	$fa2, $s1
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	addi.w	$t0, $t0, 128
	beq	$a7, $s6, .LBB0_207
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	move	$s1, $zero
	slli.w	$t1, $a7, 7
	addi.w	$a7, $a7, 1
	slli.w	$t2, $a7, 7
	alsl.d	$t3, $a6, $a1, 2
	alsl.d	$t4, $a6, $a2, 2
	alsl.d	$t5, $a6, $a4, 2
	alsl.d	$t6, $a6, $a5, 2
	alsl.d	$t7, $a6, $a3, 2
	move	$t8, $a6
	move	$fp, $a6
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, 4
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	beq	$t0, $t8, .LBB0_5
.LBB0_8:                                # %for.body10
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$fp, $a0, .LBB0_7
# %bb.9:                                # %if.end
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t3, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	ld.w	$s0, $t4, 0
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_11
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a3, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_11:                               # %if.end47
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t5, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_13
# %bb.12:                               # %land.lhs.true69
                                        #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a3, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_13:                               # %if.end87
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t6, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.d	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_15
# %bb.14:                               # %land.lhs.true109
                                        #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s2, $a4, $s2
	slt	$s3, $s2, $t1
	slt	$s2, $s2, $t2
	xori	$s2, $s2, 1
	or	$s2, $s3, $s2
	add.d	$s1, $s1, $s2
.LBB0_15:                               # %if.end127
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.w	$s3, $t7, 0
	slt	$s4, $s3, $t1
	slli.d	$s2, $s3, 2
	ldx.w	$s5, $a2, $s2
	slt	$s3, $s3, $t2
	xori	$s3, $s3, 1
	or	$s3, $s4, $s3
	add.w	$s1, $s1, $s3
	bge	$s0, $s5, .LBB0_7
# %bb.16:                               # %land.lhs.true150
                                        #   in Loop: Header=BB0_8 Depth=2
	ldx.w	$s0, $a4, $s2
	slt	$s2, $s0, $t1
	slt	$s0, $s0, $t2
	xori	$s0, $s0, 1
	or	$s0, $s2, $s0
	add.w	$s1, $s1, $s0
	b	.LBB0_7
.LBB0_17:                               # %for.cond422.preheader
	beqz	$s6, .LBB0_208
# %bb.18:                               # %for.body425.lr.ph
	move	$s0, $zero
	move	$s6, $zero
	addi.d	$s1, $sp, 88
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit428
                                        #   in Loop: Header=BB0_20 Depth=1
	beq	$s0, $s3, .LBB0_208
.LBB0_20:                               # %for.body425
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_72 Depth 2
	slli.d	$s7, $s6, 2
	st.d	$s1, $sp, 96
	st.d	$s1, $sp, 88
	st.d	$zero, $sp, 104
	slli.w	$s8, $s0, 7
	addi.w	$s0, $s0, 1
	slli.w	$s2, $s0, 7
	addi.w	$a0, $s6, 128
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 128
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %for.inc643
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, -1
	addi.d	$s7, $s7, 4
	beqz	$s3, .LBB0_59
.LBB0_22:                               # %for.body436
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s6, $a0, .LBB0_21
# %bb.23:                               # %if.end441
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1368
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_25
# %bb.24:                               # %if.end441
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_27
.LBB0_25:                               # %if.then451
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp46:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.26:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit356
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s5, $a1, $s7
.LBB0_27:                               # %if.end457
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_32
# %bb.28:                               # %land.lhs.true468
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_30
# %bb.29:                               # %land.lhs.true468
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_32
.LBB0_30:                               # %if.then484
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp48:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.31:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit361
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_32:                               # %if.end492
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_34
# %bb.33:                               # %if.end492
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_36
.LBB0_34:                               # %if.then502
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp50:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.35:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit366
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s5, $a1, $s7
.LBB0_36:                               # %if.end507
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_41
# %bb.37:                               # %land.lhs.true518
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_39
# %bb.38:                               # %land.lhs.true518
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_41
.LBB0_39:                               # %if.then534
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp52:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.40:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit371
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_41:                               # %if.end542
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1384
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_43
# %bb.42:                               # %if.end542
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_45
.LBB0_43:                               # %if.then552
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp54:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.44:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit376
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s5, $a1, $s7
.LBB0_45:                               # %if.end557
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_50
# %bb.46:                               # %land.lhs.true568
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_48
# %bb.47:                               # %land.lhs.true568
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_50
.LBB0_48:                               # %if.then584
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp56:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.49:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit381
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_50:                               # %if.end592
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1392
	ldx.w	$s5, $s4, $s7
	blt	$s5, $s8, .LBB0_52
# %bb.51:                               # %if.end592
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$s5, $s2, .LBB0_54
.LBB0_52:                               # %if.then602
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp58:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.53:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit386
                                        #   in Loop: Header=BB0_22 Depth=2
	ldx.w	$a1, $s4, $s7
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s5, $a1, $s7
.LBB0_54:                               # %if.end607
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s5, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s7
	bge	$a1, $a2, .LBB0_21
# %bb.55:                               # %land.lhs.true618
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s4, $fp, 1376
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s8, .LBB0_57
# %bb.56:                               # %land.lhs.true618
                                        #   in Loop: Header=BB0_22 Depth=2
	blt	$a0, $s2, .LBB0_21
.LBB0_57:                               # %if.then634
                                        #   in Loop: Header=BB0_22 Depth=2
.Ltmp60:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.58:                               # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit391
                                        #   in Loop: Header=BB0_22 Depth=2
	alsl.d	$a1, $s5, $s4, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_59:                               # %for.cond.cleanup435
                                        #   in Loop: Header=BB0_20 Depth=1
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.60:                               # %invoke.cont649
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 88
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 112
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s1, .LBB0_71
# %bb.61:                               # %if.end.i394
                                        #   in Loop: Header=BB0_20 Depth=1
	st.d	$s4, $sp, 120
	st.d	$s4, $sp, 112
	st.d	$zero, $sp, 128
	ld.d	$a1, $a0, 0
	bne	$a1, $s1, .LBB0_64
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_64 Depth=2
	move	$a0, $a1
.LBB0_63:                               # %if.end19.i405
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s1, .LBB0_68
.LBB0_64:                               # %while.body.i400
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_62
# %bb.65:                               # %if.then10.i415
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a3, $sp, 112
	beq	$a3, $a1, .LBB0_63
# %bb.66:                               # %if.then10.i415
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_63
# %bb.67:                               # %if.end10.i.i.i419
                                        #   in Loop: Header=BB0_64 Depth=2
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.d	$a1, $sp, 128
	ld.d	$a2, $sp, 104
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 128
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 104
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_68:                               # %while.end.i408
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB0_70
	.p2align	4, , 16
.LBB0_69:                               # %while.body.i.i.i411
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s4, .LBB0_69
.LBB0_70:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i414
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a0, $sp, 88
.LBB0_71:                               # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit422
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.d	$a1, $sp, 104
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_2)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa2, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa0, $fa3, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s1, .LBB0_19
	.p2align	4, , 16
.LBB0_72:                               # %while.body.i.i425
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bne	$s2, $s1, .LBB0_72
	b	.LBB0_19
.LBB0_73:                               # %for.cond671.preheader
	beqz	$s6, .LBB0_208
# %bb.74:                               # %for.body674.lr.ph
	move	$s1, $zero
	move	$s7, $zero
	addi.d	$s5, $sp, 88
	addi.d	$s6, $sp, 64
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_75:                               # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit590
                                        #   in Loop: Header=BB0_76 Depth=1
	beq	$s1, $s2, .LBB0_208
.LBB0_76:                               # %for.body674
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_139 Depth 2
                                        #     Child Loop BB0_144 Depth 2
                                        #     Child Loop BB0_148 Depth 2
                                        #     Child Loop BB0_150 Depth 2
	slli.d	$s3, $s7, 2
	st.d	$s5, $sp, 96
	st.d	$s5, $sp, 88
	st.d	$zero, $sp, 104
	st.d	$s6, $sp, 72
	st.d	$s6, $sp, 64
	st.d	$zero, $sp, 80
	slli.w	$s2, $s1, 7
	addi.w	$s1, $s1, 1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	slli.w	$s8, $s1, 7
	addi.w	$a0, $s7, 128
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $zero, 128
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_77:                               # %for.inc967
                                        #   in Loop: Header=BB0_78 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 4
	beqz	$s1, .LBB0_123
.LBB0_78:                               # %for.body685
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s7, $a0, .LBB0_77
# %bb.79:                               # %if.end690
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1368
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_81
# %bb.80:                               # %if.end690
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_84
.LBB0_81:                               # %if.then700
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.82:                               # %invoke.cont705
                                        #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s0, $a1, $s3
.Ltmp2:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.83:                               # %invoke.cont711
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
	ldx.w	$s4, $a1, $s3
.LBB0_84:                               # %if.end713
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_90
# %bb.85:                               # %land.lhs.true724
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_87
# %bb.86:                               # %land.lhs.true724
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_90
.LBB0_87:                               # %if.then740
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp5:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.88:                               # %invoke.cont747
                                        #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp7:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.89:                               # %invoke.cont757
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
.LBB0_90:                               # %if.end759
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_92
# %bb.91:                               # %if.end759
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_95
.LBB0_92:                               # %if.then769
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp10:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.93:                               # %invoke.cont773
                                        #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s0, $a1, $s3
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.94:                               # %invoke.cont780
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
	ldx.w	$s4, $a1, $s3
.LBB0_95:                               # %if.end782
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_101
# %bb.96:                               # %land.lhs.true793
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_98
# %bb.97:                               # %land.lhs.true793
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_101
.LBB0_98:                               # %if.then809
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp15:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.99:                               # %invoke.cont816
                                        #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1392
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp17:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.100:                              # %invoke.cont826
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
.LBB0_101:                              # %if.end828
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1384
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_103
# %bb.102:                              # %if.end828
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_106
.LBB0_103:                              # %if.then838
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp20:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.104:                              # %invoke.cont842
                                        #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s0, $a1, $s3
.Ltmp22:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.105:                              # %invoke.cont849
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
	ldx.w	$s4, $a1, $s3
.LBB0_106:                              # %if.end851
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_112
# %bb.107:                              # %land.lhs.true862
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_109
# %bb.108:                              # %land.lhs.true862
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_112
.LBB0_109:                              # %if.then878
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp25:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.110:                              # %invoke.cont885
                                        #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.111:                              # %invoke.cont895
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
.LBB0_112:                              # %if.end897
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1392
	ldx.w	$s4, $s0, $s3
	blt	$s4, $s2, .LBB0_114
# %bb.113:                              # %if.end897
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$s4, $s8, .LBB0_117
.LBB0_114:                              # %if.then907
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp30:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.115:                              # %invoke.cont911
                                        #   in Loop: Header=BB0_78 Depth=2
	ldx.w	$a1, $s0, $s3
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s0, $a1, $s3
.Ltmp32:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.116:                              # %invoke.cont918
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
	ldx.w	$s4, $a1, $s3
.LBB0_117:                              # %if.end920
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s4, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s3
	bge	$a1, $a2, .LBB0_77
# %bb.118:                              # %land.lhs.true931
                                        #   in Loop: Header=BB0_78 Depth=2
	ld.d	$s0, $fp, 1376
	ldx.w	$a0, $s0, $a0
	blt	$a0, $s2, .LBB0_120
# %bb.119:                              # %land.lhs.true931
                                        #   in Loop: Header=BB0_78 Depth=2
	blt	$a0, $s8, .LBB0_77
.LBB0_120:                              # %if.then947
                                        #   in Loop: Header=BB0_78 Depth=2
.Ltmp35:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.121:                              # %invoke.cont954
                                        #   in Loop: Header=BB0_78 Depth=2
	alsl.d	$a1, $s4, $s0, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$a0, $a1, $s3
	ld.d	$a1, $fp, 1376
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
.Ltmp38:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.122:                              # %invoke.cont964
                                        #   in Loop: Header=BB0_78 Depth=2
	bstrpick.d	$a1, $s0, 62, 61
	add.w	$a1, $s0, $a1
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 80
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_123:                              # %for.cond.cleanup684
                                        #   in Loop: Header=BB0_76 Depth=1
.Ltmp41:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s3, $sp, 112
# %bb.124:                              # %invoke.cont973
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s1, $sp, 88
	beq	$s1, $s5, .LBB0_134
# %bb.125:                              # %if.end.i519
                                        #   in Loop: Header=BB0_76 Depth=1
	st.d	$s3, $sp, 120
	st.d	$s3, $sp, 112
	st.d	$zero, $sp, 128
	ld.d	$a1, $s1, 0
	bne	$a1, $s5, .LBB0_128
	b	.LBB0_134
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=2
	move	$s1, $a1
.LBB0_127:                              # %if.end19.i530
                                        #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a1, $s1, 0
	beq	$a1, $s5, .LBB0_132
.LBB0_128:                              # %while.body.i525
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s1, 16
	ld.w	$a2, $a1, 16
	bne	$a0, $a2, .LBB0_126
# %bb.129:                              # %if.then10.i540
                                        #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a0, $sp, 112
	beq	$a0, $a1, .LBB0_127
# %bb.130:                              # %if.then10.i540
                                        #   in Loop: Header=BB0_128 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a0, .LBB0_127
# %bb.131:                              # %if.end10.i.i.i544
                                        #   in Loop: Header=BB0_128 Depth=2
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	ld.d	$a1, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 128
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 104
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_132:                              # %while.end.i533
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 112
	beq	$a0, $s3, .LBB0_134
	.p2align	4, , 16
.LBB0_133:                              # %while.body.i.i.i536
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s3, .LBB0_133
.LBB0_134:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit547
                                        #   in Loop: Header=BB0_76 Depth=1
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.135:                              # %invoke.cont975
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 64
	beq	$a0, $s6, .LBB0_146
# %bb.136:                              # %if.end.i550
                                        #   in Loop: Header=BB0_76 Depth=1
	st.d	$s3, $sp, 120
	st.d	$s3, $sp, 112
	st.d	$zero, $sp, 128
	ld.d	$a1, $a0, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $s6, .LBB0_139
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_137:                              #   in Loop: Header=BB0_139 Depth=2
	move	$a0, $a1
.LBB0_138:                              # %if.end19.i561
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s6, .LBB0_143
.LBB0_139:                              # %while.body.i556
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_137
# %bb.140:                              # %if.then10.i571
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a3, $sp, 112
	beq	$a3, $a1, .LBB0_138
# %bb.141:                              # %if.then10.i571
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_138
# %bb.142:                              # %if.end10.i.i.i575
                                        #   in Loop: Header=BB0_139 Depth=2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 128
	ld.d	$a2, $sp, 80
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 128
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 80
	b	.LBB0_138
	.p2align	4, , 16
.LBB0_143:                              # %while.end.i564
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 112
	beq	$a0, $s3, .LBB0_145
	.p2align	4, , 16
.LBB0_144:                              # %while.body.i.i.i567
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s3, .LBB0_144
.LBB0_145:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i570
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 64
	b	.LBB0_147
	.p2align	4, , 16
.LBB0_146:                              #   in Loop: Header=BB0_76 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
.LBB0_147:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit578
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a1, $sp, 104
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa1, $fa1, $fa0
	ld.d	$a2, $sp, 80
	lu12i.w	$a4, 275200
	bstrins.d	$a1, $a4, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a1, $a2, 32
	or	$a1, $a1, $a3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a2, $a4, 63, 32
	movgr2fr.d	$fa2, $a2
	fadd.d	$fa0, $fa2, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_1)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa3, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -1008
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a1, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $s6, .LBB0_149
	.p2align	4, , 16
.LBB0_148:                              # %while.body.i.i582
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s6, .LBB0_148
.LBB0_149:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit585
                                        #   in Loop: Header=BB0_76 Depth=1
	ld.d	$a0, $sp, 88
	beq	$a0, $s5, .LBB0_75
	.p2align	4, , 16
.LBB0_150:                              # %while.body.i.i587
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s5, .LBB0_150
	b	.LBB0_75
.LBB0_151:                              # %for.cond181.preheader
	beqz	$s6, .LBB0_208
# %bb.152:                              # %for.body184.lr.ph
	move	$a0, $zero
	move	$s1, $zero
	addi.d	$s2, $sp, 88
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $s3, .LBB0_208
.LBB0_154:                              # %for.body184
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_158 Depth 2
                                        #     Child Loop BB0_198 Depth 2
                                        #     Child Loop BB0_203 Depth 2
                                        #     Child Loop BB0_206 Depth 2
	move	$s7, $a0
	slli.d	$s8, $a0, 2
	st.d	$s2, $sp, 96
	st.d	$s2, $sp, 88
	st.d	$zero, $sp, 104
	slli.w	$s3, $s1, 7
	addi.w	$s1, $s1, 1
	slli.w	$s4, $s1, 7
	addi.w	$a0, $a0, 128
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s0, $zero, 128
	b	.LBB0_158
.LBB0_155:                              # %if.then390
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp80:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.156:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit344
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	.p2align	4, , 16
.LBB0_157:                              # %for.inc399
                                        #   in Loop: Header=BB0_158 Depth=2
	addi.d	$s7, $s7, 1
	addi.w	$s0, $s0, -1
	addi.d	$s8, $s8, 4
	beqz	$s0, .LBB0_193
.LBB0_158:                              # %for.body194
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 1160
	bgeu	$s7, $a0, .LBB0_157
# %bb.159:                              # %if.end199
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1368
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_161
# %bb.160:                              # %if.end199
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_163
.LBB0_161:                              # %if.then209
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp66:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.162:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1368
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s6, $a1, $s8
.LBB0_163:                              # %if.end213
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_168
# %bb.164:                              # %land.lhs.true224
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_166
# %bb.165:                              # %land.lhs.true224
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_168
.LBB0_166:                              # %if.then240
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp68:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.167:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit314
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_168:                              # %if.end248
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_170
# %bb.169:                              # %if.end248
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_172
.LBB0_170:                              # %if.then258
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.171:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit319
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1376
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s6, $a1, $s8
.LBB0_172:                              # %if.end263
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_177
# %bb.173:                              # %land.lhs.true274
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_175
# %bb.174:                              # %land.lhs.true274
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_177
.LBB0_175:                              # %if.then290
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp72:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.176:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit324
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_177:                              # %if.end298
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1384
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_179
# %bb.178:                              # %if.end298
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_181
.LBB0_179:                              # %if.then308
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp74:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.180:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit329
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1384
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s6, $a1, $s8
.LBB0_181:                              # %if.end313
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_186
# %bb.182:                              # %land.lhs.true324
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_184
# %bb.183:                              # %land.lhs.true324
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_186
.LBB0_184:                              # %if.then340
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp76:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.185:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit334
                                        #   in Loop: Header=BB0_158 Depth=2
	alsl.d	$a1, $s6, $s5, 2
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
.LBB0_186:                              # %if.end348
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1392
	ldx.w	$s6, $s5, $s8
	blt	$s6, $s3, .LBB0_188
# %bb.187:                              # %if.end348
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$s6, $s4, .LBB0_190
.LBB0_188:                              # %if.then358
                                        #   in Loop: Header=BB0_158 Depth=2
.Ltmp78:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.189:                              # %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit339
                                        #   in Loop: Header=BB0_158 Depth=2
	ldx.w	$a1, $s5, $s8
	st.w	$a1, $a0, 16
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	ld.d	$a1, $fp, 1392
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 104
	ldx.w	$s6, $a1, $s8
.LBB0_190:                              # %if.end363
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$a1, $fp, 1352
	slli.d	$a0, $s6, 2
	ldx.w	$a2, $a1, $a0
	ldx.w	$a1, $a1, $s8
	bge	$a1, $a2, .LBB0_157
# %bb.191:                              # %land.lhs.true374
                                        #   in Loop: Header=BB0_158 Depth=2
	ld.d	$s5, $fp, 1376
	ldx.w	$a0, $s5, $a0
	blt	$a0, $s3, .LBB0_155
# %bb.192:                              # %land.lhs.true374
                                        #   in Loop: Header=BB0_158 Depth=2
	blt	$a0, $s4, .LBB0_157
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_193:                              # %for.cond.cleanup193
                                        #   in Loop: Header=BB0_154 Depth=1
.Ltmp83:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIiSaIiEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.194:                              # %invoke.cont404
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 88
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 112
	beq	$a0, $s2, .LBB0_205
# %bb.195:                              # %if.end.i
                                        #   in Loop: Header=BB0_154 Depth=1
	st.d	$s4, $sp, 120
	st.d	$s4, $sp, 112
	st.d	$zero, $sp, 128
	ld.d	$a1, $a0, 0
	bne	$a1, $s2, .LBB0_198
	b	.LBB0_204
	.p2align	4, , 16
.LBB0_196:                              #   in Loop: Header=BB0_198 Depth=2
	move	$a0, $a1
.LBB0_197:                              # %if.end19.i
                                        #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a1, $a0, 0
	beq	$a1, $s2, .LBB0_202
.LBB0_198:                              # %while.body.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a1, 16
	bne	$a2, $a3, .LBB0_196
# %bb.199:                              # %if.then10.i
                                        #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a3, $sp, 112
	beq	$a3, $a1, .LBB0_197
# %bb.200:                              # %if.then10.i
                                        #   in Loop: Header=BB0_198 Depth=2
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB0_197
# %bb.201:                              # %if.end10.i.i.i
                                        #   in Loop: Header=BB0_198 Depth=2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 128
	ld.d	$a2, $sp, 104
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 128
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 104
	b	.LBB0_197
	.p2align	4, , 16
.LBB0_202:                              # %while.end.i
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB0_204
	.p2align	4, , 16
.LBB0_203:                              # %while.body.i.i.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s4, .LBB0_203
.LBB0_204:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit.i
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $sp, 88
.LBB0_205:                              # %_ZNSt7__cxx114listIiSaIiEE6uniqueEv.exit
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a1, $sp, 104
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa1, $a2
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	fld.d	$fa1, $s7, %pc_lo12(.LCPI0_3)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa2, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa0, $fa3, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a2, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	beq	$a0, $s2, .LBB0_153
	.p2align	4, , 16
.LBB0_206:                              # %while.body.i.i
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $s2, .LBB0_206
	b	.LBB0_153
.LBB0_207:                              # %for.cond.if.end1007.loopexit_crit_edge
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
.LBB0_208:                              # %if.end1007
	pcalau12i	$a0, %pc_hi20(meas_count)
	ld.w	$a1, $a0, %pc_lo12(meas_count)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(meas_count)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, %pc_lo12(_ZZN4Mesh17partition_measureEvE13offtile_ratio)
	pcalau12i	$a0, %pc_hi20(meas_sum_average)
	fld.d	$fa1, $a0, %pc_lo12(meas_sum_average)
	movgr2fr.d	$fa2, $a2
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a0, %pc_lo12(meas_sum_average)
.LBB0_209:                              # %if.end1014
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
.LBB0_210:                              # %lpad403
.Ltmp85:                                # EH_LABEL
	b	.LBB0_227
.LBB0_211:                              # %lpad648
.Ltmp65:                                # EH_LABEL
	b	.LBB0_230
.LBB0_212:                              # %lpad972
.Ltmp45:                                # EH_LABEL
	b	.LBB0_222
.LBB0_213:                              # %lpad825
.Ltmp19:                                # EH_LABEL
	b	.LBB0_222
.LBB0_214:                              # %lpad756
.Ltmp9:                                 # EH_LABEL
	b	.LBB0_222
.LBB0_215:                              # %lpad963
.Ltmp40:                                # EH_LABEL
	b	.LBB0_222
.LBB0_216:                              # %lpad894
.Ltmp29:                                # EH_LABEL
	b	.LBB0_222
.LBB0_217:                              # %lpad917
.Ltmp34:                                # EH_LABEL
	b	.LBB0_222
.LBB0_218:                              # %lpad848
.Ltmp24:                                # EH_LABEL
	b	.LBB0_222
.LBB0_219:                              # %lpad779
.Ltmp14:                                # EH_LABEL
	b	.LBB0_222
.LBB0_220:                              # %lpad710
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_222
.LBB0_221:                              # %lpad704
.Ltmp37:                                # EH_LABEL
.LBB0_222:                              # %ehcleanup992
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	addi.d	$s0, $sp, 64
	beq	$a0, $s0, .LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %while.body.i.i592
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_223
.LBB0_224:                              # %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit595
	ld.d	$a0, $sp, 88
	addi.d	$s0, $sp, 88
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_225:                              # %while.body.i.i597
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_225
	b	.LBB0_232
.LBB0_226:                              # %lpad
.Ltmp82:                                # EH_LABEL
.LBB0_227:                              # %ehcleanup
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	addi.d	$s0, $sp, 88
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_228:                              # %while.body.i.i346
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_228
	b	.LBB0_232
.LBB0_229:                              # %lpad455
.Ltmp62:                                # EH_LABEL
.LBB0_230:                              # %ehcleanup657
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	addi.d	$s0, $sp, 88
	beq	$a0, $s0, .LBB0_232
	.p2align	4, , 16
.LBB0_231:                              # %while.body.i.i430
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB0_231
.LBB0_232:                              # %ehcleanup1012
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN4Mesh17partition_measureEv, .Lfunc_end0-_ZN4Mesh17partition_measureEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_151-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_73-.LJTI0_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp63-.Ltmp61                #   Call between .Ltmp61 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp0-.Ltmp64                 #   Call between .Ltmp64 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 19 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 20 <<
	.uleb128 .Ltmp2-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 21 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 22 <<
	.uleb128 .Ltmp5-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 23 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 24 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 25 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 26 <<
	.uleb128 .Ltmp10-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 40 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 41 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 42 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 43 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 45 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 46 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 47 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 48 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 49 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 50 <<
	.uleb128 .Ltmp41-.Ltmp39                #   Call between .Ltmp39 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 51 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 52 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 53 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 54 <<
	.uleb128 .Ltmp80-.Ltmp44                #   Call between .Ltmp44 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 55 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 56 <<
	.uleb128 .Ltmp66-.Ltmp81                #   Call between .Ltmp81 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 57 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 58 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 59 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 62 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 63 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 65 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 66 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 67 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 68 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp83-.Ltmp79                #   Call between .Ltmp79 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 71 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 72 <<
	.uleb128 .Lfunc_end0-.Ltmp84            #   Call between .Ltmp84 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIiSaIiEE4sortEv,"axG",@progbits,_ZNSt7__cxx114listIiSaIiEE4sortEv,comdat
	.weak	_ZNSt7__cxx114listIiSaIiEE4sortEv # -- Begin function _ZNSt7__cxx114listIiSaIiEE4sortEv
	.p2align	2
	.type	_ZNSt7__cxx114listIiSaIiEE4sortEv,@function
_ZNSt7__cxx114listIiSaIiEE4sortEv:      # @_ZNSt7__cxx114listIiSaIiEE4sortEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1136
	.cfi_def_cfa_offset 1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_20
# %bb.1:                                # %lor.rhs
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_20
# %bb.2:                                # %if.end
	move	$s3, $zero
	addi.d	$s4, $sp, 1032
	st.d	$s4, $sp, 1040
	st.d	$s4, $sp, 1032
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 48
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 80
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 88
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a0, $sp, 120
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 144
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 160
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 176
	st.d	$a0, $sp, 168
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 192
	st.d	$a0, $sp, 184
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 208
	st.d	$a0, $sp, 200
	addi.d	$a0, $sp, 216
	st.d	$a0, $sp, 224
	st.d	$a0, $sp, 216
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 240
	st.d	$a0, $sp, 232
	addi.d	$a0, $sp, 248
	st.d	$a0, $sp, 256
	st.d	$a0, $sp, 248
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 272
	st.d	$a0, $sp, 264
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 288
	st.d	$a0, $sp, 280
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 304
	st.d	$a0, $sp, 296
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 320
	st.d	$a0, $sp, 312
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 336
	st.d	$a0, $sp, 328
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 352
	st.d	$a0, $sp, 344
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 368
	st.d	$a0, $sp, 360
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 384
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 400
	st.d	$a0, $sp, 392
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 416
	st.d	$a0, $sp, 408
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 432
	st.d	$a0, $sp, 424
	addi.d	$a0, $sp, 440
	st.d	$a0, $sp, 448
	st.d	$a0, $sp, 440
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 464
	st.d	$a0, $sp, 456
	addi.d	$a0, $sp, 472
	st.d	$a0, $sp, 480
	st.d	$a0, $sp, 472
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 496
	st.d	$a0, $sp, 488
	addi.d	$a0, $sp, 504
	st.d	$a0, $sp, 512
	st.d	$a0, $sp, 504
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 528
	st.d	$a0, $sp, 520
	addi.d	$a0, $sp, 536
	st.d	$a0, $sp, 544
	st.d	$a0, $sp, 536
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 560
	st.d	$a0, $sp, 552
	addi.d	$a0, $sp, 568
	st.d	$a0, $sp, 576
	st.d	$a0, $sp, 568
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 592
	st.d	$a0, $sp, 584
	addi.d	$a0, $sp, 600
	st.d	$a0, $sp, 608
	st.d	$a0, $sp, 600
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 624
	st.d	$a0, $sp, 616
	addi.d	$a0, $sp, 632
	st.d	$a0, $sp, 640
	st.d	$a0, $sp, 632
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 656
	st.d	$a0, $sp, 648
	addi.d	$a0, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a0, $sp, 664
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 688
	st.d	$a0, $sp, 680
	addi.d	$a0, $sp, 696
	st.d	$a0, $sp, 704
	st.d	$a0, $sp, 696
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 720
	st.d	$a0, $sp, 712
	addi.d	$a0, $sp, 728
	st.d	$a0, $sp, 736
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 752
	st.d	$a0, $sp, 744
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 768
	st.d	$a0, $sp, 760
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 784
	st.d	$a0, $sp, 776
	addi.d	$a0, $sp, 792
	st.d	$a0, $sp, 800
	st.d	$a0, $sp, 792
	addi.d	$a0, $sp, 808
	st.d	$a0, $sp, 816
	st.d	$a0, $sp, 808
	addi.d	$a0, $sp, 824
	st.d	$a0, $sp, 832
	st.d	$a0, $sp, 824
	addi.d	$a0, $sp, 840
	st.d	$a0, $sp, 848
	st.d	$a0, $sp, 840
	addi.d	$a0, $sp, 856
	st.d	$a0, $sp, 864
	st.d	$a0, $sp, 856
	addi.d	$a0, $sp, 872
	st.d	$a0, $sp, 880
	st.d	$a0, $sp, 872
	addi.d	$a0, $sp, 888
	st.d	$a0, $sp, 896
	st.d	$a0, $sp, 888
	addi.d	$a0, $sp, 904
	st.d	$a0, $sp, 912
	st.d	$a0, $sp, 904
	addi.d	$a0, $sp, 920
	st.d	$a0, $sp, 928
	st.d	$a0, $sp, 920
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 944
	st.d	$a0, $sp, 936
	addi.d	$a0, $sp, 952
	st.d	$a0, $sp, 960
	st.d	$a0, $sp, 952
	addi.d	$a0, $sp, 968
	st.d	$a0, $sp, 976
	st.d	$a0, $sp, 968
	addi.d	$a0, $sp, 984
	st.d	$a0, $sp, 992
	st.d	$a0, $sp, 984
	addi.d	$a0, $sp, 1000
	st.d	$a0, $sp, 1008
	st.d	$a0, $sp, 1000
	addi.d	$a0, $sp, 1016
	st.d	$a0, $sp, 1024
	st.d	$a0, $sp, 1016
	ld.d	$a1, $fp, 0
	addi.d	$s7, $sp, 24
	st.d	$s7, $sp, 32
	st.d	$s7, $sp, 24
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $zero
	addi.d	$s0, $sp, 8
.LBB1_4:                                # %for.end
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	add.d	$s3, $s3, $s5
	beq	$a1, $fp, .LBB1_18
.LBB1_5:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_10 Depth 3
	ld.d	$a2, $a1, 0
	addi.d	$a0, $sp, 8
	add.d	$s6, $a0, $s3
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 16
	beqz	$s3, .LBB1_3
# %bb.6:                                # %land.rhs.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s0, $sp, 8
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %invoke.cont18
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 16
	beq	$s0, $s6, .LBB1_17
.LBB1_8:                                # %land.rhs
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
	ld.d	$s1, $s0, 0
	beq	$s1, $s0, .LBB1_16
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a1, $sp, 1032
	beq	$a1, $s4, .LBB1_7
	.p2align	4, , 16
.LBB1_10:                               # %while.body.i
                                        #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a1, 16
	ld.w	$a2, $s1, 16
	bge	$a0, $a2, .LBB1_12
# %bb.11:                               # %if.then.i
                                        #   in Loop: Header=BB1_10 Depth=3
	ld.d	$s2, $a1, 0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	bne	$a1, $s4, .LBB1_13
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %if.else.i
                                        #   in Loop: Header=BB1_10 Depth=3
	ld.d	$s1, $s1, 0
	beq	$a1, $s4, .LBB1_14
.LBB1_13:                               # %if.end.i
                                        #   in Loop: Header=BB1_10 Depth=3
	bne	$s1, $s0, .LBB1_10
.LBB1_14:                               # %while.end.i
                                        #   in Loop: Header=BB1_8 Depth=2
	beq	$a1, $s4, .LBB1_7
# %bb.15:                               # %if.then9.i
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a2, $sp, 1032
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $zero
	addi.w	$s8, $zero, -16
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $zero
	move	$s0, $s6
	b	.LBB1_4
.LBB1_18:                               # %for.cond28.preheader
	ori	$a0, $zero, 16
	bne	$s3, $a0, .LBB1_21
.LBB1_19:                               # %for.end37
	add.d	$a0, $s6, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %return
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.LBB1_21:                               # %for.body30.preheader
	addi.d	$s0, $sp, 8
	add.d	$s4, $s0, $s3
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_22:                               # %_ZNSt6__list13_Scratch_listINSt8__detail15_List_node_baseEE5mergeINS3_8_Ptr_cmpISt14_List_iteratorIiEvEEEEvRS2_T_.exit47
                                        #   in Loop: Header=BB1_23 Depth=1
	addi.d	$s7, $s1, 16
	move	$s0, $s1
	beq	$s7, $s4, .LBB1_19
.LBB1_23:                               # %for.body30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_25 Depth 2
	ld.d	$a1, $s0, 0
	ld.d	$s2, $s0, 16
	move	$s1, $s7
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$s2, $s7, .LBB1_29
# %bb.24:                               # %for.body30
                                        #   in Loop: Header=BB1_23 Depth=1
	beq	$a1, $s0, .LBB1_29
	.p2align	4, , 16
.LBB1_25:                               # %while.body.i34
                                        #   Parent Loop BB1_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a1, 16
	ld.w	$a2, $s2, 16
	bge	$a0, $a2, .LBB1_27
# %bb.26:                               # %if.then.i46
                                        #   in Loop: Header=BB1_25 Depth=2
	ld.d	$s3, $a1, 0
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	bne	$a1, $s0, .LBB1_28
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_27:                               # %if.else.i40
                                        #   in Loop: Header=BB1_25 Depth=2
	ld.d	$s2, $s2, 0
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$a1, $s0, .LBB1_29
.LBB1_28:                               # %if.end.i41
                                        #   in Loop: Header=BB1_25 Depth=2
	bne	$s2, $s1, .LBB1_25
.LBB1_29:                               # %while.end.i30
                                        #   in Loop: Header=BB1_23 Depth=1
	beqz	$a0, .LBB1_22
# %bb.30:                               # %if.then9.i33
                                        #   in Loop: Header=BB1_23 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB1_22
.Lfunc_end1:
	.size	_ZNSt7__cxx114listIiSaIiEE4sortEv, .Lfunc_end1-_ZNSt7__cxx114listIiSaIiEE4sortEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN4Mesh23print_partition_measureEv # -- Begin function _ZN4Mesh23print_partition_measureEv
	.p2align	2
	.type	_ZN4Mesh23print_partition_measureEv,@function
_ZN4Mesh23print_partition_measureEv:    # @_ZN4Mesh23print_partition_measureEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(meas_count)
	ld.w	$a1, $a1, %pc_lo12(meas_count)
	beqz	$a1, .LBB2_4
# %bb.1:                                # %if.then
	pcalau12i	$a2, %pc_hi20(measure_type)
	ld.w	$a2, $a2, %pc_lo12(measure_type)
	ori	$a3, $zero, 4
	bltu	$a3, $a2, .LBB2_4
# %bb.2:                                # %if.then
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB2_3:                                # %if.then3
	ld.w	$a1, $a0, 620
	beqz	$a1, .LBB2_14
.LBB2_4:                                # %if.end28
	ld.w	$a1, $a0, 624
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_13
.LBB2_5:                                # %if.then30
	fld.d	$fa0, $a0, 664
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	move	$a2, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jr	$t8
.LBB2_6:                                # %if.then20
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	b	.LBB2_9
.LBB2_7:                                # %if.then10
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a3, $a2, %pc_lo12(.L.str.3)
	b	.LBB2_11
.LBB2_8:                                # %if.then15
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB2_9:                                # %if.end28
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a3, $a2, %pc_lo12(.L.str.5)
	b	.LBB2_11
.LBB2_10:                               # %if.then7
	pcalau12i	$a2, %pc_hi20(meas_sum_average)
	fld.d	$fa0, $a2, %pc_lo12(meas_sum_average)
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a3, $a2, %pc_lo12(.L.str.2)
.LBB2_11:                               # %if.end28
	move	$fp, $a0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh15parallel_outputEPKcdiS1_)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end28
	move	$a0, $fp
	ld.w	$a1, $a0, 624
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB2_5
.LBB2_13:                               # %if.end31
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_14:                               # %if.then5
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$a1, $a1, %pc_lo12(.Lstr)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_12
.Lfunc_end2:
	.size	_ZN4Mesh23print_partition_measureEv, .Lfunc_end2-_ZN4Mesh23print_partition_measureEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_3-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_7-.LJTI2_0
	.word	.LBB2_8-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
                                        # -- End function
	.text
	.globl	_ZN4Mesh20print_partition_typeEv # -- Begin function _ZN4Mesh20print_partition_typeEv
	.p2align	2
	.type	_ZN4Mesh20print_partition_typeEv,@function
_ZN4Mesh20print_partition_typeEv:       # @_ZN4Mesh20print_partition_typeEv
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 620
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.end42
	ret
.LBB3_2:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(initial_order)
	ld.d	$a0, $a0, %got_pc_lo12(initial_order)
	ld.w	$a0, $a0, 0
	ori	$fp, $zero, 3
	bltu	$fp, $a0, .LBB3_4
# %bb.3:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN4Mesh20print_partition_typeEv)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN4Mesh20print_partition_typeEv)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_4:                                # %if.end17
	pcalau12i	$a0, %got_pc_hi20(cycle_reorder)
	ld.d	$a0, $a0, %got_pc_lo12(cycle_reorder)
	ld.w	$a0, $a0, 0
	bltu	$fp, $a0, .LBB3_6
# %bb.5:                                # %switch.lookup2
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN4Mesh20print_partition_typeEv.2)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN4Mesh20print_partition_typeEv.2)
	ldx.d	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %if.end36
	pcalau12i	$a0, %got_pc_hi20(localStencil)
	ld.d	$a0, $a0, %got_pc_lo12(localStencil)
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	bne	$a0, $a1, .LBB3_8
# %bb.7:                                # %if.then37
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB3_8:                                # %if.else39
	ori	$a0, $zero, 10
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.Lfunc_end3:
	.size	_ZN4Mesh20print_partition_typeEv, .Lfunc_end3-_ZN4Mesh20print_partition_typeEv
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
	.p2align	2
	.type	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method,@function
_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method: # @_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	st.d	$zero, $sp, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a2, $fp, 1160
	st.w	$zero, $sp, 44
	beqz	$a2, .LBB4_3
# %bb.2:                                # %if.then.i
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a3, $sp, 44
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
.LBB4_3:                                # %invoke.cont3
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_14
# %bb.4:                                # %if.end
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB4_49
.LBB4_5:                                # %if.end
	ori	$a0, $zero, 1
	beq	$s1, $a0, .LBB4_16
# %bb.6:                                # %if.end
	bnez	$s1, .LBB4_50
# %bb.7:                                # %for.cond.preheader
	ld.d	$a0, $fp, 1160
	beqz	$a0, .LBB4_12
# %bb.8:                                # %iter.check1405
	ld.d	$a1, $s0, 0
	ori	$a2, $zero, 3
	bltu	$a2, $a0, .LBB4_110
# %bb.9:
	move	$a2, $zero
.LBB4_10:                               # %for.body.preheader
	move	$a3, $a2
	.p2align	4, , 16
.LBB4_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a2, 2
	stx.w	$a3, $a1, $a2
	addi.w	$a3, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a2, $a0, .LBB4_11
.LBB4_12:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 56
.Ltmp153:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.13:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit389.thread
	fld.d	$fa1, $fp, 368
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 368
	b	.LBB4_98
.LBB4_14:                               # %if.else
	ld.d	$a0, $fp, 864
	ld.d	$a2, $fp, 856
	ld.d	$a1, $fp, 1160
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB4_28
# %bb.15:                               # %if.then.i113
	addi.d	$a0, $fp, 856
	sub.d	$a1, $a1, $a3
.Ltmp91:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
	b	.LBB4_31
.LBB4_16:                               # %sw.bb12
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 1424
	ld.d	$a1, $fp, 1416
	ld.d	$a2, $fp, 1160
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bgeu	$a0, $a2, .LBB4_18
# %bb.17:                               # %if.then16
.Ltmp121:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
.LBB4_18:                               # %if.end18
.Ltmp123:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_centerminmaxEv)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.19:                               # %invoke.cont19
	ld.d	$s6, $fp, 1160
	beqz	$s6, .LBB4_72
# %bb.20:                               # %if.else.i451
	srli.d	$a0, $s6, 60
	bnez	$a0, .LBB4_268
# %bb.21:                               # %if.then.i.i.i23.i
	slli.d	$s5, $s6, 3
.Ltmp125:                               # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.22:                               # %call5.i.i.i.noexc
	move	$s4, $a0
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s6, $a0, .LBB4_24
# %bb.23:                               # %if.end.i.i.i.i26.i
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %if.then.i.i.i23.i482
	alsl.d	$s8, $s6, $s4, 3
.Ltmp127:                               # EH_LABEL
	move	$s0, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.25:                               # %call5.i.i.i.noexc504
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s4, 0
	beq	$s6, $a0, .LBB4_27
# %bb.26:                               # %if.end.i.i.i.i26.i489
	addi.d	$a0, $s4, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_27:                               # %.noexc155
	alsl.d	$s5, $s6, $s4, 3
	move	$s7, $s8
	bnez	$s6, .LBB4_73
	b	.LBB4_77
.LBB4_28:                               # %if.else.i109
	bgeu	$a1, $a3, .LBB4_31
# %bb.29:                               # %if.then5.i
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB4_31
# %bb.30:                               # %invoke.cont.i.i112
	st.d	$a1, $fp, 864
.LBB4_31:                               # %invoke.cont5
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB4_48
# %bb.32:                               # %for.body.lr.ph.i
	ld.d	$a4, $fp, 864
	ld.d	$a1, $fp, 856
	move	$a2, $zero
	move	$a3, $zero
	sub.d	$a4, $a4, $a1
	srai.d	$a5, $a4, 2
	div.du	$a4, $a5, $s2
	addi.w	$a5, $a5, 0
	mod.w	$a5, $a5, $s2
	addi.d	$a6, $a1, 32
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %for.cond.cleanup10.i
                                        #   in Loop: Header=BB4_34 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $s2, .LBB4_48
.LBB4_34:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
                                        #     Child Loop BB4_44 Depth 2
                                        #     Child Loop BB4_47 Depth 2
	add.d	$a3, $a3, $a4
	slt	$t1, $a2, $a5
	add.w	$a3, $a3, $t1
	blt	$a3, $a0, .LBB4_33
# %bb.35:                               # %iter.check
                                        #   in Loop: Header=BB4_34 Depth=1
	bltu	$a7, $a3, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_34 Depth=1
	move	$t1, $zero
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_37:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_34 Depth=1
	bgeu	$a3, $t0, .LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_34 Depth=1
	move	$t1, $zero
	b	.LBB4_43
.LBB4_39:                               # %vector.ph
                                        #   in Loop: Header=BB4_34 Depth=1
	bstrpick.d	$t1, $a3, 30, 4
	slli.d	$t1, $t1, 4
	xvreplgr2vr.w	$xr0, $a2
	move	$t2, $a6
	move	$t3, $t1
	.p2align	4, , 16
.LBB4_40:                               # %vector.body
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t2, -32
	xvst	$xr0, $t2, 0
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB4_40
# %bb.41:                               # %middle.block
                                        #   in Loop: Header=BB4_34 Depth=1
	beq	$t1, $a3, .LBB4_33
# %bb.42:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_34 Depth=1
	andi	$t2, $a3, 12
	beqz	$t2, .LBB4_46
.LBB4_43:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_34 Depth=1
	move	$t2, $t1
	bstrpick.d	$t1, $a3, 30, 2
	slli.d	$t1, $t1, 2
	vreplgr2vr.w	$vr0, $a2
	alsl.d	$t3, $t2, $a1, 2
	.p2align	4, , 16
.LBB4_44:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t3, 0
	addi.d	$t2, $t2, 4
	addi.d	$t3, $t3, 16
	bne	$t1, $t2, .LBB4_44
# %bb.45:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_34 Depth=1
	beq	$t1, $a3, .LBB4_33
.LBB4_46:                               # %for.body11.i.preheader
                                        #   in Loop: Header=BB4_34 Depth=1
	alsl.d	$t2, $t1, $a1, 2
	.p2align	4, , 16
.LBB4_47:                               # %for.body11.i
                                        #   Parent Loop BB4_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a2, $t2, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	bltu	$t1, $a3, .LBB4_47
	b	.LBB4_33
.LBB4_48:                               # %_ZN4Mesh17calc_distributionEi.exit
	st.w	$zero, $fp, 636
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB4_5
.LBB4_49:                               # %sw.bb246
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_51
.LBB4_50:
	move	$s0, $zero
	move	$s3, $zero
	move	$s7, $zero
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB4_88
.LBB4_51:                               # %if.else250
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s4, $fp, 1160
	srli.d	$a0, $s4, 61
	bnez	$a0, .LBB4_268
# %bb.52:                               # %if.then.i.i.i23.i531
	slli.d	$s6, $s4, 2
.Ltmp94:                                # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.53:                               # %call5.i.i.i.noexc550
	move	$s5, $a0
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s5, 0
	beq	$s4, $a0, .LBB4_55
# %bb.54:                               # %if.end.i.i.i.i26.i538
	addi.d	$a0, $s5, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_55:                               # %if.then.i.i.i23.i577
	alsl.d	$s7, $s4, $s5, 2
.Ltmp96:                                # EH_LABEL
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.56:                               # %call5.i.i.i.noexc599
	move	$t2, $a0
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $t2, 0
	beq	$s4, $a0, .LBB4_58
# %bb.57:                               # %if.end.i.i.i.i26.i584
	addi.d	$a0, $t2, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	move	$s0, $t2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t2, $s0
.LBB4_58:                               # %iter.check1126
	ld.d	$a1, $fp, 1328
	ld.d	$a2, $fp, 1336
	ori	$a3, $zero, 3
	addi.d	$a0, $s4, -1
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	bltu	$a3, $s4, .LBB4_128
# %bb.59:
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
.LBB4_60:                               # %for.body261.preheader
	addi.w	$a6, $a3, 1
	.p2align	4, , 16
.LBB4_61:                               # %for.body261
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a7, $a1, $a3
	slt	$t0, $a4, $a7
	ldx.w	$a3, $a2, $a3
	maskeqz	$a7, $a7, $t0
	masknez	$a4, $a4, $t0
	or	$a4, $a7, $a4
	slt	$a7, $a5, $a3
	maskeqz	$a3, $a3, $a7
	masknez	$a5, $a5, $a7
	or	$a5, $a3, $a5
	bstrpick.d	$a3, $a6, 31, 0
	addi.w	$a6, $a6, 1
	bltu	$a3, $s4, .LBB4_61
.LBB4_62:                               # %for.body291.lr.ph
	bstrpick.d	$a1, $a4, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	bstrpick.d	$a1, $a5, 31, 0
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	vldi	$vr2, -976
	ld.d	$a1, $fp, 1328
	ld.d	$a2, $fp, 1336
	fdiv.d	$fa0, $fa2, $fa0
	ori	$a3, $zero, 16
	fdiv.d	$fa1, $fa2, $fa1
	bgeu	$s4, $a3, .LBB4_132
# %bb.63:
	move	$a3, $zero
.LBB4_64:                               # %for.body291.preheader
	addi.w	$a0, $a3, 1
	.p2align	4, , 16
.LBB4_65:                               # %for.body291
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a1, $a3
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	stx.w	$a4, $s1, $a3
	ldx.w	$a4, $a2, $a3
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	stx.w	$a4, $s2, $a3
	bstrpick.d	$a3, $a0, 31, 0
	addi.w	$a0, $a0, 1
	bltu	$a3, $s4, .LBB4_65
.LBB4_66:                               # %for.cond.cleanup290
	ld.d	$a3, $fp, 1352
	ld.w	$a4, $fp, 1120
	ld.w	$a5, $fp, 1128
	ld.d	$a6, $sp, 64
	ld.d	$a7, $t1, 0
	alsl.d	$s0, $s4, $t2, 2
.Ltmp98:                                # EH_LABEL
	addi.w	$a0, $s4, 0
	move	$s3, $zero
	move	$s8, $zero
	move	$a1, $s1
	move	$a2, $s2
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calc_zorder)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.67:                               # %invoke.cont318
	ld.d	$s4, $fp, 1160
	srli.d	$a0, $s4, 61
	bnez	$a0, .LBB4_270
# %bb.68:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i284
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	beqz	$s4, .LBB4_191
# %bb.69:                               # %if.then.i.i.i.i3.i286
	slli.d	$s3, $s4, 2
.Ltmp100:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.70:                               # %call5.i.i.i2.i.i.noexc299
	move	$s6, $a0
	alsl.d	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s4, $a0, .LBB4_192
# %bb.71:                               # %if.end.i.i.i.i.i.i292
	addi.d	$a0, $s6, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_192
.LBB4_72:
	move	$s7, $zero
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	beqz	$s6, .LBB4_77
.LBB4_73:                               # %for.body32.lr.ph
	fld.d	$fa1, $fp, 1240
	fld.d	$fa0, $fp, 1232
	fsub.d	$fa1, $fa1, $fa0
	frecip.d	$fa1, $fa1
	fld.d	$fa3, $fp, 1256
	fld.d	$fa2, $fp, 1248
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1440
	ld.d	$a2, $fp, 1464
	ld.d	$a3, $fp, 1488
	fsub.d	$fa3, $fa3, $fa2
	ori	$a4, $zero, 12
	frecip.d	$fa3, $fa3
	bgeu	$s6, $a4, .LBB4_114
# %bb.74:
	move	$a4, $zero
.LBB4_75:                               # %for.body32.preheader
	addi.w	$a5, $a4, 1
	vldi	$vr4, -928
	.p2align	4, , 16
.LBB4_76:                               # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $a1, $a4
	fldx.d	$fa6, $a0, $a4
	fmul.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa6, $fa5
	fsub.d	$fa5, $fa5, $fa0
	fmul.d	$fa5, $fa1, $fa5
	fstx.d	$fa5, $s3, $a4
	fldx.d	$fa5, $a3, $a4
	fldx.d	$fa6, $a2, $a4
	fmul.d	$fa5, $fa5, $fa4
	fadd.d	$fa5, $fa6, $fa5
	fsub.d	$fa5, $fa5, $fa2
	fmul.d	$fa5, $fa3, $fa5
	fstx.d	$fa5, $s4, $a4
	bstrpick.d	$a4, $a5, 31, 0
	addi.w	$a5, $a5, 1
	bltu	$a4, $s6, .LBB4_76
.LBB4_77:                               # %for.cond.cleanup31
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_86
# %bb.78:                               # %if.then59
	ld.d	$a0, $fp, 1416
	ld.d	$a1, $fp, 1424
	beq	$a1, $a0, .LBB4_80
# %bb.79:                               # %invoke.cont.i.i165
	st.d	$a0, $fp, 1424
.LBB4_80:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit
	ld.d	$a0, $fp, 1440
	ld.d	$a1, $fp, 1448
	beq	$a1, $a0, .LBB4_82
# %bb.81:                               # %invoke.cont.i.i168
	st.d	$a0, $fp, 1448
.LBB4_82:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit169
	ld.d	$a0, $fp, 1464
	ld.d	$a1, $fp, 1472
	beq	$a1, $a0, .LBB4_84
# %bb.83:                               # %invoke.cont.i.i172
	st.d	$a0, $fp, 1472
.LBB4_84:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit173
	ld.d	$a0, $fp, 1488
	ld.d	$a1, $fp, 1496
	beq	$a1, $a0, .LBB4_86
# %bb.85:                               # %invoke.cont.i.i176
	st.d	$a0, $fp, 1496
.LBB4_86:                               # %if.end64
	ld.w	$a0, $fp, 628
	beqz	$a0, .LBB4_101
# %bb.87:
	move	$s0, $zero
.LBB4_88:                               # %sw.epilog
	move	$s2, $zero
	move	$s8, $zero
	move	$s1, $zero
.LBB4_89:                               # %sw.epilog
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 56
.Ltmp156:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.90:                               # %cleanup
	fld.d	$fa1, $fp, 368
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 368
	beqz	$s4, .LBB4_92
# %bb.91:                               # %if.then.i.i.i370
	sub.d	$a1, $s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_92:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit375
	beqz	$s3, .LBB4_94
# %bb.93:                               # %if.then.i.i.i377
	sub.d	$a1, $s7, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_94:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit382
	beqz	$s2, .LBB4_96
# %bb.95:                               # %if.then.i.i.i384
	sub.d	$a1, $s0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_96:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit389
	beqz	$s1, .LBB4_98
# %bb.97:                               # %if.then.i.i.i391
	sub.d	$a1, $s8, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_98:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit396
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB4_100
# %bb.99:                               # %if.then.i.i.i398
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_100:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit403
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
.LBB4_101:                              # %if.else68
	slli.d	$a0, $s6, 3
	alsl.d	$a0, $s6, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.Ltmp131:                               # EH_LABEL
	addi.w	$a0, $s6, 0
	ori	$a5, $zero, 1
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(hsfc2sort)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.102:                              # %for.cond78.preheader
	ld.d	$s0, $fp, 1160
	beqz	$s0, .LBB4_142
# %bb.103:                              # %iter.check1310
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3
	bltu	$a1, $s0, .LBB4_241
# %bb.104:
	move	$a1, $zero
.LBB4_105:                              # %for.body83.preheader
	addi.w	$a2, $a1, 1
	.p2align	4, , 16
.LBB4_106:                              # %for.body83
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s1, $a1
	stx.w	$a3, $a0, $a1
	bstrpick.d	$a1, $a2, 31, 0
	addi.w	$a2, $a2, 1
	bltu	$a1, $s0, .LBB4_106
.LBB4_107:                              # %if.then.i.i.i.i3.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	slli.d	$s1, $s0, 2
.Ltmp134:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.108:                              # %call5.i.i.i2.i.i.noexc
	move	$s6, $a0
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s6, 0
	beq	$s0, $a0, .LBB4_143
# %bb.109:                              # %if.end.i.i.i.i.i.i
	addi.d	$a0, $s6, 4
	addi.d	$a2, $s1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB4_143
.LBB4_110:                              # %vector.scevcheck1401
	addi.d	$a3, $a0, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a2, $zero
	beq	$a4, $a5, .LBB4_10
# %bb.111:                              # %vector.scevcheck1401
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB4_10
# %bb.112:                              # %vector.main.loop.iter.check1407
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB4_246
# %bb.113:
	move	$a2, $zero
	b	.LBB4_250
.LBB4_114:                              # %vector.scevcheck1258
	addi.d	$a5, $s6, -1
	bstrpick.d	$a6, $a5, 31, 0
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	move	$a4, $zero
	beq	$a6, $a7, .LBB4_75
# %bb.115:                              # %vector.scevcheck1258
	srli.d	$a5, $a5, 32
	bnez	$a5, .LBB4_75
# %bb.116:                              # %vector.memcheck1259
	sub.d	$a6, $s4, $s3
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB4_75
# %bb.117:                              # %vector.memcheck1259
	sub.d	$a6, $s3, $a0
	bltu	$a6, $a5, .LBB4_75
# %bb.118:                              # %vector.memcheck1259
	sub.d	$a6, $s3, $a1
	ori	$a5, $zero, 32
	bltu	$a6, $a5, .LBB4_75
# %bb.119:                              # %vector.memcheck1259
	sub.d	$a6, $a2, $s3
	bltu	$a6, $a5, .LBB4_75
# %bb.120:                              # %vector.memcheck1259
	sub.d	$a6, $a3, $s3
	ori	$a5, $zero, 32
	bltu	$a6, $a5, .LBB4_75
# %bb.121:                              # %vector.memcheck1259
	sub.d	$a6, $s4, $a0
	bltu	$a6, $a5, .LBB4_75
# %bb.122:                              # %vector.memcheck1259
	sub.d	$a6, $s4, $a1
	ori	$a5, $zero, 32
	bltu	$a6, $a5, .LBB4_75
# %bb.123:                              # %vector.memcheck1259
	sub.d	$a6, $s4, $a2
	bltu	$a6, $a5, .LBB4_75
# %bb.124:                              # %vector.memcheck1259
	sub.d	$a5, $s4, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB4_75
# %bb.125:                              # %vector.ph1281
	bstrpick.d	$a4, $s6, 32, 2
	slli.d	$a4, $a4, 2
	xvreplve0.d	$xr4, $xr0
	xvreplve0.d	$xr5, $xr1
	xvreplve0.d	$xr6, $xr2
	xvreplve0.d	$xr7, $xr3
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr8, $a5
	move	$a5, $a0
	move	$a6, $a1
	move	$a7, $s3
	move	$t0, $a2
	move	$t1, $a3
	move	$t2, $s4
	move	$t3, $a4
	.p2align	4, , 16
.LBB4_126:                              # %vector.body1292
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr9, $a6, 0
	xvld	$xr10, $a5, 0
	xvfmul.d	$xr9, $xr9, $xr8
	xvfadd.d	$xr9, $xr10, $xr9
	xvfsub.d	$xr9, $xr9, $xr4
	xvfmul.d	$xr9, $xr5, $xr9
	xvst	$xr9, $a7, 0
	xvld	$xr9, $t1, 0
	xvld	$xr10, $t0, 0
	xvfmul.d	$xr9, $xr9, $xr8
	xvfadd.d	$xr9, $xr10, $xr9
	xvfsub.d	$xr9, $xr9, $xr6
	xvfmul.d	$xr9, $xr7, $xr9
	xvst	$xr9, $t2, 0
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 32
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$t3, .LBB4_126
# %bb.127:                              # %middle.block1299
	bne	$s6, $a4, .LBB4_75
	b	.LBB4_77
.LBB4_128:                              # %vector.scevcheck
	bstrpick.d	$a4, $a0, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a3, $zero
	beq	$a4, $a5, .LBB4_253
# %bb.129:                              # %vector.scevcheck
	srli.d	$a6, $a0, 32
	move	$a4, $a3
	move	$a5, $a3
	bnez	$a6, .LBB4_60
# %bb.130:                              # %vector.main.loop.iter.check1128
	ori	$a3, $zero, 16
	bgeu	$s4, $a3, .LBB4_254
# %bb.131:
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB4_258
.LBB4_132:                              # %vector.scevcheck1170
	bstrpick.d	$a4, $a0, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a3, $zero
	beq	$a4, $a5, .LBB4_64
# %bb.133:                              # %vector.scevcheck1170
	srli.d	$a0, $a0, 32
	bnez	$a0, .LBB4_64
# %bb.134:                              # %vector.memcheck
	sub.d	$a4, $t2, $s5
	ori	$a0, $zero, 32
	move	$a3, $zero
	bltu	$a4, $a0, .LBB4_64
# %bb.135:                              # %vector.memcheck
	sub.d	$a4, $s5, $a1
	bltu	$a4, $a0, .LBB4_64
# %bb.136:                              # %vector.memcheck
	sub.d	$a4, $a2, $s5
	ori	$a0, $zero, 32
	bltu	$a4, $a0, .LBB4_64
# %bb.137:                              # %vector.memcheck
	sub.d	$a4, $t2, $a1
	bltu	$a4, $a0, .LBB4_64
# %bb.138:                              # %vector.memcheck
	sub.d	$a0, $t2, $a2
	ori	$a4, $zero, 32
	bltu	$a0, $a4, .LBB4_64
# %bb.139:                              # %vector.ph1181
	bstrpick.d	$a0, $s4, 32, 3
	slli.d	$a3, $a0, 3
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	move	$a0, $a1
	move	$a4, $s1
	move	$a5, $a2
	move	$a6, $s2
	move	$a7, $a3
	.p2align	4, , 16
.LBB4_140:                              # %vector.body1188
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a0, 0
	xvpermi.q	$xr5, $xr4, 1
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	xvfmul.d	$xr5, $xr2, $xr5
	xvfmul.d	$xr4, $xr2, $xr4
	xvftintrz.l.d	$xr4, $xr4
	xvpermi.d	$xr6, $xr4, 238
	xvpickev.w	$xr4, $xr6, $xr4
	xvftintrz.l.d	$xr5, $xr5
	xvpermi.d	$xr6, $xr5, 238
	xvpickev.w	$xr5, $xr6, $xr5
	xvpermi.q	$xr4, $xr5, 2
	xvst	$xr4, $a4, 0
	xvld	$xr4, $a5, 0
	xvpermi.q	$xr5, $xr4, 1
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	xvfmul.d	$xr5, $xr3, $xr5
	xvfmul.d	$xr4, $xr3, $xr4
	xvftintrz.l.d	$xr4, $xr4
	xvpermi.d	$xr6, $xr4, 238
	xvpickev.w	$xr4, $xr6, $xr4
	xvftintrz.l.d	$xr5, $xr5
	xvpermi.d	$xr6, $xr5, 238
	xvpickev.w	$xr5, $xr6, $xr5
	xvpermi.q	$xr4, $xr5, 2
	xvst	$xr4, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	addi.d	$a0, $a0, 32
	bnez	$a7, .LBB4_140
# %bb.141:                              # %middle.block1193
	bne	$s4, $a3, .LBB4_64
	b	.LBB4_66
.LBB4_142:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB4_143:                              # %invoke.cont93
	ld.d	$a1, $fp, 1368
	addi.d	$s1, $fp, 8
.Ltmp137:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.144:                              # %invoke.cont95
	ld.d	$a1, $fp, 1376
.Ltmp139:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.145:                              # %invoke.cont97
	ld.d	$a1, $fp, 1384
.Ltmp141:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.146:                              # %invoke.cont99
	ld.d	$a1, $fp, 1392
.Ltmp143:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.147:                              # %invoke.cont101
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp145:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.148:                              # %invoke.cont104
.Ltmp147:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.149:                              # %invoke.cont105
	ld.d	$a0, $fp, 1424
	ld.d	$s2, $fp, 1416
	ld.d	$s0, $fp, 1160
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB4_190
# %bb.150:                              # %if.then.i.i.i.i3.i193
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s1, $s0, 3
.Ltmp150:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.151:                              # %call5.i.i.i2.i.i.noexc205
	ori	$s7, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s0, $s7, .LBB4_153
# %bb.152:                              # %invoke.cont114
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s1, -8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	addi.w	$a1, $s0, 0
	blt	$a1, $s7, .LBB4_189
.LBB4_153:                              # %for.body121.preheader
	bstrpick.d	$a1, $s0, 30, 0
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_158
# %bb.154:                              # %for.body121.preheader
	sub.d	$a3, $a0, $s2
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB4_158
# %bb.155:                              # %vector.ph1345
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s2, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_156:                              # %vector.body1348
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_156
# %bb.157:                              # %middle.block1353
	beq	$a1, $a2, .LBB4_160
.LBB4_158:                              # %for.body121.preheader1451
	alsl.d	$a3, $a2, $s2, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_159:                              # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_159
.LBB4_160:                              # %for.body136.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_161:                              # %for.body136
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s2, $s2, 8
	bnez	$a3, .LBB4_161
# %bb.162:                              # %for.body153.lr.ph
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_167
# %bb.163:                              # %for.body153.lr.ph
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_167
# %bb.164:                              # %vector.ph1360
	bstrpick.d	$a3, $s0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_165:                              # %vector.body1363
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_165
# %bb.166:                              # %middle.block1368
	beq	$a1, $a3, .LBB4_169
.LBB4_167:                              # %for.body153.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_168:                              # %for.body153
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_168
.LBB4_169:                              # %for.body168.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_170:                              # %for.body168
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_170
# %bb.171:                              # %for.body185.lr.ph
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_176
# %bb.172:                              # %for.body185.lr.ph
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_176
# %bb.173:                              # %vector.ph1375
	bstrpick.d	$a3, $s0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_174:                              # %vector.body1378
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_174
# %bb.175:                              # %middle.block1383
	beq	$a1, $a3, .LBB4_178
.LBB4_176:                              # %for.body185.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_177:                              # %for.body185
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_177
.LBB4_178:                              # %for.body200.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s0, 30, 0
	.p2align	4, , 16
.LBB4_179:                              # %for.body200
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_179
# %bb.180:                              # %for.body217.lr.ph
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 8
	bstrpick.d	$a2, $s0, 30, 0
	bltu	$a1, $a5, .LBB4_185
# %bb.181:                              # %for.body217.lr.ph
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB4_185
# %bb.182:                              # %vector.ph1390
	bstrpick.d	$a4, $s0, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a0, 32
	addi.d	$a6, $a3, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_183:                              # %vector.body1393
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_183
# %bb.184:                              # %middle.block1398
	beq	$a1, $a4, .LBB4_187
.LBB4_185:                              # %for.body217.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_186:                              # %for.body217
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_186
.LBB4_187:                              # %for.body232.lr.ph
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_188:                              # %for.body232
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_188
.LBB4_189:                              # %if.then.i.i.i
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
.LBB4_190:                              # %if.end243
	move	$s0, $zero
	move	$s2, $zero
	move	$s8, $zero
	move	$s1, $zero
	bnez	$s6, .LBB4_240
	b	.LBB4_89
.LBB4_191:
	move	$s6, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB4_192:                              # %invoke.cont323
	ld.d	$a1, $fp, 1368
	addi.d	$s3, $fp, 8
.Ltmp102:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.193:                              # %invoke.cont329
	ld.d	$a1, $fp, 1376
.Ltmp104:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.194:                              # %invoke.cont332
	ld.d	$a1, $fp, 1384
.Ltmp106:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.195:                              # %invoke.cont335
	ld.d	$a1, $fp, 1392
.Ltmp108:                               # EH_LABEL
	ori	$a2, $zero, 256
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus20set_memory_attributeEPvi)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.196:                              # %invoke.cont338
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp110:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN10MallocPlus18memory_reorder_allEPi)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.197:                              # %invoke.cont341
.Ltmp112:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.198:                              # %invoke.cont342
	ld.d	$a0, $fp, 1424
	ld.d	$s5, $fp, 1416
	ld.d	$s4, $fp, 1160
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	addi.d	$a1, $s4, -1
	bgeu	$a1, $a0, .LBB4_239
# %bb.199:                              # %if.then.i.i.i.i3.i312
	slli.d	$s3, $s4, 3
.Ltmp115:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.200:                              # %call5.i.i.i2.i.i.noexc325
	ori	$s7, $zero, 1
	st.d	$zero, $a0, 0
	beq	$s4, $s7, .LBB4_202
# %bb.201:                              # %invoke.cont352
	addi.d	$a1, $a0, 8
	addi.d	$a2, $s3, -8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $s4, 0
	blt	$a1, $s7, .LBB4_238
.LBB4_202:                              # %for.body361.preheader
	bstrpick.d	$a1, $s4, 30, 0
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB4_207
# %bb.203:                              # %for.body361.preheader
	sub.d	$a3, $a0, $s5
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB4_207
# %bb.204:                              # %vector.ph1202
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s5, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB4_205:                              # %vector.body1205
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_205
# %bb.206:                              # %middle.block1210
	beq	$a1, $a2, .LBB4_209
.LBB4_207:                              # %for.body361.preheader1452
	alsl.d	$a3, $a2, $s5, 3
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB4_208:                              # %for.body361
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	bnez	$a2, .LBB4_208
.LBB4_209:                              # %for.body376.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_210:                              # %for.body376
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $s5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$s5, $s5, 8
	bnez	$a3, .LBB4_210
# %bb.211:                              # %for.body393.lr.ph
	ld.d	$a2, $fp, 1440
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_216
# %bb.212:                              # %for.body393.lr.ph
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_216
# %bb.213:                              # %vector.ph1217
	bstrpick.d	$a3, $s4, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_214:                              # %vector.body1220
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_214
# %bb.215:                              # %middle.block1225
	beq	$a1, $a3, .LBB4_218
.LBB4_216:                              # %for.body393.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_217:                              # %for.body393
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_217
.LBB4_218:                              # %for.body408.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1440
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_219:                              # %for.body408
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_219
# %bb.220:                              # %for.body425.lr.ph
	ld.d	$a2, $fp, 1464
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a1, $a4, .LBB4_225
# %bb.221:                              # %for.body425.lr.ph
	sub.d	$a4, $a0, $a2
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_225
# %bb.222:                              # %vector.ph1232
	bstrpick.d	$a3, $s4, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a0, 32
	addi.d	$a5, $a2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_223:                              # %vector.body1235
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_223
# %bb.224:                              # %middle.block1240
	beq	$a1, $a3, .LBB4_227
.LBB4_225:                              # %for.body425.preheader
	alsl.d	$a2, $a3, $a2, 3
	alsl.d	$a4, $a3, $a0, 3
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB4_226:                              # %for.body425
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB4_226
.LBB4_227:                              # %for.body440.lr.ph
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $fp, 1464
	bstrpick.d	$a4, $s4, 30, 0
	.p2align	4, , 16
.LBB4_228:                              # %for.body440
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a0, $a5
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_228
# %bb.229:                              # %for.body457.lr.ph
	ld.d	$a3, $fp, 1488
	move	$a4, $zero
	ori	$a5, $zero, 8
	bstrpick.d	$a2, $s4, 30, 0
	bltu	$a1, $a5, .LBB4_234
# %bb.230:                              # %for.body457.lr.ph
	sub.d	$a5, $a0, $a3
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB4_234
# %bb.231:                              # %vector.ph1247
	bstrpick.d	$a4, $s4, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a0, 32
	addi.d	$a6, $a3, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_232:                              # %vector.body1250
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_232
# %bb.233:                              # %middle.block1255
	beq	$a1, $a4, .LBB4_236
.LBB4_234:                              # %for.body457.preheader
	alsl.d	$a1, $a4, $a3, 3
	alsl.d	$a3, $a4, $a0, 3
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB4_235:                              # %for.body457
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_235
.LBB4_236:                              # %for.body472.lr.ph
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a3, $fp, 1488
	.p2align	4, , 16
.LBB4_237:                              # %for.body472
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a0, $a4
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB4_237
.LBB4_238:                              # %if.then.i.i.i346
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_239:                              # %if.end484
	move	$s3, $zero
	move	$s7, $zero
	move	$s4, $zero
	move	$s5, $zero
	beqz	$s6, .LBB4_89
.LBB4_240:                              # %sw.epilog.sink.split
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_89
.LBB4_241:                              # %vector.scevcheck1303
	addi.d	$a2, $s0, -1
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	move	$a1, $zero
	beq	$a3, $a4, .LBB4_105
# %bb.242:                              # %vector.scevcheck1303
	srli.d	$a2, $a2, 32
	bnez	$a2, .LBB4_105
# %bb.243:                              # %vector.scevcheck1303
	sub.d	$a2, $a0, $s1
	ori	$a3, $zero, 64
	bltu	$a2, $a3, .LBB4_105
# %bb.244:                              # %vector.main.loop.iter.check1312
	ori	$a1, $zero, 16
	bgeu	$s0, $a1, .LBB4_261
# %bb.245:
	move	$a1, $zero
	b	.LBB4_265
.LBB4_246:                              # %vector.ph1408
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI4_0)
	bstrpick.d	$a2, $a0, 32, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_247:                              # %vector.body1411
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB4_247
# %bb.248:                              # %middle.block1414
	beq	$a0, $a2, .LBB4_12
# %bb.249:                              # %vec.epilog.iter.check1420
	andi	$a3, $a0, 12
	beqz	$a3, .LBB4_10
.LBB4_250:                              # %vec.epilog.ph1419
	move	$a4, $a2
	pcalau12i	$a3, %pc_hi20(.LCPI4_1)
	vld	$vr0, $a3, %pc_lo12(.LCPI4_1)
	bstrpick.d	$a3, $a0, 32, 2
	vreplgr2vr.w	$vr1, $a2
	slli.d	$a2, $a3, 2
	vadd.w	$vr0, $vr1, $vr0
	sub.d	$a3, $a4, $a2
	alsl.d	$a4, $a4, $a1, 2
	.p2align	4, , 16
.LBB4_251:                              # %vec.epilog.vector.body1427
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB4_251
# %bb.252:                              # %vec.epilog.middle.block1432
	bne	$a0, $a2, .LBB4_10
	b	.LBB4_12
.LBB4_253:
	move	$a4, $a3
	move	$a5, $a3
	b	.LBB4_60
.LBB4_254:                              # %vector.ph1129
	bstrpick.d	$a3, $s4, 32, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a2, 32
	xvrepli.b	$xr2, 0
	addi.d	$a5, $a1, 32
	move	$a6, $a3
	xvori.b	$xr3, $xr2, 0
	xvori.b	$xr0, $xr2, 0
	xvori.b	$xr1, $xr2, 0
	.p2align	4, , 16
.LBB4_255:                              # %vector.body1132
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a5, -32
	xvld	$xr5, $a5, 0
	xvld	$xr6, $a4, -32
	xvld	$xr7, $a4, 0
	xvmax.w	$xr2, $xr4, $xr2
	xvmax.w	$xr3, $xr5, $xr3
	xvmax.w	$xr0, $xr6, $xr0
	xvmax.w	$xr1, $xr7, $xr1
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_255
# %bb.256:                              # %middle.block1141
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvmax.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvmax.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$a4, $xr2, 0
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a5, $xr0, 0
	beq	$s4, $a3, .LBB4_62
# %bb.257:                              # %vec.epilog.iter.check1148
	andi	$a6, $s4, 12
	beqz	$a6, .LBB4_60
.LBB4_258:                              # %vec.epilog.ph1147
	move	$a6, $a3
	bstrpick.d	$a3, $s4, 32, 2
	slli.d	$a3, $a3, 2
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr0, $a5
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a2, 2
	alsl.d	$a6, $a6, $a1, 2
	.p2align	4, , 16
.LBB4_259:                              # %vec.epilog.vector.body1157
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $a5, 0
	vmax.w	$vr1, $vr2, $vr1
	vmax.w	$vr0, $vr3, $vr0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB4_259
# %bb.260:                              # %vec.epilog.middle.block1164
	vshuf4i.w	$vr2, $vr1, 14
	vmax.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmax.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a4, $vr1, 0
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a5, $vr0, 0
	bne	$s4, $a3, .LBB4_60
	b	.LBB4_62
.LBB4_261:                              # %vector.ph1313
	bstrpick.d	$a1, $s0, 32, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a0, 32
	addi.d	$a3, $s1, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_262:                              # %vector.body1316
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB4_262
# %bb.263:                              # %middle.block1321
	beq	$s0, $a1, .LBB4_107
# %bb.264:                              # %vec.epilog.iter.check1326
	andi	$a2, $s0, 12
	beqz	$a2, .LBB4_105
.LBB4_265:                              # %vec.epilog.ph1325
	move	$a4, $a1
	bstrpick.d	$a1, $s0, 32, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $a0, 2
	alsl.d	$a4, $a4, $s1, 2
	.p2align	4, , 16
.LBB4_266:                              # %vec.epilog.vector.body1331
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB4_266
# %bb.267:                              # %vec.epilog.middle.block1335
	bne	$s0, $a1, .LBB4_105
	b	.LBB4_107
.LBB4_268:                              # %if.then.i.i454.invoke
.Ltmp129:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$s0, $zero
	move	$s3, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s7, $zero
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.269:                              # %if.then.i.i454.cont
.LBB4_270:                              # %if.then.i.i297
.Ltmp118:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.271:                              # %.noexc298
.LBB4_272:                              # %lpad351
.Ltmp117:                               # EH_LABEL
	b	.LBB4_279
.LBB4_273:                              # %lpad113
.Ltmp152:                               # EH_LABEL
	b	.LBB4_282
.LBB4_274:                              # %lpad92
.Ltmp136:                               # EH_LABEL
	b	.LBB4_276
.LBB4_275:                              # %ehcleanup496.thread1103
.Ltmp133:                               # EH_LABEL
.LBB4_276:                              # %if.then.i.i.i405.sink.split
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB4_284
.LBB4_277:                              # %lpad322
.Ltmp120:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_294
.LBB4_278:                              # %lpad328
.Ltmp114:                               # EH_LABEL
.LBB4_279:                              # %ehcleanup485
	move	$fp, $a0
	beqz	$s6, .LBB4_294
# %bb.280:                              # %if.then.i.i.i363
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	b	.LBB4_293
.LBB4_281:                              # %lpad94
.Ltmp149:                               # EH_LABEL
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
.LBB4_282:                              # %ehcleanup
	move	$fp, $a0
	beqz	$s6, .LBB4_284
# %bb.283:                              # %if.then.i.i.i237
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_284:                              # %if.then.i.i.i405.sink.split
	move	$s1, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB4_287
.LBB4_285:                              # %lpad2
.Ltmp90:                                # EH_LABEL
	b	.LBB4_289
.LBB4_286:                              # %ehcleanup496
.Ltmp158:                               # EH_LABEL
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$s4, .LBB4_291
.LBB4_287:                              # %if.then.i.i.i405
	sub.d	$a1, $s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_291
.LBB4_288:                              # %lpad
.Ltmp93:                                # EH_LABEL
.LBB4_289:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit410.thread
	move	$fp, $a0
	move	$s0, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB4_294
.LBB4_290:                              # %ehcleanup496.thread1092
.Ltmp155:                               # EH_LABEL
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
.LBB4_291:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit410
	beqz	$s3, .LBB4_294
# %bb.292:                              # %if.then.i.i.i412
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
.LBB4_293:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit417
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_294:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit417
	bnez	$s2, .LBB4_298
# %bb.295:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit424
	bnez	$s1, .LBB4_299
.LBB4_296:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit431
	ld.d	$a0, $sp, 64
	bnez	$a0, .LBB4_300
.LBB4_297:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit438
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_298:                              # %if.then.i.i.i419
	sub.d	$a1, $s0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB4_296
.LBB4_299:                              # %if.then.i.i.i426
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB4_297
.LBB4_300:                              # %if.then.i.i.i433
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method, .Lfunc_end4-_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp93-.Lfunc_begin1          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin1          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin1          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp121              #   Call between .Ltmp121 and .Ltmp126
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp94-.Ltmp128               #   Call between .Ltmp128 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp156-.Ltmp101              #   Call between .Ltmp101 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp131-.Ltmp157              #   Call between .Ltmp157 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp134-.Ltmp132              #   Call between .Ltmp132 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp137-.Ltmp135              #   Call between .Ltmp135 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp148-.Ltmp137              #   Call between .Ltmp137 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp102-.Ltmp151              #   Call between .Ltmp151 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp113-.Ltmp102              #   Call between .Ltmp102 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp129-.Ltmp116              #   Call between .Ltmp116 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Lfunc_end4-.Ltmp119           #   Call between .Ltmp119 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh17calc_distributionEi   # -- Begin function _ZN4Mesh17calc_distributionEi
	.p2align	2
	.type	_ZN4Mesh17calc_distributionEi,@function
_ZN4Mesh17calc_distributionEi:          # @_ZN4Mesh17calc_distributionEi
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB5_17
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a5, $a0, 864
	ld.d	$a0, $a0, 856
	move	$a3, $zero
	move	$a4, $zero
	sub.d	$a5, $a5, $a0
	srai.d	$a6, $a5, 2
	div.du	$a5, $a6, $a1
	addi.w	$a6, $a6, 0
	mod.w	$a6, $a6, $a1
	addi.d	$a7, $a0, 32
	ori	$t0, $zero, 3
	ori	$t1, $zero, 16
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.cond.cleanup10
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $a1, .LBB5_17
.LBB5_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_16 Depth 2
	add.d	$a4, $a4, $a5
	slt	$t2, $a3, $a6
	add.w	$a4, $a4, $t2
	blt	$a4, $a2, .LBB5_2
# %bb.4:                                # %iter.check
                                        #   in Loop: Header=BB5_3 Depth=1
	bltu	$t0, $a4, .LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	move	$t2, $zero
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB5_3 Depth=1
	bgeu	$a4, $t1, .LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_3 Depth=1
	move	$t2, $zero
	b	.LBB5_12
.LBB5_8:                                # %vector.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	bstrpick.d	$t2, $a4, 30, 4
	slli.d	$t2, $t2, 4
	xvreplgr2vr.w	$xr0, $a3
	move	$t3, $a7
	move	$t4, $t2
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t3, -32
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB5_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	beq	$t2, $a4, .LBB5_2
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB5_3 Depth=1
	andi	$t3, $a4, 12
	beqz	$t3, .LBB5_15
.LBB5_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$t3, $t2
	bstrpick.d	$t2, $a4, 30, 2
	slli.d	$t2, $t2, 2
	vreplgr2vr.w	$vr0, $a3
	alsl.d	$t4, $t3, $a0, 2
	.p2align	4, , 16
.LBB5_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bne	$t2, $t3, .LBB5_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	beq	$t2, $a4, .LBB5_2
.LBB5_15:                               # %for.body11.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	alsl.d	$t3, $t2, $a0, 2
	.p2align	4, , 16
.LBB5_16:                               # %for.body11
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $t3, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bltu	$t2, $a4, .LBB5_16
	b	.LBB5_2
.LBB5_17:                               # %for.cond.cleanup
	ret
.Lfunc_end5:
	.size	_ZN4Mesh17calc_distributionEi, .Lfunc_end5-_ZN4Mesh17calc_distributionEi
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,comdat
	.weak	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi # -- Begin function _ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.p2align	2
	.type	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi,@function
_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi: # @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	beqz	$a2, .LBB6_100
# %bb.1:                                # %if.then
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s4, $a0, 8
	sub.d	$a0, $s5, $s4
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a2, .LBB6_5
# %bb.2:                                # %if.else43
	ld.d	$s2, $s0, 0
	sub.d	$a0, $s4, $s2
	srai.d	$a1, $a0, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s1, .LBB6_101
# %bb.3:                                # %iter.check279
	move	$s3, $a3
	sltu	$a2, $s1, $a1
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s6, $a1, $a0
	sub.d	$s7, $fp, $s2
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$s3, $a0
	ori	$a2, $zero, 4
	add.d	$a0, $a0, $s7
	bgeu	$s1, $a2, .LBB6_14
# %bb.4:
	move	$a2, $s1
	b	.LBB6_49
.LBB6_5:                                # %if.then4
	ld.w	$s2, $a3, 0
	sub.d	$a0, $s4, $fp
	srai.d	$a1, $a0, 2
	bgeu	$s1, $a1, .LBB6_11
# %bb.6:                                # %if.then12
	slli.d	$s3, $s1, 2
	sub.d	$a1, $zero, $s3
	sub.d	$a0, $s4, $s3
	beqz	$a1, .LBB6_71
# %bb.7:                                # %iter.check203
	addi.d	$a2, $s1, -1
	bstrpick.d	$a5, $a2, 61, 0
	ori	$a2, $zero, 3
	move	$a3, $a0
	move	$a4, $s4
	bltu	$a5, $a2, .LBB6_70
# %bb.8:                                # %iter.check203
	bstrpick.d	$a2, $s1, 61, 4
	slli.d	$a2, $a2, 4
	move	$a3, $a0
	move	$a4, $s4
	beqz	$a2, .LBB6_70
# %bb.9:                                # %vector.main.loop.iter.check205
	ori	$a3, $zero, 15
	addi.d	$a2, $a5, 1
	bgeu	$a5, $a3, .LBB6_34
# %bb.10:
	move	$a5, $zero
	b	.LBB6_38
.LBB6_11:                               # %if.else
	sub.d	$a3, $s1, $a1
	move	$a2, $s4
	beqz	$a3, .LBB6_27
# %bb.12:                               # %for.body.i.i.i.preheader
	ori	$a1, $zero, 16
	bgeu	$a3, $a1, .LBB6_23
# %bb.13:
	move	$a1, $a3
	move	$a2, $s4
	b	.LBB6_26
.LBB6_14:                               # %vector.main.loop.iter.check281
	ori	$a2, $zero, 16
	bgeu	$s1, $a2, .LBB6_16
# %bb.15:
	move	$a3, $zero
	b	.LBB6_20
.LBB6_16:                               # %vector.ph282
	move	$a3, $s1
	bstrins.d	$a3, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a1
	add.d	$a2, $s7, $s3
	addi.d	$a2, $a2, 32
	move	$a4, $a3
	.p2align	4, , 16
.LBB6_17:                               # %vector.body287
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB6_17
# %bb.18:                               # %middle.block291
	beq	$s1, $a3, .LBB6_50
# %bb.19:                               # %vec.epilog.iter.check296
	andi	$a2, $s1, 12
	beqz	$a2, .LBB6_48
.LBB6_20:                               # %vec.epilog.ph295
	move	$a4, $s1
	bstrins.d	$a4, $zero, 1, 0
	andi	$a2, $s1, 3
	alsl.d	$a0, $a4, $a0, 2
	vreplgr2vr.w	$vr0, $a1
	alsl.d	$a5, $a3, $fp, 2
	sub.d	$a5, $a5, $s2
	add.d	$a5, $s3, $a5
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_21:                               # %vec.epilog.vector.body303
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB6_21
# %bb.22:                               # %vec.epilog.middle.block308
	bne	$s1, $a4, .LBB6_49
	b	.LBB6_50
.LBB6_23:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	andi	$a1, $a3, 15
	alsl.d	$a2, $a4, $s4, 2
	xvreplgr2vr.w	$xr0, $s2
	addi.d	$a5, $s4, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_24:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB6_24
# %bb.25:                               # %middle.block
	beq	$a3, $a4, .LBB6_27
	.p2align	4, , 16
.LBB6_26:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, -1
	st.w	$s2, $a2, 0
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB6_26
.LBB6_27:                               # %invoke.cont28
	beq	$s4, $fp, .LBB6_32
# %bb.28:                               # %iter.check
	addi.d	$a3, $a0, -4
	srli.d	$a1, $a3, 2
	ori	$a4, $zero, 12
	addi.d	$a1, $a1, 1
	bltu	$a3, $a4, .LBB6_33
# %bb.29:                               # %iter.check
	sub.d	$a6, $a2, $fp
	ori	$a7, $zero, 63
	move	$a4, $fp
	move	$a5, $a2
	bgeu	$a7, $a6, .LBB6_87
# %bb.30:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 60
	bgeu	$a3, $a4, .LBB6_41
# %bb.31:
	move	$a6, $zero
	b	.LBB6_45
.LBB6_32:                               # %invoke.cont36.thread
	add.d	$a0, $a2, $a0
	st.d	$a0, $s0, 8
	b	.LBB6_100
.LBB6_33:
	move	$a4, $fp
	move	$a5, $a2
	b	.LBB6_87
.LBB6_34:                               # %vector.ph206
	bstrpick.d	$a3, $a2, 62, 4
	slli.d	$a5, $a3, 4
	move	$a3, $a5
	move	$a4, $s4
	.p2align	4, , 16
.LBB6_35:                               # %vector.body209
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a4, $a1
	xvldx	$xr0, $a4, $a1
	xvld	$xr1, $a6, 32
	xvst	$xr0, $a4, 0
	xvst	$xr1, $a4, 32
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, 64
	bnez	$a3, .LBB6_35
# %bb.36:                               # %middle.block216
	beq	$a2, $a5, .LBB6_71
# %bb.37:                               # %vec.epilog.iter.check221
	andi	$a3, $a2, 12
	beqz	$a3, .LBB6_69
.LBB6_38:                               # %vec.epilog.ph220
	bstrpick.d	$a4, $a2, 62, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a3, $a4, $a0, 4
	alsl.d	$a4, $a4, $s4, 4
	alsl.d	$a7, $a5, $s4, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_39:                               # %vec.epilog.vector.body226
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a7, $a1
	vst	$vr0, $a7, 0
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB6_39
# %bb.40:                               # %vec.epilog.middle.block234
	bne	$a2, $a6, .LBB6_70
	b	.LBB6_71
.LBB6_41:                               # %vector.ph138
	bstrpick.d	$a4, $a1, 62, 4
	slli.d	$a6, $a4, 4
	addi.d	$a4, $a2, 32
	addi.d	$a5, $fp, 32
	move	$a7, $a6
	.p2align	4, , 16
.LBB6_42:                               # %vector.body141
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB6_42
# %bb.43:                               # %middle.block147
	beq	$a1, $a6, .LBB6_88
# %bb.44:                               # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB6_86
.LBB6_45:                               # %vec.epilog.ph
	bstrpick.d	$a5, $a1, 62, 2
	slli.d	$a7, $a5, 2
	alsl.d	$a4, $a5, $fp, 4
	alsl.d	$a5, $a5, $a2, 4
	alsl.d	$t0, $a6, $a2, 2
	alsl.d	$t1, $a6, $fp, 2
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB6_46:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 4
	addi.d	$t1, $t1, 16
	bnez	$a6, .LBB6_46
# %bb.47:                               # %vec.epilog.middle.block
	bne	$a1, $a7, .LBB6_87
	b	.LBB6_88
.LBB6_48:
	andi	$a2, $s1, 15
	alsl.d	$a0, $a3, $a0, 2
	.p2align	4, , 16
.LBB6_49:                               # %for.body.i.i.i86
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB6_49
.LBB6_50:                               # %invoke.cont58
	move	$a0, $s3
	beq	$s2, $fp, .LBB6_57
# %bb.51:                               # %for.body.i.i.i.i95.preheader
	addi.d	$a2, $s7, -4
	ori	$a3, $zero, 60
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a2, $a3, .LBB6_56
# %bb.52:                               # %for.body.i.i.i.i95.preheader
	sub.d	$a3, $s3, $s2
	ori	$a4, $zero, 64
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a3, $a4, .LBB6_56
# %bb.53:                               # %vector.ph319
	srli.d	$a0, $a2, 2
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 62, 4
	slli.d	$a3, $a0, 4
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	add.d	$a0, $s3, $a0
	addi.d	$a4, $s3, 32
	addi.d	$a5, $s2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_54:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB6_54
# %bb.55:                               # %middle.block331
	beq	$a2, $a3, .LBB6_57
	.p2align	4, , 16
.LBB6_56:                               # %for.body.i.i.i.i95
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	bne	$a1, $fp, .LBB6_56
.LBB6_57:                               # %invoke.cont61
	alsl.d	$s7, $s1, $a0, 2
	beq	$s4, $fp, .LBB6_66
# %bb.58:                               # %for.body.i.i.i.i103.preheader
	sub.d	$a1, $s4, $fp
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 60
	bgeu	$a1, $a2, .LBB6_60
# %bb.59:
	move	$a1, $fp
	b	.LBB6_65
.LBB6_60:                               # %vector.memcheck335
	alsl.d	$a2, $s1, $a0, 2
	sub.d	$a2, $a2, $fp
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB6_62
# %bb.61:
	move	$a1, $fp
	b	.LBB6_65
.LBB6_62:                               # %vector.ph340
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	slli.d	$a4, $s1, 2
	bstrpick.d	$a1, $a2, 62, 4
	slli.d	$a3, $a1, 4
	slli.d	$a5, $a1, 6
	add.d	$a1, $fp, $a5
	add.d	$s7, $s7, $a5
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 32
	addi.d	$a4, $fp, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_63:                               # %vector.body343
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB6_63
# %bb.64:                               # %middle.block352
	beq	$a2, $a3, .LBB6_66
	.p2align	4, , 16
.LBB6_65:                               # %for.body.i.i.i.i103
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a1, 0
	st.w	$a0, $s7, 0
	addi.d	$a1, $a1, 4
	addi.d	$s7, $s7, 4
	bne	$a1, $s4, .LBB6_65
.LBB6_66:                               # %invoke.cont65
	beqz	$s2, .LBB6_68
# %bb.67:                               # %if.then.i111
	sub.d	$a1, $s5, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_68:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s3, $s0, 0
	st.d	$s7, $s0, 8
	alsl.d	$a0, $s6, $s3, 2
	st.d	$a0, $s0, 16
	b	.LBB6_100
.LBB6_69:
	alsl.d	$a3, $a5, $a0, 2
	alsl.d	$a4, $a5, $s4, 2
	.p2align	4, , 16
.LBB6_70:                               # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, 0
	st.w	$a1, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	bne	$a3, $s4, .LBB6_70
.LBB6_71:                               # %invoke.cont
	alsl.d	$a1, $s1, $s4, 2
	st.d	$a1, $s0, 8
	sub.d	$a2, $a0, $fp
	srai.d	$a1, $a2, 2
	ori	$a3, $zero, 2
	sub.d	$a0, $s4, $a2
	blt	$a1, $a3, .LBB6_102
# %bb.72:                               # %if.then.i
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB6_73:                               # %iter.check243
	addi.d	$a2, $s3, -4
	ori	$a0, $zero, 12
	move	$a1, $fp
	bltu	$a2, $a0, .LBB6_84
# %bb.74:                               # %vector.main.loop.iter.check245
	srli.d	$a0, $a2, 2
	ori	$a1, $zero, 60
	addi.d	$a0, $a0, 1
	bgeu	$a2, $a1, .LBB6_76
# %bb.75:
	move	$a2, $zero
	b	.LBB6_80
.LBB6_76:                               # %vector.ph246
	bstrpick.d	$a1, $a0, 62, 4
	slli.d	$a2, $a1, 4
	xvreplgr2vr.w	$xr0, $s2
	addi.d	$a1, $fp, 32
	move	$a3, $a2
	.p2align	4, , 16
.LBB6_77:                               # %vector.body251
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB6_77
# %bb.78:                               # %middle.block255
	beq	$a0, $a2, .LBB6_100
# %bb.79:                               # %vec.epilog.iter.check260
	andi	$a1, $a0, 12
	beqz	$a1, .LBB6_83
.LBB6_80:                               # %vec.epilog.ph259
	bstrpick.d	$a1, $a0, 62, 2
	slli.d	$a3, $a1, 2
	alsl.d	$a1, $a1, $fp, 4
	vreplgr2vr.w	$vr0, $s2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB6_81:                               # %vec.epilog.vector.body267
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB6_81
# %bb.82:                               # %vec.epilog.middle.block272
	bne	$a0, $a3, .LBB6_84
	b	.LBB6_100
.LBB6_83:
	alsl.d	$a1, $a2, $fp, 2
.LBB6_84:                               # %for.body.i.preheader
	alsl.d	$a0, $s1, $fp, 2
	.p2align	4, , 16
.LBB6_85:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	bne	$a1, $a0, .LBB6_85
	b	.LBB6_100
.LBB6_86:
	alsl.d	$a4, $a6, $fp, 2
	alsl.d	$a5, $a6, $a2, 2
	.p2align	4, , 16
.LBB6_87:                               # %for.body.i.i.i.i57
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	st.w	$a6, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	bne	$a4, $s4, .LBB6_87
.LBB6_88:                               # %iter.check165
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 12
	st.d	$a0, $s0, 8
	move	$a0, $fp
	bltu	$a3, $a2, .LBB6_99
# %bb.89:                               # %vector.main.loop.iter.check167
	ori	$a0, $zero, 60
	bgeu	$a3, $a0, .LBB6_91
# %bb.90:
	move	$a2, $zero
	b	.LBB6_95
.LBB6_91:                               # %vector.ph168
	bstrpick.d	$a0, $a1, 62, 4
	slli.d	$a2, $a0, 4
	xvreplgr2vr.w	$xr0, $s2
	addi.d	$a0, $fp, 32
	move	$a3, $a2
	.p2align	4, , 16
.LBB6_92:                               # %vector.body173
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a3, $a3, -16
	addi.d	$a0, $a0, 64
	bnez	$a3, .LBB6_92
# %bb.93:                               # %middle.block177
	beq	$a1, $a2, .LBB6_100
# %bb.94:                               # %vec.epilog.iter.check182
	andi	$a0, $a1, 12
	beqz	$a0, .LBB6_98
.LBB6_95:                               # %vec.epilog.ph181
	bstrpick.d	$a0, $a1, 62, 2
	slli.d	$a3, $a0, 2
	alsl.d	$a0, $a0, $fp, 4
	vreplgr2vr.w	$vr0, $s2
	alsl.d	$a4, $a2, $fp, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB6_96:                               # %vec.epilog.vector.body189
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB6_96
# %bb.97:                               # %vec.epilog.middle.block194
	bne	$a1, $a3, .LBB6_99
	b	.LBB6_100
.LBB6_98:
	alsl.d	$a0, $a2, $fp, 2
	.p2align	4, , 16
.LBB6_99:                               # %for.body.i66
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $s4, .LBB6_99
.LBB6_100:                              # %if.end95
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
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
.LBB6_101:                              # %if.then.i78
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_102:                              # %if.else.i
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_73
# %bb.103:                              # %if.then2.i
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB6_73
.Lfunc_end6:
	.size	_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi, .Lfunc_end6-_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	2
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	beqz	$a1, .LBB7_13
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 2
	bgeu	$a0, $s0, .LBB7_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB7_14
# %bb.3:                                # %if.then.i.i.i23
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$s7, $zero, 1
	stx.w	$zero, $a0, $s2
	beq	$s0, $s7, .LBB7_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %invoke.cont
	blt	$s2, $s7, .LBB7_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB7_9
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %_ZNSt6vectorIiSaIiEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB7_13
.LBB7_10:                               # %if.then.i.i.i
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	beq	$s0, $a2, .LBB7_12
# %bb.11:                               # %for.body.i.preheader.i.i.i
	slli.d	$a2, $s0, 2
	alsl.d	$s0, $s0, $a1, 2
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB7_12:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB7_13:                               # %if.end45
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
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
.LBB7_14:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end7-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.type	measure_type,@object            # @measure_type
	.bss
	.globl	measure_type
	.p2align	2, 0x0
measure_type:
	.word	0                               # 0x0
	.size	measure_type, 4

	.type	meas_count,@object              # @meas_count
	.globl	meas_count
	.p2align	2, 0x0
meas_count:
	.word	0                               # 0x0
	.size	meas_count, 4

	.type	meas_sum_average,@object        # @meas_sum_average
	.globl	meas_sum_average
	.p2align	3, 0x0
meas_sum_average:
	.dword	0x0000000000000000              # double 0
	.size	meas_sum_average, 8

	.type	_ZZN4Mesh17partition_measureEvE13offtile_ratio,@object # @_ZZN4Mesh17partition_measureEvE13offtile_ratio
	.local	_ZZN4Mesh17partition_measureEvE13offtile_ratio
	.comm	_ZZN4Mesh17partition_measureEvE13offtile_ratio,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Average surface area to volume ratio  "
	.size	.L.str.1, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"with duplicates"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"without duplicates"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Partition Quality Avg C value     "
	.size	.L.str.4, 35

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.space	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Partition Quality Avg C* value     "
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The MPI surface area to volume ratio "
	.size	.L.str.7, 38

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Initial order is naive."
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Initial order is Hilbert sort."
	.size	.L.str.9, 31

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Initial order is Hilbert partitionr."
	.size	.L.str.10, 37

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Initial order is Z order."
	.size	.L.str.11, 26

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"   No cycle reorder."
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"   Cycle reorder is Hilbert sort."
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"   Cycle reorder is Hilbert partition."
	.size	.L.str.14, 39

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"   Cycle reorder is Z order."
	.size	.L.str.15, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"vector::_M_default_append"
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.20, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"No Partition Measure"
	.size	.Lstr, 21

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"   Local Stencil is on."
	.size	.Lstr.1, 24

	.type	.Lswitch.table._ZN4Mesh20print_partition_typeEv,@object # @switch.table._ZN4Mesh20print_partition_typeEv
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table._ZN4Mesh20print_partition_typeEv:
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.size	.Lswitch.table._ZN4Mesh20print_partition_typeEv, 32

	.type	.Lswitch.table._ZN4Mesh20print_partition_typeEv.2,@object # @switch.table._ZN4Mesh20print_partition_typeEv.2
	.p2align	3, 0x0
.Lswitch.table._ZN4Mesh20print_partition_typeEv.2:
	.dword	.L.str.12
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.size	.Lswitch.table._ZN4Mesh20print_partition_typeEv.2, 32

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
