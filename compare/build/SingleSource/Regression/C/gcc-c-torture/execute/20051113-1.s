	.file	"20051113-1.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Sum
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	Sum
	.p2align	5
	.type	Sum,@function
Sum:                                    # @Sum
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB0_3
# %bb.1:                                # %for.body.lr.ph
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB0_4
# %bb.2:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB0_7
.LBB0_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB0_4:                                # %vector.ph
	addi.d	$a1, $a0, 10
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	xvrepli.b	$xr0, 0
	xvrepli.d	$xr3, 30
	xvrepli.d	$xr4, 120
	move	$a4, $a3
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvmul.d	$xr5, $xr1, $xr3
	xvori.b	$xr6, $xr4, 0
	xvmadd.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a5, $xr5, 0
	xvpickve2gr.d	$a6, $xr5, 1
	xvpickve2gr.d	$a7, $xr5, 2
	xvpickve2gr.d	$t0, $xr5, 3
	xvpickve2gr.d	$t1, $xr6, 0
	xvpickve2gr.d	$t2, $xr6, 1
	xvpickve2gr.d	$t3, $xr6, 2
	xvpickve2gr.d	$t4, $xr6, 3
	ldx.d	$a5, $a1, $a5
	ldx.d	$a6, $a1, $a6
	ldx.d	$a7, $a1, $a7
	ldx.d	$t0, $a1, $t0
	xvinsgr2vr.d	$xr5, $a5, 0
	xvinsgr2vr.d	$xr5, $a6, 1
	xvinsgr2vr.d	$xr5, $a7, 2
	xvinsgr2vr.d	$xr5, $t0, 3
	ldx.d	$a5, $a1, $t1
	ldx.d	$a6, $a1, $t2
	ldx.d	$a7, $a1, $t3
	ldx.d	$t0, $a1, $t4
	xvinsgr2vr.d	$xr6, $a5, 0
	xvinsgr2vr.d	$xr6, $a6, 1
	xvinsgr2vr.d	$xr6, $a7, 2
	xvinsgr2vr.d	$xr6, $t0, 3
	xvadd.d	$xr0, $xr5, $xr0
	xvadd.d	$xr2, $xr6, $xr2
	addi.d	$a4, $a4, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a4, .LBB0_5
# %bb.6:                                # %middle.block
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_1)
	xvadd.d	$xr0, $xr2, $xr0
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvadd.d	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr0, 0
	beq	$a3, $a2, .LBB0_9
.LBB0_7:                                # %for.body.preheader
	ori	$a4, $zero, 30
	mul.d	$a4, $a3, $a4
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 10
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 30
	bnez	$a2, .LBB0_8
.LBB0_9:                                # %for.end
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	Sum, .Lfunc_end0-Sum
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Sum2
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	Sum2
	.p2align	5
	.type	Sum2,@function
Sum2:                                   # @Sum2
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB1_4
# %bb.2:
	move	$a3, $zero
	move	$a1, $zero
	b	.LBB1_7
.LBB1_3:
	move	$a1, $zero
	move	$a0, $a1
	ret
.LBB1_4:                                # %vector.ph
	addi.d	$a1, $a0, 18
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	xvld	$xr1, $a3, %pc_lo12(.LCPI1_0)
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	xvrepli.b	$xr0, 0
	xvrepli.d	$xr3, 30
	xvrepli.d	$xr4, 120
	move	$a4, $a3
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvmul.d	$xr5, $xr1, $xr3
	xvori.b	$xr6, $xr4, 0
	xvmadd.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a5, $xr5, 0
	xvpickve2gr.d	$a6, $xr5, 1
	xvpickve2gr.d	$a7, $xr5, 2
	xvpickve2gr.d	$t0, $xr5, 3
	xvpickve2gr.d	$t1, $xr6, 0
	xvpickve2gr.d	$t2, $xr6, 1
	xvpickve2gr.d	$t3, $xr6, 2
	xvpickve2gr.d	$t4, $xr6, 3
	ldx.d	$a5, $a1, $a5
	ldx.d	$a6, $a1, $a6
	ldx.d	$a7, $a1, $a7
	ldx.d	$t0, $a1, $t0
	xvinsgr2vr.d	$xr5, $a5, 0
	xvinsgr2vr.d	$xr5, $a6, 1
	xvinsgr2vr.d	$xr5, $a7, 2
	xvinsgr2vr.d	$xr5, $t0, 3
	ldx.d	$a5, $a1, $t1
	ldx.d	$a6, $a1, $t2
	ldx.d	$a7, $a1, $t3
	ldx.d	$t0, $a1, $t4
	xvinsgr2vr.d	$xr6, $a5, 0
	xvinsgr2vr.d	$xr6, $a6, 1
	xvinsgr2vr.d	$xr6, $a7, 2
	xvinsgr2vr.d	$xr6, $t0, 3
	xvadd.d	$xr0, $xr5, $xr0
	xvadd.d	$xr2, $xr6, $xr2
	addi.d	$a4, $a4, -8
	xvaddi.du	$xr1, $xr1, 8
	bnez	$a4, .LBB1_5
# %bb.6:                                # %middle.block
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_1)
	xvadd.d	$xr0, $xr2, $xr0
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvadd.d	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr0, 0
	beq	$a3, $a2, .LBB1_9
.LBB1_7:                                # %for.body.preheader
	ori	$a4, $zero, 30
	mul.d	$a4, $a3, $a4
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 18
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 30
	bnez	$a2, .LBB1_8
.LBB1_9:                                # %for.end
	move	$a0, $a1
	ret
.Lfunc_end1:
	.size	Sum2, .Lfunc_end1-Sum2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 94
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 555
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 10
	ori	$a0, $zero, 999
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 40
	lu12i.w	$s0, 4112
	ori	$a0, $s0, 257
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $fp, 70
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sum)
	jirl	$ra, $ra, 0
	ori	$s0, $s0, 1811
	lu32i.d	$s0, 1
	bne	$a0, $s0, .LBB2_3
# %bb.1:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Sum2)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_3
# %bb.2:                                # %if.end20
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_3:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
