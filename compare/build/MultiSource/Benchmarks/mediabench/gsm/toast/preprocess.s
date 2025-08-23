	.file	"preprocess.c"
	.text
	.globl	Gsm_Preprocess                  # -- Begin function Gsm_Preprocess
	.p2align	5
	.type	Gsm_Preprocess,@function
Gsm_Preprocess:                         # @Gsm_Preprocess
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a3, $a0, 560
	ld.d	$t3, $a0, 568
	ld.wu	$a4, $a0, 576
	addi.w	$a5, $zero, -160
	lu12i.w	$t8, 7
	ori	$a6, $t8, 4063
	lu12i.w	$a7, 4
	addi.w	$t0, $zero, -1
	lu12i.w	$t1, -524288
	ori	$t2, $t1, 1
	lu12i.w	$t4, 524283
	ori	$t4, $t4, 4095
	ori	$t5, $zero, 0
	ori	$t6, $zero, 0
	lu32i.d	$t6, -56360
	ori	$t7, $zero, 0
	lu32i.d	$t7, 32768
	ori	$t8, $t8, 4095
	lu12i.w	$fp, -8
	lu32i.d	$t5, 1
	lu12i.w	$s0, 524287
	ori	$s0, $s0, 4095
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                # %cond.false40
                                        #   in Loop: Header=BB0_3 Depth=1
	slti	$s1, $s1, 1
	sltu	$s2, $t3, $s0
	masknez	$s3, $s0, $s2
	maskeqz	$s2, $t3, $s2
	or	$s2, $s2, $s3
	masknez	$s2, $s2, $s1
	maskeqz	$t3, $t3, $s1
	or	$t3, $t3, $s2
.LBB0_2:                                # %cond.end55
                                        #   in Loop: Header=BB0_3 Depth=1
	slti	$s1, $t3, 0
	sltu	$s2, $t3, $t4
	masknez	$s3, $t4, $s2
	maskeqz	$s2, $t3, $s2
	or	$s2, $s2, $s3
	masknez	$s2, $s2, $s1
	maskeqz	$s1, $t3, $s1
	or	$s1, $s1, $s2
	add.d	$s1, $s1, $a7
	ext.w.h	$s2, $a4
	srli.d	$a4, $s1, 15
	mul.d	$s1, $s2, $t6
	add.d	$s2, $s1, $t7
	ext.w.h	$s1, $a4
	srai.d	$s2, $s2, 48
	add.d	$s2, $s1, $s2
	slt	$s3, $s2, $t8
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $t8, $s3
	or	$s2, $s2, $s3
	slt	$s3, $fp, $s2
	maskeqz	$s2, $s2, $s3
	masknez	$s3, $fp, $s3
	or	$s2, $s2, $s3
	st.h	$s2, $a2, 0
	addi.d	$a2, $a2, 2
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	and	$s2, $a5, $t5
	addi.d	$a1, $a1, 2
	bnez	$s2, .LBB0_6
.LBB0_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$s1, $a1, 0
	move	$s2, $a3
	srai.d	$a3, $s1, 1
	bstrins.d	$a3, $zero, 1, 0
	sub.d	$s1, $a3, $s2
	ext.w.h	$s1, $s1
	slli.d	$s1, $s1, 15
	slli.d	$s2, $t3, 33
	srai.d	$s2, $s2, 48
	slli.d	$s3, $s2, 63
	slli.d	$t3, $t3, 48
	add.d	$t3, $s3, $t3
	srai.d	$t3, $t3, 48
	mul.d	$t3, $t3, $a6
	add.d	$t3, $t3, $a7
	srai.d	$t3, $t3, 15
	add.d	$s1, $s1, $t3
	mul.d	$t3, $s2, $a6
	add.d	$t3, $s1, $t3
	blt	$t0, $s2, .LBB0_1
# %bb.4:                                # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	blt	$t0, $s1, .LBB0_2
# %bb.5:                                # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s1, $t3, 1
	sltu	$s1, $s1, $t2
	masknez	$t3, $t3, $s1
	maskeqz	$s1, $t1, $s1
	or	$t3, $s1, $t3
	b	.LBB0_2
.LBB0_6:                                # %while.end
	st.h	$a3, $a0, 560
	st.d	$t3, $a0, 568
	st.w	$s1, $a0, 576
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	Gsm_Preprocess, .Lfunc_end0-Gsm_Preprocess
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
