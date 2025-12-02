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
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI2_0)
	xvrepli.w	$xr1, 1
	lu12i.w	$a0, -74872
	ori	$a0, $a0, 800
	xvreplgr2vr.w	$xr2, $a0
	xvrepli.w	$xr3, 2
	xvrepli.w	$xr4, 4
	lu12i.w	$a0, 30428
	ori	$a0, $a0, 1049
	xvreplgr2vr.w	$xr5, $a0
	xvrepli.w	$xr6, 8
	lu12i.w	$a0, 60856
	ori	$a0, $a0, 2098
	xvreplgr2vr.w	$xr7, $a0
	xvrepli.w	$xr8, 16
	lu12i.w	$a0, 121713
	ori	$a0, $a0, 100
	xvreplgr2vr.w	$xr9, $a0
	xvrepli.w	$xr10, 32
	lu12i.w	$a0, 243426
	ori	$a0, $a0, 200
	xvreplgr2vr.w	$xr11, $a0
	lu12i.w	$a0, 486852
	ori	$a0, $a0, 400
	xvreplgr2vr.w	$xr12, $a0
	pcalau12i	$a0, %pc_hi20(g_CrcTable)
	addi.d	$a0, $a0, %pc_lo12(g_CrcTable)
	move	$a1, $zero
	ori	$a2, $zero, 1024
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvsrli.w	$xr13, $xr0, 1
	xvand.v	$xr14, $xr0, $xr1
	xvseqi.w	$xr14, $xr14, 0
	xvandn.v	$xr14, $xr14, $xr2
	xvxor.v	$xr13, $xr14, $xr13
	xvsrli.w	$xr14, $xr13, 1
	xvand.v	$xr15, $xr0, $xr3
	xvseqi.w	$xr15, $xr15, 0
	xvandn.v	$xr15, $xr15, $xr2
	xvxor.v	$xr14, $xr15, $xr14
	xvsrli.w	$xr15, $xr14, 6
	xvand.v	$xr16, $xr0, $xr4
	xvseqi.w	$xr16, $xr16, 0
	xvandn.v	$xr16, $xr16, $xr5
	xvxor.v	$xr15, $xr16, $xr15
	xvand.v	$xr16, $xr0, $xr6
	xvseqi.w	$xr16, $xr16, 0
	xvandn.v	$xr16, $xr16, $xr7
	xvxor.v	$xr15, $xr16, $xr15
	xvand.v	$xr16, $xr0, $xr8
	xvseqi.w	$xr16, $xr16, 0
	xvandn.v	$xr16, $xr16, $xr9
	xvxor.v	$xr15, $xr16, $xr15
	xvand.v	$xr16, $xr0, $xr10
	xvseqi.w	$xr16, $xr16, 0
	xvandn.v	$xr16, $xr16, $xr11
	xvxor.v	$xr15, $xr16, $xr15
	xvand.v	$xr13, $xr13, $xr10
	xvseqi.w	$xr13, $xr13, 0
	xvandn.v	$xr13, $xr13, $xr12
	xvxor.v	$xr13, $xr13, $xr15
	xvand.v	$xr14, $xr14, $xr10
	xvseqi.w	$xr14, $xr14, 0
	xvandn.v	$xr14, $xr14, $xr2
	xvxor.v	$xr13, $xr14, $xr13
	xvstx	$xr13, $a0, $a1
	addi.d	$a1, $a1, 32
	xvaddi.wu	$xr0, $xr0, 8
	bne	$a1, $a2, .LBB2_1
# %bb.2:                                # %for.body10.preheader
	lu12i.w	$a1, -2
	ori	$a1, $a1, 1024
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3072
	.p2align	4, , 16
.LBB2_3:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	ldx.wu	$a4, $a3, $a2
	andi	$a5, $a4, 255
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	srli.d	$a4, $a4, 8
	xor	$a4, $a5, $a4
	addi.d	$a1, $a1, 4
	stptr.w	$a4, $a3, 8192
	bnez	$a1, .LBB2_3
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
