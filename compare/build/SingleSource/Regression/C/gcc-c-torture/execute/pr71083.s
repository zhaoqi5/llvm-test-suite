	.file	"pr71083.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %iter.check
	ld.w	$a1, $a0, 0
	bstrins.d	$a1, $zero, 7, 0
	xvld	$xr0, $a0, 4
	xvld	$xr1, $a0, 36
	xvreplgr2vr.w	$xr2, $a1
	xvrepli.w	$xr3, 255
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr1, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 4
	xvld	$xr0, $a0, 68
	xvld	$xr4, $a0, 100
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr1, $a0, 36
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr4, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 68
	xvld	$xr0, $a0, 132
	xvld	$xr4, $a0, 164
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr1, $a0, 100
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr4, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 132
	xvld	$xr0, $a0, 196
	xvld	$xr4, $a0, 228
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr1, $a0, 164
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr4, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 196
	xvld	$xr0, $a0, 260
	xvld	$xr4, $a0, 292
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr1, $a0, 228
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr4, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 260
	xvld	$xr0, $a0, 324
	xvld	$xr4, $a0, 356
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr1, $a0, 292
	xvand.v	$xr0, $xr0, $xr3
	xvand.v	$xr1, $xr4, $xr3
	xvor.v	$xr0, $xr0, $xr2
	xvor.v	$xr1, $xr1, $xr2
	xvst	$xr0, $a0, 324
	vld	$vr0, $a0, 388
	xvst	$xr1, $a0, 356
	vreplgr2vr.w	$vr1, $a1
	vrepli.w	$vr2, 255
	vand.v	$vr0, $vr0, $vr2
	vor.v	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 388
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	ld.hu	$a1, $a0, 1
	move	$a2, $zero
	ori	$a3, $zero, 300
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	st.h	$a1, $a4, 4
	addi.d	$a2, $a2, 6
	st.h	$a1, $a4, 7
	bne	$a2, $a3, .LBB1_1
# %bb.2:                                # %for.end
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(test)
	addi.d	$a0, $a0, %pc_lo12(test)
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(test1)
	addi.d	$a0, $a0, %pc_lo12(test1)
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	test,@object                    # @test
	.bss
	.globl	test
	.p2align	2, 0x0
test:
	.space	404
	.size	test, 404

	.type	test1,@object                   # @test1
	.globl	test1
test1:
	.space	303
	.size	test1, 303

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test
	.addrsig_sym test1
