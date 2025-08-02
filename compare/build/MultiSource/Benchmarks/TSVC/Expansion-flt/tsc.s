	.file	"tsc.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set1d
.LCPI0_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	set1d
	.p2align	5
	.type	set1d,@function
set1d:                                  # @set1d
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB0_4
# %bb.1:                                # %entry
	addi.w	$a2, $zero, -2
	bne	$a1, $a2, .LBB0_6
# %bb.2:                                # %vector.body.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_1)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB0_3
	b	.LBB0_8
.LBB0_4:                                # %vector.body33.preheader
	addi.d	$a0, $a0, 4
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	.p2align	4, , 16
.LBB0_5:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB0_5
	b	.LBB0_8
.LBB0_6:                                # %for.body30.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 2
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB0_7:                                # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	fst.s	$fa0, $a0, 0
	add.d	$a2, $a2, $a1
	add.d	$a0, $a0, $a3
	blt	$a2, $a4, .LBB0_7
.LBB0_8:                                # %if.end36
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set1ds
.LCPI1_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	set1ds
	.p2align	5
	.type	set1ds,@function
set1ds:                                 # @set1ds
# %bb.0:                                # %entry
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB1_4
# %bb.1:                                # %entry
	addi.w	$a0, $zero, -2
	bne	$a2, $a0, .LBB1_6
# %bb.2:                                # %vector.body.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_1)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a1, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB1_3
	b	.LBB1_8
.LBB1_4:                                # %vector.body33.preheader
	addi.d	$a0, $a1, 4
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	.p2align	4, , 16
.LBB1_5:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB1_5
	b	.LBB1_8
.LBB1_6:                                # %for.body30.preheader
	move	$a0, $zero
	slli.d	$a3, $a2, 2
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB1_7:                                # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	fst.s	$fa0, $a1, 0
	add.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a3
	blt	$a0, $a4, .LBB1_7
.LBB1_8:                                # %if.end36
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	set1ds, .Lfunc_end1-set1ds
                                        # -- End function
	.globl	set2d                           # -- Begin function set2d
	.p2align	5
	.type	set2d,@function
set2d:                                  # @set2d
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB2_4
# %bb.1:                                # %entry
	addi.w	$a2, $zero, -2
	bne	$a1, $a2, .LBB2_6
# %bb.2:                                # %for.cond23.preheader.preheader
	addi.d	$a0, $a0, 512
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB2_3:                                # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB2_3
	b	.LBB2_10
.LBB2_4:                                # %for.cond2.preheader.preheader
	addi.d	$a0, $a0, 512
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB2_5:                                # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB2_5
	b	.LBB2_10
.LBB2_6:                                # %for.cond52.preheader.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 2
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB2_7:                                # %for.cond52.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$a5, $zero
	move	$a6, $a0
	.p2align	4, , 16
.LBB2_8:                                # %for.body56
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $a6, 0
	add.d	$a5, $a5, $a1
	add.d	$a6, $a6, $a3
	blt	$a5, $a4, .LBB2_8
# %bb.9:                                # %for.cond.cleanup55
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1024
	bne	$a2, $a4, .LBB2_7
.LBB2_10:                               # %if.end67
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	set2d, .Lfunc_end2-set2d
                                        # -- End function
	.globl	sum1d                           # -- Begin function sum1d
	.p2align	5
	.type	sum1d,@function
sum1d:                                  # @sum1d
# %bb.0:                                # %entry
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB3_1
# %bb.2:                                # %for.cond.cleanup
	ret
.Lfunc_end3:
	.size	sum1d, .Lfunc_end3-sum1d
                                        # -- End function
	.globl	check                           # -- Begin function check
	.p2align	5
	.type	check,@function
check:                                  # @check
# %bb.0:                                # %entry
	movgr2fr.w	$fa1, $zero
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1040
	lu12i.w	$a4, 62
	ori	$a4, $a4, 2096
	lu12i.w	$a5, 93
	ori	$a5, $a5, 3152
	lu12i.w	$a6, 125
	ori	$a6, $a6, 128
	fmov.s	$fa4, $fa1
	fmov.s	$fa3, $fa1
	fmov.s	$fa2, $fa1
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa5, $a1, 0
	fadd.s	$fa0, $fa0, $fa5
	fldx.s	$fa5, $a1, $a3
	fldx.s	$fa6, $a1, $a4
	fldx.s	$fa7, $a1, $a5
	fldx.s	$ft0, $a1, $a6
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa4, $fa4, $fa7
	fadd.s	$fa1, $fa1, $ft0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_1
# %bb.2:                                # %for.cond18.preheader.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$a4, $a2, %pc_lo12(global_data)
	lu12i.w	$a2, 284
	ori	$a2, $a2, 1376
	add.d	$a2, $a4, $a2
	lu12i.w	$a3, 220
	ori	$a3, $a3, 1296
	add.d	$a3, $a4, $a3
	lu12i.w	$a5, 156
	ori	$a5, $a5, 1216
	add.d	$a4, $a4, $a5
	movgr2fr.w	$fa5, $zero
	ori	$a5, $zero, 1024
	ori	$a6, $zero, 256
	fmov.s	$fa7, $fa5
	fmov.s	$fa6, $fa5
	.p2align	4, , 16
.LBB4_3:                                # %for.cond18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	move	$a7, $zero
	.p2align	4, , 16
.LBB4_4:                                # %for.body21
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft0, $a4, $a7
	fldx.s	$ft1, $a3, $a7
	fldx.s	$ft2, $a2, $a7
	fadd.s	$fa6, $fa6, $ft0
	fadd.s	$fa7, $fa7, $ft1
	addi.d	$a7, $a7, 4
	fadd.s	$fa5, $fa5, $ft2
	bne	$a7, $a5, .LBB4_4
# %bb.5:                                # %for.cond.cleanup20
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1024
	addi.d	$a3, $a3, 1024
	addi.d	$a4, $a4, 1024
	bne	$a1, $a6, .LBB4_3
# %bb.6:                                # %for.body47.preheader
	movgr2fr.w	$ft0, $zero
	pcalau12i	$a1, %pc_hi20(array)
	addi.d	$a1, $a1, %pc_lo12(array)
	lu12i.w	$a2, 16
	.p2align	4, , 16
.LBB4_7:                                # %for.body47
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$ft1, $a1, 0
	fadd.s	$ft0, $ft0, $ft1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_7
# %bb.8:                                # %for.cond.cleanup46
	addi.d	$a1, $a0, 12
	ori	$a2, $zero, 135
	bltu	$a2, $a1, .LBB4_11
# %bb.9:                                # %for.cond.cleanup46
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_10:                               # %if.then162
	pcalau12i	$a0, %pc_hi20(temp)
	fld.s	$fa0, $a0, %pc_lo12(temp)
	fadd.s	$fa0, $fa2, $fa0
	b	.LBB4_30
.LBB4_11:                               # %for.cond.cleanup46
	ori	$a1, $zero, 1122
	beq	$a0, $a1, .LBB4_29
# %bb.12:                               # %for.cond.cleanup46
	lu12i.w	$a1, 27
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB4_14
# %bb.13:                               # %if.then141
	fadd.s	$fa0, $fa6, $fa7
	fadd.s	$fa0, $fa0, $fa5
	b	.LBB4_30
.LBB4_14:                               # %if.end166
	ret
.LBB4_15:                               # %if.then93
	fmov.s	$fa0, $fa5
	b	.LBB4_30
.LBB4_16:                               # %if.then87
	fmov.s	$fa0, $fa7
	b	.LBB4_30
.LBB4_17:                               # %if.then126
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	b	.LBB4_30
.LBB4_18:                               # %if.then99
	fmov.s	$fa0, $ft0
	b	.LBB4_30
.LBB4_19:                               # %if.then119
	fadd.s	$fa0, $fa0, $fa3
	b	.LBB4_30
.LBB4_20:                               # %if.then156
	pcalau12i	$a0, %pc_hi20(temp)
	fld.s	$fa0, $a0, %pc_lo12(temp)
	b	.LBB4_30
.LBB4_21:                               # %if.then63
	fmov.s	$fa0, $fa3
	b	.LBB4_30
.LBB4_22:                               # %if.then57
	fmov.s	$fa0, $fa2
	b	.LBB4_30
.LBB4_23:                               # %if.then69
	fmov.s	$fa0, $fa4
	b	.LBB4_30
.LBB4_24:                               # %if.then81
	fmov.s	$fa0, $fa6
	b	.LBB4_30
.LBB4_25:                               # %if.then105
	fadd.s	$fa0, $fa0, $fa2
	b	.LBB4_30
.LBB4_26:                               # %if.then75
	fmov.s	$fa0, $fa1
	b	.LBB4_30
.LBB4_27:                               # %if.then112
	fadd.s	$fa0, $fa2, $fa1
	b	.LBB4_30
.LBB4_28:                               # %if.then149
	fadd.s	$fa0, $fa0, $fa6
	b	.LBB4_30
.LBB4_29:                               # %if.then134
	fadd.s	$fa0, $fa6, $fa7
.LBB4_30:                               # %if.end166.sink.split
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	check, .Lfunc_end4-check
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_10-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_18-.LJTI4_0
	.word	.LBB4_30-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_21-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_26-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_25-.LJTI4_0
	.word	.LBB4_19-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_28-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_17-.LJTI4_0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function init
.LCPI5_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI5_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_148
# %bb.1:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_150
# %bb.2:                                # %if.else25
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_160
# %bb.3:                                # %if.else31
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_164
# %bb.4:                                # %if.else37
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_168
# %bb.5:                                # %if.else43
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_172
# %bb.6:                                # %if.else51
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_180
# %bb.7:                                # %if.else56
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_182
# %bb.8:                                # %if.else62
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_186
# %bb.9:                                # %if.else68
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_190
# %bb.10:                               # %if.else74
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_194
# %bb.11:                               # %if.else80
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_198
# %bb.12:                               # %if.else89
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_206
# %bb.13:                               # %if.else98
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_214
# %bb.14:                               # %if.else106
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_220
# %bb.15:                               # %if.else113
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_226
# %bb.16:                               # %if.else122
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_234
# %bb.17:                               # %if.else130
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_240
# %bb.18:                               # %if.else136
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_244
# %bb.19:                               # %if.else143
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_250
# %bb.20:                               # %if.else149
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_254
# %bb.21:                               # %if.else155
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_258
# %bb.22:                               # %if.else164
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_266
# %bb.23:                               # %if.else174
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_278
# %bb.24:                               # %if.else181
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_284
# %bb.25:                               # %if.else187
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_288
# %bb.26:                               # %if.else193
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_292
# %bb.27:                               # %if.else199
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_296
# %bb.28:                               # %if.else205
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_300
# %bb.29:                               # %if.else211
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_304
# %bb.30:                               # %if.else218
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_310
# %bb.31:                               # %if.else227
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_318
# %bb.32:                               # %if.else235
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_326
# %bb.33:                               # %if.else243
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_334
# %bb.34:                               # %if.else250
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_338
# %bb.35:                               # %if.else256
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_342
# %bb.36:                               # %if.else262
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_347
# %bb.37:                               # %if.else269
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_353
# %bb.38:                               # %if.else276
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_359
# %bb.39:                               # %if.else285
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_369
# %bb.40:                               # %if.else293
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_377
# %bb.41:                               # %if.else301
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_385
# %bb.42:                               # %if.else310
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_393
# %bb.43:                               # %if.else318
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_399
# %bb.44:                               # %if.else327
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_407
# %bb.45:                               # %if.else334
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_411
# %bb.46:                               # %if.else342
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_419
# %bb.47:                               # %if.else348
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_421
# %bb.48:                               # %if.else354
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_423
# %bb.49:                               # %if.else361
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_429
# %bb.50:                               # %if.else368
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_435
# %bb.51:                               # %if.else378
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_443
# %bb.52:                               # %if.else386
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_451
# %bb.53:                               # %if.else393
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_457
# %bb.54:                               # %if.else402
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_467
# %bb.55:                               # %if.else411
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_477
# %bb.56:                               # %if.else420
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_485
# %bb.57:                               # %if.else427
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_491
# %bb.58:                               # %if.else435
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_499
# %bb.59:                               # %if.else446
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_511
# %bb.60:                               # %if.else457
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_523
# %bb.61:                               # %if.else468
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_535
# %bb.62:                               # %if.else477
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a1, $a0, %pc_lo12(.L.str.63)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_545
# %bb.63:                               # %if.else484
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a1, $a0, %pc_lo12(.L.str.64)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_551
# %bb.64:                               # %if.else491
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a1, $a0, %pc_lo12(.L.str.65)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_557
# %bb.65:                               # %if.else498
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_561
# %bb.66:                               # %if.else504
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_563
# %bb.67:                               # %if.else510
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_565
# %bb.68:                               # %if.else515
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_567
# %bb.69:                               # %if.else522
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_574
# %bb.70:                               # %if.else527
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_574
# %bb.71:                               # %if.else532
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_575
# %bb.72:                               # %if.else537
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_577
# %bb.73:                               # %if.else542
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_579
# %bb.74:                               # %if.else548
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_583
# %bb.75:                               # %if.else553
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_585
# %bb.76:                               # %if.else558
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_587
# %bb.77:                               # %if.else563
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_573
# %bb.78:                               # %if.else567
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a1, $a0, %pc_lo12(.L.str.79)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_589
# %bb.79:                               # %if.else573
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_591
# %bb.80:                               # %if.else582
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_597
# %bb.81:                               # %if.else587
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_600
# %bb.82:                               # %if.else592
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_602
# %bb.83:                               # %if.else598
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_605
# %bb.84:                               # %if.else604
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_608
# %bb.85:                               # %if.else610
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_611
# %bb.86:                               # %if.else617
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_614
# %bb.87:                               # %if.else626
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_624
# %bb.88:                               # %if.else632
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_627
# %bb.89:                               # %if.else637
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_631
# %bb.90:                               # %if.else643
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_633
# %bb.91:                               # %if.else649
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_637
# %bb.92:                               # %if.else655
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_641
# %bb.93:                               # %if.else661
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_645
# %bb.94:                               # %if.else667
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a1, $a0, %pc_lo12(.L.str.95)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_649
# %bb.95:                               # %if.else673
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_654
# %bb.96:                               # %if.else680
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_660
# %bb.97:                               # %if.else687
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_666
# %bb.98:                               # %if.else696
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_674
# %bb.99:                               # %if.else703
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_680
# %bb.100:                              # %if.else711
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_688
# %bb.101:                              # %if.else717
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_692
# %bb.102:                              # %if.else723
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a1, $a0, %pc_lo12(.L.str.103)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_696
# %bb.103:                              # %if.else729
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_698
# %bb.104:                              # %if.else735
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_702
# %bb.105:                              # %if.else741
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a1, $a0, %pc_lo12(.L.str.106)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_706
# %bb.106:                              # %if.else747
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a1, $a0, %pc_lo12(.L.str.107)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_710
# %bb.107:                              # %if.else758
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_720
# %bb.108:                              # %if.else767
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_730
# %bb.109:                              # %if.else774
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_736
# %bb.110:                              # %if.else780
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_740
# %bb.111:                              # %if.else787
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_744
# %bb.112:                              # %if.else793
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_746
# %bb.113:                              # %if.else802
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_756
# %bb.114:                              # %if.else810
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_764
# %bb.115:                              # %if.else817
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_770
# %bb.116:                              # %if.else825
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_776
# %bb.117:                              # %if.else831
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_780
# %bb.118:                              # %if.else838
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_784
# %bb.119:                              # %if.else846
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_790
# %bb.120:                              # %if.else852
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_794
# %bb.121:                              # %if.else858
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_798
# %bb.122:                              # %if.else866
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_804
# %bb.123:                              # %if.else873
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_810
# %bb.124:                              # %if.else879
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_812
# %bb.125:                              # %if.else885
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_814
# %bb.126:                              # %if.else891
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_816
# %bb.127:                              # %if.else897
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_818
# %bb.128:                              # %if.else903
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_820
# %bb.129:                              # %if.else909
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_824
# %bb.130:                              # %if.else916
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_830
# %bb.131:                              # %if.else922
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_834
# %bb.132:                              # %if.else930
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_840
# %bb.133:                              # %if.else937
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_846
# %bb.134:                              # %if.else942
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_848
# %bb.135:                              # %if.else948
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_573
# %bb.136:                              # %vector.body.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_137:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_137
# %bb.138:                              # %vector.body4706.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_139:                              # %vector.body4706
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_139
# %bb.140:                              # %vector.body4713.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_141:                              # %vector.body4713
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_141
# %bb.142:                              # %vector.body4720.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_143:                              # %vector.body4720
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_143
# %bb.144:                              # %vector.body4727.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_145:                              # %vector.body4727
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a5, $a3, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -2
	addi.w	$a3, $a3, 2
	bnez	$a1, .LBB5_145
# %bb.146:                              # %for.cond2.preheader.i4034.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_147:                              # %for.cond2.preheader.i4034
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_147
	b	.LBB5_573
.LBB5_148:                              # %vector.body7249.preheader
	pcalau12i	$a0, %pc_hi20(X+4)
	addi.d	$a0, $a0, %pc_lo12(X+4)
	pcalau12i	$a1, %pc_hi20(V+4)
	addi.d	$a1, $a1, %pc_lo12(V+4)
	pcalau12i	$a2, %pc_hi20(U+4)
	addi.d	$a2, $a2, %pc_lo12(U+4)
	pcalau12i	$a3, %pc_hi20(Z+4)
	addi.d	$a3, $a3, %pc_lo12(Z+4)
	pcalau12i	$a4, %pc_hi20(Y+4)
	addi.d	$a4, $a4, %pc_lo12(Y+4)
	ori	$a5, $zero, 6
	lu12i.w	$a6, 7
	ori	$a6, $a6, 3328
	.p2align	4, , 16
.LBB5_149:                              # %vector.body7249
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$t0, $a5, -5
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $a5, -4
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.s.l	$fa0, $fa0
	movgr2fr.d	$fa1, $t1
	ffint.s.l	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$t0, $a5, -3
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.s.l	$fa0, $fa0
	fst.s	$fa1, $a4, -4
	fst.s	$fa0, $a4, 0
	addi.d	$t0, $a5, -2
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa1, $t0
	ffint.s.l	$fa1, $fa1
	fst.s	$fa0, $a3, -4
	fst.s	$fa1, $a3, 0
	addi.d	$t0, $a5, -1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.s.l	$fa0, $fa0
	fst.s	$fa1, $a2, -4
	fst.s	$fa0, $a2, 0
	movgr2fr.d	$fa1, $a7
	ffint.s.l	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.w	$a5, $a5, 2
	addi.d	$a0, $a0, 8
	addi.d	$a6, $a6, -2
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB5_149
	b	.LBB5_573
.LBB5_150:                              # %vector.body7206.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_151:                              # %vector.body7206
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_151
# %bb.152:                              # %vector.body7213.preheader
	lu12i.w	$a4, 31
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 1040
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_153:                              # %vector.body7213
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a6, $xr2, 0
	xvinsgr2vr.w	$xr4, $a6, 0
	xvpickve2gr.d	$a6, $xr2, 1
	xvinsgr2vr.w	$xr4, $a6, 1
	xvpickve2gr.d	$a6, $xr2, 2
	xvinsgr2vr.w	$xr4, $a6, 2
	xvpickve2gr.d	$a6, $xr2, 3
	xvinsgr2vr.w	$xr4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 0
	xvinsgr2vr.w	$xr4, $a6, 4
	xvpickve2gr.d	$a6, $xr3, 1
	xvinsgr2vr.w	$xr4, $a6, 5
	xvpickve2gr.d	$a6, $xr3, 2
	xvinsgr2vr.w	$xr4, $a6, 6
	xvpickve2gr.d	$a6, $xr3, 3
	xvinsgr2vr.w	$xr4, $a6, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a4, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_153
# %bb.154:                              # %vector.body7222.preheader
	lu12i.w	$a4, 62
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 2096
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_155:                              # %vector.body7222
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a6, $xr2, 0
	xvinsgr2vr.w	$xr4, $a6, 0
	xvpickve2gr.d	$a6, $xr2, 1
	xvinsgr2vr.w	$xr4, $a6, 1
	xvpickve2gr.d	$a6, $xr2, 2
	xvinsgr2vr.w	$xr4, $a6, 2
	xvpickve2gr.d	$a6, $xr2, 3
	xvinsgr2vr.w	$xr4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 0
	xvinsgr2vr.w	$xr4, $a6, 4
	xvpickve2gr.d	$a6, $xr3, 1
	xvinsgr2vr.w	$xr4, $a6, 5
	xvpickve2gr.d	$a6, $xr3, 2
	xvinsgr2vr.w	$xr4, $a6, 6
	xvpickve2gr.d	$a6, $xr3, 3
	xvinsgr2vr.w	$xr4, $a6, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a4, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_155
# %bb.156:                              # %vector.body7231.preheader
	lu12i.w	$a4, 93
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 3152
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_157:                              # %vector.body7231
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a6, $xr2, 0
	xvinsgr2vr.w	$xr4, $a6, 0
	xvpickve2gr.d	$a6, $xr2, 1
	xvinsgr2vr.w	$xr4, $a6, 1
	xvpickve2gr.d	$a6, $xr2, 2
	xvinsgr2vr.w	$xr4, $a6, 2
	xvpickve2gr.d	$a6, $xr2, 3
	xvinsgr2vr.w	$xr4, $a6, 3
	xvpickve2gr.d	$a6, $xr3, 0
	xvinsgr2vr.w	$xr4, $a6, 4
	xvpickve2gr.d	$a6, $xr3, 1
	xvinsgr2vr.w	$xr4, $a6, 5
	xvpickve2gr.d	$a6, $xr3, 2
	xvinsgr2vr.w	$xr4, $a6, 6
	xvpickve2gr.d	$a6, $xr3, 3
	xvinsgr2vr.w	$xr4, $a6, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a4, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_157
# %bb.158:                              # %vector.body7240.preheader
	lu12i.w	$a4, 125
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a4, 128
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_159:                              # %vector.body7240
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_159
	b	.LBB5_573
.LBB5_160:                              # %vector.body7190.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_161:                              # %vector.body7190
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_161
# %bb.162:                              # %vector.body7197.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_163:                              # %vector.body7197
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_163
	b	.LBB5_573
.LBB5_164:                              # %vector.body7174.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_165:                              # %vector.body7174
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_165
# %bb.166:                              # %vector.body7181.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_167:                              # %vector.body7181
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_167
	b	.LBB5_573
.LBB5_168:                              # %for.cond2.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB5_169:                              # %for.cond2.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_169
# %bb.170:                              # %for.cond23.preheader.i.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB5_171:                              # %for.cond23.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB5_171
	b	.LBB5_573
.LBB5_172:                              # %vector.body7128.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_173:                              # %vector.body7128
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_173
# %bb.174:                              # %for.cond52.preheader.i.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 219235
	ori	$a3, $a3, 1981
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_175:                              # %for.cond52.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_175
# %bb.176:                              # %for.cond52.preheader.i991.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB5_177:                              # %for.cond52.preheader.i991
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_177
# %bb.178:                              # %for.cond52.preheader.i1003.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	.p2align	4, , 16
.LBB5_179:                              # %for.cond52.preheader.i1003
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_179
	b	.LBB5_573
.LBB5_180:                              # %vector.body7121.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
	.p2align	4, , 16
.LBB5_181:                              # %vector.body7121
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_181
	b	.LBB5_573
.LBB5_182:                              # %vector.body7107.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_183:                              # %vector.body7107
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_183
# %bb.184:                              # %for.cond52.preheader.i1027.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu12i.w	$a2, 219235
	ori	$a2, $a2, 1981
	xvreplgr2vr.w	$xr0, $a2
	.p2align	4, , 16
.LBB5_185:                              # %for.cond52.preheader.i1027
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_185
	b	.LBB5_573
.LBB5_186:                              # %for.cond52.preheader.i1039.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_187:                              # %for.cond52.preheader.i1039
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_187
# %bb.188:                              # %for.cond23.preheader.i1051.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB5_189:                              # %for.cond23.preheader.i1051
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB5_189
	b	.LBB5_573
.LBB5_190:                              # %vector.body7075.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_191:                              # %vector.body7075
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_191
# %bb.192:                              # %vector.body7082.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_193:                              # %vector.body7082
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_193
	b	.LBB5_573
.LBB5_194:                              # %vector.body7059.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_195:                              # %vector.body7059
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_195
# %bb.196:                              # %vector.body7066.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_197:                              # %vector.body7066
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_197
	b	.LBB5_573
.LBB5_198:                              # %for.body30.i1094.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_199:                              # %vector.body7031
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_199
# %bb.200:                              # %vector.body7038.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_201:                              # %vector.body7038
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_201
# %bb.202:                              # %vector.body7045.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_203:                              # %vector.body7045
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_203
# %bb.204:                              # %vector.body7052.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_205:                              # %vector.body7052
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_205
	b	.LBB5_573
.LBB5_206:                              # %for.body30.i1124.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_207:                              # %vector.body7003
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_207
# %bb.208:                              # %vector.body7010.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_209:                              # %vector.body7010
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_209
# %bb.210:                              # %vector.body7017.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_211:                              # %vector.body7017
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_211
# %bb.212:                              # %vector.body7024.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_213:                              # %vector.body7024
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_213
	b	.LBB5_573
.LBB5_214:                              # %for.body30.i1160.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 31
	ori	$a2, $a1, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_215:                              # %for.cond52.preheader.i1165
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_215
# %bb.216:                              # %for.cond52.preheader.i1177.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 258048
	xvreplgr2vr.w	$xr0, $a3
.LBB5_217:                              # %for.cond52.preheader.i1177
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_217
# %bb.218:                              # %for.cond52.preheader.i1189.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu12i.w	$a2, 262144
	xvreplgr2vr.w	$xr0, $a2
.LBB5_219:                              # %for.cond52.preheader.i1189
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_219
	b	.LBB5_573
.LBB5_220:                              # %for.cond52.preheader.i1201.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_221:                              # %for.cond52.preheader.i1201
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_221
# %bb.222:                              # %vector.body6966.preheader
	pcalau12i	$a1, %pc_hi20(array+4)
	addi.d	$a1, $a1, %pc_lo12(array+4)
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_223:                              # %vector.body6966
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_223
# %bb.224:                              # %for.cond2.preheader.i1222.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_225:                              # %for.cond2.preheader.i1222
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_225
	b	.LBB5_573
.LBB5_226:                              # %for.body30.i1237.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_227:                              # %vector.body6931
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_227
# %bb.228:                              # %vector.body6938.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_229:                              # %vector.body6938
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_229
# %bb.230:                              # %vector.body6945.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_231:                              # %vector.body6945
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_231
# %bb.232:                              # %vector.body6952.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_233:                              # %vector.body6952
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_233
	b	.LBB5_573
.LBB5_234:                              # %for.body30.i1276.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 262144
	xvreplgr2vr.w	$xr0, $a3
.LBB5_235:                              # %vector.body6910
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_235
# %bb.236:                              # %vector.body6917.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_237:                              # %vector.body6917
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_237
# %bb.238:                              # %vector.body6924.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3184
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_239:                              # %vector.body6924
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_239
	b	.LBB5_573
.LBB5_240:                              # %vector.body6894.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_241:                              # %vector.body6894
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_241
# %bb.242:                              # %vector.body6901.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_243:                              # %vector.body6901
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_243
	b	.LBB5_573
.LBB5_244:                              # %for.cond52.preheader.i1314.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_245:                              # %for.cond52.preheader.i1314
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_245
# %bb.246:                              # %vector.body6880.preheader
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a2, $a0, $a1
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_247:                              # %vector.body6880
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_247
# %bb.248:                              # %vector.body6887.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_249:                              # %vector.body6887
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_249
	b	.LBB5_573
.LBB5_250:                              # %vector.body6857.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_251:                              # %vector.body6857
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_251
# %bb.252:                              # %for.cond23.preheader.i1350.preheader
	pcalau12i	$a0, %pc_hi20(global_data+902928)
	addi.d	$a0, $a0, %pc_lo12(global_data+902928)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_253:                              # %for.cond23.preheader.i1350
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB5_253
	b	.LBB5_573
.LBB5_254:                              # %vector.body6841.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_255:                              # %vector.body6841
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_255
# %bb.256:                              # %vector.body6848.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_257:                              # %vector.body6848
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_257
	b	.LBB5_573
.LBB5_258:                              # %vector.body6813.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_259:                              # %vector.body6813
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_259
# %bb.260:                              # %for.body30.i1385.preheader
	lu12i.w	$a1, 31
	ori	$a0, $a1, 1040
	add.d	$a0, $fp, $a0
	ori	$a2, $a1, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2100
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s0, 3328
.LBB5_261:                              # %vector.body6820
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_261
# %bb.262:                              # %vector.body6827.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3156
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s0, 3328
.LBB5_263:                              # %vector.body6827
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_263
# %bb.264:                              # %vector.body6834.preheader
	lu12i.w	$a0, 125
	ori	$a0, $a0, 132
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s0, 3328
.LBB5_265:                              # %vector.body6834
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_265
	b	.LBB5_573
.LBB5_266:                              # %vector.body6770.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_267:                              # %vector.body6770
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_267
# %bb.268:                              # %vector.body6777.preheader
	lu12i.w	$a3, 31
	ori	$a4, $a3, 1048
	add.d	$a5, $a0, $a4
	lu12i.w	$a4, 3
	ori	$a6, $a4, 3712
.LBB5_269:                              # %vector.body6777
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a5, -8
	st.w	$a2, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB5_269
# %bb.270:                              # %vector.body6784.preheader
	ori	$a2, $a3, 1052
	add.d	$a2, $a0, $a2
	ori	$a3, $a4, 3712
	lu12i.w	$a4, -264192
	lu32i.d	$a4, 0
.LBB5_271:                              # %vector.body6784
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, -8
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB5_271
# %bb.272:                              # %vector.body6792.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_273:                              # %vector.body6792
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_273
# %bb.274:                              # %vector.body6799.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_275:                              # %vector.body6799
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_275
# %bb.276:                              # %vector.body6806.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_277:                              # %vector.body6806
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_277
	b	.LBB5_573
.LBB5_278:                              # %vector.body6749.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_279:                              # %vector.body6749
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_279
# %bb.280:                              # %vector.body6756.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_281:                              # %vector.body6756
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_281
# %bb.282:                              # %vector.body6763.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_283:                              # %vector.body6763
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_283
	b	.LBB5_573
.LBB5_284:                              # %vector.body6733.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_285:                              # %vector.body6733
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_285
# %bb.286:                              # %vector.body6740.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_287:                              # %vector.body6740
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_287
	b	.LBB5_573
.LBB5_288:                              # %vector.body6717.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_289:                              # %vector.body6717
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_289
# %bb.290:                              # %vector.body6724.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_291:                              # %vector.body6724
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_291
	b	.LBB5_573
.LBB5_292:                              # %vector.body6701.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_293:                              # %vector.body6701
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_293
# %bb.294:                              # %vector.body6708.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_295:                              # %vector.body6708
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_295
	b	.LBB5_573
.LBB5_296:                              # %vector.body6685.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_297:                              # %vector.body6685
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_297
# %bb.298:                              # %vector.body6692.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_299:                              # %vector.body6692
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_299
	b	.LBB5_573
.LBB5_300:                              # %vector.body6669.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_301:                              # %vector.body6669
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_301
# %bb.302:                              # %vector.body6676.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_303:                              # %vector.body6676
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_303
	b	.LBB5_573
.LBB5_304:                              # %vector.body6648.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_305:                              # %vector.body6648
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_305
# %bb.306:                              # %vector.body6655.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_307:                              # %vector.body6655
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_307
# %bb.308:                              # %vector.body6662.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_309:                              # %vector.body6662
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_309
	b	.LBB5_573
.LBB5_310:                              # %for.body30.i1578.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_311:                              # %vector.body6620
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_311
# %bb.312:                              # %vector.body6627.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_313:                              # %vector.body6627
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_313
# %bb.314:                              # %vector.body6634.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_315:                              # %vector.body6634
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_315
# %bb.316:                              # %vector.body6641.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_317:                              # %vector.body6641
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_317
	b	.LBB5_573
.LBB5_318:                              # %vector.body6592.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_319:                              # %vector.body6592
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_319
# %bb.320:                              # %vector.body6599.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_321:                              # %vector.body6599
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_321
# %bb.322:                              # %vector.body6606.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_323:                              # %vector.body6606
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_323
# %bb.324:                              # %vector.body6613.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_325:                              # %vector.body6613
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_325
	b	.LBB5_573
.LBB5_326:                              # %vector.body6564.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_327:                              # %vector.body6564
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_327
# %bb.328:                              # %vector.body6571.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_329:                              # %vector.body6571
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_329
# %bb.330:                              # %vector.body6578.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_331:                              # %vector.body6578
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_331
# %bb.332:                              # %vector.body6585.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_333:                              # %vector.body6585
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_333
	b	.LBB5_573
.LBB5_334:                              # %for.body30.i1680.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_335:                              # %vector.body6550
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_335
# %bb.336:                              # %vector.body6557.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_337:                              # %vector.body6557
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_337
	b	.LBB5_573
.LBB5_338:                              # %for.cond52.preheader.i1698.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_339:                              # %for.cond52.preheader.i1698
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_339
# %bb.340:                              # %for.cond23.preheader.i1710.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_341:                              # %for.cond23.preheader.i1710
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB5_341
	b	.LBB5_573
.LBB5_342:                              # %for.cond52.preheader.i1725.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_343:                              # %for.cond52.preheader.i1725
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_343
# %bb.344:                              # %for.cond52.preheader.i1737.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1296
	add.d	$a0, $a0, $a1
.LBB5_345:                              # %if.end1093
	lu12i.w	$a2, 64
.LBB5_346:                              # %if.end1093
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_347:                              # %for.cond2.preheader.i1749.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_348:                              # %for.cond2.preheader.i1749
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_348
# %bb.349:                              # %for.cond2.preheader.i1764.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_350:                              # %for.cond2.preheader.i1764
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_350
# %bb.351:                              # %for.cond2.preheader.i1779.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_352:                              # %for.cond2.preheader.i1779
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_352
	b	.LBB5_573
.LBB5_353:                              # %for.cond52.preheader.i1794.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_354:                              # %for.cond52.preheader.i1794
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_354
# %bb.355:                              # %for.cond2.preheader.i1806.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_356:                              # %for.cond2.preheader.i1806
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_356
# %bb.357:                              # %for.cond2.preheader.i1821.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_358:                              # %for.cond2.preheader.i1821
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_358
	b	.LBB5_573
.LBB5_359:                              # %vector.body6438.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_360:                              # %vector.body6438
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_360
# %bb.361:                              # %vector.body6445.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_362:                              # %vector.body6445
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa1, $a6
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	frecip.d	$fa1, $fa1
	frecip.d	$fa2, $fa2
	fcvt.s.d	$fa1, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa1, $a2, -4
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_362
# %bb.363:                              # %vector.body6452.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_364:                              # %vector.body6452
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a5, $a3, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	frecip.d	$fa1, $fa1
	frecip.d	$fa2, $fa2
	fcvt.s.d	$fa1, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa1, $a2, -4
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, -2
	addi.w	$a3, $a3, 2
	bnez	$a1, .LBB5_364
# %bb.365:                              # %for.cond52.preheader.i1860.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
.LBB5_366:                              # %for.cond52.preheader.i1860
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_366
# %bb.367:                              # %for.cond23.preheader.i1872.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_368:                              # %for.cond23.preheader.i1872
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1024
	bne	$a1, $a2, .LBB5_368
	b	.LBB5_573
.LBB5_369:                              # %vector.body6410.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_370:                              # %vector.body6410
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_370
# %bb.371:                              # %vector.body6417.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_372:                              # %vector.body6417
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_372
# %bb.373:                              # %vector.body6424.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_374:                              # %vector.body6424
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_374
# %bb.375:                              # %vector.body6431.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_376:                              # %vector.body6431
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_376
	b	.LBB5_573
.LBB5_377:                              # %vector.body6382.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr0, $a4
.LBB5_378:                              # %vector.body6382
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_378
# %bb.379:                              # %vector.body6389.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_380:                              # %vector.body6389
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_380
# %bb.381:                              # %vector.body6396.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_382:                              # %vector.body6396
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_382
# %bb.383:                              # %vector.body6403.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_384:                              # %vector.body6403
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_384
	b	.LBB5_573
.LBB5_385:                              # %for.body30.i1935.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_386:                              # %vector.body6354
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_386
# %bb.387:                              # %vector.body6361.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_388:                              # %vector.body6361
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_388
# %bb.389:                              # %vector.body6368.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_390:                              # %vector.body6368
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_390
# %bb.391:                              # %vector.body6375.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_392:                              # %vector.body6375
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_392
	b	.LBB5_573
.LBB5_393:                              # %for.body30.i1974.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_394:                              # %vector.body6333
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_394
# %bb.395:                              # %vector.body6340.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 219235
	ori	$a3, $a3, 1981
	xvreplgr2vr.w	$xr0, $a3
.LBB5_396:                              # %vector.body6340
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_396
# %bb.397:                              # %vector.body6347.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3184
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_398:                              # %vector.body6347
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_398
	b	.LBB5_573
.LBB5_399:                              # %for.body30.i1998.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_400:                              # %vector.body6305
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_400
# %bb.401:                              # %vector.body6312.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_402:                              # %vector.body6312
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_402
# %bb.403:                              # %vector.body6319.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_404:                              # %vector.body6319
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_404
# %bb.405:                              # %vector.body6326.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_406:                              # %vector.body6326
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_406
	b	.LBB5_573
.LBB5_407:                              # %for.body30.i2037.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_408:                              # %vector.body6291
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_408
# %bb.409:                              # %vector.body6298.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_410:                              # %vector.body6298
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_410
	b	.LBB5_573
.LBB5_411:                              # %vector.body6263.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_412:                              # %vector.body6263
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_412
# %bb.413:                              # %vector.body6270.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr1, $a4
.LBB5_414:                              # %vector.body6270
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_414
# %bb.415:                              # %vector.body6277.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_416:                              # %vector.body6277
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_416
# %bb.417:                              # %vector.body6284.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_418:                              # %vector.body6284
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_418
	b	.LBB5_573
.LBB5_419:                              # %for.body30.i2082.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_420:                              # %vector.body6256
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_420
	b	.LBB5_573
.LBB5_421:                              # %for.body30.i2094.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_422:                              # %vector.body6249
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_422
	b	.LBB5_573
.LBB5_423:                              # %vector.body6228.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_424:                              # %vector.body6228
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_424
# %bb.425:                              # %for.cond52.preheader.i2112.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 262144
	xvreplgr2vr.w	$xr1, $a3
.LBB5_426:                              # %for.cond52.preheader.i2112
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -512
	xvst	$xr1, $a1, -480
	xvst	$xr1, $a1, -448
	xvst	$xr1, $a1, -416
	xvst	$xr1, $a1, -384
	xvst	$xr1, $a1, -352
	xvst	$xr1, $a1, -320
	xvst	$xr1, $a1, -288
	xvst	$xr1, $a1, -256
	xvst	$xr1, $a1, -224
	xvst	$xr1, $a1, -192
	xvst	$xr1, $a1, -160
	xvst	$xr1, $a1, -128
	xvst	$xr1, $a1, -96
	xvst	$xr1, $a1, -64
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	xvst	$xr1, $a1, 32
	xvst	$xr1, $a1, 64
	xvst	$xr1, $a1, 96
	xvst	$xr1, $a1, 128
	xvst	$xr1, $a1, 160
	xvst	$xr1, $a1, 192
	xvst	$xr1, $a1, 224
	xvst	$xr1, $a1, 256
	xvst	$xr1, $a1, 288
	xvst	$xr1, $a1, 320
	xvst	$xr1, $a1, 352
	xvst	$xr1, $a1, 384
	xvst	$xr1, $a1, 416
	xvst	$xr1, $a1, 448
	xvst	$xr1, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_426
# %bb.427:                              # %for.cond52.preheader.i2124.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_428:                              # %for.cond52.preheader.i2124
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_428
	b	.LBB5_573
.LBB5_429:                              # %vector.body6207.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_430:                              # %vector.body6207
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_430
# %bb.431:                              # %for.cond52.preheader.i2142.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 262144
	xvreplgr2vr.w	$xr1, $a3
.LBB5_432:                              # %for.cond52.preheader.i2142
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -512
	xvst	$xr1, $a1, -480
	xvst	$xr1, $a1, -448
	xvst	$xr1, $a1, -416
	xvst	$xr1, $a1, -384
	xvst	$xr1, $a1, -352
	xvst	$xr1, $a1, -320
	xvst	$xr1, $a1, -288
	xvst	$xr1, $a1, -256
	xvst	$xr1, $a1, -224
	xvst	$xr1, $a1, -192
	xvst	$xr1, $a1, -160
	xvst	$xr1, $a1, -128
	xvst	$xr1, $a1, -96
	xvst	$xr1, $a1, -64
	xvst	$xr1, $a1, -32
	xvst	$xr1, $a1, 0
	xvst	$xr1, $a1, 32
	xvst	$xr1, $a1, 64
	xvst	$xr1, $a1, 96
	xvst	$xr1, $a1, 128
	xvst	$xr1, $a1, 160
	xvst	$xr1, $a1, 192
	xvst	$xr1, $a1, 224
	xvst	$xr1, $a1, 256
	xvst	$xr1, $a1, 288
	xvst	$xr1, $a1, 320
	xvst	$xr1, $a1, 352
	xvst	$xr1, $a1, 384
	xvst	$xr1, $a1, 416
	xvst	$xr1, $a1, 448
	xvst	$xr1, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_432
# %bb.433:                              # %for.cond52.preheader.i2154.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_434:                              # %for.cond52.preheader.i2154
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_434
	b	.LBB5_573
.LBB5_435:                              # %vector.body6177.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 4
	ori	$a1, $zero, 2
	lu12i.w	$s1, 7
	ori	$a2, $s1, 3328
.LBB5_436:                              # %vector.body6177
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_436
# %bb.437:                              # %for.body30.i2175.preheader
	lu12i.w	$a1, 31
	ori	$a0, $a1, 1040
	add.d	$a0, $s0, $a0
	ori	$fp, $a1, 1024
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2100
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s1, 3328
.LBB5_438:                              # %vector.body6184
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_438
# %bb.439:                              # %vector.body6191.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3156
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s1, 3328
.LBB5_440:                              # %vector.body6191
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_440
# %bb.441:                              # %for.body30.i2199.preheader
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$a0, $s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1728
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_442:                              # %for.cond2.preheader.i2205
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_442
	b	.LBB5_573
.LBB5_443:                              # %vector.body6145.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_444:                              # %vector.body6145
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_444
# %bb.445:                              # %vector.body6152.preheader
	lu12i.w	$a4, 31
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr2, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 1040
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
.LBB5_446:                              # %vector.body6152
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr3, $xr2, 1
	xvaddi.du	$xr4, $xr1, 1
	xvmul.d	$xr4, $xr4, $xr4
	xvmul.d	$xr3, $xr3, $xr3
	xvpickve2gr.d	$a6, $xr3, 0
	xvinsgr2vr.w	$xr5, $a6, 0
	xvpickve2gr.d	$a6, $xr3, 1
	xvinsgr2vr.w	$xr5, $a6, 1
	xvpickve2gr.d	$a6, $xr3, 2
	xvinsgr2vr.w	$xr5, $a6, 2
	xvpickve2gr.d	$a6, $xr3, 3
	xvinsgr2vr.w	$xr5, $a6, 3
	xvpickve2gr.d	$a6, $xr4, 0
	xvinsgr2vr.w	$xr5, $a6, 4
	xvpickve2gr.d	$a6, $xr4, 1
	xvinsgr2vr.w	$xr5, $a6, 5
	xvpickve2gr.d	$a6, $xr4, 2
	xvinsgr2vr.w	$xr5, $a6, 6
	xvpickve2gr.d	$a6, $xr4, 3
	xvinsgr2vr.w	$xr5, $a6, 7
	xvffint.s.wu	$xr3, $xr5
	xvfrecip.s	$xr3, $xr3
	xvst	$xr3, $a4, 0
	xvaddi.du	$xr2, $xr2, 8
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_446
# %bb.447:                              # %vector.body6161.preheader
	lu12i.w	$a4, 62
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr2, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a4, 2096
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_448:                              # %vector.body6161
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr3, $xr2, 1
	xvaddi.du	$xr4, $xr1, 1
	xvmul.d	$xr4, $xr4, $xr4
	xvmul.d	$xr3, $xr3, $xr3
	xvpickve2gr.d	$a4, $xr3, 0
	xvinsgr2vr.w	$xr5, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	xvinsgr2vr.w	$xr5, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	xvinsgr2vr.w	$xr5, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	xvinsgr2vr.w	$xr5, $a4, 3
	xvpickve2gr.d	$a4, $xr4, 0
	xvinsgr2vr.w	$xr5, $a4, 4
	xvpickve2gr.d	$a4, $xr4, 1
	xvinsgr2vr.w	$xr5, $a4, 5
	xvpickve2gr.d	$a4, $xr4, 2
	xvinsgr2vr.w	$xr5, $a4, 6
	xvpickve2gr.d	$a4, $xr4, 3
	xvinsgr2vr.w	$xr5, $a4, 7
	xvffint.s.wu	$xr3, $xr5
	xvfrecip.s	$xr3, $xr3
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr2, $xr2, 8
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_448
# %bb.449:                              # %vector.body6170.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_450:                              # %vector.body6170
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_450
	b	.LBB5_573
.LBB5_451:                              # %vector.body6124.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_452:                              # %vector.body6124
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_452
# %bb.453:                              # %vector.body6131.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_454:                              # %vector.body6131
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_454
# %bb.455:                              # %vector.body6138.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_456:                              # %vector.body6138
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_456
	b	.LBB5_573
.LBB5_457:                              # %vector.body6089.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_458:                              # %vector.body6089
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_458
# %bb.459:                              # %vector.body6096.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_460:                              # %vector.body6096
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_460
# %bb.461:                              # %vector.body6103.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_462:                              # %vector.body6103
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_462
# %bb.463:                              # %vector.body6110.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_464:                              # %vector.body6110
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_464
# %bb.465:                              # %vector.body6117.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 262144
	xvreplgr2vr.w	$xr0, $a2
.LBB5_466:                              # %vector.body6117
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_466
	b	.LBB5_573
.LBB5_467:                              # %vector.body6054.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_468:                              # %vector.body6054
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_468
# %bb.469:                              # %vector.body6061.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_470:                              # %vector.body6061
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_470
# %bb.471:                              # %vector.body6068.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_472:                              # %vector.body6068
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_472
# %bb.473:                              # %vector.body6075.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr0, $a4
.LBB5_474:                              # %vector.body6075
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_474
# %bb.475:                              # %vector.body6082.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_476:                              # %vector.body6082
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_476
	b	.LBB5_573
.LBB5_477:                              # %for.body30.i2341.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_478:                              # %vector.body6026
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_478
# %bb.479:                              # %vector.body6033.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_480:                              # %vector.body6033
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_480
# %bb.481:                              # %vector.body6040.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_482:                              # %vector.body6040
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_482
# %bb.483:                              # %vector.body6047.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_484:                              # %vector.body6047
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_484
	b	.LBB5_573
.LBB5_485:                              # %for.cond52.preheader.i2377.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_486:                              # %for.cond52.preheader.i2377
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_486
# %bb.487:                              # %for.cond52.preheader.i2389.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 219235
	ori	$a3, $a3, 1981
	xvreplgr2vr.w	$xr0, $a3
.LBB5_488:                              # %for.cond52.preheader.i2389
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_488
# %bb.489:                              # %for.cond52.preheader.i2401.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_490:                              # %for.cond52.preheader.i2401
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_490
	b	.LBB5_573
.LBB5_491:                              # %vector.body5977.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_492:                              # %vector.body5977
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_492
# %bb.493:                              # %vector.body5984.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_494:                              # %vector.body5984
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_494
# %bb.495:                              # %vector.body5991.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_496:                              # %vector.body5991
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_496
# %bb.497:                              # %vector.body5998.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_498:                              # %vector.body5998
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_498
	b	.LBB5_573
.LBB5_499:                              # %vector.body5935.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_500:                              # %vector.body5935
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_500
# %bb.501:                              # %vector.body5942.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_502:                              # %vector.body5942
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_502
# %bb.503:                              # %vector.body5949.preheader
	lu12i.w	$a2, 46
	ori	$a2, $a2, 3632
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_504:                              # %vector.body5949
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_504
# %bb.505:                              # %vector.body5956.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_506:                              # %vector.body5956
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_506
# %bb.507:                              # %vector.body5963.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_508:                              # %vector.body5963
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_508
# %bb.509:                              # %vector.body5970.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_510:                              # %vector.body5970
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_510
	b	.LBB5_573
.LBB5_511:                              # %vector.body5893.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_512:                              # %vector.body5893
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_512
# %bb.513:                              # %vector.body5900.preheader
	addu16i.d	$a2, $a0, 1
	addi.d	$a2, $a2, -1504
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_514:                              # %vector.body5900
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_514
# %bb.515:                              # %vector.body5907.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_516:                              # %vector.body5907
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_516
# %bb.517:                              # %vector.body5914.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_518:                              # %vector.body5914
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_518
# %bb.519:                              # %vector.body5921.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_520:                              # %vector.body5921
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_520
# %bb.521:                              # %vector.body5928.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_522:                              # %vector.body5928
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_522
	b	.LBB5_573
.LBB5_523:                              # %vector.body5851.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_524:                              # %vector.body5851
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_524
# %bb.525:                              # %vector.body5858.preheader
	addu16i.d	$a2, $a0, 1
	addi.d	$a2, $a2, -1504
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_526:                              # %vector.body5858
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_526
# %bb.527:                              # %vector.body5865.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_528:                              # %vector.body5865
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_528
# %bb.529:                              # %vector.body5872.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_530:                              # %vector.body5872
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_530
# %bb.531:                              # %vector.body5879.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_532:                              # %vector.body5879
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_532
# %bb.533:                              # %vector.body5886.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_534:                              # %vector.body5886
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_534
	b	.LBB5_573
.LBB5_535:                              # %vector.body5816.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_536:                              # %vector.body5816
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_536
# %bb.537:                              # %vector.body5823.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_538:                              # %vector.body5823
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_538
# %bb.539:                              # %vector.body5830.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_540:                              # %vector.body5830
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_540
# %bb.541:                              # %vector.body5837.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_542:                              # %vector.body5837
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_542
# %bb.543:                              # %vector.body5844.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_544:                              # %vector.body5844
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_544
	b	.LBB5_573
.LBB5_545:                              # %vector.body5795.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_546:                              # %vector.body5795
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_546
# %bb.547:                              # %vector.body5802.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_548:                              # %vector.body5802
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_548
# %bb.549:                              # %vector.body5809.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_550:                              # %vector.body5809
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_550
	b	.LBB5_573
.LBB5_551:                              # %vector.body5774.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_552:                              # %vector.body5774
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_552
# %bb.553:                              # %vector.body5781.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_554:                              # %vector.body5781
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_554
# %bb.555:                              # %vector.body5788.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_556:                              # %vector.body5788
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_556
	b	.LBB5_573
.LBB5_557:                              # %for.body30.i2668.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_558:                              # %vector.body5760
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_558
# %bb.559:                              # %vector.body5767.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_560:                              # %vector.body5767
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_560
	b	.LBB5_573
.LBB5_561:                              # %for.body30.i2686.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_562:                              # %vector.body5753
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_562
	b	.LBB5_573
.LBB5_563:                              # %for.body30.i2698.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_564:                              # %vector.body5746
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_564
	b	.LBB5_573
.LBB5_565:                              # %vector.body5739.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_566:                              # %vector.body5739
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_566
	b	.LBB5_573
.LBB5_567:                              # %for.cond52.preheader.i2719.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_568:                              # %for.cond52.preheader.i2719
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_568
# %bb.569:                              # %for.cond2.preheader.i2731.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_570:                              # %for.cond2.preheader.i2731
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_570
# %bb.571:                              # %for.cond2.preheader.i2746.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_572:                              # %for.cond2.preheader.i2746
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_572
.LBB5_573:                              # %if.end1093
	move	$a0, $zero
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB5_574:                              # %for.cond52.preheader.i2761.preheader
	pcalau12i	$a0, %pc_hi20(global_data+640192)
	addi.d	$a0, $a0, %pc_lo12(global_data+640192)
	b	.LBB5_345
.LBB5_575:                              # %vector.body5707.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_576:                              # %vector.body5707
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_576
	b	.LBB5_573
.LBB5_577:                              # %vector.body5700.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	ori	$a2, $a2, 8
	xvreplgr2vr.w	$xr0, $a2
.LBB5_578:                              # %vector.body5700
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_578
	b	.LBB5_573
.LBB5_579:                              # %vector.body5686.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_580:                              # %vector.body5686
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_580
# %bb.581:                              # %vector.body5693.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_582:                              # %vector.body5693
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_582
	b	.LBB5_573
.LBB5_583:                              # %vector.body5679.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_584:                              # %vector.body5679
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_584
	b	.LBB5_573
.LBB5_585:                              # %vector.body5672.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_586:                              # %vector.body5672
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_586
	b	.LBB5_573
.LBB5_587:                              # %vector.body5665.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_588:                              # %vector.body5665
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_588
	b	.LBB5_573
.LBB5_589:                              # %vector.body5658.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_590:                              # %vector.body5658
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_590
	b	.LBB5_607
.LBB5_591:                              # %for.body30.i2854.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 31
	ori	$s0, $s1, 1024
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 1040
	add.d	$a0, $fp, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2100
	add.d	$a1, $fp, $a0
	ori	$a2, $zero, 2
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3328
.LBB5_592:                              # %vector.body5637
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_592
# %bb.593:                              # %vector.body5644.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_594:                              # %vector.body5644
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_594
# %bb.595:                              # %vector.body5651.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_596:                              # %vector.body5651
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_596
	b	.LBB5_573
.LBB5_597:                              # %for.cond2.preheader.i2893.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_598:                              # %for.cond2.preheader.i2893
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_598
# %bb.599:                              # %set2d.exit2907
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1212
	b	.LBB5_630
.LBB5_600:                              # %vector.body5621.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_601:                              # %vector.body5621
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_601
	b	.LBB5_573
.LBB5_602:                              # %vector.body5612.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_603:                              # %vector.body5612
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_603
# %bb.604:                              # %for.body30.i2925.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	b	.LBB5_610
.LBB5_605:                              # %vector.body5605.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_606:                              # %vector.body5605
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_606
.LBB5_607:                              # %set1d.exit2853
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1020
	lu12i.w	$a2, -262144
	b	.LBB5_687
.LBB5_608:                              # %vector.body5598.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_609:                              # %vector.body5598
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_609
.LBB5_610:                              # %for.body30.i2946.preheader
	lu12i.w	$a1, 31
	ori	$a2, $a1, 1040
	add.d	$a0, $a0, $a2
	ori	$a2, $a1, 1024
	b	.LBB5_346
.LBB5_611:                              # %vector.body5591.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 32
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_612:                              # %vector.body5591
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_612
# %bb.613:                              # %for.body30.i2958.preheader
	lu12i.w	$a1, 31
	ori	$a0, $a1, 1040
	add.d	$a0, $s0, $a0
	ori	$fp, $a1, 1024
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2096
	add.d	$a0, $s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_614:                              # %vector.body5556.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_615:                              # %vector.body5556
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_615
# %bb.616:                              # %vector.body5563.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_617:                              # %vector.body5563
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_617
# %bb.618:                              # %vector.body5570.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_619:                              # %vector.body5570
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_619
# %bb.620:                              # %vector.body5577.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_621:                              # %vector.body5577
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_621
# %bb.622:                              # %vector.body5584.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_623:                              # %vector.body5584
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_623
	b	.LBB5_573
.LBB5_624:                              # %vector.body5549.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_625:                              # %vector.body5549
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_625
# %bb.626:                              # %set1d.exit3017
	lu12i.w	$a1, 31
	b	.LBB5_686
.LBB5_627:                              # %vector.body5540.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_628:                              # %vector.body5540
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_628
# %bb.629:                              # %set1d.exit3025
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1020
.LBB5_630:                              # %if.end1093
	lu12i.w	$a2, 262144
	stx.w	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_631:                              # %for.body30.i3026.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1044
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_632:                              # %vector.body5533
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_632
	b	.LBB5_573
.LBB5_633:                              # %vector.body5519.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_634:                              # %vector.body5519
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_634
# %bb.635:                              # %vector.body5526.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_636:                              # %vector.body5526
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_636
	b	.LBB5_573
.LBB5_637:                              # %for.cond2.preheader.i3059.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_638:                              # %for.cond2.preheader.i3059
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_638
# %bb.639:                              # %for.cond52.preheader.i3074.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_640:                              # %for.cond52.preheader.i3074
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1024
	bnez	$a1, .LBB5_640
	b	.LBB5_573
.LBB5_641:                              # %vector.body5489.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu12i.w	$a1, 260096
	xvreplgr2vr.w	$xr0, $a1
.LBB5_642:                              # %vector.body5489
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_642
# %bb.643:                              # %vector.body5496.preheader
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1072
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_644:                              # %vector.body5496
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -16
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_644
	b	.LBB5_653
.LBB5_645:                              # %vector.body5475.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_646:                              # %vector.body5475
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_646
# %bb.647:                              # %vector.body5482.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_648:                              # %vector.body5482
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_648
	b	.LBB5_573
.LBB5_649:                              # %vector.body5461.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu12i.w	$a1, 260096
	xvreplgr2vr.w	$xr0, $a1
.LBB5_650:                              # %vector.body5461
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_650
# %bb.651:                              # %vector.body5468.preheader
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1072
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_652:                              # %vector.body5468
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -16
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_652
.LBB5_653:                              # %set1d.exit3097
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2096
	stx.w	$a1, $a0, $a2
	b	.LBB5_573
.LBB5_654:                              # %vector.body5440.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_655:                              # %vector.body5440
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_655
# %bb.656:                              # %vector.body5447.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_657:                              # %vector.body5447
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_657
# %bb.658:                              # %vector.body5454.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_659:                              # %vector.body5454
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_659
	b	.LBB5_573
.LBB5_660:                              # %vector.body5419.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_661:                              # %vector.body5419
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_661
# %bb.662:                              # %vector.body5426.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_663:                              # %vector.body5426
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_663
# %bb.664:                              # %vector.body5433.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_665:                              # %vector.body5433
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_665
	b	.LBB5_573
.LBB5_666:                              # %for.body30.i3176.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_667:                              # %vector.body5391
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_667
# %bb.668:                              # %vector.body5398.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_669:                              # %vector.body5398
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_669
# %bb.670:                              # %vector.body5405.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_671:                              # %vector.body5405
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_671
# %bb.672:                              # %vector.body5412.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_673:                              # %vector.body5412
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_673
	b	.LBB5_573
.LBB5_674:                              # %for.cond52.preheader.i3212.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_675:                              # %for.cond52.preheader.i3212
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1024
	bnez	$a2, .LBB5_675
# %bb.676:                              # %for.cond2.preheader.i3224.preheader
	lu12i.w	$a1, 220
	ori	$a1, $a1, 1808
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_677:                              # %for.cond2.preheader.i3224
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a1, -512
	xvst	$xr0, $a1, -480
	xvst	$xr0, $a1, -448
	xvst	$xr0, $a1, -416
	xvst	$xr0, $a1, -384
	xvst	$xr0, $a1, -352
	xvst	$xr0, $a1, -320
	xvst	$xr0, $a1, -288
	xvst	$xr0, $a1, -256
	xvst	$xr0, $a1, -224
	xvst	$xr0, $a1, -192
	xvst	$xr0, $a1, -160
	xvst	$xr0, $a1, -128
	xvst	$xr0, $a1, -96
	xvst	$xr0, $a1, -64
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 32
	xvst	$xr0, $a1, 64
	xvst	$xr0, $a1, 96
	xvst	$xr0, $a1, 128
	xvst	$xr0, $a1, 160
	xvst	$xr0, $a1, 192
	xvst	$xr0, $a1, 224
	xvst	$xr0, $a1, 256
	xvst	$xr0, $a1, 288
	xvst	$xr0, $a1, 320
	xvst	$xr0, $a1, 352
	xvst	$xr0, $a1, 384
	xvst	$xr0, $a1, 416
	xvst	$xr0, $a1, 448
	xvst	$xr0, $a1, 480
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1024
	bnez	$a3, .LBB5_677
# %bb.678:                              # %for.cond2.preheader.i3239.preheader
	lu12i.w	$a1, 284
	ori	$a1, $a1, 1888
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_679:                              # %for.cond2.preheader.i3239
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_679
	b	.LBB5_573
.LBB5_680:                              # %vector.body5345.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_681:                              # %vector.body5345
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_681
# %bb.682:                              # %vector.body5352.preheader
	lu12i.w	$a1, 31
	ori	$a3, $a1, 1044
	add.d	$a3, $a0, $a3
	ori	$a4, $zero, 2
	ori	$a5, $a2, 3328
.LBB5_683:                              # %vector.body5352
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a7, $a4, -1
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa0, $a7
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a6
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a3, -4
	fst.s	$fa1, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, -2
	addi.w	$a4, $a4, 2
	bnez	$a5, .LBB5_683
# %bb.684:                              # %vector.body5359.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2100
	add.d	$a3, $a0, $a3
	ori	$a4, $zero, 2
	ori	$a2, $a2, 3328
.LBB5_685:                              # %vector.body5359
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a6, $a4, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a3, -4
	fst.s	$fa1, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -2
	addi.w	$a4, $a4, 2
	bnez	$a2, .LBB5_685
.LBB5_686:                              # %set1d.exit3277
	ori	$a1, $a1, 1020
	lu12i.w	$a2, -264192
.LBB5_687:                              # %if.end1093
	lu32i.d	$a2, 0
	stx.w	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_688:                              # %vector.body5329.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a1, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
.LBB5_689:                              # %vector.body5329
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a3, $xr2, 0
	xvinsgr2vr.w	$xr4, $a3, 0
	xvpickve2gr.d	$a3, $xr2, 1
	xvinsgr2vr.w	$xr4, $a3, 1
	xvpickve2gr.d	$a3, $xr2, 2
	xvinsgr2vr.w	$xr4, $a3, 2
	xvpickve2gr.d	$a3, $xr2, 3
	xvinsgr2vr.w	$xr4, $a3, 3
	xvpickve2gr.d	$a3, $xr3, 0
	xvinsgr2vr.w	$xr4, $a3, 4
	xvpickve2gr.d	$a3, $xr3, 1
	xvinsgr2vr.w	$xr4, $a3, 5
	xvpickve2gr.d	$a3, $xr3, 2
	xvinsgr2vr.w	$xr4, $a3, 6
	xvpickve2gr.d	$a3, $xr3, 3
	xvinsgr2vr.w	$xr4, $a3, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a1, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_689
# %bb.690:                              # %vector.body5338.preheader
	pcalau12i	$a1, %pc_hi20(global_data+128048)
	addi.d	$a1, $a1, %pc_lo12(global_data+128048)
	ori	$a0, $a0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_691:                              # %vector.body5338
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_691
	b	.LBB5_573
.LBB5_692:                              # %vector.body5313.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_693:                              # %vector.body5313
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_693
# %bb.694:                              # %vector.body5320.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	ori	$a1, $a1, 3328
.LBB5_695:                              # %vector.body5320
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_695
	b	.LBB5_573
.LBB5_696:                              # %for.body30.i3306.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 31
	ori	$a2, $a1, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_697:                              # %vector.body5304
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_697
	b	.LBB5_573
.LBB5_698:                              # %vector.body5288.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_699:                              # %vector.body5288
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_699
# %bb.700:                              # %vector.body5295.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	ori	$a1, $a1, 3328
.LBB5_701:                              # %vector.body5295
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_701
	b	.LBB5_573
.LBB5_702:                              # %vector.body5272.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_703:                              # %vector.body5272
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_703
# %bb.704:                              # %vector.body5279.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_705:                              # %vector.body5279
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_705
	b	.LBB5_573
.LBB5_706:                              # %vector.body5256.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_707:                              # %vector.body5256
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_707
# %bb.708:                              # %vector.body5263.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_709:                              # %vector.body5263
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_709
	b	.LBB5_573
.LBB5_710:                              # %vector.body5221.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
.LBB5_711:                              # %vector.body5221
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_711
# %bb.712:                              # %vector.body5228.preheader
	lu12i.w	$a1, 31
	ori	$a0, $a1, 1044
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 2
	ori	$a3, $s0, 3328
.LBB5_713:                              # %vector.body5228
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_713
# %bb.714:                              # %vector.body5235.preheader
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2100
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 2
	ori	$a3, $s0, 3328
.LBB5_715:                              # %vector.body5235
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_715
# %bb.716:                              # %vector.body5242.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3184
	add.d	$a0, $fp, $a0
	ori	$a2, $s0, 3328
	lu12i.w	$a3, -264192
	xvreplgr2vr.w	$xr0, $a3
.LBB5_717:                              # %vector.body5242
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_717
# %bb.718:                              # %for.body30.i3392.preheader
	lu12i.w	$a0, 104
	ori	$a0, $a0, 760
	add.d	$a0, $fp, $a0
	ori	$a2, $a1, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 114
	ori	$a0, $a0, 2500
	add.d	$a0, $fp, $a0
	ori	$a1, $s0, 3328
.LBB5_719:                              # %vector.body5249
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_719
	b	.LBB5_573
.LBB5_720:                              # %vector.body5186.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_721:                              # %vector.body5186
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_721
# %bb.722:                              # %vector.body5193.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_723:                              # %vector.body5193
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_723
# %bb.724:                              # %vector.body5200.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_725:                              # %vector.body5200
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_725
# %bb.726:                              # %vector.body5207.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_727:                              # %vector.body5207
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_727
# %bb.728:                              # %vector.body5214.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_729:                              # %vector.body5214
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_729
	b	.LBB5_573
.LBB5_730:                              # %vector.body5165.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_731:                              # %vector.body5165
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_731
# %bb.732:                              # %vector.body5172.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_733:                              # %vector.body5172
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_733
# %bb.734:                              # %vector.body5179.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_735:                              # %vector.body5179
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_735
	b	.LBB5_573
.LBB5_736:                              # %vector.body5151.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a2, $a0, $a1
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_737:                              # %vector.body5151
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_737
# %bb.738:                              # %vector.body5158.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_739:                              # %vector.body5158
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_739
	b	.LBB5_573
.LBB5_740:                              # %for.body30.i3488.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_741:                              # %vector.body5137
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_741
# %bb.742:                              # %vector.body5144.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
	lu12i.w	$a2, 219235
	ori	$a2, $a2, 1981
	xvreplgr2vr.w	$xr0, $a2
.LBB5_743:                              # %vector.body5144
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_743
	b	.LBB5_573
.LBB5_744:                              # %for.body30.i3506.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_745:                              # %vector.body5128
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_745
	b	.LBB5_573
.LBB5_746:                              # %vector.body5093.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_747:                              # %vector.body5093
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_747
# %bb.748:                              # %vector.body5100.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_749:                              # %vector.body5100
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_749
# %bb.750:                              # %vector.body5107.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_751:                              # %vector.body5107
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_751
# %bb.752:                              # %vector.body5114.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_753:                              # %vector.body5114
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_753
# %bb.754:                              # %vector.body5121.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_755:                              # %vector.body5121
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_755
	b	.LBB5_573
.LBB5_756:                              # %vector.body5065.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_757:                              # %vector.body5065
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_757
# %bb.758:                              # %vector.body5072.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_759:                              # %vector.body5072
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_759
# %bb.760:                              # %vector.body5079.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_761:                              # %vector.body5079
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_761
# %bb.762:                              # %vector.body5086.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_763:                              # %vector.body5086
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_763
	b	.LBB5_573
.LBB5_764:                              # %vector.body5044.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_765:                              # %vector.body5044
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_765
# %bb.766:                              # %vector.body5051.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_767:                              # %vector.body5051
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_767
# %bb.768:                              # %vector.body5058.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_769:                              # %vector.body5058
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_769
	b	.LBB5_573
.LBB5_770:                              # %for.body30.i3613.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_771:                              # %vector.body5023
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_771
# %bb.772:                              # %vector.body5030.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_773:                              # %vector.body5030
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_773
# %bb.774:                              # %vector.body5037.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_775:                              # %vector.body5037
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_775
	b	.LBB5_573
.LBB5_776:                              # %vector.body5009.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_777:                              # %vector.body5009
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_777
# %bb.778:                              # %vector.body5016.preheader
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 2
	ori	$a2, $a2, 3328
.LBB5_779:                              # %vector.body5016
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_779
	b	.LBB5_573
.LBB5_780:                              # %for.body30.i3658.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_781:                              # %vector.body4993
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_781
# %bb.782:                              # %vector.body5000.preheader
	lu12i.w	$a0, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a2, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_1)
	ori	$a0, $a0, 2096
	add.d	$a0, $fp, $a0
	ori	$a1, $a1, 3328
.LBB5_783:                              # %vector.body5000
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_783
	b	.LBB5_573
.LBB5_784:                              # %for.body30.i3678.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_785:                              # %vector.body4972
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_785
# %bb.786:                              # %vector.body4979.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_787:                              # %vector.body4979
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_787
# %bb.788:                              # %vector.body4986.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_789:                              # %vector.body4986
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_789
	b	.LBB5_573
.LBB5_790:                              # %vector.body4958.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_791:                              # %vector.body4958
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_791
# %bb.792:                              # %vector.body4965.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_793:                              # %vector.body4965
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_793
	b	.LBB5_573
.LBB5_794:                              # %vector.body4942.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_795:                              # %vector.body4942
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_795
# %bb.796:                              # %for.cond2.preheader.i3735.preheader
	lu12i.w	$a1, 156
	ori	$a1, $a1, 1728
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_797:                              # %for.cond2.preheader.i3735
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a0, -512
	xvst	$xr0, $a0, -480
	xvst	$xr0, $a0, -448
	xvst	$xr0, $a0, -416
	xvst	$xr0, $a0, -384
	xvst	$xr0, $a0, -352
	xvst	$xr0, $a0, -320
	xvst	$xr0, $a0, -288
	xvst	$xr0, $a0, -256
	xvst	$xr0, $a0, -224
	xvst	$xr0, $a0, -192
	xvst	$xr0, $a0, -160
	xvst	$xr0, $a0, -128
	xvst	$xr0, $a0, -96
	xvst	$xr0, $a0, -64
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 64
	xvst	$xr0, $a0, 96
	xvst	$xr0, $a0, 128
	xvst	$xr0, $a0, 160
	xvst	$xr0, $a0, 192
	xvst	$xr0, $a0, 224
	xvst	$xr0, $a0, 256
	xvst	$xr0, $a0, 288
	xvst	$xr0, $a0, 320
	xvst	$xr0, $a0, 352
	xvst	$xr0, $a0, 384
	xvst	$xr0, $a0, 416
	xvst	$xr0, $a0, 448
	xvst	$xr0, $a0, 480
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1024
	bnez	$a2, .LBB5_797
	b	.LBB5_573
.LBB5_798:                              # %for.body30.i3750.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1072
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_799:                              # %vector.body4921
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_799
# %bb.800:                              # %vector.body4928.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_801:                              # %vector.body4928
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	addi.d	$a5, $a2, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, -2
	addi.w	$a2, $a2, 2
	bnez	$a3, .LBB5_801
# %bb.802:                              # %vector.body4935.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_803:                              # %vector.body4935
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a1, -4
	fst.s	$fa1, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -2
	addi.w	$a2, $a2, 2
	bnez	$a0, .LBB5_803
	b	.LBB5_573
.LBB5_804:                              # %vector.body4900.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_805:                              # %vector.body4900
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_805
# %bb.806:                              # %vector.body4907.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_807:                              # %vector.body4907
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_807
# %bb.808:                              # %vector.body4914.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_809:                              # %vector.body4914
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_809
	b	.LBB5_573
.LBB5_810:                              # %for.body30.i3804.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_811:                              # %vector.body4891
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_811
	b	.LBB5_573
.LBB5_812:                              # %for.body30.i3818.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_813:                              # %vector.body4882
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_813
	b	.LBB5_573
.LBB5_814:                              # %for.body30.i3832.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_815:                              # %vector.body4873
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_815
	b	.LBB5_573
.LBB5_816:                              # %for.body30.i3846.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_817:                              # %vector.body4864
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_817
	b	.LBB5_573
.LBB5_818:                              # %for.body30.i3860.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 31
	ori	$a2, $s0, 1024
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 1040
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI5_1)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_819:                              # %vector.body4855
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_819
	b	.LBB5_573
.LBB5_820:                              # %vector.body4841.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_821:                              # %vector.body4841
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_821
# %bb.822:                              # %vector.body4848.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_823:                              # %vector.body4848
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_823
	b	.LBB5_573
.LBB5_824:                              # %vector.body4820.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_825:                              # %vector.body4820
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_825
# %bb.826:                              # %vector.body4827.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_827:                              # %vector.body4827
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_827
# %bb.828:                              # %vector.body4834.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_829:                              # %vector.body4834
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_829
	b	.LBB5_573
.LBB5_830:                              # %vector.body4804.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_831:                              # %vector.body4804
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_831
# %bb.832:                              # %vector.body4811.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_833:                              # %vector.body4811
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a2, $xr2, 0
	xvinsgr2vr.w	$xr4, $a2, 0
	xvpickve2gr.d	$a2, $xr2, 1
	xvinsgr2vr.w	$xr4, $a2, 1
	xvpickve2gr.d	$a2, $xr2, 2
	xvinsgr2vr.w	$xr4, $a2, 2
	xvpickve2gr.d	$a2, $xr2, 3
	xvinsgr2vr.w	$xr4, $a2, 3
	xvpickve2gr.d	$a2, $xr3, 0
	xvinsgr2vr.w	$xr4, $a2, 4
	xvpickve2gr.d	$a2, $xr3, 1
	xvinsgr2vr.w	$xr4, $a2, 5
	xvpickve2gr.d	$a2, $xr3, 2
	xvinsgr2vr.w	$xr4, $a2, 6
	xvpickve2gr.d	$a2, $xr3, 3
	xvinsgr2vr.w	$xr4, $a2, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a0, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_833
	b	.LBB5_573
.LBB5_834:                              # %vector.body4783.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a1, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
.LBB5_835:                              # %vector.body4783
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr2, $xr1, 1
	xvaddi.du	$xr3, $xr0, 1
	xvmul.d	$xr3, $xr3, $xr3
	xvmul.d	$xr2, $xr2, $xr2
	xvpickve2gr.d	$a3, $xr2, 0
	xvinsgr2vr.w	$xr4, $a3, 0
	xvpickve2gr.d	$a3, $xr2, 1
	xvinsgr2vr.w	$xr4, $a3, 1
	xvpickve2gr.d	$a3, $xr2, 2
	xvinsgr2vr.w	$xr4, $a3, 2
	xvpickve2gr.d	$a3, $xr2, 3
	xvinsgr2vr.w	$xr4, $a3, 3
	xvpickve2gr.d	$a3, $xr3, 0
	xvinsgr2vr.w	$xr4, $a3, 4
	xvpickve2gr.d	$a3, $xr3, 1
	xvinsgr2vr.w	$xr4, $a3, 5
	xvpickve2gr.d	$a3, $xr3, 2
	xvinsgr2vr.w	$xr4, $a3, 6
	xvpickve2gr.d	$a3, $xr3, 3
	xvinsgr2vr.w	$xr4, $a3, 7
	xvffint.s.wu	$xr2, $xr4
	xvfrecip.s	$xr2, $xr2
	xvst	$xr2, $a1, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_835
# %bb.836:                              # %vector.body4790.preheader
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a1, $a2
	ori	$a3, $a0, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_837:                              # %vector.body4790
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_837
# %bb.838:                              # %vector.body4797.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a1, $a1, $a2
	ori	$a0, $a0, 3328
	lu12i.w	$a2, -264192
	xvreplgr2vr.w	$xr0, $a2
.LBB5_839:                              # %vector.body4797
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_839
	b	.LBB5_573
.LBB5_840:                              # %vector.body4762.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_841:                              # %vector.body4762
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_841
# %bb.842:                              # %vector.body4769.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 262144
	xvreplgr2vr.w	$xr0, $a4
.LBB5_843:                              # %vector.body4769
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_843
# %bb.844:                              # %vector.body4776.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 258048
	xvreplgr2vr.w	$xr0, $a2
.LBB5_845:                              # %vector.body4776
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_845
	b	.LBB5_573
.LBB5_846:                              # %vector.body4755.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_847:                              # %vector.body4755
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	addi.d	$a4, $a1, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_847
	b	.LBB5_573
.LBB5_848:                              # %vector.body4741.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_849:                              # %vector.body4741
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	addi.d	$a6, $a3, -1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a2, -4
	fst.s	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a4, -2
	addi.w	$a3, $a3, 2
	bnez	$a4, .LBB5_849
# %bb.850:                              # %vector.body4748.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_851:                              # %vector.body4748
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a4, $a2, -1
	bstrpick.d	$a4, $a4, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $a3
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa0, $fa0
	frecip.d	$fa1, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa0, $a0, -4
	fst.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -2
	addi.w	$a2, $a2, 2
	bnez	$a1, .LBB5_851
	b	.LBB5_573
.Lfunc_end5:
	.size	init, .Lfunc_end5-init
                                        # -- End function
	.globl	s251                            # -- Begin function s251
	.p2align	5
	.type	s251,@function
s251:                                   # @s251
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_5
# %bb.1:                                # %vector.ph.preheader
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 93
	ori	$s8, $a0, 3184
	lu12i.w	$a1, 62
	ori	$s0, $a1, 2096
	lu12i.w	$a1, 31
	ori	$s1, $a1, 1040
	add.d	$a1, $fp, $s1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.d	$a1, $fp, $s0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $a0, 3152
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB6_2:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_3:                                # %vector.body
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a0, $s8
	add.d	$a3, $a0, $s0
	add.d	$a4, $a0, $s1
	xvldx	$xr0, $a0, $s1
	xvld	$xr1, $a4, 32
	xvldx	$xr2, $a0, $s0
	xvld	$xr3, $a3, 32
	xvld	$xr4, $a2, -32
	xvldx	$xr5, $a0, $s8
	xvfmadd.s	$xr0, $xr2, $xr4, $xr0
	xvfmadd.s	$xr1, $xr3, $xr5, $xr1
	xvfmul.s	$xr0, $xr0, $xr0
	xvfmul.s	$xr1, $xr1, $xr1
	xvst	$xr0, $a0, 0
	xvst	$xr1, $a0, 32
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB6_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	slli.w	$a0, $a0, 2
	blt	$s7, $a0, .LBB6_2
.LBB6_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB6_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB6_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end6:
	.size	s251, .Lfunc_end6-s251
                                        # -- End function
	.globl	s1251                           # -- Begin function s1251
	.p2align	5
	.type	s1251,@function
s1251:                                  # @s1251
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_5
# %bb.1:                                # %vector.ph.preheader
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 31
	ori	$s8, $a0, 1040
	lu12i.w	$a0, 62
	ori	$s0, $a0, 2096
	lu12i.w	$a0, 93
	ori	$s1, $a0, 3152
	lu12i.w	$a0, 125
	ori	$s2, $a0, 128
	add.d	$a0, $fp, $s8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$s3, $fp, $s2
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB7_2:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_3:                                # %vector.body
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr0, $a0, $s8
	xvldx	$xr1, $a0, $s0
	xvld	$xr2, $a0, 0
	xvldx	$xr3, $a0, $s1
	xvldx	$xr4, $a0, $s2
	xvfadd.s	$xr0, $xr0, $xr1
	xvfadd.s	$xr1, $xr2, $xr3
	xvstx	$xr1, $a0, $s8
	xvfmul.s	$xr0, $xr0, $xr4
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB7_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	slli.w	$a0, $a0, 2
	blt	$s7, $a0, .LBB7_2
.LBB7_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB7_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB7_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end7:
	.size	s1251, .Lfunc_end7-s1251
                                        # -- End function
	.globl	s2251                           # -- Begin function s2251
	.p2align	5
	.type	s2251,@function
s2251:                                  # @s2251
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 125
	ori	$s8, $a0, 128
	lu12i.w	$a0, 31
	ori	$s0, $a0, 1040
	lu12i.w	$a0, 62
	ori	$s1, $a0, 2096
	lu12i.w	$a0, 93
	ori	$s2, $a0, 3152
	add.d	$a0, $fp, $s0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$s3, $fp, $s8
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	.p2align	4, , 16
.LBB8_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	.p2align	4, , 16
.LBB8_3:                                # %for.body4
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $a1, $s8
	fldx.s	$fa2, $a1, $s0
	fldx.s	$fa3, $a1, $s1
	fldx.s	$fa4, $a1, $s2
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa2, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fstx.s	$fa1, $a1, $s0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB8_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB8_2
.LBB8_5:                                # %for.cond.cleanup
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB8_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $fp, 0
	fadd.s	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB8_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end8:
	.size	s2251, .Lfunc_end8-s2251
                                        # -- End function
	.globl	s3251                           # -- Begin function s3251
	.p2align	5
	.type	s3251,@function
s3251:                                  # @s3251
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 192                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB9_5
# %bb.1:                                # %vector.ph.preheader
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3320
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a1, 31
	ori	$s7, $a1, 1040
	lu12i.w	$a2, 62
	ori	$s2, $a2, 2096
	lu12i.w	$a3, 125
	ori	$s5, $a3, 128
	lu12i.w	$a4, 93
	ori	$s8, $a4, 3152
	ori	$a0, $a2, 2032
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $a4, 3088
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $a1, 996
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$s1, 156
	ori	$a0, $s1, 1120
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $a3, 48
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a2, 2036
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $a4, 3092
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $a1, 1000
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $s1, 1124
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $a3, 52
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s3, $a2, 2040
	ori	$a0, $a4, 3096
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $a1, 1004
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $s1, 1128
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$a0, $a3, 56
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s0, $a2, 2044
	ori	$a0, $a4, 3100
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $a1, 1008
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $s1, 1132
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $a3, 60
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s6, $a2, 2048
	ori	$a0, $a4, 3104
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB9_2:                                # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	fld.s	$fa0, $fp, 0
	xvinsve0.w	$xr0, $xr0, 7
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	.p2align	4, , 16
.LBB9_3:                                # %vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr1, $a1, $s7
	xvldx	$xr2, $a1, $s2
	xvpermi.d	$xr3, $xr0, 78
	xvfadd.s	$xr0, $xr1, $xr2
	xvpickve2gr.w	$a2, $xr0, 0
	xvrepl128vei.w	$xr1, $xr3, 3
	xvinsgr2vr.w	$xr1, $a2, 1
	xvpickve2gr.w	$a2, $xr0, 1
	xvinsgr2vr.w	$xr1, $a2, 2
	xvpickve2gr.w	$a2, $xr0, 2
	xvinsgr2vr.w	$xr1, $a2, 3
	xvpickve2gr.w	$a2, $xr0, 3
	xvinsgr2vr.w	$xr1, $a2, 4
	xvpickve2gr.w	$a2, $xr0, 4
	xvinsgr2vr.w	$xr1, $a2, 5
	xvpickve2gr.w	$a2, $xr0, 5
	xvinsgr2vr.w	$xr1, $a2, 6
	xvldx	$xr3, $a1, $s5
	xvpickve2gr.w	$a2, $xr0, 6
	xvinsgr2vr.w	$xr1, $a2, 7
	xvst	$xr0, $a1, 4
	xvfmul.s	$xr2, $xr2, $xr3
	xvstx	$xr2, $a1, $s7
	xvfmul.s	$xr1, $xr3, $xr1
	xvstx	$xr1, $a1, $s8
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB9_3
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB9_2 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa1, $fp, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa2, $fp, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fldx.s	$fa3, $fp, $a0
	xvpickve2gr.w	$a0, $xr0, 7
	movgr2fr.w	$fa0, $a0
	fadd.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa2, $fa3
	fstx.s	$fa2, $fp, $a1
	fmul.s	$fa0, $fa3, $fa0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fldx.s	$fa2, $fp, $a1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	fldx.s	$fa3, $fp, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	fldx.s	$fa4, $fp, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	fstx.s	$fa1, $fp, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	fstx.s	$fa0, $fp, $a0
	fadd.s	$fa0, $fa2, $fa3
	fmul.s	$fa2, $fa3, $fa4
	fstx.s	$fa2, $fp, $a1
	fmul.s	$fa1, $fa4, $fa1
	fldx.s	$fa2, $fp, $s3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	fldx.s	$fa3, $fp, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	fldx.s	$fa4, $fp, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	fstx.s	$fa1, $fp, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	fstx.s	$fa0, $fp, $a0
	fadd.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa3, $fa4
	fstx.s	$fa2, $fp, $s3
	fmul.s	$fa0, $fa4, $fa0
	fldx.s	$fa2, $fp, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	fldx.s	$fa3, $fp, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fstx.s	$fa0, $fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	fstx.s	$fa1, $fp, $a0
	fadd.s	$fa2, $fa2, $fa3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fstx.s	$fa2, $fp, $a0
	fmul.s	$fa3, $fa3, $fa0
	fstx.s	$fa3, $fp, $s0
	fmul.s	$fa0, $fa0, $fa1
	fldx.s	$fa1, $fp, $s6
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fldx.s	$fa3, $fp, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	fstx.s	$fa0, $fp, $a0
	ori	$a0, $s1, 1136
	fldx.s	$fa0, $fp, $a0
	fadd.s	$fa1, $fa1, $fa3
	lu12i.w	$a3, 31
	ori	$a0, $a3, 1012
	fstx.s	$fa1, $fp, $a0
	fmul.s	$fa3, $fa3, $fa0
	fstx.s	$fa3, $fp, $s6
	fmul.s	$fa0, $fa0, $fa2
	lu12i.w	$a5, 125
	ori	$a0, $a5, 64
	lu12i.w	$a4, 62
	ori	$a1, $a4, 2052
	fldx.s	$fa2, $fp, $a1
	lu12i.w	$a6, 93
	ori	$a2, $a6, 3108
	fldx.s	$fa3, $fp, $a2
	fstx.s	$fa0, $fp, $a0
	ori	$a0, $s1, 1140
	fldx.s	$fa0, $fp, $a0
	fadd.s	$fa2, $fa2, $fa3
	ori	$a0, $a3, 1016
	fstx.s	$fa2, $fp, $a0
	fmul.s	$fa3, $fa3, $fa0
	fstx.s	$fa3, $fp, $a1
	fmul.s	$fa0, $fa0, $fa1
	ori	$a0, $a5, 68
	ori	$a1, $a4, 2056
	fldx.s	$fa1, $fp, $a1
	ori	$a2, $a6, 3112
	fldx.s	$fa3, $fp, $a2
	fstx.s	$fa0, $fp, $a0
	ori	$a0, $s1, 1144
	fldx.s	$fa0, $fp, $a0
	fadd.s	$fa1, $fa1, $fa3
	ori	$a0, $a3, 1020
	fstx.s	$fa1, $fp, $a0
	fmul.s	$fa1, $fa3, $fa0
	fstx.s	$fa1, $fp, $a1
	fmul.s	$fa0, $fa0, $fa2
	ori	$a0, $a5, 72
	fstx.s	$fa0, $fp, $a0
	add.d	$a1, $fp, $s7
	add.d	$a2, $fp, $s2
	add.d	$a3, $fp, $s8
	add.d	$a4, $fp, $s5
	ori	$a0, $s1, 1216
	add.d	$a5, $fp, $a0
	move	$a0, $fp
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s4, $s4, 1
	blt	$s4, $a0, .LBB9_2
.LBB9_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB9_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB9_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 192                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end9:
	.size	s3251, .Lfunc_end9-s3251
                                        # -- End function
	.globl	s252                            # -- Begin function s252
	.p2align	5
	.type	s252,@function
s252:                                   # @s252
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_5
# %bb.1:                                # %vector.ph.preheader
	move	$s8, $zero
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 31
	ori	$s7, $a0, 1040
	lu12i.w	$a1, 62
	ori	$s0, $a1, 2096
	ori	$s1, $a0, 1024
	add.d	$a0, $fp, $s7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3152
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB10_2:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	move	$a0, $zero
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB10_3:                               # %vector.body
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	xvldx	$xr1, $a1, $s7
	xvldx	$xr2, $a1, $s0
	xvpermi.d	$xr0, $xr0, 78
	xvfmul.s	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a1, $xr1, 0
	xvrepl128vei.w	$xr0, $xr0, 3
	xvinsgr2vr.w	$xr0, $a1, 1
	xvpickve2gr.w	$a1, $xr1, 1
	xvinsgr2vr.w	$xr0, $a1, 2
	xvpickve2gr.w	$a1, $xr1, 2
	xvinsgr2vr.w	$xr0, $a1, 3
	xvpickve2gr.w	$a1, $xr1, 3
	xvinsgr2vr.w	$xr0, $a1, 4
	xvpickve2gr.w	$a1, $xr1, 4
	xvinsgr2vr.w	$xr0, $a1, 5
	xvpickve2gr.w	$a1, $xr1, 5
	xvinsgr2vr.w	$xr0, $a1, 6
	xvpickve2gr.w	$a1, $xr1, 6
	xvinsgr2vr.w	$xr0, $a1, 7
	xvfadd.s	$xr0, $xr0, $xr1
	xvstx	$xr0, $fp, $a0
	addi.d	$a0, $a0, 32
	xvori.b	$xr0, $xr1, 0
	bne	$a0, $s1, .LBB10_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB10_2
.LBB10_5:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB10_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB10_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	s252, .Lfunc_end10-s252
                                        # -- End function
	.globl	s253                            # -- Begin function s253
	.p2align	5
	.type	s253,@function
s253:                                   # @s253
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 93
	ori	$s7, $a0, 3152
	lu12i.w	$a0, 62
	ori	$s0, $a0, 2096
	lu12i.w	$a0, 31
	ori	$s1, $a0, 1040
	add.d	$a0, $fp, $s1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$s2, $fp, $s7
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %for.cond.cleanup3
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB11_7
.LBB11_3:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_4:                               # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB11_2
.LBB11_5:                               # %for.body4
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fldx.s	$fa1, $a1, $s1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB11_5 Depth=2
	add.d	$a2, $a1, $s7
	add.d	$a3, $a1, $s0
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a3, 0
	fneg.s	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fadd.s	$fa1, $fa3, $fa0
	fst.s	$fa1, $a3, 0
	fst.s	$fa0, $a1, 0
	b	.LBB11_4
.LBB11_7:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2096
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB11_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $fp, 0
	fldx.s	$fa3, $fp, $a1
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa3
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB11_8
# %bb.9:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end11:
	.size	s253, .Lfunc_end11-s253
                                        # -- End function
	.globl	s254                            # -- Begin function s254
	.p2align	5
	.type	s254,@function
s254:                                   # @s254
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB12_5
# %bb.1:                                # %vector.ph.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 62
	ori	$a1, $a0, 2060
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a1, 31
	ori	$s7, $a1, 1040
	lu12i.w	$a2, 258048
	xvreplgr2vr.w	$xr2, $a2
	ori	$s0, $a1, 1024
	add.d	$a1, $fp, $s7
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $a0, 2096
	add.d	$s1, $fp, $a0
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3152
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	xvst	$xr2, $sp, 16                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB12_2:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a0
	move	$a0, $zero
	xvinsve0.w	$xr0, $xr0, 7
	.p2align	4, , 16
.LBB12_3:                               # %vector.body
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	xvldx	$xr1, $a1, $s7
	xvpermi.d	$xr0, $xr0, 78
	xvpickve2gr.w	$a1, $xr1, 0
	xvrepl128vei.w	$xr0, $xr0, 3
	xvinsgr2vr.w	$xr0, $a1, 1
	xvpickve2gr.w	$a1, $xr1, 1
	xvinsgr2vr.w	$xr0, $a1, 2
	xvpickve2gr.w	$a1, $xr1, 2
	xvinsgr2vr.w	$xr0, $a1, 3
	xvpickve2gr.w	$a1, $xr1, 3
	xvinsgr2vr.w	$xr0, $a1, 4
	xvpickve2gr.w	$a1, $xr1, 4
	xvinsgr2vr.w	$xr0, $a1, 5
	xvpickve2gr.w	$a1, $xr1, 5
	xvinsgr2vr.w	$xr0, $a1, 6
	xvpickve2gr.w	$a1, $xr1, 6
	xvinsgr2vr.w	$xr0, $a1, 7
	xvfadd.s	$xr0, $xr0, $xr1
	xvfmul.s	$xr0, $xr0, $xr2
	xvstx	$xr0, $fp, $a0
	addi.d	$a0, $a0, 32
	xvori.b	$xr0, $xr1, 0
	bne	$a0, $s0, .LBB12_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB12_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	xvld	$xr2, $sp, 16                   # 32-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	slli.w	$a0, $a0, 2
	blt	$s8, $a0, .LBB12_2
.LBB12_5:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a0, $a0, %pc_lo12(.L.str.143)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB12_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB12_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end12:
	.size	s254, .Lfunc_end12-s254
                                        # -- End function
	.globl	s255                            # -- Begin function s255
	.p2align	5
	.type	s255,@function
s255:                                   # @s255
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB13_5
# %bb.1:                                # %vector.ph.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 62
	ori	$a1, $a0, 2060
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $a0, 2056
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 31
	ori	$s7, $a1, 1040
	lu12i.w	$a2, 256679
	ori	$a2, $a2, 3834
	xvreplgr2vr.w	$xr4, $a2
	ori	$s0, $a1, 1024
	add.d	$a1, $fp, $s7
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $a0, 2096
	add.d	$s1, $fp, $a0
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3152
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	xvst	$xr4, $sp, 16                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB13_2:                               # %vector.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fldx.s	$fa1, $fp, $a0
	move	$a0, $zero
	xvinsve0.w	$xr2, $xr0, 7
	xvinsve0.w	$xr1, $xr1, 7
	.p2align	4, , 16
.LBB13_3:                               # %vector.body
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	xvldx	$xr0, $a1, $s7
	xvpermi.d	$xr2, $xr2, 78
	xvpickve2gr.w	$a1, $xr0, 0
	xvpermi.d	$xr1, $xr1, 78
	xvrepl128vei.w	$xr3, $xr2, 3
	xvinsgr2vr.w	$xr3, $a1, 1
	xvpickve2gr.w	$a1, $xr0, 1
	xvinsgr2vr.w	$xr3, $a1, 2
	xvpickve2gr.w	$a1, $xr0, 2
	xvinsgr2vr.w	$xr3, $a1, 3
	xvpickve2gr.w	$a1, $xr0, 3
	xvinsgr2vr.w	$xr3, $a1, 4
	xvpickve2gr.w	$a1, $xr0, 4
	xvinsgr2vr.w	$xr3, $a1, 5
	xvpickve2gr.w	$a1, $xr0, 5
	xvinsgr2vr.w	$xr3, $a1, 6
	xvpickve2gr.w	$a1, $xr0, 6
	xvinsgr2vr.w	$xr3, $a1, 7
	xvpickve2gr.w	$a1, $xr3, 0
	xvrepl128vei.w	$xr1, $xr1, 3
	xvinsgr2vr.w	$xr1, $a1, 1
	xvpickve2gr.w	$a1, $xr3, 1
	xvinsgr2vr.w	$xr1, $a1, 2
	xvpickve2gr.w	$a1, $xr3, 2
	xvinsgr2vr.w	$xr1, $a1, 3
	xvpickve2gr.w	$a1, $xr3, 3
	xvinsgr2vr.w	$xr1, $a1, 4
	xvpickve2gr.w	$a1, $xr3, 4
	xvinsgr2vr.w	$xr1, $a1, 5
	xvpickve2gr.w	$a1, $xr3, 5
	xvinsgr2vr.w	$xr1, $a1, 6
	xvpickve2gr.w	$a1, $xr3, 6
	xvinsgr2vr.w	$xr1, $a1, 7
	xvfadd.s	$xr2, $xr3, $xr0
	xvfadd.s	$xr1, $xr1, $xr2
	xvfmul.s	$xr1, $xr1, $xr4
	xvstx	$xr1, $fp, $a0
	addi.d	$a0, $a0, 32
	xvori.b	$xr2, $xr0, 0
	xvori.b	$xr1, $xr3, 0
	bne	$a0, $s0, .LBB13_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB13_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	xvld	$xr4, $sp, 16                   # 32-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB13_2
.LBB13_5:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a0, $a0, %pc_lo12(.L.str.144)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB13_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB13_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.Lfunc_end13:
	.size	s255, .Lfunc_end13-s255
                                        # -- End function
	.globl	s256                            # -- Begin function s256
	.p2align	5
	.type	s256,@function
s256:                                   # @s256
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$s7, $zero, 256
	blt	$a0, $s7, .LBB14_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s8, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 220
	ori	$a1, $a0, 2320
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a1, 284
	ori	$a2, $a1, 2400
	add.d	$a2, $fp, $a2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	vldi	$vr3, -1168
	lu12i.w	$a2, 93
	ori	$s0, $a2, 3156
	ori	$s1, $zero, 1020
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1040
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2096
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $a2, 3152
	add.d	$s2, $fp, $a2
	lu12i.w	$a2, 125
	ori	$a2, $a2, 128
	add.d	$s3, $fp, $a2
	lu12i.w	$a2, 156
	ori	$a2, $a2, 1216
	add.d	$s4, $fp, $a2
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	ori	$a0, $a1, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB14_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #       Child Loop BB14_4 Depth 3
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB14_3:                               # %for.cond5.preheader
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_4 Depth 3
	fld.s	$fa0, $fp, 0
	move	$a3, $zero
	move	$a4, $a1
	move	$a5, $a2
	.p2align	4, , 16
.LBB14_4:                               # %for.body8
                                        #   Parent Loop BB14_2 Depth=1
                                        #     Parent Loop BB14_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fsub.s	$fa0, $fa3, $fa0
	add.d	$a6, $fp, $a3
	fst.s	$fa0, $a6, 4
	fld.s	$fa1, $a5, 0
	fldx.s	$fa2, $a6, $s0
	fmadd.s	$fa1, $fa1, $fa2, $fa0
	fst.s	$fa1, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 1024
	addi.d	$a4, $a4, 1024
	bne	$a3, $s1, .LBB14_4
# %bb.5:                                # %for.cond.cleanup7
                                        #   in Loop: Header=BB14_3 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bne	$a0, $s7, .LBB14_3
# %bb.6:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB14_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	vldi	$vr3, -1168
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	bstrpick.d	$a1, $a0, 62, 55
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	blt	$s8, $a0, .LBB14_2
.LBB14_7:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a0, $a0, %pc_lo12(.L.str.145)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB14_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB14_8
# %bb.9:                                # %for.cond18.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 156
	ori	$a2, $a2, 1216
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 1024
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB14_10:                              # %for.cond18.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	move	$a4, $zero
	.p2align	4, , 16
.LBB14_11:                              # %for.body21.i
                                        #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $a1, $a4
	addi.d	$a4, $a4, 4
	fadd.s	$fa1, $fa1, $fa2
	bne	$a4, $a2, .LBB14_11
# %bb.12:                               # %for.cond.cleanup20.i
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1024
	bne	$a0, $a3, .LBB14_10
# %bb.13:                               # %for.body47.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end14:
	.size	s256, .Lfunc_end14-s256
                                        # -- End function
	.globl	s257                            # -- Begin function s257
	.p2align	5
	.type	s257,@function
s257:                                   # @s257
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$t6, $zero, 256
	blt	$a0, $t6, .LBB15_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$t7, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 222
	ori	$a0, $a0, 276
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1220
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$t8, $zero, 2048
	ori	$s0, $zero, 3072
	lu12i.w	$s1, 1
	ori	$s2, $s1, 1024
	ori	$s3, $s1, 2048
	ori	$s4, $s1, 3072
	lu12i.w	$a0, -2
	ori	$s5, $a0, 1024
	ori	$s6, $a0, 2048
	ori	$s8, $a0, 3072
	lu12i.w	$ra, -1
	ori	$fp, $ra, 1024
	lu12i.w	$s7, 2
	lu12i.w	$a0, 31
	ori	$a0, $a0, 1040
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2096
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3152
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$a0, $t7, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB15_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
                                        #       Child Loop BB15_4 Depth 3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_3:                               # %for.cond5.preheader
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_4 Depth 3
	alsl.d	$a3, $a0, $t7, 2
	xvldrepl.w	$xr0, $a3, -4
	ori	$a4, $zero, 256
	move	$a5, $a1
	move	$a6, $a2
	.p2align	4, , 16
.LBB15_4:                               # %vector.body
                                        #   Parent Loop BB15_2 Depth=1
                                        #     Parent Loop BB15_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a5, $t8
	add.d	$t0, $a5, $s0
	add.d	$t1, $a5, $s1
	add.d	$t2, $a5, $s2
	add.d	$t3, $a5, $s3
	add.d	$t4, $a5, $s4
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a5, 1024
	fldx.s	$fa3, $a5, $t8
	fldx.s	$fa4, $a5, $s0
	fldx.s	$fa5, $a5, $s1
	fldx.s	$fa6, $a5, $s2
	fldx.s	$fa7, $a5, $s3
	fldx.s	$ft0, $a5, $s4
	xvinsve0.w	$xr1, $xr2, 1
	xvinsve0.w	$xr1, $xr3, 2
	xvinsve0.w	$xr1, $xr4, 3
	xvinsve0.w	$xr1, $xr5, 4
	xvinsve0.w	$xr1, $xr6, 5
	xvinsve0.w	$xr1, $xr7, 6
	xvinsve0.w	$xr1, $xr8, 7
	xvfsub.s	$xr1, $xr1, $xr0
	fldx.s	$fa2, $a6, $s5
	fldx.s	$fa3, $a6, $s6
	fldx.s	$fa4, $a6, $s8
	fldx.s	$fa5, $a6, $ra
	fldx.s	$fa6, $a6, $fp
	fld.s	$fa7, $a6, -2048
	fld.s	$ft0, $a6, -1024
	fld.s	$ft1, $a6, 0
	xvinsve0.w	$xr2, $xr3, 1
	xvinsve0.w	$xr2, $xr4, 2
	xvinsve0.w	$xr2, $xr5, 3
	xvinsve0.w	$xr2, $xr6, 4
	xvinsve0.w	$xr2, $xr7, 5
	xvinsve0.w	$xr2, $xr8, 6
	xvinsve0.w	$xr2, $xr9, 7
	xvfadd.s	$xr2, $xr1, $xr2
	xvstelm.w	$xr2, $a5, 0, 0
	xvpickve2gr.w	$t5, $xr2, 1
	movgr2fr.w	$fa3, $t5
	fst.s	$fa3, $a5, 1024
	xvstelm.w	$xr2, $a7, 0, 2
	xvstelm.w	$xr2, $t0, 0, 3
	xvstelm.w	$xr2, $t1, 0, 4
	xvstelm.w	$xr2, $t2, 0, 5
	xvstelm.w	$xr2, $t3, 0, 6
	xvstelm.w	$xr2, $t4, 0, 7
	addi.d	$a4, $a4, -8
	add.d	$a6, $a6, $s7
	add.d	$a5, $a5, $s7
	bnez	$a4, .LBB15_4
# %bb.5:                                # %middle.block
                                        #   in Loop: Header=BB15_3 Depth=2
	xvstelm.w	$xr1, $a3, 0, 7
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bne	$a0, $t6, .LBB15_3
# %bb.6:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB15_2 Depth=1
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$a5, $t7, $a0
	move	$a0, $t7
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	lu12i.w	$ra, -1
	ori	$t8, $zero, 2048
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	ori	$t6, $zero, 256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bstrpick.d	$a1, $a0, 62, 55
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	blt	$a2, $a0, .LBB15_2
.LBB15_7:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	.p2align	4, , 16
.LBB15_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB15_8
# %bb.9:                                # %for.cond18.preheader.i.preheader
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 156
	ori	$a2, $a2, 1216
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa1, $zero
	ori	$a2, $zero, 1024
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB15_10:                              # %for.cond18.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_11 Depth 2
	move	$a4, $zero
	.p2align	4, , 16
.LBB15_11:                              # %for.body21.i
                                        #   Parent Loop BB15_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa2, $a1, $a4
	addi.d	$a4, $a4, 4
	fadd.s	$fa1, $fa1, $fa2
	bne	$a4, $a2, .LBB15_11
# %bb.12:                               # %for.cond.cleanup20.i
                                        #   in Loop: Header=BB15_10 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1024
	bne	$a0, $a3, .LBB15_10
# %bb.13:                               # %for.body47.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.s	$fa0, $fa0, $fa1
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.Lfunc_end15:
	.size	s257, .Lfunc_end15-s257
                                        # -- End function
	.globl	s258                            # -- Begin function s258
	.p2align	5
	.type	s258,@function
s258:                                   # @s258
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 10
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$fp, $a2, %pc_lo12(global_data)
	blt	$a0, $a1, .LBB16_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	movgr2fr.w	$fs0, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 93
	ori	$s8, $a0, 3152
	lu12i.w	$a0, 62
	ori	$s0, $a0, 2096
	lu12i.w	$a0, 31
	ori	$s1, $a0, 1040
	vldi	$vr5, -1168
	lu12i.w	$a0, 156
	ori	$s2, $a0, 1216
	lu12i.w	$a0, 125
	ori	$s3, $a0, 128
	add.d	$a0, $fp, $s1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	lu12i.w	$a0, 419430
	ori	$s4, $a0, 1639
	.p2align	4, , 16
.LBB16_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	.p2align	4, , 16
.LBB16_3:                               # %for.body4
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$fa1, $a1, $s8
	fld.s	$fa2, $a1, 0
	fmul.s	$fa3, $fa1, $fa1
	fldx.s	$fa4, $a1, $s0
	fcmp.clt.s	$fcc0, $fs0, $fa2
	fsel	$fa0, $fa0, $fa3, $fcc0
	fldx.s	$fa2, $a1, $s2
	fmadd.s	$fa1, $fa0, $fa4, $fa1
	fstx.s	$fa1, $a1, $s1
	fadd.s	$fa1, $fa0, $fa5
	fmul.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $a1, $s3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB16_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB16_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	vldi	$vr5, -1168
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	mul.d	$a0, $a0, $s4
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	blt	$s7, $a0, .LBB16_2
.LBB16_5:                               # %for.cond.cleanup
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1040
	add.d	$a1, $fp, $a1
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	fmov.s	$fa0, $fs0
	.p2align	4, , 16
.LBB16_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fs0, $fs0, $fa2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB16_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.s	$fa0, $fa0, $fs0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end16:
	.size	s258, .Lfunc_end16-s258
                                        # -- End function
	.globl	s261                            # -- Begin function s261
	.p2align	5
	.type	s261,@function
s261:                                   # @s261
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$fp, $a2, %pc_lo12(global_data)
	blt	$a0, $a1, .LBB17_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s8, $zero
	lu12i.w	$a0, 62
	ori	$a2, $a0, 2096
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3327
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a1, 31
	ori	$s7, $a1, 1044
	ori	$s0, $a0, 2100
	lu12i.w	$a0, 93
	ori	$s1, $a0, 3156
	ori	$a1, $a1, 1040
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $a0, 3152
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	movgr2fr.w	$fs0, $zero
	.p2align	4, , 16
.LBB17_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fldx.s	$fa0, $fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	.p2align	4, , 16
.LBB17_3:                               # %for.body4
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a1, 4
	fldx.s	$fa2, $a1, $s7
	fadd.s	$fa1, $fa1, $fa2
	fldx.s	$fa2, $a1, $s0
	fldx.s	$fa3, $a1, $s1
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a1, 4
	addi.d	$a2, $a1, 4
	fmul.s	$fa0, $fa2, $fa3
	addi.d	$a0, $a0, -1
	fstx.s	$fa0, $a1, $s0
	move	$a1, $a2
	bnez	$a0, .LBB17_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB17_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB17_2
.LBB17_5:                               # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1040
	add.d	$a1, $fp, $a1
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB17_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 0
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa3
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB17_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.s	$fa0, $fa1, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end17:
	.size	s261, .Lfunc_end17-s261
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
.Lfunc_end18:
	.size	min, .Lfunc_end18-min
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set
.LCPI19_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI19_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	set
	.p2align	5
	.type	set,@function
set:                                    # @set
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(xx)
	addi.d	$a0, $a0, %pc_lo12(xx)
	lu12i.w	$s2, 31
	ori	$a2, $s2, 1024
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s1, 20
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2304
	.p2align	4, , 16
.LBB19_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a0, 5
	addi.d	$a4, $a0, 4
	addi.d	$a5, $a0, 9
	st.w	$a4, $a1, -20
	st.w	$a5, $a1, 0
	addi.d	$a4, $a0, 2
	addi.d	$a5, $a0, 7
	st.w	$a4, $a1, -16
	st.w	$a5, $a1, 4
	st.w	$a0, $a1, -12
	st.w	$a3, $a1, 8
	addi.d	$a3, $a0, 3
	addi.d	$a4, $a0, 8
	st.w	$a3, $a1, -8
	st.w	$a4, $a1, 12
	addi.d	$a3, $a0, 1
	addi.d	$a4, $a0, 6
	st.w	$a3, $a1, -4
	st.w	$a4, $a1, 16
	addi.d	$a0, $a0, 10
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 40
	bnez	$a2, .LBB19_1
# %bb.2:                                # %vector.body89.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a2, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a2, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu12i.w	$a0, 260096
	xvreplgr2vr.w	$xr0, $a0
	.p2align	4, , 16
.LBB19_3:                               # %vector.body89
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB19_3
# %bb.4:                                # %vector.body96.preheader
	ori	$a3, $s2, 1072
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB19_5:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB19_5
# %bb.6:                                # %vector.body103.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2128
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB19_7:                               # %vector.body103
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB19_7
# %bb.8:                                # %vector.body110.preheader
	lu12i.w	$a3, 93
	ori	$a3, $a3, 3184
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB19_9:                               # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB19_9
# %bb.10:                               # %vector.body117.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 160
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB19_11:                              # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB19_11
# %bb.12:                               # %for.cond2.preheader.i.preheader
	lu12i.w	$a3, 156
	ori	$a3, $a3, 1728
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB19_13:                              # %for.cond2.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a3, -512
	xvst	$xr0, $a3, -480
	xvst	$xr0, $a3, -448
	xvst	$xr0, $a3, -416
	xvst	$xr0, $a3, -384
	xvst	$xr0, $a3, -352
	xvst	$xr0, $a3, -320
	xvst	$xr0, $a3, -288
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	xvst	$xr0, $a3, 256
	xvst	$xr0, $a3, 288
	xvst	$xr0, $a3, 320
	xvst	$xr0, $a3, 352
	xvst	$xr0, $a3, 384
	xvst	$xr0, $a3, 416
	xvst	$xr0, $a3, 448
	xvst	$xr0, $a3, 480
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 1024
	bnez	$a5, .LBB19_13
# %bb.14:                               # %for.cond2.preheader.i43.preheader
	lu12i.w	$a3, 220
	ori	$a3, $a3, 1808
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB19_15:                              # %for.cond2.preheader.i43
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a4, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a3, -512
	xvst	$xr0, $a3, -480
	xvst	$xr0, $a3, -448
	xvst	$xr0, $a3, -416
	xvst	$xr0, $a3, -384
	xvst	$xr0, $a3, -352
	xvst	$xr0, $a3, -320
	xvst	$xr0, $a3, -288
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	xvst	$xr0, $a3, 256
	xvst	$xr0, $a3, 288
	xvst	$xr0, $a3, 320
	xvst	$xr0, $a3, 352
	xvst	$xr0, $a3, 384
	xvst	$xr0, $a3, 416
	xvst	$xr0, $a3, 448
	xvst	$xr0, $a3, 480
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 1024
	bnez	$a5, .LBB19_15
# %bb.16:                               # %for.cond2.preheader.i58.preheader
	lu12i.w	$a3, 284
	ori	$a3, $a3, 1888
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB19_17:                              # %for.cond2.preheader.i58
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	fcvt.s.d	$fa0, $fa0
	xvreplve0.w	$xr0, $xr0
	xvst	$xr0, $a2, -512
	xvst	$xr0, $a2, -480
	xvst	$xr0, $a2, -448
	xvst	$xr0, $a2, -416
	xvst	$xr0, $a2, -384
	xvst	$xr0, $a2, -352
	xvst	$xr0, $a2, -320
	xvst	$xr0, $a2, -288
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	xvst	$xr0, $a2, 256
	xvst	$xr0, $a2, 288
	xvst	$xr0, $a2, 320
	xvst	$xr0, $a2, 352
	xvst	$xr0, $a2, 384
	xvst	$xr0, $a2, 416
	xvst	$xr0, $a2, 448
	xvst	$xr0, $a2, 480
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 1024
	bnez	$a4, .LBB19_17
# %bb.18:                               # %vector.body149.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI19_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI19_0)
	pcalau12i	$a2, %pc_hi20(.LCPI19_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI19_1)
	pcalau12i	$a2, %pc_hi20(indx)
	addi.d	$a2, $a2, %pc_lo12(indx)
	ori	$a1, $a1, 3328
	xvrepli.w	$xr2, 3
	.p2align	4, , 16
.LBB19_19:                              # %vector.body149
                                        # =>This Inner Loop Header: Depth=1
	xvpickve2gr.d	$a3, $xr1, 0
	xvinsgr2vr.w	$xr3, $a3, 0
	xvpickve2gr.d	$a3, $xr1, 1
	xvinsgr2vr.w	$xr3, $a3, 1
	xvpickve2gr.d	$a3, $xr1, 2
	xvinsgr2vr.w	$xr3, $a3, 2
	xvpickve2gr.d	$a3, $xr1, 3
	xvinsgr2vr.w	$xr3, $a3, 3
	xvpickve2gr.d	$a3, $xr0, 0
	xvinsgr2vr.w	$xr3, $a3, 4
	xvpickve2gr.d	$a3, $xr0, 1
	xvinsgr2vr.w	$xr3, $a3, 5
	xvpickve2gr.d	$a3, $xr0, 2
	xvinsgr2vr.w	$xr3, $a3, 6
	xvpickve2gr.d	$a3, $xr0, 3
	xvinsgr2vr.w	$xr3, $a3, 7
	xvaddi.wu	$xr3, $xr3, 1
	xvand.v	$xr3, $xr3, $xr2
	xvaddi.wu	$xr3, $xr3, 1
	xvst	$xr3, $a2, 0
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB19_19
# %bb.20:                               # %for.cond.cleanup29
	st.w	$a0, $s0, 0
	lu12i.w	$a0, 262144
	st.w	$a0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	set, .Lfunc_end19-set
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	lu12i.w	$a0, 31
	ori	$a2, $a0, 1024
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bge	$a0, $s0, .LBB20_3
# %bb.1:                                # %if.end
	ld.d	$a0, $fp, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ntimes)
	st.w	$a0, $a1, %pc_lo12(ntimes)
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB20_4
# %bb.2:                                # %if.then4
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(digits)
	st.w	$a0, $a1, %pc_lo12(digits)
	b	.LBB20_4
.LBB20_3:                               # %if.end.thread
	pcalau12i	$a0, %pc_hi20(ntimes)
	ld.w	$a1, $a0, %pc_lo12(ntimes)
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB20_4:                               # %if.end7
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(set)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s251)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s1251)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s2251)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s3251)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s252)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s253)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s254)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s255)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s256)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s257)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s258)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s261)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	main, .Lfunc_end20-main
                                        # -- End function
	.type	global_data,@object             # @global_data
	.bss
	.globl	global_data
	.p2align	4, 0x0
global_data:
	.space	1689024
	.size	global_data, 1689024

	.type	a,@object                       # @a
	.section	.data.rel.ro,"aw",@progbits
	.globl	a
	.p2align	4, 0x0
a:
	.dword	global_data
	.size	a, 8

	.type	b,@object                       # @b
	.globl	b
	.p2align	4, 0x0
b:
	.dword	global_data+128016
	.size	b, 8

	.type	c,@object                       # @c
	.globl	c
	.p2align	4, 0x0
c:
	.dword	global_data+256048
	.size	c, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	4, 0x0
d:
	.dword	global_data+384080
	.size	d, 8

	.type	e,@object                       # @e
	.globl	e
	.p2align	4, 0x0
e:
	.dword	global_data+512128
	.size	e, 8

	.type	aa,@object                      # @aa
	.globl	aa
	.p2align	4, 0x0
aa:
	.dword	global_data+640192
	.size	aa, 8

	.type	bb,@object                      # @bb
	.globl	bb
	.p2align	4, 0x0
bb:
	.dword	global_data+902416
	.size	bb, 8

	.type	cc,@object                      # @cc
	.globl	cc
	.p2align	4, 0x0
cc:
	.dword	global_data+1164640
	.size	cc, 8

	.type	tt,@object                      # @tt
	.globl	tt
	.p2align	4, 0x0
tt:
	.dword	global_data+1426880
	.size	tt, 8

	.type	array,@object                   # @array
	.bss
	.globl	array
	.p2align	4, 0x0
array:
	.space	262144
	.size	array, 262144

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.*G \n"
	.size	.L.str, 7

	.type	digits,@object                  # @digits
	.data
	.p2align	2, 0x0
digits:
	.word	6                               # 0x6
	.size	digits, 4

	.type	temp,@object                    # @temp
	.bss
	.globl	temp
	.p2align	2, 0x0
temp:
	.word	0x00000000                      # float 0
	.size	temp, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s000 "
	.size	.L.str.1, 6

	.type	X,@object                       # @X
	.bss
	.globl	X
	.p2align	4, 0x0
X:
	.space	128000
	.size	X, 128000

	.type	Y,@object                       # @Y
	.globl	Y
	.p2align	4, 0x0
Y:
	.space	128000
	.size	Y, 128000

	.type	Z,@object                       # @Z
	.globl	Z
	.p2align	4, 0x0
Z:
	.space	128000
	.size	Z, 128000

	.type	U,@object                       # @U
	.globl	U
	.p2align	4, 0x0
U:
	.space	128000
	.size	U, 128000

	.type	V,@object                       # @V
	.globl	V
	.p2align	4, 0x0
V:
	.space	128000
	.size	V, 128000

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"s111 "
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"s112 "
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"s113 "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"s114 "
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"s115 "
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"s116 "
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"s118 "
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"s119 "
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"s121 "
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"s122 "
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"s123 "
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"s124 "
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"s125 "
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"s126 "
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"s127 "
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"s128 "
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"s131 "
	.size	.L.str.18, 6

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"s132 "
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"s141 "
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"s151 "
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"s152 "
	.size	.L.str.22, 6

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"s161 "
	.size	.L.str.23, 6

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"s162 "
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"s171 "
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"s172 "
	.size	.L.str.26, 6

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"s173 "
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"s174 "
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"s175 "
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"s176 "
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"s211 "
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"s212 "
	.size	.L.str.32, 6

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"s221 "
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"s222 "
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"s231 "
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"s232 "
	.size	.L.str.36, 6

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"s233 "
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"s234 "
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"s235 "
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"s241 "
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"s242 "
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"s243 "
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"s244 "
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"s251 "
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"s252 "
	.size	.L.str.45, 6

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"s253 "
	.size	.L.str.46, 6

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"s254 "
	.size	.L.str.47, 6

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"s255 "
	.size	.L.str.48, 6

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"s256 "
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"s257 "
	.size	.L.str.50, 6

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"s258 "
	.size	.L.str.51, 6

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"s261 "
	.size	.L.str.52, 6

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"s271 "
	.size	.L.str.53, 6

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"s272 "
	.size	.L.str.54, 6

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"s273 "
	.size	.L.str.55, 6

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"s274 "
	.size	.L.str.56, 6

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"s275 "
	.size	.L.str.57, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"s276 "
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"s277 "
	.size	.L.str.59, 6

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"s278 "
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"s279 "
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"s2710"
	.size	.L.str.62, 6

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"s2711"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"s2712"
	.size	.L.str.64, 6

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"s281 "
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"s291 "
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"s292 "
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"s293 "
	.size	.L.str.68, 6

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"s2101"
	.size	.L.str.69, 6

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"s2102"
	.size	.L.str.70, 6

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"s2111"
	.size	.L.str.71, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"s311 "
	.size	.L.str.72, 6

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"s312 "
	.size	.L.str.73, 6

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"s313 "
	.size	.L.str.74, 6

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"s314 "
	.size	.L.str.75, 6

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"s315 "
	.size	.L.str.76, 6

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"s316 "
	.size	.L.str.77, 6

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"s317 "
	.size	.L.str.78, 6

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"s318 "
	.size	.L.str.79, 6

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"s319 "
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"s3110"
	.size	.L.str.81, 6

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"s3111"
	.size	.L.str.82, 6

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"s3112"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"s3113"
	.size	.L.str.84, 6

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"s321 "
	.size	.L.str.85, 6

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"s322 "
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"s323 "
	.size	.L.str.87, 6

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"s331 "
	.size	.L.str.88, 6

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"s332 "
	.size	.L.str.89, 6

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"s341 "
	.size	.L.str.90, 6

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"s342 "
	.size	.L.str.91, 6

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"s343 "
	.size	.L.str.92, 6

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"s351 "
	.size	.L.str.93, 6

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"s352 "
	.size	.L.str.94, 6

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"s353 "
	.size	.L.str.95, 6

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"s411 "
	.size	.L.str.96, 6

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"s412 "
	.size	.L.str.97, 6

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"s413 "
	.size	.L.str.98, 6

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"s414 "
	.size	.L.str.99, 6

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"s415 "
	.size	.L.str.100, 6

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"s421 "
	.size	.L.str.101, 6

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"s422 "
	.size	.L.str.102, 6

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"s423 "
	.size	.L.str.103, 6

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"s424 "
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"s431 "
	.size	.L.str.105, 6

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"s432 "
	.size	.L.str.106, 6

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"s441 "
	.size	.L.str.107, 6

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"s442 "
	.size	.L.str.108, 6

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"s443 "
	.size	.L.str.109, 6

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"s451 "
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"s452 "
	.size	.L.str.111, 6

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"s453 "
	.size	.L.str.112, 6

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"s471 "
	.size	.L.str.113, 6

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"s481 "
	.size	.L.str.114, 6

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"s482 "
	.size	.L.str.115, 6

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"s491 "
	.size	.L.str.116, 6

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"s4112"
	.size	.L.str.117, 6

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"s4113"
	.size	.L.str.118, 6

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"s4114"
	.size	.L.str.119, 6

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"s4115"
	.size	.L.str.120, 6

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"s4116"
	.size	.L.str.121, 6

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"s4117"
	.size	.L.str.122, 6

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"s4121"
	.size	.L.str.123, 6

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"va\t"
	.size	.L.str.124, 4

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"vag  "
	.size	.L.str.125, 6

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"vas  "
	.size	.L.str.126, 6

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"vif  "
	.size	.L.str.127, 6

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"vpv  "
	.size	.L.str.128, 6

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"vtv  "
	.size	.L.str.129, 6

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"vpvtv"
	.size	.L.str.130, 6

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"vpvts"
	.size	.L.str.131, 6

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"vpvpv"
	.size	.L.str.132, 6

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"vtvtv"
	.size	.L.str.133, 6

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"vsumr"
	.size	.L.str.134, 6

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"vdotr"
	.size	.L.str.135, 6

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"vbor "
	.size	.L.str.136, 6

	.type	ntimes,@object                  # @ntimes
	.data
	.p2align	2, 0x0
ntimes:
	.word	200000                          # 0x30d40
	.size	ntimes, 4

	.type	.L.str.137,@object              # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"S251\t %.2f \t\t"
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"S1251\t %.2f \t\t"
	.size	.L.str.138, 15

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"S2251\t %.2f \t\t"
	.size	.L.str.139, 15

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"S3251\t %.2f \t\t"
	.size	.L.str.140, 15

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"S252\t %.2f \t\t"
	.size	.L.str.141, 14

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"S253\t %.2f \t\t"
	.size	.L.str.142, 14

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"S254\t %.2f \t\t"
	.size	.L.str.143, 14

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"S255\t %.2f \t\t"
	.size	.L.str.144, 14

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"S256\t %.2f \t\t"
	.size	.L.str.145, 14

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"S257\t %.2f \t\t"
	.size	.L.str.146, 14

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"S258\t %.2f \t\t"
	.size	.L.str.147, 14

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"S261\t %.2f \t\t"
	.size	.L.str.148, 14

	.type	xx,@object                      # @xx
	.bss
	.globl	xx
	.p2align	3, 0x0
xx:
	.dword	0
	.size	xx, 8

	.type	indx,@object                    # @indx
	.globl	indx
	.p2align	4, 0x0
indx:
	.space	128000
	.size	indx, 128000

	.type	.L.str.150,@object              # @.str.150
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.150:
	.asciz	"Running each loop %d times...\n"
	.size	.L.str.150, 31

	.type	x,@object                       # @x
	.bss
	.globl	x
	.p2align	4, 0x0
x:
	.space	128000
	.size	x, 128000

	.type	temp_int,@object                # @temp_int
	.globl	temp_int
	.p2align	2, 0x0
temp_int:
	.word	0                               # 0x0
	.size	temp_int, 4

	.type	yy,@object                      # @yy
	.globl	yy
	.p2align	3, 0x0
yy:
	.dword	0
	.size	yy, 8

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Loop \t Time(Sec) \t Checksum "
	.size	.Lstr, 29

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym global_data
	.addrsig_sym xx
