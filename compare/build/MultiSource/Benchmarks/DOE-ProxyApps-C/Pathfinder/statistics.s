	.file	"statistics.c"
	.text
	.globl	HistogramElement_new            # -- Begin function HistogramElement_new
	.p2align	5
	.type	HistogramElement_new,@function
HistogramElement_new:                   # @HistogramElement_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.end
	st.w	$fp, $a0, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 4
	st.d	$zero, $a0, 8
.LBB0_2:                                # %cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	HistogramElement_new, .Lfunc_end0-HistogramElement_new
                                        # -- End function
	.globl	HistogramElement_updateList     # -- Begin function HistogramElement_updateList
	.p2align	5
	.type	HistogramElement_updateList,@function
HistogramElement_updateList:            # @HistogramElement_updateList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 0
	move	$s0, $a1
	bnez	$s1, .LBB1_6
.LBB1_1:                                # %if.then15
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_11
# %bb.2:                                # %HistogramElement_new.exit22
	st.w	$s0, $a0, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 4
	st.d	$zero, $a1, 8
.LBB1_3:                                # %cleanup
	st.d	$a1, $fp, 0
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_4:                                # %if.then
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$fp, $s1, 8
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB1_1
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 0
	blt	$a0, $s0, .LBB1_4
# %bb.7:                                # %if.end
                                        #   in Loop: Header=BB1_6 Depth=1
	beq	$a0, $s0, .LBB1_12
# %bb.8:                                # %if.end6
                                        #   in Loop: Header=BB1_6 Depth=1
	bge	$s0, $a0, .LBB1_5
# %bb.9:                                # %if.then9
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_13
# %bb.10:                               # %if.end11
	st.w	$s0, $a0, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 4
	st.d	$s1, $a1, 8
	b	.LBB1_3
.LBB1_11:                               # %HistogramElement_new.exit22.thread
	move	$a0, $zero
	st.d	$zero, $fp, 0
	b	.LBB1_14
.LBB1_12:                               # %if.then5
	ld.w	$a0, $s1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 4
	ori	$a0, $zero, 1
	b	.LBB1_14
.LBB1_13:
	move	$a0, $zero
.LBB1_14:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	HistogramElement_updateList, .Lfunc_end1-HistogramElement_updateList
                                        # -- End function
	.globl	Stats_new                       # -- Begin function Stats_new
	.p2align	5
	.type	Stats_new,@function
Stats_new:                              # @Stats_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
# %bb.1:                                # %if.then
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(IntVector_new)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	st.d	$a1, $fp, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 24
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	st.d	$a2, $fp, 8
	beqz	$a1, .LBB2_3
# %bb.2:                                # %cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_3:                                # %if.else
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %cleanup
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	Stats_new, .Lfunc_end2-Stats_new
                                        # -- End function
	.globl	Stats_delete                    # -- Begin function Stats_delete
	.p2align	5
	.type	Stats_delete,@function
Stats_delete:                           # @Stats_delete
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_4
# %bb.1:                                # %if.then
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB3_3
# %bb.2:                                # %if.then2
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB3_3:                                # %if.end
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB3_4:                                # %if.end4
	ret
.Lfunc_end3:
	.size	Stats_delete, .Lfunc_end3-Stats_delete
                                        # -- End function
	.globl	Stats_logPath                   # -- Begin function Stats_logPath
	.p2align	5
	.type	Stats_logPath,@function
Stats_logPath:                          # @Stats_logPath
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_6
# %bb.1:                                # %lor.lhs.false
	beqz	$a1, .LBB4_6
# %bb.2:                                # %lor.lhs.false
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB4_6
# %bb.3:                                # %if.end
	ld.w	$a1, $a1, 0
	ld.w	$a3, $a0, 8
	blt	$a1, $a3, .LBB4_7
# %bb.4:                                # %if.end6
	ld.w	$a3, $a0, 12
	blt	$a3, $a1, .LBB4_8
.LBB4_5:                                # %if.end10
	move	$a0, $a2
	pcaddu18i	$t8, %call36(IntVector_insertEnd)
	jr	$t8
.LBB4_6:                                # %cleanup
	move	$a0, $zero
	ret
.LBB4_7:                                # %if.then4
	st.w	$a1, $a0, 8
	ld.w	$a3, $a0, 12
	bge	$a3, $a1, .LBB4_5
.LBB4_8:                                # %if.then8
	st.w	$a1, $a0, 12
	move	$a0, $a2
	pcaddu18i	$t8, %call36(IntVector_insertEnd)
	jr	$t8
.Lfunc_end4:
	.size	Stats_logPath, .Lfunc_end4-Stats_logPath
                                        # -- End function
	.globl	Stats_calculate                 # -- Begin function Stats_calculate
	.p2align	5
	.type	Stats_calculate,@function
Stats_calculate:                        # @Stats_calculate
# %bb.0:                                # %entry
	beqz	$a0, .LBB5_15
# %bb.1:                                # %lor.lhs.false
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB5_14
# %bb.2:                                # %if.end
	ld.w	$a0, $fp, 12
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	beqz	$a0, .LBB5_14
# %bb.3:                                # %for.cond.preheader
	ld.wu	$a2, $s0, 0
	addi.w	$a1, $a2, 0
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB5_14
# %bb.4:                                # %for.body.lr.ph
	ld.d	$a4, $s0, 8
	move	$a5, $zero
	move	$a6, $zero
                                        # implicit-def: $f0_64
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 4
	addi.w	$a5, $a5, 1
	bgeu	$a6, $a1, .LBB5_8
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, 0
	blt	$a7, $a3, .LBB5_5
# %bb.7:                                # %if.then14
                                        #   in Loop: Header=BB5_6 Depth=1
	bstrpick.d	$t0, $a7, 31, 0
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $a0, $a7
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$t0, $t1, 1
	stx.w	$t0, $a0, $a7
	b	.LBB5_5
.LBB5_8:                                # %for.end
	bstrpick.d	$a0, $a5, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	ld.d	$a0, $s0, 8
	fst.d	$fa0, $fp, 16
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 1
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %for.inc51
                                        #   in Loop: Header=BB5_10 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB5_12
.LBB5_10:                               # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	blt	$a4, $a3, .LBB5_9
# %bb.11:                               # %if.then43
                                        #   in Loop: Header=BB5_10 Depth=1
	fld.d	$fa1, $fp, 16
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fsub.d	$fa1, $fa2, $fa1
	fmadd.d	$fa0, $fa1, $fa1, $fa0
	b	.LBB5_9
.LBB5_12:                               # %if.then56
	bstrpick.d	$a0, $a1, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB5_16
.LBB5_13:                               # %if.then56.split
	fst.d	$fa0, $fp, 24
.LBB5_14:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB5_15:                               # %cleanup
	ret
.LBB5_16:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB5_13
.Lfunc_end5:
	.size	Stats_calculate, .Lfunc_end5-Stats_calculate
                                        # -- End function
	.globl	testStats                       # -- Begin function testStats
	.p2align	5
	.type	testStats,@function
testStats:                              # @testStats
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(IntVector_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 24
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	st.d	$a1, $fp, 8
	beqz	$a0, .LBB6_106
# %bb.1:                                # %if.end.i
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 3
	bge	$a1, $a2, .LBB6_4
# %bb.2:                                # %if.end6.i
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 1
	bge	$a2, $a1, .LBB6_5
.LBB6_3:                                # %Stats_logPath.exit
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_6
	b	.LBB6_106
.LBB6_4:                                # %if.then4.i
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 1
	blt	$a2, $a1, .LBB6_3
.LBB6_5:                                # %if.then8.i
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_6:                                # %if.end.i.1
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 4
	bge	$a1, $a2, .LBB6_9
# %bb.7:                                # %if.end6.i.1
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 2
	bge	$a2, $a1, .LBB6_10
.LBB6_8:                                # %Stats_logPath.exit.1
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_11
	b	.LBB6_106
.LBB6_9:                                # %if.then4.i.1
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 2
	blt	$a2, $a1, .LBB6_8
.LBB6_10:                               # %if.then8.i.1
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_11:                               # %if.end.i.2
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 5
	bge	$a1, $a2, .LBB6_14
# %bb.12:                               # %if.end6.i.2
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	bge	$a2, $a1, .LBB6_15
.LBB6_13:                               # %Stats_logPath.exit.2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_16
	b	.LBB6_106
.LBB6_14:                               # %if.then4.i.2
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB6_13
.LBB6_15:                               # %if.then8.i.2
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_16:                               # %if.end.i.3
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 6
	bge	$a1, $a2, .LBB6_19
# %bb.17:                               # %if.end6.i.3
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_20
.LBB6_18:                               # %Stats_logPath.exit.3
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_21
	b	.LBB6_106
.LBB6_19:                               # %if.then4.i.3
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_18
.LBB6_20:                               # %if.then8.i.3
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_21:                               # %if.end.i.4
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 7
	bge	$a1, $a2, .LBB6_24
# %bb.22:                               # %if.end6.i.4
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 5
	bge	$a2, $a1, .LBB6_25
.LBB6_23:                               # %Stats_logPath.exit.4
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_26
	b	.LBB6_106
.LBB6_24:                               # %if.then4.i.4
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB6_23
.LBB6_25:                               # %if.then8.i.4
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_26:                               # %if.end.i.5
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB6_29
# %bb.27:                               # %if.end6.i.5
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 6
	bge	$a2, $a1, .LBB6_30
.LBB6_28:                               # %Stats_logPath.exit.5
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_31
	b	.LBB6_106
.LBB6_29:                               # %if.then4.i.5
	ori	$a1, $zero, 7
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 6
	blt	$a2, $a1, .LBB6_28
.LBB6_30:                               # %if.then8.i.5
	ori	$a1, $zero, 7
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 7
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_31:                               # %if.end.i.6
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 9
	bge	$a1, $a2, .LBB6_34
# %bb.32:                               # %if.end6.i.6
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 7
	bge	$a2, $a1, .LBB6_35
.LBB6_33:                               # %Stats_logPath.exit.6
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_36
	b	.LBB6_106
.LBB6_34:                               # %if.then4.i.6
	ori	$a1, $zero, 8
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 7
	blt	$a2, $a1, .LBB6_33
.LBB6_35:                               # %if.then8.i.6
	ori	$a1, $zero, 8
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_36:                               # %if.end.i.7
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 10
	bge	$a1, $a2, .LBB6_39
# %bb.37:                               # %if.end6.i.7
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 8
	bge	$a2, $a1, .LBB6_40
.LBB6_38:                               # %lor.lhs.false.i30
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_41
	b	.LBB6_106
.LBB6_39:                               # %if.then4.i.7
	ori	$a1, $zero, 9
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 8
	blt	$a2, $a1, .LBB6_38
.LBB6_40:                               # %if.then8.i.7
	ori	$a1, $zero, 9
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_41:                               # %if.end.i33
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 2
	bge	$a1, $a2, .LBB6_44
# %bb.42:                               # %if.end6.i36
	ld.w	$a1, $fp, 12
	blez	$a1, .LBB6_45
.LBB6_43:                               # %lor.lhs.false.i45
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_46
	b	.LBB6_106
.LBB6_44:                               # %if.then4.i42
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	bgtz	$a1, .LBB6_43
.LBB6_45:                               # %if.then8.i41
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_46:                               # %if.end.i48
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 5
	bge	$a1, $a2, .LBB6_49
# %bb.47:                               # %if.end6.i51
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	bge	$a2, $a1, .LBB6_50
.LBB6_48:                               # %lor.lhs.false.i60
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_51
	b	.LBB6_106
.LBB6_49:                               # %if.then4.i57
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB6_48
.LBB6_50:                               # %if.then8.i56
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_51:                               # %if.end.i63
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 6
	bge	$a1, $a2, .LBB6_54
# %bb.52:                               # %if.end6.i66
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_55
.LBB6_53:                               # %lor.lhs.false.i75
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_56
	b	.LBB6_106
.LBB6_54:                               # %if.then4.i72
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_53
.LBB6_55:                               # %if.then8.i71
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_56:                               # %if.end.i78
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 7
	blt	$a1, $a2, .LBB6_58
# %bb.57:                               # %if.then4.i87
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 8
.LBB6_58:                               # %if.end6.i81
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB6_60
# %bb.59:                               # %if.then8.i86
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 12
.LBB6_60:                               # %lor.lhs.false.i90
	ori	$a1, $zero, 6
	ori	$s0, $zero, 6
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
# %bb.61:                               # %if.end.i93
	ld.w	$a1, $fp, 8
	bge	$a1, $s0, .LBB6_64
# %bb.62:                               # %if.end6.i96
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_65
.LBB6_63:                               # %lor.lhs.false.i105
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_66
	b	.LBB6_106
.LBB6_64:                               # %if.then4.i102
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_63
.LBB6_65:                               # %if.then8.i101
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_66:                               # %if.end.i108
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 6
	blt	$a1, $a2, .LBB6_68
# %bb.67:                               # %if.then4.i117
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
.LBB6_68:                               # %if.end6.i111
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_70
# %bb.69:                               # %if.then8.i116
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
.LBB6_70:                               # %lor.lhs.false.i120
	ori	$a1, $zero, 5
	ori	$s0, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
# %bb.71:                               # %if.end.i123
	ld.w	$a1, $fp, 8
	bge	$a1, $s0, .LBB6_74
# %bb.72:                               # %if.end6.i126
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	bge	$a2, $a1, .LBB6_75
.LBB6_73:                               # %lor.lhs.false.i135
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_76
	b	.LBB6_106
.LBB6_74:                               # %if.then4.i132
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB6_73
.LBB6_75:                               # %if.then8.i131
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_76:                               # %if.end.i138
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 6
	bge	$a1, $a2, .LBB6_79
# %bb.77:                               # %if.end6.i141
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_80
.LBB6_78:                               # %lor.lhs.false.i150
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_81
	b	.LBB6_106
.LBB6_79:                               # %if.then4.i147
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_78
.LBB6_80:                               # %if.then8.i146
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_81:                               # %if.end.i153
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 7
	blt	$a1, $a2, .LBB6_83
# %bb.82:                               # %if.then4.i162
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 8
.LBB6_83:                               # %if.end6.i156
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 5
	blt	$a2, $a1, .LBB6_85
# %bb.84:                               # %if.then8.i161
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 12
.LBB6_85:                               # %lor.lhs.false.i165
	ori	$a1, $zero, 6
	ori	$s0, $zero, 6
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
# %bb.86:                               # %if.end.i168
	ld.w	$a1, $fp, 8
	bge	$a1, $s0, .LBB6_89
# %bb.87:                               # %if.end6.i171
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_90
.LBB6_88:                               # %lor.lhs.false.i180
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB6_91
	b	.LBB6_106
.LBB6_89:                               # %if.then4.i177
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_88
.LBB6_90:                               # %if.then8.i176
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB6_106
.LBB6_91:                               # %if.end.i183
	ld.w	$a1, $fp, 8
	ori	$a2, $zero, 6
	bge	$a1, $a2, .LBB6_94
# %bb.92:                               # %if.end6.i186
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	bge	$a2, $a1, .LBB6_95
.LBB6_93:                               # %lor.lhs.false.i195
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB6_96
	b	.LBB6_106
.LBB6_94:                               # %if.then4.i192
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 8
	ld.w	$a1, $fp, 12
	ori	$a2, $zero, 4
	blt	$a2, $a1, .LBB6_93
.LBB6_95:                               # %if.then8.i191
	ori	$a1, $zero, 5
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 5
	pcaddu18i	$ra, %call36(IntVector_insertEnd)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	beqz	$s0, .LBB6_106
.LBB6_96:                               # %if.end.i196
	ld.w	$a0, $fp, 12
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	beqz	$a0, .LBB6_106
# %bb.97:                               # %for.cond.preheader.i
	ld.w	$a1, $s0, 0
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB6_106
# %bb.98:                               # %for.body.lr.ph.i
	ld.d	$a2, $s0, 8
	move	$a4, $a2
	move	$a5, $a1
                                        # implicit-def: $f0_64
	b	.LBB6_100
.LBB6_99:                               # %for.inc.i
                                        #   in Loop: Header=BB6_100 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	beqz	$a5, .LBB6_102
.LBB6_100:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	blt	$a6, $a3, .LBB6_99
# %bb.101:                              # %if.then14.i
                                        #   in Loop: Header=BB6_100 Depth=1
	bstrpick.d	$a7, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $a0, $a6
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $t0, 1
	stx.w	$a7, $a0, $a6
	b	.LBB6_99
.LBB6_102:                              # %for.end.i
	bstrpick.d	$a0, $a1, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 16
	movgr2fr.d	$fa2, $zero
.LBB6_103:                              # %for.body36.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $a2, 0
	addi.w	$a3, $a0, 0
	slt	$a3, $zero, $a3
	movgr2fr.d	$fa3, $a0
	ffint.d.l	$fa3, $fa3
	fsub.d	$fa3, $fa3, $fa0
	fmadd.d	$fa3, $fa3, $fa3, $fa2
	movgr2cf	$fcc0, $a3
	fsel	$fa2, $fa2, $fa3, $fcc0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB6_103
# %bb.104:                              # %for.end53.i
	fdiv.d	$fa1, $fa2, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_110
.LBB6_105:                              # %for.end53.i.split
	fst.d	$fa0, $fp, 24
.LBB6_106:                              # %Stats_calculate.exit
	ld.d	$a2, $fp, 24
	ld.d	$a1, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 8
	ld.w	$a0, $fp, 12
	bge	$s2, $a0, .LBB6_109
# %bb.107:                              # %for.body28.lr.ph
	slli.d	$s3, $s2, 2
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	move	$s1, $s2
	.p2align	4, , 16
.LBB6_108:                              # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.w	$a2, $a0, $s3
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.d	$s2, $s2, 1
	addi.w	$s1, $s1, 1
	addi.d	$s3, $s3, 4
	blt	$s2, $a0, .LBB6_108
.LBB6_109:                              # %for.end32
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_110:                              # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB6_105
.Lfunc_end6:
	.size	testStats, .Lfunc_end6-testStats
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"avg: %f\nstd dev: %f\n"
	.size	.L.str, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\tlength %d appeared %d times\n"
	.size	.L.str.2, 30

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Histogram:"
	.size	.Lstr, 11

	.section	".note.GNU-stack","",@progbits
	.addrsig
