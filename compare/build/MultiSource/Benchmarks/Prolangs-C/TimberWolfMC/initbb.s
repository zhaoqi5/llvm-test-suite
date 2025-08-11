	.file	"initbb.c"
	.text
	.globl	initbb                          # -- Begin function initbb
	.p2align	5
	.type	initbb,@function
initbb:                                 # @initbb
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(bbleft)
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	st.w	$a1, $a0, %pc_lo12(bbleft)
	pcalau12i	$a2, %got_pc_hi20(numcells)
	ld.d	$a4, $a2, %got_pc_lo12(numcells)
	pcalau12i	$a2, %pc_hi20(bbbottom)
	st.w	$a1, $a2, %pc_lo12(bbbottom)
	pcalau12i	$a3, %pc_hi20(bbtop)
	ld.w	$a7, $a4, 0
	st.w	$zero, $a3, %pc_lo12(bbtop)
	pcalau12i	$a4, %pc_hi20(bbright)
	ori	$a5, $zero, 1
	st.w	$zero, $a4, %pc_lo12(bbright)
	blt	$a7, $a5, .LBB0_11
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$t0, $a5, 0
	move	$a5, $zero
	move	$a6, $zero
	addi.d	$a7, $a7, 1
	bstrpick.d	$t1, $a7, 31, 0
	addi.d	$a7, $t0, 8
	addi.d	$t0, $t1, -1
	move	$t1, $a1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	beqz	$t0, .LBB0_11
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a7, 0
	ld.w	$t2, $t3, 56
	alsl.d	$t2, $t2, $t3, 3
	ld.d	$t2, $t2, 152
	ld.w	$t4, $t3, 12
	ld.w	$t5, $t2, 56
	add.w	$t5, $t5, $t4
	blt	$t5, $a1, .LBB0_7
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t5, $t2, 60
	add.w	$t4, $t5, $t4
	blt	$a5, $t4, .LBB0_8
.LBB0_5:                                # %if.end11
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t3, $t3, 16
	ld.w	$t4, $t2, 64
	add.w	$t4, $t4, $t3
	blt	$t4, $t1, .LBB0_9
.LBB0_6:                                # %if.end14
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$t2, $t2, 68
	add.w	$t2, $t2, $t3
	bge	$a6, $t2, .LBB0_2
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	st.w	$t5, $a0, %pc_lo12(bbleft)
	move	$a1, $t5
	ld.w	$t5, $t2, 60
	add.w	$t4, $t5, $t4
	bge	$a5, $t4, .LBB0_5
.LBB0_8:                                # %if.then10
                                        #   in Loop: Header=BB0_3 Depth=1
	st.w	$t4, $a4, %pc_lo12(bbright)
	move	$a5, $t4
	ld.w	$t3, $t3, 16
	ld.w	$t4, $t2, 64
	add.w	$t4, $t4, $t3
	bge	$t4, $t1, .LBB0_6
.LBB0_9:                                # %if.then13
                                        #   in Loop: Header=BB0_3 Depth=1
	st.w	$t4, $a2, %pc_lo12(bbbottom)
	move	$t1, $t4
	ld.w	$t2, $t2, 68
	add.w	$t2, $t2, $t3
	bge	$a6, $t2, .LBB0_2
.LBB0_10:                               # %if.then16
                                        #   in Loop: Header=BB0_3 Depth=1
	st.w	$t2, $a3, %pc_lo12(bbtop)
	move	$a6, $t2
	b	.LBB0_2
.LBB0_11:                               # %for.end
	ret
.Lfunc_end0:
	.size	initbb, .Lfunc_end0-initbb
                                        # -- End function
	.globl	deltaBB                         # -- Begin function deltaBB
	.p2align	5
	.type	deltaBB,@function
deltaBB:                                # @deltaBB
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(cellarray)
	ld.d	$a3, $a3, %got_pc_lo12(cellarray)
	ld.d	$t2, $a3, 0
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $t2, $a3
	ld.w	$a4, $a3, 56
	alsl.d	$a4, $a4, $a3, 3
	ld.d	$a6, $a4, 152
	ld.w	$a7, $a3, 12
	ld.w	$a4, $a6, 56
	ld.w	$a5, $a6, 60
	ld.w	$t3, $a3, 16
	add.w	$a3, $a4, $a7
	add.w	$t8, $a5, $a7
	ld.w	$a7, $a6, 64
	pcalau12i	$t0, %pc_hi20(bbleft)
	ld.w	$t1, $t0, %pc_lo12(bbleft)
	ld.w	$a6, $a6, 68
	add.w	$t5, $a7, $t3
	pcalau12i	$t0, %pc_hi20(bbbl)
	lu12i.w	$t7, 244
	bne	$a3, $t1, .LBB1_7
# %bb.1:                                # %if.then
	pcalau12i	$t1, %got_pc_hi20(numcells)
	ld.d	$t1, $t1, %got_pc_lo12(numcells)
	ld.w	$t4, $t1, 0
	ori	$t1, $t7, 576
	ori	$t6, $zero, 1
	st.w	$t1, $t0, %pc_lo12(bbbl)
	blt	$t4, $t6, .LBB1_8
# %bb.2:                                # %for.body.preheader
	bstrpick.d	$t1, $a0, 31, 0
	addi.d	$t4, $t4, 1
	bstrpick.d	$fp, $t4, 31, 0
	addi.d	$t4, $t1, -1
	addi.d	$t6, $t2, 8
	addi.d	$fp, $fp, -1
	ori	$t1, $t7, 576
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t4, $t4, -1
	addi.d	$fp, $fp, -1
	addi.d	$t6, $t6, 8
	beqz	$fp, .LBB1_8
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	beqz	$t4, .LBB1_3
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$s0, $t6, 0
	ld.w	$s1, $s0, 56
	alsl.d	$s1, $s1, $s0, 3
	ld.d	$s1, $s1, 152
	ld.w	$s0, $s0, 12
	ld.w	$s1, $s1, 56
	add.w	$s0, $s1, $s0
	bge	$s0, $t1, .LBB1_3
# %bb.6:                                # %if.then21
                                        #   in Loop: Header=BB1_4 Depth=1
	st.w	$s0, $t0, %pc_lo12(bbbl)
	move	$t1, $s0
	b	.LBB1_3
.LBB1_7:                                # %if.else
	move	$a3, $zero
	st.w	$t1, $t0, %pc_lo12(bbbl)
	b	.LBB1_9
.LBB1_8:                                # %for.end
	sub.w	$a3, $a3, $t1
.LBB1_9:                                # %if.end24
	pcalau12i	$t4, %pc_hi20(bbright)
	ld.w	$t6, $t4, %pc_lo12(bbright)
	add.w	$t4, $a6, $t3
	pcalau12i	$t3, %pc_hi20(bbbr)
	bne	$t8, $t6, .LBB1_16
# %bb.10:                               # %if.then26
	pcalau12i	$t6, %got_pc_hi20(numcells)
	ld.d	$t6, $t6, %got_pc_lo12(numcells)
	ld.w	$fp, $t6, 0
	ori	$t6, $zero, 1
	st.w	$zero, $t3, %pc_lo12(bbbr)
	blt	$fp, $t6, .LBB1_19
# %bb.11:                               # %for.body29.preheader
	move	$t6, $zero
	bstrpick.d	$s0, $a0, 31, 0
	addi.d	$fp, $fp, 1
	bstrpick.d	$s1, $fp, 31, 0
	addi.d	$fp, $s0, -1
	addi.d	$s0, $t2, 8
	addi.d	$s1, $s1, -1
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %for.inc45
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB1_20
.LBB1_13:                               # %for.body29
                                        # =>This Inner Loop Header: Depth=1
	beqz	$fp, .LBB1_12
# %bb.14:                               # %if.end32
                                        #   in Loop: Header=BB1_13 Depth=1
	ld.d	$s2, $s0, 0
	ld.w	$s3, $s2, 56
	alsl.d	$s3, $s3, $s2, 3
	ld.d	$s3, $s3, 152
	ld.w	$s2, $s2, 12
	ld.w	$s3, $s3, 60
	add.w	$s2, $s3, $s2
	bge	$t6, $s2, .LBB1_12
# %bb.15:                               # %if.then43
                                        #   in Loop: Header=BB1_13 Depth=1
	st.w	$s2, $t3, %pc_lo12(bbbr)
	move	$t6, $s2
	b	.LBB1_12
.LBB1_16:                               # %if.else50
	st.w	$t6, $t3, %pc_lo12(bbbr)
	pcalau12i	$t8, %pc_hi20(bbbottom)
	ld.w	$fp, $t8, %pc_lo12(bbbottom)
	pcalau12i	$t8, %pc_hi20(bbbb)
	beq	$t5, $fp, .LBB1_21
.LBB1_17:                               # %if.else77
	st.w	$fp, $t8, %pc_lo12(bbbb)
	pcalau12i	$t5, %pc_hi20(bbtop)
	ld.w	$t7, $t5, %pc_lo12(bbtop)
	pcalau12i	$t5, %pc_hi20(bbbt)
	beq	$t4, $t7, .LBB1_28
.LBB1_18:                               # %if.else104
	st.w	$t7, $t5, %pc_lo12(bbbt)
	add.w	$t2, $a4, $a1
	add.w	$a4, $a5, $a1
	add.w	$a0, $a7, $a2
	blt	$t2, $t1, .LBB1_36
	b	.LBB1_37
.LBB1_19:
	move	$t6, $zero
.LBB1_20:                               # %for.end47
	sub.d	$a3, $a3, $t8
	add.w	$a3, $a3, $t6
	pcalau12i	$t8, %pc_hi20(bbbottom)
	ld.w	$fp, $t8, %pc_lo12(bbbottom)
	pcalau12i	$t8, %pc_hi20(bbbb)
	bne	$t5, $fp, .LBB1_17
.LBB1_21:                               # %if.then53
	pcalau12i	$fp, %got_pc_hi20(numcells)
	ld.d	$fp, $fp, %got_pc_lo12(numcells)
	ld.w	$s0, $fp, 0
	ori	$fp, $t7, 576
	ori	$s1, $zero, 1
	st.w	$fp, $t8, %pc_lo12(bbbb)
	blt	$s0, $s1, .LBB1_27
# %bb.22:                               # %for.body56.preheader
	bstrpick.d	$fp, $a0, 31, 0
	addi.d	$s0, $s0, 1
	bstrpick.d	$s2, $s0, 31, 0
	addi.d	$s0, $fp, -1
	addi.d	$s1, $t2, 8
	addi.d	$s2, $s2, -1
	ori	$fp, $t7, 576
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %for.inc72
                                        #   in Loop: Header=BB1_24 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	beqz	$s2, .LBB1_27
.LBB1_24:                               # %for.body56
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s0, .LBB1_23
# %bb.25:                               # %if.end59
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.d	$t7, $s1, 0
	ld.w	$s3, $t7, 56
	alsl.d	$s3, $s3, $t7, 3
	ld.d	$s3, $s3, 152
	ld.w	$t7, $t7, 16
	ld.w	$s3, $s3, 64
	add.w	$t7, $s3, $t7
	bge	$t7, $fp, .LBB1_23
# %bb.26:                               # %if.then70
                                        #   in Loop: Header=BB1_24 Depth=1
	st.w	$t7, $t8, %pc_lo12(bbbb)
	move	$fp, $t7
	b	.LBB1_23
.LBB1_27:                               # %for.end74
	add.d	$a3, $t5, $a3
	sub.w	$a3, $a3, $fp
	pcalau12i	$t5, %pc_hi20(bbtop)
	ld.w	$t7, $t5, %pc_lo12(bbtop)
	pcalau12i	$t5, %pc_hi20(bbbt)
	bne	$t4, $t7, .LBB1_18
.LBB1_28:                               # %if.then80
	pcalau12i	$t7, %got_pc_hi20(numcells)
	ld.d	$t7, $t7, %got_pc_lo12(numcells)
	ld.w	$s0, $t7, 0
	ori	$t7, $zero, 1
	st.w	$zero, $t5, %pc_lo12(bbbt)
	blt	$s0, $t7, .LBB1_34
# %bb.29:                               # %for.body83.preheader
	move	$t7, $zero
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s0, $s0, 1
	bstrpick.d	$s0, $s0, 31, 0
	addi.d	$a0, $a0, -1
	addi.d	$t2, $t2, 8
	addi.d	$s0, $s0, -1
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %for.inc99
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, -1
	addi.d	$t2, $t2, 8
	beqz	$s0, .LBB1_35
.LBB1_31:                               # %for.body83
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a0, .LBB1_30
# %bb.32:                               # %if.end86
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$s1, $t2, 0
	ld.w	$s2, $s1, 56
	alsl.d	$s2, $s2, $s1, 3
	ld.d	$s2, $s2, 152
	ld.w	$s1, $s1, 16
	ld.w	$s2, $s2, 68
	add.w	$s1, $s2, $s1
	bge	$t7, $s1, .LBB1_30
# %bb.33:                               # %if.then97
                                        #   in Loop: Header=BB1_31 Depth=1
	st.w	$s1, $t5, %pc_lo12(bbbt)
	move	$t7, $s1
	b	.LBB1_30
.LBB1_34:
	move	$t7, $zero
.LBB1_35:                               # %for.end101
	sub.d	$a0, $a3, $t4
	add.w	$a3, $a0, $t7
	add.w	$t2, $a4, $a1
	add.w	$a4, $a5, $a1
	add.w	$a0, $a7, $a2
	bge	$t2, $t1, .LBB1_37
.LBB1_36:                               # %if.then121
	st.w	$t2, $t0, %pc_lo12(bbbl)
.LBB1_37:                               # %if.end124
	add.w	$a1, $a6, $a2
	blt	$t6, $a4, .LBB1_42
# %bb.38:                               # %if.end129
	blt	$a0, $fp, .LBB1_43
.LBB1_39:                               # %if.end134
	bge	$t7, $a1, .LBB1_41
.LBB1_40:                               # %if.then136
	st.w	$a1, $t5, %pc_lo12(bbbt)
.LBB1_41:                               # %if.end139
	move	$a0, $a3
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_42:                               # %if.then126
	st.w	$a4, $t3, %pc_lo12(bbbr)
	bge	$a0, $fp, .LBB1_39
.LBB1_43:                               # %if.then131
	st.w	$a0, $t8, %pc_lo12(bbbb)
	blt	$t7, $a1, .LBB1_40
	b	.LBB1_41
.Lfunc_end1:
	.size	deltaBB, .Lfunc_end1-deltaBB
                                        # -- End function
	.type	bbleft,@object                  # @bbleft
	.comm	bbleft,4,4
	.type	bbbottom,@object                # @bbbottom
	.comm	bbbottom,4,4
	.type	bbtop,@object                   # @bbtop
	.comm	bbtop,4,4
	.type	bbright,@object                 # @bbright
	.comm	bbright,4,4
	.type	bbbl,@object                    # @bbbl
	.comm	bbbl,4,4
	.type	bbbr,@object                    # @bbbr
	.comm	bbbr,4,4
	.type	bbbb,@object                    # @bbbb
	.comm	bbbb,4,4
	.type	bbbt,@object                    # @bbbt
	.comm	bbbt,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
