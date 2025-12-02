	.file	"920501-2.c"
	.text
	.globl	gcd_ll                          # -- Begin function gcd_ll
	.p2align	5
	.type	gcd_ll,@function
gcd_ll:                                 # @gcd_ll
# %bb.0:                                # %entry
	beqz	$a1, .LBB0_3
	.p2align	4, , 16
.LBB0_1:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	mod.du	$a0, $a0, $a1
	beqz	$a0, .LBB0_4
# %bb.2:                                # %if.end3
                                        #   in Loop: Header=BB0_1 Depth=1
	mod.du	$a1, $a1, $a0
	bnez	$a1, .LBB0_1
.LBB0_3:                                # %return
	ret
.LBB0_4:
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	gcd_ll, .Lfunc_end0-gcd_ll
                                        # -- End function
	.globl	powmod_ll                       # -- Begin function powmod_ll
	.p2align	5
	.type	powmod_ll,@function
powmod_ll:                              # @powmod_ll
# %bb.0:                                # %entry
	beqz	$a1, .LBB1_7
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$a3, $a1, 31, 1
	beqz	$a3, .LBB1_8
# %bb.2:                                # %for.body4.preheader
	slli.d	$a3, $a3, 32
	clz.d	$a3, $a3
	ori	$a4, $zero, 33
	sub.d	$a4, $a4, $a3
	ori	$a5, $zero, 1
	move	$a3, $a0
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.inc9
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a4, $a4, -1
	bgeu	$a5, $a4, .LBB1_6
.LBB1_4:                                # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a4, -2
	mul.d	$a3, $a3, $a3
	srl.w	$a6, $a1, $a6
	andi	$a6, $a6, 1
	mod.du	$a3, $a3, $a2
	beqz	$a6, .LBB1_3
# %bb.5:                                # %if.then5
                                        #   in Loop: Header=BB1_4 Depth=1
	mul.d	$a3, $a3, $a0
	mod.du	$a3, $a3, $a2
	b	.LBB1_3
.LBB1_6:                                # %cleanup
	move	$a0, $a3
	ret
.LBB1_7:
	ori	$a0, $zero, 1
.LBB1_8:
	ret
.Lfunc_end1:
	.size	powmod_ll, .Lfunc_end1-powmod_ll
                                        # -- End function
	.globl	facts                           # -- Begin function facts
	.p2align	5
	.type	facts,@function
facts:                                  # @facts
# %bb.0:                                # %entry
	beqz	$a3, .LBB2_27
# %bb.1:                                # %for.body.preheader
	bstrpick.d	$t0, $a3, 31, 1
	slli.d	$a4, $t0, 32
	clz.d	$a4, $a4
	ori	$a5, $zero, 33
	sub.d	$a4, $a5, $a4
	ori	$a5, $zero, 1
	pcalau12i	$a6, %pc_hi20(factab)
	addi.d	$a6, $a6, %pc_lo12(factab)
	move	$a7, $zero
	addi.w	$t0, $t0, 0
	lu12i.w	$t1, 2
	ori	$t1, $t1, 1808
	ori	$t2, $zero, 1
	ori	$t3, $zero, 1
	ori	$t4, $zero, 1
	move	$t5, $a2
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a6, $a6, 8
.LBB2_3:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$t3, $t3, 1
	beq	$t3, $t1, .LBB2_26
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_21 Depth 2
	beqz	$t0, .LBB2_18
# %bb.5:                                # %for.body4.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$t7, $a4
	move	$t6, $t5
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %for.inc9.i
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.w	$t7, $t7, -1
	bgeu	$a5, $t7, .LBB2_9
.LBB2_7:                                # %for.body4.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t8, $t7, -2
	mul.d	$t6, $t6, $t6
	srl.w	$t8, $a3, $t8
	andi	$t8, $t8, 1
	mod.du	$t6, $t6, $a0
	beqz	$t8, .LBB2_6
# %bb.8:                                # %if.then5.i
                                        #   in Loop: Header=BB2_7 Depth=2
	mul.d	$t6, $t6, $t5
	mod.du	$t6, $t6, $a0
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_9:                                # %for.body4.i30.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$t5, $a4
	move	$t7, $a2
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_10:                               # %for.inc9.i42
                                        #   in Loop: Header=BB2_11 Depth=2
	addi.w	$t5, $t5, -1
	bgeu	$a5, $t5, .LBB2_13
.LBB2_11:                               # %for.body4.i30
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t8, $t5, -2
	mul.d	$t7, $t7, $t7
	srl.w	$t8, $a3, $t8
	andi	$t8, $t8, 1
	mod.du	$t7, $t7, $a0
	beqz	$t8, .LBB2_10
# %bb.12:                               # %if.then5.i39
                                        #   in Loop: Header=BB2_11 Depth=2
	mul.d	$t7, $t7, $a2
	mod.du	$t7, $t7, $a0
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_13:                               # %for.body.preheader.i48
                                        #   in Loop: Header=BB2_4 Depth=1
	add.d	$t5, $t7, $a1
	move	$t7, $a4
	move	$a2, $t5
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_14:                               # %for.inc9.i63
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.w	$t7, $t7, -1
	bgeu	$a5, $t7, .LBB2_17
.LBB2_15:                               # %for.body4.i51
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t8, $t7, -2
	mul.d	$a2, $a2, $a2
	srl.w	$t8, $a3, $t8
	andi	$t8, $t8, 1
	mod.du	$a2, $a2, $a0
	beqz	$t8, .LBB2_14
# %bb.16:                               # %if.then5.i60
                                        #   in Loop: Header=BB2_15 Depth=2
	mul.d	$a2, $a2, $t5
	mod.du	$a2, $a2, $a0
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_4 Depth=1
	move	$t5, $t6
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_18:                               # %for.body.preheader.i48.thread
                                        #   in Loop: Header=BB2_4 Depth=1
	add.d	$a2, $a2, $a1
.LBB2_19:                               # %powmod_ll.exit67
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$t6, $t5, $a2
	sub.d	$t7, $a2, $t5
	add.d	$t5, $t5, $a1
	add.d	$a2, $a2, $a1
	sltu	$t8, $a2, $t5
	masknez	$t7, $t7, $t8
	maskeqz	$t6, $t6, $t8
	or	$t6, $t6, $t7
	mul.d	$t4, $t6, $t4
	mod.du	$t4, $t4, $a0
	bne	$t3, $t2, .LBB2_3
# %bb.20:                               # %if.then13
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a7, $a7, 1
	add.w	$t2, $a7, $t2
	move	$t7, $a0
	move	$t6, $t4
	.p2align	4, , 16
.LBB2_21:                               # %if.end.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mod.du	$t6, $t6, $t7
	beqz	$t6, .LBB2_24
# %bb.22:                               # %if.end3.i
                                        #   in Loop: Header=BB2_21 Depth=2
	mod.du	$t7, $t7, $t6
	bnez	$t7, .LBB2_21
# %bb.23:                               # %gcd_ll.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	beq	$t6, $a5, .LBB2_3
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_4 Depth=1
	move	$t6, $t7
	beq	$t6, $a5, .LBB2_3
.LBB2_25:                               # %if.then19
                                        #   in Loop: Header=BB2_4 Depth=1
	div.du	$a0, $a0, $t6
	st.d	$t6, $a6, 0
	bne	$a0, $a5, .LBB2_2
.LBB2_26:                               # %cleanup
	ret
.LBB2_27:                               # %for.body.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 1
	lu12i.w	$a4, 2
	ori	$a4, $a4, 1807
	ori	$a5, $zero, 1
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_30 Depth=1
	addi.d	$a2, $a2, 1
	add.w	$a5, $a2, $a5
.LBB2_29:                               # %for.inc.us
                                        #   in Loop: Header=BB2_30 Depth=1
	beq	$a1, $a4, .LBB2_26
.LBB2_30:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $a5, .LBB2_29
# %bb.31:                               # %if.then13.us
                                        #   in Loop: Header=BB2_30 Depth=1
	beq	$a0, $a3, .LBB2_28
# %bb.32:                               # %if.then19.us
	pcalau12i	$a1, %pc_hi20(factab)
	st.d	$a0, $a1, %pc_lo12(factab)
	ret
.Lfunc_end2:
	.size	facts, .Lfunc_end2-facts
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 32767
	ori	$a0, $a0, 4095
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 3
	ori	$a3, $zero, 27
	pcaddu18i	$ra, %call36(facts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(factab)
	addi.d	$a0, $a0, %pc_lo12(factab)
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 7
	bne	$a1, $a2, .LBB3_4
# %bb.1:                                # %entry
	ld.d	$a1, $a0, 8
	ori	$a2, $zero, 73
	bne	$a1, $a2, .LBB3_4
# %bb.2:                                # %entry
	ld.d	$a0, $a0, 16
	lu12i.w	$a1, 64
	ori	$a1, $a1, 513
	bne	$a0, $a1, .LBB3_4
# %bb.3:                                # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_4:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	factab,@object                  # @factab
	.bss
	.globl	factab
	.p2align	3, 0x0
factab:
	.space	80
	.size	factab, 80

	.section	".note.GNU-stack","",@progbits
	.addrsig
