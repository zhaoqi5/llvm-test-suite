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
	ld.d	$ra, $a0, 24
	add.d	$a3, $a7, $a3
	sub.d	$a4, $a1, $t1
	bstrpick.d	$a4, $a4, 31, 0
	sub.d	$s0, $ra, $a4
	addi.d	$a4, $t1, -257
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $ra, $a4
	ld.w	$t2, $a2, 60
	ld.w	$s1, $a2, 64
	ld.wu	$t4, $a2, 68
	ld.d	$s4, $a2, 72
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
	add.d	$t1, $t1, $ra
	nor	$t3, $a1, $zero
	add.d	$t3, $t1, $t3
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	nor	$t3, $t4, $zero
	add.d	$t1, $t1, $t3
	sub.d	$a1, $t1, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a1, $t4, 31, 6
	slli.d	$s2, $a1, 6
	andi	$a1, $t4, 63
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $s4, $s2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $s4, 32
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $zero, 14
	ori	$s8, $zero, 2
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_82 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_66 Depth 2
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
	.p2align	4, , 16
.LBB0_4:                                # %if.end
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t1, $a1, $t6, 2
	slli.d	$a1, $a1, 2
	ld.bu	$t3, $t1, 1
	ldx.bu	$a1, $t6, $a1
	ld.hu	$s7, $t1, 2
	srl.d	$a5, $a5, $t3
	sub.w	$t0, $t0, $t3
	beqz	$a1, .LBB0_8
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$t1, $a1, 16
	andi	$a1, $a1, 255
	bnez	$t1, .LBB0_11
# %bb.6:                                # %if.else276
                                        #   in Loop: Header=BB0_4 Depth=2
	andi	$t1, $a1, 64
	bnez	$t1, .LBB0_87
# %bb.7:                                # %if.then280
                                        #   in Loop: Header=BB0_4 Depth=2
	bstrpick.d	$t1, $s7, 31, 0
	sll.w	$a1, $a6, $a1
	nor	$a1, $a1, $zero
	addi.w	$a1, $a1, 0
	and	$a1, $a5, $a1
	add.d	$a1, $a1, $t1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_8:                                # %if.then35.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a1, $s7, 255
	addi.d	$t1, $ra, 1
	st.b	$a1, $ra, 0
	move	$ra, $t1
.LBB0_9:                                # %do.cond299
                                        #   in Loop: Header=BB0_1 Depth=1
	bgeu	$a7, $a3, .LBB0_93
# %bb.10:                               # %do.cond299
                                        #   in Loop: Header=BB0_1 Depth=1
	bltu	$ra, $a4, .LBB0_1
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_11:                               # %if.then39
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a1, $a1, 15
	beqz	$a1, .LBB0_15
# %bb.12:                               # %if.then44
                                        #   in Loop: Header=BB0_1 Depth=1
	bgeu	$t0, $a1, .LBB0_14
# %bb.13:                               # %if.then47
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 0
	addi.d	$a7, $a7, 1
	sll.d	$t1, $t1, $t0
	add.d	$a5, $t1, $a5
	addi.d	$t0, $t0, 8
.LBB0_14:                               # %if.end54
                                        #   in Loop: Header=BB0_1 Depth=1
	sll.w	$t1, $a6, $a1
	andn	$t1, $a5, $t1
	add.w	$s7, $t1, $s7
	srl.d	$a5, $a5, $a1
	sub.w	$t0, $t0, $a1
.LBB0_15:                               # %if.end63
                                        #   in Loop: Header=BB0_1 Depth=1
	bltu	$s6, $t0, .LBB0_17
# %bb.16:                               # %if.then66
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
.LBB0_17:                               # %if.end79
                                        #   in Loop: Header=BB0_1 Depth=1
	and	$a1, $a5, $fp
	.p2align	4, , 16
.LBB0_18:                               # %if.end79
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t1, $a1, $t7, 2
	slli.d	$a1, $a1, 2
	ld.bu	$t3, $t1, 1
	ldx.bu	$a1, $t7, $a1
	ld.hu	$s5, $t1, 2
	srl.d	$a5, $a5, $t3
	andi	$t1, $a1, 16
	sub.w	$t0, $t0, $t3
	bnez	$t1, .LBB0_21
# %bb.19:                               # %if.else259
                                        #   in Loop: Header=BB0_18 Depth=2
	andi	$t1, $a1, 64
	bnez	$t1, .LBB0_90
# %bb.20:                               # %if.then263
                                        #   in Loop: Header=BB0_18 Depth=2
	bstrpick.d	$t1, $s5, 31, 0
	sll.w	$a1, $a6, $a1
	nor	$a1, $a1, $zero
	addi.w	$a1, $a1, 0
	and	$a1, $a5, $a1
	add.d	$a1, $a1, $t1
	b	.LBB0_18
.LBB0_21:                               # %if.then92
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a1, $a1, 15
	bgeu	$t0, $a1, .LBB0_24
# %bb.22:                               # %if.then98
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 0
	sll.d	$t1, $t1, $t0
	addi.w	$t5, $t0, 8
	add.d	$a5, $t1, $a5
	bgeu	$t5, $a1, .LBB0_25
# %bb.23:                               # %if.then107
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$t1, $a7, 1
	addi.d	$a7, $a7, 2
	sll.d	$t1, $t1, $t5
	add.d	$a5, $t1, $a5
	addi.d	$t5, $t0, 16
	b	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	move	$t5, $t0
	b	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a7, $a7, 1
.LBB0_26:                               # %if.end115
                                        #   in Loop: Header=BB0_1 Depth=1
	sll.w	$t0, $a6, $a1
	andn	$t3, $a5, $t0
	add.w	$s3, $t3, $s5
	srl.d	$a5, $a5, $a1
	sub.w	$t1, $ra, $s0
	sub.w	$t0, $t5, $a1
	bgeu	$t1, $s3, .LBB0_43
# %bb.27:                               # %if.then127
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$a1, $s3, $t1
	bgeu	$s1, $a1, .LBB0_29
# %bb.28:                               # %if.then131
                                        #   in Loop: Header=BB0_1 Depth=1
	ldptr.w	$t1, $a2, 7144
	bnez	$t1, .LBB0_94
.LBB0_29:                               # %if.end135
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$t4, .LBB0_49
# %bb.30:                               # %if.else154
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s0, $t4, 0
	bgeu	$s0, $a1, .LBB0_56
# %bb.31:                               # %if.then157
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$t1, $t1, $a1
	bstrpick.d	$t1, $t1, 31, 0
	sub.w	$s1, $a1, $t4
	add.d	$t5, $s4, $t1
	bgeu	$s1, $s7, .LBB0_63
# %bb.32:                               # %do.body167.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $t3
	add.d	$a1, $a1, $s5
	sub.w	$a1, $a1, $ra
	ori	$t3, $zero, 63
	bltu	$a1, $t3, .LBB0_34
# %bb.33:                               # %vector.memcheck393
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$t3, $s4, $t1
	sub.d	$t3, $ra, $t3
	ori	$s5, $zero, 64
	bgeu	$t3, $s5, .LBB0_81
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s5, $ra
	move	$a1, $s1
.LBB0_35:                               # %do.body167.preheader436
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s5
	.p2align	4, , 16
.LBB0_36:                               # %do.body167
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$s5, $t1, 1
	addi.w	$a1, $a1, -1
	st.b	$t3, $t1, 0
	move	$t1, $s5
	bnez	$a1, .LBB0_36
.LBB0_37:                               # %do.end173
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$s7, $s7, $s1
	bgeu	$s0, $s7, .LBB0_71
# %bb.38:                               # %do.body178.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ori	$t1, $zero, 64
	bltu	$t4, $t1, .LBB0_75
# %bb.39:                               # %do.body178.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$a1, $s5, $s4
	bltu	$a1, $t1, .LBB0_75
# %bb.40:                               # %vector.ph377
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$ra, $s5, $s2
	addi.d	$a1, $s5, 32
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	move	$t3, $s2
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_41:                               # %vector.body381
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$t3, $t3, -64
	addi.d	$t1, $t1, 64
	addi.d	$a1, $a1, 64
	bnez	$t3, .LBB0_41
# %bb.42:                               # %middle.block388
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	bne	$s2, $t4, .LBB0_76
	b	.LBB0_78
.LBB0_43:                               # %if.else231
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$a1, $s3, 31, 0
	addi.d	$ra, $ra, 2
	ori	$t1, $zero, 1
	sub.d	$t1, $t1, $a1
	.p2align	4, , 16
.LBB0_44:                               # %do.body235
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t3, $ra, $t1
	ld.b	$t5, $t3, -3
	st.b	$t5, $ra, -2
	ld.b	$t5, $t3, -2
	st.b	$t5, $ra, -1
	ld.b	$t3, $t3, -1
	st.b	$t3, $ra, 0
	addi.w	$s7, $s7, -3
	addi.d	$ra, $ra, 3
	bltu	$s8, $s7, .LBB0_44
# %bb.45:                               # %do.end246
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$s7, .LBB0_48
# %bb.46:                               # %if.then248
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $ra, $a1
	addi.d	$t1, $t1, 1
	ld.b	$t1, $t1, -3
	st.b	$t1, $ra, -2
	bne	$s7, $s8, .LBB0_55
# %bb.47:                               # %if.then253
                                        #   in Loop: Header=BB0_1 Depth=1
	nor	$a1, $a1, $zero
	ldx.b	$a1, $a1, $ra
	st.b	$a1, $ra, -1
	b	.LBB0_9
.LBB0_48:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$ra, $ra, -2
	b	.LBB0_9
.LBB0_49:                               # %if.then138
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $t2, $a1
	bstrpick.d	$t1, $t1, 31, 0
	add.d	$t5, $s4, $t1
	bgeu	$a1, $s7, .LBB0_65
# %bb.50:                               # %do.body146.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t3, $s0, $t3
	add.d	$t3, $t3, $s5
	sub.w	$t3, $t3, $ra
	ori	$s0, $zero, 63
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	bltu	$t3, $s0, .LBB0_52
# %bb.51:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$s0, $s4, $t1
	sub.d	$s0, $ra, $s0
	ori	$s1, $zero, 64
	bgeu	$s0, $s1, .LBB0_72
.LBB0_52:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s1, $ra
	move	$s0, $a1
.LBB0_53:                               # %do.body146.preheader434
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s1
	.p2align	4, , 16
.LBB0_54:                               # %do.body146
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$s1, $t1, 1
	addi.w	$s0, $s0, -1
	st.b	$t3, $t1, 0
	move	$t1, $s1
	bnez	$s0, .LBB0_54
	b	.LBB0_62
.LBB0_55:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$ra, $ra, -1
	b	.LBB0_9
.LBB0_56:                               # %if.else190
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.d	$t1, $t4, $a1
	bstrpick.d	$t1, $t1, 31, 0
	add.d	$t5, $s4, $t1
	bgeu	$a1, $s7, .LBB0_64
# %bb.57:                               # %do.body198.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t3, $s0, $t3
	add.d	$t3, $t3, $s5
	sub.w	$t3, $t3, $ra
	ori	$s0, $zero, 63
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	bltu	$t3, $s0, .LBB0_59
# %bb.58:                               # %vector.memcheck413
                                        #   in Loop: Header=BB0_1 Depth=1
	add.d	$s0, $s4, $t1
	sub.d	$s0, $ra, $s0
	ori	$s1, $zero, 64
	bgeu	$s0, $s1, .LBB0_84
.LBB0_59:                               #   in Loop: Header=BB0_1 Depth=1
	move	$s1, $ra
	move	$s0, $a1
.LBB0_60:                               # %do.body198.preheader437
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $s1
	.p2align	4, , 16
.LBB0_61:                               # %do.body198
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t3, $t5, 0
	addi.d	$t5, $t5, 1
	addi.d	$s1, $t1, 1
	addi.w	$s0, $s0, -1
	st.b	$t3, $t1, 0
	move	$t1, $s1
	bnez	$s0, .LBB0_61
.LBB0_62:                               # %do.end204
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$s7, $s7, $a1
	sub.d	$t5, $s1, $s3
	move	$ra, $s1
.LBB0_63:                               # %if.end210
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bgeu	$s7, $a1, .LBB0_66
	b	.LBB0_79
.LBB0_64:                               #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB0_65:                               # %if.end210
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 3
	bltu	$s7, $a1, .LBB0_79
	.p2align	4, , 16
.LBB0_66:                               # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $t5, 0
	st.b	$a1, $ra, 0
	ld.b	$a1, $t5, 1
	st.b	$a1, $ra, 1
	ld.b	$t1, $t5, 2
	addi.d	$t3, $t5, 3
	addi.d	$a1, $ra, 3
	addi.w	$s7, $s7, -3
	st.b	$t1, $ra, 2
	move	$t5, $t3
	move	$ra, $a1
	bltu	$s8, $s7, .LBB0_66
# %bb.67:                               # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$s7, .LBB0_80
.LBB0_68:                               # %if.then221
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.b	$t1, $t3, 0
	st.b	$t1, $a1, 0
	bne	$s7, $s8, .LBB0_70
# %bb.69:                               # %if.then226
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.b	$t1, $t3, 1
	addi.d	$ra, $a1, 2
	st.b	$t1, $a1, 1
	b	.LBB0_9
.LBB0_70:                               #   in Loop: Header=BB0_1 Depth=1
	addi.d	$ra, $a1, 1
	b	.LBB0_9
.LBB0_71:                               #   in Loop: Header=BB0_1 Depth=1
	move	$ra, $s5
	move	$t5, $s4
	b	.LBB0_63
.LBB0_72:                               # %vector.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$t3, $t3, 31, 0
	addi.d	$t3, $t3, 1
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$t3, $t3, 32, 6
	slli.d	$t3, $t3, 6
	add.d	$s1, $ra, $t3
	sub.d	$s0, $a1, $t3
	add.d	$t5, $t5, $t3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	add.d	$t1, $s5, $t1
	addi.d	$ra, $ra, 32
	move	$s5, $t3
	.p2align	4, , 16
.LBB0_73:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	xvst	$xr0, $ra, -32
	xvst	$xr1, $ra, 0
	addi.d	$s5, $s5, -64
	addi.d	$t1, $t1, 64
	addi.d	$ra, $ra, 64
	bnez	$s5, .LBB0_73
# %bb.74:                               # %middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_53
	b	.LBB0_62
.LBB0_75:                               #   in Loop: Header=BB0_1 Depth=1
	move	$ra, $s5
	move	$a1, $t4
	move	$t3, $s4
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB0_76:                               # %do.body178.preheader435
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$t1, $ra
	.p2align	4, , 16
.LBB0_77:                               # %do.body178
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t5, $t3, 0
	addi.d	$t3, $t3, 1
	addi.d	$ra, $t1, 1
	addi.w	$a1, $a1, -1
	st.b	$t5, $t1, 0
	move	$t1, $ra
	bnez	$a1, .LBB0_77
.LBB0_78:                               # %do.end184
                                        #   in Loop: Header=BB0_1 Depth=1
	sub.w	$s7, $s7, $t4
	sub.d	$t5, $ra, $s3
	ori	$a1, $zero, 3
	bgeu	$s7, $a1, .LBB0_66
.LBB0_79:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $ra
	move	$t3, $t5
	bnez	$s7, .LBB0_68
.LBB0_80:                               #   in Loop: Header=BB0_1 Depth=1
	move	$ra, $a1
	b	.LBB0_9
.LBB0_81:                               # %vector.ph397
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 32, 6
	slli.d	$t3, $a1, 6
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	add.d	$s5, $ra, $t3
	sub.d	$a1, $s1, $t3
	add.d	$t5, $t5, $t3
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	add.d	$t1, $t3, $t1
	addi.d	$ra, $ra, 32
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_82:                               # %vector.body401
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	xvst	$xr0, $ra, -32
	xvst	$xr1, $ra, 0
	addi.d	$t3, $t3, -64
	addi.d	$t1, $t1, 64
	addi.d	$ra, $ra, 64
	bnez	$t3, .LBB0_82
# %bb.83:                               # %middle.block408
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$t1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_35
	b	.LBB0_37
.LBB0_84:                               # %vector.ph417
                                        #   in Loop: Header=BB0_1 Depth=1
	bstrpick.d	$t3, $t3, 31, 0
	addi.d	$t3, $t3, 1
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$t3, $t3, 32, 6
	slli.d	$t3, $t3, 6
	add.d	$s1, $ra, $t3
	sub.d	$s0, $a1, $t3
	add.d	$t5, $t5, $t3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	add.d	$t1, $s5, $t1
	addi.d	$ra, $ra, 32
	move	$s5, $t3
	.p2align	4, , 16
.LBB0_85:                               # %vector.body421
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t1, -32
	xvld	$xr1, $t1, 0
	xvst	$xr0, $ra, -32
	xvst	$xr1, $ra, 0
	addi.d	$s5, $s5, -64
	addi.d	$t1, $t1, 64
	addi.d	$ra, $ra, 64
	bnez	$s5, .LBB0_85
# %bb.86:                               # %middle.block428
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	bne	$t1, $t3, .LBB0_60
	b	.LBB0_62
.LBB0_87:                               # %if.else289
	andi	$a1, $a1, 32
	bnez	$a1, .LBB0_89
# %bb.88:
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	b	.LBB0_91
.LBB0_89:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3903
	b	.LBB0_92
.LBB0_90:
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
.LBB0_91:                               # %do.end304.sink.split.sink.split
	st.d	$a1, $a0, 48
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3921
.LBB0_92:                               # %do.end304
	st.w	$a1, $a2, 8
.LBB0_93:                               # %do.end304
	bstrpick.d	$a1, $t0, 31, 3
	sub.d	$a1, $a7, $a1
	st.d	$a1, $a0, 0
	st.d	$ra, $a0, 24
	sub.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 5
	st.w	$a1, $a0, 8
	sub.d	$a1, $a4, $ra
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
.LBB0_94:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	b	.LBB0_91
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
