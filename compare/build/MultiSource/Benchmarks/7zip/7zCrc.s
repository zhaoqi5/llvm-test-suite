	.file	"7zCrc.c"
	.text
	.globl	CrcUpdate                       # -- Begin function CrcUpdate
	.p2align	5
	.type	CrcUpdate,@function
CrcUpdate:                              # @CrcUpdate
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(g_CrcTable)
	addi.d	$a3, $a3, %pc_lo12(g_CrcTable)
	pcaddu18i	$t8, %call36(CrcUpdateT4)
	jr	$t8
.Lfunc_end0:
	.size	CrcUpdate, .Lfunc_end0-CrcUpdate
                                        # -- End function
	.globl	CrcCalc                         # -- Begin function CrcCalc
	.p2align	5
	.type	CrcCalc,@function
CrcCalc:                                # @CrcCalc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(g_CrcTable)
	addi.d	$a3, $a0, %pc_lo12(g_CrcTable)
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(CrcUpdateT4)
	jirl	$ra, $ra, 0
	nor	$a0, $a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	CrcCalc, .Lfunc_end1-CrcCalc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function CrcGenerateTable
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	CrcGenerateTable
	.p2align	5
	.type	CrcGenerateTable,@function
CrcGenerateTable:                       # @CrcGenerateTable
# %bb.0:                                # %entry
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_0)
	xvrepli.w	$xr1, 1
	xvrepli.b	$xr2, -1
	lu12i.w	$a1, -74872
	ori	$a1, $a1, 800
	xvreplgr2vr.w	$xr3, $a1
	xvrepli.w	$xr4, 2
	xvrepli.w	$xr5, 4
	lu12i.w	$a1, 30428
	ori	$a1, $a1, 1049
	xvreplgr2vr.w	$xr6, $a1
	xvrepli.w	$xr7, 8
	lu12i.w	$a1, 60856
	ori	$a1, $a1, 2098
	xvreplgr2vr.w	$xr8, $a1
	xvrepli.w	$xr9, 16
	lu12i.w	$a1, 121713
	ori	$a1, $a1, 100
	xvreplgr2vr.w	$xr10, $a1
	xvrepli.w	$xr11, 32
	lu12i.w	$a1, 243426
	ori	$a1, $a1, 200
	xvreplgr2vr.w	$xr12, $a1
	lu12i.w	$a1, 486852
	ori	$a1, $a1, 400
	xvreplgr2vr.w	$xr13, $a1
	pcalau12i	$a1, %pc_hi20(g_CrcTable)
	addi.d	$a1, $a1, %pc_lo12(g_CrcTable)
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvsrli.w	$xr14, $xr0, 1
	xvand.v	$xr15, $xr0, $xr1
	xvseqi.w	$xr15, $xr15, 0
	xvxor.v	$xr15, $xr15, $xr2
	xvand.v	$xr15, $xr15, $xr3
	xvxor.v	$xr14, $xr15, $xr14
	xvsrli.w	$xr15, $xr14, 1
	xvand.v	$xr16, $xr0, $xr4
	xvseqi.w	$xr16, $xr16, 0
	xvxor.v	$xr16, $xr16, $xr2
	xvand.v	$xr16, $xr16, $xr3
	xvxor.v	$xr15, $xr16, $xr15
	xvsrli.w	$xr16, $xr15, 6
	xvand.v	$xr17, $xr0, $xr5
	xvseqi.w	$xr17, $xr17, 0
	xvxor.v	$xr17, $xr17, $xr2
	xvand.v	$xr17, $xr17, $xr6
	xvxor.v	$xr16, $xr17, $xr16
	xvand.v	$xr17, $xr0, $xr7
	xvseqi.w	$xr17, $xr17, 0
	xvxor.v	$xr17, $xr17, $xr2
	xvand.v	$xr17, $xr17, $xr8
	xvxor.v	$xr16, $xr17, $xr16
	xvand.v	$xr17, $xr0, $xr9
	xvseqi.w	$xr17, $xr17, 0
	xvxor.v	$xr17, $xr17, $xr2
	xvand.v	$xr17, $xr17, $xr10
	xvxor.v	$xr16, $xr17, $xr16
	xvand.v	$xr17, $xr0, $xr11
	xvseqi.w	$xr17, $xr17, 0
	xvxor.v	$xr17, $xr17, $xr2
	xvand.v	$xr17, $xr17, $xr12
	xvxor.v	$xr16, $xr17, $xr16
	xvand.v	$xr14, $xr14, $xr11
	xvseqi.w	$xr14, $xr14, 0
	xvxor.v	$xr14, $xr14, $xr2
	xvand.v	$xr14, $xr14, $xr13
	xvxor.v	$xr14, $xr14, $xr16
	xvand.v	$xr15, $xr15, $xr11
	xvseqi.w	$xr15, $xr15, 0
	xvxor.v	$xr15, $xr15, $xr2
	xvand.v	$xr15, $xr15, $xr3
	xvxor.v	$xr14, $xr15, $xr14
	xvstx	$xr14, $a1, $a0
	addi.d	$a0, $a0, 32
	xvaddi.wu	$xr0, $xr0, 8
	bne	$a0, $a2, .LBB2_1
# %bb.2:                                # %for.body10.preheader
	lu12i.w	$a0, -2
	ori	$a0, $a0, 1024
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3072
	.p2align	4, , 16
.LBB2_3:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a1, $a0
	ldx.wu	$a4, $a3, $a2
	andi	$a5, $a4, 255
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	srli.d	$a4, $a4, 8
	xor	$a4, $a5, $a4
	addi.d	$a0, $a0, 4
	stptr.w	$a4, $a3, 8192
	bnez	$a0, .LBB2_3
# %bb.4:                                # %for.end24
	ret
.Lfunc_end2:
	.size	CrcGenerateTable, .Lfunc_end2-CrcGenerateTable
                                        # -- End function
	.type	g_CrcTable,@object              # @g_CrcTable
	.bss
	.globl	g_CrcTable
	.p2align	2, 0x0
g_CrcTable:
	.space	8192
	.size	g_CrcTable, 8192

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym g_CrcTable
