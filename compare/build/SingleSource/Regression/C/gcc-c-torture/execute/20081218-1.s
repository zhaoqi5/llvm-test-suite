	.file	"20081218-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 520
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 156258
	ori	$a0, $a0, 1574
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$fp, $a0, %pc_lo12(a)
	ori	$a1, $zero, 54
	ori	$a2, $zero, 520
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 222067
	ori	$a0, $a0, 1590
	st.w	$a0, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
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
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 156258
	ori	$a1, $a1, 1574
	bne	$a0, $a1, .LBB2_27
# %bb.1:                                # %vector.body.preheader
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$fp, $a0, %pc_lo12(a)
	xvrepli.b	$xr0, 38
	ori	$a0, $zero, 480
	.p2align	4, , 16
.LBB2_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	xvldx	$xr1, $fp, $a2
	xvseq.b	$xr1, $xr1, $xr0
	xvxori.b	$xr1, $xr1, 255
	xvmskltz.b	$xr1, $xr1
	xvpickve2gr.wu	$a2, $xr1, 0
	xvpickve2gr.wu	$a3, $xr1, 4
	bstrins.d	$a2, $a3, 31, 16
	addi.w	$a3, $a2, 0
	bnez	$a3, .LBB2_4
# %bb.3:                                # %vector.body
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a2, $a1, 32
	bne	$a1, $a0, .LBB2_2
.LBB2_4:                                # %middle.split
	bnez	$a3, .LBB2_27
# %bb.5:                                # %for.body
	ld.bu	$a1, $fp, 512
	ori	$a0, $zero, 38
	bne	$a1, $a0, .LBB2_27
# %bb.6:                                # %for.body
	ld.bu	$a1, $fp, 513
	bne	$a1, $a0, .LBB2_27
# %bb.7:                                # %for.body
	ld.bu	$a1, $fp, 514
	ori	$a0, $zero, 38
	bne	$a1, $a0, .LBB2_27
# %bb.8:                                # %for.body
	ld.bu	$a1, $fp, 515
	bne	$a1, $a0, .LBB2_27
# %bb.9:                                # %for.body
	ld.bu	$a1, $fp, 516
	ori	$a0, $zero, 38
	bne	$a1, $a0, .LBB2_27
# %bb.10:                               # %for.body
	ld.bu	$a1, $fp, 517
	bne	$a1, $a0, .LBB2_27
# %bb.11:                               # %for.body
	ld.bu	$a1, $fp, 518
	ori	$a0, $zero, 38
	bne	$a1, $a0, .LBB2_27
# %bb.12:                               # %for.body
	ld.bu	$a1, $fp, 519
	bne	$a1, $a0, .LBB2_27
# %bb.13:                               # %for.cond.7
	pcaddu18i	$ra, %call36(bar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	lu12i.w	$a1, 222067
	ori	$a1, $a1, 1590
	bne	$a0, $a1, .LBB2_27
# %bb.14:                               # %if.end11
	move	$a2, $zero
	lu12i.w	$a0, 222051
	ori	$a0, $a0, 1590
	st.w	$a0, $fp, 4
	xvrepli.b	$xr0, 54
	ori	$a0, $zero, 480
	.p2align	4, , 16
.LBB2_15:                               # %vector.body13
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	xvldx	$xr1, $fp, $a2
	xvseq.b	$xr1, $xr1, $xr0
	xvxori.b	$xr1, $xr1, 255
	xvmskltz.b	$xr1, $xr1
	xvpickve2gr.wu	$a2, $xr1, 0
	xvpickve2gr.wu	$a3, $xr1, 4
	bstrins.d	$a2, $a3, 31, 16
	addi.w	$a3, $a2, 0
	bnez	$a3, .LBB2_17
# %bb.16:                               # %vector.body13
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.d	$a2, $a1, 32
	bne	$a1, $a0, .LBB2_15
.LBB2_17:                               # %middle.split17
	bnez	$a3, .LBB2_27
# %bb.18:                               # %for.body16
	ld.bu	$a1, $fp, 512
	ori	$a0, $zero, 54
	bne	$a1, $a0, .LBB2_27
# %bb.19:                               # %for.body16
	ld.bu	$a1, $fp, 513
	bne	$a1, $a0, .LBB2_27
# %bb.20:                               # %for.body16
	ld.bu	$a1, $fp, 514
	ori	$a0, $zero, 54
	bne	$a1, $a0, .LBB2_27
# %bb.21:                               # %for.body16
	ld.bu	$a1, $fp, 515
	bne	$a1, $a0, .LBB2_27
# %bb.22:                               # %for.body16
	ld.bu	$a1, $fp, 516
	ori	$a0, $zero, 54
	bne	$a1, $a0, .LBB2_27
# %bb.23:                               # %for.body16
	ld.bu	$a1, $fp, 517
	bne	$a1, $a0, .LBB2_27
# %bb.24:                               # %for.body16
	ld.bu	$a1, $fp, 518
	ori	$a0, $zero, 54
	bne	$a1, $a0, .LBB2_27
# %bb.25:                               # %for.body16
	ld.bu	$a1, $fp, 519
	bne	$a1, $a0, .LBB2_27
# %bb.26:                               # %for.cond12.7
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_27:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	3, 0x0
a:
	.space	520
	.size	a, 520

	.section	".note.GNU-stack","",@progbits
	.addrsig
