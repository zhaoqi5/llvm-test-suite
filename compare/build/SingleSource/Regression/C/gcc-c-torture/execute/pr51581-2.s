	.file	"pr51581-2.c"
	.text
	.globl	f1                              # -- Begin function f1
	.p2align	5
	.type	f1,@function
f1:                                     # @f1
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, 349525
	ori	$a4, $a4, 1366
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 3
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.w	$xr4, $xr2, $xr0
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.w	$xr4, $xr3, $xr0
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB0_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end0:
	.size	f1, .Lfunc_end0-f1
                                        # -- End function
	.globl	f2                              # -- Begin function f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, -349526
	ori	$a4, $a4, 2731
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 3
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.wu	$xr4, $xr2, $xr0
	xvsrli.w	$xr4, $xr4, 1
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.wu	$xr4, $xr3, $xr0
	xvsrli.w	$xr4, $xr4, 1
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB1_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end1:
	.size	f2, .Lfunc_end1-f2
                                        # -- End function
	.globl	f3                              # -- Begin function f3
	.p2align	5
	.type	f3,@function
f3:                                     # @f3
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, 233016
	ori	$a4, $a4, 3641
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 18
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.w	$xr4, $xr2, $xr0
	xvsrai.w	$xr4, $xr4, 2
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.w	$xr4, $xr3, $xr0
	xvsrai.w	$xr4, $xr4, 2
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB2_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end2:
	.size	f3, .Lfunc_end2-f3
                                        # -- End function
	.globl	f4                              # -- Begin function f4
	.p2align	5
	.type	f4,@function
f4:                                     # @f4
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, 233016
	ori	$a4, $a4, 3641
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 18
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB3_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.wu	$xr4, $xr2, $xr0
	xvsrli.w	$xr4, $xr4, 2
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.wu	$xr4, $xr3, $xr0
	xvsrli.w	$xr4, $xr4, 2
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB3_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end3:
	.size	f4, .Lfunc_end3-f4
                                        # -- End function
	.globl	f5                              # -- Begin function f5
	.p2align	5
	.type	f5,@function
f5:                                     # @f5
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, 441505
	ori	$a4, $a4, 2803
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 19
	pcalau12i	$a4, %pc_hi20(c)
	addi.d	$a4, $a4, %pc_lo12(c)
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.w	$xr4, $xr2, $xr0
	xvsrai.w	$xr4, $xr4, 3
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.w	$xr4, $xr3, $xr0
	xvsrai.w	$xr4, $xr4, 3
	xvsrli.w	$xr5, $xr4, 31
	xvadd.w	$xr4, $xr4, $xr5
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB4_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end4:
	.size	f5, .Lfunc_end4-f5
                                        # -- End function
	.globl	f6                              # -- Begin function f6
	.p2align	5
	.type	f6,@function
f6:                                     # @f6
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	ori	$a3, $a2, 32
	lu12i.w	$a4, -331130
	ori	$a4, $a4, 3019
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 19
	pcalau12i	$a4, %pc_hi20(d)
	addi.d	$a4, $a4, %pc_lo12(d)
	.p2align	4, , 16
.LBB5_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a0
	xvldx	$xr2, $a5, $a2
	xvldx	$xr3, $a5, $a3
	xvmuh.wu	$xr4, $xr2, $xr0
	xvsub.w	$xr5, $xr2, $xr4
	xvsrli.w	$xr5, $xr5, 1
	xvadd.w	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 4
	xvmsub.w	$xr2, $xr4, $xr1
	xvmuh.wu	$xr4, $xr3, $xr0
	xvsub.w	$xr5, $xr3, $xr4
	xvsrli.w	$xr5, $xr5, 1
	xvadd.w	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 4
	xvmsub.w	$xr3, $xr4, $xr1
	add.d	$a5, $a4, $a0
	xvstx	$xr2, $a5, $a2
	addi.d	$a0, $a0, 64
	xvstx	$xr3, $a5, $a3
	bnez	$a0, .LBB5_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end5:
	.size	f6, .Lfunc_end5-f6
                                        # -- End function
	.globl	f7                              # -- Begin function f7
	.p2align	5
	.type	f7,@function
f7:                                     # @f7
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 349525
	ori	$a3, $a3, 1366
	xvreplgr2vr.w	$xr0, $a3
	xvrepli.w	$xr1, -3
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB6_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	xvmuh.w	$xr3, $xr2, $xr0
	xvsrli.w	$xr4, $xr2, 31
	xvadd.w	$xr3, $xr4, $xr3
	xvmadd.w	$xr2, $xr3, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB6_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end6:
	.size	f7, .Lfunc_end6-f7
                                        # -- End function
	.globl	f8                              # -- Begin function f8
	.p2align	5
	.type	f8,@function
f8:                                     # @f8
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	xvreplgr2vr.d	$xr0, $a3
	xvrepli.w	$xr1, -3
	pcalau12i	$a3, %pc_hi20(d)
	addi.d	$a3, $a3, %pc_lo12(d)
	.p2align	4, , 16
.LBB7_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	xvpermi.q	$xr3, $xr2, 1
	vpickve2gr.w	$a4, $vr3, 0
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 0
	vpickve2gr.w	$a4, $vr3, 1
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 1
	vpickve2gr.w	$a4, $vr3, 2
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 2
	vpickve2gr.w	$a4, $vr3, 3
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 3
	vpickve2gr.w	$a4, $vr2, 0
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 0
	vpickve2gr.w	$a4, $vr2, 1
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 1
	vpickve2gr.w	$a4, $vr2, 2
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 2
	vpickve2gr.w	$a4, $vr2, 3
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 3
	xvmul.d	$xr3, $xr3, $xr0
	xvmul.d	$xr4, $xr4, $xr0
	xvsrli.d	$xr4, $xr4, 33
	xvsrli.d	$xr3, $xr3, 33
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
	xvmadd.w	$xr2, $xr5, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB7_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end7:
	.size	f8, .Lfunc_end7-f8
                                        # -- End function
	.globl	f9                              # -- Begin function f9
	.p2align	5
	.type	f9,@function
f9:                                     # @f9
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 233016
	ori	$a3, $a3, 3641
	xvreplgr2vr.d	$xr0, $a3
	xvrepli.w	$xr1, -18
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB8_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	vpickve2gr.w	$a4, $vr2, 0
	xvinsgr2vr.d	$xr3, $a4, 0
	vpickve2gr.w	$a4, $vr2, 1
	xvinsgr2vr.d	$xr3, $a4, 1
	vpickve2gr.w	$a4, $vr2, 2
	xvinsgr2vr.d	$xr3, $a4, 2
	vpickve2gr.w	$a4, $vr2, 3
	xvinsgr2vr.d	$xr3, $a4, 3
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a4, $vr4, 0
	xvinsgr2vr.d	$xr5, $a4, 0
	vpickve2gr.w	$a4, $vr4, 1
	xvinsgr2vr.d	$xr5, $a4, 1
	vpickve2gr.w	$a4, $vr4, 2
	xvinsgr2vr.d	$xr5, $a4, 2
	vpickve2gr.w	$a4, $vr4, 3
	xvinsgr2vr.d	$xr5, $a4, 3
	xvmul.d	$xr4, $xr5, $xr0
	xvmul.d	$xr3, $xr3, $xr0
	xvsrai.d	$xr3, $xr3, 34
	xvpickve2gr.d	$a4, $xr3, 0
	xvinsgr2vr.w	$xr5, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	xvinsgr2vr.w	$xr5, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	xvinsgr2vr.w	$xr5, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	xvinsgr2vr.w	$xr5, $a4, 3
	xvsrai.d	$xr3, $xr4, 34
	xvpickve2gr.d	$a4, $xr3, 0
	xvinsgr2vr.w	$xr5, $a4, 4
	xvpickve2gr.d	$a4, $xr3, 1
	xvinsgr2vr.w	$xr5, $a4, 5
	xvpickve2gr.d	$a4, $xr3, 2
	xvinsgr2vr.w	$xr5, $a4, 6
	xvpickve2gr.d	$a4, $xr3, 3
	xvinsgr2vr.w	$xr5, $a4, 7
	xvsrli.w	$xr3, $xr2, 31
	xvadd.w	$xr3, $xr5, $xr3
	xvmadd.w	$xr2, $xr3, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB8_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end8:
	.size	f9, .Lfunc_end8-f9
                                        # -- End function
	.globl	f10                             # -- Begin function f10
	.p2align	5
	.type	f10,@function
f10:                                    # @f10
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 233016
	ori	$a3, $a3, 3641
	xvreplgr2vr.d	$xr0, $a3
	xvrepli.w	$xr1, -18
	pcalau12i	$a3, %pc_hi20(d)
	addi.d	$a3, $a3, %pc_lo12(d)
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	xvpermi.q	$xr3, $xr2, 1
	vpickve2gr.w	$a4, $vr3, 0
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 0
	vpickve2gr.w	$a4, $vr3, 1
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 1
	vpickve2gr.w	$a4, $vr3, 2
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 2
	vpickve2gr.w	$a4, $vr3, 3
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr4, $a4, 3
	vpickve2gr.w	$a4, $vr2, 0
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 0
	vpickve2gr.w	$a4, $vr2, 1
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 1
	vpickve2gr.w	$a4, $vr2, 2
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 2
	vpickve2gr.w	$a4, $vr2, 3
	bstrpick.d	$a4, $a4, 31, 0
	xvinsgr2vr.d	$xr3, $a4, 3
	xvmul.d	$xr3, $xr3, $xr0
	xvmul.d	$xr4, $xr4, $xr0
	xvsrli.d	$xr4, $xr4, 34
	xvsrli.d	$xr3, $xr3, 34
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
	xvmadd.w	$xr2, $xr5, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB9_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end9:
	.size	f10, .Lfunc_end9-f10
                                        # -- End function
	.globl	f11                             # -- Begin function f11
	.p2align	5
	.type	f11,@function
f11:                                    # @f11
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a1, $a1, %pc_lo12(a)
	lu12i.w	$a2, 4
	lu12i.w	$a3, 441505
	ori	$a3, $a3, 2803
	xvreplgr2vr.d	$xr0, $a3
	xvrepli.w	$xr1, -19
	pcalau12i	$a3, %pc_hi20(c)
	addi.d	$a3, $a3, %pc_lo12(c)
	.p2align	4, , 16
.LBB10_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	vpickve2gr.w	$a4, $vr2, 0
	xvinsgr2vr.d	$xr3, $a4, 0
	vpickve2gr.w	$a4, $vr2, 1
	xvinsgr2vr.d	$xr3, $a4, 1
	vpickve2gr.w	$a4, $vr2, 2
	xvinsgr2vr.d	$xr3, $a4, 2
	vpickve2gr.w	$a4, $vr2, 3
	xvinsgr2vr.d	$xr3, $a4, 3
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a4, $vr4, 0
	xvinsgr2vr.d	$xr5, $a4, 0
	vpickve2gr.w	$a4, $vr4, 1
	xvinsgr2vr.d	$xr5, $a4, 1
	vpickve2gr.w	$a4, $vr4, 2
	xvinsgr2vr.d	$xr5, $a4, 2
	vpickve2gr.w	$a4, $vr4, 3
	xvinsgr2vr.d	$xr5, $a4, 3
	xvmul.d	$xr4, $xr5, $xr0
	xvmul.d	$xr3, $xr3, $xr0
	xvsrai.d	$xr3, $xr3, 35
	xvpickve2gr.d	$a4, $xr3, 0
	xvinsgr2vr.w	$xr5, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	xvinsgr2vr.w	$xr5, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	xvinsgr2vr.w	$xr5, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	xvinsgr2vr.w	$xr5, $a4, 3
	xvsrai.d	$xr3, $xr4, 35
	xvpickve2gr.d	$a4, $xr3, 0
	xvinsgr2vr.w	$xr5, $a4, 4
	xvpickve2gr.d	$a4, $xr3, 1
	xvinsgr2vr.w	$xr5, $a4, 5
	xvpickve2gr.d	$a4, $xr3, 2
	xvinsgr2vr.w	$xr5, $a4, 6
	xvpickve2gr.d	$a4, $xr3, 3
	xvinsgr2vr.w	$xr5, $a4, 7
	xvsrli.w	$xr3, $xr2, 31
	xvadd.w	$xr3, $xr5, $xr3
	xvmadd.w	$xr2, $xr3, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB10_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end10:
	.size	f11, .Lfunc_end10-f11
                                        # -- End function
	.globl	f12                             # -- Begin function f12
	.p2align	5
	.type	f12,@function
f12:                                    # @f12
# %bb.0:                                # %entry
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(b)
	addi.d	$a1, $a1, %pc_lo12(b)
	lu12i.w	$a2, 4
	lu12i.w	$a3, -331130
	ori	$a3, $a3, 3019
	xvreplgr2vr.w	$xr0, $a3
	xvrepli.w	$xr1, -19
	pcalau12i	$a3, %pc_hi20(d)
	addi.d	$a3, $a3, %pc_lo12(d)
	.p2align	4, , 16
.LBB11_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	xvldx	$xr2, $a4, $a2
	xvmuh.wu	$xr3, $xr2, $xr0
	xvsub.w	$xr4, $xr2, $xr3
	xvsrli.w	$xr4, $xr4, 1
	xvadd.w	$xr3, $xr4, $xr3
	xvsrli.w	$xr3, $xr3, 4
	xvmadd.w	$xr2, $xr3, $xr1
	add.d	$a4, $a3, $a0
	addi.d	$a0, $a0, 32
	xvstx	$xr2, $a4, $a2
	bnez	$a0, .LBB11_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end11:
	.size	f12, .Lfunc_end11-f12
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a1, -4
	pcalau12i	$a2, %pc_hi20(a)
	addi.d	$fp, $a2, %pc_lo12(a)
	pcalau12i	$a2, %pc_hi20(b)
	addi.d	$s0, $a2, %pc_lo12(b)
	.p2align	4, , 16
.LBB12_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	add.d	$a2, $fp, $a1
	addi.d	$a3, $a0, -2048
	stptr.w	$a3, $a2, 16384
	add.d	$a2, $s0, $a1
	stptr.w	$a0, $a2, 16384
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB12_1
# %bb.2:                                # %for.end
	lu12i.w	$a0, -524288
	bstrins.d	$a0, $a0, 62, 33
	st.d	$a0, $fp, 0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	stptr.w	$a0, $fp, 16380
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $s0, 16380
	pcaddu18i	$ra, %call36(f1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f2)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	pcalau12i	$a1, %pc_hi20(c)
	addi.d	$s1, $a1, %pc_lo12(c)
	lu12i.w	$a1, 349525
	ori	$s4, $a1, 1366
	pcalau12i	$a1, %pc_hi20(d)
	addi.d	$s2, $a1, %pc_lo12(d)
	lu12i.w	$s3, 4
	lu12i.w	$a1, -349526
	ori	$s5, $a1, 2731
	lu32i.d	$s5, 0
	.p2align	4, , 16
.LBB12_3:                               # %for.body5
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB12_3 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s5
	srli.d	$a3, $a3, 33
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.5:                                # %for.cond3
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_3
# %bb.6:                                # %for.end19
	pcaddu18i	$ra, %call36(f3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f4)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	lu12i.w	$a1, 233016
	ori	$s7, $a1, 3641
	.p2align	4, , 16
.LBB12_7:                               # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.8:                                # %lor.lhs.false29
                                        #   in Loop: Header=BB12_7 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a3, $a3, 34
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.9:                                # %for.cond20
                                        #   in Loop: Header=BB12_7 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_7
# %bb.10:                               # %for.end40
	pcaddu18i	$ra, %call36(f5)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f6)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	lu12i.w	$a1, 441505
	ori	$s6, $a1, 2803
	lu12i.w	$a1, -331130
	ori	$s8, $a1, 3019
	lu32i.d	$s8, 0
	.p2align	4, , 16
.LBB12_11:                              # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s6
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 35
	add.d	$a3, $a3, $a4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.12:                               # %lor.lhs.false50
                                        #   in Loop: Header=BB12_11 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s8
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a1, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.13:                               # %for.cond41
                                        #   in Loop: Header=BB12_11 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_11
# %bb.14:                               # %for.end61
	pcaddu18i	$ra, %call36(f7)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f8)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_15:                              # %for.body64
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.16:                               # %lor.lhs.false71
                                        #   in Loop: Header=BB12_15 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s5
	srli.d	$a3, $a3, 33
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.17:                               # %for.cond62
                                        #   in Loop: Header=BB12_15 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_15
# %bb.18:                               # %for.end82
	pcaddu18i	$ra, %call36(f9)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f10)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_19:                              # %for.body85
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.20:                               # %lor.lhs.false92
                                        #   in Loop: Header=BB12_19 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s7
	srli.d	$a3, $a3, 34
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.21:                               # %for.cond83
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_19
# %bb.22:                               # %for.end103
	pcaddu18i	$ra, %call36(f11)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(f12)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -4
	.p2align	4, , 16
.LBB12_23:                              # %for.body106
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	ldptr.w	$a1, $a1, 16384
	add.d	$a2, $s1, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s6
	srli.d	$a4, $a3, 63
	srai.d	$a3, $a3, 35
	add.d	$a3, $a3, $a4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.24:                               # %lor.lhs.false113
                                        #   in Loop: Header=BB12_23 Depth=1
	add.d	$a1, $s0, $a0
	ldx.wu	$a1, $a1, $s3
	add.d	$a2, $s2, $a0
	ldptr.w	$a2, $a2, 16384
	mul.d	$a3, $a1, $s8
	srli.d	$a3, $a3, 32
	sub.d	$a4, $a1, $a3
	bstrpick.d	$a4, $a4, 31, 1
	add.d	$a3, $a4, $a3
	bstrpick.d	$a3, $a3, 31, 4
	alsl.d	$a4, $a3, $a3, 3
	alsl.d	$a3, $a4, $a3, 1
	sub.w	$a1, $a1, $a3
	bne	$a2, $a1, .LBB12_27
# %bb.25:                               # %for.cond104
                                        #   in Loop: Header=BB12_23 Depth=1
	addi.d	$a0, $a0, 4
	bnez	$a0, .LBB12_23
# %bb.26:                               # %for.end124
	move	$a0, $zero
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_27:                              # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.space	16384
	.size	a, 16384

	.type	c,@object                       # @c
	.globl	c
	.p2align	2, 0x0
c:
	.space	16384
	.size	c, 16384

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.space	16384
	.size	b, 16384

	.type	d,@object                       # @d
	.globl	d
	.p2align	2, 0x0
d:
	.space	16384
	.size	d, 16384

	.section	".note.GNU-stack","",@progbits
	.addrsig
