	.file	"20030331-1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function rintf
.LCPI0_0:
	.word	0x4b000000                      # float 8388608
.LCPI0_1:
	.word	0xcb000000                      # float -8388608
	.text
	.globl	rintf
	.p2align	5
	.type	rintf,@function
rintf:                                  # @rintf
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(x)
	fld.s	$fa0, $a0, %pc_lo12(x)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI0_0)
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_6
# %bb.1:                                # %if.then
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB0_3
# %bb.2:                                # %if.then5
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI0_1)
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	b	.LBB0_5
.LBB0_3:                                # %if.else
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_6
# %bb.4:                                # %if.then9
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI0_1)
	fsub.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
.LBB0_5:                                # %if.end13.sink.split
	fst.s	$fa0, $a0, %pc_lo12(x)
.LBB0_6:                                # %if.end13
	ret
.Lfunc_end0:
	.size	rintf, .Lfunc_end0-rintf
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0x4b000000                      # float 8388608
.LCPI1_1:
	.word	0xcb000000                      # float -8388608
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x)
	fld.s	$fa0, $a0, %pc_lo12(x)
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI1_0)
	fabs.s	$fa2, $fa0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB1_6
# %bb.1:                                # %if.then.i
	movgr2fr.w	$fa2, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB1_3
# %bb.2:                                # %if.then5.i
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa0, $fa2
	b	.LBB1_5
.LBB1_3:                                # %if.else.i
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_6
# %bb.4:                                # %if.then9.i
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI1_1)
	fsub.s	$fa0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa2
	fneg.s	$fa0, $fa0
.LBB1_5:                                # %if.end13.sink.split.i
	fst.s	$fa0, $a0, %pc_lo12(x)
.LBB1_6:                                # %rintf.exit
	vldi	$vr1, -1152
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_8
# %bb.7:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	x,@object                       # @x
	.data
	.globl	x
	.p2align	2, 0x0
x:
	.word	0xbfc00000                      # float -1.5
	.size	x, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
