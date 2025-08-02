	.file	"move_sort.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function sort_moves
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	sort_moves
	.p2align	5
	.type	sort_moves,@function
sort_moves:                             # @sort_moves
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
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a3, 95
	ori	$a3, $a3, 3264
	sub.d	$sp, $sp, $a3
	move	$fp, $a2
	move	$s8, $a1
	move	$s0, $a0
	bge	$a1, $a2, .LBB0_12
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s4, $zero
	ori	$s5, $zero, 1
	ori	$t0, $zero, 128
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	addi.d	$s7, $sp, 1112
	addi.d	$t1, $sp, 600
	addi.d	$t2, $sp, 88
	move	$s1, $s8
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.end20
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a0, $s4, $s4, 1
	alsl.d	$a1, $s1, $s6, 2
	add.d	$a2, $s0, $a1
	ldx.d	$a1, $s0, $a1
	ld.w	$a2, $a2, 8
	slli.d	$a0, $a0, 10
	add.d	$a3, $s7, $a0
	stx.d	$a1, $a0, $s7
	st.w	$a2, $a3, 8
	slli.d	$a0, $s4, 2
	stx.w	$a2, $a0, $t1
	stx.w	$s5, $a0, $t2
	addi.w	$s4, $s4, 1
.LBB0_3:                                # %for.inc35
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$a0, $s1, 0
	beq	$fp, $a0, .LBB0_13
.LBB0_4:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	slli.d	$s6, $s1, 3
	move	$a0, $zero
	blt	$s4, $s5, .LBB0_9
# %bb.5:                                # %for.body3.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a1, $s1, $s6, 2
	add.d	$a1, $s0, $a1
	ld.w	$a4, $a1, 8
	addi.d	$a3, $sp, 88
	addi.d	$a2, $sp, 1112
	addi.d	$a5, $sp, 600
	move	$a6, $s4
	.p2align	4, , 16
.LBB0_6:                                # %for.body3
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	beq	$a4, $a7, .LBB0_8
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1025
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB0_6
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a4, $a3, 0
	addi.d	$a5, $a4, 1
	st.w	$a5, $a3, 0
	slli.d	$a3, $a4, 3
	ld.d	$a5, $a1, 0
	ld.w	$a1, $a1, 8
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a4, $a2, $a3
	stx.d	$a5, $a2, $a3
	st.w	$a1, $a4, 8
.LBB0_9:                                # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$a0, $s4, .LBB0_3
.LBB0_10:                               # %if.then17
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$s4, $t0, .LBB0_2
# %bb.11:                               # %if.then19
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a1, $zero, 34
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_fatal_error_aux)
	jirl	$ra, $ra, 0
	addi.d	$t2, $sp, 88
	addi.d	$t1, $sp, 600
	ori	$t0, $zero, 128
	b	.LBB0_2
.LBB0_12:                               # %while.cond.preheader.thread
	beq	$s8, $fp, .LBB0_14
	b	.LBB0_27
.LBB0_13:                               # %while.cond.preheader
	bne	$s8, $fp, .LBB0_15
.LBB0_14:                               # %while.end
	lu12i.w	$a0, 95
	ori	$a0, $a0, 3264
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
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
.LBB0_15:                               # %while.body.lr.ph
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB0_27
# %bb.16:                               # %while.body.us.preheader
	addi.d	$s3, $s4, -1
	ori	$s6, $zero, 12
	ori	$s7, $zero, 1
	lu12i.w	$a0, -2
	ori	$s2, $a0, 3192
	lu32i.d	$s2, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %do.end.us
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a0, $s8, 0
	addi.d	$a1, $sp, 600
	stx.w	$s2, $s5, $a1
	beq	$fp, $a0, .LBB0_14
.LBB0_18:                               # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
	ld.w	$a1, $sp, 600
	move	$a0, $zero
	move	$a2, $s3
	addi.d	$a3, $sp, 604
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_19:                               # %for.body42.us
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	slt	$a6, $a1, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a5, $a6
	or	$a1, $a5, $a1
	masknez	$a0, $a0, $a6
	maskeqz	$a5, $a4, $a6
	or	$a0, $a5, $a0
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB0_19
# %bb.20:                               # %for.cond40.do.body.preheader_crit_edge.us
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$a1, $a0, $a0, 1
	slli.d	$a1, $a1, 10
	addi.d	$a2, $sp, 1112
	add.d	$a1, $a2, $a1
	slli.d	$s5, $a0, 2
	addi.d	$a0, $sp, 88
	ldx.w	$s4, $s5, $a0
	addi.w	$s8, $s8, 0
	mul.d	$a0, $s8, $s6
	add.d	$a0, $s0, $a0
	slt	$a2, $s7, $s4
	maskeqz	$a3, $s4, $a2
	masknez	$a2, $s7, $a2
	or	$s1, $a3, $a2
	mul.d	$a2, $s1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	bge	$s4, $a0, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=1
	move	$a0, $zero
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_22:                               # %vector.ph91
                                        #   in Loop: Header=BB0_18 Depth=1
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	xvld	$xr1, $sp, 48                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	xvinsgr2vr.d	$xr0, $s8, 0
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_23:                               # %vector.body94
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr0, $xr0, 1
	addi.d	$a1, $a1, -8
	xvaddi.du	$xr1, $xr1, 1
	bnez	$a1, .LBB0_23
# %bb.24:                               # %middle.block99
                                        #   in Loop: Header=BB0_18 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s8, $xr0, 0
	beq	$a0, $s1, .LBB0_17
.LBB0_25:                               # %do.body.us.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	sub.d	$a1, $s1, $a0
	add.d	$a2, $s8, $s1
	sub.d	$s8, $a2, $a0
	.p2align	4, , 16
.LBB0_26:                               # %do.body.us
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB0_26
	b	.LBB0_17
.LBB0_27:                               # %while.body.lr.ph.split
	ld.w	$s1, $sp, 88
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 3
	alsl.d	$s2, $s3, $a0, 2
	bstrpick.d	$a0, $s3, 30, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	slli.d	$s4, $a0, 3
	ori	$s5, $zero, 8
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %do.end
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.w	$a0, $s8, 0
	beq	$fp, $a0, .LBB0_14
.LBB0_29:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	addi.w	$s8, $s8, 0
	slli.d	$a0, $s8, 3
	alsl.d	$a0, $s8, $a0, 2
	add.d	$a0, $s0, $a0
	addi.d	$a1, $sp, 1112
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bge	$s1, $s5, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	move	$a0, $zero
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_31:                               # %vector.ph
                                        #   in Loop: Header=BB0_29 Depth=1
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	xvinsgr2vr.d	$xr0, $s8, 0
	move	$a0, $s4
	.p2align	4, , 16
.LBB0_32:                               # %vector.body
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr0, $xr0, 1
	addi.d	$a0, $a0, -8
	xvaddi.du	$xr1, $xr1, 1
	bnez	$a0, .LBB0_32
# %bb.33:                               # %middle.block
                                        #   in Loop: Header=BB0_29 Depth=1
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvld	$xr2, $sp, 48                   # 32-byte Folded Reload
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s8, $xr0, 0
	move	$a0, $s4
	beq	$s4, $s3, .LBB0_28
.LBB0_34:                               # %do.body.preheader
                                        #   in Loop: Header=BB0_29 Depth=1
	sub.d	$a1, $s3, $a0
	add.d	$a2, $s3, $s8
	sub.d	$s8, $a2, $a0
	.p2align	4, , 16
.LBB0_35:                               # %do.body
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a1, -1
	bnez	$a1, .LBB0_35
	b	.LBB0_28
.Lfunc_end0:
	.size	sort_moves, .Lfunc_end0-sort_moves
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/obsequi/move_sort.c"
	.size	.L.str, 74

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Not enough buckets.\n"
	.size	.L.str.1, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
