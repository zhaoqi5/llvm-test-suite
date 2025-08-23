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
# %bb.140:                              # %vector.body4712.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_141:                              # %vector.body4712
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
# %bb.142:                              # %vector.body4718.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_143:                              # %vector.body4718
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
# %bb.144:                              # %vector.body4724.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_145:                              # %vector.body4724
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
.LBB5_148:                              # %vector.body6901.preheader
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
.LBB5_149:                              # %vector.body6901
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
.LBB5_150:                              # %vector.body6863.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_151:                              # %vector.body6863
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_151
# %bb.152:                              # %vector.body6869.preheader
	lu12i.w	$a4, 31
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 1040
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_153:                              # %vector.body6869
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
# %bb.154:                              # %vector.body6877.preheader
	lu12i.w	$a4, 62
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 2096
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_155:                              # %vector.body6877
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
# %bb.156:                              # %vector.body6885.preheader
	lu12i.w	$a4, 93
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 3152
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
	.p2align	4, , 16
.LBB5_157:                              # %vector.body6885
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
# %bb.158:                              # %vector.body6893.preheader
	lu12i.w	$a4, 125
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a4, 128
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_159:                              # %vector.body6893
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
.LBB5_160:                              # %vector.body6849.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_161:                              # %vector.body6849
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_161
# %bb.162:                              # %vector.body6855.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_163:                              # %vector.body6855
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
.LBB5_164:                              # %vector.body6835.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
	.p2align	4, , 16
.LBB5_165:                              # %vector.body6835
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_165
# %bb.166:                              # %vector.body6841.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_167:                              # %vector.body6841
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
.LBB5_172:                              # %vector.body6795.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_173:                              # %vector.body6795
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
.LBB5_180:                              # %vector.body6789.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
	.p2align	4, , 16
.LBB5_181:                              # %vector.body6789
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_181
	b	.LBB5_573
.LBB5_182:                              # %vector.body6777.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
	.p2align	4, , 16
.LBB5_183:                              # %vector.body6777
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
.LBB5_190:                              # %vector.body6749.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_191:                              # %vector.body6749
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_191
# %bb.192:                              # %vector.body6755.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_193:                              # %vector.body6755
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
.LBB5_194:                              # %vector.body6735.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_195:                              # %vector.body6735
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_195
# %bb.196:                              # %vector.body6741.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_197:                              # %vector.body6741
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
.LBB5_199:                              # %vector.body6711
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_199
# %bb.200:                              # %vector.body6717.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_201:                              # %vector.body6717
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_201
# %bb.202:                              # %vector.body6723.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_203:                              # %vector.body6723
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
# %bb.204:                              # %vector.body6729.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_205:                              # %vector.body6729
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
.LBB5_207:                              # %vector.body6687
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_207
# %bb.208:                              # %vector.body6693.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_209:                              # %vector.body6693
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_209
# %bb.210:                              # %vector.body6699.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_211:                              # %vector.body6699
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
# %bb.212:                              # %vector.body6705.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_213:                              # %vector.body6705
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
# %bb.222:                              # %vector.body6655.preheader
	pcalau12i	$a1, %pc_hi20(array+4)
	addi.d	$a1, $a1, %pc_lo12(array+4)
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_223:                              # %vector.body6655
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
.LBB5_227:                              # %vector.body6625
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_227
# %bb.228:                              # %vector.body6631.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_229:                              # %vector.body6631
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
# %bb.230:                              # %vector.body6637.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_231:                              # %vector.body6637
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
# %bb.232:                              # %vector.body6643.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_233:                              # %vector.body6643
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
.LBB5_235:                              # %vector.body6607
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_235
# %bb.236:                              # %vector.body6613.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_237:                              # %vector.body6613
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_237
# %bb.238:                              # %vector.body6619.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3184
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_239:                              # %vector.body6619
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_239
	b	.LBB5_573
.LBB5_240:                              # %vector.body6593.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_241:                              # %vector.body6593
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_241
# %bb.242:                              # %vector.body6599.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_243:                              # %vector.body6599
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
# %bb.246:                              # %vector.body6581.preheader
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a2, $a0, $a1
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_247:                              # %vector.body6581
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
# %bb.248:                              # %vector.body6587.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_249:                              # %vector.body6587
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
.LBB5_250:                              # %vector.body6561.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_251:                              # %vector.body6561
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
.LBB5_254:                              # %vector.body6547.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_255:                              # %vector.body6547
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_255
# %bb.256:                              # %vector.body6553.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_257:                              # %vector.body6553
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
.LBB5_258:                              # %vector.body6523.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_259:                              # %vector.body6523
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
.LBB5_261:                              # %vector.body6529
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
# %bb.262:                              # %vector.body6535.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3156
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s0, 3328
.LBB5_263:                              # %vector.body6535
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
# %bb.264:                              # %vector.body6541.preheader
	lu12i.w	$a0, 125
	ori	$a0, $a0, 132
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s0, 3328
.LBB5_265:                              # %vector.body6541
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
.LBB5_266:                              # %vector.body6486.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_267:                              # %vector.body6486
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_267
# %bb.268:                              # %vector.body6492.preheader
	lu12i.w	$a3, 31
	ori	$a4, $a3, 1048
	add.d	$a5, $a0, $a4
	lu12i.w	$a4, 3
	ori	$a6, $a4, 3712
.LBB5_269:                              # %vector.body6492
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a5, -8
	st.w	$a2, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB5_269
# %bb.270:                              # %vector.body6498.preheader
	ori	$a2, $a3, 1052
	add.d	$a2, $a0, $a2
	ori	$a3, $a4, 3712
	lu12i.w	$a4, -264192
	lu32i.d	$a4, 0
.LBB5_271:                              # %vector.body6498
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, -8
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB5_271
# %bb.272:                              # %vector.body6505.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_273:                              # %vector.body6505
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_273
# %bb.274:                              # %vector.body6511.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_275:                              # %vector.body6511
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
# %bb.276:                              # %vector.body6517.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_277:                              # %vector.body6517
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
.LBB5_278:                              # %vector.body6468.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_279:                              # %vector.body6468
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_279
# %bb.280:                              # %vector.body6474.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_281:                              # %vector.body6474
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
# %bb.282:                              # %vector.body6480.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_283:                              # %vector.body6480
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
.LBB5_284:                              # %vector.body6454.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_285:                              # %vector.body6454
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_285
# %bb.286:                              # %vector.body6460.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_287:                              # %vector.body6460
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
.LBB5_288:                              # %vector.body6440.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_289:                              # %vector.body6440
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_289
# %bb.290:                              # %vector.body6446.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_291:                              # %vector.body6446
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
.LBB5_292:                              # %vector.body6426.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_293:                              # %vector.body6426
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_293
# %bb.294:                              # %vector.body6432.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_295:                              # %vector.body6432
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
.LBB5_296:                              # %vector.body6412.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_297:                              # %vector.body6412
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_297
# %bb.298:                              # %vector.body6418.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_299:                              # %vector.body6418
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
.LBB5_300:                              # %vector.body6398.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_301:                              # %vector.body6398
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_301
# %bb.302:                              # %vector.body6404.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_303:                              # %vector.body6404
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
.LBB5_304:                              # %vector.body6380.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_305:                              # %vector.body6380
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_305
# %bb.306:                              # %vector.body6386.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_307:                              # %vector.body6386
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
# %bb.308:                              # %vector.body6392.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_309:                              # %vector.body6392
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
.LBB5_311:                              # %vector.body6356
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_311
# %bb.312:                              # %vector.body6362.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_313:                              # %vector.body6362
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
# %bb.314:                              # %vector.body6368.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_315:                              # %vector.body6368
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
# %bb.316:                              # %vector.body6374.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_317:                              # %vector.body6374
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
.LBB5_318:                              # %vector.body6332.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_319:                              # %vector.body6332
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
# %bb.320:                              # %vector.body6338.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_321:                              # %vector.body6338
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_321
# %bb.322:                              # %vector.body6344.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_323:                              # %vector.body6344
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_323
# %bb.324:                              # %vector.body6350.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_325:                              # %vector.body6350
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
.LBB5_326:                              # %vector.body6308.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_327:                              # %vector.body6308
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_327
# %bb.328:                              # %vector.body6314.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_329:                              # %vector.body6314
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
# %bb.330:                              # %vector.body6320.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_331:                              # %vector.body6320
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
# %bb.332:                              # %vector.body6326.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_333:                              # %vector.body6326
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
.LBB5_335:                              # %vector.body6296
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_335
# %bb.336:                              # %vector.body6302.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_337:                              # %vector.body6302
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
.LBB5_359:                              # %vector.body6198.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_360:                              # %vector.body6198
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_360
# %bb.361:                              # %vector.body6204.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_362:                              # %vector.body6204
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
# %bb.363:                              # %vector.body6210.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_364:                              # %vector.body6210
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
.LBB5_369:                              # %vector.body6174.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_370:                              # %vector.body6174
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_370
# %bb.371:                              # %vector.body6180.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_372:                              # %vector.body6180
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_372
# %bb.373:                              # %vector.body6186.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_374:                              # %vector.body6186
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_374
# %bb.375:                              # %vector.body6192.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_376:                              # %vector.body6192
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_376
	b	.LBB5_573
.LBB5_377:                              # %vector.body6150.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr0, $a4
.LBB5_378:                              # %vector.body6150
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_378
# %bb.379:                              # %vector.body6156.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_380:                              # %vector.body6156
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_380
# %bb.381:                              # %vector.body6162.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_382:                              # %vector.body6162
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_382
# %bb.383:                              # %vector.body6168.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_384:                              # %vector.body6168
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
.LBB5_386:                              # %vector.body6126
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_386
# %bb.387:                              # %vector.body6132.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_388:                              # %vector.body6132
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
# %bb.389:                              # %vector.body6138.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_390:                              # %vector.body6138
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
# %bb.391:                              # %vector.body6144.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_392:                              # %vector.body6144
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
.LBB5_394:                              # %vector.body6108
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_394
# %bb.395:                              # %vector.body6114.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, 219235
	ori	$a3, $a3, 1981
	xvreplgr2vr.w	$xr0, $a3
.LBB5_396:                              # %vector.body6114
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_396
# %bb.397:                              # %vector.body6120.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3184
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_398:                              # %vector.body6120
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
.LBB5_400:                              # %vector.body6084
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_400
# %bb.401:                              # %vector.body6090.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_402:                              # %vector.body6090
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
# %bb.403:                              # %vector.body6096.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_404:                              # %vector.body6096
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
# %bb.405:                              # %vector.body6102.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_406:                              # %vector.body6102
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
.LBB5_408:                              # %vector.body6072
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_408
# %bb.409:                              # %vector.body6078.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_410:                              # %vector.body6078
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_410
	b	.LBB5_573
.LBB5_411:                              # %vector.body6048.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_412:                              # %vector.body6048
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_412
# %bb.413:                              # %vector.body6054.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr1, $a4
.LBB5_414:                              # %vector.body6054
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_414
# %bb.415:                              # %vector.body6060.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_416:                              # %vector.body6060
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_416
# %bb.417:                              # %vector.body6066.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_418:                              # %vector.body6066
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
.LBB5_420:                              # %vector.body6042
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
.LBB5_422:                              # %vector.body6036
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_422
	b	.LBB5_573
.LBB5_423:                              # %vector.body6018.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_424:                              # %vector.body6018
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
.LBB5_429:                              # %vector.body6000.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_430:                              # %vector.body6000
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
.LBB5_435:                              # %vector.body5974.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 4
	ori	$a1, $zero, 2
	lu12i.w	$s1, 7
	ori	$a2, $s1, 3328
.LBB5_436:                              # %vector.body5974
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
.LBB5_438:                              # %vector.body5980
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
# %bb.439:                              # %vector.body5986.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3156
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 2
	ori	$a2, $s1, 3328
.LBB5_440:                              # %vector.body5986
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
.LBB5_443:                              # %vector.body5946.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_444:                              # %vector.body5946
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_444
# %bb.445:                              # %vector.body5952.preheader
	lu12i.w	$a4, 31
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr2, $a3, %pc_lo12(.LCPI5_1)
	ori	$a4, $a4, 1040
	add.d	$a4, $a0, $a4
	ori	$a5, $a1, 3328
.LBB5_446:                              # %vector.body5952
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
# %bb.447:                              # %vector.body5960.preheader
	lu12i.w	$a4, 62
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_0)
	xvld	$xr2, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a4, 2096
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_448:                              # %vector.body5960
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
# %bb.449:                              # %vector.body5968.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_450:                              # %vector.body5968
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_450
	b	.LBB5_573
.LBB5_451:                              # %vector.body5928.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_452:                              # %vector.body5928
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_452
# %bb.453:                              # %vector.body5934.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_454:                              # %vector.body5934
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
# %bb.455:                              # %vector.body5940.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_456:                              # %vector.body5940
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
.LBB5_457:                              # %vector.body5898.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_458:                              # %vector.body5898
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_458
# %bb.459:                              # %vector.body5904.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_460:                              # %vector.body5904
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_460
# %bb.461:                              # %vector.body5910.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_462:                              # %vector.body5910
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
# %bb.463:                              # %vector.body5916.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_464:                              # %vector.body5916
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
# %bb.465:                              # %vector.body5922.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 262144
	xvreplgr2vr.w	$xr0, $a2
.LBB5_466:                              # %vector.body5922
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_466
	b	.LBB5_573
.LBB5_467:                              # %vector.body5868.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_468:                              # %vector.body5868
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_468
# %bb.469:                              # %vector.body5874.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_470:                              # %vector.body5874
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_470
# %bb.471:                              # %vector.body5880.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_472:                              # %vector.body5880
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_472
# %bb.473:                              # %vector.body5886.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3184
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 219235
	ori	$a4, $a4, 1981
	xvreplgr2vr.w	$xr0, $a4
.LBB5_474:                              # %vector.body5886
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_474
# %bb.475:                              # %vector.body5892.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_476:                              # %vector.body5892
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
.LBB5_478:                              # %vector.body5844
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_478
# %bb.479:                              # %vector.body5850.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_480:                              # %vector.body5850
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_480
# %bb.481:                              # %vector.body5856.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_482:                              # %vector.body5856
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
# %bb.483:                              # %vector.body5862.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_484:                              # %vector.body5862
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
.LBB5_491:                              # %vector.body5802.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_492:                              # %vector.body5802
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_492
# %bb.493:                              # %vector.body5808.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_494:                              # %vector.body5808
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
# %bb.495:                              # %vector.body5814.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_496:                              # %vector.body5814
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
# %bb.497:                              # %vector.body5820.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_498:                              # %vector.body5820
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
.LBB5_499:                              # %vector.body5766.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_500:                              # %vector.body5766
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_500
# %bb.501:                              # %vector.body5772.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_502:                              # %vector.body5772
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_502
# %bb.503:                              # %vector.body5778.preheader
	lu12i.w	$a2, 46
	ori	$a2, $a2, 3632
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_504:                              # %vector.body5778
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_504
# %bb.505:                              # %vector.body5784.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_506:                              # %vector.body5784
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
# %bb.507:                              # %vector.body5790.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_508:                              # %vector.body5790
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
# %bb.509:                              # %vector.body5796.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_510:                              # %vector.body5796
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
.LBB5_511:                              # %vector.body5730.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_512:                              # %vector.body5730
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_512
# %bb.513:                              # %vector.body5736.preheader
	addu16i.d	$a2, $a0, 1
	addi.d	$a2, $a2, -1504
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_514:                              # %vector.body5736
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_514
# %bb.515:                              # %vector.body5742.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_516:                              # %vector.body5742
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_516
# %bb.517:                              # %vector.body5748.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_518:                              # %vector.body5748
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
# %bb.519:                              # %vector.body5754.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_520:                              # %vector.body5754
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
# %bb.521:                              # %vector.body5760.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_522:                              # %vector.body5760
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
.LBB5_523:                              # %vector.body5694.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -264192
	xvreplgr2vr.w	$xr0, $a4
.LBB5_524:                              # %vector.body5694
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_524
# %bb.525:                              # %vector.body5700.preheader
	addu16i.d	$a2, $a0, 1
	addi.d	$a2, $a2, -1504
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_526:                              # %vector.body5700
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_526
# %bb.527:                              # %vector.body5706.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_528:                              # %vector.body5706
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_528
# %bb.529:                              # %vector.body5712.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_530:                              # %vector.body5712
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
# %bb.531:                              # %vector.body5718.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_532:                              # %vector.body5718
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
# %bb.533:                              # %vector.body5724.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_534:                              # %vector.body5724
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
.LBB5_535:                              # %vector.body5664.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_536:                              # %vector.body5664
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_536
# %bb.537:                              # %vector.body5670.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_538:                              # %vector.body5670
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_538
# %bb.539:                              # %vector.body5676.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_540:                              # %vector.body5676
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
# %bb.541:                              # %vector.body5682.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_542:                              # %vector.body5682
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
# %bb.543:                              # %vector.body5688.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_544:                              # %vector.body5688
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
.LBB5_545:                              # %vector.body5646.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_546:                              # %vector.body5646
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_546
# %bb.547:                              # %vector.body5652.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_548:                              # %vector.body5652
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
# %bb.549:                              # %vector.body5658.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_550:                              # %vector.body5658
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
.LBB5_551:                              # %vector.body5628.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_552:                              # %vector.body5628
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_552
# %bb.553:                              # %vector.body5634.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_554:                              # %vector.body5634
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
# %bb.555:                              # %vector.body5640.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_556:                              # %vector.body5640
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
.LBB5_558:                              # %vector.body5616
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_558
# %bb.559:                              # %vector.body5622.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_560:                              # %vector.body5622
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
.LBB5_562:                              # %vector.body5610
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
.LBB5_564:                              # %vector.body5604
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_564
	b	.LBB5_573
.LBB5_565:                              # %vector.body5598.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_566:                              # %vector.body5598
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
.LBB5_575:                              # %vector.body5570.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_576:                              # %vector.body5570
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
.LBB5_577:                              # %vector.body5564.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	ori	$a2, $a2, 8
	xvreplgr2vr.w	$xr0, $a2
.LBB5_578:                              # %vector.body5564
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_578
	b	.LBB5_573
.LBB5_579:                              # %vector.body5552.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_580:                              # %vector.body5552
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
# %bb.581:                              # %vector.body5558.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_582:                              # %vector.body5558
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
.LBB5_583:                              # %vector.body5546.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_584:                              # %vector.body5546
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
.LBB5_585:                              # %vector.body5540.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_586:                              # %vector.body5540
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
.LBB5_587:                              # %vector.body5534.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_588:                              # %vector.body5534
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
.LBB5_589:                              # %vector.body5528.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_590:                              # %vector.body5528
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
.LBB5_592:                              # %vector.body5510
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
# %bb.593:                              # %vector.body5516.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_594:                              # %vector.body5516
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
# %bb.595:                              # %vector.body5522.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_596:                              # %vector.body5522
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
.LBB5_600:                              # %vector.body5496.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_601:                              # %vector.body5496
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
.LBB5_602:                              # %vector.body5488.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_603:                              # %vector.body5488
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
.LBB5_605:                              # %vector.body5482.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_606:                              # %vector.body5482
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
.LBB5_608:                              # %vector.body5476.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_609:                              # %vector.body5476
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
.LBB5_611:                              # %vector.body5470.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 32
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_612:                              # %vector.body5470
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
.LBB5_614:                              # %vector.body5440.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_615:                              # %vector.body5440
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_615
# %bb.616:                              # %vector.body5446.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_617:                              # %vector.body5446
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_617
# %bb.618:                              # %vector.body5452.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_619:                              # %vector.body5452
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
# %bb.620:                              # %vector.body5458.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_621:                              # %vector.body5458
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
# %bb.622:                              # %vector.body5464.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_623:                              # %vector.body5464
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
.LBB5_624:                              # %vector.body5434.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_625:                              # %vector.body5434
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
.LBB5_627:                              # %vector.body5426.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_628:                              # %vector.body5426
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
.LBB5_632:                              # %vector.body5420
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
.LBB5_633:                              # %vector.body5408.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_634:                              # %vector.body5408
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
# %bb.635:                              # %vector.body5414.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_636:                              # %vector.body5414
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
.LBB5_641:                              # %vector.body5382.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu12i.w	$a1, 260096
	xvreplgr2vr.w	$xr0, $a1
.LBB5_642:                              # %vector.body5382
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_642
# %bb.643:                              # %vector.body5388.preheader
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1072
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_644:                              # %vector.body5388
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -16
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_644
	b	.LBB5_653
.LBB5_645:                              # %vector.body5370.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_646:                              # %vector.body5370
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
# %bb.647:                              # %vector.body5376.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_648:                              # %vector.body5376
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
.LBB5_649:                              # %vector.body5358.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu12i.w	$a1, 260096
	xvreplgr2vr.w	$xr0, $a1
.LBB5_650:                              # %vector.body5358
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_650
# %bb.651:                              # %vector.body5364.preheader
	lu12i.w	$a3, 31
	ori	$a3, $a3, 1072
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_652:                              # %vector.body5364
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
.LBB5_654:                              # %vector.body5340.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_655:                              # %vector.body5340
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_655
# %bb.656:                              # %vector.body5346.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_657:                              # %vector.body5346
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
# %bb.658:                              # %vector.body5352.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_659:                              # %vector.body5352
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
.LBB5_660:                              # %vector.body5322.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_661:                              # %vector.body5322
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_661
# %bb.662:                              # %vector.body5328.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_663:                              # %vector.body5328
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
# %bb.664:                              # %vector.body5334.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_665:                              # %vector.body5334
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
.LBB5_667:                              # %vector.body5298
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_667
# %bb.668:                              # %vector.body5304.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_669:                              # %vector.body5304
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_669
# %bb.670:                              # %vector.body5310.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_671:                              # %vector.body5310
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
# %bb.672:                              # %vector.body5316.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 132
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_673:                              # %vector.body5316
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
.LBB5_680:                              # %vector.body5258.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_681:                              # %vector.body5258
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_681
# %bb.682:                              # %vector.body5264.preheader
	lu12i.w	$a1, 31
	ori	$a3, $a1, 1044
	add.d	$a3, $a0, $a3
	ori	$a4, $zero, 2
	ori	$a5, $a2, 3328
.LBB5_683:                              # %vector.body5264
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
# %bb.684:                              # %vector.body5270.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2100
	add.d	$a3, $a0, $a3
	ori	$a4, $zero, 2
	ori	$a2, $a2, 3328
.LBB5_685:                              # %vector.body5270
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
.LBB5_688:                              # %vector.body5244.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a1, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
.LBB5_689:                              # %vector.body5244
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
# %bb.690:                              # %vector.body5252.preheader
	pcalau12i	$a1, %pc_hi20(global_data+128048)
	addi.d	$a1, $a1, %pc_lo12(global_data+128048)
	ori	$a0, $a0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
.LBB5_691:                              # %vector.body5252
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_691
	b	.LBB5_573
.LBB5_692:                              # %vector.body5230.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_693:                              # %vector.body5230
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_693
# %bb.694:                              # %vector.body5236.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	ori	$a1, $a1, 3328
.LBB5_695:                              # %vector.body5236
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
.LBB5_697:                              # %vector.body5222
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
.LBB5_698:                              # %vector.body5208.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu12i.w	$a3, 260096
	xvreplgr2vr.w	$xr0, $a3
.LBB5_699:                              # %vector.body5208
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_699
# %bb.700:                              # %vector.body5214.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	ori	$a1, $a1, 3328
.LBB5_701:                              # %vector.body5214
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
.LBB5_702:                              # %vector.body5194.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_703:                              # %vector.body5194
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_703
# %bb.704:                              # %vector.body5200.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_705:                              # %vector.body5200
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
.LBB5_706:                              # %vector.body5180.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_707:                              # %vector.body5180
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_707
# %bb.708:                              # %vector.body5186.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_709:                              # %vector.body5186
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
.LBB5_710:                              # %vector.body5150.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
.LBB5_711:                              # %vector.body5150
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_711
# %bb.712:                              # %vector.body5156.preheader
	lu12i.w	$a1, 31
	ori	$a0, $a1, 1044
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 2
	ori	$a3, $s0, 3328
.LBB5_713:                              # %vector.body5156
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
# %bb.714:                              # %vector.body5162.preheader
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2100
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 2
	ori	$a3, $s0, 3328
.LBB5_715:                              # %vector.body5162
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
# %bb.716:                              # %vector.body5168.preheader
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3184
	add.d	$a0, $fp, $a0
	ori	$a2, $s0, 3328
	lu12i.w	$a3, -264192
	xvreplgr2vr.w	$xr0, $a3
.LBB5_717:                              # %vector.body5168
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
.LBB5_719:                              # %vector.body5174
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_719
	b	.LBB5_573
.LBB5_720:                              # %vector.body5120.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_721:                              # %vector.body5120
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_721
# %bb.722:                              # %vector.body5126.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_723:                              # %vector.body5126
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
# %bb.724:                              # %vector.body5132.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_725:                              # %vector.body5132
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
# %bb.726:                              # %vector.body5138.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_727:                              # %vector.body5138
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
# %bb.728:                              # %vector.body5144.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_729:                              # %vector.body5144
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
.LBB5_730:                              # %vector.body5102.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_731:                              # %vector.body5102
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_731
# %bb.732:                              # %vector.body5108.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_733:                              # %vector.body5108
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
# %bb.734:                              # %vector.body5114.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_735:                              # %vector.body5114
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
.LBB5_736:                              # %vector.body5090.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a2, $a0, $a1
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_737:                              # %vector.body5090
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
# %bb.738:                              # %vector.body5096.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_739:                              # %vector.body5096
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
.LBB5_741:                              # %vector.body5078
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_741
# %bb.742:                              # %vector.body5084.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2128
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
	lu12i.w	$a2, 219235
	ori	$a2, $a2, 1981
	xvreplgr2vr.w	$xr0, $a2
.LBB5_743:                              # %vector.body5084
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
.LBB5_745:                              # %vector.body5070
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
.LBB5_746:                              # %vector.body5040.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_747:                              # %vector.body5040
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_747
# %bb.748:                              # %vector.body5046.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_749:                              # %vector.body5046
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_749
# %bb.750:                              # %vector.body5052.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_751:                              # %vector.body5052
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_751
# %bb.752:                              # %vector.body5058.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_753:                              # %vector.body5058
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
# %bb.754:                              # %vector.body5064.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 132
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_755:                              # %vector.body5064
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
.LBB5_756:                              # %vector.body5016.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_757:                              # %vector.body5016
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_757
# %bb.758:                              # %vector.body5022.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_759:                              # %vector.body5022
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
# %bb.760:                              # %vector.body5028.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_761:                              # %vector.body5028
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
# %bb.762:                              # %vector.body5034.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3156
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_763:                              # %vector.body5034
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
.LBB5_764:                              # %vector.body4998.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_765:                              # %vector.body4998
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_765
# %bb.766:                              # %vector.body5004.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_767:                              # %vector.body5004
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
# %bb.768:                              # %vector.body5010.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_769:                              # %vector.body5010
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
.LBB5_771:                              # %vector.body4980
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_771
# %bb.772:                              # %vector.body4986.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_773:                              # %vector.body4986
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
# %bb.774:                              # %vector.body4992.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_775:                              # %vector.body4992
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
.LBB5_776:                              # %vector.body4968.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_777:                              # %vector.body4968
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_777
# %bb.778:                              # %vector.body4974.preheader
	lu12i.w	$a1, 31
	ori	$a1, $a1, 1044
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 2
	ori	$a2, $a2, 3328
.LBB5_779:                              # %vector.body4974
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
.LBB5_781:                              # %vector.body4954
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -16
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_781
# %bb.782:                              # %vector.body4960.preheader
	lu12i.w	$a0, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI5_0)
	pcalau12i	$a2, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI5_1)
	ori	$a0, $a0, 2096
	add.d	$a0, $fp, $a0
	ori	$a1, $a1, 3328
.LBB5_783:                              # %vector.body4960
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
.LBB5_785:                              # %vector.body4936
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_785
# %bb.786:                              # %vector.body4942.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_787:                              # %vector.body4942
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
# %bb.788:                              # %vector.body4948.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_789:                              # %vector.body4948
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
.LBB5_790:                              # %vector.body4924.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_791:                              # %vector.body4924
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
# %bb.792:                              # %vector.body4930.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_793:                              # %vector.body4930
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
.LBB5_794:                              # %vector.body4910.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 2
	lu12i.w	$a3, 7
	ori	$a3, $a3, 3328
.LBB5_795:                              # %vector.body4910
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
.LBB5_799:                              # %vector.body4892
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -16
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_799
# %bb.800:                              # %vector.body4898.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2100
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a3, $a0, 3328
.LBB5_801:                              # %vector.body4898
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
# %bb.802:                              # %vector.body4904.preheader
	lu12i.w	$a1, 93
	ori	$a1, $a1, 3156
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 2
	ori	$a0, $a0, 3328
.LBB5_803:                              # %vector.body4904
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
.LBB5_804:                              # %vector.body4874.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_805:                              # %vector.body4874
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_805
# %bb.806:                              # %vector.body4880.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_807:                              # %vector.body4880
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
# %bb.808:                              # %vector.body4886.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_809:                              # %vector.body4886
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
.LBB5_811:                              # %vector.body4866
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
.LBB5_813:                              # %vector.body4858
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
.LBB5_815:                              # %vector.body4850
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
.LBB5_817:                              # %vector.body4842
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
.LBB5_819:                              # %vector.body4834
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
.LBB5_820:                              # %vector.body4822.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_821:                              # %vector.body4822
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_821
# %bb.822:                              # %vector.body4828.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_823:                              # %vector.body4828
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_823
	b	.LBB5_573
.LBB5_824:                              # %vector.body4804.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_825:                              # %vector.body4804
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_825
# %bb.826:                              # %vector.body4810.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 2
	ori	$a4, $a1, 3328
.LBB5_827:                              # %vector.body4810
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
# %bb.828:                              # %vector.body4816.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2100
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_829:                              # %vector.body4816
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
.LBB5_830:                              # %vector.body4790.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_831:                              # %vector.body4790
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_831
# %bb.832:                              # %vector.body4796.preheader
	lu12i.w	$a2, 31
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	pcalau12i	$a3, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI5_1)
	ori	$a2, $a2, 1040
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_833:                              # %vector.body4796
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
.LBB5_834:                              # %vector.body4772.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI5_1)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a1, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
.LBB5_835:                              # %vector.body4772
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
# %bb.836:                              # %vector.body4778.preheader
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a1, $a2
	ori	$a3, $a0, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_837:                              # %vector.body4778
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_837
# %bb.838:                              # %vector.body4784.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a1, $a1, $a2
	ori	$a0, $a0, 3328
	lu12i.w	$a2, -264192
	xvreplgr2vr.w	$xr0, $a2
.LBB5_839:                              # %vector.body4784
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -16
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_839
	b	.LBB5_573
.LBB5_840:                              # %vector.body4754.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 260096
	xvreplgr2vr.w	$xr0, $a4
.LBB5_841:                              # %vector.body4754
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_841
# %bb.842:                              # %vector.body4760.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1072
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, 262144
	xvreplgr2vr.w	$xr0, $a4
.LBB5_843:                              # %vector.body4760
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_843
# %bb.844:                              # %vector.body4766.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2128
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 258048
	xvreplgr2vr.w	$xr0, $a2
.LBB5_845:                              # %vector.body4766
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_845
	b	.LBB5_573
.LBB5_846:                              # %vector.body4748.preheader
	pcalau12i	$a0, %pc_hi20(global_data+4)
	addi.d	$a0, $a0, %pc_lo12(global_data+4)
	ori	$a1, $zero, 2
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_847:                              # %vector.body4748
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
.LBB5_848:                              # %vector.body4736.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 2
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_849:                              # %vector.body4736
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
# %bb.850:                              # %vector.body4742.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1044
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 2
	ori	$a1, $a1, 3328
.LBB5_851:                              # %vector.body4742
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
	.globl	s341                            # -- Begin function s341
	.p2align	5
	.type	s341,@function
s341:                                   # @s341
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 31
	ori	$a0, $a0, 1040
	add.d	$s0, $fp, $a0
	lu12i.w	$a0, 7
	ori	$s8, $a0, 3328
	movgr2fr.w	$fs0, $zero
	lu12i.w	$a0, 62
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
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB6_7
.LBB6_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	move	$a0, $s8
	move	$a1, $s0
	addi.d	$a2, $zero, -1
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB6_2
.LBB6_5:                                # %for.body4
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB6_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB6_5 Depth=2
	addi.w	$a2, $a2, 1
	slli.d	$a3, $a2, 2
	fstx.s	$fa0, $fp, $a3
	b	.LBB6_4
.LBB6_7:                                # %for.cond.cleanup
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
.LBB6_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB6_8
# %bb.9:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	s341, .Lfunc_end6-s341
                                        # -- End function
	.globl	s342                            # -- Begin function s342
	.p2align	5
	.type	s342,@function
s342:                                   # @s342
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
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_7
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	lu12i.w	$a0, 31
	ori	$s8, $a0, 1040
	add.d	$s0, $fp, $s8
	lu12i.w	$a0, 62
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
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB7_7
.LBB7_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	addi.d	$a2, $zero, -1
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	beqz	$a0, .LBB7_2
.LBB7_5:                                # %for.body4
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB7_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB7_5 Depth=2
	addi.w	$a2, $a2, 1
	alsl.d	$a3, $a2, $fp, 2
	fldx.s	$fa0, $a3, $s8
	fst.s	$fa0, $a1, 0
	b	.LBB7_4
.LBB7_7:                                # %for.cond.cleanup
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
.LBB7_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB7_8
# %bb.9:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
	ret
.Lfunc_end7:
	.size	s342, .Lfunc_end7-s342
                                        # -- End function
	.globl	s343                            # -- Begin function s343
	.p2align	5
	.type	s343,@function
s343:                                   # @s343
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
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$s8, $zero, 256
	blt	$a0, $s8, .LBB8_9
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$a0, 220
	ori	$a0, $a0, 1296
	add.d	$s0, $fp, $a0
	lu12i.w	$a0, 156
	ori	$a0, $a0, 1216
	add.d	$s1, $fp, $a0
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$s2, $a0, %pc_lo12(array)
	lu12i.w	$a0, 31
	ori	$a0, $a0, 1040
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 62
	ori	$a0, $a0, 2096
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 93
	ori	$a0, $a0, 3152
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 128
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 284
	ori	$a0, $a0, 1376
	add.d	$s6, $fp, $a0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s5
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $s6
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	bstrpick.d	$a1, $a0, 62, 55
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	bge	$s7, $a0, .LBB8_9
.LBB8_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #       Child Loop BB8_7 Depth 3
	move	$a0, $zero
	move	$a1, $s1
	move	$a2, $s0
	addi.d	$a3, $zero, -1
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_4:                                # %for.cond.cleanup7
                                        #   in Loop: Header=BB8_5 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	beq	$a0, $s8, .LBB8_2
.LBB8_5:                                # %for.cond5.preheader
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_7 Depth 3
	ori	$a4, $zero, 256
	move	$a5, $a1
	move	$a6, $a2
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=3
	addi.d	$a6, $a6, 1024
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1024
	beqz	$a4, .LBB8_4
.LBB8_7:                                # %for.body8
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa0, $a6, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB8_6
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB8_7 Depth=3
	fld.s	$fa0, $a5, 0
	addi.w	$a3, $a3, 1
	slli.d	$a7, $a3, 2
	fstx.s	$fa0, $s2, $a7
	b	.LBB8_6
.LBB8_9:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$fp, $a0, %pc_lo12(array)
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	lu12i.w	$a0, 16
	.p2align	4, , 16
.LBB8_10:                               # %for.body47.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fadd.s	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	addi.d	$fp, $fp, 4
	bnez	$a0, .LBB8_10
# %bb.11:                               # %check.exit
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
	ret
.Lfunc_end8:
	.size	s343, .Lfunc_end8-s343
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
.Lfunc_end9:
	.size	min, .Lfunc_end9-min
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function set
.LCPI10_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI10_1:
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
.LBB10_1:                               # %vector.body
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
	bnez	$a2, .LBB10_1
# %bb.2:                                # %vector.body89.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a2, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a2, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu12i.w	$a0, 260096
	xvreplgr2vr.w	$xr0, $a0
	.p2align	4, , 16
.LBB10_3:                               # %vector.body89
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_3
# %bb.4:                                # %vector.body95.preheader
	ori	$a3, $s2, 1072
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_5:                               # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_5
# %bb.6:                                # %vector.body101.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2128
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_7:                               # %vector.body101
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_7
# %bb.8:                                # %vector.body107.preheader
	lu12i.w	$a3, 93
	ori	$a3, $a3, 3184
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_9:                               # %vector.body107
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_9
# %bb.10:                               # %vector.body113.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 160
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_11:                              # %vector.body113
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_11
# %bb.12:                               # %for.cond2.preheader.i.preheader
	lu12i.w	$a3, 156
	ori	$a3, $a3, 1728
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB10_13:                              # %for.cond2.preheader.i
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
	bnez	$a5, .LBB10_13
# %bb.14:                               # %for.cond2.preheader.i43.preheader
	lu12i.w	$a3, 220
	ori	$a3, $a3, 1808
	add.d	$a3, $a2, $a3
	ori	$a4, $zero, 1
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB10_15:                              # %for.cond2.preheader.i43
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
	bnez	$a5, .LBB10_15
# %bb.16:                               # %for.cond2.preheader.i58.preheader
	lu12i.w	$a3, 284
	ori	$a3, $a3, 1888
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB10_17:                              # %for.cond2.preheader.i58
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
	bnez	$a4, .LBB10_17
# %bb.18:                               # %vector.body141.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI10_0)
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI10_1)
	pcalau12i	$a2, %pc_hi20(indx)
	addi.d	$a2, $a2, %pc_lo12(indx)
	ori	$a1, $a1, 3328
	xvrepli.w	$xr2, 3
	.p2align	4, , 16
.LBB10_19:                              # %vector.body141
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
	bnez	$a1, .LBB10_19
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
.Lfunc_end10:
	.size	set, .Lfunc_end10-set
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
	bge	$a0, $s0, .LBB11_3
# %bb.1:                                # %if.end
	ld.d	$a0, $fp, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ntimes)
	st.w	$a0, $a1, %pc_lo12(ntimes)
	addi.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB11_4
# %bb.2:                                # %if.then4
	ld.d	$a0, $fp, 16
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(digits)
	st.w	$a0, $a1, %pc_lo12(digits)
	b	.LBB11_4
.LBB11_3:                               # %if.end.thread
	pcalau12i	$a0, %pc_hi20(ntimes)
	ld.w	$a1, $a0, %pc_lo12(ntimes)
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a0, $a0, %pc_lo12(.L.str.141)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %if.end7
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 12
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(set)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s341)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s342)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s343)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
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
	.asciz	"S341\t %.2f \t\t"
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"S342\t %.2f \t\t"
	.size	.L.str.138, 14

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"S343\t %.2f \t\t"
	.size	.L.str.139, 14

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

	.type	.L.str.141,@object              # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"Running each loop %d times...\n"
	.size	.L.str.141, 31

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
