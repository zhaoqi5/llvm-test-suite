	.file	"zlib_adler32.c"
	.text
	.globl	adler32_z                       # -- Begin function adler32_z
	.p2align	5
	.type	adler32_z,@function
adler32_z:                              # @adler32_z
# %bb.0:                                # %entry
	move	$a3, $a0
	bstrpick.d	$a4, $a0, 31, 16
	ori	$a0, $zero, 1
	bstrpick.d	$a3, $a3, 15, 0
	bne	$a2, $a0, .LBB0_3
# %bb.1:                                # %if.then
	ld.bu	$a0, $a1, 0
	add.d	$a0, $a3, $a0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4080
	sltu	$a2, $a1, $a0
	addu16i.d	$a3, $a0, -1
	addi.d	$a3, $a3, 15
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	add.d	$a2, $a0, $a4
	sltu	$a1, $a1, $a2
	slli.d	$a2, $a2, 16
	lu12i.w	$a3, 240
	lu32i.d	$a3, -1
	add.d	$a3, $a2, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	or	$a0, $a1, $a0
.LBB0_2:                                # %cleanup
	ret
.LBB0_3:                                # %if.end11
	beqz	$a1, .LBB0_2
# %bb.4:                                # %if.end15
	ori	$a0, $zero, 16
	bgeu	$a2, $a0, .LBB0_8
# %bb.5:                                # %while.cond.preheader
	beqz	$a2, .LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $a0
	add.d	$a4, $a3, $a4
	bnez	$a2, .LBB0_6
.LBB0_7:                                # %while.end
	lu12i.w	$a0, 15
	ori	$a1, $a0, 4080
	sltu	$a1, $a1, $a3
	addu16i.d	$a2, $a3, -1
	addi.d	$a2, $a2, 15
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	lu12i.w	$a2, 54012
	ori	$a2, $a2, 1485
	lu32i.d	$a2, -65311
	lu52i.d	$a2, $a2, 0
	mulh.du	$a2, $a4, $a2
	sub.d	$a3, $a4, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 15
	ori	$a0, $a0, 4081
	mul.d	$a0, $a2, $a0
	sub.d	$a0, $a4, $a0
	slli.d	$a0, $a0, 16
	or	$a0, $a0, $a1
	ret
.LBB0_8:                                # %while.cond30.preheader
	srli.d	$a0, $a2, 4
	ori	$a5, $zero, 347
	bltu	$a0, $a5, .LBB0_15
# %bb.9:
	addi.w	$a0, $zero, -347
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	lu12i.w	$a6, -2
	ori	$a6, $a6, 2640
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1456
	lu12i.w	$t0, 54012
	ori	$t0, $t0, 1485
	lu32i.d	$t0, -65311
	lu52i.d	$t0, $t0, 0
	lu12i.w	$t1, 15
	ori	$t1, $t1, 4081
	ori	$t2, $zero, 346
	.p2align	4, , 16
.LBB0_10:                               # %while.body33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	move	$t3, $a0
	move	$t4, $a1
	.p2align	4, , 16
.LBB0_11:                               # %do.body
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t5, $t4, 0
	ld.bu	$t6, $t4, 1
	add.d	$a3, $a3, $t5
	add.d	$a4, $a3, $a4
	ld.bu	$t5, $t4, 2
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 3
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 4
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 5
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 6
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 7
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 8
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 9
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 10
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 11
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 12
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	ld.bu	$t6, $t4, 13
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	ld.bu	$t5, $t4, 14
	add.d	$a3, $a3, $t6
	ld.bu	$t6, $t4, 15
	add.d	$a4, $a4, $a3
	add.d	$a3, $a3, $t5
	add.d	$a4, $a4, $a3
	add.d	$a3, $a3, $t6
	add.d	$a4, $a4, $a3
	bstrpick.d	$t3, $t3, 31, 0
	addi.d	$t3, $t3, 1
	and	$t5, $t3, $a5
	addi.d	$t4, $t4, 16
	beqz	$t5, .LBB0_11
# %bb.12:                               # %do.end
                                        #   in Loop: Header=BB0_10 Depth=1
	add.d	$a2, $a2, $a6
	add.d	$a1, $a1, $a7
	mulh.du	$t3, $a3, $t0
	sub.d	$t4, $a3, $t3
	srli.d	$t4, $t4, 1
	add.d	$t3, $t4, $t3
	srli.d	$t3, $t3, 15
	mul.d	$t3, $t3, $t1
	sub.d	$a3, $a3, $t3
	mulh.du	$t3, $a4, $t0
	sub.d	$t4, $a4, $t3
	srli.d	$t4, $t4, 1
	add.d	$t3, $t4, $t3
	srli.d	$t3, $t3, 15
	mul.d	$t3, $t3, $t1
	srli.d	$t4, $a2, 4
	sub.d	$a4, $a4, $t3
	bltu	$t2, $t4, .LBB0_10
# %bb.13:                               # %while.end103
	beqz	$a2, .LBB0_20
# %bb.14:                               # %while.cond106.preheader
	ori	$a0, $zero, 16
	bltu	$a2, $a0, .LBB0_18
.LBB0_15:                               # %while.body109.preheader
	ori	$a0, $zero, 15
	.p2align	4, , 16
.LBB0_16:                               # %while.body109
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	ld.bu	$a6, $a1, 1
	add.d	$a3, $a3, $a5
	add.d	$a4, $a3, $a4
	ld.bu	$a5, $a1, 2
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 3
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 4
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 5
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 6
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 7
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 8
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 9
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 10
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 11
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 12
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 13
	add.d	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	ld.bu	$a5, $a1, 14
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	ld.bu	$a6, $a1, 15
	add.d	$a3, $a3, $a5
	addi.d	$a2, $a2, -16
	add.d	$a4, $a4, $a3
	add.d	$a3, $a3, $a6
	add.d	$a4, $a4, $a3
	addi.d	$a1, $a1, 16
	bltu	$a0, $a2, .LBB0_16
# %bb.17:                               # %while.cond177.preheader
	beqz	$a2, .LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %while.body180
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $a0
	add.d	$a4, $a3, $a4
	bnez	$a2, .LBB0_18
.LBB0_19:                               # %while.end185
	lu12i.w	$a0, 54012
	ori	$a0, $a0, 1485
	lu32i.d	$a0, -65311
	lu52i.d	$a0, $a0, 0
	mulh.du	$a1, $a3, $a0
	sub.d	$a2, $a3, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 15
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4081
	mul.d	$a1, $a1, $a2
	sub.d	$a3, $a3, $a1
	mulh.du	$a0, $a4, $a0
	sub.d	$a1, $a4, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 15
	mul.d	$a0, $a0, $a2
	sub.d	$a4, $a4, $a0
.LBB0_20:                               # %if.end188
	slli.d	$a0, $a4, 16
	or	$a0, $a0, $a3
	ret
.Lfunc_end0:
	.size	adler32_z, .Lfunc_end0-adler32_z
                                        # -- End function
	.globl	adler32                         # -- Begin function adler32
	.p2align	5
	.type	adler32,@function
adler32:                                # @adler32
# %bb.0:                                # %entry
	bstrpick.d	$a2, $a2, 31, 0
	pcaddu18i	$t8, %call36(adler32_z)
	jr	$t8
.Lfunc_end1:
	.size	adler32, .Lfunc_end1-adler32
                                        # -- End function
	.globl	adler32_combine                 # -- Begin function adler32_combine
	.p2align	5
	.type	adler32_combine,@function
adler32_combine:                        # @adler32_combine
# %bb.0:                                # %entry
	bltz	$a2, .LBB2_2
# %bb.1:                                # %if.end.i
	lu12i.w	$a3, 54012
	ori	$a3, $a3, 1485
	lu32i.d	$a3, -65311
	lu52i.d	$a3, $a3, 0
	mulh.du	$a3, $a2, $a3
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 15
	lu12i.w	$a4, 15
	ori	$a5, $a4, 4081
	mul.d	$a3, $a3, $a5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 15, 0
	mul.d	$a6, $a2, $a3
	lu12i.w	$a7, -524168
	ori	$a7, $a7, 113
	lu32i.d	$a7, 0
	mul.d	$a7, $a6, $a7
	srli.d	$a7, $a7, 47
	mul.d	$a5, $a7, $a5
	sub.w	$a5, $a6, $a5
	bstrpick.d	$a6, $a1, 15, 0
	add.d	$a3, $a3, $a6
	addu16i.d	$a6, $a3, 1
	addi.d	$a6, $a6, -16
	bstrpick.d	$a0, $a0, 31, 16
	bstrpick.d	$a1, $a1, 31, 16
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a5
	addu16i.d	$a1, $a0, 1
	addi.d	$a1, $a1, -15
	ori	$a2, $a4, 4080
	sltu	$a4, $a2, $a6
	addi.d	$a3, $a3, -1
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	sltu	$a4, $a2, $a3
	addu16i.d	$a5, $a3, -1
	addi.d	$a5, $a5, 15
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4065
	sltu	$a4, $a4, $a1
	addu16i.d	$a0, $a0, -1
	addi.d	$a0, $a0, 15
	masknez	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a1
	sltu	$a1, $a2, $a0
	slli.d	$a0, $a0, 16
	lu12i.w	$a2, 240
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	ret
.LBB2_2:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ret
.Lfunc_end2:
	.size	adler32_combine, .Lfunc_end2-adler32_combine
                                        # -- End function
	.globl	adler32_combine64               # -- Begin function adler32_combine64
	.p2align	5
	.type	adler32_combine64,@function
adler32_combine64:                      # @adler32_combine64
# %bb.0:                                # %entry
	bltz	$a2, .LBB3_2
# %bb.1:                                # %if.end.i
	lu12i.w	$a3, 54012
	ori	$a3, $a3, 1485
	lu32i.d	$a3, -65311
	lu52i.d	$a3, $a3, 0
	mulh.du	$a3, $a2, $a3
	sub.d	$a4, $a2, $a3
	srli.d	$a4, $a4, 1
	add.d	$a3, $a4, $a3
	srli.d	$a3, $a3, 15
	lu12i.w	$a4, 15
	ori	$a5, $a4, 4081
	mul.d	$a3, $a3, $a5
	sub.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a0, 15, 0
	mul.d	$a6, $a2, $a3
	lu12i.w	$a7, -524168
	ori	$a7, $a7, 113
	lu32i.d	$a7, 0
	mul.d	$a7, $a6, $a7
	srli.d	$a7, $a7, 47
	mul.d	$a5, $a7, $a5
	sub.w	$a5, $a6, $a5
	bstrpick.d	$a6, $a1, 15, 0
	add.d	$a3, $a3, $a6
	addu16i.d	$a6, $a3, 1
	addi.d	$a6, $a6, -16
	bstrpick.d	$a0, $a0, 31, 16
	bstrpick.d	$a1, $a1, 31, 16
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a5
	addu16i.d	$a1, $a0, 1
	addi.d	$a1, $a1, -15
	ori	$a2, $a4, 4080
	sltu	$a4, $a2, $a6
	addi.d	$a3, $a3, -1
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a2, $a4
	or	$a3, $a3, $a4
	sltu	$a4, $a2, $a3
	addu16i.d	$a5, $a3, -1
	addi.d	$a5, $a5, 15
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4065
	sltu	$a4, $a4, $a1
	addu16i.d	$a0, $a0, -1
	addi.d	$a0, $a0, 15
	masknez	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a1
	sltu	$a1, $a2, $a0
	slli.d	$a0, $a0, 16
	lu12i.w	$a2, 240
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	ret
.LBB3_2:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ret
.Lfunc_end3:
	.size	adler32_combine64, .Lfunc_end3-adler32_combine64
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
