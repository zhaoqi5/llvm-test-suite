	.file	"tt.c"
	.text
	.globl	ctype                           # -- Begin function ctype
	.p2align	5
	.type	ctype,@function
ctype:                                  # @ctype
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(instead)
	ld.d	$a2, $a2, %got_pc_lo12(instead)
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB0_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB0_2:                                # %if.end
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a2, $a0
	beqz	$a2, .LBB0_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB0_4:                                # %if.end5
	pcalau12i	$a2, %got_pc_hi20(stynum)
	ld.d	$a2, $a2, %got_pc_lo12(stynum)
	ldx.w	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(style)
	ld.d	$a2, $a2, %got_pc_lo12(style)
	slli.d	$a3, $a0, 6
	alsl.d	$a0, $a0, $a3, 4
	add.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ret
.Lfunc_end0:
	.size	ctype, .Lfunc_end0-ctype
                                        # -- End function
	.globl	min                             # -- Begin function min
	.p2align	5
	.type	min,@function
min:                                    # @min
# %bb.0:                                # %entry
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ret
.Lfunc_end1:
	.size	min, .Lfunc_end1-min
                                        # -- End function
	.globl	fspan                           # -- Begin function fspan
	.p2align	5
	.type	fspan,@function
fspan:                                  # @fspan
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(ncol)
	ld.d	$a2, $a2, %got_pc_lo12(ncol)
	ld.w	$a2, $a2, 0
	addi.w	$a1, $a1, 1
	bge	$a1, $a2, .LBB2_3
# %bb.1:                                # %land.rhs
	pcalau12i	$a2, %got_pc_hi20(instead)
	ld.d	$a2, $a2, %got_pc_lo12(instead)
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	bnez	$a2, .LBB2_3
# %bb.2:                                # %if.end.i
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a2, $a0
	beqz	$a2, .LBB2_4
.LBB2_3:
	move	$a0, $zero
	ret
.LBB2_4:                                # %if.end5.i
	pcalau12i	$a2, %got_pc_hi20(stynum)
	ld.d	$a2, $a2, %got_pc_lo12(stynum)
	ldx.w	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(style)
	ld.d	$a2, $a2, %got_pc_lo12(style)
	slli.d	$a3, $a0, 6
	alsl.d	$a0, $a0, $a3, 4
	add.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -115
	sltui	$a0, $a0, 1
	ret
.Lfunc_end2:
	.size	fspan, .Lfunc_end2-fspan
                                        # -- End function
	.globl	lspan                           # -- Begin function lspan
	.p2align	5
	.type	lspan,@function
lspan:                                  # @lspan
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(instead)
	ld.d	$a2, $a2, %got_pc_lo12(instead)
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	bnez	$a2, .LBB3_5
# %bb.1:                                # %if.end.i
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	slli.d	$a0, $a0, 2
	ldx.w	$a2, $a2, $a0
	bnez	$a2, .LBB3_5
# %bb.2:                                # %ctype.exit
	pcalau12i	$a2, %got_pc_hi20(stynum)
	ld.d	$a2, $a2, %got_pc_lo12(stynum)
	ldx.w	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(style)
	ld.d	$a2, $a2, %got_pc_lo12(style)
	slli.d	$a3, $a0, 6
	alsl.d	$a3, $a0, $a3, 4
	add.d	$a0, $a2, $a3
	slli.d	$a4, $a1, 2
	ldx.w	$a4, $a0, $a4
	ori	$a5, $zero, 115
	bne	$a4, $a5, .LBB3_5
# %bb.3:                                # %if.end
	pcalau12i	$a4, %got_pc_hi20(ncol)
	ld.d	$a4, $a4, %got_pc_lo12(ncol)
	ld.w	$a5, $a4, 0
	addi.w	$a4, $a1, 1
	bge	$a4, $a5, .LBB3_6
# %bb.4:                                # %ctype.exit21
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	ori	$a4, $zero, 115
	bne	$a0, $a4, .LBB3_6
.LBB3_5:
	move	$a0, $zero
	ret
.LBB3_6:                                # %for.inc.us.preheader
	move	$a0, $zero
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 115
	.p2align	4, , 16
.LBB3_7:                                # %for.inc.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -4
	beq	$a3, $a2, .LBB3_7
# %bb.8:                                # %cleanup
	ret
.Lfunc_end3:
	.size	lspan, .Lfunc_end3-lspan
                                        # -- End function
	.globl	ctspan                          # -- Begin function ctspan
	.p2align	5
	.type	ctspan,@function
ctspan:                                 # @ctspan
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(ncol)
	ld.d	$a2, $a2, %got_pc_lo12(ncol)
	ld.w	$a3, $a2, 0
	move	$a2, $a0
	addi.w	$a4, $a1, 1
	ori	$a0, $zero, 1
	bge	$a4, $a3, .LBB4_2
# %bb.1:                                # %land.rhs.lr.ph
	pcalau12i	$a4, %got_pc_hi20(instead)
	ld.d	$a4, $a4, %got_pc_lo12(instead)
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a4, $a5
	beqz	$a4, .LBB4_3
.LBB4_2:                                # %for.end
	ret
.LBB4_3:                                # %land.rhs.lr.ph.split.us
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$a0, $a0, %got_pc_lo12(fullbot)
	pcalau12i	$a4, %got_pc_hi20(stynum)
	ld.d	$a4, $a4, %got_pc_lo12(stynum)
	alsl.d	$a0, $a2, $a0, 2
	pcalau12i	$a5, %got_pc_hi20(style)
	ld.d	$a5, $a5, %got_pc_lo12(style)
	alsl.d	$a2, $a2, $a4, 2
	ld.w	$a4, $a0, 0
	sub.w	$a3, $a3, $a1
	alsl.d	$a0, $a1, $a5, 2
	addi.d	$a1, $a0, 4
	ori	$a0, $zero, 1
	ori	$a5, $zero, 115
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB4_4:                                # %land.rhs.us
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a4, .LBB4_2
# %bb.5:                                # %ctype.exit.us
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a7, $a2, 0
	slli.d	$t0, $a7, 6
	alsl.d	$a7, $a7, $t0, 4
	ldx.w	$a7, $a1, $a7
	bne	$a7, $a5, .LBB4_8
# %bb.6:                                # %for.body.us
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$a6, $a6, 1
	addi.d	$a1, $a1, 4
	bne	$a3, $a6, .LBB4_4
# %bb.7:
	move	$a0, $a3
	ret
.LBB4_8:
	move	$a0, $a6
	ret
.Lfunc_end4:
	.size	ctspan, .Lfunc_end4-ctspan
                                        # -- End function
	.globl	tohcol                          # -- Begin function tohcol
	.p2align	5
	.type	tohcol,@function
tohcol:                                 # @tohcol
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(tabout)
	ld.d	$a1, $a1, %got_pc_lo12(tabout)
	ld.d	$a4, $a1, 0
	beqz	$a0, .LBB5_2
# %bb.1:                                # %if.else
	addi.w	$a2, $a0, 40
	addi.w	$a3, $a0, 79
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $a4
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB5_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a3, $a4
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	tohcol, .Lfunc_end5-tohcol
                                        # -- End function
	.globl	allh                            # -- Begin function allh
	.p2align	5
	.type	allh,@function
allh:                                   # @allh
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(fullbot)
	ld.d	$a1, $a1, %got_pc_lo12(fullbot)
	move	$fp, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ori	$s0, $zero, 1
	beqz	$a0, .LBB6_2
.LBB6_1:                                # %cleanup
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_2:                                # %for.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s2, $a0, %got_pc_lo12(ncol)
	ld.w	$a0, $s2, 0
	move	$s0, $zero
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB6_1
# %bb.3:                                # %for.body.preheader
	move	$s1, $zero
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB6_1
.LBB6_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB6_4
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	beqz	$a0, .LBB6_8
# %bb.7:                                # %if.end6
                                        #   in Loop: Header=BB6_5 Depth=1
	ori	$s0, $zero, 1
	b	.LBB6_4
.LBB6_8:
	move	$s0, $a0
	b	.LBB6_1
.Lfunc_end6:
	.size	allh, .Lfunc_end6-allh
                                        # -- End function
	.globl	thish                           # -- Begin function thish
	.p2align	5
	.type	thish,@function
thish:                                  # @thish
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	or	$a2, $a1, $a0
	bltz	$a2, .LBB7_7
# %bb.1:                                # %if.end3.lr.ph
	pcalau12i	$a2, %got_pc_hi20(instead)
	ld.d	$a2, $a2, %got_pc_lo12(instead)
	pcalau12i	$a3, %got_pc_hi20(fullbot)
	ld.d	$a3, $a3, %got_pc_lo12(fullbot)
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $a2, $a4
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a3, $a2
	beqz	$a4, .LBB7_3
# %bb.2:                                # %if.end3.lr.ph.split
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a0
	b	.LBB7_8
.LBB7_3:                                # %if.end3.lr.ph.split.us
	pcalau12i	$a3, %got_pc_hi20(stynum)
	ld.d	$a3, $a3, %got_pc_lo12(stynum)
	pcalau12i	$a4, %got_pc_hi20(style)
	ld.d	$a4, $a4, %got_pc_lo12(style)
	alsl.d	$a5, $a0, $a3, 2
	ori	$a6, $zero, 115
	addi.w	$a7, $zero, -1
.LBB7_4:                                # %if.end3.us
                                        # =>This Inner Loop Header: Depth=1
	bnez	$a2, .LBB7_8
# %bb.5:                                # %ctype.exit.us
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a3, $a5, 0
	slli.d	$t0, $a3, 6
	alsl.d	$a3, $a3, $t0, 4
	add.d	$a3, $a4, $a3
	slli.d	$t0, $a1, 2
	ldx.w	$a3, $a3, $t0
	bne	$a3, $a6, .LBB7_9
# %bb.6:                                # %if.then19.us
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.w	$a1, $a1, -1
	or	$a3, $a1, $a0
	blt	$a7, $a3, .LBB7_4
.LBB7_7:
	move	$a2, $zero
.LBB7_8:                                # %cleanup
	move	$a0, $a2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_9:                                # %ctype.exit.us
	ori	$a2, $zero, 60
	bge	$a2, $a3, .LBB7_14
# %bb.10:                               # %ctype.exit.us
	ori	$a2, $zero, 61
	beq	$a3, $a2, .LBB7_22
# %bb.11:                               # %ctype.exit.us
	ori	$a2, $zero, 94
	beq	$a3, $a2, .LBB7_21
# %bb.12:                               # %ctype.exit.us
	ori	$a2, $zero, 95
	bne	$a3, $a2, .LBB7_16
.LBB7_13:                               # %cleanup.loopexit
	ori	$a2, $zero, 45
	b	.LBB7_8
.LBB7_14:                               # %ctype.exit.us
	beqz	$a3, .LBB7_21
# %bb.15:                               # %ctype.exit.us
	ori	$a2, $zero, 45
	beq	$a3, $a2, .LBB7_13
.LBB7_16:                               # %if.end24
	pcalau12i	$a2, %got_pc_hi20(table)
	ld.d	$a2, $a2, %got_pc_lo12(table)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	alsl.d	$a0, $a1, $a0, 4
	addi.d	$a1, $a3, -97
	sltui	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ori	$a2, $zero, 1
	beqz	$fp, .LBB7_8
# %bb.17:                               # %lor.lhs.false31
	addi.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_19
# %bb.18:                               # %land.lhs.true
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB7_21
.LBB7_19:                               # %if.end37
	move	$a0, $fp
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	bnez	$a0, .LBB7_8
# %bb.20:                               # %if.end41
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(barent)
	jr	$t8
.LBB7_21:                               # %cleanup.loopexit68
	ori	$a2, $zero, 1
	b	.LBB7_8
.LBB7_22:
	move	$a2, $a3
	b	.LBB7_8
.Lfunc_end7:
	.size	thish, .Lfunc_end7-thish
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\h'|0'"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\\h'(|\\n(%du+|\\n(%du)/2u'"
	.size	.L.str.1, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
