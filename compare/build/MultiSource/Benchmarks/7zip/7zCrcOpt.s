	.file	"7zCrcOpt.c"
	.text
	.globl	CrcUpdateT4                     # -- Begin function CrcUpdateT4
	.p2align	5
	.type	CrcUpdateT4,@function
CrcUpdateT4:                            # @CrcUpdateT4
# %bb.0:                                # %entry
	beqz	$a2, .LBB0_5
# %bb.1:                                # %entry
	andi	$a4, $a1, 3
	beqz	$a4, .LBB0_5
# %bb.2:                                # %for.body.preheader
	addi.d	$a4, $a1, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a1, 0
	xor	$a6, $a6, $a0
	andi	$a6, $a6, 255
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	move	$a7, $a2
	bstrpick.d	$a0, $a0, 31, 8
	xor	$a0, $a6, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	beq	$a7, $a5, .LBB0_5
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	andi	$a6, $a4, 3
	addi.d	$a4, $a4, 1
	bnez	$a6, .LBB0_3
.LBB0_5:                                # %for.cond6.preheader
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB0_8
# %bb.6:
	addi.d	$a5, $a3, 2047
	addi.d	$a4, $a5, 1025
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a3, 1024
	lu12i.w	$a7, -4096
	lu32i.d	$a7, 0
	ori	$t0, $zero, 3
	.p2align	4, , 16
.LBB0_7:                                # %for.body9
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	xor	$a0, $t1, $a0
	and	$t1, $a0, $a7
	andi	$t2, $a0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $a0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$a0, $a0, 14
	andi	$a0, $a0, 1020
	ldx.w	$a0, $a6, $a0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a3, $t1
	xor	$t2, $t3, $t2
	xor	$a0, $t2, $a0
	xor	$a0, $a0, $t1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 4
	bltu	$t0, $a2, .LBB0_7
.LBB0_8:                                # %for.cond33.preheader
	beqz	$a2, .LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	xor	$a4, $a4, $a0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	bstrpick.d	$a0, $a0, 31, 8
	xor	$a0, $a4, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB0_9
.LBB0_10:                               # %for.end47
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end0:
	.size	CrcUpdateT4, .Lfunc_end0-CrcUpdateT4
                                        # -- End function
	.globl	CrcUpdateT8                     # -- Begin function CrcUpdateT8
	.p2align	5
	.type	CrcUpdateT8,@function
CrcUpdateT8:                            # @CrcUpdateT8
# %bb.0:                                # %entry
	beqz	$a2, .LBB1_5
# %bb.1:                                # %entry
	andi	$a4, $a1, 3
	beqz	$a4, .LBB1_5
# %bb.2:                                # %for.body.i.preheader
	addi.d	$a4, $a1, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB1_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a1, 0
	xor	$a6, $a6, $a0
	andi	$a6, $a6, 255
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	move	$a7, $a2
	bstrpick.d	$a0, $a0, 31, 8
	xor	$a0, $a6, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	beq	$a7, $a5, .LBB1_5
# %bb.4:                                # %for.body.i
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a6, $a4, 3
	addi.d	$a4, $a4, 1
	bnez	$a6, .LBB1_3
.LBB1_5:                                # %for.cond6.preheader.i
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB1_8
# %bb.6:
	addi.d	$a5, $a3, 2047
	addi.d	$a4, $a5, 1025
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a3, 1024
	lu12i.w	$a7, -4096
	lu32i.d	$a7, 0
	ori	$t0, $zero, 3
	.p2align	4, , 16
.LBB1_7:                                # %for.body9.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 0
	xor	$a0, $t1, $a0
	and	$t1, $a0, $a7
	andi	$t2, $a0, 255
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a4, $t2
	srli.d	$t3, $a0, 6
	andi	$t3, $t3, 1020
	ldx.w	$t3, $a5, $t3
	srli.d	$a0, $a0, 14
	andi	$a0, $a0, 1020
	ldx.w	$a0, $a6, $a0
	srli.d	$t1, $t1, 22
	ldx.w	$t1, $a3, $t1
	xor	$t2, $t3, $t2
	xor	$a0, $t2, $a0
	xor	$a0, $a0, $t1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 4
	bltu	$t0, $a2, .LBB1_7
.LBB1_8:                                # %for.cond33.preheader.i
	beqz	$a2, .LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %for.body36.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	xor	$a4, $a4, $a0
	andi	$a4, $a4, 255
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	bstrpick.d	$a0, $a0, 31, 8
	xor	$a0, $a4, $a0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_9
.LBB1_10:                               # %CrcUpdateT4.exit
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end1:
	.size	CrcUpdateT8, .Lfunc_end1-CrcUpdateT8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
