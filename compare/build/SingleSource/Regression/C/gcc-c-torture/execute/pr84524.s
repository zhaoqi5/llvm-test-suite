	.file	"pr84524.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function foo
.LCPI0_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.text
	.globl	foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI0_0)
	lu12i.w	$a2, 1
	ori	$a2, $a2, 33
	xvreplgr2vr.h	$xr1, $a2
	xvrepli.h	$xr2, 128
	ori	$a2, $zero, 512
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.h	$xr3, $xr0, 9
	xvxor.v	$xr4, $xr3, $xr1
	xvand.v	$xr5, $xr0, $xr2
	xvseqi.h	$xr5, $xr5, 0
	xvbitsel.v	$xr3, $xr4, $xr3, $xr5
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvstx	$xr3, $a0, $a1
	addi.d	$a1, $a1, 32
	xvaddi.hu	$xr0, $xr0, 16
	bne	$a1, $a2, .LBB0_1
# %bb.2:                                # %for.end18
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	15                              # 0xf
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -528
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI1_0)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 33
	xvreplgr2vr.h	$xr1, $a0
	xvrepli.h	$xr2, 128
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 512
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.h	$xr3, $xr0, 9
	xvxor.v	$xr4, $xr3, $xr1
	xvand.v	$xr5, $xr0, $xr2
	xvseqi.h	$xr5, $xr5, 0
	xvbitsel.v	$xr3, $xr4, $xr3, $xr5
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvslli.h	$xr4, $xr3, 1
	xvxor.v	$xr5, $xr4, $xr1
	xvslti.h	$xr3, $xr3, 0
	xvbitsel.v	$xr3, $xr4, $xr5, $xr3
	xvstx	$xr3, $a1, $a2
	addi.d	$a1, $a1, 32
	xvaddi.hu	$xr0, $xr0, 16
	bne	$a1, $a3, .LBB1_1
# %bb.2:                                # %for.body.preheader
	move	$a1, $zero
	addi.d	$a2, $sp, 16
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a1, 8
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	#APP
	#NO_APP
	ext.w.h	$a5, $a4
	slli.d	$a4, $a4, 1
	xor	$a6, $a4, $a0
	slti	$a5, $a5, 0
	masknez	$a4, $a4, $a5
	ld.hu	$a7, $a2, 0
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	bstrpick.d	$a4, $a4, 15, 0
	bne	$a7, $a4, .LBB1_6
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 2
	bne	$a1, $a3, .LBB1_3
# %bb.5:                                # %for.cond.cleanup
	move	$a0, $zero
	addi.d	$sp, $sp, 528
	ret
.LBB1_6:                                # %if.then17
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
