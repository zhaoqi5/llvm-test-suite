	.file	"searchAlgorithms.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function doMultiSearches
.LCPI0_0:
	.dword	0x40ac200000000000              # double 3600
.LCPI0_1:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	doMultiSearches
	.p2align	5
	.type	doMultiSearches,@function
doMultiSearches:                        # @doMultiSearches
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$s5, $a1, 0
	beqz	$s5, .LBB0_27
# %bb.1:                                # %for.cond5.preheader.lr.ph
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$s7, $a0, 0
	beqz	$s7, .LBB0_27
# %bb.2:                                # %for.cond5.preheader.preheader
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$s6, $a2, %got_pc_lo12(stdout)
	move	$a3, $zero
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	beqz	$s7, .LBB0_25
	.p2align	4, , 16
.LBB0_3:                                # %lor.lhs.false2.i.lr.ph
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $zero
	addi.d	$s1, $s5, 8
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_6
.LBB0_4:                                # %for.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_5:                                # %findLabelPath.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$s8, $s8, 1
	slli.d	$a1, $s8, 3
	ldx.d	$s7, $a0, $a1
	beqz	$s7, .LBB0_24
.LBB0_6:                                # %lor.lhs.false2.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	ld.d	$a0, $s6, 0
	st.w	$zero, $s0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.w	$s4, $a0, 0
	ld.w	$a0, $s7, 8
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	beqz	$a1, .LBB0_5
# %bb.7:                                # %lor.lhs.false4.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s2, $a0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB0_5
# %bb.8:                                # %lor.lhs.false4.i
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$s2, .LBB0_5
# %bb.9:                                # %if.end.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $s7, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.10:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_4
# %bb.11:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB0_19
# %bb.12:                               # %for.body.us.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s6, $zero
	move	$s5, $zero
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %for.inc.us.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a0, $s3, 0
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	bge	$s5, $a0, .LBB0_4
.LBB0_14:                               # %for.body.us.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s7, 24
	ldx.d	$a1, $a1, $s6
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_17
# %bb.15:                               # %if.then21.us.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_4
# %bb.16:                               # %land.lhs.true.us.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB0_18
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_17:                               # %if.end31.us.i
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB0_13
.LBB0_18:                               # %if.then35.us.i
                                        #   in Loop: Header=BB0_14 Depth=2
	st.w	$zero, $s0, 0
	b	.LBB0_13
.LBB0_19:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %for.inc.i
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a0, $s3, 0
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s6, $a0, .LBB0_4
.LBB0_21:                               # %for.body.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	ldx.d	$a0, $a0, $s5
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB0_4
# %bb.22:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_21 Depth=2
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB0_20
# %bb.23:                               # %if.then35.i
                                        #   in Loop: Header=BB0_21 Depth=2
	st.w	$zero, $s0, 0
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_24:                               # %for.inc15.loopexit
	ld.d	$a1, $fp, 8
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
.LBB0_25:                               # %for.inc15
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 1
	slli.d	$a2, $a3, 3
	ldx.d	$s5, $a1, $a2
	beqz	$s5, .LBB0_27
# %bb.26:                               # %for.cond5.preheaderthread-pre-split
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.d	$s7, $a0, 0
	bnez	$s7, .LBB0_3
	b	.LBB0_25
.LBB0_27:                               # %for.end17
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_0)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_1)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	move	$a2, $s0
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
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end0:
	.size	doMultiSearches, .Lfunc_end0-doMultiSearches
                                        # -- End function
	.globl	findLabelPath                   # -- Begin function findLabelPath
	.p2align	5
	.type	findLabelPath,@function
findLabelPath:                          # @findLabelPath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ld.w	$a0, $a0, 8
	move	$s4, $a3
	move	$s0, $a2
	move	$s3, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $zero
	beqz	$s2, .LBB1_19
# %bb.1:                                # %entry
	beqz	$s3, .LBB1_19
# %bb.2:                                # %lor.lhs.false2
	ld.d	$a1, $s3, 0
	beqz	$a1, .LBB1_16
# %bb.3:                                # %lor.lhs.false4
	move	$a0, $zero
	beqz	$s0, .LBB1_19
# %bb.4:                                # %lor.lhs.false4
	ld.d	$a2, $s3, 8
	beqz	$a2, .LBB1_19
# %bb.5:                                # %lor.lhs.false4
	beqz	$fp, .LBB1_19
# %bb.6:                                # %if.end
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_16
# %bb.7:                                # %for.cond.preheader
	move	$s1, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB1_17
# %bb.8:                                # %for.body.lr.ph
	ori	$a0, $zero, 1
	addi.d	$s3, $s3, 8
	bne	$s4, $a0, .LBB1_20
# %bb.9:                                # %for.body.us.preheader
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %for.inc.us
                                        #   in Loop: Header=BB1_11 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s6, $a0, .LBB1_17
.LBB1_11:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	ld.d	$a0, $s2, 24
	ldx.d	$a1, $a1, $s5
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_14
# %bb.12:                               # %if.then21.us
                                        #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	move	$a2, $s3
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB1_25
# %bb.13:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB1_11 Depth=1
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB1_15
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_14:                               # %if.end31.us
                                        #   in Loop: Header=BB1_11 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_10
.LBB1_15:                               # %if.then35.us
                                        #   in Loop: Header=BB1_11 Depth=1
	st.w	$zero, $s0, 0
	b	.LBB1_10
.LBB1_16:
	move	$a0, $zero
	b	.LBB1_19
.LBB1_17:
	move	$s2, $zero
.LBB1_18:                               # %for.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB1_19:                               # %cleanup
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_20:                               # %for.body.preheader
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %for.inc
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB1_18
.LBB1_22:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ldx.d	$a0, $a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_18
# %bb.23:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_21
# %bb.24:                               # %if.then35
                                        #   in Loop: Header=BB1_22 Depth=1
	st.w	$zero, $s0, 0
	b	.LBB1_21
.LBB1_25:
	ori	$s2, $zero, 1
	b	.LBB1_18
.Lfunc_end1:
	.size	findLabelPath, .Lfunc_end1-findLabelPath
                                        # -- End function
	.globl	findNextLabel                   # -- Begin function findNextLabel
	.p2align	5
	.type	findNextLabel,@function
findNextLabel:                          # @findNextLabel
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
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	move	$a0, $zero
	beqz	$s2, .LBB2_18
# %bb.1:                                # %entry
	move	$s1, $a1
	beqz	$a1, .LBB2_18
# %bb.2:                                # %entry
	move	$fp, $a2
	beqz	$a2, .LBB2_18
# %bb.3:                                # %entry
	move	$s0, $a3
	beqz	$a3, .LBB2_18
# %bb.4:                                # %if.end
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
# %bb.5:                                # %if.end7
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s2, 40
	beqz	$s7, .LBB2_16
# %bb.6:                                # %for.body.lr.ph
	addi.d	$s3, $s1, 8
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB2_13
.LBB2_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s7, 8
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB2_7
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_7
# %bb.10:                               # %if.then14
                                        #   in Loop: Header=BB2_8 Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB2_19
# %bb.11:                               # %if.then17
                                        #   in Loop: Header=BB2_8 Depth=1
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s5, $a0
	move	$a0, $a1
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB2_7
# %bb.12:                               # %if.then23
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_appendVectors)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
	b	.LBB2_20
.LBB2_13:                               # %for.cond30.preheader
	ld.d	$s2, $s2, 40
	beqz	$s2, .LBB2_16
	.p2align	4, , 16
.LBB2_14:                               # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_20
# %bb.15:                               # %for.cond30
                                        #   in Loop: Header=BB2_14 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB2_14
.LBB2_16:                               # %for.end41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %cleanup
	move	$a0, $zero
.LBB2_18:                               # %cleanup
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
.LBB2_19:                               # %if.else
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
.LBB2_20:
	ori	$a0, $zero, 1
	b	.LBB2_18
.Lfunc_end2:
	.size	findNextLabel, .Lfunc_end2-findNextLabel
                                        # -- End function
	.globl	findAndRecordAllPaths           # -- Begin function findAndRecordAllPaths
	.p2align	5
	.type	findAndRecordAllPaths,@function
findAndRecordAllPaths:                  # @findAndRecordAllPaths
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
	beqz	$a0, .LBB3_6
# %bb.1:                                # %entry
	move	$s4, $a1
	beqz	$a1, .LBB3_6
# %bb.2:                                # %entry
	move	$s3, $a2
	beqz	$a2, .LBB3_6
# %bb.3:                                # %entry
	move	$s1, $a3
	beqz	$a3, .LBB3_6
# %bb.4:                                # %entry
	move	$s2, $a4
	beqz	$a4, .LBB3_6
# %bb.5:                                # %if.end
	move	$fp, $a6
	move	$s0, $a5
	move	$s5, $a0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_7
.LBB3_6:                                # %cleanup
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
.LBB3_7:                                # %if.end9
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s5, 40
	beqz	$s7, .LBB3_33
# %bb.8:                                # %for.body.lr.ph
	addi.d	$s6, $s4, 8
	beqz	$s0, .LBB3_27
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(globalStats)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_12
.LBB3_10:                               # %if.then19
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $s6
	addi.d	$a2, $s3, 4
	move	$a3, $s1
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_11:                               # %for.inc
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB3_31
.LBB3_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s7, 8
	ld.d	$a0, $s8, 8
	beqz	$a0, .LBB3_11
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_11
# %bb.14:                               # %if.then16
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s6, 0
	bnez	$a0, .LBB3_10
# %bb.15:                               # %if.else
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_24
# %bb.16:                               # %if.end.i
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$s8, $a0
	ld.bu	$a0, $fp, 4
	bnez	$a0, .LBB3_21
# %bb.17:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.bu	$a0, $fp, 5
	beqz	$a0, .LBB3_21
# %bb.18:                               # %if.then5.i
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(globalStats)
	bnez	$a0, .LBB3_20
# %bb.19:                               # %if.then2.i.i
                                        #   in Loop: Header=BB3_12 Depth=1
	pcaddu18i	$ra, %call36(Stats_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(globalStats)
.LBB3_20:                               # %logStats.exit.i
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Stats_logPath)
	jirl	$ra, $ra, 0
.LBB3_21:                               # %if.end6.i
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $s1, 0
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $a0, -8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodeVecVec_insert)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_23
# %bb.22:                               # %if.then12.i
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %if.end15.i
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
.LBB3_24:                               # %logResult.exit
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
	b	.LBB3_11
.LBB3_25:                               # %if.else.us
                                        #   in Loop: Header=BB3_27 Depth=1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(NodePtrVec_push)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(Bitfield_nodeVisited)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(NodePtrVec_pop)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_26:                               # %for.inc.us
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.d	$s7, $s7, 16
	beqz	$s7, .LBB3_31
.LBB3_27:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s7, 8
	ld.d	$a0, $s8, 8
	beqz	$a0, .LBB3_26
# %bb.28:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_26
# %bb.29:                               # %if.then16.us
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB3_25
# %bb.30:                               # %if.then19.us
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.w	$a0, $s2, 0
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 8
	move	$s8, $a0
	move	$a0, $a1
	move	$a1, $s6
	addi.d	$a2, $s3, 4
	move	$a3, $s1
	move	$a4, $s8
	move	$a5, $zero
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	b	.LBB3_26
.LBB3_31:                               # %for.cond32.preheader
	ld.d	$s5, $s5, 40
	beqz	$s5, .LBB3_33
	.p2align	4, , 16
.LBB3_32:                               # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 16
	bnez	$s5, .LBB3_32
.LBB3_33:                               # %for.end38
	move	$a0, $s1
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
	pcaddu18i	$t8, %call36(NodePtrVec_pop)
	jr	$t8
.Lfunc_end3:
	.size	findAndRecordAllPaths, .Lfunc_end3-findAndRecordAllPaths
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function findAllPossibleLegs
.LCPI4_0:
	.dword	0x40ac200000000000              # double 3600
.LCPI4_1:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	findAllPossibleLegs
	.p2align	5
	.type	findAllPossibleLegs,@function
findAllPossibleLegs:                    # @findAllPossibleLegs
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB4_30
# %bb.1:                                # %for.cond2.preheader.preheader
	move	$a2, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB4_3:                                # %for.inc23
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a1, .LBB4_31
.LBB4_4:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_25 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	blez	$a1, .LBB4_3
# %bb.5:                                # %lor.lhs.false2.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$fp, $zero
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s1, $a2, 3
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_9 Depth=2
	beqz	$s4, .LBB4_8
.LBB4_7:                                # %if.then20
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %if.end21
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $s2, 32
	ld.w	$a1, $a0, 0
	addi.d	$fp, $fp, 1
	addi.w	$s0, $s0, 1
	bge	$fp, $a1, .LBB4_2
.LBB4_9:                                # %lor.lhs.false2.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_25 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	st.d	$zero, $sp, 72
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 56
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s1
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 56
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 64
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	beqz	$a1, .LBB4_6
# %bb.10:                               # %lor.lhs.false4.i
                                        #   in Loop: Header=BB4_9 Depth=2
	beqz	$s4, .LBB4_6
# %bb.11:                               # %lor.lhs.false4.i
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s5, $a0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB4_6
# %bb.12:                               # %lor.lhs.false4.i
                                        #   in Loop: Header=BB4_9 Depth=2
	beqz	$s5, .LBB4_6
# %bb.13:                               # %if.end.i
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(SystemCallMap_findLabeledNodes)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_7
# %bb.14:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s6, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB4_28
# %bb.15:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_23
# %bb.16:                               # %for.body.us.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s8, $zero
	move	$s3, $zero
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %for.inc.us.i
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.w	$a0, $s6, 0
	addi.d	$s3, $s3, 1
	addi.d	$s8, $s8, 8
	bge	$s3, $a0, .LBB4_28
.LBB4_18:                               # %for.body.us.i
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s2, 24
	ldx.d	$a1, $a1, $s8
	pcaddu18i	$ra, %call36(SearchDiagram_findNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_21
# %bb.19:                               # %if.then21.us.i
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a2
	addi.d	$a2, $sp, 64
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(SearchDiagram_findSignatureAlongEdges)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB4_29
# %bb.20:                               # %land.lhs.true.us.i
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.w	$a0, $s4, 0
	bnez	$a0, .LBB4_22
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_21:                               # %if.end31.us.i
                                        #   in Loop: Header=BB4_18 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB4_17
.LBB4_22:                               # %if.then35.us.i
                                        #   in Loop: Header=BB4_18 Depth=3
	st.w	$zero, $s4, 0
	b	.LBB4_17
.LBB4_23:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$s3, $zero
	move	$s8, $zero
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_24:                               # %for.inc.i
                                        #   in Loop: Header=BB4_25 Depth=3
	ld.w	$a0, $s6, 0
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, 8
	bge	$s8, $a0, .LBB4_28
.LBB4_25:                               # %for.body.i
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 8
	ldx.d	$a0, $a0, $s3
	addi.d	$a1, $sp, 64
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(findNextLabel)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_clear)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB4_29
# %bb.26:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB4_25 Depth=3
	ld.w	$a0, $s4, 0
	beqz	$a0, .LBB4_24
# %bb.27:                               # %if.then35.i
                                        #   in Loop: Header=BB4_25 Depth=3
	st.w	$zero, $s4, 0
	b	.LBB4_24
.LBB4_28:                               # %findLabelPath.exit.thread27
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_29:                               # %.loopexit
                                        #   in Loop: Header=BB4_9 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_7
.LBB4_30:
	move	$s0, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB4_31:                               # %for.end25
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_1)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$s3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s1
	move	$a4, $s2
	move	$a5, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 56
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(YAMLWriteString)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end4:
	.size	findAllPossibleLegs, .Lfunc_end4-findAllPossibleLegs
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function findAndLogAllPossibleLegs
.LCPI5_0:
	.dword	0x40ac200000000000              # double 3600
.LCPI5_1:
	.dword	0x404e000000000000              # double 60
	.text
	.globl	findAndLogAllPossibleLegs
	.p2align	5
	.type	findAndLogAllPossibleLegs,@function
findAndLogAllPossibleLegs:              # @findAndLogAllPossibleLegs
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
	beqz	$a0, .LBB5_15
# %bb.1:                                # %if.end
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.b	$zero, $fp, 4
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$zero, $a0, 8
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(NodeVecVec_new)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB5_16
# %bb.2:                                # %for.cond11.preheader.preheader
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.findAndLogAllPossibleLegs.fullIntSignature)
	addi.d	$s8, $a2, %pc_lo12(.L__const.findAndLogAllPossibleLegs.fullIntSignature)
	move	$s0, $zero
	move	$fp, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_3:                                # %for.body16.lr.ph.split.us
                                        #   in Loop: Header=BB5_5 Depth=1
	add.w	$fp, $fp, $a1
.LBB5_4:                                # %for.inc57
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, 1
	bge	$s0, $a1, .LBB5_17
.LBB5_5:                                # %for.cond11.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_13 Depth 3
	blez	$a1, .LBB5_4
# %bb.6:                                # %for.body16.lr.ph
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a2, $a0, 8
	slli.d	$s2, $s0, 3
	ldx.d	$a2, $a2, $s2
	ld.d	$a2, $a2, 16
	ld.w	$a2, $a2, 0
	blez	$a2, .LBB5_3
# %bb.7:                                # %for.body16.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s4, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_8:                                # %for.inc54.loopexit
                                        #   in Loop: Header=BB5_10 Depth=2
	ld.w	$a1, $a0, 0
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
.LBB5_9:                                # %for.inc54
                                        #   in Loop: Header=BB5_10 Depth=2
	addi.d	$s4, $s4, 1
	addi.w	$fp, $fp, 1
	bge	$s4, $a1, .LBB5_4
.LBB5_10:                               # %for.body16
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_13 Depth 3
	ld.d	$a2, $a0, 8
	ldx.d	$a2, $a2, $s2
	ld.d	$a2, $a2, 16
	ld.w	$a2, $a2, 0
	blez	$a2, .LBB5_9
# %bb.11:                               # %for.body24.lr.ph
                                        #   in Loop: Header=BB5_10 Depth=2
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$fp, $zero
	addi.d	$a1, $a0, 8
	slli.d	$s3, $s4, 3
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %if.end52
                                        #   in Loop: Header=BB5_13 Depth=3
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 8
	ldx.d	$a1, $a1, $s2
	ld.d	$a1, $a1, 16
	ld.w	$a2, $a1, 0
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a0, 8
	addi.d	$s5, $s5, 8
	bge	$fp, $a2, .LBB5_8
.LBB5_13:                               # %for.body24
                                        #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s8, 8
	st.d	$zero, $sp, 104
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 88
	st.w	$a0, $sp, 80
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 72
	ldx.d	$a0, $a1, $s2
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 88
	ldx.d	$a0, $a1, $s3
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 96
	st.w	$s0, $sp, 72
	st.w	$s4, $sp, 76
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(NodePtrVec_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 8
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Bitfield_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 32
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s2
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s5
	move	$s7, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 76
	move	$a3, $s6
	move	$a4, $s7
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(findAndRecordAllPaths)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(Bitfield_delete)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB5_12
# %bb.14:                               # %if.then51
                                        #   in Loop: Header=BB5_13 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(NodePtrVec_delete)
	jirl	$ra, $ra, 0
	b	.LBB5_12
.LBB5_15:
	move	$s1, $zero
	b	.LBB5_24
.LBB5_16:
	move	$fp, $zero
.LBB5_17:                               # %for.end59
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 0
	pcaddu18i	$ra, %call36(currentTime)
	jirl	$ra, $ra, 0
	fsub.d	$fa0, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -452053
	ori	$a1, $a1, 965
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 11
	add.d	$s3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_0)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	ftintrz.w.d	$fa1, $fa0
	movfr2gr.s	$a0, $fa1
	lu12i.w	$a1, -489336
	ori	$a1, $a1, 2185
	mul.d	$a1, $a0, $a1
	srli.d	$a1, $a1, 32
	add.w	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	srai.d	$a0, $a0, 5
	add.d	$s4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI5_1)
	pcaddu18i	$ra, %call36(fmod)
	jirl	$ra, $ra, 0
	movfr2gr.d	$s5, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 88
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(YAMLWriteInt)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(YAMLWriteString)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 6
	beqz	$a0, .LBB5_20
# %bb.18:                               # %land.lhs.true
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB5_20
# %bb.19:                               # %if.then73
	ld.w	$a1, $fp, 16
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(buildGraphFromPaths)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(exportGraph)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %if.end77
	ld.bu	$a0, $fp, 5
	beqz	$a0, .LBB5_24
# %bb.21:                               # %land.lhs.true80
	ld.bu	$a0, $fp, 4
	bnez	$a0, .LBB5_24
# %bb.22:                               # %if.then83
	pcalau12i	$s2, %pc_hi20(globalStats)
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	beqz	$a0, .LBB5_24
# %bb.23:                               # %if.then.i
	pcaddu18i	$ra, %call36(Stats_calculate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.d	$a1, $a0, 0
	ld.w	$a3, $a1, 0
	ld.d	$a2, $a0, 24
	ld.d	$a1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	ld.w	$fp, $a0, 8
	ld.w	$a1, $a0, 12
	bge	$a1, $fp, .LBB5_25
.LBB5_24:                               # %cleanup
	move	$a0, $s1
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
.LBB5_25:                               # %for.body.preheader.i
	addi.d	$s3, $fp, -1
	slli.d	$s4, $fp, 2
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$s0, $a1, %pc_lo12(.L.str.11)
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               # %for.inc.i
                                        #   in Loop: Header=BB5_27 Depth=1
	ld.w	$a1, $a0, 12
	addi.d	$s3, $s3, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 4
	bge	$s3, $a1, .LBB5_24
.LBB5_27:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 32
	ldx.w	$a2, $a1, $s4
	beqz	$a2, .LBB5_26
# %bb.28:                               # %if.then5.i
                                        #   in Loop: Header=BB5_27 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(globalStats)
	b	.LBB5_26
.Lfunc_end5:
	.size	findAndLogAllPossibleLegs, .Lfunc_end5-findAndLogAllPossibleLegs
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n\nOverall Search Time: %02d:02%d:%05.2f\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Immediately before parallel\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\n%d found out of %d searches. Overall Time: %d:%d:%2.3f\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%02d:%02d:%02.3f"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Signatures Found"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Search Time"
	.size	.L.str.5, 12

	.type	.L__const.findAndLogAllPossibleLegs.fullIntSignature,@object # @__const.findAndLogAllPossibleLegs.fullIntSignature
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.findAndLogAllPossibleLegs.fullIntSignature:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.size	.L__const.findAndLogAllPossibleLegs.fullIntSignature, 12

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\n\n%d found for %d searches. Overall Time: %d:%d:%2.3f\n"
	.size	.L.str.7, 55

	.type	globalStats,@object             # @globalStats
	.local	globalStats
	.comm	globalStats,8,8
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nThis graph has %f average nodes between labels.\nStandard deviation: %f, total paths: %d\n\n"
	.size	.L.str.9, 91

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\tShortest Path: %d, Longest Path: %d\n"
	.size	.L.str.10, 38

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\tlength %d appeared %d times\n"
	.size	.L.str.11, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"CrashAndBURN!!!\n"
	.size	.Lstr, 17

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Immediately before nested for's"
	.size	.Lstr.1, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
