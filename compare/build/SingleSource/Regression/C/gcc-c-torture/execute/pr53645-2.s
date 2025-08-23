	.file	"pr53645-2.c"
	.text
	.globl	uq44444444                      # -- Begin function uq44444444
	.p2align	5
	.type	uq44444444,@function
uq44444444:                             # @uq44444444
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end0:
	.size	uq44444444, .Lfunc_end0-uq44444444
                                        # -- End function
	.globl	ur44444444                      # -- Begin function ur44444444
	.p2align	5
	.type	ur44444444,@function
ur44444444:                             # @ur44444444
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	vrepli.h	$vr1, 3
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end1:
	.size	ur44444444, .Lfunc_end1-ur44444444
                                        # -- End function
	.globl	sq44444444                      # -- Begin function sq44444444
	.p2align	5
	.type	sq44444444,@function
sq44444444:                             # @sq44444444
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	vsrai.h	$vr1, $vr0, 15
	vsrli.h	$vr1, $vr1, 14
	vadd.h	$vr0, $vr0, $vr1
	vsrai.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end2:
	.size	sq44444444, .Lfunc_end2-sq44444444
                                        # -- End function
	.globl	sr44444444                      # -- Begin function sr44444444
	.p2align	5
	.type	sr44444444,@function
sr44444444:                             # @sr44444444
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	vsrai.h	$vr1, $vr0, 15
	vsrli.h	$vr1, $vr1, 14
	vadd.h	$vr1, $vr0, $vr1
	vrepli.h	$vr2, -4
	vand.v	$vr1, $vr1, $vr2
	vsub.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end3:
	.size	sr44444444, .Lfunc_end3-sr44444444
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uq1428166432128
.LCPI4_0:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
	.text
	.globl	uq1428166432128
	.p2align	5
	.type	uq1428166432128,@function
uq1428166432128:                        # @uq1428166432128
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_0)
	vsrl.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end4:
	.size	uq1428166432128, .Lfunc_end4-uq1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ur1428166432128
.LCPI5_0:
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	1                               # 0x1
	.half	7                               # 0x7
	.half	15                              # 0xf
	.half	63                              # 0x3f
	.half	31                              # 0x1f
	.half	127                             # 0x7f
	.text
	.globl	ur1428166432128
	.p2align	5
	.type	ur1428166432128,@function
ur1428166432128:                        # @ur1428166432128
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI5_0)
	vand.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end5:
	.size	ur1428166432128, .Lfunc_end5-ur1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sq1428166432128
.LCPI6_0:
	.half	16                              # 0x10
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	9                               # 0x9
.LCPI6_1:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
.LCPI6_2:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	sq1428166432128
	.p2align	5
	.type	sq1428166432128,@function
sq1428166432128:                        # @sq1428166432128
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI6_0)
	vsrai.h	$vr2, $vr0, 15
	pcalau12i	$a1, %pc_hi20(.LCPI6_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI6_1)
	pcalau12i	$a1, %pc_hi20(.LCPI6_2)
	vld	$vr4, $a1, %pc_lo12(.LCPI6_2)
	vsrl.h	$vr1, $vr2, $vr1
	vadd.h	$vr1, $vr0, $vr1
	vsra.h	$vr1, $vr1, $vr3
	vbitsel.v	$vr0, $vr1, $vr0, $vr4
	vst	$vr0, $a0, 0
	ret
.Lfunc_end6:
	.size	sq1428166432128, .Lfunc_end6-sq1428166432128
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sr1428166432128
.LCPI7_0:
	.half	16                              # 0x10
	.half	14                              # 0xe
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	9                               # 0x9
.LCPI7_1:
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	7                               # 0x7
.LCPI7_2:
	.half	65535                           # 0xffff
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.text
	.globl	sr1428166432128
	.p2align	5
	.type	sr1428166432128,@function
sr1428166432128:                        # @sr1428166432128
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_0)
	vsrai.h	$vr2, $vr0, 15
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI7_1)
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	vld	$vr4, $a1, %pc_lo12(.LCPI7_2)
	vsrl.h	$vr1, $vr2, $vr1
	vadd.h	$vr1, $vr0, $vr1
	vsra.h	$vr1, $vr1, $vr3
	vbitsel.v	$vr1, $vr1, $vr0, $vr4
	vsll.h	$vr1, $vr1, $vr3
	vsub.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end7:
	.size	sr1428166432128, .Lfunc_end7-sr1428166432128
                                        # -- End function
	.globl	uq33333333                      # -- Begin function uq33333333
	.p2align	5
	.type	uq33333333,@function
uq33333333:                             # @uq33333333
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 2731
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end8:
	.size	uq33333333, .Lfunc_end8-uq33333333
                                        # -- End function
	.globl	ur33333333                      # -- Begin function ur33333333
	.p2align	5
	.type	ur33333333,@function
ur33333333:                             # @ur33333333
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 10
	ori	$a1, $a1, 2731
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsrli.h	$vr1, $vr1, 1
	vrepli.h	$vr2, 3
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end9:
	.size	ur33333333, .Lfunc_end9-ur33333333
                                        # -- End function
	.globl	sq33333333                      # -- Begin function sq33333333
	.p2align	5
	.type	sq33333333,@function
sq33333333:                             # @sq33333333
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 5
	ori	$a1, $a1, 1366
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end10:
	.size	sq33333333, .Lfunc_end10-sq33333333
                                        # -- End function
	.globl	sr33333333                      # -- Begin function sr33333333
	.p2align	5
	.type	sr33333333,@function
sr33333333:                             # @sr33333333
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 5
	ori	$a1, $a1, 1366
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vrepli.h	$vr2, 3
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end11:
	.size	sr33333333, .Lfunc_end11-sr33333333
                                        # -- End function
	.globl	uq65656565                      # -- Begin function uq65656565
	.p2align	5
	.type	uq65656565,@function
uq65656565:                             # @uq65656565
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, -209702
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.hu	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end12:
	.size	uq65656565, .Lfunc_end12-uq65656565
                                        # -- End function
	.globl	ur65656565                      # -- Begin function ur65656565
	.p2align	5
	.type	ur65656565,@function
ur65656565:                             # @ur65656565
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, -209702
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsrli.h	$vr1, $vr1, 2
	lu12i.w	$a1, 80
	ori	$a1, $a1, 6
	vreplgr2vr.w	$vr2, $a1
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end13:
	.size	ur65656565, .Lfunc_end13-ur65656565
                                        # -- End function
	.globl	sq65656565                      # -- Begin function sq65656565
	.p2align	5
	.type	sq65656565,@function
sq65656565:                             # @sq65656565
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 419442
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	lu12i.w	$a1, 16
	vreplgr2vr.w	$vr1, $a1
	vsra.h	$vr0, $vr0, $vr1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end14:
	.size	sq65656565, .Lfunc_end14-sq65656565
                                        # -- End function
	.globl	sr65656565                      # -- Begin function sr65656565
	.p2align	5
	.type	sr65656565,@function
sr65656565:                             # @sr65656565
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 419442
	ori	$a1, $a1, 2731
	vreplgr2vr.w	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	lu12i.w	$a1, 16
	vreplgr2vr.w	$vr2, $a1
	vsra.h	$vr1, $vr1, $vr2
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	lu12i.w	$a1, 80
	ori	$a1, $a1, 6
	vreplgr2vr.w	$vr2, $a1
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end15:
	.size	sr65656565, .Lfunc_end15-sr65656565
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uq14141461461414
.LCPI16_0:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI16_1:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI16_2:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	1                               # 0x1
	.text
	.globl	uq14141461461414
	.p2align	5
	.type	uq14141461461414,@function
uq14141461461414:                       # @uq14141461461414
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI16_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI16_0)
	pcalau12i	$a1, %pc_hi20(.LCPI16_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI16_1)
	pcalau12i	$a1, %pc_hi20(.LCPI16_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI16_2)
	vsrl.h	$vr0, $vr0, $vr1
	vmuh.hu	$vr0, $vr0, $vr2
	vsrl.h	$vr0, $vr0, $vr3
	vst	$vr0, $a0, 0
	ret
.Lfunc_end16:
	.size	uq14141461461414, .Lfunc_end16-uq14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ur14141461461414
.LCPI17_0:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI17_1:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	43691                           # 0xaaab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI17_2:
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	1                               # 0x1
.LCPI17_3:
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	14                              # 0xe
	.text
	.globl	ur14141461461414
	.p2align	5
	.type	ur14141461461414,@function
ur14141461461414:                       # @ur14141461461414
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI17_0)
	pcalau12i	$a1, %pc_hi20(.LCPI17_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI17_1)
	pcalau12i	$a1, %pc_hi20(.LCPI17_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI17_2)
	pcalau12i	$a1, %pc_hi20(.LCPI17_3)
	vld	$vr4, $a1, %pc_lo12(.LCPI17_3)
	vsrl.h	$vr1, $vr0, $vr1
	vmuh.hu	$vr1, $vr1, $vr2
	vsrl.h	$vr1, $vr1, $vr3
	vmsub.h	$vr0, $vr1, $vr4
	vst	$vr0, $a0, 0
	ret
.Lfunc_end17:
	.size	ur14141461461414, .Lfunc_end17-ur14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sq14141461461414
.LCPI18_0:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI18_1:
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
	.text
	.globl	sq14141461461414
	.p2align	5
	.type	sq14141461461414,@function
sq14141461461414:                       # @sq14141461461414
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI18_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI18_0)
	pcalau12i	$a1, %pc_hi20(.LCPI18_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI18_1)
	vmuh.h	$vr0, $vr0, $vr1
	vsra.h	$vr0, $vr0, $vr2
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end18:
	.size	sq14141461461414, .Lfunc_end18-sq14141461461414
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function sr14141461461414
.LCPI19_0:
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	10923                           # 0x2aab
	.half	18725                           # 0x4925
	.half	18725                           # 0x4925
.LCPI19_1:
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	2                               # 0x2
.LCPI19_2:
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	6                               # 0x6
	.half	14                              # 0xe
	.half	14                              # 0xe
	.text
	.globl	sr14141461461414
	.p2align	5
	.type	sr14141461461414,@function
sr14141461461414:                       # @sr14141461461414
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI19_0)
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	vld	$vr2, $a1, %pc_lo12(.LCPI19_1)
	vmuh.h	$vr1, $vr0, $vr1
	pcalau12i	$a1, %pc_hi20(.LCPI19_2)
	vld	$vr3, $a1, %pc_lo12(.LCPI19_2)
	vsra.h	$vr1, $vr1, $vr2
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vmsub.h	$vr0, $vr1, $vr3
	vst	$vr0, $a0, 0
	ret
.Lfunc_end19:
	.size	sr14141461461414, .Lfunc_end19-sr14141461461414
                                        # -- End function
	.globl	uq77777777                      # -- Begin function uq77777777
	.p2align	5
	.type	uq77777777,@function
uq77777777:                             # @uq77777777
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1171
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsub.h	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vsrli.h	$vr0, $vr0, 2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end20:
	.size	uq77777777, .Lfunc_end20-uq77777777
                                        # -- End function
	.globl	ur77777777                      # -- Begin function ur77777777
	.p2align	5
	.type	ur77777777,@function
ur77777777:                             # @ur77777777
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1171
	vreplgr2vr.h	$vr1, $a1
	vmuh.hu	$vr1, $vr0, $vr1
	vsub.h	$vr2, $vr0, $vr1
	vsrli.h	$vr2, $vr2, 1
	vadd.h	$vr1, $vr2, $vr1
	vsrli.h	$vr1, $vr1, 2
	vrepli.h	$vr2, 7
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end21:
	.size	ur77777777, .Lfunc_end21-ur77777777
                                        # -- End function
	.globl	sq77777777                      # -- Begin function sq77777777
	.p2align	5
	.type	sq77777777,@function
sq77777777:                             # @sq77777777
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2341
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr0, $vr0, $vr1
	vsrai.h	$vr0, $vr0, 1
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 0
	ret
.Lfunc_end22:
	.size	sq77777777, .Lfunc_end22-sq77777777
                                        # -- End function
	.globl	sr77777777                      # -- Begin function sr77777777
	.p2align	5
	.type	sr77777777,@function
sr77777777:                             # @sr77777777
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2341
	vreplgr2vr.h	$vr1, $a1
	vmuh.h	$vr1, $vr0, $vr1
	vsrai.h	$vr1, $vr1, 1
	vsrli.h	$vr2, $vr1, 15
	vadd.h	$vr1, $vr1, $vr2
	vrepli.h	$vr2, 7
	vmsub.h	$vr0, $vr1, $vr2
	vst	$vr0, $a0, 0
	ret
.Lfunc_end23:
	.size	sr77777777, .Lfunc_end23-sr77777777
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	move	$a0, $zero
	ori	$s1, $zero, 1
	pcalau12i	$a1, %pc_hi20(u)
	addi.d	$s2, $a1, %pc_lo12(u)
	addi.d	$s3, $sp, 32
	lu12i.w	$a1, 10
	ori	$s4, $a1, 2731
	lu12i.w	$a1, 12
	ori	$s6, $a1, 3277
	lu12i.w	$a1, 4
	ori	$s0, $a1, 2341
	ori	$s7, $zero, 14
	lu12i.w	$a1, 2
	ori	$s8, $a1, 1171
	.p2align	4, , 16
.LBB24_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$fp, $a0, $s2, 4
	slli.d	$s5, $a0, 4
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vldx	$vr1, $s2, $s5
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.2:                                # %lor.lhs.false
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.4:                                # %lor.lhs.false25
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.5:                                # %if.end36
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.6:                                # %lor.lhs.false46
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.7:                                # %if.end57
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.8:                                # %lor.lhs.false67
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.9:                                # %if.end78
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.10:                               # %lor.lhs.false89
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.11:                               # %if.end100
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.12:                               # %lor.lhs.false110
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.13:                               # %if.end121
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.14:                               # %lor.lhs.false131
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.15:                               # %if.end142
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.16:                               # %lor.lhs.false152
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.17:                               # %if.end163
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 32
	vld	$vr0, $fp, 0
	vseq.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a0, $vr2, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB24_197
# %bb.18:                               # %lor.lhs.false175
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr1, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 3
	bne	$a0, $a1, .LBB24_197
# %bb.19:                               # %if.end186
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 1
	bne	$a0, $a1, .LBB24_197
# %bb.20:                               # %lor.lhs.false196
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 2
	bne	$a0, $a1, .LBB24_197
# %bb.21:                               # %if.end207
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 4
	bne	$a0, $a1, .LBB24_197
# %bb.22:                               # %lor.lhs.false217
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 7
	bne	$a0, $a1, .LBB24_197
# %bb.23:                               # %if.end228
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 5
	bne	$a0, $a1, .LBB24_197
# %bb.24:                               # %lor.lhs.false238
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 6
	bne	$a0, $a1, .LBB24_197
# %bb.25:                               # %if.end249
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	bnez	$a0, .LBB24_197
# %bb.26:                               # %lor.lhs.false261
                                        #   in Loop: Header=BB24_1 Depth=1
	ld.hu	$a0, $fp, 6
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	andi	$a0, $a0, 7
	bne	$a1, $a0, .LBB24_197
# %bb.27:                               # %if.end272
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bne	$a0, $a1, .LBB24_197
# %bb.28:                               # %lor.lhs.false282
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	andi	$a1, $a1, 3
	bne	$a0, $a1, .LBB24_197
# %bb.29:                               # %if.end293
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	andi	$a1, $a1, 15
	bne	$a0, $a1, .LBB24_197
# %bb.30:                               # %lor.lhs.false303
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	andi	$a1, $a1, 127
	bne	$a0, $a1, .LBB24_197
# %bb.31:                               # %if.end314
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	andi	$a1, $a1, 31
	bne	$a0, $a1, .LBB24_197
# %bb.32:                               # %lor.lhs.false324
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	andi	$a1, $a1, 63
	bne	$a0, $a1, .LBB24_197
# %bb.33:                               # %if.end335
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.34:                               # %lor.lhs.false347
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.35:                               # %if.end358
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.36:                               # %lor.lhs.false368
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.37:                               # %if.end379
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.38:                               # %lor.lhs.false389
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.39:                               # %if.end400
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.40:                               # %lor.lhs.false410
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.41:                               # %if.end421
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.42:                               # %lor.lhs.false433
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.43:                               # %if.end444
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.44:                               # %lor.lhs.false454
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.45:                               # %if.end465
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.46:                               # %lor.lhs.false475
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.47:                               # %if.end486
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.48:                               # %lor.lhs.false496
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 17
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.49:                               # %if.end507
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.50:                               # %lor.lhs.false519
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.51:                               # %if.end530
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.52:                               # %lor.lhs.false540
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.53:                               # %if.end551
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.54:                               # %lor.lhs.false561
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.55:                               # %if.end572
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.56:                               # %lor.lhs.false582
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s6
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.57:                               # %if.end593
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.58:                               # %lor.lhs.false605
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.59:                               # %if.end616
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.60:                               # %lor.lhs.false626
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.61:                               # %if.end637
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.62:                               # %lor.lhs.false647
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.63:                               # %if.end658
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.64:                               # %lor.lhs.false668
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s6
	srli.d	$a2, $a2, 18
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.65:                               # %if.end679
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.66:                               # %lor.lhs.false691
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.67:                               # %if.end702
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.68:                               # %lor.lhs.false712
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.69:                               # %if.end723
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.70:                               # %lor.lhs.false733
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.71:                               # %if.end744
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 1
	mul.d	$a1, $a1, $s0
	srli.d	$a1, $a1, 17
	bne	$a0, $a1, .LBB24_197
# %bb.72:                               # %lor.lhs.false754
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	mul.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB24_197
# %bb.73:                               # %if.end765
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.74:                               # %lor.lhs.false777
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.75:                               # %if.end788
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.76:                               # %lor.lhs.false798
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.77:                               # %if.end809
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.78:                               # %lor.lhs.false819
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.79:                               # %if.end830
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 1
	mul.d	$a2, $a2, $s0
	srli.d	$a2, $a2, 17
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.80:                               # %lor.lhs.false840
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s4
	srli.d	$a2, $a2, 18
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.81:                               # %if.end851
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(uq77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.82:                               # %lor.lhs.false863
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.83:                               # %if.end874
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.84:                               # %lor.lhs.false884
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.85:                               # %if.end895
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.86:                               # %lor.lhs.false905
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.87:                               # %if.end916
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.88:                               # %lor.lhs.false926
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	bne	$a0, $a1, .LBB24_197
# %bb.89:                               # %if.end937
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ur77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.90:                               # %lor.lhs.false949
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.91:                               # %if.end960
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.92:                               # %lor.lhs.false970
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.93:                               # %if.end981
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.94:                               # %lor.lhs.false991
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.95:                               # %if.end1002
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 32
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.96:                               # %lor.lhs.false1012
                                        #   in Loop: Header=BB24_1 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a2, $a1, 15, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 16
	sub.d	$a3, $a1, $a2
	bstrpick.d	$a3, $a3, 15, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.97:                               # %if.end1023
                                        #   in Loop: Header=BB24_1 Depth=1
	#APP
	#NO_APP
	andi	$a1, $s1, 1
	ori	$a0, $zero, 1
	move	$s1, $zero
	bnez	$a1, .LBB24_1
# %bb.98:                               # %for.body1028.preheader
	move	$a0, $zero
	ori	$s1, $zero, 1
	pcalau12i	$a1, %pc_hi20(s)
	addi.d	$s2, $a1, %pc_lo12(s)
	addi.d	$s3, $sp, 16
	lu12i.w	$a1, 5
	ori	$s4, $a1, 1366
	lu12i.w	$a1, 2
	ori	$s5, $a1, 2731
	lu12i.w	$a1, 6
	ori	$s6, $a1, 1639
	ori	$s7, $zero, 14
	.p2align	4, , 16
.LBB24_99:                              # %for.body1028
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$fp, $a0, $s2, 4
	slli.d	$s8, $a0, 4
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vldx	$vr1, $s2, $s8
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.100:                              # %lor.lhs.false1040
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.101:                              # %if.end1051
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.102:                              # %lor.lhs.false1061
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.103:                              # %if.end1072
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.104:                              # %lor.lhs.false1082
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.105:                              # %if.end1093
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.106:                              # %lor.lhs.false1103
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.107:                              # %if.end1114
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr44444444)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.108:                              # %lor.lhs.false1126
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.109:                              # %if.end1137
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.110:                              # %lor.lhs.false1147
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.111:                              # %if.end1158
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.112:                              # %lor.lhs.false1168
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.113:                              # %if.end1179
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.114:                              # %lor.lhs.false1189
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.115:                              # %if.end1200
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16
	vld	$vr0, $fp, 0
	vseq.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a0, $vr2, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB24_197
# %bb.116:                              # %lor.lhs.false1212
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr1, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr0, 3
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 28
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 18, 3
	bne	$a0, $a1, .LBB24_197
# %bb.117:                              # %if.end1223
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 15
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 16, 1
	bne	$a0, $a1, .LBB24_197
# %bb.118:                              # %lor.lhs.false1233
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 17, 2
	bne	$a0, $a1, .LBB24_197
# %bb.119:                              # %if.end1244
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 27
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 19, 4
	bne	$a0, $a1, .LBB24_197
# %bb.120:                              # %lor.lhs.false1254
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 24
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 22, 7
	bne	$a0, $a1, .LBB24_197
# %bb.121:                              # %if.end1265
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 26
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 20, 5
	bne	$a0, $a1, .LBB24_197
# %bb.122:                              # %lor.lhs.false1275
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 25
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	bstrpick.d	$a1, $a1, 21, 6
	bne	$a0, $a1, .LBB24_197
# %bb.123:                              # %if.end1286
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr1428166432128)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	bnez	$a0, .LBB24_197
# %bb.124:                              # %lor.lhs.false1298
                                        #   in Loop: Header=BB24_99 Depth=1
	ld.h	$a0, $fp, 6
	vpickve2gr.h	$a1, $vr0, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a2, $a0, 30, 28
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 15, 3
	slli.d	$a2, $a2, 3
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.125:                              # %if.end1309
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a2, $a1, 15, 15
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 1
	slli.d	$a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.126:                              # %lor.lhs.false1319
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 29
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 2
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.127:                              # %if.end1330
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 27
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 4
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.128:                              # %lor.lhs.false1340
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 24
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 7
	slli.d	$a2, $a2, 7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.129:                              # %if.end1351
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 26
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 5
	slli.d	$a2, $a2, 5
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.130:                              # %lor.lhs.false1361
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	bstrpick.d	$a2, $a2, 30, 25
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 15, 6
	slli.d	$a2, $a2, 6
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.131:                              # %if.end1372
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.132:                              # %lor.lhs.false1384
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.133:                              # %if.end1395
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.134:                              # %lor.lhs.false1405
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.135:                              # %if.end1416
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.136:                              # %lor.lhs.false1426
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.137:                              # %if.end1437
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.138:                              # %lor.lhs.false1447
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s4
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.139:                              # %if.end1458
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr33333333)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.140:                              # %lor.lhs.false1470
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.141:                              # %if.end1481
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.142:                              # %lor.lhs.false1491
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.143:                              # %if.end1502
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.144:                              # %lor.lhs.false1512
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.145:                              # %if.end1523
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.146:                              # %lor.lhs.false1533
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s4
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.147:                              # %if.end1544
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.148:                              # %lor.lhs.false1556
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.149:                              # %if.end1567
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.150:                              # %lor.lhs.false1577
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.151:                              # %if.end1588
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.152:                              # %lor.lhs.false1598
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.153:                              # %if.end1609
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.154:                              # %lor.lhs.false1619
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s6
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.155:                              # %if.end1630
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr65656565)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.156:                              # %lor.lhs.false1642
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.157:                              # %if.end1653
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.158:                              # %lor.lhs.false1663
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.159:                              # %if.end1674
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.160:                              # %lor.lhs.false1684
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.161:                              # %if.end1695
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.162:                              # %lor.lhs.false1705
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s6
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	alsl.d	$a2, $a2, $a2, 2
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.163:                              # %if.end1716
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.164:                              # %lor.lhs.false1728
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.165:                              # %if.end1739
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.166:                              # %lor.lhs.false1749
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.167:                              # %if.end1760
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.168:                              # %lor.lhs.false1770
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.169:                              # %if.end1781
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 18
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.170:                              # %lor.lhs.false1791
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s5
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 16
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.171:                              # %if.end1802
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr14141461461414)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.172:                              # %lor.lhs.false1814
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.173:                              # %if.end1825
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.174:                              # %lor.lhs.false1835
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.175:                              # %if.end1846
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.176:                              # %lor.lhs.false1856
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.177:                              # %if.end1867
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	mul.d	$a2, $a2, $s7
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.178:                              # %lor.lhs.false1877
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s5
	srli.d	$a3, $a2, 63
	srli.d	$a2, $a2, 16
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.179:                              # %if.end1888
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sq77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.180:                              # %lor.lhs.false1900
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.181:                              # %if.end1911
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.182:                              # %lor.lhs.false1921
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.183:                              # %if.end1932
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.184:                              # %lor.lhs.false1942
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.185:                              # %if.end1953
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.186:                              # %lor.lhs.false1963
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a1, $a1
	mul.d	$a1, $a1, $s0
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 17
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a0, $a1, .LBB24_197
# %bb.187:                              # %if.end1974
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sr77777777)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 0
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 0
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.188:                              # %lor.lhs.false1986
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 3
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 3
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.189:                              # %if.end1997
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 2
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 2
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.190:                              # %lor.lhs.false2007
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 1
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 1
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.191:                              # %if.end2018
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 4
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 4
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.192:                              # %lor.lhs.false2028
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 7
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 7
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.193:                              # %if.end2039
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	vld	$vr0, $sp, 16
	vld	$vr1, $fp, 0
	vpickve2gr.h	$a0, $vr0, 6
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 6
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.194:                              # %lor.lhs.false2049
                                        #   in Loop: Header=BB24_99 Depth=1
	vpickve2gr.h	$a0, $vr0, 5
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.h	$a1, $vr1, 5
	ext.w.h	$a2, $a1
	mul.d	$a2, $a2, $s0
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 17
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	bne	$a1, $a0, .LBB24_197
# %bb.195:                              # %if.end2060
                                        #   in Loop: Header=BB24_99 Depth=1
	#APP
	#NO_APP
	andi	$a1, $s1, 1
	ori	$a0, $zero, 1
	move	$s1, $zero
	bnez	$a1, .LBB24_99
# %bb.196:                              # %for.end2063
	move	$a0, $zero
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
.LBB24_197:                             # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	main, .Lfunc_end24-main
                                        # -- End function
	.type	u,@object                       # @u
	.data
	.globl	u
	.p2align	4, 0x0
u:
	.half	73                              # 0x49
	.half	65531                           # 0xfffb
	.half	0                               # 0x0
	.half	174                             # 0xae
	.half	921                             # 0x399
	.half	65535                           # 0xffff
	.half	17                              # 0x11
	.half	178                             # 0xb2
	.half	1                               # 0x1
	.half	8173                            # 0x1fed
	.half	65535                           # 0xffff
	.half	65472                           # 0xffc0
	.half	12                              # 0xc
	.half	29612                           # 0x73ac
	.half	128                             # 0x80
	.half	8912                            # 0x22d0
	.size	u, 32

	.type	s,@object                       # @s
	.globl	s
	.p2align	4, 0x0
s:
	.half	73                              # 0x49
	.half	56413                           # 0xdc5d
	.half	32761                           # 0x7ff9
	.half	8191                            # 0x1fff
	.half	16371                           # 0x3ff3
	.half	1201                            # 0x4b1
	.half	12701                           # 0x319d
	.half	9999                            # 0x270f
	.half	9903                            # 0x26af
	.half	65535                           # 0xffff
	.half	58213                           # 0xe365
	.half	0                               # 0x0
	.half	65529                           # 0xfff9
	.half	65213                           # 0xfebd
	.half	9124                            # 0x23a4
	.half	56337                           # 0xdc11
	.size	s, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym u
	.addrsig_sym s
