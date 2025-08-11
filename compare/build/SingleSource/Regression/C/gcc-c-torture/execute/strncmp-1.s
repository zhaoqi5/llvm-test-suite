	.file	"strncmp-1.c"
	.text
	.globl	test                            # -- Begin function test
	.p2align	5
	.type	test,@function
test:                                   # @test
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $fp, .LBB0_2
# %bb.1:                                # %entry
	bgez	$a0, .LBB0_7
.LBB0_2:                                # %if.else
	bnez	$fp, .LBB0_4
# %bb.3:                                # %if.else
	bnez	$a0, .LBB0_7
.LBB0_4:                                # %if.else6
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB0_6
# %bb.5:                                # %if.else6
	blez	$a0, .LBB0_7
.LBB0_6:                                # %if.end12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_7:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(u1)
	addi.d	$s2, $a0, %pc_lo12(u1)
	pcalau12i	$a0, %pc_hi20(u2)
	addi.d	$a0, $a0, %pc_lo12(u2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 493447
	ori	$a0, $a0, 2048
	lu32i.d	$a0, -493448
	lu52i.d	$s6, $a0, 1927
	ori	$s8, $zero, 98
	ori	$s1, $zero, 169
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	move	$s3, $zero
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_2:                                # %for.cond4.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	move	$s5, $zero
	.p2align	4, , 16
.LBB1_3:                                # %for.cond7.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$fp, .LBB1_5
# %bb.4:                                # %for.body9.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %for.cond10.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	beqz	$s5, .LBB1_7
# %bb.6:                                # %for.body12.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	ori	$a1, $zero, 97
	move	$a0, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %for.cond17.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	add.d	$s0, $s2, $s5
	st.d	$s6, $s0, 0
	beqz	$s3, .LBB1_9
# %bb.8:                                # %for.body26.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_9:                                # %for.cond31.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	beqz	$s5, .LBB1_11
# %bb.10:                               # %for.body33.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	ori	$a1, $zero, 97
	move	$a0, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %for.cond38.preheader
                                        #   in Loop: Header=BB1_3 Depth=3
	add.d	$s7, $s4, $s5
	st.d	$s6, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.12:                               # %test.exit
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.13:                               # %test.exit104
                                        #   in Loop: Header=BB1_3 Depth=3
	ori	$a0, $zero, 97
	st.h	$a0, $s0, 0
	st.b	$zero, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_33
# %bb.14:                               # %test.exit109
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.15:                               # %test.exit116
                                        #   in Loop: Header=BB1_3 Depth=3
	st.b	$zero, $s0, 0
	ori	$a0, $zero, 97
	st.h	$a0, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_33
# %bb.16:                               # %test.exit123
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.17:                               # %test.exit131
                                        #   in Loop: Header=BB1_3 Depth=3
	st.h	$s8, $s0, 0
	ori	$a0, $zero, 99
	st.h	$a0, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_33
# %bb.18:                               # %test.exit139
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.19:                               # %test.exit147
                                        #   in Loop: Header=BB1_3 Depth=3
	ori	$a0, $zero, 99
	st.h	$a0, $s0, 0
	st.h	$s8, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_33
# %bb.20:                               # %test.exit155
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.21:                               # %test.exit163
                                        #   in Loop: Header=BB1_3 Depth=3
	st.h	$s8, $s0, 0
	st.h	$s1, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_33
# %bb.22:                               # %test.exit171
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.23:                               # %test.exit179
                                        #   in Loop: Header=BB1_3 Depth=3
	st.h	$s1, $s0, 0
	st.h	$s8, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_33
# %bb.24:                               # %test.exit187
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.25:                               # %test.exit195
                                        #   in Loop: Header=BB1_3 Depth=3
	st.b	$zero, $s0, 1
	ori	$a0, $zero, 170
	st.h	$a0, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB1_33
# %bb.26:                               # %test.exit203
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.27:                               # %test.exit211
                                        #   in Loop: Header=BB1_3 Depth=3
	ori	$a0, $zero, 170
	st.h	$a0, $s0, 0
	st.h	$s1, $s7, 0
	ori	$a2, $zero, 80
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB1_33
# %bb.28:                               # %test.exit219
                                        #   in Loop: Header=BB1_3 Depth=3
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_33
# %bb.29:                               # %for.cond4
                                        #   in Loop: Header=BB1_3 Depth=3
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 64
	bne	$s5, $a0, .LBB1_3
# %bb.30:                               # %for.inc79
                                        #   in Loop: Header=BB1_2 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 1
	ori	$a0, $zero, 8
	bne	$s3, $a0, .LBB1_2
# %bb.31:                               # %for.inc82
                                        #   in Loop: Header=BB1_1 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 1
	ori	$a0, $zero, 8
	bne	$fp, $a0, .LBB1_1
# %bb.32:                               # %for.end84
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_33:                               # %if.then5.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	u1,@object                      # @u1
	.local	u1
	.comm	u1,80,16
	.type	u2,@object                      # @u2
	.local	u2
	.comm	u2,80,16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym u1
	.addrsig_sym u2
