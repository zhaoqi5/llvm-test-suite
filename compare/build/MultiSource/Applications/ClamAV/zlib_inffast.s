	.file	"zlib_inffast.c"
	.text
	.globl	inflate_fast                    # -- Begin function inflate_fast
	.p2align	5
	.type	inflate_fast,@function
inflate_fast:                           # @inflate_fast
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 8
	ld.d	$a2, $a0, 56
	ld.d	$a7, $a0, 0
	addi.d	$a3, $a3, -5
	ld.w	$t1, $a0, 32
	bstrpick.d	$a3, $a3, 31, 0
	ld.d	$s7, $a0, 24
	add.d	$a3, $a7, $a3
	sub.d	$a4, $a1, $t1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$s1, $s7, $a4
	addi.d	$a4, $t1, -257
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $s7, $a4
	ld.w	$t2, $a2, 60
	ld.w	$s4, $a2, 64
	ld.wu	$t4, $a2, 68
	ld.d	$s3, $a2, 72
	ld.d	$a5, $a2, 80
	ld.w	$t0, $a2, 88
	ld.d	$t6, $a2, 104
	ld.wu	$t3, $a2, 120
	ld.d	$t7, $a2, 112
	ld.wu	$t5, $a2, 124
	addi.d	$a6, $zero, -1
	sll.w	$t3, $a6, $t3
	nor	$t3, $t3, $zero
	sll.w	$t5, $a6, $t5
	nor	$t5, $t5, $zero
	addi.w	$t8, $t3, 0
	addi.w	$fp, $t5, 0
	add.w	$t3, $t4, $t2
	st.d	$t3, $sp, 72                    # 8-byte Folded Spill
	add.d	$t1, $t1, $s7
	nor	$t3, $a1, $zero
	add.d	$t3, $t1, $t3
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	nor	$t3, $t4, $zero
	add.d	$t1, $t1, $t3
	sub.d	$a1, $t1, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a1, $t4, 31, 5
	slli.d	$s2, $a1, 5
	andi	$a1, $t4, 31
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a1, $s3, $s2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$s6, $zero, 14
	ori	$s5, $zero, 2
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_64 Depth 2
	bltu	$s6, $t0, .LBB0_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a7, 0
	sll.d	$a1, $a1, $t0
	ld.bu	$t1, $a7, 1
	add.d	$a1, $a1, $a5
	addi.d	$a5, $t0, 8
	addi.d	$a7, $a7, 2
	sll.d	$a5, $t1, $a5
	add.d	$a5, $a1, $a5
	ori	$t0, $t0, 16
.LBB0_3:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	and	$a1, $a5, $t8
	alsl.d	$t1, $a1, $t6, 2
	slli.d	$a1, $a1, 2
	ld.bu	$t3, $t1, 1
	ldx.bu	$a1, $t6, $a1
	ld.hu	$ra, $t1, 2
	srl.d	$a5, $a5, $t3
	sub.w	$t0, $t0, $t3
	beqz	$a1, .LBB0_7
	.p2align	4, , 16
.LBB0_4:                                # %if.else
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t1, $a1, 16
	andi	$a1, $a1, 255
	bnez	$t1, .LBB0_10
# %bb.5:                                # %if.else276
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$t1, $a1, 64
	bnez	$t1, .LBB0_84
# %bb.6:                                # %if.then280
                                        #   in Loop: Header=BB0_4 Depth=2
	bstrpick.d	$t1, $ra, 31, 0
	sll.w	$a1, $a6, $a1
	nor	$a1, $a1, $zero
	addi.w	$a1, $a1, 0
	and	$a1, $a5, $a1
	alsl.d	$a1, $a1, $t6, 2
	alsl.d	$t3, $t1, $a1, 2
	slli.d	$t1, $t1, 2
	ld.bu	$t5, $t3, 1
	ldx.bu	$a1, $a1, $t1
	ld.hu	$ra, $t3, 2
	srl.d	$a5, $a5, $t5
	sub.w	$t0, $t0, $t5
	bnez	$a1, .LBB0_4
.LBB0_7:                                # %if.then35.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a1, $ra, 255
	addi.d	$t1, $s7, 1
	st.b	$a1, $s7, 0
	move	$s7, $t1
.LBB0_8:                                # %do.cond299
                                        #   in Loop: Header=BB0_1 Depth=1
	bgeu	$a7, $a3, .LBB0_90
# %bb.9:                                # %do.cond299
                                        #   in Loop: Header=BB0_1 Depth=1
	bltu	$s7, $a4, .LBB0_1
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_10:                               # %if.then39
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a1, $a1, 15
	beqz	$a1, .LBB0_14
# %bb.11:                               # %if.then44
                                        #   in Loop: Header=BB0_1 Depth=1
	bgeu	$t0, $a1, .LBB0_13
# %bb.12:                               # %if.then47
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 0
	addi.d	$a7, $a7, 1
	sll.d	$t1, $t1, $t0
	add.d	$a5, $t1, $a5
	addi.d	$t0, $t0, 8
.LBB0_13:                               # %if.end54
                                        #   in Loop: Header=BB0_1 Depth=1
	sll.w	$t1, $a6, $a1
	andn	$t1, $a5, $t1
	add.w	$ra, $t1, $ra
	srl.d	$a5, $a5, $a1
	sub.w	$t0, $t0, $a1
.LBB0_14:                               # %if.end63
                                        #   in Loop: Header=BB0_1 Depth=1
	bltu	$s6, $t0, .LBB0_16
# %bb.15:                               # %if.then66
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a7, 0
	sll.d	$a1, $a1, $t0
	ld.bu	$t1, $a7, 1
	add.d	$a1, $a1, $a5
	addi.d	$a5, $t0, 8
	addi.d	$a7, $a7, 2
	sll.d	$a5, $t1, $a5
	add.d	$a5, $a1, $a5
	ori	$t0, $t0, 16
.LBB0_16:                               # %if.end79
                                        #   in Loop: Header=BB0_1 Depth=1
	and	$a1, $a5, $fp
	alsl.d	$t1, $a1, $t7, 2
	slli.d	$a1, $a1, 2
	ld.bu	$t5, $t1, 1
	ldx.bu	$t3, $t7, $a1
	ld.hu	$a1, $t1, 2
	srl.d	$a5, $a5, $t5
	andi	$t1, $t3, 16
	sub.w	$t0, $t0, $t5
	bnez	$t1, .LBB0_19
	.p2align	4, , 16
.LBB0_17:                               # %if.else259
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t1, $t3, 64
	bnez	$t1, .LBB0_87
# %bb.18:                               # %if.then263
                                        #   in Loop: Header=BB0_17 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
	sll.w	$t1, $a6, $t3
	nor	$t1, $t1, $zero
	addi.w	$t1, $t1, 0
	and	$t1, $a5, $t1
	alsl.d	$t1, $t1, $t7, 2
	alsl.d	$t5, $a1, $t1, 2
	slli.d	$a1, $a1, 2
	ld.bu	$s0, $t5, 1
	ldx.bu	$t3, $t1, $a1
	ld.hu	$a1, $t5, 2
	srl.d	$a5, $a5, $s0
	andi	$t1, $t3, 16
	sub.w	$t0, $t0, $s0
	beqz	$t1, .LBB0_17
.LBB0_19:                               # %if.then92
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$t5, $t3, 15
	bgeu	$t0, $t5, .LBB0_22
# %bb.20:                               # %if.then98
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 0
	sll.d	$t1, $t1, $t0
	addi.w	$s0, $t0, 8
	add.d	$a5, $t1, $a5
	bgeu	$s0, $t5, .LBB0_23
# %bb.21:                               # %if.then107
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 1
	addi.d	$a7, $a7, 2
	sll.d	$t1, $t1, $s0
	add.d	$a5, $t1, $a5
	addi.d	$s0, $t0, 16
	b	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $t0
	b	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a7, $a7, 1
.LBB0_24:                               # %if.end115
                                        #   in Loop: Header=BB0_1 Depth=1
	sll.w	$t0, $a6, $t5
	andn	$t3, $a5, $t0
	add.w	$s8, $t3, $a1
	srl.d	$a5, $a5, $t5
	sub.w	$t1, $s7, $s1
	sub.w	$t0, $s0, $t5
	bgeu	$t1, $s8, .LBB0_41
# %bb.25:                               # %if.then127
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t5, $s4
	sub.w	$s4, $s8, $t1
	st.d	$t5, $sp, 40                    # 8-byte Folded Spill
	bgeu	$t5, $s4, .LBB0_27
# %bb.26:                               # %if.then131
                                        #   in Loop: Header=BB0_1 Depth=1
	ldptr.w	$t1, $a2, 7144
	bnez	$t1, .LBB0_91
.LBB0_27:                               # %if.end135
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$t4, .LBB0_47
# %bb.28:                               # %if.else154
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.w	$s0, $t4, 0
	bgeu	$s0, $s4, .LBB0_54
# %bb.29:                               # %if.then157
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$t1, $t1, $s4
	bstrpick.d	$t1, $t1, 31, 0
	sub.w	$s1, $s4, $t4
	add.d	$t5, $s3, $t1
	bgeu	$s1, $ra, .LBB0_61
# %bb.30:                               # %do.body167.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	add.d	$t3, $s4, $t3
	add.d	$a1, $t3, $a1
	sub.w	$a1, $a1, $s7
	ori	$t3, $zero, 31
	bltu	$a1, $t3, .LBB0_32
# %bb.31:                               # %vector.memcheck393
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$t3, $s3, $t1
	sub.d	$t3, $s7, $t3
	ori	$s4, $zero, 32
	bgeu	$t3, $s4, .LBB0_78
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $s7
	move	$s4, $s1
.LBB0_33:                               # %do.body167.preheader436
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $a1
	.p2align	4, , 16
.LBB0_34:                               # %do.body167
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$a1, $t1, 1
	addi.w	$s4, $s4, -1
	st.b	$t3, $t1, 0
	move	$t1, $a1
	bnez	$s4, .LBB0_34
.LBB0_35:                               # %do.end173
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$ra, $ra, $s1
	bgeu	$s0, $ra, .LBB0_62
# %bb.36:                               # %do.body178.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$t3, $zero, 32
	bltu	$t4, $t3, .LBB0_72
# %bb.37:                               # %do.body178.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $a1, $s3
	bltu	$t1, $t3, .LBB0_72
# %bb.38:                               # %vector.ph377
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$s7, $a1, $s2
	addi.d	$a1, $a1, 16
	addi.d	$t1, $s3, 16
	move	$t3, $s2
	.p2align	4, , 16
.LBB0_39:                               # %vector.body381
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$t3, $t3, -32
	addi.d	$t1, $t1, 32
	addi.d	$a1, $a1, 32
	bnez	$t3, .LBB0_39
# %bb.40:                               # %middle.block388
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	bne	$s2, $t4, .LBB0_73
	b	.LBB0_75
.LBB0_41:                               # %if.else231
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$a1, $s8, 31, 0
	addi.d	$s7, $s7, 2
	ori	$t1, $zero, 1
	sub.d	$t1, $t1, $a1
	.p2align	4, , 16
.LBB0_42:                               # %do.body235
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $s7, $t1
	ld.b	$t5, $t3, -3
	st.b	$t5, $s7, -2
	ld.b	$t5, $t3, -2
	st.b	$t5, $s7, -1
	ld.b	$t3, $t3, -1
	st.b	$t3, $s7, 0
	addi.w	$ra, $ra, -3
	addi.d	$s7, $s7, 3
	bltu	$s5, $ra, .LBB0_42
# %bb.43:                               # %do.end246
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$ra, .LBB0_46
# %bb.44:                               # %if.then248
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $s7, $a1
	addi.d	$t1, $t1, 1
	ld.b	$t1, $t1, -3
	st.b	$t1, $s7, -2
	bne	$ra, $s5, .LBB0_53
# %bb.45:                               # %if.then253
                                        #   in Loop: Header=BB0_1 Depth=1
	nor	$a1, $a1, $zero
	ldx.b	$a1, $a1, $s7
	st.b	$a1, $s7, -1
	b	.LBB0_8
.LBB0_46:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$s7, $s7, -2
	b	.LBB0_8
.LBB0_47:                               # %if.then138
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $t2, $s4
	bstrpick.d	$t1, $t1, 31, 0
	add.d	$t5, $s3, $t1
	bgeu	$s4, $ra, .LBB0_63
# %bb.48:                               # %do.body146.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t3, $s0, $t3
	add.d	$a1, $t3, $a1
	sub.w	$a1, $a1, $s7
	ori	$t3, $zero, 31
	bltu	$a1, $t3, .LBB0_50
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$t3, $s3, $t1
	sub.d	$t3, $s7, $t3
	ori	$s0, $zero, 32
	bgeu	$t3, $s0, .LBB0_69
.LBB0_50:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s7
	move	$a1, $s4
.LBB0_51:                               # %do.body146.preheader434
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s0
	.p2align	4, , 16
.LBB0_52:                               # %do.body146
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$s0, $t1, 1
	addi.w	$a1, $a1, -1
	st.b	$t3, $t1, 0
	move	$t1, $s0
	bnez	$a1, .LBB0_52
	b	.LBB0_60
.LBB0_53:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$s7, $s7, -1
	b	.LBB0_8
.LBB0_54:                               # %if.else190
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $t4, $s4
	bstrpick.d	$t1, $t1, 31, 0
	add.d	$t5, $s3, $t1
	bgeu	$s4, $ra, .LBB0_63
# %bb.55:                               # %do.body198.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t3, $s0, $t3
	add.d	$a1, $t3, $a1
	sub.w	$a1, $a1, $s7
	ori	$t3, $zero, 31
	bltu	$a1, $t3, .LBB0_57
# %bb.56:                               # %vector.memcheck413
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$t3, $s3, $t1
	sub.d	$t3, $s7, $t3
	ori	$s0, $zero, 32
	bgeu	$t3, $s0, .LBB0_81
.LBB0_57:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s7
	move	$a1, $s4
.LBB0_58:                               # %do.body198.preheader437
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s0
	.p2align	4, , 16
.LBB0_59:                               # %do.body198
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$s0, $t1, 1
	addi.w	$a1, $a1, -1
	st.b	$t3, $t1, 0
	move	$t1, $s0
	bnez	$a1, .LBB0_59
.LBB0_60:                               # %do.end204
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$ra, $ra, $s4
	sub.d	$t5, $s0, $s8
	move	$s7, $s0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bgeu	$ra, $a1, .LBB0_64
	b	.LBB0_76
.LBB0_61:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bgeu	$ra, $a1, .LBB0_64
	b	.LBB0_76
.LBB0_62:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s7, $a1
	move	$t5, $s3
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
.LBB0_63:                               # %if.end210
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$ra, $a1, .LBB0_76
	.p2align	4, , 16
.LBB0_64:                               # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $t5, 0
	st.b	$a1, $s7, 0
	ld.b	$a1, $t5, 1
	st.b	$a1, $s7, 1
	ld.b	$t1, $t5, 2
	addi.d	$t3, $t5, 3
	addi.d	$a1, $s7, 3
	addi.w	$ra, $ra, -3
	st.b	$t1, $s7, 2
	move	$t5, $t3
	move	$s7, $a1
	bltu	$s5, $ra, .LBB0_64
# %bb.65:                               # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$ra, .LBB0_77
.LBB0_66:                               # %if.then221
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.b	$t1, $t3, 0
	st.b	$t1, $a1, 0
	bne	$ra, $s5, .LBB0_68
# %bb.67:                               # %if.then226
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.b	$t1, $t3, 1
	addi.d	$s7, $a1, 2
	st.b	$t1, $a1, 1
	b	.LBB0_8
.LBB0_68:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$s7, $a1, 1
	b	.LBB0_8
.LBB0_69:                               # %vector.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 32, 5
	slli.d	$t3, $a1, 5
	add.d	$s0, $s7, $t3
	sub.d	$a1, $s4, $t3
	add.d	$t5, $t5, $t3
	addi.d	$s1, $s3, 16
	add.d	$t1, $s1, $t1
	addi.d	$s7, $s7, 16
	move	$s1, $t3
	.p2align	4, , 16
.LBB0_70:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $s7, -16
	vst	$vr1, $s7, 0
	addi.d	$s1, $s1, -32
	addi.d	$t1, $t1, 32
	addi.d	$s7, $s7, 32
	bnez	$s1, .LBB0_70
# %bb.71:                               # %middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_51
	b	.LBB0_60
.LBB0_72:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s7, $a1
	move	$a1, $t4
	move	$t3, $s3
.LBB0_73:                               # %do.body178.preheader435
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s7
	.p2align	4, , 16
.LBB0_74:                               # %do.body178
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t5, $t3, 0
	addi.d	$t3, $t3, 1
	addi.d	$s7, $t1, 1
	addi.w	$a1, $a1, -1
	st.b	$t5, $t1, 0
	move	$t1, $s7
	bnez	$a1, .LBB0_74
.LBB0_75:                               # %do.end184
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$ra, $ra, $t4
	sub.d	$t5, $s7, $s8
	ori	$a1, $zero, 3
	bgeu	$ra, $a1, .LBB0_64
.LBB0_76:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $s7
	move	$t3, $t5
	bnez	$ra, .LBB0_66
.LBB0_77:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s7, $a1
	b	.LBB0_8
.LBB0_78:                               # %vector.ph397
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 32, 5
	slli.d	$t3, $a1, 5
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	add.d	$a1, $s7, $t3
	sub.d	$s4, $s1, $t3
	add.d	$t5, $t5, $t3
	addi.d	$t3, $s3, 16
	add.d	$t1, $t3, $t1
	addi.d	$s7, $s7, 16
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_79:                               # %vector.body401
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $s7, -16
	vst	$vr1, $s7, 0
	addi.d	$t3, $t3, -32
	addi.d	$t1, $t1, 32
	addi.d	$s7, $s7, 32
	bnez	$t3, .LBB0_79
# %bb.80:                               # %middle.block408
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_33
	b	.LBB0_35
.LBB0_81:                               # %vector.ph417
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 32, 5
	slli.d	$t3, $a1, 5
	add.d	$s0, $s7, $t3
	sub.d	$a1, $s4, $t3
	add.d	$t5, $t5, $t3
	addi.d	$s1, $s3, 16
	add.d	$t1, $s1, $t1
	addi.d	$s7, $s7, 16
	move	$s1, $t3
	.p2align	4, , 16
.LBB0_82:                               # %vector.body421
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, -16
	vld	$vr1, $t1, 0
	vst	$vr0, $s7, -16
	vst	$vr1, $s7, 0
	addi.d	$s1, $s1, -32
	addi.d	$t1, $t1, 32
	addi.d	$s7, $s7, 32
	bnez	$s1, .LBB0_82
# %bb.83:                               # %middle.block428
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_58
	b	.LBB0_60
.LBB0_84:                               # %if.else289
	andi	$a1, $a1, 32
	bnez	$a1, .LBB0_86
# %bb.85:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	b	.LBB0_88
.LBB0_86:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3903
	b	.LBB0_89
.LBB0_87:
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
.LBB0_88:                               # %do.end304.sink.split.sink.split
	st.d	$a1, $a0, 48
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3921
.LBB0_89:                               # %do.end304
	st.w	$a1, $a2, 8
.LBB0_90:                               # %do.end304
	bstrpick.d	$a1, $t0, 31, 3
	sub.d	$a1, $a7, $a1
	st.d	$a1, $a0, 0
	st.d	$s7, $a0, 24
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 5
	st.w	$a1, $a0, 8
	sub.d	$a1, $a4, $s7
	andi	$a3, $t0, 7
	sll.w	$a4, $a6, $a3
	nor	$a4, $a4, $zero
	addi.w	$a4, $a4, 0
	and	$a4, $a5, $a4
	addi.d	$a1, $a1, 257
	st.w	$a1, $a0, 32
	st.d	$a4, $a2, 80
	st.w	$a3, $a2, 88
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB0_91:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	b	.LBB0_88
.Lfunc_end0:
	.size	inflate_fast, .Lfunc_end0-inflate_fast
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid distance too far back"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"invalid distance code"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"invalid literal/length code"
	.size	.L.str.2, 28

	.section	".note.GNU-stack","",@progbits
	.addrsig
