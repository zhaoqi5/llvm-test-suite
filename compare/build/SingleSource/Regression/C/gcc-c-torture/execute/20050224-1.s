	.file	"20050224-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ori	$a3, $zero, 245
	bne	$a0, $a3, .LBB0_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 36
	bne	$a1, $a0, .LBB0_4
# %bb.2:                                # %entry
	ori	$a0, $zero, 444
	bne	$a2, $a0, .LBB0_4
# %bb.3:                                # %if.end
	ret
.LBB0_4:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	4096                            # 0x1000
	.dword	8192                            # 0x2000
	.dword	12288                           # 0x3000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	fst.d	$fs0, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	ld.d	$t4, $a0, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(b)
	ld.d	$a0, $a0, %pc_lo12(b)
	bgeu	$t4, $a0, .LBB1_17
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %pc_hi20(c)
	ld.d	$a1, $a1, %pc_lo12(c)
	pcalau12i	$a2, %pc_hi20(d)
	ld.d	$a2, $a2, %pc_lo12(d)
	pcalau12i	$a3, %pc_hi20(e)
	ld.d	$a3, $a3, %pc_lo12(e)
	pcalau12i	$a4, %pc_hi20(f)
	ld.d	$a4, $a4, %pc_lo12(f)
	lu12i.w	$a5, 1
	add.d	$a6, $t4, $a5
	sltu	$a7, $a6, $a0
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a0, $a7
	or	$a6, $a7, $a6
	nor	$a7, $t4, $zero
	add.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 12
	ori	$a7, $zero, 7
	bgeu	$a6, $a7, .LBB1_3
# %bb.2:
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$a6, $t4
	b	.LBB1_12
.LBB1_3:                                # %vector.ph
	addi.d	$a7, $a6, 1
	bstrpick.d	$a6, $a7, 52, 3
	pcalau12i	$t0, %pc_hi20(.LCPI1_0)
	xvld	$xr4, $t0, %pc_lo12(.LCPI1_0)
	slli.d	$t0, $a6, 3
	slli.d	$a6, $a6, 15
	add.d	$a6, $t4, $a6
	xvreplgr2vr.d	$xr0, $a1
	xvreplgr2vr.d	$xr1, $a2
	xvreplgr2vr.d	$xr2, $a3
	xvreplgr2vr.d	$xr3, $a4
	xvreplgr2vr.d	$xr5, $t4
	xvadd.d	$xr6, $xr5, $xr4
	vrepli.b	$vr4, 0
	lu12i.w	$t1, 4
	xvreplgr2vr.d	$xr8, $t1
	vrepli.b	$vr10, -1
	vrepli.w	$vr12, 1
	lu12i.w	$t1, 8
	xvreplgr2vr.d	$xr13, $t1
	move	$t1, $t0
	vori.b	$vr14, $vr4, 0
	vori.b	$vr9, $vr4, 0
	vori.b	$vr11, $vr4, 0
	vori.b	$vr5, $vr4, 0
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.d	$xr17, $xr6, $xr8
	xvsle.du	$xr20, $xr0, $xr6
	xvpickve2gr.d	$t2, $xr20, 0
	vinsgr2vr.w	$vr15, $t2, 0
	xvpickve2gr.d	$t2, $xr20, 1
	vinsgr2vr.w	$vr15, $t2, 1
	xvpickve2gr.d	$t2, $xr20, 2
	vinsgr2vr.w	$vr15, $t2, 2
	xvpickve2gr.d	$t2, $xr20, 3
	vinsgr2vr.w	$vr15, $t2, 3
	xvsle.du	$xr21, $xr0, $xr17
	xvpickve2gr.d	$t2, $xr21, 0
	vinsgr2vr.w	$vr16, $t2, 0
	xvpickve2gr.d	$t2, $xr21, 1
	vinsgr2vr.w	$vr16, $t2, 1
	xvpickve2gr.d	$t2, $xr21, 2
	vinsgr2vr.w	$vr16, $t2, 2
	xvpickve2gr.d	$t2, $xr21, 3
	vinsgr2vr.w	$vr16, $t2, 3
	xvsle.du	$xr22, $xr1, $xr6
	xvsle.du	$xr23, $xr1, $xr17
	xvslt.du	$xr24, $xr6, $xr2
	xvslt.du	$xr25, $xr17, $xr2
	xvslt.du	$xr19, $xr6, $xr3
	xvpickve2gr.d	$t2, $xr19, 0
	vinsgr2vr.w	$vr18, $t2, 0
	xvpickve2gr.d	$t2, $xr19, 1
	vinsgr2vr.w	$vr18, $t2, 1
	xvpickve2gr.d	$t2, $xr19, 2
	vinsgr2vr.w	$vr18, $t2, 2
	xvpickve2gr.d	$t2, $xr19, 3
	vinsgr2vr.w	$vr18, $t2, 3
	xvslt.du	$xr26, $xr17, $xr3
	xvpickve2gr.d	$t2, $xr26, 0
	vinsgr2vr.w	$vr19, $t2, 0
	xvpickve2gr.d	$t2, $xr26, 1
	vinsgr2vr.w	$vr19, $t2, 1
	xvpickve2gr.d	$t2, $xr26, 2
	vinsgr2vr.w	$vr19, $t2, 2
	xvpickve2gr.d	$t2, $xr26, 3
	vinsgr2vr.w	$vr19, $t2, 3
	xvand.v	$xr20, $xr20, $xr22
	xvand.v	$xr20, $xr20, $xr24
	xvpickve2gr.d	$t2, $xr20, 0
	vinsgr2vr.w	$vr22, $t2, 0
	xvpickve2gr.d	$t2, $xr20, 1
	vinsgr2vr.w	$vr22, $t2, 1
	xvpickve2gr.d	$t2, $xr20, 2
	vinsgr2vr.w	$vr22, $t2, 2
	xvpickve2gr.d	$t2, $xr20, 3
	vinsgr2vr.w	$vr22, $t2, 3
	xvand.v	$xr20, $xr21, $xr23
	xvand.v	$xr20, $xr20, $xr25
	xvpickve2gr.d	$t2, $xr20, 0
	vinsgr2vr.w	$vr21, $t2, 0
	xvpickve2gr.d	$t2, $xr20, 1
	vinsgr2vr.w	$vr21, $t2, 1
	xvpickve2gr.d	$t2, $xr20, 2
	vinsgr2vr.w	$vr21, $t2, 2
	xvpickve2gr.d	$t2, $xr20, 3
	vinsgr2vr.w	$vr21, $t2, 3
	xvslt.du	$xr20, $xr6, $xr0
	xvpickve2gr.d	$t2, $xr20, 0
	vinsgr2vr.w	$vr23, $t2, 0
	xvpickve2gr.d	$t2, $xr20, 1
	vinsgr2vr.w	$vr23, $t2, 1
	xvpickve2gr.d	$t2, $xr20, 2
	vinsgr2vr.w	$vr23, $t2, 2
	xvpickve2gr.d	$t2, $xr20, 3
	vinsgr2vr.w	$vr23, $t2, 3
	vsub.w	$vr5, $vr5, $vr23
	xvslt.du	$xr17, $xr17, $xr0
	xvpickve2gr.d	$t2, $xr17, 0
	vinsgr2vr.w	$vr20, $t2, 0
	xvpickve2gr.d	$t2, $xr17, 1
	vinsgr2vr.w	$vr20, $t2, 1
	xvpickve2gr.d	$t2, $xr17, 2
	vinsgr2vr.w	$vr20, $t2, 2
	xvpickve2gr.d	$t2, $xr17, 3
	vinsgr2vr.w	$vr20, $t2, 3
	vsub.w	$vr7, $vr7, $vr20
	vxor.v	$vr17, $vr22, $vr10
	vand.v	$vr15, $vr17, $vr15
	vand.v	$vr15, $vr15, $vr18
	vand.v	$vr15, $vr15, $vr12
	vadd.w	$vr9, $vr9, $vr15
	vxor.v	$vr15, $vr21, $vr10
	vand.v	$vr15, $vr15, $vr16
	vand.v	$vr15, $vr15, $vr19
	vand.v	$vr15, $vr15, $vr12
	vadd.w	$vr11, $vr11, $vr15
	vsub.w	$vr4, $vr4, $vr22
	vsub.w	$vr14, $vr14, $vr21
	addi.d	$t1, $t1, -8
	xvadd.d	$xr6, $xr6, $xr13
	bnez	$t1, .LBB1_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr14, $vr4
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t1, $vr0, 0
	vadd.w	$vr0, $vr11, $vr9
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t2, $vr0, 0
	vadd.w	$vr0, $vr7, $vr5
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$t3, $vr0, 0
	bne	$a7, $t0, .LBB1_12
.LBB1_6:                                # %for.end
	ori	$a0, $zero, 444
	bne	$t3, $a0, .LBB1_17
# %bb.7:                                # %for.end
	ori	$a0, $zero, 245
	bne	$t2, $a0, .LBB1_17
# %bb.8:                                # %for.end
	ori	$a0, $zero, 36
	bne	$t1, $a0, .LBB1_17
# %bb.9:                                # %foo.exit
	move	$a0, $zero
	fld.d	$fs2, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 24                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB1_10:                               # %if.then
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.w	$t3, $t3, 1
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_12 Depth=1
	add.d	$a6, $a6, $a5
	bgeu	$a6, $a0, .LBB1_6
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a6, $a1, .LBB1_10
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=1
	bltu	$a6, $a2, .LBB1_16
# %bb.14:                               # %if.else
                                        #   in Loop: Header=BB1_12 Depth=1
	bgeu	$a6, $a3, .LBB1_16
# %bb.15:                               # %if.then4
                                        #   in Loop: Header=BB1_12 Depth=1
	addi.w	$t1, $t1, 1
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_16:                               # %if.else6
                                        #   in Loop: Header=BB1_12 Depth=1
	sltu	$a7, $a6, $a4
	add.w	$t2, $t2, $a7
	b	.LBB1_11
.LBB1_17:                               # %if.then.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.data
	.globl	a
	.p2align	3, 0x0
a:
	.dword	3221225472                      # 0xc0000000
	.size	a, 8

	.type	b,@object                       # @b
	.globl	b
	.p2align	3, 0x0
b:
	.dword	3489660928                      # 0xd0000000
	.size	b, 8

	.type	c,@object                       # @c
	.globl	c
	.p2align	3, 0x0
c:
	.dword	3223042392                      # 0xc01bb958
	.size	c, 8

	.type	d,@object                       # @d
	.globl	d
	.p2align	3, 0x0
d:
	.dword	3223732224                      # 0xc0264000
	.size	d, 8

	.type	e,@object                       # @e
	.globl	e
	.p2align	3, 0x0
e:
	.dword	3223879680                      # 0xc0288000
	.size	e, 8

	.type	f,@object                       # @f
	.globl	f
	.p2align	3, 0x0
f:
	.dword	3224191864                      # 0xc02d4378
	.size	f, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
