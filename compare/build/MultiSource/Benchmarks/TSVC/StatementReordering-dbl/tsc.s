	.file	"tsc.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set1d
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $a0, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB0_3
	b	.LBB0_8
.LBB0_4:                                # %vector.body33.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	addi.d	$a0, $a0, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB0_5:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB0_5
	b	.LBB0_8
.LBB0_6:                                # %for.body26.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 3
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB0_7:                                # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a0, 0
	add.d	$a2, $a2, $a1
	add.d	$a0, $a0, $a3
	blt	$a2, $a4, .LBB0_7
.LBB0_8:                                # %if.end32
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	set1d, .Lfunc_end0-set1d
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set1ds
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a1, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB1_3
	b	.LBB1_8
.LBB1_4:                                # %vector.body33.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_0)
	addi.d	$a0, $a1, 16
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB1_5:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB1_5
	b	.LBB1_8
.LBB1_6:                                # %for.body26.preheader
	move	$a0, $zero
	slli.d	$a3, $a2, 3
	lu12i.w	$a4, 7
	ori	$a4, $a4, 3328
	.p2align	4, , 16
.LBB1_7:                                # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a1, 0
	add.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a3
	blt	$a0, $a4, .LBB1_7
.LBB1_8:                                # %if.end32
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
# %bb.2:                                # %for.cond21.preheader.preheader
	addi.d	$a0, $a0, 1024
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB2_3:                                # %for.cond21.preheader
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB2_3
	b	.LBB2_10
.LBB2_4:                                # %for.cond2.preheader.preheader
	addi.d	$a0, $a0, 1024
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB2_5:                                # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB2_5
	b	.LBB2_10
.LBB2_6:                                # %for.cond48.preheader.preheader
	move	$a2, $zero
	slli.d	$a3, $a1, 3
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB2_7:                                # %for.cond48.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$a5, $zero
	move	$a6, $a0
	.p2align	4, , 16
.LBB2_8:                                # %for.body52
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a6, 0
	add.d	$a5, $a5, $a1
	add.d	$a6, $a6, $a3
	blt	$a5, $a4, .LBB2_8
# %bb.9:                                # %for.cond.cleanup51
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a2, $a4, .LBB2_7
.LBB2_10:                               # %if.end63
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
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
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
	movgr2fr.d	$fa0, $zero
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2080
	lu12i.w	$a4, 125
	ori	$a4, $a4, 64
	lu12i.w	$a5, 187
	ori	$a5, $a5, 2144
	lu12i.w	$a6, 250
	ori	$a6, $a6, 160
	fmov.d	$fa4, $fa0
	fmov.d	$fa3, $fa0
	fmov.d	$fa1, $fa0
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa5, $a1, 0
	fadd.d	$fa2, $fa2, $fa5
	fldx.d	$fa5, $a1, $a3
	fldx.d	$fa6, $a1, $a4
	fldx.d	$fa7, $a1, $a5
	fldx.d	$ft0, $a1, $a6
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa4, $fa4, $fa7
	fadd.d	$fa0, $fa0, $ft0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_1
# %bb.2:                                # %for.cond18.preheader.preheader
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$a4, $a2, %pc_lo12(global_data)
	lu12i.w	$a2, 568
	ori	$a2, $a2, 2464
	add.d	$a2, $a4, $a2
	lu12i.w	$a3, 440
	ori	$a3, $a3, 2368
	add.d	$a3, $a4, $a3
	lu12i.w	$a5, 312
	ori	$a5, $a5, 2272
	add.d	$a4, $a4, $a5
	movgr2fr.d	$fa5, $zero
	addi.w	$a5, $zero, -2048
	ori	$a6, $zero, 2048
	ori	$a7, $zero, 256
	fmov.d	$fa7, $fa5
	fmov.d	$fa6, $fa5
	.p2align	4, , 16
.LBB4_3:                                # %for.cond18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	move	$t0, $a5
	.p2align	4, , 16
.LBB4_4:                                # %for.body21
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a4, $t0
	fldx.d	$ft0, $t1, $a6
	add.d	$t1, $a3, $t0
	fldx.d	$ft1, $t1, $a6
	add.d	$t1, $a2, $t0
	fldx.d	$ft2, $t1, $a6
	fadd.d	$fa6, $fa6, $ft0
	fadd.d	$fa7, $fa7, $ft1
	addi.d	$t0, $t0, 8
	fadd.d	$fa5, $fa5, $ft2
	bnez	$t0, .LBB4_4
# %bb.5:                                # %for.cond.cleanup20
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a2, $a2, $a6
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a6
	bne	$a1, $a7, .LBB4_3
# %bb.6:                                # %for.body47.preheader
	movgr2fr.d	$ft0, $zero
	pcalau12i	$a1, %pc_hi20(array)
	addi.d	$a1, $a1, %pc_lo12(array)
	lu12i.w	$a2, 16
	.p2align	4, , 16
.LBB4_7:                                # %for.body47
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$ft1, $a1, 0
	fadd.d	$ft0, $ft0, $ft1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_7
# %bb.8:                                # %for.cond.cleanup46
	addi.d	$a1, $a0, 12
	ori	$a2, $zero, 135
	bltu	$a2, $a1, .LBB4_12
# %bb.9:                                # %for.cond.cleanup46
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_10:                               # %if.then129
	pcalau12i	$a0, %pc_hi20(temp)
	fld.d	$fa0, $a0, %pc_lo12(temp)
.LBB4_11:                               # %if.then93
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_12:                               # %for.cond.cleanup46
	ori	$a1, $zero, 1122
	beq	$a0, $a1, .LBB4_30
# %bb.13:                               # %for.cond.cleanup46
	lu12i.w	$a1, 27
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB4_15
# %bb.14:                               # %if.then114
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa6, $fa7
	fadd.d	$fa0, $fa0, $fa5
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_15:                               # %if.end132
	ret
.LBB4_16:                               # %if.then80
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa5
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_17:                               # %if.then98
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_18:                               # %if.then103
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa1
	fadd.d	$fa0, $fa0, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_19:                               # %if.then84
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $ft0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_20:                               # %if.then88
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_21:                               # %if.then125
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	pcalau12i	$a0, %pc_hi20(temp)
	ld.d	$a2, $a0, %pc_lo12(temp)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_22:                               # %if.then56
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_23:                               # %if.then
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_24:                               # %if.then60
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_25:                               # %if.then68
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_26:                               # %if.then72
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa6
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_27:                               # %if.then64
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_28:                               # %if.then76
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	movfr2gr.d	$a2, $fa7
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_29:                               # %if.then120
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa2, $fa6
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB4_30:                               # %if.then109
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa6, $fa7
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
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_21-.LJTI4_0
	.word	.LBB4_19-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_25-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_26-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_17-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_28-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_11-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_16-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_15-.LJTI4_0
	.word	.LBB4_18-.LJTI4_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
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
	beqz	$a0, .LBB5_604
# %bb.84:                               # %if.else604
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_607
# %bb.85:                               # %if.else610
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_610
# %bb.86:                               # %if.else617
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_613
# %bb.87:                               # %if.else626
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_623
# %bb.88:                               # %if.else632
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_626
# %bb.89:                               # %if.else637
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_630
# %bb.90:                               # %if.else643
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_632
# %bb.91:                               # %if.else649
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_636
# %bb.92:                               # %if.else655
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_640
# %bb.93:                               # %if.else661
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_644
# %bb.94:                               # %if.else667
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a1, $a0, %pc_lo12(.L.str.95)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_648
# %bb.95:                               # %if.else673
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a1, $a0, %pc_lo12(.L.str.96)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_653
# %bb.96:                               # %if.else680
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_659
# %bb.97:                               # %if.else687
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a1, $a0, %pc_lo12(.L.str.98)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_665
# %bb.98:                               # %if.else696
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a1, $a0, %pc_lo12(.L.str.99)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_673
# %bb.99:                               # %if.else703
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_679
# %bb.100:                              # %if.else711
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_686
# %bb.101:                              # %if.else717
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_690
# %bb.102:                              # %if.else723
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a1, $a0, %pc_lo12(.L.str.103)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_694
# %bb.103:                              # %if.else729
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_696
# %bb.104:                              # %if.else735
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_700
# %bb.105:                              # %if.else741
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a1, $a0, %pc_lo12(.L.str.106)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_704
# %bb.106:                              # %if.else747
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a1, $a0, %pc_lo12(.L.str.107)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_708
# %bb.107:                              # %if.else758
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_718
# %bb.108:                              # %if.else767
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_728
# %bb.109:                              # %if.else774
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_734
# %bb.110:                              # %if.else780
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_738
# %bb.111:                              # %if.else787
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_742
# %bb.112:                              # %if.else793
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_744
# %bb.113:                              # %if.else802
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_754
# %bb.114:                              # %if.else810
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a1, $a0, %pc_lo12(.L.str.115)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_762
# %bb.115:                              # %if.else817
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_768
# %bb.116:                              # %if.else825
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_774
# %bb.117:                              # %if.else831
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_778
# %bb.118:                              # %if.else838
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_782
# %bb.119:                              # %if.else846
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a1, $a0, %pc_lo12(.L.str.120)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_788
# %bb.120:                              # %if.else852
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_792
# %bb.121:                              # %if.else858
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a1, $a0, %pc_lo12(.L.str.122)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_796
# %bb.122:                              # %if.else866
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_802
# %bb.123:                              # %if.else873
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_808
# %bb.124:                              # %if.else879
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_810
# %bb.125:                              # %if.else885
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_812
# %bb.126:                              # %if.else891
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_814
# %bb.127:                              # %if.else897
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_816
# %bb.128:                              # %if.else903
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_818
# %bb.129:                              # %if.else909
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_822
# %bb.130:                              # %if.else916
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_828
# %bb.131:                              # %if.else922
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_832
# %bb.132:                              # %if.else930
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_838
# %bb.133:                              # %if.else937
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_844
# %bb.134:                              # %if.else942
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a1, $a0, %pc_lo12(.L.str.135)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_846
# %bb.135:                              # %if.else948
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a1, $a0, %pc_lo12(.L.str.136)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_573
# %bb.136:                              # %vector.body.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_137:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_137
# %bb.138:                              # %vector.body4555.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_139:                              # %vector.body4555
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_139
# %bb.140:                              # %vector.body4564.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_141:                              # %vector.body4564
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_141
# %bb.142:                              # %vector.body4573.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a2, 3328
.LBB5_143:                              # %vector.body4573
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_143
# %bb.144:                              # %vector.body4582.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a3, 176
	add.d	$a1, $a0, $a1
	ori	$a2, $a2, 3328
.LBB5_145:                              # %vector.body4582
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_145
# %bb.146:                              # %for.cond2.preheader.i3884.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_147:                              # %for.cond2.preheader.i3884
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_147
	b	.LBB5_573
.LBB5_148:                              # %vector.body7185.preheader
	pcalau12i	$a0, %pc_hi20(X+8)
	addi.d	$a0, $a0, %pc_lo12(X+8)
	pcalau12i	$a1, %pc_hi20(V+8)
	addi.d	$a1, $a1, %pc_lo12(V+8)
	pcalau12i	$a2, %pc_hi20(U+8)
	addi.d	$a2, $a2, %pc_lo12(U+8)
	pcalau12i	$a3, %pc_hi20(Z+8)
	addi.d	$a3, $a3, %pc_lo12(Z+8)
	pcalau12i	$a4, %pc_hi20(Y+8)
	addi.d	$a4, $a4, %pc_lo12(Y+8)
	ori	$a5, $zero, 6
	lu12i.w	$a6, 7
	ori	$a6, $a6, 3328
	.p2align	4, , 16
.LBB5_149:                              # %vector.body7185
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$t0, $a5, -5
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $a5, -4
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	movgr2fr.d	$fa1, $t1
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a0, -8
	fst.d	$fa1, $a0, 0
	addi.d	$t0, $a5, -3
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa1, $a4, -8
	fst.d	$fa0, $a4, 0
	addi.d	$t0, $a5, -2
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa1, $t0
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a3, -8
	fst.d	$fa1, $a3, 0
	addi.d	$t0, $a5, -1
	bstrpick.d	$t0, $t0, 31, 0
	movgr2fr.d	$fa0, $t0
	ffint.d.l	$fa0, $fa0
	fst.d	$fa1, $a2, -8
	fst.d	$fa0, $a2, 0
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fst.d	$fa0, $a1, -8
	fst.d	$fa1, $a1, 0
	addi.w	$a5, $a5, 2
	addi.d	$a0, $a0, 16
	addi.d	$a6, $a6, -2
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB5_149
	b	.LBB5_573
.LBB5_150:                              # %vector.body7143.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_151:                              # %vector.body7143
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_151
# %bb.152:                              # %vector.body7149.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_153:                              # %vector.body7149
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_153
# %bb.154:                              # %vector.body7158.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_155:                              # %vector.body7158
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_155
# %bb.156:                              # %vector.body7167.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB5_157:                              # %vector.body7167
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_157
# %bb.158:                              # %vector.body7176.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_159:                              # %vector.body7176
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_159
	b	.LBB5_573
.LBB5_160:                              # %vector.body7128.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_161:                              # %vector.body7128
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_161
# %bb.162:                              # %vector.body7134.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_163:                              # %vector.body7134
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_163
	b	.LBB5_573
.LBB5_164:                              # %vector.body7113.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	.p2align	4, , 16
.LBB5_165:                              # %vector.body7113
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_165
# %bb.166:                              # %vector.body7119.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	.p2align	4, , 16
.LBB5_167:                              # %vector.body7119
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_167
	b	.LBB5_573
.LBB5_168:                              # %for.cond2.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
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
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_169
# %bb.170:                              # %for.cond21.preheader.i.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB5_171:                              # %for.cond21.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB5_171
	b	.LBB5_573
.LBB5_172:                              # %vector.body7073.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_173:                              # %vector.body7073
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_173
# %bb.174:                              # %for.cond48.preheader.i.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_175:                              # %for.cond48.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_175
# %bb.176:                              # %for.cond48.preheader.i991.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB5_177:                              # %for.cond48.preheader.i991
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_177
# %bb.178:                              # %for.cond48.preheader.i1003.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	.p2align	4, , 16
.LBB5_179:                              # %for.cond48.preheader.i1003
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_179
	b	.LBB5_573
.LBB5_180:                              # %vector.body7067.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
	.p2align	4, , 16
.LBB5_181:                              # %vector.body7067
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_181
	b	.LBB5_573
.LBB5_182:                              # %vector.body7055.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_183:                              # %vector.body7055
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_183
# %bb.184:                              # %for.cond48.preheader.i1027.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu12i.w	$a2, -390306
	ori	$a2, $a2, 3469
	lu32i.d	$a2, 50935
	lu52i.d	$a2, $a2, 1003
	xvreplgr2vr.d	$xr0, $a2
	.p2align	4, , 16
.LBB5_185:                              # %for.cond48.preheader.i1027
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_185
	b	.LBB5_573
.LBB5_186:                              # %for.cond48.preheader.i1039.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	.p2align	4, , 16
.LBB5_187:                              # %for.cond48.preheader.i1039
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_187
# %bb.188:                              # %for.cond21.preheader.i1051.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
	.p2align	4, , 16
.LBB5_189:                              # %for.cond21.preheader.i1051
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB5_189
	b	.LBB5_573
.LBB5_190:                              # %vector.body7026.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_191:                              # %vector.body7026
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_191
# %bb.192:                              # %vector.body7032.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_193:                              # %vector.body7032
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_193
	b	.LBB5_573
.LBB5_194:                              # %vector.body7011.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_195:                              # %vector.body7011
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_195
# %bb.196:                              # %vector.body7017.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_197:                              # %vector.body7017
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_197
	b	.LBB5_573
.LBB5_198:                              # %for.body26.i1093.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_199:                              # %vector.body6981
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_199
# %bb.200:                              # %vector.body6987.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_201:                              # %vector.body6987
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_201
# %bb.202:                              # %vector.body6993.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_203:                              # %vector.body6993
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_203
# %bb.204:                              # %vector.body7002.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_205:                              # %vector.body7002
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_205
	b	.LBB5_573
.LBB5_206:                              # %for.body26.i1123.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_207:                              # %vector.body6951
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_207
# %bb.208:                              # %vector.body6957.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_209:                              # %vector.body6957
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_209
# %bb.210:                              # %vector.body6963.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_211:                              # %vector.body6963
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_211
# %bb.212:                              # %vector.body6972.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_213:                              # %vector.body6972
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_213
	b	.LBB5_573
.LBB5_214:                              # %for.body26.i1157.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_215:                              # %for.cond48.preheader.i1162
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_215
# %bb.216:                              # %for.cond48.preheader.i1174.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1022
	xvreplgr2vr.d	$xr0, $a3
.LBB5_217:                              # %for.cond48.preheader.i1174
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_217
# %bb.218:                              # %for.cond48.preheader.i1186.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu52i.d	$a2, $zero, 1024
	xvreplgr2vr.d	$xr0, $a2
.LBB5_219:                              # %for.cond48.preheader.i1186
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_219
	b	.LBB5_573
.LBB5_220:                              # %for.cond48.preheader.i1198.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_221:                              # %for.cond48.preheader.i1198
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_221
# %bb.222:                              # %vector.body6916.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(array+16)
	addi.d	$a1, $a1, %pc_lo12(array+16)
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_223:                              # %vector.body6916
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_223
# %bb.224:                              # %for.cond2.preheader.i1218.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_225:                              # %for.cond2.preheader.i1218
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_225
	b	.LBB5_573
.LBB5_226:                              # %for.body26.i1232.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_227:                              # %vector.body6877
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_227
# %bb.228:                              # %vector.body6883.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_229:                              # %vector.body6883
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_229
# %bb.230:                              # %vector.body6892.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_231:                              # %vector.body6892
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_231
# %bb.232:                              # %vector.body6901.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_233:                              # %vector.body6901
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_233
	b	.LBB5_573
.LBB5_234:                              # %for.body26.i1268.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr0, $a3
.LBB5_235:                              # %vector.body6859
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_235
# %bb.236:                              # %vector.body6865.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_237:                              # %vector.body6865
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_237
# %bb.238:                              # %vector.body6871.preheader
	lu12i.w	$a1, 187
	ori	$a1, $a1, 2176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_239:                              # %vector.body6871
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_239
	b	.LBB5_573
.LBB5_240:                              # %vector.body6844.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_241:                              # %vector.body6844
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_241
# %bb.242:                              # %vector.body6850.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_243:                              # %vector.body6850
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_243
	b	.LBB5_573
.LBB5_244:                              # %for.cond48.preheader.i1306.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_245:                              # %for.cond48.preheader.i1306
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_245
# %bb.246:                              # %vector.body6826.preheader
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2096
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	add.d	$a3, $a0, $a1
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_247:                              # %vector.body6826
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_247
# %bb.248:                              # %vector.body6835.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_249:                              # %vector.body6835
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_249
	b	.LBB5_573
.LBB5_250:                              # %vector.body6806.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_251:                              # %vector.body6806
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_251
# %bb.252:                              # %for.cond21.preheader.i1340.preheader
	pcalau12i	$a0, %pc_hi20(global_data+1805632)
	addi.d	$a0, $a0, %pc_lo12(global_data+1805632)
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_253:                              # %for.cond21.preheader.i1340
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB5_253
	b	.LBB5_573
.LBB5_254:                              # %vector.body6791.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_255:                              # %vector.body6791
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_255
# %bb.256:                              # %vector.body6797.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_257:                              # %vector.body6797
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_257
	b	.LBB5_573
.LBB5_258:                              # %vector.body6758.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_259:                              # %vector.body6758
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_259
# %bb.260:                              # %for.body26.i1374.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $fp, $a0
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 125
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a1, $a1, 80
	add.d	$a1, $fp, $a1
	ori	$a2, $s0, 3328
.LBB5_261:                              # %vector.body6764
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_261
# %bb.262:                              # %vector.body6773.preheader
	lu12i.w	$a1, 187
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a1, $a1, 2160
	add.d	$a1, $fp, $a1
	ori	$a2, $s0, 3328
.LBB5_263:                              # %vector.body6773
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_263
# %bb.264:                              # %vector.body6782.preheader
	lu12i.w	$a1, 250
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a1, 176
	add.d	$a0, $fp, $a0
	ori	$a1, $s0, 3328
.LBB5_265:                              # %vector.body6782
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_265
	b	.LBB5_573
.LBB5_266:                              # %vector.body6715.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_267:                              # %vector.body6715
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_267
# %bb.268:                              # %vector.body6721.preheader
	lu12i.w	$a3, 62
	ori	$a4, $a3, 2096
	add.d	$a5, $a0, $a4
	lu12i.w	$a4, 3
	ori	$a6, $a4, 3712
.LBB5_269:                              # %vector.body6721
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a5, -16
	st.d	$a2, $a5, 0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_269
# %bb.270:                              # %vector.body6727.preheader
	ori	$a2, $a3, 2104
	add.d	$a2, $a0, $a2
	ori	$a3, $a4, 3712
	lu52i.d	$a4, $zero, -1025
.LBB5_271:                              # %vector.body6727
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a2, -16
	st.d	$a4, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_271
# %bb.272:                              # %vector.body6734.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_273:                              # %vector.body6734
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_273
# %bb.274:                              # %vector.body6740.preheader
	lu12i.w	$a3, 187
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_275:                              # %vector.body6740
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_275
# %bb.276:                              # %vector.body6749.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_277:                              # %vector.body6749
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_277
	b	.LBB5_573
.LBB5_278:                              # %vector.body6691.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_279:                              # %vector.body6691
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_279
# %bb.280:                              # %vector.body6697.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_281:                              # %vector.body6697
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_281
# %bb.282:                              # %vector.body6706.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_283:                              # %vector.body6706
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_283
	b	.LBB5_573
.LBB5_284:                              # %vector.body6676.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_285:                              # %vector.body6676
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_285
# %bb.286:                              # %vector.body6682.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_287:                              # %vector.body6682
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_287
	b	.LBB5_573
.LBB5_288:                              # %vector.body6661.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_289:                              # %vector.body6661
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_289
# %bb.290:                              # %vector.body6667.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_291:                              # %vector.body6667
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_291
	b	.LBB5_573
.LBB5_292:                              # %vector.body6646.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_293:                              # %vector.body6646
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_293
# %bb.294:                              # %vector.body6652.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_295:                              # %vector.body6652
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_295
	b	.LBB5_573
.LBB5_296:                              # %vector.body6631.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_297:                              # %vector.body6631
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_297
# %bb.298:                              # %vector.body6637.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_299:                              # %vector.body6637
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_299
	b	.LBB5_573
.LBB5_300:                              # %vector.body6616.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_301:                              # %vector.body6616
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_301
# %bb.302:                              # %vector.body6622.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_303:                              # %vector.body6622
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_303
	b	.LBB5_573
.LBB5_304:                              # %vector.body6592.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_305:                              # %vector.body6592
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_305
# %bb.306:                              # %vector.body6598.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_307:                              # %vector.body6598
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_307
# %bb.308:                              # %vector.body6607.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_309:                              # %vector.body6607
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_309
	b	.LBB5_573
.LBB5_310:                              # %for.body26.i1558.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_311:                              # %vector.body6559
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_311
# %bb.312:                              # %vector.body6565.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_313:                              # %vector.body6565
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_313
# %bb.314:                              # %vector.body6574.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_315:                              # %vector.body6574
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_315
# %bb.316:                              # %vector.body6583.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_317:                              # %vector.body6583
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_317
	b	.LBB5_573
.LBB5_318:                              # %vector.body6529.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_319:                              # %vector.body6529
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_319
# %bb.320:                              # %vector.body6538.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a1, $a3
	ori	$a4, $a2, 3328
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr0, $a5
.LBB5_321:                              # %vector.body6538
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_321
# %bb.322:                              # %vector.body6544.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 96
	add.d	$a3, $a1, $a3
	ori	$a4, $a2, 3328
.LBB5_323:                              # %vector.body6544
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_323
# %bb.324:                              # %vector.body6550.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2160
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_325:                              # %vector.body6550
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_325
	b	.LBB5_573
.LBB5_326:                              # %vector.body6496.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_327:                              # %vector.body6496
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_327
# %bb.328:                              # %vector.body6502.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_329:                              # %vector.body6502
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_329
# %bb.330:                              # %vector.body6511.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_331:                              # %vector.body6511
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_331
# %bb.332:                              # %vector.body6520.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_333:                              # %vector.body6520
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_333
	b	.LBB5_573
.LBB5_334:                              # %for.body26.i1652.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_335:                              # %vector.body6484
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_335
# %bb.336:                              # %vector.body6490.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_337:                              # %vector.body6490
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_337
	b	.LBB5_573
.LBB5_338:                              # %for.cond48.preheader.i1670.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_339:                              # %for.cond48.preheader.i1670
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_339
# %bb.340:                              # %for.cond21.preheader.i1682.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_341:                              # %for.cond21.preheader.i1682
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB5_341
	b	.LBB5_573
.LBB5_342:                              # %for.cond48.preheader.i1696.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_343:                              # %for.cond48.preheader.i1696
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_343
# %bb.344:                              # %for.cond48.preheader.i1708.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 2368
	add.d	$a0, $a0, $a1
.LBB5_345:                              # %if.end1093
	lu12i.w	$a2, 128
.LBB5_346:                              # %if.end1093
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_347:                              # %for.cond2.preheader.i1720.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_348:                              # %for.cond2.preheader.i1720
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_348
# %bb.349:                              # %for.cond2.preheader.i1734.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_350:                              # %for.cond2.preheader.i1734
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_350
# %bb.351:                              # %for.cond2.preheader.i1748.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_352:                              # %for.cond2.preheader.i1748
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_352
	b	.LBB5_573
.LBB5_353:                              # %for.cond48.preheader.i1762.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_354:                              # %for.cond48.preheader.i1762
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_354
# %bb.355:                              # %for.cond2.preheader.i1774.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_356:                              # %for.cond2.preheader.i1774
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_356
# %bb.357:                              # %for.cond2.preheader.i1788.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_358:                              # %for.cond2.preheader.i1788
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_358
	b	.LBB5_573
.LBB5_359:                              # %vector.body6380.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_360:                              # %vector.body6380
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_360
# %bb.361:                              # %vector.body6386.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_362:                              # %vector.body6386
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 8
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 3
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vfrecip.d	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vst	$vr3, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_362
# %bb.363:                              # %vector.body6395.preheader
	lu12i.w	$a3, 125
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a2, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_364:                              # %vector.body6395
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 8
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 3
	vext2xv.du.wu	$xr3, $xr3
	xvffint.d.lu	$xr3, $xr3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vfrecip.d	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vst	$vr3, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB5_364
# %bb.365:                              # %for.cond48.preheader.i1824.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
.LBB5_366:                              # %for.cond48.preheader.i1824
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_366
# %bb.367:                              # %for.cond21.preheader.i1836.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 257
.LBB5_368:                              # %for.cond21.preheader.i1836
                                        # =>This Inner Loop Header: Depth=1
	mul.d	$a3, $a1, $a1
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB5_368
	b	.LBB5_573
.LBB5_369:                              # %vector.body6356.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_370:                              # %vector.body6356
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_370
# %bb.371:                              # %vector.body6362.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_372:                              # %vector.body6362
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_372
# %bb.373:                              # %vector.body6368.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_374:                              # %vector.body6368
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_374
# %bb.375:                              # %vector.body6374.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_376:                              # %vector.body6374
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_376
	b	.LBB5_573
.LBB5_377:                              # %vector.body6332.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr0, $a4
.LBB5_378:                              # %vector.body6332
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_378
# %bb.379:                              # %vector.body6338.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_380:                              # %vector.body6338
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_380
# %bb.381:                              # %vector.body6344.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_382:                              # %vector.body6344
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_382
# %bb.383:                              # %vector.body6350.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_384:                              # %vector.body6350
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_384
	b	.LBB5_573
.LBB5_385:                              # %for.body26.i1898.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_386:                              # %vector.body6299
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_386
# %bb.387:                              # %vector.body6305.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_388:                              # %vector.body6305
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_388
# %bb.389:                              # %vector.body6314.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_390:                              # %vector.body6314
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_390
# %bb.391:                              # %vector.body6323.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_392:                              # %vector.body6323
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_392
	b	.LBB5_573
.LBB5_393:                              # %for.body26.i1934.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_394:                              # %vector.body6281
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_394
# %bb.395:                              # %vector.body6287.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
.LBB5_396:                              # %vector.body6287
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_396
# %bb.397:                              # %vector.body6293.preheader
	lu12i.w	$a1, 187
	ori	$a1, $a1, 2176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_398:                              # %vector.body6293
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_398
	b	.LBB5_573
.LBB5_399:                              # %for.body26.i1958.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_400:                              # %vector.body6248
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_400
# %bb.401:                              # %vector.body6254.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_402:                              # %vector.body6254
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_402
# %bb.403:                              # %vector.body6263.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_404:                              # %vector.body6263
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_404
# %bb.405:                              # %vector.body6272.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_406:                              # %vector.body6272
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_406
	b	.LBB5_573
.LBB5_407:                              # %for.body26.i1994.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_408:                              # %vector.body6236
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_408
# %bb.409:                              # %vector.body6242.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_410:                              # %vector.body6242
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_410
	b	.LBB5_573
.LBB5_411:                              # %vector.body6209.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_412:                              # %vector.body6209
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_412
# %bb.413:                              # %vector.body6215.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr1, $a4
.LBB5_414:                              # %vector.body6215
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_414
# %bb.415:                              # %vector.body6221.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_416:                              # %vector.body6221
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_416
# %bb.417:                              # %vector.body6227.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_418:                              # %vector.body6227
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_418
	b	.LBB5_573
.LBB5_419:                              # %for.body26.i2038.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_420:                              # %vector.body6203
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_420
	b	.LBB5_573
.LBB5_421:                              # %for.body26.i2050.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_422:                              # %vector.body6197
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_422
	b	.LBB5_573
.LBB5_423:                              # %vector.body6179.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_424:                              # %vector.body6179
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_424
# %bb.425:                              # %for.cond48.preheader.i2068.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr1, $a3
.LBB5_426:                              # %for.cond48.preheader.i2068
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -1024
	xvst	$xr1, $a1, -992
	xvst	$xr1, $a1, -960
	xvst	$xr1, $a1, -928
	xvst	$xr1, $a1, -896
	xvst	$xr1, $a1, -864
	xvst	$xr1, $a1, -832
	xvst	$xr1, $a1, -800
	xvst	$xr1, $a1, -768
	xvst	$xr1, $a1, -736
	xvst	$xr1, $a1, -704
	xvst	$xr1, $a1, -672
	xvst	$xr1, $a1, -640
	xvst	$xr1, $a1, -608
	xvst	$xr1, $a1, -576
	xvst	$xr1, $a1, -544
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
	xvst	$xr1, $a1, 512
	xvst	$xr1, $a1, 544
	xvst	$xr1, $a1, 576
	xvst	$xr1, $a1, 608
	xvst	$xr1, $a1, 640
	xvst	$xr1, $a1, 672
	xvst	$xr1, $a1, 704
	xvst	$xr1, $a1, 736
	xvst	$xr1, $a1, 768
	xvst	$xr1, $a1, 800
	xvst	$xr1, $a1, 832
	xvst	$xr1, $a1, 864
	xvst	$xr1, $a1, 896
	xvst	$xr1, $a1, 928
	xvst	$xr1, $a1, 960
	xvst	$xr1, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_426
# %bb.427:                              # %for.cond48.preheader.i2080.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_428:                              # %for.cond48.preheader.i2080
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_428
	b	.LBB5_573
.LBB5_429:                              # %vector.body6161.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_430:                              # %vector.body6161
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_430
# %bb.431:                              # %for.cond48.preheader.i2098.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1024
	xvreplgr2vr.d	$xr1, $a3
.LBB5_432:                              # %for.cond48.preheader.i2098
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a1, -1024
	xvst	$xr1, $a1, -992
	xvst	$xr1, $a1, -960
	xvst	$xr1, $a1, -928
	xvst	$xr1, $a1, -896
	xvst	$xr1, $a1, -864
	xvst	$xr1, $a1, -832
	xvst	$xr1, $a1, -800
	xvst	$xr1, $a1, -768
	xvst	$xr1, $a1, -736
	xvst	$xr1, $a1, -704
	xvst	$xr1, $a1, -672
	xvst	$xr1, $a1, -640
	xvst	$xr1, $a1, -608
	xvst	$xr1, $a1, -576
	xvst	$xr1, $a1, -544
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
	xvst	$xr1, $a1, 512
	xvst	$xr1, $a1, 544
	xvst	$xr1, $a1, 576
	xvst	$xr1, $a1, 608
	xvst	$xr1, $a1, 640
	xvst	$xr1, $a1, 672
	xvst	$xr1, $a1, 704
	xvst	$xr1, $a1, 736
	xvst	$xr1, $a1, 768
	xvst	$xr1, $a1, 800
	xvst	$xr1, $a1, 832
	xvst	$xr1, $a1, 864
	xvst	$xr1, $a1, 896
	xvst	$xr1, $a1, 928
	xvst	$xr1, $a1, 960
	xvst	$xr1, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_432
# %bb.433:                              # %for.cond48.preheader.i2110.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_434:                              # %for.cond48.preheader.i2110
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_434
	b	.LBB5_573
.LBB5_435:                              # %vector.body6126.preheader
	pcalau12i	$s1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $s1, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 16
	lu12i.w	$s2, 7
	ori	$a1, $s2, 3328
.LBB5_436:                              # %vector.body6126
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_436
# %bb.437:                              # %for.body26.i2130.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $s0, $a0
	ori	$fp, $a1, 2048
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	vld	$vr0, $s1, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 80
	add.d	$a0, $s0, $a0
	ori	$a1, $s2, 3328
.LBB5_438:                              # %vector.body6135
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_438
# %bb.439:                              # %vector.body6144.preheader
	lu12i.w	$a0, 187
	vld	$vr0, $s1, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 2160
	add.d	$a0, $s0, $a0
	ori	$a1, $s2, 3328
.LBB5_440:                              # %vector.body6144
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_440
# %bb.441:                              # %for.body26.i2152.preheader
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$a0, $s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 3296
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_442:                              # %for.cond2.preheader.i2158
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_442
	b	.LBB5_573
.LBB5_443:                              # %vector.body6096.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_444:                              # %vector.body6096
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_444
# %bb.445:                              # %vector.body6102.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_446:                              # %vector.body6102
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr1, 1
	vaddi.du	$vr3, $vr1, 3
	vmul.d	$vr2, $vr2, $vr2
	vmul.d	$vr3, $vr3, $vr3
	vffint.d.lu	$vr2, $vr2
	vffint.d.lu	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr3, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_446
# %bb.447:                              # %vector.body6111.preheader
	lu12i.w	$a3, 125
	vld	$vr1, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_448:                              # %vector.body6111
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr2, $vr1, 1
	vaddi.du	$vr3, $vr1, 3
	vmul.d	$vr2, $vr2, $vr2
	vmul.d	$vr3, $vr3, $vr3
	vffint.d.lu	$vr2, $vr2
	vffint.d.lu	$vr3, $vr3
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr3, $vr3
	vst	$vr2, $a2, -16
	vst	$vr3, $a2, 0
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_448
# %bb.449:                              # %vector.body6120.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_450:                              # %vector.body6120
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_450
	b	.LBB5_573
.LBB5_451:                              # %vector.body6072.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_452:                              # %vector.body6072
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_452
# %bb.453:                              # %vector.body6078.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_454:                              # %vector.body6078
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_454
# %bb.455:                              # %vector.body6087.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_456:                              # %vector.body6087
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_456
	b	.LBB5_573
.LBB5_457:                              # %vector.body6036.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_458:                              # %vector.body6036
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_458
# %bb.459:                              # %vector.body6042.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_460:                              # %vector.body6042
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_460
# %bb.461:                              # %vector.body6048.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_462:                              # %vector.body6048
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_462
# %bb.463:                              # %vector.body6057.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_464:                              # %vector.body6057
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_464
# %bb.465:                              # %vector.body6066.preheader
	lu12i.w	$a2, 250
	ori	$a2, $a2, 192
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1024
	xvreplgr2vr.d	$xr0, $a2
.LBB5_466:                              # %vector.body6066
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_466
	b	.LBB5_573
.LBB5_467:                              # %vector.body6003.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_468:                              # %vector.body6003
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_468
# %bb.469:                              # %vector.body6009.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_470:                              # %vector.body6009
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_470
# %bb.471:                              # %vector.body6015.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_472:                              # %vector.body6015
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_472
# %bb.473:                              # %vector.body6021.preheader
	lu12i.w	$a2, 187
	ori	$a2, $a2, 2176
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu12i.w	$a4, -390306
	ori	$a4, $a4, 3469
	lu32i.d	$a4, 50935
	lu52i.d	$a4, $a4, 1003
	xvreplgr2vr.d	$xr0, $a4
.LBB5_474:                              # %vector.body6021
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_474
# %bb.475:                              # %vector.body6027.preheader
	lu12i.w	$a2, 250
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_476:                              # %vector.body6027
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_476
	b	.LBB5_573
.LBB5_477:                              # %for.body26.i2288.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_478:                              # %vector.body5973
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_478
# %bb.479:                              # %vector.body5979.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_480:                              # %vector.body5979
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_480
# %bb.481:                              # %vector.body5985.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_482:                              # %vector.body5985
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_482
# %bb.483:                              # %vector.body5994.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_484:                              # %vector.body5994
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_484
	b	.LBB5_573
.LBB5_485:                              # %for.cond48.preheader.i2322.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_486:                              # %for.cond48.preheader.i2322
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_486
# %bb.487:                              # %for.cond48.preheader.i2334.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu12i.w	$a3, -390306
	ori	$a3, $a3, 3469
	lu32i.d	$a3, 50935
	lu52i.d	$a3, $a3, 1003
	xvreplgr2vr.d	$xr0, $a3
.LBB5_488:                              # %for.cond48.preheader.i2334
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_488
# %bb.489:                              # %for.cond48.preheader.i2346.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
.LBB5_490:                              # %for.cond48.preheader.i2346
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_490
	b	.LBB5_573
.LBB5_491:                              # %vector.body5922.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_492:                              # %vector.body5922
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_492
# %bb.493:                              # %vector.body5928.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_494:                              # %vector.body5928
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_494
# %bb.495:                              # %vector.body5937.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_496:                              # %vector.body5937
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_496
# %bb.497:                              # %vector.body5946.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_498:                              # %vector.body5946
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_498
	b	.LBB5_573
.LBB5_499:                              # %vector.body5877.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_500:                              # %vector.body5877
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_500
# %bb.501:                              # %vector.body5883.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_502:                              # %vector.body5883
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_502
# %bb.503:                              # %vector.body5889.preheader
	lu12i.w	$a2, 93
	ori	$a2, $a2, 3136
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_504:                              # %vector.body5889
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_504
# %bb.505:                              # %vector.body5895.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_506:                              # %vector.body5895
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_506
# %bb.507:                              # %vector.body5904.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_508:                              # %vector.body5904
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_508
# %bb.509:                              # %vector.body5913.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_510:                              # %vector.body5913
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_510
	b	.LBB5_573
.LBB5_511:                              # %vector.body5832.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_512:                              # %vector.body5832
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_512
# %bb.513:                              # %vector.body5838.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1056
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_514:                              # %vector.body5838
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_514
# %bb.515:                              # %vector.body5844.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_516:                              # %vector.body5844
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_516
# %bb.517:                              # %vector.body5850.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_518:                              # %vector.body5850
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_518
# %bb.519:                              # %vector.body5859.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_520:                              # %vector.body5859
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_520
# %bb.521:                              # %vector.body5868.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_522:                              # %vector.body5868
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_522
	b	.LBB5_573
.LBB5_523:                              # %vector.body5787.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, -1025
	xvreplgr2vr.d	$xr0, $a4
.LBB5_524:                              # %vector.body5787
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_524
# %bb.525:                              # %vector.body5793.preheader
	lu12i.w	$a2, 31
	ori	$a2, $a2, 1056
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_526:                              # %vector.body5793
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_526
# %bb.527:                              # %vector.body5799.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_528:                              # %vector.body5799
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_528
# %bb.529:                              # %vector.body5805.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_530:                              # %vector.body5805
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_530
# %bb.531:                              # %vector.body5814.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_532:                              # %vector.body5814
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_532
# %bb.533:                              # %vector.body5823.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_534:                              # %vector.body5823
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_534
	b	.LBB5_573
.LBB5_535:                              # %vector.body5748.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_536:                              # %vector.body5748
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_536
# %bb.537:                              # %vector.body5754.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_538:                              # %vector.body5754
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_538
# %bb.539:                              # %vector.body5760.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_540:                              # %vector.body5760
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_540
# %bb.541:                              # %vector.body5769.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_542:                              # %vector.body5769
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_542
# %bb.543:                              # %vector.body5778.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_544:                              # %vector.body5778
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_544
	b	.LBB5_573
.LBB5_545:                              # %vector.body5724.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_546:                              # %vector.body5724
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_546
# %bb.547:                              # %vector.body5730.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_548:                              # %vector.body5730
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_548
# %bb.549:                              # %vector.body5739.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_550:                              # %vector.body5739
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_550
	b	.LBB5_573
.LBB5_551:                              # %vector.body5700.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_552:                              # %vector.body5700
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_552
# %bb.553:                              # %vector.body5706.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_554:                              # %vector.body5706
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_554
# %bb.555:                              # %vector.body5715.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_556:                              # %vector.body5715
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_556
	b	.LBB5_573
.LBB5_557:                              # %for.body26.i2594.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_558:                              # %vector.body5688
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_558
# %bb.559:                              # %vector.body5694.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_560:                              # %vector.body5694
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_560
	b	.LBB5_573
.LBB5_561:                              # %for.body26.i2612.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_562:                              # %vector.body5682
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_562
	b	.LBB5_573
.LBB5_563:                              # %for.body26.i2624.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_564:                              # %vector.body5676
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_564
	b	.LBB5_573
.LBB5_565:                              # %vector.body5667.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_566:                              # %vector.body5667
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_566
	b	.LBB5_573
.LBB5_567:                              # %for.cond48.preheader.i2644.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_568:                              # %for.cond48.preheader.i2644
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_568
# %bb.569:                              # %for.cond2.preheader.i2656.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_570:                              # %for.cond2.preheader.i2656
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_570
# %bb.571:                              # %for.cond2.preheader.i2670.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_572:                              # %for.cond2.preheader.i2670
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_572
.LBB5_573:                              # %if.end1093
	move	$a0, $zero
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB5_574:                              # %for.cond48.preheader.i2684.preheader
	pcalau12i	$a0, %pc_hi20(global_data+1280224)
	addi.d	$a0, $a0, %pc_lo12(global_data+1280224)
	b	.LBB5_345
.LBB5_575:                              # %vector.body5636.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_576:                              # %vector.body5636
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_576
	b	.LBB5_573
.LBB5_577:                              # %vector.body5630.preheader
	pcalau12i	$a0, %pc_hi20(global_data+32)
	addi.d	$a0, $a0, %pc_lo12(global_data+32)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu12i.w	$a2, 50935
	ori	$a2, $a2, 2571
	lu32i.d	$a2, 1
	lu52i.d	$a2, $a2, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_578:                              # %vector.body5630
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_578
	b	.LBB5_573
.LBB5_579:                              # %vector.body5612.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_580:                              # %vector.body5612
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_580
# %bb.581:                              # %vector.body5621.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_582:                              # %vector.body5621
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_582
	b	.LBB5_573
.LBB5_583:                              # %vector.body5603.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_584:                              # %vector.body5603
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_584
	b	.LBB5_573
.LBB5_585:                              # %vector.body5594.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_586:                              # %vector.body5594
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_586
	b	.LBB5_573
.LBB5_587:                              # %vector.body5585.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_588:                              # %vector.body5585
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_588
	b	.LBB5_573
.LBB5_589:                              # %vector.body5576.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_590:                              # %vector.body5576
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_590
	b	.LBB5_606
.LBB5_591:                              # %for.body26.i2770.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s1, 62
	ori	$s0, $s1, 2048
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s1, 2080
	add.d	$a0, $fp, $a0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 80
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a2, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a3, $a0, 3328
.LBB5_592:                              # %vector.body5549
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_592
# %bb.593:                              # %vector.body5558.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_594:                              # %vector.body5558
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_594
# %bb.595:                              # %vector.body5567.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_596:                              # %vector.body5567
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_596
	b	.LBB5_573
.LBB5_597:                              # %for.cond2.preheader.i2806.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_598:                              # %for.cond2.preheader.i2806
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_598
# %bb.599:                              # %set2d.exit2819
	lu12i.w	$a1, 440
	ori	$a1, $a1, 2264
	b	.LBB5_629
.LBB5_600:                              # %vector.body5532.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_601:                              # %vector.body5532
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_601
	b	.LBB5_573
.LBB5_602:                              # %vector.body5523.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_603:                              # %vector.body5523
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_603
	b	.LBB5_609
.LBB5_604:                              # %vector.body5514.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_605:                              # %vector.body5514
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_605
.LBB5_606:                              # %set1d.exit2769
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2040
	lu52i.d	$a2, $zero, -1024
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_607:                              # %vector.body5508.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_608:                              # %vector.body5508
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_608
.LBB5_609:                              # %for.body26.i2836.preheader
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2080
	add.d	$a0, $a0, $a2
	ori	$a2, $a1, 2048
	b	.LBB5_346
.LBB5_610:                              # %vector.body5502.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$s0, $a0, %pc_lo12(global_data)
	addi.d	$a0, $s0, 32
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_611:                              # %vector.body5502
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_611
# %bb.612:                              # %for.body26.i2868.preheader
	lu12i.w	$a1, 62
	ori	$a0, $a1, 2080
	add.d	$a0, $s0, $a0
	ori	$fp, $a1, 2048
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 125
	ori	$a0, $a0, 64
	add.d	$a0, $s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_573
.LBB5_613:                              # %vector.body5463.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_614:                              # %vector.body5463
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_614
# %bb.615:                              # %vector.body5469.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_616:                              # %vector.body5469
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_616
# %bb.617:                              # %vector.body5475.preheader
	lu12i.w	$a3, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_618:                              # %vector.body5475
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_618
# %bb.619:                              # %vector.body5484.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_620:                              # %vector.body5484
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_620
# %bb.621:                              # %vector.body5493.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_622:                              # %vector.body5493
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_622
	b	.LBB5_573
.LBB5_623:                              # %vector.body5454.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_624:                              # %vector.body5454
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_624
# %bb.625:                              # %set1d.exit2923
	lu12i.w	$a1, 62
	b	.LBB5_685
.LBB5_626:                              # %vector.body5445.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_627:                              # %vector.body5445
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a1, -16
	vst	$vr2, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_627
# %bb.628:                              # %set1d.exit2931
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2040
.LBB5_629:                              # %if.end1093
	lu52i.d	$a2, $zero, 1024
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_630:                              # %for.body26.i2932.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_631:                              # %vector.body5436
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_631
	b	.LBB5_573
.LBB5_632:                              # %vector.body5418.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_633:                              # %vector.body5418
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_633
# %bb.634:                              # %vector.body5427.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_635:                              # %vector.body5427
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_635
	b	.LBB5_573
.LBB5_636:                              # %for.cond2.preheader.i2962.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_637:                              # %for.cond2.preheader.i2962
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_637
# %bb.638:                              # %for.cond48.preheader.i2976.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 256
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_639:                              # %for.cond48.preheader.i2976
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB5_639
	b	.LBB5_573
.LBB5_640:                              # %vector.body5392.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu52i.d	$a1, $zero, 1023
	xvreplgr2vr.d	$xr0, $a1
.LBB5_641:                              # %vector.body5392
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_641
# %bb.642:                              # %vector.body5398.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_643:                              # %vector.body5398
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_643
	b	.LBB5_652
.LBB5_644:                              # %vector.body5374.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_645:                              # %vector.body5374
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_645
# %bb.646:                              # %vector.body5383.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_647:                              # %vector.body5383
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_647
	b	.LBB5_573
.LBB5_648:                              # %vector.body5362.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a0, 32
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
	lu52i.d	$a1, $zero, 1023
	xvreplgr2vr.d	$xr0, $a1
.LBB5_649:                              # %vector.body5362
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_649
# %bb.650:                              # %vector.body5368.preheader
	lu12i.w	$a3, 62
	ori	$a3, $a3, 2112
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_651:                              # %vector.body5368
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 64
	bnez	$a2, .LBB5_651
.LBB5_652:                              # %set1d.exit2999
	lu12i.w	$a2, 125
	ori	$a2, $a2, 64
	stx.d	$a1, $a0, $a2
	b	.LBB5_573
.LBB5_653:                              # %vector.body5338.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_654:                              # %vector.body5338
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_654
# %bb.655:                              # %vector.body5344.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_656:                              # %vector.body5344
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_656
# %bb.657:                              # %vector.body5353.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_658:                              # %vector.body5353
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_658
	b	.LBB5_573
.LBB5_659:                              # %vector.body5314.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_660:                              # %vector.body5314
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_660
# %bb.661:                              # %vector.body5320.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_662:                              # %vector.body5320
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_662
# %bb.663:                              # %vector.body5329.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_664:                              # %vector.body5329
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_664
	b	.LBB5_573
.LBB5_665:                              # %for.body26.i3072.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_666:                              # %vector.body5284
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_666
# %bb.667:                              # %vector.body5290.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a2, $a0, 3328
.LBB5_668:                              # %vector.body5290
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_668
# %bb.669:                              # %vector.body5296.preheader
	lu12i.w	$a2, 187
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2160
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_670:                              # %vector.body5296
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_670
# %bb.671:                              # %vector.body5305.preheader
	lu12i.w	$a2, 250
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 176
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_672:                              # %vector.body5305
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_672
	b	.LBB5_573
.LBB5_673:                              # %for.cond48.preheader.i3106.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 256
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_674:                              # %for.cond48.preheader.i3106
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB5_674
# %bb.675:                              # %for.cond2.preheader.i3118.preheader
	lu12i.w	$a1, 440
	ori	$a1, $a1, 3392
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 256
.LBB5_676:                              # %for.cond2.preheader.i3118
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	movgr2fr.d	$fa0, $a4
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a1, -1024
	xvst	$xr0, $a1, -992
	xvst	$xr0, $a1, -960
	xvst	$xr0, $a1, -928
	xvst	$xr0, $a1, -896
	xvst	$xr0, $a1, -864
	xvst	$xr0, $a1, -832
	xvst	$xr0, $a1, -800
	xvst	$xr0, $a1, -768
	xvst	$xr0, $a1, -736
	xvst	$xr0, $a1, -704
	xvst	$xr0, $a1, -672
	xvst	$xr0, $a1, -640
	xvst	$xr0, $a1, -608
	xvst	$xr0, $a1, -576
	xvst	$xr0, $a1, -544
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
	xvst	$xr0, $a1, 512
	xvst	$xr0, $a1, 544
	xvst	$xr0, $a1, 576
	xvst	$xr0, $a1, 608
	xvst	$xr0, $a1, 640
	xvst	$xr0, $a1, 672
	xvst	$xr0, $a1, 704
	xvst	$xr0, $a1, 736
	xvst	$xr0, $a1, 768
	xvst	$xr0, $a1, 800
	xvst	$xr0, $a1, 832
	xvst	$xr0, $a1, 864
	xvst	$xr0, $a1, 896
	xvst	$xr0, $a1, 928
	xvst	$xr0, $a1, 960
	xvst	$xr0, $a1, 992
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2047
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_676
# %bb.677:                              # %for.cond2.preheader.i3132.preheader
	lu12i.w	$a1, 568
	ori	$a1, $a1, 3488
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_678:                              # %for.cond2.preheader.i3132
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_678
	b	.LBB5_573
.LBB5_679:                              # %vector.body5238.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 32
	lu12i.w	$a2, 7
	ori	$a3, $a2, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_680:                              # %vector.body5238
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB5_680
# %bb.681:                              # %vector.body5244.preheader
	lu12i.w	$a1, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a4, $a1, 2096
	add.d	$a4, $a0, $a4
	ori	$a5, $a2, 3328
.LBB5_682:                              # %vector.body5244
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a4, -16
	vst	$vr1, $a4, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_682
# %bb.683:                              # %vector.body5253.preheader
	lu12i.w	$a4, 125
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a3, $a4, 80
	add.d	$a3, $a0, $a3
	ori	$a2, $a2, 3328
.LBB5_684:                              # %vector.body5253
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB5_684
.LBB5_685:                              # %set1d.exit3167
	ori	$a1, $a1, 2040
	lu52i.d	$a2, $zero, -1025
	stx.d	$a2, $a0, $a1
	b	.LBB5_573
.LBB5_686:                              # %vector.body5223.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 16
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
.LBB5_687:                              # %vector.body5223
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_687
# %bb.688:                              # %vector.body5232.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
.LBB5_689:                              # %vector.body5232
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_689
	b	.LBB5_573
.LBB5_690:                              # %vector.body5208.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_691:                              # %vector.body5208
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_691
# %bb.692:                              # %vector.body5214.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	ori	$a1, $a1, 3328
.LBB5_693:                              # %vector.body5214
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_693
	b	.LBB5_573
.LBB5_694:                              # %for.body26.i3196.preheader
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$a0, $a0, %pc_lo12(array)
	lu12i.w	$a1, 62
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_695:                              # %vector.body5199
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_695
	b	.LBB5_573
.LBB5_696:                              # %vector.body5184.preheader
	pcalau12i	$a0, %pc_hi20(array+32)
	addi.d	$a0, $a0, %pc_lo12(array+32)
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_697:                              # %vector.body5184
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_697
# %bb.698:                              # %vector.body5190.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	ori	$a1, $a1, 3328
.LBB5_699:                              # %vector.body5190
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_699
	b	.LBB5_573
.LBB5_700:                              # %vector.body5169.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_701:                              # %vector.body5169
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_701
# %bb.702:                              # %vector.body5175.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_703:                              # %vector.body5175
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_703
	b	.LBB5_573
.LBB5_704:                              # %vector.body5154.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_705:                              # %vector.body5154
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_705
# %bb.706:                              # %vector.body5160.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_707:                              # %vector.body5160
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_707
	b	.LBB5_573
.LBB5_708:                              # %vector.body5118.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	addi.d	$a0, $fp, 32
	lu12i.w	$s0, 7
	ori	$a1, $s0, 3328
	lu52i.d	$a2, $zero, 1023
	xvreplgr2vr.d	$xr0, $a2
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
.LBB5_709:                              # %vector.body5118
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_709
# %bb.710:                              # %vector.body5124.preheader
	lu12i.w	$a1, 62
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a2, $a1, 2096
	add.d	$a2, $fp, $a2
	ori	$a3, $s0, 3328
.LBB5_711:                              # %vector.body5124
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_711
# %bb.712:                              # %vector.body5133.preheader
	lu12i.w	$a2, 125
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a2, 80
	add.d	$a0, $fp, $a0
	ori	$a2, $s0, 3328
.LBB5_713:                              # %vector.body5133
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB5_713
# %bb.714:                              # %vector.body5142.preheader
	lu12i.w	$a0, 187
	ori	$a0, $a0, 2176
	add.d	$a0, $fp, $a0
	ori	$a2, $s0, 3328
	lu52i.d	$a3, $zero, -1025
	xvreplgr2vr.d	$xr0, $a3
.LBB5_715:                              # %vector.body5142
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_715
# %bb.716:                              # %for.body26.i3280.preheader
	addu16i.d	$a0, $fp, 13
	addi.d	$a0, $a0, 1456
	ori	$a2, $a1, 2048
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 229
	ori	$a0, $a0, 808
	add.d	$a0, $fp, $a0
	ori	$a1, $s0, 3328
.LBB5_717:                              # %vector.body5148
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_717
	b	.LBB5_573
.LBB5_718:                              # %vector.body5076.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_719:                              # %vector.body5076
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_719
# %bb.720:                              # %vector.body5082.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_721:                              # %vector.body5082
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_721
# %bb.722:                              # %vector.body5091.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_723:                              # %vector.body5091
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_723
# %bb.724:                              # %vector.body5100.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_725:                              # %vector.body5100
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_725
# %bb.726:                              # %vector.body5109.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_727:                              # %vector.body5109
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_727
	b	.LBB5_573
.LBB5_728:                              # %vector.body5052.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_729:                              # %vector.body5052
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_729
# %bb.730:                              # %vector.body5058.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_731:                              # %vector.body5058
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_731
# %bb.732:                              # %vector.body5067.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_733:                              # %vector.body5067
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_733
	b	.LBB5_573
.LBB5_734:                              # %vector.body5034.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	lu12i.w	$a1, 62
	ori	$a1, $a1, 2096
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	add.d	$a3, $a0, $a1
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
.LBB5_735:                              # %vector.body5034
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_735
# %bb.736:                              # %vector.body5043.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_737:                              # %vector.body5043
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_737
	b	.LBB5_573
.LBB5_738:                              # %for.body26.i3368.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_739:                              # %vector.body5022
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_739
# %bb.740:                              # %vector.body5028.preheader
	lu12i.w	$a1, 125
	ori	$a1, $a1, 96
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
	lu12i.w	$a2, -390306
	ori	$a2, $a2, 3469
	lu32i.d	$a2, 50935
	lu52i.d	$a2, $a2, 1003
	xvreplgr2vr.d	$xr0, $a2
.LBB5_741:                              # %vector.body5028
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_741
	b	.LBB5_573
.LBB5_742:                              # %for.body26.i3386.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_743:                              # %vector.body5013
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_743
	b	.LBB5_573
.LBB5_744:                              # %vector.body4977.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_745:                              # %vector.body4977
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_745
# %bb.746:                              # %vector.body4983.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_747:                              # %vector.body4983
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_747
# %bb.748:                              # %vector.body4989.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
.LBB5_749:                              # %vector.body4989
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_749
# %bb.750:                              # %vector.body4995.preheader
	lu12i.w	$a3, 187
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2160
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_751:                              # %vector.body4995
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_751
# %bb.752:                              # %vector.body5004.preheader
	lu12i.w	$a3, 250
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 176
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_753:                              # %vector.body5004
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_753
	b	.LBB5_573
.LBB5_754:                              # %vector.body4944.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_755:                              # %vector.body4944
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_755
# %bb.756:                              # %vector.body4950.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_757:                              # %vector.body4950
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_757
# %bb.758:                              # %vector.body4959.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 80
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_759:                              # %vector.body4959
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_759
# %bb.760:                              # %vector.body4968.preheader
	lu12i.w	$a3, 187
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 2160
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_761:                              # %vector.body4968
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_761
	b	.LBB5_573
.LBB5_762:                              # %vector.body4920.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_763:                              # %vector.body4920
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_763
# %bb.764:                              # %vector.body4926.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_765:                              # %vector.body4926
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_765
# %bb.766:                              # %vector.body4935.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_767:                              # %vector.body4935
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_767
	b	.LBB5_573
.LBB5_768:                              # %for.body26.i3486.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_769:                              # %vector.body4896
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_769
# %bb.770:                              # %vector.body4902.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_771:                              # %vector.body4902
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_771
# %bb.772:                              # %vector.body4911.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_773:                              # %vector.body4911
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_773
	b	.LBB5_573
.LBB5_774:                              # %vector.body4881.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_775:                              # %vector.body4881
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_775
# %bb.776:                              # %vector.body4887.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_777:                              # %vector.body4887
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_777
	b	.LBB5_573
.LBB5_778:                              # %for.body26.i3528.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a2, $a1, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_779:                              # %vector.body4866
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -8
	addi.d	$a0, $a0, 64
	bnez	$a2, .LBB5_779
# %bb.780:                              # %vector.body4872.preheader
	lu12i.w	$a0, 125
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a0, $a0, 80
	add.d	$a0, $fp, $a0
	ori	$a1, $a1, 3328
.LBB5_781:                              # %vector.body4872
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_781
	b	.LBB5_573
.LBB5_782:                              # %for.body26.i3548.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_783:                              # %vector.body4842
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_783
# %bb.784:                              # %vector.body4848.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_785:                              # %vector.body4848
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_785
# %bb.786:                              # %vector.body4857.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_787:                              # %vector.body4857
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_787
	b	.LBB5_573
.LBB5_788:                              # %vector.body4824.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_789:                              # %vector.body4824
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_789
# %bb.790:                              # %vector.body4833.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_791:                              # %vector.body4833
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_791
	b	.LBB5_573
.LBB5_792:                              # %vector.body4807.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a1, $a0, 16
	lu12i.w	$a2, 7
	ori	$a2, $a2, 3328
.LBB5_793:                              # %vector.body4807
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB5_793
# %bb.794:                              # %for.cond2.preheader.i3600.preheader
	lu12i.w	$a1, 312
	ori	$a1, $a1, 3296
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
.LBB5_795:                              # %for.cond2.preheader.i3600
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a1, 31, 0
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a0, -1024
	xvst	$xr0, $a0, -992
	xvst	$xr0, $a0, -960
	xvst	$xr0, $a0, -928
	xvst	$xr0, $a0, -896
	xvst	$xr0, $a0, -864
	xvst	$xr0, $a0, -832
	xvst	$xr0, $a0, -800
	xvst	$xr0, $a0, -768
	xvst	$xr0, $a0, -736
	xvst	$xr0, $a0, -704
	xvst	$xr0, $a0, -672
	xvst	$xr0, $a0, -640
	xvst	$xr0, $a0, -608
	xvst	$xr0, $a0, -576
	xvst	$xr0, $a0, -544
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
	xvst	$xr0, $a0, 512
	xvst	$xr0, $a0, 544
	xvst	$xr0, $a0, 576
	xvst	$xr0, $a0, 608
	xvst	$xr0, $a0, 640
	xvst	$xr0, $a0, 672
	xvst	$xr0, $a0, 704
	xvst	$xr0, $a0, 736
	xvst	$xr0, $a0, 768
	xvst	$xr0, $a0, 800
	xvst	$xr0, $a0, 832
	xvst	$xr0, $a0, 864
	xvst	$xr0, $a0, 896
	xvst	$xr0, $a0, 928
	xvst	$xr0, $a0, 960
	xvst	$xr0, $a0, 992
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB5_795
	b	.LBB5_573
.LBB5_796:                              # %for.body26.i3614.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2112
	add.d	$a1, $fp, $a0
	lu12i.w	$a0, 7
	ori	$a2, $a0, 3328
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
.LBB5_797:                              # %vector.body4783
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB5_797
# %bb.798:                              # %vector.body4789.preheader
	lu12i.w	$a2, 125
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 80
	add.d	$a2, $fp, $a2
	ori	$a3, $a0, 3328
.LBB5_799:                              # %vector.body4789
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a2, -16
	vst	$vr1, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_799
# %bb.800:                              # %vector.body4798.preheader
	lu12i.w	$a2, 187
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ori	$a1, $a2, 2160
	add.d	$a1, $fp, $a1
	ori	$a0, $a0, 3328
.LBB5_801:                              # %vector.body4798
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a1, -16
	vst	$vr1, $a1, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, 32
	bnez	$a0, .LBB5_801
	b	.LBB5_573
.LBB5_802:                              # %vector.body4759.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_803:                              # %vector.body4759
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_803
# %bb.804:                              # %vector.body4765.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_805:                              # %vector.body4765
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_805
# %bb.806:                              # %vector.body4774.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_807:                              # %vector.body4774
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_807
	b	.LBB5_573
.LBB5_808:                              # %for.body26.i3664.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_809:                              # %vector.body4750
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_809
	b	.LBB5_573
.LBB5_810:                              # %for.body26.i3678.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_811:                              # %vector.body4741
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_811
	b	.LBB5_573
.LBB5_812:                              # %for.body26.i3692.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_813:                              # %vector.body4732
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_813
	b	.LBB5_573
.LBB5_814:                              # %for.body26.i3706.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_815:                              # %vector.body4723
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_815
	b	.LBB5_573
.LBB5_816:                              # %for.body26.i3720.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$fp, $a0, %pc_lo12(global_data)
	lu12i.w	$s0, 62
	ori	$a2, $s0, 2048
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $s0, 2096
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_817:                              # %vector.body4714
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_817
	b	.LBB5_573
.LBB5_818:                              # %vector.body4702.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_819:                              # %vector.body4702
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_819
# %bb.820:                              # %vector.body4708.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_821:                              # %vector.body4708
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_821
	b	.LBB5_573
.LBB5_822:                              # %vector.body4678.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_823:                              # %vector.body4678
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_823
# %bb.824:                              # %vector.body4684.preheader
	lu12i.w	$a3, 62
	pcalau12i	$a2, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a3, $a3, 2096
	add.d	$a3, $a0, $a3
	ori	$a4, $a1, 3328
.LBB5_825:                              # %vector.body4684
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_825
# %bb.826:                              # %vector.body4693.preheader
	lu12i.w	$a3, 125
	vld	$vr0, $a2, %pc_lo12(.LCPI5_0)
	ori	$a2, $a3, 80
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_827:                              # %vector.body4693
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_827
	b	.LBB5_573
.LBB5_828:                              # %vector.body4663.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_829:                              # %vector.body4663
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_829
# %bb.830:                              # %vector.body4669.preheader
	lu12i.w	$a2, 62
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI5_0)
	ori	$a2, $a2, 2096
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
.LBB5_831:                              # %vector.body4669
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a0, -16
	vst	$vr2, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_831
	b	.LBB5_573
.LBB5_832:                              # %vector.body4642.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 16
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
.LBB5_833:                              # %vector.body4642
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 1
	vaddi.du	$vr2, $vr0, 3
	vmul.d	$vr1, $vr1, $vr1
	vmul.d	$vr2, $vr2, $vr2
	vffint.d.lu	$vr1, $vr1
	vffint.d.lu	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vfrecip.d	$vr2, $vr2
	vst	$vr1, $a2, -16
	vst	$vr2, $a2, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_833
# %bb.834:                              # %vector.body4651.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_835:                              # %vector.body4651
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_835
# %bb.836:                              # %vector.body4657.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, -1025
	xvreplgr2vr.d	$xr0, $a2
.LBB5_837:                              # %vector.body4657
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_837
	b	.LBB5_573
.LBB5_838:                              # %vector.body4624.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a0, $a0, %pc_lo12(global_data)
	addi.d	$a2, $a0, 32
	lu12i.w	$a1, 7
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
.LBB5_839:                              # %vector.body4624
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_839
# %bb.840:                              # %vector.body4630.preheader
	lu12i.w	$a2, 62
	ori	$a2, $a2, 2112
	add.d	$a2, $a0, $a2
	ori	$a3, $a1, 3328
	lu52i.d	$a4, $zero, 1024
	xvreplgr2vr.d	$xr0, $a4
.LBB5_841:                              # %vector.body4630
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB5_841
# %bb.842:                              # %vector.body4636.preheader
	lu12i.w	$a2, 125
	ori	$a2, $a2, 96
	add.d	$a0, $a0, $a2
	ori	$a1, $a1, 3328
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr0, $a2
.LBB5_843:                              # %vector.body4636
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a0, -32
	xvst	$xr0, $a0, 0
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB5_843
	b	.LBB5_573
.LBB5_844:                              # %vector.body4615.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(global_data+16)
	addi.d	$a0, $a0, %pc_lo12(global_data+16)
	lu12i.w	$a1, 7
	ori	$a1, $a1, 3328
.LBB5_845:                              # %vector.body4615
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_845
	b	.LBB5_573
.LBB5_846:                              # %vector.body4597.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a1, %pc_hi20(global_data)
	addi.d	$a1, $a1, %pc_lo12(global_data)
	addi.d	$a3, $a1, 16
	lu12i.w	$a2, 7
	ori	$a4, $a2, 3328
.LBB5_847:                              # %vector.body4597
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a3, -16
	vst	$vr1, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_847
# %bb.848:                              # %vector.body4606.preheader
	lu12i.w	$a3, 62
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	ori	$a0, $a3, 2096
	add.d	$a0, $a1, $a0
	ori	$a1, $a2, 3328
.LBB5_849:                              # %vector.body4606
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr1, $vr0, 8
	vaddi.wu	$vr2, $vr1, 1
	vaddi.wu	$vr1, $vr1, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	vfrecip.d	$vr2, $vr2
	vfrecip.d	$vr1, $vr1
	vst	$vr2, $a0, -16
	vst	$vr1, $a0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a1, $a1, -4
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB5_849
	b	.LBB5_573
.Lfunc_end5:
	.size	init, .Lfunc_end5-init
                                        # -- End function
	.globl	s211                            # -- Begin function s211
	.p2align	5
	.type	s211,@function
s211:                                   # @s211
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
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$fp, $a2, %pc_lo12(global_data)
	blt	$a0, $a1, .LBB6_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	lu12i.w	$a1, 62
	ori	$a3, $a1, 2080
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3326
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $a1, 2088
	lu12i.w	$a0, 125
	ori	$s0, $a0, 72
	lu12i.w	$a1, 187
	ori	$s1, $a1, 2152
	lu12i.w	$a2, 250
	ori	$s2, $a2, 168
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a0, 64
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $a1, 2144
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $a2, 160
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 2272
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 440
	ori	$a0, $a0, 2368
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 568
	ori	$a0, $a0, 2464
	add.d	$s6, $fp, $a0
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB6_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $fp
	.p2align	4, , 16
.LBB6_3:                                # %for.body4
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $a1, $s0
	fldx.d	$fa2, $a1, $s1
	add.d	$a2, $a1, $s8
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fldx.d	$fa1, $a1, $s2
	fld.d	$fa3, $a2, 8
	fst.d	$fa0, $a1, 8
	addi.d	$a2, $a1, 8
	fneg.d	$fa0, $fa1
	fmadd.d	$fa0, $fa0, $fa2, $fa3
	addi.d	$a0, $a0, -1
	fstx.d	$fa0, $a1, $s8
	move	$a1, $a2
	bnez	$a0, .LBB6_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB6_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB6_2
.LBB6_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a2, 62
	ori	$a1, $a2, 2080
	ori	$a2, $a2, 2048
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB6_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $fp, $a0
	add.d	$a3, $fp, $a0
	fldx.d	$fa3, $a3, $a1
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, 8
	fadd.d	$fa0, $fa0, $fa3
	bne	$a0, $a2, .LBB6_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa1, $fa0
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
.Lfunc_end6:
	.size	s211, .Lfunc_end6-s211
                                        # -- End function
	.globl	s212                            # -- Begin function s212
	.p2align	5
	.type	s212,@function
s212:                                   # @s212
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
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$fp, $a2, %pc_lo12(global_data)
	blt	$a0, $a1, .LBB7_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3327
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 125
	ori	$s8, $a0, 64
	lu12i.w	$a0, 187
	ori	$s0, $a0, 2144
	lu12i.w	$a0, 62
	ori	$s1, $a0, 2080
	add.d	$a0, $fp, $s1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $fp, $s8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$s2, $fp, $s0
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 2272
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 440
	ori	$a0, $a0, 2368
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 568
	ori	$a0, $a0, 2464
	add.d	$s6, $fp, $a0
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB7_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	fld.d	$fa0, $fp, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	.p2align	4, , 16
.LBB7_3:                                # %for.body4
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $a1, $s8
	fmul.d	$fa1, $fa1, $fa0
	fld.d	$fa0, $a1, 8
	fldx.d	$fa2, $a1, $s0
	fldx.d	$fa3, $a1, $s1
	fst.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fmadd.d	$fa1, $fa0, $fa2, $fa3
	addi.d	$a0, $a0, -1
	fstx.d	$fa1, $a1, $s1
	move	$a1, $a2
	bnez	$a0, .LBB7_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB7_2
.LBB7_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a0, $a0, %pc_lo12(.L.str.138)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a2, 62
	ori	$a1, $a2, 2080
	ori	$a2, $a2, 2048
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB7_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $fp, $a0
	add.d	$a3, $fp, $a0
	fldx.d	$fa3, $a3, $a1
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, 8
	fadd.d	$fa0, $fa0, $fa3
	bne	$a0, $a2, .LBB7_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa1, $fa0
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
	.size	s212, .Lfunc_end7-s212
                                        # -- End function
	.globl	s1213                           # -- Begin function s1213
	.p2align	5
	.type	s1213,@function
s1213:                                  # @s1213
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
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(init)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(ntimes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(global_data)
	addi.d	$fp, $a2, %pc_lo12(global_data)
	blt	$a0, $a1, .LBB8_5
# %bb.1:                                # %for.cond1.preheader.preheader
	move	$s7, $zero
	lu12i.w	$a2, 62
	ori	$a3, $a2, 2080
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3326
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 125
	ori	$s8, $a0, 72
	lu12i.w	$a1, 187
	ori	$s0, $a1, 2152
	ori	$s1, $a2, 2088
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	add.d	$a2, $fp, $a3
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $a0, 64
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $a1, 2144
	add.d	$s2, $fp, $a0
	lu12i.w	$a0, 250
	ori	$a0, $a0, 160
	add.d	$s3, $fp, $a0
	lu12i.w	$a0, 312
	ori	$a0, $a0, 2272
	add.d	$s4, $fp, $a0
	lu12i.w	$a0, 440
	ori	$a0, $a0, 2368
	add.d	$s5, $fp, $a0
	lu12i.w	$a0, 568
	ori	$a0, $a0, 2464
	add.d	$s6, $fp, $a0
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB8_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	fldx.d	$fa0, $fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	.p2align	4, , 16
.LBB8_3:                                # %for.body4
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $a1, $s8
	fld.d	$fa2, $a1, 16
	fldx.d	$fa3, $a1, $s0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 8
	addi.d	$a2, $a1, 8
	fmul.d	$fa0, $fa2, $fa3
	addi.d	$a0, $a0, -1
	fstx.d	$fa0, $a1, $s1
	move	$a1, $a2
	bnez	$a0, .LBB8_3
# %bb.4:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s3
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(dummy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ntimes)
	addi.w	$s7, $s7, 1
	blt	$s7, $a0, .LBB8_2
.LBB8_5:                                # %for.cond.cleanup
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	lu12i.w	$a2, 62
	ori	$a1, $a2, 2080
	ori	$a2, $a2, 2048
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB8_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $fp, $a0
	add.d	$a3, $fp, $a0
	fldx.d	$fa3, $a3, $a1
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a0, $a0, 8
	fadd.d	$fa0, $fa0, $fa3
	bne	$a0, $a2, .LBB8_6
# %bb.7:                                # %for.cond18.preheader.i.preheader
	pcalau12i	$a0, %pc_hi20(digits)
	ld.w	$a1, $a0, %pc_lo12(digits)
	fadd.d	$fa0, $fa1, $fa0
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
	.size	s1213, .Lfunc_end8-s1213
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
	lu12i.w	$s2, 62
	ori	$a2, $s2, 2048
	ori	$a1, $zero, 32
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
# %bb.2:                                # %vector.body87.preheader
	pcalau12i	$a0, %pc_hi20(global_data)
	addi.d	$a2, $a0, %pc_lo12(global_data)
	addi.d	$a3, $a2, 32
	lu12i.w	$a1, 7
	ori	$a4, $a1, 3328
	lu52i.d	$a0, $zero, 1023
	xvreplgr2vr.d	$xr0, $a0
	.p2align	4, , 16
.LBB10_3:                               # %vector.body87
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_3
# %bb.4:                                # %vector.body93.preheader
	ori	$a3, $s2, 2112
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_5:                               # %vector.body93
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_5
# %bb.6:                                # %vector.body99.preheader
	lu12i.w	$a3, 125
	ori	$a3, $a3, 96
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_7:                               # %vector.body99
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_7
# %bb.8:                                # %vector.body105.preheader
	lu12i.w	$a3, 187
	ori	$a3, $a3, 2176
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_9:                               # %vector.body105
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_9
# %bb.10:                               # %vector.body111.preheader
	lu12i.w	$a3, 250
	ori	$a3, $a3, 192
	add.d	$a3, $a2, $a3
	ori	$a4, $a1, 3328
	.p2align	4, , 16
.LBB10_11:                              # %vector.body111
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB10_11
# %bb.12:                               # %for.cond2.preheader.i.preheader
	lu12i.w	$a3, 312
	ori	$a3, $a3, 3296
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
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a3, -1024
	xvst	$xr0, $a3, -992
	xvst	$xr0, $a3, -960
	xvst	$xr0, $a3, -928
	xvst	$xr0, $a3, -896
	xvst	$xr0, $a3, -864
	xvst	$xr0, $a3, -832
	xvst	$xr0, $a3, -800
	xvst	$xr0, $a3, -768
	xvst	$xr0, $a3, -736
	xvst	$xr0, $a3, -704
	xvst	$xr0, $a3, -672
	xvst	$xr0, $a3, -640
	xvst	$xr0, $a3, -608
	xvst	$xr0, $a3, -576
	xvst	$xr0, $a3, -544
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
	xvst	$xr0, $a3, 512
	xvst	$xr0, $a3, 544
	xvst	$xr0, $a3, 576
	xvst	$xr0, $a3, 608
	xvst	$xr0, $a3, 640
	xvst	$xr0, $a3, 672
	xvst	$xr0, $a3, 704
	xvst	$xr0, $a3, 736
	xvst	$xr0, $a3, 768
	xvst	$xr0, $a3, 800
	xvst	$xr0, $a3, 832
	xvst	$xr0, $a3, 864
	xvst	$xr0, $a3, 896
	xvst	$xr0, $a3, 928
	xvst	$xr0, $a3, 960
	xvst	$xr0, $a3, 992
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB10_13
# %bb.14:                               # %for.cond2.preheader.i43.preheader
	lu12i.w	$a3, 440
	ori	$a3, $a3, 3392
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
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a3, -1024
	xvst	$xr0, $a3, -992
	xvst	$xr0, $a3, -960
	xvst	$xr0, $a3, -928
	xvst	$xr0, $a3, -896
	xvst	$xr0, $a3, -864
	xvst	$xr0, $a3, -832
	xvst	$xr0, $a3, -800
	xvst	$xr0, $a3, -768
	xvst	$xr0, $a3, -736
	xvst	$xr0, $a3, -704
	xvst	$xr0, $a3, -672
	xvst	$xr0, $a3, -640
	xvst	$xr0, $a3, -608
	xvst	$xr0, $a3, -576
	xvst	$xr0, $a3, -544
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
	xvst	$xr0, $a3, 512
	xvst	$xr0, $a3, 544
	xvst	$xr0, $a3, 576
	xvst	$xr0, $a3, 608
	xvst	$xr0, $a3, 640
	xvst	$xr0, $a3, 672
	xvst	$xr0, $a3, 704
	xvst	$xr0, $a3, 736
	xvst	$xr0, $a3, 768
	xvst	$xr0, $a3, 800
	xvst	$xr0, $a3, 832
	xvst	$xr0, $a3, 864
	xvst	$xr0, $a3, 896
	xvst	$xr0, $a3, 928
	xvst	$xr0, $a3, 960
	xvst	$xr0, $a3, 992
	addi.w	$a4, $a4, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 1
	bnez	$a5, .LBB10_15
# %bb.16:                               # %for.cond2.preheader.i57.preheader
	lu12i.w	$a3, 568
	ori	$a3, $a3, 3488
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB10_17:                              # %for.cond2.preheader.i57
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	movgr2fr.d	$fa0, $a5
	ffint.d.l	$fa0, $fa0
	frecip.d	$fa0, $fa0
	xvreplve0.d	$xr0, $xr0
	xvst	$xr0, $a2, -1024
	xvst	$xr0, $a2, -992
	xvst	$xr0, $a2, -960
	xvst	$xr0, $a2, -928
	xvst	$xr0, $a2, -896
	xvst	$xr0, $a2, -864
	xvst	$xr0, $a2, -832
	xvst	$xr0, $a2, -800
	xvst	$xr0, $a2, -768
	xvst	$xr0, $a2, -736
	xvst	$xr0, $a2, -704
	xvst	$xr0, $a2, -672
	xvst	$xr0, $a2, -640
	xvst	$xr0, $a2, -608
	xvst	$xr0, $a2, -576
	xvst	$xr0, $a2, -544
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
	xvst	$xr0, $a2, 512
	xvst	$xr0, $a2, 544
	xvst	$xr0, $a2, 576
	xvst	$xr0, $a2, 608
	xvst	$xr0, $a2, 640
	xvst	$xr0, $a2, 672
	xvst	$xr0, $a2, 704
	xvst	$xr0, $a2, 736
	xvst	$xr0, $a2, 768
	xvst	$xr0, $a2, 800
	xvst	$xr0, $a2, 832
	xvst	$xr0, $a2, 864
	xvst	$xr0, $a2, 896
	xvst	$xr0, $a2, 928
	xvst	$xr0, $a2, 960
	xvst	$xr0, $a2, 992
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB10_17
# %bb.18:                               # %vector.body139.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI10_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI10_0)
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	xvld	$xr1, $a2, %pc_lo12(.LCPI10_1)
	pcalau12i	$a2, %pc_hi20(indx)
	addi.d	$a2, $a2, %pc_lo12(indx)
	ori	$a1, $a1, 3328
	xvrepli.w	$xr2, 3
	.p2align	4, , 16
.LBB10_19:                              # %vector.body139
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
	st.d	$a0, $s0, 0
	lu52i.d	$a0, $zero, 1024
	st.d	$a0, $fp, 0
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
	lu12i.w	$a0, 62
	ori	$a2, $a0, 2048
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 32
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
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(set)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s211)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s212)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(s1213)
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
	.p2align	5, 0x0
global_data:
	.space	3377664
	.size	global_data, 3377664

	.type	a,@object                       # @a
	.section	.data.rel.ro,"aw",@progbits
	.globl	a
	.p2align	5, 0x0
a:
	.dword	global_data
	.size	a, 8

	.type	b,@object                       # @b
	.globl	b
	.p2align	5, 0x0
b:
	.dword	global_data+256032
	.size	b, 8

	.type	c,@object                       # @c
	.globl	c
	.p2align	5, 0x0
c:
	.dword	global_data+512064
	.size	c, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	5, 0x0
d:
	.dword	global_data+768096
	.size	d, 8

	.type	e,@object                       # @e
	.globl	e
	.p2align	5, 0x0
e:
	.dword	global_data+1024160
	.size	e, 8

	.type	aa,@object                      # @aa
	.globl	aa
	.p2align	5, 0x0
aa:
	.dword	global_data+1280224
	.size	aa, 8

	.type	bb,@object                      # @bb
	.globl	bb
	.p2align	5, 0x0
bb:
	.dword	global_data+1804608
	.size	bb, 8

	.type	cc,@object                      # @cc
	.globl	cc
	.p2align	5, 0x0
cc:
	.dword	global_data+2328992
	.size	cc, 8

	.type	tt,@object                      # @tt
	.globl	tt
	.p2align	5, 0x0
tt:
	.dword	global_data+2853376
	.size	tt, 8

	.type	array,@object                   # @array
	.bss
	.globl	array
	.p2align	5, 0x0
array:
	.space	524288
	.size	array, 524288

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
	.p2align	3, 0x0
temp:
	.dword	0x0000000000000000              # double 0
	.size	temp, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s000 "
	.size	.L.str.1, 6

	.type	X,@object                       # @X
	.bss
	.globl	X
	.p2align	5, 0x0
X:
	.space	256000
	.size	X, 256000

	.type	Y,@object                       # @Y
	.globl	Y
	.p2align	5, 0x0
Y:
	.space	256000
	.size	Y, 256000

	.type	Z,@object                       # @Z
	.globl	Z
	.p2align	5, 0x0
Z:
	.space	256000
	.size	Z, 256000

	.type	U,@object                       # @U
	.globl	U
	.p2align	5, 0x0
U:
	.space	256000
	.size	U, 256000

	.type	V,@object                       # @V
	.globl	V
	.p2align	5, 0x0
V:
	.space	256000
	.size	V, 256000

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
	.asciz	"S211\t %.2f \t\t"
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"S212\t %.2f \t\t"
	.size	.L.str.138, 14

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"S1213\t %.2f \t\t"
	.size	.L.str.139, 15

	.type	xx,@object                      # @xx
	.bss
	.globl	xx
	.p2align	3, 0x0
xx:
	.dword	0
	.size	xx, 8

	.type	indx,@object                    # @indx
	.globl	indx
	.p2align	5, 0x0
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
	.p2align	5, 0x0
x:
	.space	256000
	.size	x, 256000

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
