	.file	"Crystal_Cholesky.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Crystal_Cholesky
.LCPI0_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	Crystal_Cholesky
	.p2align	5
	.type	Crystal_Cholesky,@function
Crystal_Cholesky:                       # @Crystal_Cholesky
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB0_9
# %bb.1:                                # %for.body.preheader
	ori	$a5, $zero, 8
	move	$a4, $zero
	bltu	$a0, $a5, .LBB0_6
# %bb.2:                                # %for.body.preheader
	sub.d	$a5, $a3, $a2
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB0_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 32
	addi.d	$a6, $a2, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB0_4
# %bb.5:                                # %middle.block
	beq	$a4, $a0, .LBB0_8
.LBB0_6:                                # %for.body.preheader216
	alsl.d	$a5, $a4, $a3, 3
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	fst.d	$fa0, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	bnez	$a4, .LBB0_7
.LBB0_8:                                # %for.cond3.preheader
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_10
.LBB0_9:
	move	$a5, $zero
	b	.LBB0_32
.LBB0_10:                               # %for.body5.lr.ph
	fld.d	$fa0, $a1, 0
	ori	$a4, $zero, 5
	bltu	$a0, $a4, .LBB0_14
# %bb.11:                               # %vector.ph204
	addi.d	$a4, $a0, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a2, $a4
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a7, %pc_lo12(.LCPI0_0)
	bstrins.d	$a2, $a6, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvrepli.d	$xr3, 96
	move	$a6, $a5
	.p2align	4, , 16
.LBB0_12:                               # %vector.body207
                                        # =>This Inner Loop Header: Depth=1
	xvmul.d	$xr4, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr4, 0
	add.d	$t0, $a1, $a7
	xvpickve2gr.d	$t1, $xr4, 1
	add.d	$t2, $a1, $t1
	xvpickve2gr.d	$t3, $xr4, 2
	add.d	$t4, $a1, $t3
	xvpickve2gr.d	$t5, $xr4, 3
	fldx.d	$fa4, $a1, $a7
	fldx.d	$fa5, $a1, $t1
	fldx.d	$fa6, $a1, $t3
	fldx.d	$fa7, $a1, $t5
	add.d	$a7, $a1, $t5
	xvinsve0.d	$xr4, $xr5, 1
	xvinsve0.d	$xr4, $xr6, 2
	xvinsve0.d	$xr4, $xr7, 3
	xvfdiv.d	$xr4, $xr4, $xr2
	xvstelm.d	$xr4, $t0, 0, 0
	xvstelm.d	$xr4, $t2, 0, 1
	xvstelm.d	$xr4, $t4, 0, 2
	xvstelm.d	$xr4, $a7, 0, 3
	addi.d	$a6, $a6, -4
	xvaddi.du	$xr1, $xr1, 4
	bnez	$a6, .LBB0_12
# %bb.13:                               # %middle.block210
	beq	$a4, $a5, .LBB0_16
.LBB0_14:                               # %for.body5.preheader
	alsl.d	$a4, $a2, $a2, 1
	slli.d	$a4, $a4, 5
	add.d	$a4, $a1, $a4
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB0_15:                               # %for.body5
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a4, 0
	fdiv.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $a4, 0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 96
	bnez	$a2, .LBB0_15
.LBB0_16:                               # %for.cond20.preheader.preheader
	addi.d	$a2, $a1, 96
	addi.d	$a4, $a1, 8
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a1, 192
	ori	$a7, $zero, 2
	ori	$t4, $zero, 1
	addi.w	$t0, $zero, -96
	movgr2fr.d	$fa0, $zero
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %for.cond17.loopexit
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 96
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 96
	addi.d	$t0, $t0, -96
	beq	$t4, $a0, .LBB0_27
.LBB0_18:                               # %for.cond20.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	move	$t1, $t4
	alsl.d	$t2, $t4, $t4, 1
	slli.d	$t2, $t2, 5
	add.d	$t2, $a1, $t2
	alsl.d	$t3, $t4, $a1, 3
	move	$t5, $a4
	move	$t6, $a2
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_19:                               # %for.body22
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $t6, 0
	fld.d	$fa3, $t5, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t6, $t6, 8
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 96
	bnez	$t4, .LBB0_19
# %bb.20:                               # %for.end33
                                        #   in Loop: Header=BB0_18 Depth=1
	slli.d	$t5, $t1, 3
	fldx.d	$fa2, $t2, $t5
	fsub.d	$fa1, $fa2, $fa1
	addi.d	$t4, $t1, 1
	fstx.d	$fa1, $t2, $t5
	bgeu	$t4, $a0, .LBB0_17
# %bb.21:                               # %for.cond45.preheader.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$t5, $t1, $t2, 3
	move	$t6, $a6
	move	$t7, $a5
	move	$t8, $a7
	.p2align	4, , 16
.LBB0_22:                               # %for.cond45.preheader
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_25 Depth 3
	move	$fp, $zero
	move	$s0, $t1
	move	$s1, $t7
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_23:                               # %for.body47
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a2, $fp
	fld.d	$fa3, $s1, 0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 96
	bnez	$s0, .LBB0_23
# %bb.24:                               # %for.end58
                                        #   in Loop: Header=BB0_22 Depth=2
	slli.d	$fp, $t8, 3
	fldx.d	$fa2, $t2, $fp
	move	$s0, $zero
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $t2, $fp
	alsl.d	$fp, $t8, $t8, 1
	slli.d	$fp, $fp, 5
	move	$s1, $t6
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB0_25:                               # %for.body70
                                        #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $s1, 0
	fldx.d	$fa3, $a4, $s0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s0, $s0, 96
	add.d	$s2, $t0, $s0
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB0_25
# %bb.26:                               # %for.end81
                                        #   in Loop: Header=BB0_22 Depth=2
	fldx.d	$fa2, $t3, $fp
	fld.d	$fa3, $t5, 0
	fsub.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $t3, $fp
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 96
	bne	$t8, $a0, .LBB0_22
	b	.LBB0_17
.LBB0_27:                               # %for.cond105.preheader.preheader
	addi.d	$a2, $a1, 96
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_28:                               # %for.cond105.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $a3, $a5
	alsl.d	$a5, $a4, $a3, 3
	move	$a6, $a4
	move	$a7, $a2
	move	$t0, $a3
	.p2align	4, , 16
.LBB0_29:                               # %for.body107
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a7, 0
	fld.d	$fa2, $t0, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $a5, 0
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB0_29
# %bb.30:                               # %for.inc121
                                        #   in Loop: Header=BB0_28 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 96
	bne	$a4, $a0, .LBB0_28
# %bb.31:
	ori	$a5, $zero, 1
.LBB0_32:                               # %for.end123
	addi.d	$a2, $a0, -1
	addi.w	$a4, $a2, 0
	slli.d	$a6, $a4, 3
	fldx.d	$fa0, $a3, $a6
	alsl.d	$a7, $a4, $a4, 1
	slli.d	$a7, $a7, 5
	add.d	$a7, $a1, $a7
	fldx.d	$fa1, $a7, $a6
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a3, $a6
	beqz	$a5, .LBB0_39
# %bb.33:                               # %for.cond142.preheader.preheader
	addi.d	$a5, $a0, -2
	bstrpick.d	$a6, $a4, 31, 0
	bstrpick.d	$t0, $a5, 31, 0
	alsl.d	$a5, $a6, $a3, 3
	alsl.d	$a7, $t0, $t0, 1
	slli.d	$a7, $a7, 5
	alsl.d	$a6, $a6, $a7, 3
	add.d	$a6, $a1, $a6
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               # %for.cond142.preheader.for.end158_crit_edge
                                        #   in Loop: Header=BB0_36 Depth=1
	fld.d	$fa0, $t1, 0
	alsl.d	$t0, $a7, $a7, 1
	slli.d	$t0, $t0, 5
.LBB0_35:                               # %for.end158
                                        #   in Loop: Header=BB0_36 Depth=1
	slli.d	$t1, $a7, 3
	add.d	$t0, $a1, $t0
	fldx.d	$fa1, $t0, $t1
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a3, $t1
	addi.d	$t0, $a7, -1
	addi.d	$a5, $a5, -8
	addi.d	$a6, $a6, -104
	addi.d	$a4, $a4, -1
	blez	$a7, .LBB0_39
.LBB0_36:                               # %for.cond142.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	move	$a7, $t0
	alsl.d	$t1, $t0, $a3, 3
	bge	$t0, $a2, .LBB0_34
# %bb.37:                               # %for.body144.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=1
	fld.d	$fa0, $t1, 0
	alsl.d	$t0, $a7, $a7, 1
	slli.d	$t0, $t0, 5
	move	$t2, $a4
	move	$t3, $a6
	move	$t4, $a5
	.p2align	4, , 16
.LBB0_38:                               # %for.body144
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $t3, 0
	fld.d	$fa2, $t4, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fst.d	$fa0, $t1, 0
	addi.d	$t4, $t4, 8
	addi.w	$t2, $t2, 1
	addi.d	$t3, $t3, 8
	blt	$t2, $a0, .LBB0_38
	b	.LBB0_35
.LBB0_39:                               # %for.end170
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Crystal_Cholesky, .Lfunc_end0-Crystal_Cholesky
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
