	.file	"20010224-1.c"
	.text
	.globl	ba_compute_psd                  # -- Begin function ba_compute_psd
	.p2align	5
	.type	ba_compute_psd,@function
ba_compute_psd:                         # @ba_compute_psd
# %bb.0:                                # %entry
	slli.d	$a3, $a0, 1
	pcalau12i	$a1, %pc_hi20(masktab)
	addi.d	$a1, $a1, %pc_lo12(masktab)
	ldx.h	$a1, $a1, $a3
	pcalau12i	$a2, %pc_hi20(psd)
	addi.d	$a2, $a2, %pc_lo12(psd)
	ldx.hu	$a5, $a2, $a3
	pcalau12i	$a3, %pc_hi20(bndpsd)
	addi.d	$a3, $a3, %pc_lo12(bndpsd)
	slli.d	$a6, $a1, 1
	ori	$a4, $zero, 2
	stx.h	$a5, $a3, $a6
	blt	$a4, $a0, .LBB0_16
# %bb.1:                                # %iter.check
	alsl.d	$a1, $a1, $a3, 1
	sub.d	$a6, $a4, $a0
	ori	$a4, $zero, 7
	addi.d	$a3, $a0, 1
	bgeu	$a6, $a4, .LBB0_3
# %bb.2:
	move	$a7, $a0
	b	.LBB0_13
.LBB0_3:                                # %vector.main.loop.iter.check
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a7, $zero, 31
	addi.d	$a4, $a4, 1
	bgeu	$a6, $a7, .LBB0_5
# %bb.4:
	move	$a6, $zero
	b	.LBB0_9
.LBB0_5:                                # %vector.ph
	bstrpick.d	$a6, $a4, 32, 5
	slli.d	$a6, $a6, 5
	xvrepli.b	$xr0, 0
	xvreplgr2vr.h	$xr2, $a5
	xvpermi.q	$xr2, $xr0, 18
	xvori.b	$xr1, $xr0, 0
	xvextrins.h	$xr1, $xr2, 0
	alsl.d	$a5, $a0, $a2, 1
	addi.d	$a5, $a5, 34
	move	$a7, $a6
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvadd.h	$xr1, $xr2, $xr1
	xvadd.h	$xr0, $xr3, $xr0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB0_6
# %bb.7:                                # %middle.block
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.h	$xr1, $xr1, 228
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvbsrl.v	$xr1, $xr1, 8
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.h	$xr1, $xr1, 14
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvadd.h	$xr0, $xr0, $xr1
	vpickve2gr.h	$a5, $vr0, 0
	beq	$a4, $a6, .LBB0_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a7, $a4, 24
	beqz	$a7, .LBB0_12
.LBB0_9:                                # %vec.epilog.ph
	bstrpick.d	$t1, $a4, 32, 3
	slli.d	$t0, $t1, 3
	alsl.d	$a7, $t1, $a0, 3
	alsl.w	$a3, $t1, $a3, 3
	vrepli.b	$vr0, 0
	vinsgr2vr.h	$vr0, $a5, 0
	add.d	$a0, $a6, $a0
	alsl.d	$a0, $a0, $a2, 1
	addi.d	$a0, $a0, 2
	sub.d	$a5, $a6, $t0
	.p2align	4, , 16
.LBB0_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a0, 0
	vadd.h	$vr0, $vr1, $vr0
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 16
	bnez	$a5, .LBB0_10
# %bb.11:                               # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vadd.h	$vr0, $vr0, $vr1
	vshuf4i.h	$vr1, $vr0, 14
	vadd.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a5, $vr0, 0
	bne	$a4, $t0, .LBB0_13
	b	.LBB0_15
.LBB0_12:
	add.d	$a7, $a6, $a0
	add.d	$a3, $a3, $a6
.LBB0_13:                               # %for.body.preheader
	alsl.d	$a0, $a7, $a2, 1
	addi.d	$a0, $a0, 2
	addi.w	$a3, $a3, -4
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	.p2align	4, , 16
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a0, 0
	add.d	$a5, $a4, $a5
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a3, $a3, 1
	and	$a4, $a3, $a2
	addi.d	$a0, $a0, 2
	beqz	$a4, .LBB0_14
.LBB0_15:                               # %for.cond.for.end_crit_edge
	st.h	$a5, $a1, 0
.LBB0_16:                               # %for.end
	ret
.Lfunc_end0:
	.size	ba_compute_psd, .Lfunc_end0-ba_compute_psd
                                        # -- End function
	.globl	logadd                          # -- Begin function logadd
	.p2align	5
	.type	logadd,@function
logadd:                                 # @logadd
# %bb.0:                                # %entry
	ld.h	$a0, $a0, 0
	ld.h	$a1, $a1, 0
	add.d	$a0, $a1, $a0
	ext.w.h	$a0, $a0
	ret
.Lfunc_end1:
	.size	logadd, .Lfunc_end1-logadd
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(masktab)
	ld.h	$a0, $a0, %pc_lo12(masktab)
	pcalau12i	$a1, %pc_hi20(psd)
	addi.d	$a1, $a1, %pc_lo12(psd)
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	slli.d	$a0, $a0, 1
	add.d	$a2, $a3, $a2
	ld.h	$a3, $a1, 4
	ld.h	$a1, $a1, 6
	pcalau12i	$a4, %pc_hi20(bndpsd)
	addi.d	$a4, $a4, %pc_lo12(bndpsd)
	add.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	stx.h	$a1, $a4, $a0
	ld.hu	$a0, $a4, 2
	ori	$a1, $zero, 140
	bne	$a0, $a1, .LBB2_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	ret
.LBB2_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	masktab,@object                 # @masktab
	.data
	.globl	masktab
	.p2align	1, 0x0
masktab:
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	0                               # 0x0
	.size	masktab, 12

	.type	psd,@object                     # @psd
	.globl	psd
	.p2align	1, 0x0
psd:
	.half	50                              # 0x32
	.half	40                              # 0x28
	.half	30                              # 0x1e
	.half	20                              # 0x14
	.half	10                              # 0xa
	.half	0                               # 0x0
	.size	psd, 12

	.type	bndpsd,@object                  # @bndpsd
	.globl	bndpsd
	.p2align	1, 0x0
bndpsd:
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	0                               # 0x0
	.size	bndpsd, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
