	.file	"mt.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function MTBegin
.LCPI0_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	MTBegin
	.p2align	5
	.type	MTBegin,@function
MTBegin:                                # @MTBegin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 3676
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.end
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	stptr.d	$a1, $a0, 3668
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_1)
	ori	$a1, $zero, 3636
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3604
	xvstx	$xr1, $a0, $a1
.LBB0_2:                                # %cleanup
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	MTBegin, .Lfunc_end0-MTBegin
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function MTIdentity
.LCPI1_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI1_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	MTIdentity
	.p2align	5
	.type	MTIdentity,@function
MTIdentity:                             # @MTIdentity
# %bb.0:                                # %entry
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	stptr.d	$a1, $a0, 3668
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_1)
	ori	$a1, $zero, 3636
	xvstx	$xr0, $a0, $a1
	ori	$a1, $zero, 3604
	xvstx	$xr1, $a0, $a1
	ret
.Lfunc_end1:
	.size	MTIdentity, .Lfunc_end1-MTIdentity
                                        # -- End function
	.globl	MTEnd                           # -- Begin function MTEnd
	.p2align	5
	.type	MTEnd,@function
MTEnd:                                  # @MTEnd
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	MTEnd, .Lfunc_end2-MTEnd
                                        # -- End function
	.globl	MTTranslate                     # -- Begin function MTTranslate
	.p2align	5
	.type	MTTranslate,@function
MTTranslate:                            # @MTTranslate
# %bb.0:                                # %entry
	ori	$a3, $zero, 3628
	ldx.w	$a3, $a0, $a3
	add.d	$a1, $a3, $a1
	stptr.w	$a1, $a0, 3628
	ori	$a3, $zero, 3632
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 3604
	ldx.w	$a4, $a0, $a4
	ori	$a5, $zero, 3616
	ldx.w	$a5, $a0, $a5
	add.d	$a2, $a3, $a2
	stptr.w	$a2, $a0, 3632
	stptr.w	$a4, $a0, 3640
	stptr.w	$a5, $a0, 3644
	ori	$a3, $zero, 3608
	ldx.w	$a3, $a0, $a3
	ori	$a6, $zero, 3620
	ldx.w	$a6, $a0, $a6
	mul.d	$a4, $a4, $a1
	mul.d	$a7, $a3, $a2
	add.d	$a4, $a4, $a7
	sub.d	$a4, $zero, $a4
	stptr.w	$a4, $a0, 3664
	mul.d	$a1, $a5, $a1
	mul.d	$a2, $a6, $a2
	add.d	$a1, $a1, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a3, 1
	vinsgr2vr.w	$vr0, $a6, 2
	ori	$a1, $zero, 3648
	vstx	$vr0, $a0, $a1
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
	ret
.Lfunc_end3:
	.size	MTTranslate, .Lfunc_end3-MTTranslate
                                        # -- End function
	.globl	MTMY                            # -- Begin function MTMY
	.p2align	5
	.type	MTMY,@function
MTMY:                                   # @MTMY
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	bstrins.d	$sp, $zero, 4, 0
	ori	$a1, $zero, 3608
	ldx.w	$a1, $a0, $a1
	sub.d	$a2, $zero, $a1
	ori	$a3, $zero, 3620
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 3632
	ldx.w	$a4, $a0, $a4
	stptr.w	$a2, $a0, 3608
	sub.d	$a5, $zero, $a3
	stptr.w	$a5, $a0, 3620
	sub.d	$a6, $zero, $a4
	ori	$a7, $zero, 3604
	ldx.w	$a7, $a0, $a7
	stptr.w	$a6, $a0, 3632
	ori	$a6, $zero, 3628
	ldx.w	$a6, $a0, $a6
	stptr.w	$a7, $a0, 3640
	ori	$t0, $zero, 3616
	ldx.w	$t0, $a0, $t0
	mul.d	$a7, $a6, $a7
	mul.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a7
	sub.d	$a1, $zero, $a1
	mul.d	$a6, $a6, $t0
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a6
	sub.d	$a3, $zero, $a3
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 60
	st.w	$zero, $sp, 48
	st.w	$zero, $sp, 36
	st.w	$t0, $sp, 32
	st.w	$a5, $sp, 44
	st.w	$a2, $sp, 40
	st.w	$a3, $sp, 56
	st.w	$a1, $sp, 52
	xvld	$xr0, $sp, 32
	ori	$a1, $zero, 3644
	xvstx	$xr0, $a0, $a1
	addi.d	$sp, $fp, -96
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	MTMY, .Lfunc_end4-MTMY
                                        # -- End function
	.globl	MTMX                            # -- Begin function MTMX
	.p2align	5
	.type	MTMX,@function
MTMX:                                   # @MTMX
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 96
	bstrins.d	$sp, $zero, 4, 0
	ori	$a1, $zero, 3604
	ldx.w	$a1, $a0, $a1
	sub.d	$a2, $zero, $a1
	ori	$a3, $zero, 3616
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 3628
	ldx.w	$a4, $a0, $a4
	stptr.w	$a2, $a0, 3604
	sub.d	$a5, $zero, $a3
	stptr.w	$a5, $a0, 3616
	sub.d	$a6, $zero, $a4
	stptr.w	$a6, $a0, 3628
	stptr.w	$a2, $a0, 3640
	ori	$a2, $zero, 3608
	ldx.w	$a2, $a0, $a2
	ori	$a6, $zero, 3632
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 3620
	ldx.w	$a7, $a0, $a7
	mul.d	$a1, $a4, $a1
	mul.d	$t0, $a6, $a2
	add.d	$a1, $a1, $t0
	sub.d	$a1, $zero, $a1
	mul.d	$a3, $a4, $a3
	mul.d	$a4, $a6, $a7
	add.d	$a3, $a3, $a4
	sub.d	$a3, $zero, $a3
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 60
	st.w	$zero, $sp, 48
	st.w	$zero, $sp, 36
	st.w	$a7, $sp, 44
	st.w	$a2, $sp, 40
	st.w	$a5, $sp, 32
	st.w	$a3, $sp, 56
	st.w	$a1, $sp, 52
	xvld	$xr0, $sp, 32
	ori	$a1, $zero, 3644
	xvstx	$xr0, $a0, $a1
	addi.d	$sp, $fp, -96
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end5:
	.size	MTMX, .Lfunc_end5-MTMX
                                        # -- End function
	.globl	MTRotate                        # -- Begin function MTRotate
	.p2align	5
	.type	MTRotate,@function
MTRotate:                               # @MTRotate
# %bb.0:                                # %entry
	beqz	$a1, .LBB6_5
# %bb.1:                                # %if.else7
	bnez	$a2, .LBB6_8
# %bb.2:                                # %if.then9
	srai.d	$a2, $a1, 31
	xor	$a3, $a1, $a2
	sub.w	$a3, $a3, $a2
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a3
	srai.d	$a4, $a1, 31
	ori	$a4, $a4, 1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	addi.w	$a3, $zero, -1
	beq	$a1, $a3, .LBB6_10
# %bb.3:                                # %if.then9
	bne	$a1, $a2, .LBB6_8
# %bb.4:                                # %cleanup
	ret
.LBB6_5:                                # %if.then
	srai.d	$a1, $a2, 31
	xor	$a3, $a2, $a1
	sub.w	$a3, $a3, $a1
	ori	$a1, $zero, 1
	sltu	$a3, $a1, $a3
	srai.d	$a4, $a2, 31
	ori	$a4, $a4, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	addi.w	$a3, $zero, -1
	beq	$a2, $a3, .LBB6_9
# %bb.6:                                # %if.then
	bne	$a2, $a1, .LBB6_8
# %bb.7:                                # %if.then75
	ori	$a1, $zero, 3608
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 3604
	ldx.w	$a2, $a0, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3604
	ori	$a3, $zero, 3620
	ldx.w	$a3, $a0, $a3
	stptr.w	$a2, $a0, 3608
	ori	$a4, $zero, 3616
	ldx.w	$a4, $a0, $a4
	sub.d	$a3, $zero, $a3
	stptr.w	$a3, $a0, 3616
	ori	$a5, $zero, 3632
	ldx.w	$a5, $a0, $a5
	ori	$a6, $zero, 3628
	ldx.w	$a6, $a0, $a6
	stptr.w	$a4, $a0, 3620
	sub.d	$a5, $zero, $a5
	stptr.w	$a5, $a0, 3628
	b	.LBB6_12
.LBB6_8:                                # %if.else115.if.end140_crit_edge
	ori	$a1, $zero, 3604
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 3616
	ldx.w	$a3, $a0, $a2
	ori	$a2, $zero, 3608
	ldx.w	$a2, $a0, $a2
	ori	$a4, $zero, 3620
	ldx.w	$a4, $a0, $a4
	ori	$a5, $zero, 3628
	ldx.w	$a5, $a0, $a5
	ori	$a6, $zero, 3632
	ldx.w	$a6, $a0, $a6
	b	.LBB6_13
.LBB6_9:                                # %if.then32
	ori	$a2, $zero, 3604
	ori	$a1, $zero, 3608
	ldx.w	$a1, $a0, $a1
	ldx.w	$a2, $a0, $a2
	stptr.w	$a1, $a0, 3604
	sub.d	$a2, $zero, $a2
	ori	$a3, $zero, 3620
	ldx.w	$a3, $a0, $a3
	stptr.w	$a2, $a0, 3608
	ori	$a4, $zero, 3616
	ldx.w	$a4, $a0, $a4
	stptr.w	$a3, $a0, 3616
	ori	$a6, $zero, 3628
	ori	$a5, $zero, 3632
	ldx.w	$a5, $a0, $a5
	ldx.w	$a6, $a0, $a6
	sub.d	$a4, $zero, $a4
	stptr.w	$a4, $a0, 3620
	b	.LBB6_11
.LBB6_10:                               # %for.cond.preheader
	ori	$a1, $zero, 3604
	ldx.w	$a1, $a0, $a1
	ori	$a2, $zero, 3608
	ldx.w	$a2, $a0, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3604
	sub.d	$a2, $zero, $a2
	ori	$a3, $zero, 3616
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 3620
	ldx.w	$a4, $a0, $a4
	stptr.w	$a2, $a0, 3608
	sub.d	$a3, $zero, $a3
	stptr.w	$a3, $a0, 3616
	sub.d	$a4, $zero, $a4
	ori	$a5, $zero, 3628
	ldx.w	$a5, $a0, $a5
	ori	$a6, $zero, 3632
	ldx.w	$a6, $a0, $a6
	stptr.w	$a4, $a0, 3620
	sub.d	$a5, $zero, $a5
.LBB6_11:                               # %if.end140
	stptr.w	$a5, $a0, 3628
	sub.d	$a6, $zero, $a6
.LBB6_12:                               # %if.end140
	stptr.w	$a6, $a0, 3632
.LBB6_13:                               # %if.end140
	stptr.w	$a1, $a0, 3640
	stptr.w	$a3, $a0, 3644
	stptr.w	$a2, $a0, 3652
	stptr.w	$a4, $a0, 3656
	mul.d	$a1, $a5, $a1
	mul.d	$a2, $a6, $a2
	add.d	$a1, $a1, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3664
	mul.d	$a1, $a5, $a3
	mul.d	$a2, $a6, $a4
	add.d	$a1, $a1, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
	ret
.Lfunc_end6:
	.size	MTRotate, .Lfunc_end6-MTRotate
                                        # -- End function
	.globl	MTConcat                        # -- Begin function MTConcat
	.p2align	5
	.type	MTConcat,@function
MTConcat:                               # @MTConcat
# %bb.0:                                # %entry
	ori	$a2, $zero, 3604
	ldx.w	$a2, $a0, $a2
	ld.w	$a3, $a1, 0
	ori	$a4, $zero, 3608
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a1, 12
	ld.w	$a6, $a1, 4
	mul.d	$a7, $a3, $a2
	mul.d	$t0, $a5, $a4
	add.d	$a7, $t0, $a7
	mul.d	$a2, $a6, $a2
	ld.w	$t0, $a1, 16
	ori	$t1, $zero, 3616
	ldx.w	$t1, $a0, $t1
	ori	$t2, $zero, 3620
	ldx.w	$t2, $a0, $t2
	mul.d	$a4, $t0, $a4
	add.d	$a2, $a4, $a2
	mul.d	$a4, $t1, $a3
	mul.d	$t3, $t2, $a5
	add.d	$a4, $t3, $a4
	mul.d	$t1, $t1, $a6
	mul.d	$t2, $t2, $t0
	ori	$t3, $zero, 3628
	ldx.w	$t3, $a0, $t3
	ori	$t4, $zero, 3632
	ldx.w	$t4, $a0, $t4
	add.d	$t1, $t2, $t1
	ld.w	$t2, $a1, 24
	mul.d	$a3, $t3, $a3
	mul.d	$a5, $t4, $a5
	add.d	$a3, $a5, $a3
	add.d	$a3, $a3, $t2
	ld.w	$a1, $a1, 28
	mul.d	$a5, $t3, $a6
	mul.d	$a6, $t4, $t0
	add.d	$a5, $a6, $a5
	add.d	$a1, $a5, $a1
	stptr.w	$a7, $a0, 3604
	stptr.w	$a2, $a0, 3608
	stptr.w	$a4, $a0, 3616
	stptr.w	$t1, $a0, 3620
	stptr.w	$a3, $a0, 3628
	stptr.w	$a1, $a0, 3632
	stptr.w	$a7, $a0, 3640
	stptr.w	$a4, $a0, 3644
	stptr.w	$a2, $a0, 3652
	stptr.w	$t1, $a0, 3656
	mul.d	$a5, $a3, $a7
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a5, $a2
	sub.d	$a2, $zero, $a2
	stptr.w	$a2, $a0, 3664
	mul.d	$a2, $a3, $a4
	mul.d	$a1, $a1, $t1
	add.d	$a1, $a2, $a1
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
	ret
.Lfunc_end7:
	.size	MTConcat, .Lfunc_end7-MTConcat
                                        # -- End function
	.globl	MTPoint                         # -- Begin function MTPoint
	.p2align	5
	.type	MTPoint,@function
MTPoint:                                # @MTPoint
# %bb.0:                                # %entry
	ld.w	$a3, $a1, 0
	ori	$a4, $zero, 3604
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a2, 0
	ori	$a6, $zero, 3616
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 3628
	ldx.w	$a7, $a0, $a7
	mul.d	$a4, $a4, $a3
	mul.d	$a6, $a6, $a5
	add.d	$a4, $a6, $a4
	add.d	$a4, $a4, $a7
	ori	$a6, $zero, 3608
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 3620
	ldx.w	$a7, $a0, $a7
	ori	$t0, $zero, 3632
	ldx.w	$a0, $a0, $t0
	mul.d	$a3, $a6, $a3
	mul.d	$a5, $a7, $a5
	add.d	$a3, $a5, $a3
	add.d	$a0, $a3, $a0
	st.w	$a0, $a2, 0
	st.w	$a4, $a1, 0
	ret
.Lfunc_end8:
	.size	MTPoint, .Lfunc_end8-MTPoint
                                        # -- End function
	.globl	MTIPoint                        # -- Begin function MTIPoint
	.p2align	5
	.type	MTIPoint,@function
MTIPoint:                               # @MTIPoint
# %bb.0:                                # %entry
	ld.w	$a3, $a1, 0
	ori	$a4, $zero, 3640
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a2, 0
	ori	$a6, $zero, 3652
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 3664
	ldx.w	$a7, $a0, $a7
	mul.d	$a4, $a4, $a3
	mul.d	$a6, $a6, $a5
	add.d	$a4, $a6, $a4
	add.d	$a4, $a4, $a7
	ori	$a6, $zero, 3644
	ldx.w	$a6, $a0, $a6
	ori	$a7, $zero, 3656
	ldx.w	$a7, $a0, $a7
	ori	$t0, $zero, 3668
	ldx.w	$a0, $a0, $t0
	mul.d	$a3, $a6, $a3
	mul.d	$a5, $a7, $a5
	add.d	$a3, $a5, $a3
	add.d	$a0, $a3, $a0
	st.w	$a0, $a2, 0
	st.w	$a4, $a1, 0
	ret
.Lfunc_end9:
	.size	MTIPoint, .Lfunc_end9-MTIPoint
                                        # -- End function
	.globl	MTPushP                         # -- Begin function MTPushP
	.p2align	5
	.type	MTPushP,@function
MTPushP:                                # @MTPushP
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 100
	bne	$a1, $a2, .LBB10_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB10_2:                               # %for.cond.preheader
	ori	$a2, $zero, 3604
	ldx.w	$a2, $a0, $a2
	addi.d	$a3, $a0, 4
	ori	$a4, $zero, 36
	mul.d	$a1, $a1, $a4
	stx.w	$a2, $a3, $a1
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 3608
	ldx.w	$a2, $a0, $a2
	mul.d	$a1, $a1, $a4
	ori	$a5, $zero, 3616
	ldx.w	$a5, $a0, $a5
	add.d	$a3, $a3, $a1
	st.w	$a2, $a3, 4
	addi.d	$a2, $a0, 16
	stx.w	$a5, $a2, $a1
	ld.w	$a1, $a0, 0
	ori	$a3, $zero, 3620
	ldx.w	$a3, $a0, $a3
	mul.d	$a1, $a1, $a4
	ori	$a5, $zero, 3628
	ldx.w	$a5, $a0, $a5
	add.d	$a2, $a2, $a1
	st.w	$a3, $a2, 4
	addi.d	$a2, $a0, 28
	stx.w	$a5, $a2, $a1
	ld.w	$a1, $a0, 0
	ori	$a3, $zero, 3632
	ldx.w	$a3, $a0, $a3
	mul.d	$a4, $a1, $a4
	add.d	$a2, $a2, $a4
	st.w	$a3, $a2, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ret
.Lfunc_end10:
	.size	MTPushP, .Lfunc_end10-MTPushP
                                        # -- End function
	.globl	MTPopP                          # -- Begin function MTPopP
	.p2align	5
	.type	MTPopP,@function
MTPopP:                                 # @MTPopP
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB11_2
# %bb.1:                                # %if.end
	addi.w	$a1, $a1, -1
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 2
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 4
	stptr.w	$a3, $a0, 3604
	ld.w	$a4, $a2, 8
	stptr.w	$a4, $a0, 3608
	ld.w	$a5, $a2, 16
	stptr.w	$a5, $a0, 3616
	ld.w	$a6, $a2, 20
	stptr.w	$a6, $a0, 3620
	ld.w	$a7, $a2, 28
	stptr.w	$a7, $a0, 3628
	ld.w	$a2, $a2, 32
	st.w	$a1, $a0, 0
	stptr.w	$a2, $a0, 3632
	stptr.w	$a3, $a0, 3640
	stptr.w	$a5, $a0, 3644
	stptr.w	$a4, $a0, 3652
	stptr.w	$a6, $a0, 3656
	mul.d	$a1, $a7, $a3
	mul.d	$a3, $a2, $a4
	add.d	$a1, $a1, $a3
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3664
	mul.d	$a1, $a7, $a5
	mul.d	$a2, $a2, $a6
	add.d	$a1, $a1, $a2
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
	ori	$a0, $zero, 1
	ret
.LBB11_2:
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	MTPopP, .Lfunc_end11-MTPopP
                                        # -- End function
	.globl	MTPremultiplyP                  # -- Begin function MTPremultiplyP
	.p2align	5
	.type	MTPremultiplyP,@function
MTPremultiplyP:                         # @MTPremultiplyP
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB12_2
# %bb.1:                                # %if.end
	addi.w	$a1, $a1, -1
	ori	$a2, $zero, 3604
	ldx.w	$a2, $a0, $a2
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $a0, $a1
	ld.w	$a3, $a1, 4
	ori	$a4, $zero, 3608
	ldx.w	$a4, $a0, $a4
	ld.w	$a5, $a1, 16
	ld.w	$a6, $a1, 8
	mul.d	$a7, $a3, $a2
	mul.d	$t0, $a5, $a4
	add.d	$a7, $t0, $a7
	mul.d	$a2, $a6, $a2
	ld.w	$t0, $a1, 20
	ori	$t1, $zero, 3616
	ldx.w	$t1, $a0, $t1
	ori	$t2, $zero, 3620
	ldx.w	$t2, $a0, $t2
	mul.d	$a4, $t0, $a4
	add.d	$a2, $a4, $a2
	mul.d	$a4, $t1, $a3
	mul.d	$t3, $t2, $a5
	add.d	$a4, $t3, $a4
	mul.d	$t1, $t1, $a6
	mul.d	$t2, $t2, $t0
	ori	$t3, $zero, 3628
	ldx.w	$t3, $a0, $t3
	ori	$t4, $zero, 3632
	ldx.w	$t4, $a0, $t4
	add.d	$t1, $t2, $t1
	ld.w	$t2, $a1, 28
	mul.d	$a3, $t3, $a3
	mul.d	$a5, $t4, $a5
	add.d	$a3, $a5, $a3
	add.d	$a3, $a3, $t2
	ld.w	$a1, $a1, 32
	mul.d	$a5, $t3, $a6
	mul.d	$a6, $t4, $t0
	add.d	$a5, $a6, $a5
	add.d	$a1, $a5, $a1
	stptr.w	$a7, $a0, 3604
	stptr.w	$a2, $a0, 3608
	stptr.w	$a4, $a0, 3616
	stptr.w	$t1, $a0, 3620
	stptr.w	$a3, $a0, 3628
	stptr.w	$a1, $a0, 3632
	stptr.w	$a7, $a0, 3640
	stptr.w	$a4, $a0, 3644
	stptr.w	$a2, $a0, 3652
	stptr.w	$t1, $a0, 3656
	mul.d	$a5, $a3, $a7
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a5, $a2
	sub.d	$a2, $zero, $a2
	stptr.w	$a2, $a0, 3664
	mul.d	$a2, $a3, $a4
	mul.d	$a1, $a1, $t1
	add.d	$a1, $a2, $a1
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
	ori	$a0, $zero, 1
	ret
.LBB12_2:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	MTPremultiplyP, .Lfunc_end12-MTPremultiplyP
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function MTDecodeP
.LCPI13_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI13_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI13_2:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI13_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.text
	.globl	MTDecodeP
	.p2align	5
	.type	MTDecodeP,@function
MTDecodeP:                              # @MTDecodeP
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ori	$a3, $zero, 100
	bne	$a2, $a3, .LBB13_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB13_2:                               # %if.end
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 3604
	ldx.w	$a3, $a0, $a4
	addi.d	$s2, $a0, 4
	ori	$a5, $zero, 36
	mul.d	$a2, $a2, $a5
	stx.w	$a3, $s2, $a2
	ld.w	$a2, $a0, 0
	ori	$a6, $zero, 3608
	ldx.w	$a3, $a0, $a6
	mul.d	$a2, $a2, $a5
	ori	$a7, $zero, 3616
	ldx.w	$t0, $a0, $a7
	add.d	$t1, $s2, $a2
	st.w	$a3, $t1, 4
	addi.d	$a3, $a0, 16
	stx.w	$t0, $a3, $a2
	ld.w	$t0, $a0, 0
	ori	$t1, $zero, 3620
	ldptr.w	$a2, $a0, 3628
	ldx.w	$t2, $a0, $t1
	mul.d	$t0, $t0, $a5
	addi.d	$t3, $a0, 28
	stx.w	$a2, $t3, $t0
	ld.w	$t4, $a0, 0
	add.d	$t0, $a3, $t0
	ldptr.w	$a3, $a0, 3632
	st.w	$t2, $t0, 4
	mul.d	$a5, $t4, $a5
	add.d	$a5, $t3, $a5
	st.w	$a3, $a5, 4
	addi.d	$a5, $t4, 1
	st.w	$a5, $a0, 0
	ldptr.w	$s3, $a0, 3604
	pcalau12i	$a5, %pc_hi20(.LCPI13_0)
	xvld	$xr0, $a5, %pc_lo12(.LCPI13_0)
	ldx.w	$s4, $a0, $a7
	ldx.w	$s6, $a0, $a6
	ori	$a5, $zero, 3636
	xvstx	$xr0, $a0, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI13_1)
	xvld	$xr0, $a5, %pc_lo12(.LCPI13_1)
	ldx.w	$s5, $a0, $t1
	ori	$a6, $zero, 1
	stptr.w	$a6, $a0, 3672
	xvstx	$xr0, $a0, $a4
	sltui	$a5, $s3, 1
	addi.d	$a4, $s4, -1
	sltui	$a4, $a4, 1
	and	$a4, $a5, $a4
	stptr.w	$zero, $a0, 3668
	bne	$a4, $a6, .LBB13_7
# %bb.3:                                # %if.end
	bne	$s6, $a6, .LBB13_7
# %bb.4:                                # %if.end
	bnez	$s5, .LBB13_7
# %bb.5:                                # %if.then23
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	stptr.d	$a4, $a0, 3604
	ori	$a5, $zero, 1
	stptr.d	$a5, $a0, 3616
	stptr.w	$a2, $a0, 3628
	stptr.w	$a3, $a0, 3632
	stptr.d	$zero, $a0, 3656
	sub.d	$a6, $zero, $a3
	stptr.w	$a6, $a0, 3664
	sub.d	$a6, $zero, $a2
	stptr.w	$a6, $a0, 3668
	vreplgr2vr.d	$vr0, $a4
	ori	$a4, $zero, 3640
	vstx	$vr0, $a0, $a4
	or	$a4, $a2, $a3
	stptr.w	$a5, $a0, 3672
	beqz	$a4, .LBB13_16
# %bb.6:                                # %if.then26
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a5, %pc_hi20(.L.str)
	addi.d	$a5, $a5, %pc_lo12(.L.str)
	b	.LBB13_21
.LBB13_7:                               # %if.else30
	addi.d	$a7, $s4, 1
	sltui	$a7, $a7, 1
	and	$a5, $a5, $a7
	bne	$a5, $a6, .LBB13_12
# %bb.8:                                # %if.else30
	addi.w	$a6, $zero, -1
	bne	$s6, $a6, .LBB13_12
# %bb.9:                                # %if.else30
	bnez	$s5, .LBB13_12
# %bb.10:                               # %if.then38
	ori	$a4, $zero, 0
	lu32i.d	$a4, -1
	stptr.d	$a4, $a0, 3604
	lu32i.d	$a6, 0
	stptr.d	$a6, $a0, 3616
	stptr.w	$a2, $a0, 3628
	stptr.w	$a3, $a0, 3632
	stptr.d	$zero, $a0, 3656
	stptr.w	$a3, $a0, 3664
	stptr.w	$a2, $a0, 3668
	vreplgr2vr.d	$vr0, $a4
	ori	$a4, $zero, 3640
	vstx	$vr0, $a0, $a4
	ori	$a4, $zero, 1
	or	$a5, $a2, $a3
	stptr.w	$a4, $a0, 3672
	beqz	$a5, .LBB13_22
# %bb.11:                               # %if.then42
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a5, %pc_hi20(.L.str.2)
	addi.d	$a5, $a5, %pc_lo12(.L.str.2)
	b	.LBB13_21
.LBB13_12:                              # %if.else47
	addi.d	$a6, $s6, 1
	sltui	$a6, $a6, 1
	and	$a6, $a4, $a6
	ori	$a4, $zero, 1
	bne	$a6, $a4, .LBB13_17
# %bb.13:                               # %if.else47
	bnez	$s5, .LBB13_17
# %bb.14:                               # %if.then55
	ori	$a4, $zero, 0
	lu32i.d	$a4, -1
	stptr.d	$a4, $a0, 3604
	ori	$a4, $zero, 1
	stptr.d	$a4, $a0, 3616
	stptr.w	$a2, $a0, 3628
	stptr.w	$a3, $a0, 3632
	stptr.d	$zero, $a0, 3656
	stptr.w	$a3, $a0, 3664
	pcalau12i	$a5, %pc_hi20(.LCPI13_3)
	vld	$vr0, $a5, %pc_lo12(.LCPI13_3)
	sub.d	$a5, $zero, $a2
	stptr.w	$a5, $a0, 3668
	ori	$a5, $zero, 3640
	vstx	$vr0, $a0, $a5
	or	$a5, $a2, $a3
	stptr.w	$a4, $a0, 3672
	beqz	$a5, .LBB13_39
# %bb.15:                               # %if.then59
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a5, %pc_hi20(.L.str.4)
	addi.d	$a5, $a5, %pc_lo12(.L.str.4)
	b	.LBB13_21
.LBB13_16:                              # %if.else
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	ld.h	$a3, $a2, 8
	ld.d	$a2, $a2, 0
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	st.h	$a3, $a4, 8
	b	.LBB13_23
.LBB13_17:                              # %if.else64
	addi.d	$a6, $s6, -1
	sltui	$a6, $a6, 1
	and	$a5, $a5, $a6
	bne	$a5, $a4, .LBB13_35
# %bb.18:                               # %if.else64
	bnez	$s5, .LBB13_35
# %bb.19:                               # %if.then72
	ori	$a4, $zero, 0
	lu32i.d	$a4, 1
	stptr.d	$a4, $a0, 3604
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	stptr.d	$a4, $a0, 3616
	stptr.w	$a2, $a0, 3628
	stptr.w	$a3, $a0, 3632
	stptr.d	$zero, $a0, 3656
	pcalau12i	$a4, %pc_hi20(.LCPI13_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI13_2)
	sub.d	$a4, $zero, $a3
	stptr.w	$a4, $a0, 3664
	ori	$a4, $zero, 3640
	vstx	$vr0, $a0, $a4
	ori	$a4, $zero, 1
	stptr.w	$a4, $a0, 3672
	or	$a4, $a2, $a3
	stptr.w	$a2, $a0, 3668
	beqz	$a4, .LBB13_44
# %bb.20:                               # %if.then76
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a5, %pc_hi20(.L.str.6)
	addi.d	$a5, $a5, %pc_lo12(.L.str.6)
.LBB13_21:                              # %if.end157
	move	$fp, $a0
	move	$a0, $a4
	move	$s0, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	move	$a0, $fp
	b	.LBB13_24
.LBB13_22:                              # %if.else44
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	ld.b	$a3, $a2, 8
	ld.d	$a2, $a2, 0
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	st.b	$a3, $a4, 8
.LBB13_23:                              # %if.end157
	st.d	$a2, $a4, 0
.LBB13_24:                              # %if.end157
	ldptr.w	$a2, $a0, 3604
	bne	$a2, $s3, .LBB13_31
# %bb.25:                               # %land.lhs.true162
	ldptr.w	$a2, $a0, 3608
	bne	$a2, $s6, .LBB13_31
# %bb.26:                               # %land.lhs.true167
	ldptr.w	$a2, $a0, 3616
	bne	$a2, $s4, .LBB13_31
# %bb.27:                               # %land.lhs.true172
	ldptr.w	$a2, $a0, 3620
	bne	$a2, $s5, .LBB13_31
# %bb.28:                               # %if.then177
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB13_30
# %bb.29:                               # %if.end.i
	addi.w	$a2, $a2, -1
	slli.d	$a3, $a2, 5
	alsl.d	$a3, $a2, $a3, 2
	ldx.w	$a4, $s2, $a3
	add.d	$a3, $s2, $a3
	stptr.w	$a4, $a0, 3604
	ld.w	$a5, $a3, 4
	stptr.w	$a5, $a0, 3608
	ld.w	$a6, $a3, 12
	stptr.w	$a6, $a0, 3616
	ld.w	$a7, $a3, 16
	stptr.w	$a7, $a0, 3620
	ld.w	$t0, $a3, 24
	stptr.w	$t0, $a0, 3628
	ld.w	$a3, $a3, 28
	st.w	$a2, $a0, 0
	stptr.w	$a3, $a0, 3632
	stptr.w	$a4, $a0, 3640
	stptr.w	$a6, $a0, 3644
	stptr.w	$a5, $a0, 3652
	stptr.w	$a7, $a0, 3656
	mul.d	$a2, $t0, $a4
	mul.d	$a4, $a3, $a5
	add.d	$a2, $a2, $a4
	sub.d	$a2, $zero, $a2
	stptr.w	$a2, $a0, 3664
	mul.d	$a2, $t0, $a6
	mul.d	$a3, $a3, $a7
	add.d	$a2, $a2, $a3
	sub.d	$a2, $zero, $a2
	stptr.w	$a2, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a2, $zero, 1
	stptr.w	$a2, $a0, 3672
.LBB13_30:                              # %MTPopP.exit
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	addi.d	$a0, $a0, %pc_lo12(MTDecodeP.cif)
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB13_34
.LBB13_31:                              # %if.else179
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB13_33
# %bb.32:                               # %if.end.i333
	addi.w	$a1, $a1, -1
	slli.d	$a2, $a1, 5
	alsl.d	$a2, $a1, $a2, 2
	ldx.w	$a3, $s2, $a2
	add.d	$a2, $s2, $a2
	stptr.w	$a3, $a0, 3604
	ld.w	$a4, $a2, 4
	stptr.w	$a4, $a0, 3608
	ld.w	$a5, $a2, 12
	stptr.w	$a5, $a0, 3616
	ld.w	$a6, $a2, 16
	stptr.w	$a6, $a0, 3620
	ld.w	$a7, $a2, 24
	st.w	$a1, $a0, 0
	stptr.w	$a7, $a0, 3628
	ld.w	$a1, $a2, 28
	stptr.w	$a3, $a0, 3640
	stptr.w	$a4, $a0, 3652
	mul.d	$a2, $a7, $a3
	mul.d	$a3, $a1, $a4
	add.d	$a2, $a2, $a3
	stptr.w	$a1, $a0, 3632
	stptr.w	$a5, $a0, 3644
	stptr.w	$a6, $a0, 3656
	sub.d	$a2, $zero, $a2
	stptr.w	$a2, $a0, 3664
	mul.d	$a2, $a7, $a5
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a2, $a1
	sub.d	$a1, $zero, $a1
	stptr.w	$a1, $a0, 3668
	stptr.w	$zero, $a0, 3660
	stptr.w	$zero, $a0, 3648
	ori	$a1, $zero, 1
	stptr.w	$a1, $a0, 3672
.LBB13_33:
	move	$a0, $zero
.LBB13_34:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB13_35:                              # %if.else81
	addi.d	$a4, $s3, -1
	sltui	$a4, $a4, 1
	sltui	$a5, $s4, 1
	and	$a4, $a4, $a5
	sltui	$a6, $s6, 1
	and	$a4, $a4, $a6
	ori	$a7, $zero, 1
	bne	$a4, $a7, .LBB13_40
# %bb.36:                               # %if.else81
	bne	$s5, $a7, .LBB13_40
# %bb.37:                               # %if.then89
	move	$fp, $a1
	move	$s0, $a0
	move	$a1, $a2
	move	$s1, $a2
	move	$a2, $a3
	move	$s7, $a3
	pcaddu18i	$ra, %call36(MTTranslate)
	jirl	$ra, $ra, 0
	or	$a0, $s1, $s7
	beqz	$a0, .LBB13_48
# %bb.38:                               # %if.then93
	move	$a3, $s7
	move	$a2, $s1
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	addi.d	$a0, $a0, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_49
.LBB13_39:                              # %if.else61
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	ld.w	$a3, $a2, 3
	ld.w	$a2, $a2, 0
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	st.w	$a3, $a4, 3
	st.w	$a2, $a4, 0
	b	.LBB13_24
.LBB13_40:                              # %if.else97
	addi.d	$t0, $s3, 1
	sltui	$t0, $t0, 1
	and	$a5, $t0, $a5
	and	$a5, $a5, $a6
	bne	$a5, $a7, .LBB13_45
# %bb.41:                               # %if.else97
	addi.w	$a6, $zero, -1
	bne	$s5, $a6, .LBB13_45
# %bb.42:                               # %if.then105
	move	$s7, $a1
	addi.w	$a1, $zero, -1
	move	$s1, $a0
	move	$fp, $a2
	move	$a2, $zero
	move	$s0, $a3
	pcaddu18i	$ra, %call36(MTRotate)
	jirl	$ra, $ra, 0
	move	$s8, $s1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MTTranslate)
	jirl	$ra, $ra, 0
	or	$a0, $fp, $s0
	beqz	$a0, .LBB13_54
# %bb.43:                               # %if.then109
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	addi.d	$a0, $a0, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	b	.LBB13_53
.LBB13_44:                              # %if.else78
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	ld.h	$a3, $a2, 4
	ld.w	$a2, $a2, 0
	pcalau12i	$a4, %pc_hi20(MTDecodeP.cif)
	addi.d	$a4, $a4, %pc_lo12(MTDecodeP.cif)
	st.h	$a3, $a4, 4
	st.w	$a2, $a4, 0
	b	.LBB13_24
.LBB13_45:                              # %if.else114
	addi.d	$a6, $s5, -1
	sltui	$a6, $a6, 1
	and	$a6, $a5, $a6
	ori	$a5, $zero, 1
	bne	$a6, $a5, .LBB13_50
# %bb.46:                               # %if.then122
	move	$s7, $a1
	move	$s1, $a0
	move	$fp, $a2
	move	$s0, $a3
	pcaddu18i	$ra, %call36(MTMX)
	jirl	$ra, $ra, 0
	move	$s8, $s1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MTTranslate)
	jirl	$ra, $ra, 0
	or	$a0, $fp, $s0
	beqz	$a0, .LBB13_55
# %bb.47:                               # %if.then126
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	addi.d	$a0, $a0, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	b	.LBB13_53
.LBB13_48:                              # %if.else95
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	st.b	$zero, $a0, %pc_lo12(MTDecodeP.cif)
.LBB13_49:                              # %if.end157
	move	$a0, $s0
	move	$a1, $fp
	b	.LBB13_24
.LBB13_50:                              # %if.else131
	addi.d	$a6, $s5, 1
	sltui	$a6, $a6, 1
	and	$a4, $a4, $a6
	bne	$a4, $a5, .LBB13_56
# %bb.51:                               # %if.then139
	move	$s7, $a1
	move	$s1, $a0
	move	$fp, $a2
	move	$s0, $a3
	pcaddu18i	$ra, %call36(MTMY)
	jirl	$ra, $ra, 0
	move	$s8, $s1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MTTranslate)
	jirl	$ra, $ra, 0
	or	$a0, $fp, $s0
	beqz	$a0, .LBB13_57
# %bb.52:                               # %if.then143
	pcalau12i	$a0, %pc_hi20(MTDecodeP.cif)
	addi.d	$a0, $a0, %pc_lo12(MTDecodeP.cif)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
.LBB13_53:                              # %if.end157
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB13_59
.LBB13_54:                              # %if.else111
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ld.w	$a1, $a0, 3
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(MTDecodeP.cif)
	addi.d	$a2, $a2, %pc_lo12(MTDecodeP.cif)
	st.w	$a1, $a2, 3
	st.w	$a0, $a2, 0
	b	.LBB13_59
.LBB13_55:                              # %if.else128
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB13_58
.LBB13_56:                              # %if.else148
	pcaddu18i	$ra, %call36(MTPopP)
	jirl	$ra, $ra, 0
	b	.LBB13_33
.LBB13_57:                              # %if.else145
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
.LBB13_58:                              # %if.end157
	ld.b	$a1, $a0, 2
	ld.h	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(MTDecodeP.cif)
	addi.d	$a2, $a2, %pc_lo12(MTDecodeP.cif)
	st.b	$a1, $a2, 2
	st.h	$a0, $a2, 0
.LBB13_59:                              # %if.end157
	move	$a0, $s8
	move	$a1, $s7
	b	.LBB13_24
.Lfunc_end13:
	.size	MTDecodeP, .Lfunc_end13-MTDecodeP
                                        # -- End function
	.type	MTDecodeP.cif,@object           # @MTDecodeP.cif
	.local	MTDecodeP.cif
	.comm	MTDecodeP.cif,81,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MX R 0 -1 T %d %d"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"MX R 0 -1"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"MX R 0 1 T %d %d"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"MX R 0 1"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"R 0 -1 T %d %d"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"R 0 -1"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"R 0 1 T %d %d"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"R 0 1"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"T %d %d"
	.size	.L.str.8, 8

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"R -1 0 T %d %d"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"R -1 0"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"MX T %d %d"
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"MX"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MY T %d %d"
	.size	.L.str.13, 11

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"MY"
	.size	.L.str.14, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym MTDecodeP.cif
