	.file	"sumarray-dbl.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(TheArray)
	addi.d	$a0, $a0, %pc_lo12(TheArray)
	addi.d	$a1, $a0, 32
	ori	$a2, $zero, 800
	lu12i.w	$a3, -167773
	ori	$a3, $a3, 3441
	lu32i.d	$a3, -479069
	lu52i.d	$a3, $a3, 1026
	xvreplgr2vr.d	$xr1, $a3
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr0, 4
	vext2xv.du.wu	$xr3, $xr0
	xvffint.d.lu	$xr3, $xr3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvst	$xr3, $a1, -32
	xvst	$xr2, $a1, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, 64
	bnez	$a2, .LBB0_1
# %bb.2:                                # %for.body4.preheader
	xvrepli.b	$xr0, 0
	ori	$a1, $zero, 100
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_3:                                # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a0, 32
	xvld	$xr3, $a0, 0
	xvfadd.d	$xr1, $xr1, $xr2
	xvfadd.d	$xr0, $xr0, $xr3
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB0_3
# %bb.4:                                # %for.end9
	xvpickve2gr.d	$a1, $xr0, 0
	xvpickve2gr.d	$a2, $xr0, 1
	xvpickve2gr.d	$a3, $xr0, 2
	xvpickve2gr.d	$a4, $xr0, 3
	xvpickve2gr.d	$a5, $xr1, 0
	xvpickve2gr.d	$a6, $xr1, 1
	xvpickve2gr.d	$a7, $xr1, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	xvstelm.d	$xr1, $sp, 0, 3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	TheArray,@object                # @TheArray
	.bss
	.globl	TheArray
	.p2align	6, 0x0
TheArray:
	.space	6400
	.size	TheArray, 6400

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%g %g %g %g %g %g %g %g\n"
	.size	.L.str, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
