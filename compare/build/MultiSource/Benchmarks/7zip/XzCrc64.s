	.file	"XzCrc64.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Crc64GenerateTable
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	Crc64GenerateTable
	.p2align	5
	.type	Crc64GenerateTable,@function
Crc64GenerateTable:                     # @Crc64GenerateTable
# %bb.0:                                # %entry
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	xvrepli.d	$xr1, 1
	xvrepli.b	$xr2, -1
	lu12i.w	$a1, -165776
	ori	$a1, $a1, 3906
	lu32i.d	$a1, -239723
	lu52i.d	$a1, $a1, -874
	xvreplgr2vr.d	$xr3, $a1
	xvrepli.d	$xr4, 2
	lu12i.w	$a1, -82888
	ori	$a1, $a1, 1953
	lu32i.d	$a1, 404426
	lu52i.d	$a1, $a1, 1611
	xvreplgr2vr.d	$xr5, $a1
	pcalau12i	$a1, %pc_hi20(g_Crc64Table)
	addi.d	$a1, $a1, %pc_lo12(g_Crc64Table)
	ori	$a2, $zero, 2048
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvsrli.d	$xr6, $xr0, 1
	xvand.v	$xr7, $xr0, $xr1
	xvseqi.d	$xr7, $xr7, 0
	xvxor.v	$xr7, $xr7, $xr2
	xvand.v	$xr7, $xr7, $xr3
	xvxor.v	$xr6, $xr7, $xr6
	xvsrli.d	$xr7, $xr6, 1
	xvand.v	$xr8, $xr0, $xr4
	xvseqi.d	$xr8, $xr8, 0
	xvxor.v	$xr8, $xr8, $xr2
	xvand.v	$xr8, $xr8, $xr3
	xvxor.v	$xr7, $xr8, $xr7
	xvsrli.d	$xr8, $xr7, 1
	xvand.v	$xr6, $xr6, $xr4
	xvseqi.d	$xr6, $xr6, 0
	xvxor.v	$xr6, $xr6, $xr2
	xvand.v	$xr6, $xr6, $xr3
	xvxor.v	$xr6, $xr6, $xr8
	xvsrli.d	$xr8, $xr6, 1
	xvand.v	$xr7, $xr7, $xr4
	xvseqi.d	$xr7, $xr7, 0
	xvxor.v	$xr7, $xr7, $xr2
	xvand.v	$xr7, $xr7, $xr3
	xvxor.v	$xr7, $xr7, $xr8
	xvsrli.d	$xr8, $xr7, 1
	xvand.v	$xr6, $xr6, $xr4
	xvseqi.d	$xr6, $xr6, 0
	xvxor.v	$xr6, $xr6, $xr2
	xvand.v	$xr6, $xr6, $xr3
	xvxor.v	$xr6, $xr6, $xr8
	xvsrli.d	$xr8, $xr6, 1
	xvand.v	$xr7, $xr7, $xr4
	xvseqi.d	$xr7, $xr7, 0
	xvxor.v	$xr7, $xr7, $xr2
	xvand.v	$xr7, $xr7, $xr3
	xvxor.v	$xr7, $xr7, $xr8
	xvsrli.d	$xr8, $xr7, 2
	xvand.v	$xr6, $xr6, $xr4
	xvseqi.d	$xr6, $xr6, 0
	xvxor.v	$xr6, $xr6, $xr2
	xvand.v	$xr6, $xr6, $xr5
	xvxor.v	$xr6, $xr6, $xr8
	xvand.v	$xr7, $xr7, $xr4
	xvseqi.d	$xr7, $xr7, 0
	xvxor.v	$xr7, $xr7, $xr2
	xvand.v	$xr7, $xr7, $xr3
	xvxor.v	$xr6, $xr7, $xr6
	xvstx	$xr6, $a1, $a0
	addi.d	$a0, $a0, 32
	xvaddi.du	$xr0, $xr0, 4
	bne	$a0, $a2, .LBB0_1
# %bb.2:                                # %for.end8
	ret
.Lfunc_end0:
	.size	Crc64GenerateTable, .Lfunc_end0-Crc64GenerateTable
                                        # -- End function
	.globl	Crc64Update                     # -- Begin function Crc64Update
	.p2align	5
	.type	Crc64Update,@function
Crc64Update:                            # @Crc64Update
# %bb.0:                                # %entry
	beqz	$a2, .LBB1_3
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a3, %pc_hi20(g_Crc64Table)
	addi.d	$a3, $a3, %pc_lo12(g_Crc64Table)
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	xor	$a4, $a4, $a0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a3, $a4
	srli.d	$a0, $a0, 8
	xor	$a0, $a4, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_2
.LBB1_3:                                # %for.end
	ret
.Lfunc_end1:
	.size	Crc64Update, .Lfunc_end1-Crc64Update
                                        # -- End function
	.globl	Crc64Calc                       # -- Begin function Crc64Calc
	.p2align	5
	.type	Crc64Calc,@function
Crc64Calc:                              # @Crc64Calc
# %bb.0:                                # %entry
	beqz	$a1, .LBB2_4
# %bb.1:                                # %for.body.i.preheader
	addi.w	$a2, $zero, -1
	pcalau12i	$a3, %pc_hi20(g_Crc64Table)
	addi.d	$a3, $a3, %pc_lo12(g_Crc64Table)
	.p2align	4, , 16
.LBB2_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a0, 0
	xor	$a4, $a4, $a2
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a3, $a4
	srli.d	$a2, $a2, 8
	xor	$a2, $a4, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB2_2
# %bb.3:                                # %Crc64Update.exit.loopexit
	nor	$a0, $a2, $zero
	ret
.LBB2_4:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	Crc64Calc, .Lfunc_end2-Crc64Calc
                                        # -- End function
	.type	g_Crc64Table,@object            # @g_Crc64Table
	.bss
	.globl	g_Crc64Table
	.p2align	3, 0x0
g_Crc64Table:
	.space	2048
	.size	g_Crc64Table, 2048

	.section	".note.GNU-stack","",@progbits
	.addrsig
