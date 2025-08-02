	.file	"930518-1.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function f
.LCPI0_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967291                      # 0xfffffffb
	.word	4294967290                      # 0xfffffffa
	.word	4294967289                      # 0xfffffff9
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.text
	.globl	f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(bar)
	ld.w	$a3, $a1, %pc_lo12(bar)
	ori	$a5, $zero, 1
	blt	$a5, $a3, .LBB0_16
# %bb.1:                                # %while.body.preheader
	ori	$a4, $zero, 2
	sub.w	$a2, $a4, $a3
	st.w	$a2, $a0, 0
	st.w	$a5, $a1, %pc_lo12(bar)
	beq	$a3, $a5, .LBB0_16
# %bb.2:                                # %iter.check
	ori	$a5, $zero, 1
	sltui	$a6, $a2, 2
	masknez	$a7, $a4, $a6
	maskeqz	$a6, $a2, $a6
	or	$a6, $a6, $a7
	add.d	$a3, $a3, $a6
	sub.w	$a3, $a4, $a3
	ori	$a4, $zero, 3
	st.w	$a5, $a1, %pc_lo12(bar)
	bgeu	$a3, $a4, .LBB0_4
# %bb.3:
	move	$a3, $a2
	move	$a2, $a0
	b	.LBB0_14
.LBB0_4:                                # %vector.main.loop.iter.check
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 15
	addi.d	$a1, $a1, 1
	bgeu	$a3, $a4, .LBB0_6
# %bb.5:
	move	$a4, $zero
	move	$a3, $a2
	b	.LBB0_10
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a3, $a1, 32, 4
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI0_0)
	slli.d	$a4, $a3, 4
	sub.d	$a3, $a2, $a4
	xvreplgr2vr.w	$xr1, $a2
	xvadd.w	$xr0, $xr1, $xr0
	addi.d	$a5, $a0, 36
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	xvrepli.w	$xr3, -16
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.w	$xr4, $xr0, $xr1
	xvadd.w	$xr5, $xr0, $xr2
	xvst	$xr4, $a5, -32
	xvst	$xr5, $a5, 0
	xvadd.w	$xr0, $xr0, $xr3
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_7
# %bb.8:                                # %middle.block
	beq	$a1, $a4, .LBB0_16
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a5, $a1, 12
	beqz	$a5, .LBB0_13
.LBB0_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a1, 32, 2
	slli.d	$a5, $a6, 2
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a7, %pc_lo12(.LCPI0_1)
	vreplgr2vr.w	$vr1, $a3
	sub.d	$a3, $a2, $a5
	alsl.d	$a2, $a6, $a0, 4
	vadd.w	$vr0, $vr1, $vr0
	alsl.d	$a0, $a4, $a0, 2
	addi.d	$a0, $a0, 4
	sub.d	$a4, $a4, $a5
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -4
	.p2align	4, , 16
.LBB0_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr3, $vr0, $vr1
	vst	$vr3, $a0, 0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, 16
	bnez	$a4, .LBB0_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a1, $a5, .LBB0_14
	b	.LBB0_16
.LBB0_13:
	alsl.d	$a2, $a4, $a0, 2
.LBB0_14:                               # %while.body.preheader24
	addi.d	$a0, $a3, 1
	addi.d	$a1, $a2, 4
	ori	$a2, $zero, 2
	.p2align	4, , 16
.LBB0_15:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a0, -2
	st.w	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bltu	$a2, $a0, .LBB0_15
.LBB0_16:                               # %while.end
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.word	4294967292                      # 0xfffffffc
	.word	4294967291                      # 0xfffffffb
	.word	4294967290                      # 0xfffffffa
	.word	4294967289                      # 0xfffffff9
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(bar)
	ld.w	$a0, $a1, %pc_lo12(bar)
	ori	$a2, $zero, 1
	st.w	$zero, $sp, 4
	blt	$a2, $a0, .LBB1_2
# %bb.1:                                # %while.body.preheader.i
	st.w	$a2, $a1, %pc_lo12(bar)
	bne	$a0, $a2, .LBB1_3
.LBB1_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %iter.check
	ori	$a1, $zero, 2
	sub.w	$a3, $a1, $a0
	sltui	$a2, $a3, 2
	masknez	$a4, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	sub.w	$a2, $a1, $a2
	ori	$a1, $zero, 3
	addi.d	$a5, $sp, 0
	bgeu	$a2, $a1, .LBB1_5
# %bb.4:
	move	$a2, $a3
	b	.LBB1_15
.LBB1_5:                                # %vector.main.loop.iter.check
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a4, $zero, 15
	addi.d	$a1, $a1, 1
	bgeu	$a2, $a4, .LBB1_10
# %bb.6:
	move	$a4, $zero
	move	$a2, $a3
.LBB1_7:                                # %vec.epilog.ph
	bstrpick.d	$a5, $a1, 32, 2
	slli.d	$a6, $a5, 2
	vreplgr2vr.w	$vr0, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI1_1)
	sub.d	$a2, $a3, $a6
	addi.d	$a3, $sp, 0
	alsl.d	$a5, $a5, $a3, 4
	vadd.w	$vr0, $vr0, $vr1
	alsl.d	$a3, $a4, $a3, 2
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a4, $a6
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -4
	.p2align	4, , 16
.LBB1_8:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr3, $vr0, $vr1
	vst	$vr3, $a3, 0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB1_8
# %bb.9:                                # %vec.epilog.middle.block
	bne	$a1, $a6, .LBB1_15
	b	.LBB1_17
.LBB1_10:                               # %vector.ph
	bstrpick.d	$a2, $a1, 32, 4
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a4, %pc_lo12(.LCPI1_0)
	slli.d	$a4, $a2, 4
	sub.d	$a2, $a3, $a4
	xvreplgr2vr.w	$xr1, $a3
	xvadd.w	$xr0, $xr1, $xr0
	addi.d	$a5, $sp, 36
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	xvrepli.w	$xr3, -16
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvadd.w	$xr4, $xr0, $xr1
	xvadd.w	$xr5, $xr0, $xr2
	xvst	$xr4, $a5, -32
	xvst	$xr5, $a5, 0
	xvadd.w	$xr0, $xr0, $xr3
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB1_11
# %bb.12:                               # %middle.block
	beq	$a1, $a4, .LBB1_17
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a5, $a1, 12
	bnez	$a5, .LBB1_7
# %bb.14:
	addi.d	$a1, $sp, 0
	alsl.d	$a5, $a4, $a1, 2
.LBB1_15:                               # %while.body.i.preheader
	addi.d	$a1, $a2, 1
	addi.d	$a2, $a5, 4
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB1_16:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a1, -2
	st.w	$a4, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bltu	$a3, $a1, .LBB1_16
.LBB1_17:                               # %f.exit
	bnez	$a0, .LBB1_2
# %bb.18:                               # %f.exit
	ld.w	$a0, $sp, 4
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_2
# %bb.19:                               # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	bar,@object                     # @bar
	.bss
	.globl	bar
	.p2align	2, 0x0
bar:
	.word	0                               # 0x0
	.size	bar, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
