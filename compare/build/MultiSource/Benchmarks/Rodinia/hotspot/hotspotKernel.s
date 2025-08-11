	.file	"hotspotKernel.c"
	.text
	.globl	hotspotKernel                   # -- Begin function hotspotKernel
	.p2align	5
	.type	hotspotKernel,@function
hotspotKernel:                          # @hotspotKernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
                                        # kill: def $f5_64 killed $f5_64 def $xr5
                                        # kill: def $f3_64 killed $f3_64 def $xr3
                                        # kill: def $f2_64 killed $f2_64 def $xr2
                                        # kill: def $f1_64 killed $f1_64 def $xr1
	move	$a3, $a1
	move	$s2, $zero
	lu12i.w	$s5, 511
	add.d	$s1, $a0, $s5
	lu12i.w	$s3, 510
	add.d	$a1, $a1, $s3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	add.d	$s4, $a2, $s5
	fdiv.d	$fa0, $fa4, $fa0
	sub.d	$t1, $a3, $a0
	lu12i.w	$t2, 1
	add.d	$a1, $a0, $t2
	add.d	$a4, $a2, $t2
	addu16i.d	$a5, $a3, 32
	addi.d	$a6, $a0, 8
	addu16i.d	$a7, $a0, 32
	addi.d	$a7, $a7, -8
	addi.d	$t0, $a2, 8
	addu16i.d	$t3, $a2, 32
	addi.d	$t5, $t3, -8
	ori	$t3, $t2, 8
	add.d	$t4, $a0, $t3
	ori	$t6, $s3, 4088
	add.d	$t7, $a0, $t6
	add.d	$t8, $a2, $t3
	add.d	$t6, $a2, $t6
	addi.d	$fp, $a3, 8
	addi.d	$s0, $a5, -8
	sltu	$t6, $t4, $t6
	sltu	$t8, $t8, $t7
	and	$t6, $t6, $t8
	sltu	$t4, $t4, $s0
	sltu	$t7, $fp, $t7
	move	$fp, $s3
	and	$t4, $t4, $t7
	or	$t4, $t6, $t4
	xvreplve0.d	$xr4, $xr2
	xvreplve0.d	$xr6, $xr1
	xvreplve0.d	$xr7, $xr5
	xvreplve0.d	$xr8, $xr3
	xvreplve0.d	$xr9, $xr0
	sltu	$t5, $a6, $t5
	sltu	$t0, $t0, $a7
	and	$t0, $t5, $t0
	sltu	$a6, $a6, $a5
	sltu	$a7, $a3, $a7
	and	$a6, $a6, $a7
	or	$a6, $t0, $a6
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	sltu	$a6, $a1, $s4
	sltu	$a4, $a4, $s1
	and	$a4, $a6, $a4
	sltu	$a1, $a1, $a5
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	sltu	$a5, $a3, $s1
	and	$a1, $a1, $a5
	or	$a1, $a4, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$t7, 2
	ori	$a1, $t7, 4088
	add.d	$a4, $a0, $a1
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a1, 3
	add.d	$a1, $a3, $a1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a1, $a3, 32
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	vldi	$vr10, -896
	ori	$s4, $zero, 4088
	ori	$s6, $zero, 4080
	lu12i.w	$s7, -2
	ori	$s8, $s7, 4088
	lu52i.d	$a1, $zero, -1024
	xvreplgr2vr.d	$xr11, $a1
	lu12i.w	$ra, -1
	ori	$s0, $zero, 512
	lu12i.w	$s1, -3
	lu12i.w	$t5, 4
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %for.end373
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.w	$s2, $s2, 1
	ori	$a1, $zero, 200
	beq	$s2, $a1, .LBB0_29
.LBB0_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	move	$a5, $zero
	ori	$a7, $zero, 1
	move	$a1, $a3
	move	$t0, $a2
	move	$t6, $a0
	.p2align	4, , 16
.LBB0_3:                                # %for.cond4.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	ori	$a6, $zero, 1
	bnez	$t4, .LBB0_7
# %bb.4:                                # %vector.body323.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	ori	$a4, $zero, 508
	move	$a6, $a1
	move	$t8, $t0
	move	$s2, $t6
	.p2align	4, , 16
.LBB0_5:                                # %vector.body323
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$s3, $t7, 8
	xvldx	$xr12, $a6, $s3
	xvld	$xr13, $a6, 8
	add.d	$s3, $a6, $t3
	xvldx	$xr14, $t8, $t3
	xvldx	$xr15, $a6, $t3
	xvfadd.d	$xr12, $xr12, $xr13
	xvld	$xr13, $s3, 8
	xvld	$xr16, $s3, -8
	xvfmadd.d	$xr12, $xr15, $xr11, $xr12
	xvfdiv.d	$xr12, $xr12, $xr4
	xvfadd.d	$xr12, $xr14, $xr12
	xvfadd.d	$xr13, $xr13, $xr16
	xvfmadd.d	$xr13, $xr15, $xr11, $xr13
	xvfdiv.d	$xr13, $xr13, $xr6
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr15
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr15, $xr12
	xvstx	$xr12, $s2, $t3
	addi.d	$a4, $a4, -4
	addi.d	$s2, $s2, 32
	addi.d	$t8, $t8, 32
	addi.d	$a6, $a6, 32
	bnez	$a4, .LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	ori	$a6, $zero, 509
.LBB0_7:                                # %for.body6.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	alsl.d	$a4, $a6, $a5, 3
	addi.d	$a6, $a6, -511
	.p2align	4, , 16
.LBB0_8:                                # %for.body6
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $a3, $a4
	fldx.d	$ft4, $t8, $t7
	fldx.d	$ft5, $a3, $a4
	add.d	$s2, $a2, $a4
	fldx.d	$ft6, $s2, $t2
	fldx.d	$ft7, $t8, $t2
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $t8, $t3
	fldx.d	$ft8, $t8, $s4
	fmadd.d	$ft4, $ft7, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft6, $ft4
	fadd.d	$ft5, $ft5, $ft8
	fmadd.d	$ft5, $ft7, $ft2, $ft5
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft7
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft7, $ft4
	add.d	$t8, $a0, $a4
	fstx.d	$ft4, $t8, $t2
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB0_8
# %bb.9:                                # %for.inc57
                                        #   in Loop: Header=BB0_3 Depth=2
	addi.d	$a7, $a7, 1
	add.d	$t6, $t6, $t2
	add.d	$t0, $t0, $t2
	add.d	$a1, $a1, $t2
	add.d	$a5, $a5, $t2
	ori	$a4, $zero, 511
	bne	$a7, $a4, .LBB0_3
# %bb.10:                               # %for.end59
                                        #   in Loop: Header=BB0_2 Depth=1
	fld.d	$ft4, $a3, 8
	fld.d	$ft5, $a3, 0
	fld.d	$ft6, $a2, 0
	fldx.d	$ft7, $a3, $t2
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a0, 0
	fldx.d	$ft4, $a3, $s6
	fldx.d	$ft5, $a3, $s4
	fldx.d	$ft6, $a2, $s4
	ori	$t6, $t2, 4088
	fldx.d	$ft7, $a3, $t6
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fstx.d	$ft4, $a0, $s4
	ori	$s2, $t2, 4080
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	fldx.d	$ft4, $a4, $s2
	fldx.d	$ft5, $a4, $t6
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	fldx.d	$ft6, $a5, $s4
	fldx.d	$ft7, $a4, $s4
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fstx.d	$ft4, $a1, $s4
	fldx.d	$ft4, $a4, $t3
	fldx.d	$ft5, $a4, $t2
	fld.d	$ft6, $a5, 0
	fld.d	$ft7, $a4, 0
	fsub.d	$ft4, $ft4, $ft5
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft6, $ft4
	fsub.d	$ft6, $ft7, $ft5
	fdiv.d	$ft6, $ft6, $fa2
	fadd.d	$ft4, $ft4, $ft6
	fsub.d	$ft6, $fa5, $ft5
	fdiv.d	$ft6, $ft6, $fa3
	fadd.d	$ft4, $ft6, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a1, 0
	ori	$a1, $zero, 1
	ori	$a5, $s5, 8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bnez	$a4, .LBB0_14
# %bb.11:                               # %vector.body281.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a1, $zero, 508
	move	$a4, $a2
	move	$a6, $a0
	move	$a7, $a3
	.p2align	4, , 16
.LBB0_12:                               # %vector.body281
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr12, $a7, 16
	xvld	$xr13, $a7, 0
	xvld	$xr14, $a7, 8
	xvld	$xr15, $a4, 8
	xvfadd.d	$xr12, $xr12, $xr13
	xvldx	$xr13, $a7, $t3
	xvfmadd.d	$xr12, $xr14, $xr11, $xr12
	xvfdiv.d	$xr12, $xr12, $xr6
	xvfadd.d	$xr12, $xr15, $xr12
	xvfsub.d	$xr13, $xr13, $xr14
	xvfdiv.d	$xr13, $xr13, $xr4
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr14
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr14, $xr12
	ori	$t0, $s5, 16
	add.d	$t8, $a7, $t0
	xvldx	$xr13, $a7, $t0
	xvld	$xr14, $t8, -16
	xvst	$xr12, $a6, 8
	xvldx	$xr12, $a4, $a5
	xvldx	$xr15, $a7, $a5
	xvfadd.d	$xr13, $xr13, $xr14
	ori	$t0, $fp, 8
	xvldx	$xr14, $a7, $t0
	xvfmadd.d	$xr13, $xr15, $xr11, $xr13
	xvfdiv.d	$xr13, $xr13, $xr6
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr14, $xr15
	xvfdiv.d	$xr13, $xr13, $xr4
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr15
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr15, $xr12
	xvstx	$xr12, $a6, $a5
	addi.d	$a1, $a1, -4
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, 32
	addi.d	$a4, $a4, 32
	bnez	$a1, .LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_2 Depth=1
	ori	$a1, $zero, 509
.LBB0_14:                               # %for.body176.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a4, $a1, 3
	ori	$a6, $zero, 4088
	move	$a7, $a2
	move	$t0, $a0
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $a3
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_15:                               # %for.body176
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s5, $a1, $a4
	fld.d	$ft4, $s5, 8
	fld.d	$ft5, $s5, -8
	fldx.d	$ft6, $a1, $a4
	fldx.d	$ft7, $a7, $a4
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $s5, $t2
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $t0, $a4
	add.d	$fp, $s5, $a5
	fldx.d	$ft4, $s5, $a5
	fld.d	$ft5, $fp, -16
	fld.d	$ft6, $fp, -8
	fldx.d	$ft7, $s3, $a4
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $fp, $s8
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa1
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa2
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $t8, $a4
	addi.d	$t8, $t8, 8
	addi.d	$a1, $a1, 8
	addi.d	$a6, $a6, -8
	addi.d	$s3, $s3, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bne	$a4, $a6, .LBB0_15
# %bb.16:                               # %vector.memcheck235
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$a4, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_20
# %bb.17:                               # %vector.body252.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	ori	$s3, $zero, 508
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_18:                               # %vector.body252
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$ft4, $a5, $ra
	fld.d	$ft5, $a5, 0
	fldx.d	$ft6, $a5, $t2
	fldx.d	$ft7, $a5, $t7
	xvinsve0.d	$xr12, $xr13, 1
	xvinsve0.d	$xr12, $xr14, 2
	xvinsve0.d	$xr12, $xr15, 3
	fld.d	$ft5, $t0, -8
	ori	$a1, $s1, 4088
	fldx.d	$ft6, $t0, $a1
	fldx.d	$ft7, $t0, $s8
	fldx.d	$ft8, $t0, $s4
	fldx.d	$ft9, $t0, $t6
	fldx.d	$ft10, $t0, $fp
	xvinsve0.d	$xr14, $xr15, 1
	xvinsve0.d	$xr14, $xr13, 2
	xvinsve0.d	$xr15, $xr13, 1
	xvinsve0.d	$xr13, $xr16, 1
	xvinsve0.d	$xr13, $xr17, 2
	xvinsve0.d	$xr13, $xr18, 3
	xvinsve0.d	$xr14, $xr16, 3
	xvfadd.d	$xr13, $xr13, $xr14
	xvinsve0.d	$xr15, $xr16, 2
	xvinsve0.d	$xr15, $xr17, 3
	xvfmadd.d	$xr13, $xr15, $xr11, $xr13
	xvfdiv.d	$xr13, $xr13, $xr4
	ori	$a1, $s7, 4080
	fldx.d	$ft6, $t0, $a1
	fld.d	$ft8, $t0, -16
	fldx.d	$ft9, $t0, $s6
	fldx.d	$ft10, $t0, $s2
	xvfadd.d	$xr12, $xr12, $xr13
	xvinsve0.d	$xr14, $xr16, 1
	xvinsve0.d	$xr14, $xr17, 2
	xvinsve0.d	$xr14, $xr18, 3
	xvfsub.d	$xr13, $xr14, $xr15
	xvfdiv.d	$xr13, $xr13, $xr6
	xvfadd.d	$xr12, $xr12, $xr13
	xvfsub.d	$xr13, $xr7, $xr15
	xvfdiv.d	$xr13, $xr13, $xr8
	xvfadd.d	$xr12, $xr13, $xr12
	xvfmul.d	$xr12, $xr9, $xr12
	xvfadd.d	$xr12, $xr15, $xr12
	ori	$a4, $s7, 8
	add.d	$a1, $a7, $a4
	fldx.d	$ft5, $a5, $a4
	ori	$t8, $ra, 8
	fldx.d	$ft6, $a5, $t8
	fld.d	$ft7, $a5, 8
	fldx.d	$ft8, $a5, $t3
	add.d	$a6, $a7, $t7
	xvinsve0.d	$xr13, $xr14, 1
	xvinsve0.d	$xr13, $xr15, 2
	xvinsve0.d	$xr13, $xr16, 3
	fldx.d	$ft6, $t0, $ra
	fldx.d	$ft7, $t0, $s1
	fldx.d	$ft8, $t0, $s7
	fld.d	$ft9, $t0, 0
	fldx.d	$ft10, $t0, $t2
	fldx.d	$ft11, $t0, $t7
	xvinsve0.d	$xr15, $xr16, 1
	xvinsve0.d	$xr15, $xr14, 2
	xvinsve0.d	$xr16, $xr14, 1
	xvinsve0.d	$xr14, $xr17, 1
	xvinsve0.d	$xr14, $xr18, 2
	xvinsve0.d	$xr14, $xr19, 3
	xvinsve0.d	$xr15, $xr17, 3
	xvfadd.d	$xr14, $xr14, $xr15
	xvinsve0.d	$xr16, $xr17, 2
	xvinsve0.d	$xr16, $xr18, 3
	xvfmadd.d	$xr14, $xr16, $xr11, $xr14
	xvfdiv.d	$xr14, $xr14, $xr4
	fldx.d	$ft7, $t0, $a4
	fldx.d	$ft9, $t0, $t8
	fld.d	$ft10, $t0, 8
	fldx.d	$ft11, $t0, $t3
	xvfadd.d	$xr13, $xr13, $xr14
	xvinsve0.d	$xr15, $xr17, 1
	xvinsve0.d	$xr15, $xr18, 2
	xvinsve0.d	$xr15, $xr19, 3
	xvfsub.d	$xr14, $xr15, $xr16
	xvfdiv.d	$xr14, $xr14, $xr6
	xvfadd.d	$xr13, $xr13, $xr14
	xvfsub.d	$xr14, $xr7, $xr16
	xvfdiv.d	$xr14, $xr14, $xr8
	xvfadd.d	$xr13, $xr14, $xr13
	xvfmul.d	$xr13, $xr9, $xr13
	xvfadd.d	$xr13, $xr16, $xr13
	xvpickve.d	$xr14, $xr13, 1
	xvpermi.d	$xr15, $xr12, 68
	xvpermi.d	$xr16, $xr12, 78
	xvstelm.d	$xr12, $a6, 0, 3
                                        # kill: def $vr12 killed $vr12 killed $xr12
	vextrins.d	$vr12, $vr14, 16
	vstx	$vr12, $a7, $ra
	xvpickve.d	$xr12, $xr13, 2
	xvrepl128vei.d	$xr14, $xr15, 1
	vextrins.d	$vr14, $vr12, 16
	vst	$vr14, $a7, 0
	xvpickve.d	$xr12, $xr13, 3
	xvrepl128vei.d	$xr14, $xr16, 0
	vextrins.d	$vr14, $vr12, 16
	vstx	$vr14, $a7, $t2
	xvstelm.d	$xr13, $a1, 0, 0
	addi.d	$s3, $s3, -4
	add.d	$a7, $a7, $t5
	add.d	$a5, $a5, $t5
	add.d	$t0, $t0, $t5
	bnez	$s3, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_2 Depth=1
	ori	$a4, $zero, 509
.LBB0_20:                               # %for.body266.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a1, $a4, -511
	slli.d	$a5, $a4, 12
	add.d	$a4, $a0, $a5
	add.d	$a6, $a3, $a5
	add.d	$a5, $a2, $a5
	.p2align	4, , 16
.LBB0_21:                               # %for.body266
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$ft4, $a6, $t6
	fld.d	$ft5, $a6, -8
	fldx.d	$ft6, $a6, $s4
	fldx.d	$ft7, $a5, $s4
	fadd.d	$ft4, $ft4, $ft5
	fldx.d	$ft5, $a6, $s6
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft7, $ft4
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fstx.d	$ft4, $a4, $s4
	fldx.d	$ft4, $a6, $t2
	fldx.d	$ft5, $a6, $ra
	fld.d	$ft6, $a6, 0
	fld.d	$ft7, $a5, 0
	fadd.d	$ft4, $ft4, $ft5
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	fld.d	$ft5, $a6, 8
	fdiv.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft7, $ft4
	add.d	$a6, $a6, $t2
	fsub.d	$ft5, $ft5, $ft6
	fdiv.d	$ft5, $ft5, $fa1
	fadd.d	$ft4, $ft4, $ft5
	fsub.d	$ft5, $fa5, $ft6
	fdiv.d	$ft5, $ft5, $fa3
	fadd.d	$ft4, $ft5, $ft4
	fmul.d	$ft4, $fa0, $ft4
	fadd.d	$ft4, $ft6, $ft4
	fst.d	$ft4, $a4, 0
	addi.d	$a1, $a1, 1
	add.d	$a4, $a4, $t2
	add.d	$a5, $a5, $t2
	bnez	$a1, .LBB0_21
# %bb.22:                               # %for.cond357.preheader.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a1, $zero
	move	$a4, $a0
	move	$a5, $a3
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$s5, 511
	lu12i.w	$fp, 510
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %for.inc371
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a1, $a1, 1
	add.d	$a7, $a7, $t2
	add.d	$a6, $a6, $t2
	add.d	$a5, $a5, $t2
	add.d	$a4, $a4, $t2
	beq	$a1, $s0, .LBB0_1
.LBB0_24:                               # %for.cond357.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_26 Depth 3
	ori	$t0, $zero, 64
	bgeu	$t1, $t0, .LBB0_27
# %bb.25:                               # %for.body359.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$t0, $ra
	.p2align	4, , 16
.LBB0_26:                               # %for.body359
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a4, $t0
	fldx.d	$ft4, $t6, $t2
	add.d	$t6, $a5, $t0
	addi.d	$t0, $t0, 8
	fstx.d	$ft4, $t6, $t2
	bnez	$t0, .LBB0_26
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$t0, $zero, 512
	move	$t6, $a6
	move	$t8, $a7
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr12, $t6, -32
	xvld	$xr13, $t6, 0
	xvst	$xr12, $t8, -32
	xvst	$xr13, $t8, 0
	addi.d	$t0, $t0, -8
	addi.d	$t8, $t8, 64
	addi.d	$t6, $t6, 64
	bnez	$t0, .LBB0_28
	b	.LBB0_23
.LBB0_29:                               # %for.cond.cleanup
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end0:
	.size	hotspotKernel, .Lfunc_end0-hotspotKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
