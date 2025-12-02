	.file	"20120919-1.c"
	.text
	.globl	init                            # -- Begin function init
	.p2align	5
	.type	init,@function
init:                                   # @init
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.end
	ret
.LBB0_2:                                # %if.then
	st.w	$zero, $a1, 0
	ret
.Lfunc_end0:
	.size	init, .Lfunc_end0-init
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.then.1
	pcalau12i	$a0, %pc_hi20(pd)
	ld.d	$a0, $a0, %pc_lo12(pd)
	pcalau12i	$a1, %pc_hi20(pi)
	ld.d	$a1, $a1, %pc_lo12(pi)
	fld.d	$fa0, $a0, 0
	ld.w	$a1, $a1, 0
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB1_3
# %bb.1:                                # %if.end15.1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	lu12i.w	$a2, 301408
	ori	$a2, $a2, 722
	fst.d	$fa0, $a0, 0
	bne	$a1, $a2, .LBB1_4
# %bb.2:                                # %if.end19
	move	$a0, $zero
	ret
.LBB1_3:                                # %if.end15.1.thread
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a0, 0
.LBB1_4:                                # %if.then18
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	vd,@object                      # @vd
	.data
	.globl	vd
	.p2align	3, 0x0
vd:
	.dword	0x3ff0000000000000              # double 1
	.dword	0x0000000000000000              # double 0
	.size	vd, 16

	.type	vi,@object                      # @vi
	.globl	vi
	.p2align	2, 0x0
vi:
	.word	1234567890                      # 0x499602d2
	.word	0                               # 0x0
	.size	vi, 8

	.type	pd,@object                      # @pd
	.globl	pd
	.p2align	3, 0x0
pd:
	.dword	vd
	.size	pd, 8

	.type	pi,@object                      # @pi
	.globl	pi
	.p2align	3, 0x0
pi:
	.dword	vi
	.size	pi, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vd
	.addrsig_sym vi
