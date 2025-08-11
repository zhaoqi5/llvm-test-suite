	.file	"context_ini.c"
	.text
	.globl	init_contexts                   # -- Begin function init_contexts
	.p2align	5
	.type	init_contexts,@function
init_contexts:                          # @init_contexts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$a0, $a0, 5592
	move	$s4, $zero
	move	$s5, $zero
	ld.d	$s1, $a0, 48
	ld.d	$a0, $a0, 56
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1772
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s6, $zero, 88
	pcalau12i	$a0, %pc_hi20(INIT_MB_TYPE_I)
	addi.d	$s7, $a0, %pc_lo12(INIT_MB_TYPE_I)
	ori	$s8, $zero, 2
	ori	$s3, $zero, 4
	ori	$s0, $zero, 264
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_1:                                # %if.then.10
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 40
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
.LBB0_2:                                # %for.inc.10
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 88
	addi.d	$s1, $s1, 44
	beq	$s4, $s0, .LBB0_46
.LBB0_3:                                # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 44
	beq	$a0, $s8, .LBB0_5
# %bb.4:                                # %for.cond2.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s3, .LBB0_6
.LBB0_5:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	mul.d	$a1, $s5, $s6
	add.d	$a1, $s7, $a1
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $a0, 8
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a1, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MB_TYPE_P)
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_9
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_10
.LBB0_9:                                # %if.then.1
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %if.else.1
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_11:                               # %for.inc.1
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_13
# %bb.12:                               # %for.inc.1
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_14
.LBB0_13:                               # %if.then.2
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %if.else.2
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_15:                               # %for.inc.2
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_17
# %bb.16:                               # %for.inc.2
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_18
.LBB0_17:                               # %if.then.3
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %if.else.3
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_19:                               # %for.inc.3
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_21
# %bb.20:                               # %for.inc.3
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_22
.LBB0_21:                               # %if.then.4
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %if.else.4
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_23:                               # %for.inc.4
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_25
# %bb.24:                               # %for.inc.4
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_26
.LBB0_25:                               # %if.then.5
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 20
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %if.else.5
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 20
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_27:                               # %for.inc.5
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_29
# %bb.28:                               # %for.inc.5
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_30
.LBB0_29:                               # %if.then.6
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 24
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %if.else.6
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 24
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_31:                               # %for.inc.6
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_33
# %bb.32:                               # %for.inc.6
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_34
.LBB0_33:                               # %if.then.7
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 28
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %if.else.7
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 28
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_35:                               # %for.inc.7
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_37
# %bb.36:                               # %for.inc.7
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_38
.LBB0_37:                               # %if.then.8
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 32
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %if.else.8
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 32
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_39:                               # %for.inc.8
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_41
# %bb.40:                               # %for.inc.8
                                        #   in Loop: Header=BB0_3 Depth=1
	bne	$a0, $s8, .LBB0_42
.LBB0_41:                               # %if.then.9
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 36
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %if.else.9
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 36
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_43:                               # %for.inc.9
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s3, .LBB0_1
# %bb.44:                               # %for.inc.9
                                        #   in Loop: Header=BB0_3 Depth=1
	beq	$a0, $s8, .LBB0_1
# %bb.45:                               # %if.else.10
                                        #   in Loop: Header=BB0_3 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 40
	slli.d	$a2, $a0, 8
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s4, $a0
	pcalau12i	$a2, %pc_hi20(INIT_MB_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_TYPE_P)
	add.d	$a0, $a2, $a0
	b	.LBB0_2
.LBB0_46:                               # %for.cond33.preheader
	ld.w	$a0, $fp, 44
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $s2, 176
	ori	$a2, $zero, 2
	pcalau12i	$a3, %pc_hi20(INIT_B8_TYPE_I)
	addi.d	$s1, $a3, %pc_lo12(INIT_B8_TYPE_I)
	beq	$a0, $a2, .LBB0_48
# %bb.47:                               # %for.cond33.preheader
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_49
.LBB0_48:                               # %if.then44
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a2, $s1, $a0
	b	.LBB0_50
.LBB0_49:                               # %if.else57
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a2, $a2, $a0
.LBB0_50:                               # %for.inc72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_52
# %bb.51:                               # %for.inc72
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_53
.LBB0_52:                               # %if.then44.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 180
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_54
.LBB0_53:                               # %if.else57.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 180
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_54:                               # %for.inc72.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_56
# %bb.55:                               # %for.inc72.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_57
.LBB0_56:                               # %if.then44.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 184
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_58
.LBB0_57:                               # %if.else57.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 184
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_58:                               # %for.inc72.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_60
# %bb.59:                               # %for.inc72.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_61
.LBB0_60:                               # %if.then44.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 188
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_62
.LBB0_61:                               # %if.else57.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 188
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_62:                               # %for.inc72.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_64
# %bb.63:                               # %for.inc72.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_65
.LBB0_64:                               # %if.then44.4
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 192
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_66
.LBB0_65:                               # %if.else57.4
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 192
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_66:                               # %for.inc72.4
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_68
# %bb.67:                               # %for.inc72.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_69
.LBB0_68:                               # %if.then44.5
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 196
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_70
.LBB0_69:                               # %if.else57.5
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 196
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_70:                               # %for.inc72.5
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_72
# %bb.71:                               # %for.inc72.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_73
.LBB0_72:                               # %if.then44.6
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 200
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_74
.LBB0_73:                               # %if.else57.6
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 200
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_74:                               # %for.inc72.6
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_76
# %bb.75:                               # %for.inc72.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_77
.LBB0_76:                               # %if.then44.7
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 204
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_78
.LBB0_77:                               # %if.else57.7
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 204
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_78:                               # %for.inc72.7
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_80
# %bb.79:                               # %for.inc72.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_81
.LBB0_80:                               # %if.then44.8
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 208
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_82
.LBB0_81:                               # %if.else57.8
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 208
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_82:                               # %for.inc72.8
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s2, 212
	beq	$a0, $a2, .LBB0_84
# %bb.83:                               # %for.inc72.8
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_85
.LBB0_84:                               # %if.then44.1529
	ld.w	$a0, $s0, 0
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_86
.LBB0_85:                               # %if.else57.1531
	ld.w	$a0, $s0, 0
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_86:                               # %for.inc72.1532
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_88
# %bb.87:                               # %for.inc72.1532
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_89
.LBB0_88:                               # %if.then44.1.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 216
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_90
.LBB0_89:                               # %if.else57.1.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 216
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_90:                               # %for.inc72.1.1
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_92
# %bb.91:                               # %for.inc72.1.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_93
.LBB0_92:                               # %if.then44.2.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 220
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_94
.LBB0_93:                               # %if.else57.2.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 220
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_94:                               # %for.inc72.2.1
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_96
# %bb.95:                               # %for.inc72.2.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_97
.LBB0_96:                               # %if.then44.3.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 224
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_98
.LBB0_97:                               # %if.else57.3.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 224
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_98:                               # %for.inc72.3.1
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_100
# %bb.99:                               # %for.inc72.3.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_101
.LBB0_100:                              # %if.then44.4.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 228
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_102
.LBB0_101:                              # %if.else57.4.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 228
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_102:                              # %for.inc72.4.1
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_104
# %bb.103:                              # %for.inc72.4.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_105
.LBB0_104:                              # %if.then44.5.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 232
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_106
.LBB0_105:                              # %if.else57.5.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 232
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_106:                              # %for.inc72.5.1
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_108
# %bb.107:                              # %for.inc72.5.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_109
.LBB0_108:                              # %if.then44.6.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 236
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_110
.LBB0_109:                              # %if.else57.6.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 236
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_110:                              # %for.inc72.6.1
	addi.d	$a2, $a0, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_112
# %bb.111:                              # %for.inc72.6.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_113
.LBB0_112:                              # %if.then44.7.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 240
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_114
.LBB0_113:                              # %if.else57.7.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 240
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_114:                              # %for.inc72.7.1
	addi.d	$a2, $a0, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_116
# %bb.115:                              # %for.inc72.7.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_117
.LBB0_116:                              # %if.then44.8.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 244
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $s1, $a0
	b	.LBB0_118
.LBB0_117:                              # %if.else57.8.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s2, 244
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	pcalau12i	$a2, %pc_hi20(INIT_B8_TYPE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_B8_TYPE_P)
	add.d	$a0, $a2, $a0
.LBB0_118:                              # %for.inc72.8.1
	addi.d	$a2, $a0, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$s0, $s2, 248
	ori	$s4, $zero, 1
	pcalau12i	$a1, %pc_hi20(INIT_MV_RES_I)
	addi.d	$s3, $a1, %pc_lo12(INIT_MV_RES_I)
	pcalau12i	$a1, %pc_hi20(INIT_MV_RES_P)
	addi.d	$s5, $a1, %pc_lo12(INIT_MV_RES_P)
	ori	$s6, $zero, 2
	ori	$s7, $zero, 4
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_119:                              # %if.then89.9
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 36
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
.LBB0_120:                              # %for.inc117.9
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	andi	$a1, $s4, 1
	ori	$a0, $zero, 1
	move	$s4, $zero
	beqz	$a1, .LBB0_160
.LBB0_121:                              # %for.cond81.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 44
	slli.d	$a2, $a0, 6
	alsl.d	$a2, $a0, $a2, 4
	add.d	$s8, $s3, $a2
	add.d	$s2, $s5, $a2
	beq	$a1, $s6, .LBB0_123
# %bb.122:                              # %for.cond81.preheader
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a1, $s7, .LBB0_124
.LBB0_123:                              # %if.then89
                                        #   in Loop: Header=BB0_121 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	alsl.d	$a1, $a1, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a2, $s8, $a1
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_124:                              # %if.else102
                                        #   in Loop: Header=BB0_121 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	alsl.d	$a1, $a1, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a2, $s2, $a1
.LBB0_125:                              # %for.inc117
                                        #   in Loop: Header=BB0_121 Depth=1
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s1, $s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_127
# %bb.126:                              # %for.inc117
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_128
.LBB0_127:                              # %if.then89.1
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_129
	.p2align	4, , 16
.LBB0_128:                              # %if.else102.1
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_129:                              # %for.inc117.1
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_131
# %bb.130:                              # %for.inc117.1
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_132
.LBB0_131:                              # %if.then89.2
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_133
	.p2align	4, , 16
.LBB0_132:                              # %if.else102.2
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_133:                              # %for.inc117.2
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_135
# %bb.134:                              # %for.inc117.2
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_136
.LBB0_135:                              # %if.then89.3
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_136:                              # %if.else102.3
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_137:                              # %for.inc117.3
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_139
# %bb.138:                              # %for.inc117.3
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_140
.LBB0_139:                              # %if.then89.4
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_141
	.p2align	4, , 16
.LBB0_140:                              # %if.else102.4
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_141:                              # %for.inc117.4
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_143
# %bb.142:                              # %for.inc117.4
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_144
.LBB0_143:                              # %if.then89.5
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 20
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_144:                              # %if.else102.5
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 20
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_145:                              # %for.inc117.5
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_147
# %bb.146:                              # %for.inc117.5
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_148
.LBB0_147:                              # %if.then89.6
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_149
	.p2align	4, , 16
.LBB0_148:                              # %if.else102.6
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 24
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_149:                              # %for.inc117.6
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_151
# %bb.150:                              # %for.inc117.6
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_152
.LBB0_151:                              # %if.then89.7
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 28
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_152:                              # %if.else102.7
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 28
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_153:                              # %for.inc117.7
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_155
# %bb.154:                              # %for.inc117.7
                                        #   in Loop: Header=BB0_121 Depth=1
	bne	$a0, $s6, .LBB0_156
.LBB0_155:                              # %if.then89.8
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 32
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s8, $a0
	b	.LBB0_157
	.p2align	4, , 16
.LBB0_156:                              # %if.else102.8
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 32
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
.LBB0_157:                              # %for.inc117.8
                                        #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s7, .LBB0_119
# %bb.158:                              # %for.inc117.8
                                        #   in Loop: Header=BB0_121 Depth=1
	beq	$a0, $s6, .LBB0_119
# %bb.159:                              # %if.else102.9
                                        #   in Loop: Header=BB0_121 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 36
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_120
.LBB0_160:                              # %for.cond123.preheader
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $s4, 328
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 2
	pcalau12i	$a3, %pc_hi20(INIT_REF_NO_P)
	addi.d	$s0, $a3, %pc_lo12(INIT_REF_NO_P)
	pcalau12i	$a3, %pc_hi20(INIT_REF_NO_I)
	addi.d	$s2, $a3, %pc_lo12(INIT_REF_NO_I)
	beq	$a0, $a2, .LBB0_162
# %bb.161:                              # %for.cond123.preheader
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_163
.LBB0_162:                              # %if.then134
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $s2, $a0
	b	.LBB0_164
.LBB0_163:                              # %if.else147
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
.LBB0_164:                              # %for.inc162
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_166
# %bb.165:                              # %for.inc162
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_167
.LBB0_166:                              # %if.then134.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 332
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_168
.LBB0_167:                              # %if.else147.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 332
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_168:                              # %for.inc162.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_170
# %bb.169:                              # %for.inc162.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_171
.LBB0_170:                              # %if.then134.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 336
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_172
.LBB0_171:                              # %if.else147.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 336
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_172:                              # %for.inc162.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_174
# %bb.173:                              # %for.inc162.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_175
.LBB0_174:                              # %if.then134.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 340
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_176
.LBB0_175:                              # %if.else147.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 340
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_176:                              # %for.inc162.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_178
# %bb.177:                              # %for.inc162.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_179
.LBB0_178:                              # %if.then134.4
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 344
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_180
.LBB0_179:                              # %if.else147.4
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 344
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_180:                              # %for.inc162.4
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_182
# %bb.181:                              # %for.inc162.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_183
.LBB0_182:                              # %if.then134.5
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 348
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_184
.LBB0_183:                              # %if.else147.5
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 348
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_184:                              # %for.inc162.5
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s4, 352
	beq	$a0, $a2, .LBB0_186
# %bb.185:                              # %for.inc162.5
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_187
.LBB0_186:                              # %if.then134.1416
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_188
.LBB0_187:                              # %if.else147.1419
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_188:                              # %for.inc162.1420
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	addi.w	$s1, $zero, -3
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	addi.d	$s3, $s0, 48
	masknez	$a1, $s3, $a0
	addi.d	$s0, $s2, 48
	maskeqz	$a0, $s0, $a0
	ldptr.w	$a2, $fp, 5868
	or	$a0, $a0, $a1
	addi.d	$a1, $s4, 356
	ori	$s2, $zero, 96
	mul.d	$a2, $a2, $s2
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s4, 360
	mul.d	$a2, $a2, $s2
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s4, 364
	mul.d	$a2, $a2, $s2
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s4, 368
	mul.d	$a2, $a2, $s2
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s4, 372
	mul.d	$a2, $a2, $s2
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s4, 376
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_DELTA_QP_I)
	addi.d	$s0, $a3, %pc_lo12(INIT_DELTA_QP_I)
	beq	$a0, $a2, .LBB0_190
# %bb.189:                              # %for.inc162.1420
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_191
.LBB0_190:                              # %if.then176
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
	b	.LBB0_192
.LBB0_191:                              # %if.else186
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_DELTA_QP_P)
	add.d	$a2, $a2, $a0
.LBB0_192:                              # %for.inc198
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_194
# %bb.193:                              # %for.inc198
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_195
.LBB0_194:                              # %if.then176.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 380
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_196
.LBB0_195:                              # %if.else186.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 380
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_DELTA_QP_P)
	add.d	$a0, $a2, $a0
.LBB0_196:                              # %for.inc198.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_198
# %bb.197:                              # %for.inc198.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_199
.LBB0_198:                              # %if.then176.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 384
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_200
.LBB0_199:                              # %if.else186.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 384
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_DELTA_QP_P)
	add.d	$a0, $a2, $a0
.LBB0_200:                              # %for.inc198.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_202
# %bb.201:                              # %for.inc198.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_203
.LBB0_202:                              # %if.then176.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 388
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_204
.LBB0_203:                              # %if.else186.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 388
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_DELTA_QP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_DELTA_QP_P)
	add.d	$a0, $a2, $a0
.LBB0_204:                              # %for.inc198.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s4, 392
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_MB_AFF_I)
	addi.d	$s0, $a3, %pc_lo12(INIT_MB_AFF_I)
	beq	$a0, $a2, .LBB0_206
# %bb.205:                              # %for.inc198.3
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_207
.LBB0_206:                              # %if.then209
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
	b	.LBB0_208
.LBB0_207:                              # %if.else219
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_MB_AFF_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_AFF_P)
	add.d	$a2, $a2, $a0
.LBB0_208:                              # %for.inc231
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_210
# %bb.209:                              # %for.inc231
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_211
.LBB0_210:                              # %if.then209.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 396
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_212
.LBB0_211:                              # %if.else219.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 396
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_MB_AFF_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_AFF_P)
	add.d	$a0, $a2, $a0
.LBB0_212:                              # %for.inc231.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_214
# %bb.213:                              # %for.inc231.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_215
.LBB0_214:                              # %if.then209.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 400
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_216
.LBB0_215:                              # %if.else219.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 400
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_MB_AFF_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_AFF_P)
	add.d	$a0, $a2, $a0
.LBB0_216:                              # %for.inc231.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_218
# %bb.217:                              # %for.inc231.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_219
.LBB0_218:                              # %if.then209.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 404
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_220
.LBB0_219:                              # %if.else219.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 404
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_MB_AFF_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MB_AFF_P)
	add.d	$a0, $a2, $a0
.LBB0_220:                              # %for.inc231.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s4, 408
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_TRANSFORM_SIZE_I)
	addi.d	$s0, $a3, %pc_lo12(INIT_TRANSFORM_SIZE_I)
	beq	$a0, $a2, .LBB0_222
# %bb.221:                              # %for.inc231.3
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_223
.LBB0_222:                              # %if.then242
	ld.w	$a0, $s8, 0
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a2, $s0, $a0
	b	.LBB0_224
.LBB0_223:                              # %if.else252
	ld.w	$a0, $s8, 0
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(INIT_TRANSFORM_SIZE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_TRANSFORM_SIZE_P)
	add.d	$a2, $a2, $a0
.LBB0_224:                              # %for.inc264
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_226
# %bb.225:                              # %for.inc264
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_227
.LBB0_226:                              # %if.then242.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 412
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s0, $a0
	b	.LBB0_228
.LBB0_227:                              # %if.else252.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 412
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(INIT_TRANSFORM_SIZE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_TRANSFORM_SIZE_P)
	add.d	$a0, $a2, $a0
.LBB0_228:                              # %for.inc264.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_230
# %bb.229:                              # %for.inc264.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_231
.LBB0_230:                              # %if.then242.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 416
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $s0, $a0
	b	.LBB0_232
.LBB0_231:                              # %if.else252.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s4, 416
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(INIT_TRANSFORM_SIZE_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_TRANSFORM_SIZE_P)
	add.d	$a0, $a2, $a0
.LBB0_232:                              # %for.inc264.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	pcalau12i	$a2, %pc_hi20(INIT_IPR_I)
	addi.d	$s0, $a2, %pc_lo12(INIT_IPR_I)
	beq	$a0, $a1, .LBB0_234
# %bb.233:                              # %for.inc264.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_235
.LBB0_234:                              # %if.then275
	ld.w	$a0, $s8, 0
	alsl.d	$a2, $a0, $s0, 4
	b	.LBB0_236
.LBB0_235:                              # %if.else285
	ld.w	$a0, $s8, 0
	pcalau12i	$a1, %pc_hi20(INIT_IPR_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_IPR_P)
	alsl.d	$a2, $a0, $a1, 4
.LBB0_236:                              # %for.inc297
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_238
# %bb.237:                              # %for.inc297
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_239
.LBB0_238:                              # %if.then275.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 4
	alsl.d	$a0, $a0, $s0, 4
	b	.LBB0_240
.LBB0_239:                              # %if.else285.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 4
	pcalau12i	$a2, %pc_hi20(INIT_IPR_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_IPR_P)
	alsl.d	$a0, $a0, $a2, 4
.LBB0_240:                              # %for.inc297.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s6, 8
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_CIPR_I)
	addi.d	$s0, $a3, %pc_lo12(INIT_CIPR_I)
	beq	$a0, $a2, .LBB0_242
# %bb.241:                              # %for.inc297.1
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_243
.LBB0_242:                              # %if.then308
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
	b	.LBB0_244
.LBB0_243:                              # %if.else318
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_CIPR_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_CIPR_P)
	add.d	$a2, $a2, $a0
.LBB0_244:                              # %for.inc330
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_246
# %bb.245:                              # %for.inc330
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_247
.LBB0_246:                              # %if.then308.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 12
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_248
.LBB0_247:                              # %if.else318.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 12
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_CIPR_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_CIPR_P)
	add.d	$a0, $a2, $a0
.LBB0_248:                              # %for.inc330.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_250
# %bb.249:                              # %for.inc330.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_251
.LBB0_250:                              # %if.then308.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 16
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_252
.LBB0_251:                              # %if.else318.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 16
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_CIPR_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_CIPR_P)
	add.d	$a0, $a2, $a0
.LBB0_252:                              # %for.inc330.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_254
# %bb.253:                              # %for.inc330.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_255
.LBB0_254:                              # %if.then308.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 20
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
	b	.LBB0_256
.LBB0_255:                              # %if.else318.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 20
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(INIT_CIPR_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_CIPR_P)
	add.d	$a0, $a2, $a0
.LBB0_256:                              # %for.inc330.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s6, 24
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_CBP_P)
	addi.d	$s0, $a3, %pc_lo12(INIT_CBP_P)
	pcalau12i	$a3, %pc_hi20(INIT_CBP_I)
	addi.d	$s2, $a3, %pc_lo12(INIT_CBP_I)
	beq	$a0, $a2, .LBB0_258
# %bb.257:                              # %for.inc330.3
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_259
.LBB0_258:                              # %if.then344
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $s2, $a0
	b	.LBB0_260
.LBB0_259:                              # %if.else357
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
.LBB0_260:                              # %for.inc372
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_262
# %bb.261:                              # %for.inc372
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_263
.LBB0_262:                              # %if.then344.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 28
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_264
.LBB0_263:                              # %if.else357.1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 28
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_264:                              # %for.inc372.1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_266
# %bb.265:                              # %for.inc372.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_267
.LBB0_266:                              # %if.then344.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 32
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_268
.LBB0_267:                              # %if.else357.2
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 32
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_268:                              # %for.inc372.2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_270
# %bb.269:                              # %for.inc372.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_271
.LBB0_270:                              # %if.then344.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 36
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_272
.LBB0_271:                              # %if.else357.3
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s6, 36
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_272:                              # %for.inc372.3
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s6, 40
	beq	$a0, $a2, .LBB0_274
# %bb.273:                              # %for.inc372.3
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_275
.LBB0_274:                              # %if.then344.1443
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_276
.LBB0_275:                              # %if.else357.1446
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_276:                              # %for.inc372.1447
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	addi.d	$s3, $s0, 32
	masknez	$a1, $s3, $a0
	addi.d	$s4, $s2, 32
	maskeqz	$a0, $s4, $a0
	ldptr.w	$a2, $fp, 5868
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 44
	ori	$s5, $zero, 96
	mul.d	$a2, $a2, $s5
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 48
	mul.d	$a2, $a2, $s5
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 52
	mul.d	$a2, $a2, $s5
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s6, 56
	beq	$a0, $a2, .LBB0_278
# %bb.277:                              # %for.inc372.1447
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_279
.LBB0_278:                              # %if.then344.2450
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s2, $a0
	b	.LBB0_280
.LBB0_279:                              # %if.else357.2453
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	add.d	$a0, $s0, $a0
.LBB0_280:                              # %for.inc372.2454
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	addi.d	$s0, $s0, 64
	masknez	$a1, $s0, $a0
	addi.d	$s2, $s2, 64
	maskeqz	$a0, $s2, $a0
	ldptr.w	$a2, $fp, 5868
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 60
	ori	$s3, $zero, 96
	mul.d	$a2, $a2, $s3
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 64
	mul.d	$a2, $a2, $s3
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.w	$a0, $a0, -2
	and	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ldptr.w	$a2, $fp, 5868
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $s6, 68
	mul.d	$a2, $a2, $s3
	add.d	$a0, $a0, $a2
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	move	$s2, $zero
	addi.d	$s1, $s6, 72
	pcalau12i	$a0, %pc_hi20(INIT_BCBP_I)
	addi.d	$s3, $a0, %pc_lo12(INIT_BCBP_I)
	ori	$s4, $zero, 2
	ori	$s5, $zero, 4
	ori	$s6, $zero, 256
	pcalau12i	$a0, %pc_hi20(INIT_BCBP_P)
	addi.d	$s7, $a0, %pc_lo12(INIT_BCBP_P)
	b	.LBB0_283
	.p2align	4, , 16
.LBB0_281:                              # %if.then389.3
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
.LBB0_282:                              # %for.inc417.3
                                        #   in Loop: Header=BB0_283 Depth=1
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 32
	addi.d	$s1, $s1, 16
	beq	$s0, $s6, .LBB0_298
.LBB0_283:                              # %for.cond381.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 44
	beq	$a0, $s4, .LBB0_285
# %bb.284:                              # %for.cond381.preheader
                                        #   in Loop: Header=BB0_283 Depth=1
	bne	$a0, $s5, .LBB0_286
.LBB0_285:                              # %if.then389
                                        #   in Loop: Header=BB0_283 Depth=1
	ld.w	$a0, $s8, 0
	slli.d	$a1, $s2, 5
	add.d	$a1, $s3, $a1
	slli.d	$a0, $a0, 8
	add.d	$a2, $a1, $a0
	b	.LBB0_287
	.p2align	4, , 16
.LBB0_286:                              # %if.else402
                                        #   in Loop: Header=BB0_283 Depth=1
	ld.w	$a0, $s8, 0
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a2, $s7, $a0
.LBB0_287:                              # %for.inc417
                                        #   in Loop: Header=BB0_283 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_289
# %bb.288:                              # %for.inc417
                                        #   in Loop: Header=BB0_283 Depth=1
	bne	$a0, $s4, .LBB0_290
.LBB0_289:                              # %if.then389.1
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_291
	.p2align	4, , 16
.LBB0_290:                              # %if.else402.1
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_291:                              # %for.inc417.1
                                        #   in Loop: Header=BB0_283 Depth=1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_293
# %bb.292:                              # %for.inc417.1
                                        #   in Loop: Header=BB0_283 Depth=1
	bne	$a0, $s4, .LBB0_294
.LBB0_293:                              # %if.then389.2
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_295
	.p2align	4, , 16
.LBB0_294:                              # %if.else402.2
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_295:                              # %for.inc417.2
                                        #   in Loop: Header=BB0_283 Depth=1
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_281
# %bb.296:                              # %for.inc417.2
                                        #   in Loop: Header=BB0_283 Depth=1
	beq	$a0, $s4, .LBB0_281
# %bb.297:                              # %if.else402.3
                                        #   in Loop: Header=BB0_283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	slli.d	$a0, $a0, 8
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_282
.LBB0_298:                              # %for.cond423.preheader
	ld.w	$a0, $fp, 44
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $s3, 232
	ori	$a2, $zero, 2
	pcalau12i	$a3, %pc_hi20(INIT_MAP_I)
	addi.d	$s1, $a3, %pc_lo12(INIT_MAP_I)
	beq	$a0, $a2, .LBB0_300
# %bb.299:                              # %for.cond423.preheader
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_301
.LBB0_300:                              # %if.then434
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a0
	b	.LBB0_302
.LBB0_301:                              # %if.else447
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a2, $a2, $a0
.LBB0_302:                              # %for.inc462
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_304
# %bb.303:                              # %for.inc462
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_305
.LBB0_304:                              # %if.then434.1537
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_306
.LBB0_305:                              # %if.else447.1540
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_306:                              # %for.inc462.1542
	addi.d	$a1, $s3, 236
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_308
# %bb.307:                              # %for.inc462.1542
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_309
.LBB0_308:                              # %if.then434.2547
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_310
.LBB0_309:                              # %if.else447.2550
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_310:                              # %for.inc462.2552
	addi.d	$a1, $s3, 240
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_312
# %bb.311:                              # %for.inc462.2552
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_313
.LBB0_312:                              # %if.then434.3557
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_314
.LBB0_313:                              # %if.else447.3560
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_314:                              # %for.inc462.3562
	addi.d	$a1, $s3, 244
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_316
# %bb.315:                              # %for.inc462.3562
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_317
.LBB0_316:                              # %if.then434.4567
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_318
.LBB0_317:                              # %if.else447.4570
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_318:                              # %for.inc462.4572
	addi.d	$a1, $s3, 248
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_320
# %bb.319:                              # %for.inc462.4572
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_321
.LBB0_320:                              # %if.then434.5577
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_322
.LBB0_321:                              # %if.else447.5580
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_322:                              # %for.inc462.5582
	addi.d	$a1, $s3, 252
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_324
# %bb.323:                              # %for.inc462.5582
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_325
.LBB0_324:                              # %if.then434.6587
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_326
.LBB0_325:                              # %if.else447.6590
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_326:                              # %for.inc462.6592
	addi.d	$a1, $s3, 256
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_328
# %bb.327:                              # %for.inc462.6592
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_329
.LBB0_328:                              # %if.then434.7597
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_330
.LBB0_329:                              # %if.else447.7600
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_330:                              # %for.inc462.7602
	addi.d	$a1, $s3, 260
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_332
# %bb.331:                              # %for.inc462.7602
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_333
.LBB0_332:                              # %if.then434.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_334
.LBB0_333:                              # %if.else447.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_334:                              # %for.inc462.8
	addi.d	$a1, $s3, 264
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_336
# %bb.335:                              # %for.inc462.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_337
.LBB0_336:                              # %if.then434.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_338
.LBB0_337:                              # %if.else447.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_338:                              # %for.inc462.9
	addi.d	$a1, $s3, 268
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_340
# %bb.339:                              # %for.inc462.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_341
.LBB0_340:                              # %if.then434.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_342
.LBB0_341:                              # %if.else447.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_342:                              # %for.inc462.10
	addi.d	$a1, $s3, 272
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_344
# %bb.343:                              # %for.inc462.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_345
.LBB0_344:                              # %if.then434.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_346
.LBB0_345:                              # %if.else447.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_346:                              # %for.inc462.11
	addi.d	$a1, $s3, 276
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_348
# %bb.347:                              # %for.inc462.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_349
.LBB0_348:                              # %if.then434.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_350
.LBB0_349:                              # %if.else447.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_350:                              # %for.inc462.12
	addi.d	$a1, $s3, 280
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_352
# %bb.351:                              # %for.inc462.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_353
.LBB0_352:                              # %if.then434.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_354
.LBB0_353:                              # %if.else447.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_354:                              # %for.inc462.13
	addi.d	$a1, $s3, 284
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_356
# %bb.355:                              # %for.inc462.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_357
.LBB0_356:                              # %if.then434.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_358
.LBB0_357:                              # %if.else447.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_358:                              # %for.inc462.14
	addi.d	$a1, $s3, 288
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 292
	beq	$a0, $a2, .LBB0_360
# %bb.359:                              # %for.inc462.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_361
.LBB0_360:                              # %if.then434.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_362
.LBB0_361:                              # %if.else447.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_362:                              # %for.inc462.1
	addi.d	$a2, $a0, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_364
# %bb.363:                              # %for.inc462.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_365
.LBB0_364:                              # %if.then434.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_366
.LBB0_365:                              # %if.else447.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_366:                              # %for.inc462.1.1
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 296
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_368
# %bb.367:                              # %for.inc462.1.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_369
.LBB0_368:                              # %if.then434.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_370
.LBB0_369:                              # %if.else447.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_370:                              # %for.inc462.1.2
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 300
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_372
# %bb.371:                              # %for.inc462.1.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_373
.LBB0_372:                              # %if.then434.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_374
.LBB0_373:                              # %if.else447.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_374:                              # %for.inc462.1.3
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 304
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_376
# %bb.375:                              # %for.inc462.1.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_377
.LBB0_376:                              # %if.then434.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_378
.LBB0_377:                              # %if.else447.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_378:                              # %for.inc462.1.4
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 308
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_380
# %bb.379:                              # %for.inc462.1.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_381
.LBB0_380:                              # %if.then434.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_382
.LBB0_381:                              # %if.else447.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_382:                              # %for.inc462.1.5
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 312
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_384
# %bb.383:                              # %for.inc462.1.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_385
.LBB0_384:                              # %if.then434.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_386
.LBB0_385:                              # %if.else447.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_386:                              # %for.inc462.1.6
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 316
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_388
# %bb.387:                              # %for.inc462.1.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_389
.LBB0_388:                              # %if.then434.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_390
.LBB0_389:                              # %if.else447.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_390:                              # %for.inc462.1.7
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 320
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_392
# %bb.391:                              # %for.inc462.1.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_393
.LBB0_392:                              # %if.then434.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_394
.LBB0_393:                              # %if.else447.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_394:                              # %for.inc462.1.8
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 324
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_396
# %bb.395:                              # %for.inc462.1.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_397
.LBB0_396:                              # %if.then434.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_398
.LBB0_397:                              # %if.else447.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_398:                              # %for.inc462.1.9
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 328
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_400
# %bb.399:                              # %for.inc462.1.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_401
.LBB0_400:                              # %if.then434.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_402
.LBB0_401:                              # %if.else447.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_402:                              # %for.inc462.1.10
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 332
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_404
# %bb.403:                              # %for.inc462.1.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_405
.LBB0_404:                              # %if.then434.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_406
.LBB0_405:                              # %if.else447.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_406:                              # %for.inc462.1.11
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 336
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_408
# %bb.407:                              # %for.inc462.1.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_409
.LBB0_408:                              # %if.then434.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_410
.LBB0_409:                              # %if.else447.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_410:                              # %for.inc462.1.12
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 340
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_412
# %bb.411:                              # %for.inc462.1.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_413
.LBB0_412:                              # %if.then434.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_414
.LBB0_413:                              # %if.else447.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_414:                              # %for.inc462.1.13
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 344
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_416
# %bb.415:                              # %for.inc462.1.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_417
.LBB0_416:                              # %if.then434.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_418
.LBB0_417:                              # %if.else447.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_418:                              # %for.inc462.1.14
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 348
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 352
	beq	$a0, $a2, .LBB0_420
# %bb.419:                              # %for.inc462.1.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_421
.LBB0_420:                              # %if.then434.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_422
.LBB0_421:                              # %if.else447.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_422:                              # %for.inc462.2
	addi.d	$a2, $a0, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_424
# %bb.423:                              # %for.inc462.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_425
.LBB0_424:                              # %if.then434.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_426
.LBB0_425:                              # %if.else447.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_426:                              # %for.inc462.2.1
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 356
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_428
# %bb.427:                              # %for.inc462.2.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_429
.LBB0_428:                              # %if.then434.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_430
.LBB0_429:                              # %if.else447.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_430:                              # %for.inc462.2.2
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 360
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_432
# %bb.431:                              # %for.inc462.2.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_433
.LBB0_432:                              # %if.then434.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_434
.LBB0_433:                              # %if.else447.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_434:                              # %for.inc462.2.3
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 364
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_436
# %bb.435:                              # %for.inc462.2.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_437
.LBB0_436:                              # %if.then434.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_438
.LBB0_437:                              # %if.else447.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_438:                              # %for.inc462.2.4
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 368
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_440
# %bb.439:                              # %for.inc462.2.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_441
.LBB0_440:                              # %if.then434.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_442
.LBB0_441:                              # %if.else447.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_442:                              # %for.inc462.2.5
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 372
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_444
# %bb.443:                              # %for.inc462.2.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_445
.LBB0_444:                              # %if.then434.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_446
.LBB0_445:                              # %if.else447.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_446:                              # %for.inc462.2.6
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 376
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_448
# %bb.447:                              # %for.inc462.2.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_449
.LBB0_448:                              # %if.then434.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_450
.LBB0_449:                              # %if.else447.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_450:                              # %for.inc462.2.7
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 380
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_452
# %bb.451:                              # %for.inc462.2.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_453
.LBB0_452:                              # %if.then434.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_454
.LBB0_453:                              # %if.else447.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_454:                              # %for.inc462.2.8
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 384
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_456
# %bb.455:                              # %for.inc462.2.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_457
.LBB0_456:                              # %if.then434.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_458
.LBB0_457:                              # %if.else447.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_458:                              # %for.inc462.2.9
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 388
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_460
# %bb.459:                              # %for.inc462.2.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_461
.LBB0_460:                              # %if.then434.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_462
.LBB0_461:                              # %if.else447.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_462:                              # %for.inc462.2.10
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 392
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_464
# %bb.463:                              # %for.inc462.2.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_465
.LBB0_464:                              # %if.then434.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_466
.LBB0_465:                              # %if.else447.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_466:                              # %for.inc462.2.11
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 396
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_468
# %bb.467:                              # %for.inc462.2.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_469
.LBB0_468:                              # %if.then434.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_470
.LBB0_469:                              # %if.else447.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_470:                              # %for.inc462.2.12
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 400
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_472
# %bb.471:                              # %for.inc462.2.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_473
.LBB0_472:                              # %if.then434.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_474
.LBB0_473:                              # %if.else447.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_474:                              # %for.inc462.2.13
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 404
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_476
# %bb.475:                              # %for.inc462.2.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_477
.LBB0_476:                              # %if.then434.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_478
.LBB0_477:                              # %if.else447.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_478:                              # %for.inc462.2.14
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 408
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 412
	beq	$a0, $a2, .LBB0_480
# %bb.479:                              # %for.inc462.2.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_481
.LBB0_480:                              # %if.then434.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_482
.LBB0_481:                              # %if.else447.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_482:                              # %for.inc462.3
	addi.d	$a2, $a0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_484
# %bb.483:                              # %for.inc462.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_485
.LBB0_484:                              # %if.then434.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_486
.LBB0_485:                              # %if.else447.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_486:                              # %for.inc462.3.1
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 416
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_488
# %bb.487:                              # %for.inc462.3.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_489
.LBB0_488:                              # %if.then434.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_490
.LBB0_489:                              # %if.else447.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_490:                              # %for.inc462.3.2
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 420
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_492
# %bb.491:                              # %for.inc462.3.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_493
.LBB0_492:                              # %if.then434.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_494
.LBB0_493:                              # %if.else447.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_494:                              # %for.inc462.3.3
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 424
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_496
# %bb.495:                              # %for.inc462.3.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_497
.LBB0_496:                              # %if.then434.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_498
.LBB0_497:                              # %if.else447.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_498:                              # %for.inc462.3.4
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 428
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_500
# %bb.499:                              # %for.inc462.3.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_501
.LBB0_500:                              # %if.then434.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_502
.LBB0_501:                              # %if.else447.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_502:                              # %for.inc462.3.5
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 432
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_504
# %bb.503:                              # %for.inc462.3.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_505
.LBB0_504:                              # %if.then434.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_506
.LBB0_505:                              # %if.else447.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_506:                              # %for.inc462.3.6
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 436
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_508
# %bb.507:                              # %for.inc462.3.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_509
.LBB0_508:                              # %if.then434.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_510
.LBB0_509:                              # %if.else447.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_510:                              # %for.inc462.3.7
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 440
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_512
# %bb.511:                              # %for.inc462.3.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_513
.LBB0_512:                              # %if.then434.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_514
.LBB0_513:                              # %if.else447.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_514:                              # %for.inc462.3.8
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 444
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_516
# %bb.515:                              # %for.inc462.3.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_517
.LBB0_516:                              # %if.then434.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_518
.LBB0_517:                              # %if.else447.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_518:                              # %for.inc462.3.9
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 448
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_520
# %bb.519:                              # %for.inc462.3.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_521
.LBB0_520:                              # %if.then434.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_522
.LBB0_521:                              # %if.else447.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_522:                              # %for.inc462.3.10
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 452
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_524
# %bb.523:                              # %for.inc462.3.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_525
.LBB0_524:                              # %if.then434.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_526
.LBB0_525:                              # %if.else447.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_526:                              # %for.inc462.3.11
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 456
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_528
# %bb.527:                              # %for.inc462.3.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_529
.LBB0_528:                              # %if.then434.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_530
.LBB0_529:                              # %if.else447.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_530:                              # %for.inc462.3.12
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 460
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_532
# %bb.531:                              # %for.inc462.3.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_533
.LBB0_532:                              # %if.then434.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_534
.LBB0_533:                              # %if.else447.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_534:                              # %for.inc462.3.13
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 464
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_536
# %bb.535:                              # %for.inc462.3.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_537
.LBB0_536:                              # %if.then434.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_538
.LBB0_537:                              # %if.else447.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_538:                              # %for.inc462.3.14
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 468
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 472
	beq	$a0, $a2, .LBB0_540
# %bb.539:                              # %for.inc462.3.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_541
.LBB0_540:                              # %if.then434.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_542
.LBB0_541:                              # %if.else447.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_542:                              # %for.inc462.4
	addi.d	$a2, $a0, 480
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_544
# %bb.543:                              # %for.inc462.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_545
.LBB0_544:                              # %if.then434.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_546
.LBB0_545:                              # %if.else447.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_546:                              # %for.inc462.4.1
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 476
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_548
# %bb.547:                              # %for.inc462.4.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_549
.LBB0_548:                              # %if.then434.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_550
.LBB0_549:                              # %if.else447.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_550:                              # %for.inc462.4.2
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 480
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_552
# %bb.551:                              # %for.inc462.4.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_553
.LBB0_552:                              # %if.then434.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_554
.LBB0_553:                              # %if.else447.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_554:                              # %for.inc462.4.3
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 484
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_556
# %bb.555:                              # %for.inc462.4.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_557
.LBB0_556:                              # %if.then434.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_558
.LBB0_557:                              # %if.else447.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_558:                              # %for.inc462.4.4
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 488
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_560
# %bb.559:                              # %for.inc462.4.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_561
.LBB0_560:                              # %if.then434.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_562
.LBB0_561:                              # %if.else447.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_562:                              # %for.inc462.4.5
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 492
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_564
# %bb.563:                              # %for.inc462.4.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_565
.LBB0_564:                              # %if.then434.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_566
.LBB0_565:                              # %if.else447.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_566:                              # %for.inc462.4.6
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 496
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_568
# %bb.567:                              # %for.inc462.4.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_569
.LBB0_568:                              # %if.then434.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_570
.LBB0_569:                              # %if.else447.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_570:                              # %for.inc462.4.7
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 500
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_572
# %bb.571:                              # %for.inc462.4.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_573
.LBB0_572:                              # %if.then434.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_574
.LBB0_573:                              # %if.else447.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_574:                              # %for.inc462.4.8
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 504
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_576
# %bb.575:                              # %for.inc462.4.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_577
.LBB0_576:                              # %if.then434.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_578
.LBB0_577:                              # %if.else447.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_578:                              # %for.inc462.4.9
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 508
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_580
# %bb.579:                              # %for.inc462.4.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_581
.LBB0_580:                              # %if.then434.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_582
.LBB0_581:                              # %if.else447.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_582:                              # %for.inc462.4.10
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 512
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_584
# %bb.583:                              # %for.inc462.4.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_585
.LBB0_584:                              # %if.then434.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_586
.LBB0_585:                              # %if.else447.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_586:                              # %for.inc462.4.11
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 516
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_588
# %bb.587:                              # %for.inc462.4.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_589
.LBB0_588:                              # %if.then434.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_590
.LBB0_589:                              # %if.else447.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_590:                              # %for.inc462.4.12
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 520
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_592
# %bb.591:                              # %for.inc462.4.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_593
.LBB0_592:                              # %if.then434.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_594
.LBB0_593:                              # %if.else447.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_594:                              # %for.inc462.4.13
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 524
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_596
# %bb.595:                              # %for.inc462.4.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_597
.LBB0_596:                              # %if.then434.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_598
.LBB0_597:                              # %if.else447.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_598:                              # %for.inc462.4.14
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 528
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 532
	beq	$a0, $a2, .LBB0_600
# %bb.599:                              # %for.inc462.4.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_601
.LBB0_600:                              # %if.then434.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_602
.LBB0_601:                              # %if.else447.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_602:                              # %for.inc462.5
	addi.d	$a2, $a0, 600
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_604
# %bb.603:                              # %for.inc462.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_605
.LBB0_604:                              # %if.then434.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_606
.LBB0_605:                              # %if.else447.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_606:                              # %for.inc462.5.1
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 536
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_608
# %bb.607:                              # %for.inc462.5.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_609
.LBB0_608:                              # %if.then434.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_610
.LBB0_609:                              # %if.else447.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_610:                              # %for.inc462.5.2
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 540
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_612
# %bb.611:                              # %for.inc462.5.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_613
.LBB0_612:                              # %if.then434.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_614
.LBB0_613:                              # %if.else447.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_614:                              # %for.inc462.5.3
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 544
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_616
# %bb.615:                              # %for.inc462.5.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_617
.LBB0_616:                              # %if.then434.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_618
.LBB0_617:                              # %if.else447.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_618:                              # %for.inc462.5.4
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 548
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_620
# %bb.619:                              # %for.inc462.5.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_621
.LBB0_620:                              # %if.then434.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_622
.LBB0_621:                              # %if.else447.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_622:                              # %for.inc462.5.5
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 552
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_624
# %bb.623:                              # %for.inc462.5.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_625
.LBB0_624:                              # %if.then434.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_626
.LBB0_625:                              # %if.else447.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_626:                              # %for.inc462.5.6
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 556
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_628
# %bb.627:                              # %for.inc462.5.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_629
.LBB0_628:                              # %if.then434.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_630
.LBB0_629:                              # %if.else447.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_630:                              # %for.inc462.5.7
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 560
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_632
# %bb.631:                              # %for.inc462.5.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_633
.LBB0_632:                              # %if.then434.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_634
.LBB0_633:                              # %if.else447.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_634:                              # %for.inc462.5.8
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 564
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_636
# %bb.635:                              # %for.inc462.5.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_637
.LBB0_636:                              # %if.then434.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_638
.LBB0_637:                              # %if.else447.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_638:                              # %for.inc462.5.9
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 568
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_640
# %bb.639:                              # %for.inc462.5.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_641
.LBB0_640:                              # %if.then434.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_642
.LBB0_641:                              # %if.else447.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_642:                              # %for.inc462.5.10
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 572
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_644
# %bb.643:                              # %for.inc462.5.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_645
.LBB0_644:                              # %if.then434.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_646
.LBB0_645:                              # %if.else447.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_646:                              # %for.inc462.5.11
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 576
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_648
# %bb.647:                              # %for.inc462.5.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_649
.LBB0_648:                              # %if.then434.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_650
.LBB0_649:                              # %if.else447.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_650:                              # %for.inc462.5.12
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 580
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_652
# %bb.651:                              # %for.inc462.5.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_653
.LBB0_652:                              # %if.then434.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_654
.LBB0_653:                              # %if.else447.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_654:                              # %for.inc462.5.13
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 584
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_656
# %bb.655:                              # %for.inc462.5.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_657
.LBB0_656:                              # %if.then434.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_658
.LBB0_657:                              # %if.else447.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_658:                              # %for.inc462.5.14
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 588
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 592
	beq	$a0, $a2, .LBB0_660
# %bb.659:                              # %for.inc462.5.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_661
.LBB0_660:                              # %if.then434.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_662
.LBB0_661:                              # %if.else447.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_662:                              # %for.inc462.6
	addi.d	$a2, $a0, 720
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_664
# %bb.663:                              # %for.inc462.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_665
.LBB0_664:                              # %if.then434.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_666
.LBB0_665:                              # %if.else447.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_666:                              # %for.inc462.6.1
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 596
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_668
# %bb.667:                              # %for.inc462.6.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_669
.LBB0_668:                              # %if.then434.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_670
.LBB0_669:                              # %if.else447.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_670:                              # %for.inc462.6.2
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 600
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_672
# %bb.671:                              # %for.inc462.6.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_673
.LBB0_672:                              # %if.then434.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_674
.LBB0_673:                              # %if.else447.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_674:                              # %for.inc462.6.3
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 604
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_676
# %bb.675:                              # %for.inc462.6.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_677
.LBB0_676:                              # %if.then434.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_678
.LBB0_677:                              # %if.else447.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_678:                              # %for.inc462.6.4
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 608
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_680
# %bb.679:                              # %for.inc462.6.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_681
.LBB0_680:                              # %if.then434.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_682
.LBB0_681:                              # %if.else447.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_682:                              # %for.inc462.6.5
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 612
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_684
# %bb.683:                              # %for.inc462.6.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_685
.LBB0_684:                              # %if.then434.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_686
.LBB0_685:                              # %if.else447.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_686:                              # %for.inc462.6.6
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 616
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_688
# %bb.687:                              # %for.inc462.6.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_689
.LBB0_688:                              # %if.then434.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_690
.LBB0_689:                              # %if.else447.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_690:                              # %for.inc462.6.7
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 620
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_692
# %bb.691:                              # %for.inc462.6.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_693
.LBB0_692:                              # %if.then434.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_694
.LBB0_693:                              # %if.else447.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_694:                              # %for.inc462.6.8
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 624
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_696
# %bb.695:                              # %for.inc462.6.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_697
.LBB0_696:                              # %if.then434.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_698
.LBB0_697:                              # %if.else447.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_698:                              # %for.inc462.6.9
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 628
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_700
# %bb.699:                              # %for.inc462.6.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_701
.LBB0_700:                              # %if.then434.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_702
.LBB0_701:                              # %if.else447.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_702:                              # %for.inc462.6.10
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 632
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_704
# %bb.703:                              # %for.inc462.6.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_705
.LBB0_704:                              # %if.then434.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_706
.LBB0_705:                              # %if.else447.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_706:                              # %for.inc462.6.11
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 636
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_708
# %bb.707:                              # %for.inc462.6.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_709
.LBB0_708:                              # %if.then434.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_710
.LBB0_709:                              # %if.else447.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_710:                              # %for.inc462.6.12
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 640
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_712
# %bb.711:                              # %for.inc462.6.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_713
.LBB0_712:                              # %if.then434.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_714
.LBB0_713:                              # %if.else447.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_714:                              # %for.inc462.6.13
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 644
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_716
# %bb.715:                              # %for.inc462.6.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_717
.LBB0_716:                              # %if.then434.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_718
.LBB0_717:                              # %if.else447.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_718:                              # %for.inc462.6.14
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 648
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 652
	beq	$a0, $a2, .LBB0_720
# %bb.719:                              # %for.inc462.6.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_721
.LBB0_720:                              # %if.then434.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_722
.LBB0_721:                              # %if.else447.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_722:                              # %for.inc462.7
	addi.d	$a2, $a0, 840
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_724
# %bb.723:                              # %for.inc462.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_725
.LBB0_724:                              # %if.then434.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_726
.LBB0_725:                              # %if.else447.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_726:                              # %for.inc462.7.1
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 656
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_728
# %bb.727:                              # %for.inc462.7.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_729
.LBB0_728:                              # %if.then434.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_730
.LBB0_729:                              # %if.else447.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_730:                              # %for.inc462.7.2
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 660
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_732
# %bb.731:                              # %for.inc462.7.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_733
.LBB0_732:                              # %if.then434.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_734
.LBB0_733:                              # %if.else447.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_734:                              # %for.inc462.7.3
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 664
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_736
# %bb.735:                              # %for.inc462.7.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_737
.LBB0_736:                              # %if.then434.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_738
.LBB0_737:                              # %if.else447.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_738:                              # %for.inc462.7.4
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 668
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_740
# %bb.739:                              # %for.inc462.7.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_741
.LBB0_740:                              # %if.then434.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_742
.LBB0_741:                              # %if.else447.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_742:                              # %for.inc462.7.5
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 672
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_744
# %bb.743:                              # %for.inc462.7.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_745
.LBB0_744:                              # %if.then434.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_746
.LBB0_745:                              # %if.else447.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_746:                              # %for.inc462.7.6
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 676
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_748
# %bb.747:                              # %for.inc462.7.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_749
.LBB0_748:                              # %if.then434.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_750
.LBB0_749:                              # %if.else447.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_750:                              # %for.inc462.7.7
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 680
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_752
# %bb.751:                              # %for.inc462.7.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_753
.LBB0_752:                              # %if.then434.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_754
.LBB0_753:                              # %if.else447.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_754:                              # %for.inc462.7.8
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 684
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_756
# %bb.755:                              # %for.inc462.7.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_757
.LBB0_756:                              # %if.then434.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_758
.LBB0_757:                              # %if.else447.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_758:                              # %for.inc462.7.9
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 688
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_760
# %bb.759:                              # %for.inc462.7.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_761
.LBB0_760:                              # %if.then434.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_762
.LBB0_761:                              # %if.else447.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_762:                              # %for.inc462.7.10
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 692
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_764
# %bb.763:                              # %for.inc462.7.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_765
.LBB0_764:                              # %if.then434.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_766
.LBB0_765:                              # %if.else447.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_766:                              # %for.inc462.7.11
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 696
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_768
# %bb.767:                              # %for.inc462.7.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_769
.LBB0_768:                              # %if.then434.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_770
.LBB0_769:                              # %if.else447.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_770:                              # %for.inc462.7.12
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 700
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_772
# %bb.771:                              # %for.inc462.7.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_773
.LBB0_772:                              # %if.then434.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_774
.LBB0_773:                              # %if.else447.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_774:                              # %for.inc462.7.13
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 704
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_776
# %bb.775:                              # %for.inc462.7.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_777
.LBB0_776:                              # %if.then434.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_778
.LBB0_777:                              # %if.else447.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_778:                              # %for.inc462.7.14
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 708
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s3, 832
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_LAST_I)
	addi.d	$s1, $a3, %pc_lo12(INIT_LAST_I)
	beq	$a0, $a2, .LBB0_780
# %bb.779:                              # %for.inc462.7.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_781
.LBB0_780:                              # %if.then479
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a0
	b	.LBB0_782
.LBB0_781:                              # %if.else492
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a2, $a2, $a0
.LBB0_782:                              # %for.inc507
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_784
# %bb.783:                              # %for.inc507
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_785
.LBB0_784:                              # %if.then479.1607
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_786
.LBB0_785:                              # %if.else492.1610
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_786:                              # %for.inc507.1612
	addi.d	$a1, $s3, 836
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_788
# %bb.787:                              # %for.inc507.1612
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_789
.LBB0_788:                              # %if.then479.2617
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_790
.LBB0_789:                              # %if.else492.2620
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_790:                              # %for.inc507.2622
	addi.d	$a1, $s3, 840
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_792
# %bb.791:                              # %for.inc507.2622
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_793
.LBB0_792:                              # %if.then479.3627
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_794
.LBB0_793:                              # %if.else492.3630
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_794:                              # %for.inc507.3632
	addi.d	$a1, $s3, 844
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_796
# %bb.795:                              # %for.inc507.3632
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_797
.LBB0_796:                              # %if.then479.4637
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_798
.LBB0_797:                              # %if.else492.4640
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_798:                              # %for.inc507.4642
	addi.d	$a1, $s3, 848
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_800
# %bb.799:                              # %for.inc507.4642
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_801
.LBB0_800:                              # %if.then479.5647
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_802
.LBB0_801:                              # %if.else492.5650
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_802:                              # %for.inc507.5652
	addi.d	$a1, $s3, 852
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_804
# %bb.803:                              # %for.inc507.5652
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_805
.LBB0_804:                              # %if.then479.6657
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_806
.LBB0_805:                              # %if.else492.6660
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_806:                              # %for.inc507.6662
	addi.d	$a1, $s3, 856
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_808
# %bb.807:                              # %for.inc507.6662
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_809
.LBB0_808:                              # %if.then479.7667
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_810
.LBB0_809:                              # %if.else492.7670
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_810:                              # %for.inc507.7672
	addi.d	$a1, $s3, 860
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_812
# %bb.811:                              # %for.inc507.7672
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_813
.LBB0_812:                              # %if.then479.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_814
.LBB0_813:                              # %if.else492.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_814:                              # %for.inc507.8
	addi.d	$a1, $s3, 864
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_816
# %bb.815:                              # %for.inc507.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_817
.LBB0_816:                              # %if.then479.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_818
.LBB0_817:                              # %if.else492.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_818:                              # %for.inc507.9
	addi.d	$a1, $s3, 868
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_820
# %bb.819:                              # %for.inc507.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_821
.LBB0_820:                              # %if.then479.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_822
.LBB0_821:                              # %if.else492.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_822:                              # %for.inc507.10
	addi.d	$a1, $s3, 872
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_824
# %bb.823:                              # %for.inc507.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_825
.LBB0_824:                              # %if.then479.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_826
.LBB0_825:                              # %if.else492.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_826:                              # %for.inc507.11
	addi.d	$a1, $s3, 876
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_828
# %bb.827:                              # %for.inc507.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_829
.LBB0_828:                              # %if.then479.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_830
.LBB0_829:                              # %if.else492.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_830:                              # %for.inc507.12
	addi.d	$a1, $s3, 880
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_832
# %bb.831:                              # %for.inc507.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_833
.LBB0_832:                              # %if.then479.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_834
.LBB0_833:                              # %if.else492.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_834:                              # %for.inc507.13
	addi.d	$a1, $s3, 884
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_836
# %bb.835:                              # %for.inc507.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_837
.LBB0_836:                              # %if.then479.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_838
.LBB0_837:                              # %if.else492.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_838:                              # %for.inc507.14
	addi.d	$a1, $s3, 888
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 892
	beq	$a0, $a2, .LBB0_840
# %bb.839:                              # %for.inc507.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_841
.LBB0_840:                              # %if.then479.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_842
.LBB0_841:                              # %if.else492.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_842:                              # %for.inc507.1
	addi.d	$a2, $a0, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_844
# %bb.843:                              # %for.inc507.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_845
.LBB0_844:                              # %if.then479.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_846
.LBB0_845:                              # %if.else492.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_846:                              # %for.inc507.1.1
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 896
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_848
# %bb.847:                              # %for.inc507.1.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_849
.LBB0_848:                              # %if.then479.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_850
.LBB0_849:                              # %if.else492.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_850:                              # %for.inc507.1.2
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 900
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_852
# %bb.851:                              # %for.inc507.1.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_853
.LBB0_852:                              # %if.then479.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_854
.LBB0_853:                              # %if.else492.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_854:                              # %for.inc507.1.3
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 904
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_856
# %bb.855:                              # %for.inc507.1.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_857
.LBB0_856:                              # %if.then479.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_858
.LBB0_857:                              # %if.else492.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_858:                              # %for.inc507.1.4
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 908
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_860
# %bb.859:                              # %for.inc507.1.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_861
.LBB0_860:                              # %if.then479.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_862
.LBB0_861:                              # %if.else492.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_862:                              # %for.inc507.1.5
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 912
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_864
# %bb.863:                              # %for.inc507.1.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_865
.LBB0_864:                              # %if.then479.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_866
.LBB0_865:                              # %if.else492.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_866:                              # %for.inc507.1.6
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 916
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_868
# %bb.867:                              # %for.inc507.1.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_869
.LBB0_868:                              # %if.then479.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_870
.LBB0_869:                              # %if.else492.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_870:                              # %for.inc507.1.7
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 920
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_872
# %bb.871:                              # %for.inc507.1.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_873
.LBB0_872:                              # %if.then479.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_874
.LBB0_873:                              # %if.else492.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_874:                              # %for.inc507.1.8
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 924
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_876
# %bb.875:                              # %for.inc507.1.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_877
.LBB0_876:                              # %if.then479.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_878
.LBB0_877:                              # %if.else492.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_878:                              # %for.inc507.1.9
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 928
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_880
# %bb.879:                              # %for.inc507.1.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_881
.LBB0_880:                              # %if.then479.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_882
.LBB0_881:                              # %if.else492.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_882:                              # %for.inc507.1.10
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 932
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_884
# %bb.883:                              # %for.inc507.1.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_885
.LBB0_884:                              # %if.then479.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_886
.LBB0_885:                              # %if.else492.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_886:                              # %for.inc507.1.11
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 936
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_888
# %bb.887:                              # %for.inc507.1.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_889
.LBB0_888:                              # %if.then479.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_890
.LBB0_889:                              # %if.else492.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_890:                              # %for.inc507.1.12
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 940
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_892
# %bb.891:                              # %for.inc507.1.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_893
.LBB0_892:                              # %if.then479.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_894
.LBB0_893:                              # %if.else492.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_894:                              # %for.inc507.1.13
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 944
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_896
# %bb.895:                              # %for.inc507.1.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_897
.LBB0_896:                              # %if.then479.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_898
.LBB0_897:                              # %if.else492.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_898:                              # %for.inc507.1.14
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s3, 948
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 952
	beq	$a0, $a2, .LBB0_900
# %bb.899:                              # %for.inc507.1.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_901
.LBB0_900:                              # %if.then479.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_902
.LBB0_901:                              # %if.else492.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_902:                              # %for.inc507.2
	addi.d	$a2, $a0, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_904
# %bb.903:                              # %for.inc507.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_905
.LBB0_904:                              # %if.then479.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_906
.LBB0_905:                              # %if.else492.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_906:                              # %for.inc507.2.1
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 956
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_908
# %bb.907:                              # %for.inc507.2.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_909
.LBB0_908:                              # %if.then479.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_910
.LBB0_909:                              # %if.else492.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_910:                              # %for.inc507.2.2
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 960
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_912
# %bb.911:                              # %for.inc507.2.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_913
.LBB0_912:                              # %if.then479.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_914
.LBB0_913:                              # %if.else492.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_914:                              # %for.inc507.2.3
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 964
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_916
# %bb.915:                              # %for.inc507.2.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_917
.LBB0_916:                              # %if.then479.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_918
.LBB0_917:                              # %if.else492.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_918:                              # %for.inc507.2.4
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 968
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_920
# %bb.919:                              # %for.inc507.2.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_921
.LBB0_920:                              # %if.then479.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_922
.LBB0_921:                              # %if.else492.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_922:                              # %for.inc507.2.5
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 972
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_924
# %bb.923:                              # %for.inc507.2.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_925
.LBB0_924:                              # %if.then479.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_926
.LBB0_925:                              # %if.else492.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_926:                              # %for.inc507.2.6
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 976
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_928
# %bb.927:                              # %for.inc507.2.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_929
.LBB0_928:                              # %if.then479.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_930
.LBB0_929:                              # %if.else492.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_930:                              # %for.inc507.2.7
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 980
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_932
# %bb.931:                              # %for.inc507.2.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_933
.LBB0_932:                              # %if.then479.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_934
.LBB0_933:                              # %if.else492.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_934:                              # %for.inc507.2.8
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 984
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_936
# %bb.935:                              # %for.inc507.2.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_937
.LBB0_936:                              # %if.then479.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_938
.LBB0_937:                              # %if.else492.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_938:                              # %for.inc507.2.9
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 988
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_940
# %bb.939:                              # %for.inc507.2.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_941
.LBB0_940:                              # %if.then479.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_942
.LBB0_941:                              # %if.else492.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_942:                              # %for.inc507.2.10
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 992
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_944
# %bb.943:                              # %for.inc507.2.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_945
.LBB0_944:                              # %if.then479.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_946
.LBB0_945:                              # %if.else492.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_946:                              # %for.inc507.2.11
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 996
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_948
# %bb.947:                              # %for.inc507.2.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_949
.LBB0_948:                              # %if.then479.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_950
.LBB0_949:                              # %if.else492.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_950:                              # %for.inc507.2.12
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 1000
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_952
# %bb.951:                              # %for.inc507.2.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_953
.LBB0_952:                              # %if.then479.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_954
.LBB0_953:                              # %if.else492.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_954:                              # %for.inc507.2.13
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 1004
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_956
# %bb.955:                              # %for.inc507.2.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_957
.LBB0_956:                              # %if.then479.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_958
.LBB0_957:                              # %if.else492.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_958:                              # %for.inc507.2.14
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s3, 1008
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 1012
	beq	$a0, $a2, .LBB0_960
# %bb.959:                              # %for.inc507.2.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_961
.LBB0_960:                              # %if.then479.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_962
.LBB0_961:                              # %if.else492.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_962:                              # %for.inc507.3
	addi.d	$a2, $a0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_964
# %bb.963:                              # %for.inc507.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_965
.LBB0_964:                              # %if.then479.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_966
.LBB0_965:                              # %if.else492.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_966:                              # %for.inc507.3.1
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1016
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_968
# %bb.967:                              # %for.inc507.3.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_969
.LBB0_968:                              # %if.then479.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_970
.LBB0_969:                              # %if.else492.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_970:                              # %for.inc507.3.2
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1020
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_972
# %bb.971:                              # %for.inc507.3.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_973
.LBB0_972:                              # %if.then479.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_974
.LBB0_973:                              # %if.else492.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_974:                              # %for.inc507.3.3
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1024
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_976
# %bb.975:                              # %for.inc507.3.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_977
.LBB0_976:                              # %if.then479.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_978
.LBB0_977:                              # %if.else492.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_978:                              # %for.inc507.3.4
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1028
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_980
# %bb.979:                              # %for.inc507.3.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_981
.LBB0_980:                              # %if.then479.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_982
.LBB0_981:                              # %if.else492.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_982:                              # %for.inc507.3.5
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1032
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_984
# %bb.983:                              # %for.inc507.3.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_985
.LBB0_984:                              # %if.then479.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_986
.LBB0_985:                              # %if.else492.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_986:                              # %for.inc507.3.6
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1036
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_988
# %bb.987:                              # %for.inc507.3.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_989
.LBB0_988:                              # %if.then479.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_990
.LBB0_989:                              # %if.else492.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_990:                              # %for.inc507.3.7
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1040
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_992
# %bb.991:                              # %for.inc507.3.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_993
.LBB0_992:                              # %if.then479.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_994
.LBB0_993:                              # %if.else492.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_994:                              # %for.inc507.3.8
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1044
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_996
# %bb.995:                              # %for.inc507.3.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_997
.LBB0_996:                              # %if.then479.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_998
.LBB0_997:                              # %if.else492.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_998:                              # %for.inc507.3.9
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1048
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1000
# %bb.999:                              # %for.inc507.3.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1001
.LBB0_1000:                             # %if.then479.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1002
.LBB0_1001:                             # %if.else492.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1002:                             # %for.inc507.3.10
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1052
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1004
# %bb.1003:                             # %for.inc507.3.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1005
.LBB0_1004:                             # %if.then479.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1006
.LBB0_1005:                             # %if.else492.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1006:                             # %for.inc507.3.11
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1056
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1008
# %bb.1007:                             # %for.inc507.3.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1009
.LBB0_1008:                             # %if.then479.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1010
.LBB0_1009:                             # %if.else492.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1010:                             # %for.inc507.3.12
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1060
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1012
# %bb.1011:                             # %for.inc507.3.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1013
.LBB0_1012:                             # %if.then479.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1014
.LBB0_1013:                             # %if.else492.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1014:                             # %for.inc507.3.13
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1064
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1016
# %bb.1015:                             # %for.inc507.3.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1017
.LBB0_1016:                             # %if.then479.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1018
.LBB0_1017:                             # %if.else492.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1018:                             # %for.inc507.3.14
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s3, 1068
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 1072
	beq	$a0, $a2, .LBB0_1020
# %bb.1019:                             # %for.inc507.3.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1021
.LBB0_1020:                             # %if.then479.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1022
.LBB0_1021:                             # %if.else492.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1022:                             # %for.inc507.4
	addi.d	$a2, $a0, 480
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1024
# %bb.1023:                             # %for.inc507.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1025
.LBB0_1024:                             # %if.then479.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1026
.LBB0_1025:                             # %if.else492.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1026:                             # %for.inc507.4.1
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1076
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1028
# %bb.1027:                             # %for.inc507.4.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1029
.LBB0_1028:                             # %if.then479.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1030
.LBB0_1029:                             # %if.else492.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1030:                             # %for.inc507.4.2
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1080
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1032
# %bb.1031:                             # %for.inc507.4.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1033
.LBB0_1032:                             # %if.then479.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1034
.LBB0_1033:                             # %if.else492.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1034:                             # %for.inc507.4.3
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1084
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1036
# %bb.1035:                             # %for.inc507.4.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1037
.LBB0_1036:                             # %if.then479.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1038
.LBB0_1037:                             # %if.else492.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1038:                             # %for.inc507.4.4
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1088
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1040
# %bb.1039:                             # %for.inc507.4.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1041
.LBB0_1040:                             # %if.then479.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1042
.LBB0_1041:                             # %if.else492.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1042:                             # %for.inc507.4.5
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1092
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1044
# %bb.1043:                             # %for.inc507.4.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1045
.LBB0_1044:                             # %if.then479.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1046
.LBB0_1045:                             # %if.else492.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1046:                             # %for.inc507.4.6
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1096
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1048
# %bb.1047:                             # %for.inc507.4.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1049
.LBB0_1048:                             # %if.then479.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1050
.LBB0_1049:                             # %if.else492.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1050:                             # %for.inc507.4.7
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1100
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1052
# %bb.1051:                             # %for.inc507.4.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1053
.LBB0_1052:                             # %if.then479.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1054
.LBB0_1053:                             # %if.else492.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1054:                             # %for.inc507.4.8
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1104
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1056
# %bb.1055:                             # %for.inc507.4.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1057
.LBB0_1056:                             # %if.then479.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1058
.LBB0_1057:                             # %if.else492.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1058:                             # %for.inc507.4.9
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1108
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1060
# %bb.1059:                             # %for.inc507.4.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1061
.LBB0_1060:                             # %if.then479.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1062
.LBB0_1061:                             # %if.else492.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1062:                             # %for.inc507.4.10
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1112
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1064
# %bb.1063:                             # %for.inc507.4.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1065
.LBB0_1064:                             # %if.then479.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1066
.LBB0_1065:                             # %if.else492.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1066:                             # %for.inc507.4.11
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1116
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1068
# %bb.1067:                             # %for.inc507.4.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1069
.LBB0_1068:                             # %if.then479.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1070
.LBB0_1069:                             # %if.else492.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1070:                             # %for.inc507.4.12
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1120
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1072
# %bb.1071:                             # %for.inc507.4.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1073
.LBB0_1072:                             # %if.then479.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1074
.LBB0_1073:                             # %if.else492.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1074:                             # %for.inc507.4.13
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1124
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1076
# %bb.1075:                             # %for.inc507.4.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1077
.LBB0_1076:                             # %if.then479.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1078
.LBB0_1077:                             # %if.else492.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1078:                             # %for.inc507.4.14
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s3, 1128
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 1132
	beq	$a0, $a2, .LBB0_1080
# %bb.1079:                             # %for.inc507.4.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1081
.LBB0_1080:                             # %if.then479.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1082
.LBB0_1081:                             # %if.else492.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1082:                             # %for.inc507.5
	addi.d	$a2, $a0, 600
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1084
# %bb.1083:                             # %for.inc507.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1085
.LBB0_1084:                             # %if.then479.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1086
.LBB0_1085:                             # %if.else492.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1086:                             # %for.inc507.5.1
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1136
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1088
# %bb.1087:                             # %for.inc507.5.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1089
.LBB0_1088:                             # %if.then479.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1090
.LBB0_1089:                             # %if.else492.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1090:                             # %for.inc507.5.2
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1140
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1092
# %bb.1091:                             # %for.inc507.5.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1093
.LBB0_1092:                             # %if.then479.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1094
.LBB0_1093:                             # %if.else492.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1094:                             # %for.inc507.5.3
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1144
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1096
# %bb.1095:                             # %for.inc507.5.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1097
.LBB0_1096:                             # %if.then479.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1098
.LBB0_1097:                             # %if.else492.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1098:                             # %for.inc507.5.4
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1148
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1100
# %bb.1099:                             # %for.inc507.5.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1101
.LBB0_1100:                             # %if.then479.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1102
.LBB0_1101:                             # %if.else492.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1102:                             # %for.inc507.5.5
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1152
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1104
# %bb.1103:                             # %for.inc507.5.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1105
.LBB0_1104:                             # %if.then479.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1106
.LBB0_1105:                             # %if.else492.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1106:                             # %for.inc507.5.6
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1156
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1108
# %bb.1107:                             # %for.inc507.5.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1109
.LBB0_1108:                             # %if.then479.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1110
.LBB0_1109:                             # %if.else492.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1110:                             # %for.inc507.5.7
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1160
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1112
# %bb.1111:                             # %for.inc507.5.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1113
.LBB0_1112:                             # %if.then479.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1114
.LBB0_1113:                             # %if.else492.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1114:                             # %for.inc507.5.8
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1164
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1116
# %bb.1115:                             # %for.inc507.5.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1117
.LBB0_1116:                             # %if.then479.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1118
.LBB0_1117:                             # %if.else492.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1118:                             # %for.inc507.5.9
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1168
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1120
# %bb.1119:                             # %for.inc507.5.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1121
.LBB0_1120:                             # %if.then479.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1122
.LBB0_1121:                             # %if.else492.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1122:                             # %for.inc507.5.10
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1172
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1124
# %bb.1123:                             # %for.inc507.5.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1125
.LBB0_1124:                             # %if.then479.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1126
.LBB0_1125:                             # %if.else492.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1126:                             # %for.inc507.5.11
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1176
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1128
# %bb.1127:                             # %for.inc507.5.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1129
.LBB0_1128:                             # %if.then479.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1130
.LBB0_1129:                             # %if.else492.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1130:                             # %for.inc507.5.12
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1180
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1132
# %bb.1131:                             # %for.inc507.5.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1133
.LBB0_1132:                             # %if.then479.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1134
.LBB0_1133:                             # %if.else492.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1134:                             # %for.inc507.5.13
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1184
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1136
# %bb.1135:                             # %for.inc507.5.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1137
.LBB0_1136:                             # %if.then479.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1138
.LBB0_1137:                             # %if.else492.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1138:                             # %for.inc507.5.14
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s3, 1188
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 1192
	beq	$a0, $a2, .LBB0_1140
# %bb.1139:                             # %for.inc507.5.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1141
.LBB0_1140:                             # %if.then479.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1142
.LBB0_1141:                             # %if.else492.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1142:                             # %for.inc507.6
	addi.d	$a2, $a0, 720
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1144
# %bb.1143:                             # %for.inc507.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1145
.LBB0_1144:                             # %if.then479.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1146
.LBB0_1145:                             # %if.else492.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1146:                             # %for.inc507.6.1
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1196
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1148
# %bb.1147:                             # %for.inc507.6.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1149
.LBB0_1148:                             # %if.then479.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1150
.LBB0_1149:                             # %if.else492.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1150:                             # %for.inc507.6.2
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1200
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1152
# %bb.1151:                             # %for.inc507.6.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1153
.LBB0_1152:                             # %if.then479.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1154
.LBB0_1153:                             # %if.else492.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1154:                             # %for.inc507.6.3
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1204
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1156
# %bb.1155:                             # %for.inc507.6.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1157
.LBB0_1156:                             # %if.then479.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1158
.LBB0_1157:                             # %if.else492.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1158:                             # %for.inc507.6.4
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1208
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1160
# %bb.1159:                             # %for.inc507.6.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1161
.LBB0_1160:                             # %if.then479.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1162
.LBB0_1161:                             # %if.else492.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1162:                             # %for.inc507.6.5
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1212
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1164
# %bb.1163:                             # %for.inc507.6.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1165
.LBB0_1164:                             # %if.then479.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1166
.LBB0_1165:                             # %if.else492.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1166:                             # %for.inc507.6.6
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1216
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1168
# %bb.1167:                             # %for.inc507.6.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1169
.LBB0_1168:                             # %if.then479.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1170
.LBB0_1169:                             # %if.else492.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1170:                             # %for.inc507.6.7
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1220
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1172
# %bb.1171:                             # %for.inc507.6.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1173
.LBB0_1172:                             # %if.then479.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1174
.LBB0_1173:                             # %if.else492.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1174:                             # %for.inc507.6.8
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1224
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1176
# %bb.1175:                             # %for.inc507.6.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1177
.LBB0_1176:                             # %if.then479.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1178
.LBB0_1177:                             # %if.else492.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1178:                             # %for.inc507.6.9
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1228
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1180
# %bb.1179:                             # %for.inc507.6.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1181
.LBB0_1180:                             # %if.then479.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1182
.LBB0_1181:                             # %if.else492.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1182:                             # %for.inc507.6.10
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1232
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1184
# %bb.1183:                             # %for.inc507.6.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1185
.LBB0_1184:                             # %if.then479.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1186
.LBB0_1185:                             # %if.else492.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1186:                             # %for.inc507.6.11
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1236
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1188
# %bb.1187:                             # %for.inc507.6.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1189
.LBB0_1188:                             # %if.then479.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1190
.LBB0_1189:                             # %if.else492.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1190:                             # %for.inc507.6.12
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1240
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1192
# %bb.1191:                             # %for.inc507.6.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1193
.LBB0_1192:                             # %if.then479.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1194
.LBB0_1193:                             # %if.else492.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1194:                             # %for.inc507.6.13
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1244
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1196
# %bb.1195:                             # %for.inc507.6.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1197
.LBB0_1196:                             # %if.then479.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1198
.LBB0_1197:                             # %if.else492.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1198:                             # %for.inc507.6.14
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s3, 1248
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s3, 1252
	beq	$a0, $a2, .LBB0_1200
# %bb.1199:                             # %for.inc507.6.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1201
.LBB0_1200:                             # %if.then479.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1202
.LBB0_1201:                             # %if.else492.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1202:                             # %for.inc507.7
	addi.d	$a2, $a0, 840
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1204
# %bb.1203:                             # %for.inc507.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1205
.LBB0_1204:                             # %if.then479.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1206
.LBB0_1205:                             # %if.else492.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1206:                             # %for.inc507.7.1
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1256
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1208
# %bb.1207:                             # %for.inc507.7.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1209
.LBB0_1208:                             # %if.then479.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1210
.LBB0_1209:                             # %if.else492.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1210:                             # %for.inc507.7.2
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1260
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1212
# %bb.1211:                             # %for.inc507.7.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1213
.LBB0_1212:                             # %if.then479.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1214
.LBB0_1213:                             # %if.else492.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1214:                             # %for.inc507.7.3
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1264
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1216
# %bb.1215:                             # %for.inc507.7.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1217
.LBB0_1216:                             # %if.then479.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1218
.LBB0_1217:                             # %if.else492.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1218:                             # %for.inc507.7.4
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1268
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1220
# %bb.1219:                             # %for.inc507.7.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1221
.LBB0_1220:                             # %if.then479.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1222
.LBB0_1221:                             # %if.else492.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1222:                             # %for.inc507.7.5
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1272
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1224
# %bb.1223:                             # %for.inc507.7.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1225
.LBB0_1224:                             # %if.then479.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1226
.LBB0_1225:                             # %if.else492.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1226:                             # %for.inc507.7.6
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1276
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1228
# %bb.1227:                             # %for.inc507.7.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1229
.LBB0_1228:                             # %if.then479.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1230
.LBB0_1229:                             # %if.else492.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1230:                             # %for.inc507.7.7
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1280
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1232
# %bb.1231:                             # %for.inc507.7.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1233
.LBB0_1232:                             # %if.then479.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1234
.LBB0_1233:                             # %if.else492.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1234:                             # %for.inc507.7.8
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1284
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1236
# %bb.1235:                             # %for.inc507.7.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1237
.LBB0_1236:                             # %if.then479.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1238
.LBB0_1237:                             # %if.else492.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1238:                             # %for.inc507.7.9
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1288
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1240
# %bb.1239:                             # %for.inc507.7.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1241
.LBB0_1240:                             # %if.then479.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1242
.LBB0_1241:                             # %if.else492.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1242:                             # %for.inc507.7.10
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1292
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1244
# %bb.1243:                             # %for.inc507.7.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1245
.LBB0_1244:                             # %if.then479.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1246
.LBB0_1245:                             # %if.else492.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1246:                             # %for.inc507.7.11
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1296
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1248
# %bb.1247:                             # %for.inc507.7.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1249
.LBB0_1248:                             # %if.then479.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1250
.LBB0_1249:                             # %if.else492.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1250:                             # %for.inc507.7.12
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1300
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1252
# %bb.1251:                             # %for.inc507.7.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1253
.LBB0_1252:                             # %if.then479.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1254
.LBB0_1253:                             # %if.else492.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1254:                             # %for.inc507.7.13
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1304
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1256
# %bb.1255:                             # %for.inc507.7.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1257
.LBB0_1256:                             # %if.then479.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1258
.LBB0_1257:                             # %if.else492.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1258:                             # %for.inc507.7.14
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s3, 1308
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	move	$s2, $zero
	addi.d	$s1, $s3, 1432
	pcalau12i	$a0, %pc_hi20(INIT_ONE_I)
	addi.d	$s3, $a0, %pc_lo12(INIT_ONE_I)
	ori	$s4, $zero, 2
	ori	$s5, $zero, 4
	ori	$s6, $zero, 320
	pcalau12i	$a0, %pc_hi20(INIT_ONE_P)
	addi.d	$s7, $a0, %pc_lo12(INIT_ONE_P)
	b	.LBB0_1261
	.p2align	4, , 16
.LBB0_1259:                             # %if.then524.4
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
.LBB0_1260:                             # %for.inc552.4
                                        #   in Loop: Header=BB0_1261 Depth=1
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 40
	addi.d	$s1, $s1, 20
	beq	$s0, $s6, .LBB0_1280
.LBB0_1261:                             # %for.cond516.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 44
	beq	$a0, $s4, .LBB0_1263
# %bb.1262:                             # %for.cond516.preheader
                                        #   in Loop: Header=BB0_1261 Depth=1
	bne	$a0, $s5, .LBB0_1264
.LBB0_1263:                             # %if.then524
                                        #   in Loop: Header=BB0_1261 Depth=1
	ld.w	$a0, $s8, 0
	slli.d	$a1, $s2, 5
	alsl.d	$a1, $s2, $a1, 3
	add.d	$a1, $s3, $a1
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a2, $a1, $a0
	b	.LBB0_1265
	.p2align	4, , 16
.LBB0_1264:                             # %if.else537
                                        #   in Loop: Header=BB0_1261 Depth=1
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a2, $s7, $a0
.LBB0_1265:                             # %for.inc552
                                        #   in Loop: Header=BB0_1261 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1267
# %bb.1266:                             # %for.inc552
                                        #   in Loop: Header=BB0_1261 Depth=1
	bne	$a0, $s4, .LBB0_1268
.LBB0_1267:                             # %if.then524.1
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1269
	.p2align	4, , 16
.LBB0_1268:                             # %if.else537.1
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1269:                             # %for.inc552.1
                                        #   in Loop: Header=BB0_1261 Depth=1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1271
# %bb.1270:                             # %for.inc552.1
                                        #   in Loop: Header=BB0_1261 Depth=1
	bne	$a0, $s4, .LBB0_1272
.LBB0_1271:                             # %if.then524.2
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1273
	.p2align	4, , 16
.LBB0_1272:                             # %if.else537.2
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1273:                             # %for.inc552.2
                                        #   in Loop: Header=BB0_1261 Depth=1
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1275
# %bb.1274:                             # %for.inc552.2
                                        #   in Loop: Header=BB0_1261 Depth=1
	bne	$a0, $s4, .LBB0_1276
.LBB0_1275:                             # %if.then524.3
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1277
	.p2align	4, , 16
.LBB0_1276:                             # %if.else537.3
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1277:                             # %for.inc552.3
                                        #   in Loop: Header=BB0_1261 Depth=1
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1259
# %bb.1278:                             # %for.inc552.3
                                        #   in Loop: Header=BB0_1261 Depth=1
	beq	$a0, $s4, .LBB0_1259
# %bb.1279:                             # %if.else537.4
                                        #   in Loop: Header=BB0_1261 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_1260
.LBB0_1280:                             # %for.cond558.preheader
	move	$s0, $zero
	move	$s2, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s1, $a0, 1632
	pcalau12i	$a0, %pc_hi20(INIT_ABS_I)
	addi.d	$s3, $a0, %pc_lo12(INIT_ABS_I)
	ori	$s4, $zero, 2
	ori	$s5, $zero, 4
	ori	$s6, $zero, 320
	pcalau12i	$a0, %pc_hi20(INIT_ABS_P)
	addi.d	$s7, $a0, %pc_lo12(INIT_ABS_P)
	b	.LBB0_1283
	.p2align	4, , 16
.LBB0_1281:                             # %if.then569.4
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
.LBB0_1282:                             # %for.inc597.4
                                        #   in Loop: Header=BB0_1283 Depth=1
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 40
	addi.d	$s1, $s1, 20
	beq	$s0, $s6, .LBB0_1302
.LBB0_1283:                             # %for.cond561.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 44
	beq	$a0, $s4, .LBB0_1285
# %bb.1284:                             # %for.cond561.preheader
                                        #   in Loop: Header=BB0_1283 Depth=1
	bne	$a0, $s5, .LBB0_1286
.LBB0_1285:                             # %if.then569
                                        #   in Loop: Header=BB0_1283 Depth=1
	ld.w	$a0, $s8, 0
	slli.d	$a1, $s2, 5
	alsl.d	$a1, $s2, $a1, 3
	add.d	$a1, $s3, $a1
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a2, $a1, $a0
	b	.LBB0_1287
	.p2align	4, , 16
.LBB0_1286:                             # %if.else582
                                        #   in Loop: Header=BB0_1283 Depth=1
	ld.w	$a0, $s8, 0
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a2, $s7, $a0
.LBB0_1287:                             # %for.inc597
                                        #   in Loop: Header=BB0_1283 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1289
# %bb.1288:                             # %for.inc597
                                        #   in Loop: Header=BB0_1283 Depth=1
	bne	$a0, $s4, .LBB0_1290
.LBB0_1289:                             # %if.then569.1
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1291
	.p2align	4, , 16
.LBB0_1290:                             # %if.else582.1
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 4
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1291:                             # %for.inc597.1
                                        #   in Loop: Header=BB0_1283 Depth=1
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1293
# %bb.1292:                             # %for.inc597.1
                                        #   in Loop: Header=BB0_1283 Depth=1
	bne	$a0, $s4, .LBB0_1294
.LBB0_1293:                             # %if.then569.2
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1295
	.p2align	4, , 16
.LBB0_1294:                             # %if.else582.2
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 8
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1295:                             # %for.inc597.2
                                        #   in Loop: Header=BB0_1283 Depth=1
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1297
# %bb.1296:                             # %for.inc597.2
                                        #   in Loop: Header=BB0_1283 Depth=1
	bne	$a0, $s4, .LBB0_1298
.LBB0_1297:                             # %if.then569.3
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	b	.LBB0_1299
	.p2align	4, , 16
.LBB0_1298:                             # %if.else582.3
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 12
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
.LBB0_1299:                             # %for.inc597.3
                                        #   in Loop: Header=BB0_1283 Depth=1
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	beq	$a0, $s5, .LBB0_1281
# %bb.1300:                             # %for.inc597.3
                                        #   in Loop: Header=BB0_1283 Depth=1
	beq	$a0, $s4, .LBB0_1281
# %bb.1301:                             # %if.else582.4
                                        #   in Loop: Header=BB0_1283 Depth=1
	ldptr.w	$a0, $fp, 5868
	addi.d	$a1, $s1, 16
	alsl.d	$a0, $a0, $a0, 2
	slli.d	$a0, $a0, 6
	add.d	$a0, $s0, $a0
	add.d	$a0, $s7, $a0
	b	.LBB0_1282
.LBB0_1302:                             # %for.cond603.preheader
	ld.w	$a0, $fp, 44
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $s0, 1832
	ori	$a2, $zero, 2
	pcalau12i	$a3, %pc_hi20(INIT_FLD_MAP_I)
	addi.d	$s1, $a3, %pc_lo12(INIT_FLD_MAP_I)
	beq	$a0, $a2, .LBB0_1304
# %bb.1303:                             # %for.cond603.preheader
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB0_1305
.LBB0_1304:                             # %if.then614
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a0
	b	.LBB0_1306
.LBB0_1305:                             # %if.else627
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a2, $a2, $a0
.LBB0_1306:                             # %for.inc642
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1308
# %bb.1307:                             # %for.inc642
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1309
.LBB0_1308:                             # %if.then614.1677
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1310
.LBB0_1309:                             # %if.else627.1680
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1310:                             # %for.inc642.1682
	addi.d	$a1, $s0, 1836
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1312
# %bb.1311:                             # %for.inc642.1682
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1313
.LBB0_1312:                             # %if.then614.2687
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1314
.LBB0_1313:                             # %if.else627.2690
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1314:                             # %for.inc642.2692
	addi.d	$a1, $s0, 1840
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1316
# %bb.1315:                             # %for.inc642.2692
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1317
.LBB0_1316:                             # %if.then614.3697
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1318
.LBB0_1317:                             # %if.else627.3700
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1318:                             # %for.inc642.3702
	addi.d	$a1, $s0, 1844
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1320
# %bb.1319:                             # %for.inc642.3702
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1321
.LBB0_1320:                             # %if.then614.4707
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1322
.LBB0_1321:                             # %if.else627.4710
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1322:                             # %for.inc642.4712
	addi.d	$a1, $s0, 1848
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1324
# %bb.1323:                             # %for.inc642.4712
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1325
.LBB0_1324:                             # %if.then614.5717
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1326
.LBB0_1325:                             # %if.else627.5720
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1326:                             # %for.inc642.5722
	addi.d	$a1, $s0, 1852
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1328
# %bb.1327:                             # %for.inc642.5722
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1329
.LBB0_1328:                             # %if.then614.6727
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1330
.LBB0_1329:                             # %if.else627.6730
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1330:                             # %for.inc642.6732
	addi.d	$a1, $s0, 1856
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1332
# %bb.1331:                             # %for.inc642.6732
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1333
.LBB0_1332:                             # %if.then614.7737
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1334
.LBB0_1333:                             # %if.else627.7740
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1334:                             # %for.inc642.7742
	addi.d	$a1, $s0, 1860
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1336
# %bb.1335:                             # %for.inc642.7742
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1337
.LBB0_1336:                             # %if.then614.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1338
.LBB0_1337:                             # %if.else627.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1338:                             # %for.inc642.8
	addi.d	$a1, $s0, 1864
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1340
# %bb.1339:                             # %for.inc642.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1341
.LBB0_1340:                             # %if.then614.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1342
.LBB0_1341:                             # %if.else627.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1342:                             # %for.inc642.9
	addi.d	$a1, $s0, 1868
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1344
# %bb.1343:                             # %for.inc642.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1345
.LBB0_1344:                             # %if.then614.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1346
.LBB0_1345:                             # %if.else627.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1346:                             # %for.inc642.10
	addi.d	$a1, $s0, 1872
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1348
# %bb.1347:                             # %for.inc642.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1349
.LBB0_1348:                             # %if.then614.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1350
.LBB0_1349:                             # %if.else627.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1350:                             # %for.inc642.11
	addi.d	$a1, $s0, 1876
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1352
# %bb.1351:                             # %for.inc642.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1353
.LBB0_1352:                             # %if.then614.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1354
.LBB0_1353:                             # %if.else627.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1354:                             # %for.inc642.12
	addi.d	$a1, $s0, 1880
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1356
# %bb.1355:                             # %for.inc642.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1357
.LBB0_1356:                             # %if.then614.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1358
.LBB0_1357:                             # %if.else627.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1358:                             # %for.inc642.13
	addi.d	$a1, $s0, 1884
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1360
# %bb.1359:                             # %for.inc642.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1361
.LBB0_1360:                             # %if.then614.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1362
.LBB0_1361:                             # %if.else627.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1362:                             # %for.inc642.14
	addi.d	$a1, $s0, 1888
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 1892
	beq	$a0, $a2, .LBB0_1364
# %bb.1363:                             # %for.inc642.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1365
.LBB0_1364:                             # %if.then614.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1366
.LBB0_1365:                             # %if.else627.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1366:                             # %for.inc642.1
	addi.d	$a2, $a0, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1368
# %bb.1367:                             # %for.inc642.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1369
.LBB0_1368:                             # %if.then614.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1370
.LBB0_1369:                             # %if.else627.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1370:                             # %for.inc642.1.1
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1896
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1372
# %bb.1371:                             # %for.inc642.1.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1373
.LBB0_1372:                             # %if.then614.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1374
.LBB0_1373:                             # %if.else627.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1374:                             # %for.inc642.1.2
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1900
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1376
# %bb.1375:                             # %for.inc642.1.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1377
.LBB0_1376:                             # %if.then614.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1378
.LBB0_1377:                             # %if.else627.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1378:                             # %for.inc642.1.3
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1904
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1380
# %bb.1379:                             # %for.inc642.1.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1381
.LBB0_1380:                             # %if.then614.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1382
.LBB0_1381:                             # %if.else627.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1382:                             # %for.inc642.1.4
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1908
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1384
# %bb.1383:                             # %for.inc642.1.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1385
.LBB0_1384:                             # %if.then614.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1386
.LBB0_1385:                             # %if.else627.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1386:                             # %for.inc642.1.5
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1912
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1388
# %bb.1387:                             # %for.inc642.1.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1389
.LBB0_1388:                             # %if.then614.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1390
.LBB0_1389:                             # %if.else627.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1390:                             # %for.inc642.1.6
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1916
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1392
# %bb.1391:                             # %for.inc642.1.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1393
.LBB0_1392:                             # %if.then614.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1394
.LBB0_1393:                             # %if.else627.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1394:                             # %for.inc642.1.7
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1920
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1396
# %bb.1395:                             # %for.inc642.1.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1397
.LBB0_1396:                             # %if.then614.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1398
.LBB0_1397:                             # %if.else627.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1398:                             # %for.inc642.1.8
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1924
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1400
# %bb.1399:                             # %for.inc642.1.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1401
.LBB0_1400:                             # %if.then614.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1402
.LBB0_1401:                             # %if.else627.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1402:                             # %for.inc642.1.9
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1928
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1404
# %bb.1403:                             # %for.inc642.1.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1405
.LBB0_1404:                             # %if.then614.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1406
.LBB0_1405:                             # %if.else627.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1406:                             # %for.inc642.1.10
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1932
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1408
# %bb.1407:                             # %for.inc642.1.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1409
.LBB0_1408:                             # %if.then614.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1410
.LBB0_1409:                             # %if.else627.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1410:                             # %for.inc642.1.11
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1936
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1412
# %bb.1411:                             # %for.inc642.1.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1413
.LBB0_1412:                             # %if.then614.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1414
.LBB0_1413:                             # %if.else627.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1414:                             # %for.inc642.1.12
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1940
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1416
# %bb.1415:                             # %for.inc642.1.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1417
.LBB0_1416:                             # %if.then614.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1418
.LBB0_1417:                             # %if.else627.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1418:                             # %for.inc642.1.13
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1944
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1420
# %bb.1419:                             # %for.inc642.1.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1421
.LBB0_1420:                             # %if.then614.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1422
.LBB0_1421:                             # %if.else627.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1422:                             # %for.inc642.1.14
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 1948
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 1952
	beq	$a0, $a2, .LBB0_1424
# %bb.1423:                             # %for.inc642.1.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1425
.LBB0_1424:                             # %if.then614.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1426
.LBB0_1425:                             # %if.else627.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1426:                             # %for.inc642.2
	addi.d	$a2, $a0, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1428
# %bb.1427:                             # %for.inc642.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1429
.LBB0_1428:                             # %if.then614.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1430
.LBB0_1429:                             # %if.else627.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1430:                             # %for.inc642.2.1
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1956
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1432
# %bb.1431:                             # %for.inc642.2.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1433
.LBB0_1432:                             # %if.then614.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1434
.LBB0_1433:                             # %if.else627.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1434:                             # %for.inc642.2.2
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1960
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1436
# %bb.1435:                             # %for.inc642.2.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1437
.LBB0_1436:                             # %if.then614.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1438
.LBB0_1437:                             # %if.else627.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1438:                             # %for.inc642.2.3
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1964
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1440
# %bb.1439:                             # %for.inc642.2.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1441
.LBB0_1440:                             # %if.then614.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1442
.LBB0_1441:                             # %if.else627.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1442:                             # %for.inc642.2.4
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1968
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1444
# %bb.1443:                             # %for.inc642.2.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1445
.LBB0_1444:                             # %if.then614.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1446
.LBB0_1445:                             # %if.else627.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1446:                             # %for.inc642.2.5
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1972
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1448
# %bb.1447:                             # %for.inc642.2.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1449
.LBB0_1448:                             # %if.then614.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1450
.LBB0_1449:                             # %if.else627.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1450:                             # %for.inc642.2.6
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1976
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1452
# %bb.1451:                             # %for.inc642.2.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1453
.LBB0_1452:                             # %if.then614.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1454
.LBB0_1453:                             # %if.else627.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1454:                             # %for.inc642.2.7
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1980
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1456
# %bb.1455:                             # %for.inc642.2.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1457
.LBB0_1456:                             # %if.then614.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1458
.LBB0_1457:                             # %if.else627.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1458:                             # %for.inc642.2.8
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1984
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1460
# %bb.1459:                             # %for.inc642.2.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1461
.LBB0_1460:                             # %if.then614.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1462
.LBB0_1461:                             # %if.else627.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1462:                             # %for.inc642.2.9
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1988
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1464
# %bb.1463:                             # %for.inc642.2.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1465
.LBB0_1464:                             # %if.then614.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1466
.LBB0_1465:                             # %if.else627.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1466:                             # %for.inc642.2.10
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1992
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1468
# %bb.1467:                             # %for.inc642.2.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1469
.LBB0_1468:                             # %if.then614.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1470
.LBB0_1469:                             # %if.else627.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1470:                             # %for.inc642.2.11
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 1996
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1472
# %bb.1471:                             # %for.inc642.2.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1473
.LBB0_1472:                             # %if.then614.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1474
.LBB0_1473:                             # %if.else627.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1474:                             # %for.inc642.2.12
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 2000
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1476
# %bb.1475:                             # %for.inc642.2.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1477
.LBB0_1476:                             # %if.then614.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1478
.LBB0_1477:                             # %if.else627.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1478:                             # %for.inc642.2.13
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 2004
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1480
# %bb.1479:                             # %for.inc642.2.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1481
.LBB0_1480:                             # %if.then614.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1482
.LBB0_1481:                             # %if.else627.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1482:                             # %for.inc642.2.14
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 2008
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 2012
	beq	$a0, $a2, .LBB0_1484
# %bb.1483:                             # %for.inc642.2.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1485
.LBB0_1484:                             # %if.then614.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1486
.LBB0_1485:                             # %if.else627.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1486:                             # %for.inc642.3
	addi.d	$a2, $a0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1488
# %bb.1487:                             # %for.inc642.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1489
.LBB0_1488:                             # %if.then614.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1490
.LBB0_1489:                             # %if.else627.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1490:                             # %for.inc642.3.1
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2016
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1492
# %bb.1491:                             # %for.inc642.3.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1493
.LBB0_1492:                             # %if.then614.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1494
.LBB0_1493:                             # %if.else627.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1494:                             # %for.inc642.3.2
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2020
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1496
# %bb.1495:                             # %for.inc642.3.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1497
.LBB0_1496:                             # %if.then614.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1498
.LBB0_1497:                             # %if.else627.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1498:                             # %for.inc642.3.3
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2024
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1500
# %bb.1499:                             # %for.inc642.3.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1501
.LBB0_1500:                             # %if.then614.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1502
.LBB0_1501:                             # %if.else627.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1502:                             # %for.inc642.3.4
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2028
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1504
# %bb.1503:                             # %for.inc642.3.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1505
.LBB0_1504:                             # %if.then614.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1506
.LBB0_1505:                             # %if.else627.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1506:                             # %for.inc642.3.5
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2032
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1508
# %bb.1507:                             # %for.inc642.3.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1509
.LBB0_1508:                             # %if.then614.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1510
.LBB0_1509:                             # %if.else627.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1510:                             # %for.inc642.3.6
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2036
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1512
# %bb.1511:                             # %for.inc642.3.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1513
.LBB0_1512:                             # %if.then614.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1514
.LBB0_1513:                             # %if.else627.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1514:                             # %for.inc642.3.7
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2040
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1516
# %bb.1515:                             # %for.inc642.3.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1517
.LBB0_1516:                             # %if.then614.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1518
.LBB0_1517:                             # %if.else627.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1518:                             # %for.inc642.3.8
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 2044
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1520
# %bb.1519:                             # %for.inc642.3.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1521
.LBB0_1520:                             # %if.then614.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1522
.LBB0_1521:                             # %if.else627.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1522:                             # %for.inc642.3.9
	addi.d	$a0, $a0, 360
	addi.d	$s0, $s0, 2047
	addi.d	$a1, $s0, 1
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1524
# %bb.1523:                             # %for.inc642.3.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1525
.LBB0_1524:                             # %if.then614.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1526
.LBB0_1525:                             # %if.else627.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1526:                             # %for.inc642.3.10
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 5
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1528
# %bb.1527:                             # %for.inc642.3.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1529
.LBB0_1528:                             # %if.then614.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1530
.LBB0_1529:                             # %if.else627.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1530:                             # %for.inc642.3.11
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 9
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1532
# %bb.1531:                             # %for.inc642.3.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1533
.LBB0_1532:                             # %if.then614.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1534
.LBB0_1533:                             # %if.else627.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1534:                             # %for.inc642.3.12
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 13
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1536
# %bb.1535:                             # %for.inc642.3.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1537
.LBB0_1536:                             # %if.then614.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1538
.LBB0_1537:                             # %if.else627.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1538:                             # %for.inc642.3.13
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 17
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1540
# %bb.1539:                             # %for.inc642.3.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1541
.LBB0_1540:                             # %if.then614.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1542
.LBB0_1541:                             # %if.else627.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1542:                             # %for.inc642.3.14
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 21
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 25
	beq	$a0, $a2, .LBB0_1544
# %bb.1543:                             # %for.inc642.3.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1545
.LBB0_1544:                             # %if.then614.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1546
.LBB0_1545:                             # %if.else627.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1546:                             # %for.inc642.4
	addi.d	$a2, $a0, 480
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1548
# %bb.1547:                             # %for.inc642.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1549
.LBB0_1548:                             # %if.then614.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1550
.LBB0_1549:                             # %if.else627.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1550:                             # %for.inc642.4.1
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 29
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1552
# %bb.1551:                             # %for.inc642.4.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1553
.LBB0_1552:                             # %if.then614.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1554
.LBB0_1553:                             # %if.else627.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1554:                             # %for.inc642.4.2
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 33
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1556
# %bb.1555:                             # %for.inc642.4.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1557
.LBB0_1556:                             # %if.then614.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1558
.LBB0_1557:                             # %if.else627.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1558:                             # %for.inc642.4.3
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 37
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1560
# %bb.1559:                             # %for.inc642.4.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1561
.LBB0_1560:                             # %if.then614.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1562
.LBB0_1561:                             # %if.else627.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1562:                             # %for.inc642.4.4
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 41
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1564
# %bb.1563:                             # %for.inc642.4.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1565
.LBB0_1564:                             # %if.then614.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1566
.LBB0_1565:                             # %if.else627.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1566:                             # %for.inc642.4.5
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 45
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1568
# %bb.1567:                             # %for.inc642.4.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1569
.LBB0_1568:                             # %if.then614.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1570
.LBB0_1569:                             # %if.else627.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1570:                             # %for.inc642.4.6
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 49
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1572
# %bb.1571:                             # %for.inc642.4.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1573
.LBB0_1572:                             # %if.then614.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1574
.LBB0_1573:                             # %if.else627.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1574:                             # %for.inc642.4.7
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 53
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1576
# %bb.1575:                             # %for.inc642.4.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1577
.LBB0_1576:                             # %if.then614.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1578
.LBB0_1577:                             # %if.else627.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1578:                             # %for.inc642.4.8
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 57
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1580
# %bb.1579:                             # %for.inc642.4.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1581
.LBB0_1580:                             # %if.then614.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1582
.LBB0_1581:                             # %if.else627.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1582:                             # %for.inc642.4.9
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 61
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1584
# %bb.1583:                             # %for.inc642.4.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1585
.LBB0_1584:                             # %if.then614.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1586
.LBB0_1585:                             # %if.else627.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1586:                             # %for.inc642.4.10
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 65
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1588
# %bb.1587:                             # %for.inc642.4.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1589
.LBB0_1588:                             # %if.then614.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1590
.LBB0_1589:                             # %if.else627.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1590:                             # %for.inc642.4.11
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 69
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1592
# %bb.1591:                             # %for.inc642.4.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1593
.LBB0_1592:                             # %if.then614.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1594
.LBB0_1593:                             # %if.else627.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1594:                             # %for.inc642.4.12
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 73
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1596
# %bb.1595:                             # %for.inc642.4.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1597
.LBB0_1596:                             # %if.then614.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1598
.LBB0_1597:                             # %if.else627.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1598:                             # %for.inc642.4.13
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 77
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1600
# %bb.1599:                             # %for.inc642.4.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1601
.LBB0_1600:                             # %if.then614.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1602
.LBB0_1601:                             # %if.else627.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1602:                             # %for.inc642.4.14
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 81
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 85
	beq	$a0, $a2, .LBB0_1604
# %bb.1603:                             # %for.inc642.4.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1605
.LBB0_1604:                             # %if.then614.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1606
.LBB0_1605:                             # %if.else627.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1606:                             # %for.inc642.5
	addi.d	$a2, $a0, 600
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1608
# %bb.1607:                             # %for.inc642.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1609
.LBB0_1608:                             # %if.then614.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1610
.LBB0_1609:                             # %if.else627.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1610:                             # %for.inc642.5.1
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 89
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1612
# %bb.1611:                             # %for.inc642.5.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1613
.LBB0_1612:                             # %if.then614.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1614
.LBB0_1613:                             # %if.else627.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1614:                             # %for.inc642.5.2
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 93
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1616
# %bb.1615:                             # %for.inc642.5.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1617
.LBB0_1616:                             # %if.then614.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1618
.LBB0_1617:                             # %if.else627.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1618:                             # %for.inc642.5.3
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 97
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1620
# %bb.1619:                             # %for.inc642.5.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1621
.LBB0_1620:                             # %if.then614.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1622
.LBB0_1621:                             # %if.else627.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1622:                             # %for.inc642.5.4
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 101
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1624
# %bb.1623:                             # %for.inc642.5.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1625
.LBB0_1624:                             # %if.then614.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1626
.LBB0_1625:                             # %if.else627.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1626:                             # %for.inc642.5.5
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 105
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1628
# %bb.1627:                             # %for.inc642.5.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1629
.LBB0_1628:                             # %if.then614.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1630
.LBB0_1629:                             # %if.else627.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1630:                             # %for.inc642.5.6
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 109
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1632
# %bb.1631:                             # %for.inc642.5.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1633
.LBB0_1632:                             # %if.then614.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1634
.LBB0_1633:                             # %if.else627.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1634:                             # %for.inc642.5.7
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 113
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1636
# %bb.1635:                             # %for.inc642.5.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1637
.LBB0_1636:                             # %if.then614.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1638
.LBB0_1637:                             # %if.else627.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1638:                             # %for.inc642.5.8
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 117
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1640
# %bb.1639:                             # %for.inc642.5.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1641
.LBB0_1640:                             # %if.then614.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1642
.LBB0_1641:                             # %if.else627.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1642:                             # %for.inc642.5.9
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 121
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1644
# %bb.1643:                             # %for.inc642.5.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1645
.LBB0_1644:                             # %if.then614.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1646
.LBB0_1645:                             # %if.else627.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1646:                             # %for.inc642.5.10
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 125
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1648
# %bb.1647:                             # %for.inc642.5.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1649
.LBB0_1648:                             # %if.then614.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1650
.LBB0_1649:                             # %if.else627.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1650:                             # %for.inc642.5.11
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 129
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1652
# %bb.1651:                             # %for.inc642.5.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1653
.LBB0_1652:                             # %if.then614.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1654
.LBB0_1653:                             # %if.else627.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1654:                             # %for.inc642.5.12
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 133
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1656
# %bb.1655:                             # %for.inc642.5.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1657
.LBB0_1656:                             # %if.then614.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1658
.LBB0_1657:                             # %if.else627.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1658:                             # %for.inc642.5.13
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 137
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1660
# %bb.1659:                             # %for.inc642.5.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1661
.LBB0_1660:                             # %if.then614.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1662
.LBB0_1661:                             # %if.else627.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1662:                             # %for.inc642.5.14
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 141
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 145
	beq	$a0, $a2, .LBB0_1664
# %bb.1663:                             # %for.inc642.5.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1665
.LBB0_1664:                             # %if.then614.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1666
.LBB0_1665:                             # %if.else627.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1666:                             # %for.inc642.6
	addi.d	$a2, $a0, 720
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1668
# %bb.1667:                             # %for.inc642.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1669
.LBB0_1668:                             # %if.then614.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1670
.LBB0_1669:                             # %if.else627.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1670:                             # %for.inc642.6.1
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 149
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1672
# %bb.1671:                             # %for.inc642.6.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1673
.LBB0_1672:                             # %if.then614.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1674
.LBB0_1673:                             # %if.else627.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1674:                             # %for.inc642.6.2
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 153
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1676
# %bb.1675:                             # %for.inc642.6.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1677
.LBB0_1676:                             # %if.then614.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1678
.LBB0_1677:                             # %if.else627.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1678:                             # %for.inc642.6.3
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 157
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1680
# %bb.1679:                             # %for.inc642.6.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1681
.LBB0_1680:                             # %if.then614.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1682
.LBB0_1681:                             # %if.else627.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1682:                             # %for.inc642.6.4
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 161
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1684
# %bb.1683:                             # %for.inc642.6.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1685
.LBB0_1684:                             # %if.then614.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1686
.LBB0_1685:                             # %if.else627.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1686:                             # %for.inc642.6.5
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 165
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1688
# %bb.1687:                             # %for.inc642.6.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1689
.LBB0_1688:                             # %if.then614.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1690
.LBB0_1689:                             # %if.else627.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1690:                             # %for.inc642.6.6
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 169
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1692
# %bb.1691:                             # %for.inc642.6.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1693
.LBB0_1692:                             # %if.then614.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1694
.LBB0_1693:                             # %if.else627.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1694:                             # %for.inc642.6.7
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 173
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1696
# %bb.1695:                             # %for.inc642.6.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1697
.LBB0_1696:                             # %if.then614.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1698
.LBB0_1697:                             # %if.else627.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1698:                             # %for.inc642.6.8
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 177
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1700
# %bb.1699:                             # %for.inc642.6.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1701
.LBB0_1700:                             # %if.then614.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1702
.LBB0_1701:                             # %if.else627.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1702:                             # %for.inc642.6.9
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 181
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1704
# %bb.1703:                             # %for.inc642.6.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1705
.LBB0_1704:                             # %if.then614.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1706
.LBB0_1705:                             # %if.else627.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1706:                             # %for.inc642.6.10
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 185
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1708
# %bb.1707:                             # %for.inc642.6.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1709
.LBB0_1708:                             # %if.then614.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1710
.LBB0_1709:                             # %if.else627.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1710:                             # %for.inc642.6.11
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 189
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1712
# %bb.1711:                             # %for.inc642.6.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1713
.LBB0_1712:                             # %if.then614.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1714
.LBB0_1713:                             # %if.else627.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1714:                             # %for.inc642.6.12
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 193
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1716
# %bb.1715:                             # %for.inc642.6.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1717
.LBB0_1716:                             # %if.then614.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1718
.LBB0_1717:                             # %if.else627.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1718:                             # %for.inc642.6.13
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 197
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1720
# %bb.1719:                             # %for.inc642.6.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1721
.LBB0_1720:                             # %if.then614.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1722
.LBB0_1721:                             # %if.else627.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1722:                             # %for.inc642.6.14
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 201
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 205
	beq	$a0, $a2, .LBB0_1724
# %bb.1723:                             # %for.inc642.6.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1725
.LBB0_1724:                             # %if.then614.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1726
.LBB0_1725:                             # %if.else627.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a2, $a0
.LBB0_1726:                             # %for.inc642.7
	addi.d	$a2, $a0, 840
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1728
# %bb.1727:                             # %for.inc642.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1729
.LBB0_1728:                             # %if.then614.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1730
.LBB0_1729:                             # %if.else627.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1730:                             # %for.inc642.7.1
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 209
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1732
# %bb.1731:                             # %for.inc642.7.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1733
.LBB0_1732:                             # %if.then614.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1734
.LBB0_1733:                             # %if.else627.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1734:                             # %for.inc642.7.2
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 213
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1736
# %bb.1735:                             # %for.inc642.7.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1737
.LBB0_1736:                             # %if.then614.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1738
.LBB0_1737:                             # %if.else627.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1738:                             # %for.inc642.7.3
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 217
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1740
# %bb.1739:                             # %for.inc642.7.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1741
.LBB0_1740:                             # %if.then614.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1742
.LBB0_1741:                             # %if.else627.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1742:                             # %for.inc642.7.4
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 221
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1744
# %bb.1743:                             # %for.inc642.7.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1745
.LBB0_1744:                             # %if.then614.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1746
.LBB0_1745:                             # %if.else627.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1746:                             # %for.inc642.7.5
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 225
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1748
# %bb.1747:                             # %for.inc642.7.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1749
.LBB0_1748:                             # %if.then614.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1750
.LBB0_1749:                             # %if.else627.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1750:                             # %for.inc642.7.6
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 229
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1752
# %bb.1751:                             # %for.inc642.7.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1753
.LBB0_1752:                             # %if.then614.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1754
.LBB0_1753:                             # %if.else627.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1754:                             # %for.inc642.7.7
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 233
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1756
# %bb.1755:                             # %for.inc642.7.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1757
.LBB0_1756:                             # %if.then614.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1758
.LBB0_1757:                             # %if.else627.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1758:                             # %for.inc642.7.8
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 237
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1760
# %bb.1759:                             # %for.inc642.7.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1761
.LBB0_1760:                             # %if.then614.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1762
.LBB0_1761:                             # %if.else627.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1762:                             # %for.inc642.7.9
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 241
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1764
# %bb.1763:                             # %for.inc642.7.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1765
.LBB0_1764:                             # %if.then614.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1766
.LBB0_1765:                             # %if.else627.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1766:                             # %for.inc642.7.10
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 245
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1768
# %bb.1767:                             # %for.inc642.7.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1769
.LBB0_1768:                             # %if.then614.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1770
.LBB0_1769:                             # %if.else627.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1770:                             # %for.inc642.7.11
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 249
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1772
# %bb.1771:                             # %for.inc642.7.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1773
.LBB0_1772:                             # %if.then614.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1774
.LBB0_1773:                             # %if.else627.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1774:                             # %for.inc642.7.12
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 253
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1776
# %bb.1775:                             # %for.inc642.7.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1777
.LBB0_1776:                             # %if.then614.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1778
.LBB0_1777:                             # %if.else627.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1778:                             # %for.inc642.7.13
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 257
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1780
# %bb.1779:                             # %for.inc642.7.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1781
.LBB0_1780:                             # %if.then614.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1782
.LBB0_1781:                             # %if.else627.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_MAP_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_MAP_P)
	add.d	$a0, $a1, $a0
.LBB0_1782:                             # %for.inc642.7.14
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 261
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	addi.d	$a1, $s0, 385
	ori	$a2, $zero, 4
	pcalau12i	$a3, %pc_hi20(INIT_FLD_LAST_I)
	addi.d	$s1, $a3, %pc_lo12(INIT_FLD_LAST_I)
	beq	$a0, $a2, .LBB0_1784
# %bb.1783:                             # %for.inc642.7.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1785
.LBB0_1784:                             # %if.then659
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a0
	b	.LBB0_1786
.LBB0_1785:                             # %if.else672
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a2, $a2, $a0
.LBB0_1786:                             # %for.inc687
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1788
# %bb.1787:                             # %for.inc687
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1789
.LBB0_1788:                             # %if.then659.1747
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1790
.LBB0_1789:                             # %if.else672.1750
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1790:                             # %for.inc687.1752
	addi.d	$a1, $s0, 389
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1792
# %bb.1791:                             # %for.inc687.1752
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1793
.LBB0_1792:                             # %if.then659.2757
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1794
.LBB0_1793:                             # %if.else672.2760
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1794:                             # %for.inc687.2762
	addi.d	$a1, $s0, 393
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1796
# %bb.1795:                             # %for.inc687.2762
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1797
.LBB0_1796:                             # %if.then659.3767
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1798
.LBB0_1797:                             # %if.else672.3770
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1798:                             # %for.inc687.3772
	addi.d	$a1, $s0, 397
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1800
# %bb.1799:                             # %for.inc687.3772
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1801
.LBB0_1800:                             # %if.then659.4777
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1802
.LBB0_1801:                             # %if.else672.4780
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1802:                             # %for.inc687.4782
	addi.d	$a1, $s0, 401
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1804
# %bb.1803:                             # %for.inc687.4782
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1805
.LBB0_1804:                             # %if.then659.5787
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1806
.LBB0_1805:                             # %if.else672.5790
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1806:                             # %for.inc687.5792
	addi.d	$a1, $s0, 405
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1808
# %bb.1807:                             # %for.inc687.5792
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1809
.LBB0_1808:                             # %if.then659.6797
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1810
.LBB0_1809:                             # %if.else672.6800
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1810:                             # %for.inc687.6802
	addi.d	$a1, $s0, 409
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1812
# %bb.1811:                             # %for.inc687.6802
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1813
.LBB0_1812:                             # %if.then659.7807
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1814
.LBB0_1813:                             # %if.else672.7810
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1814:                             # %for.inc687.7812
	addi.d	$a1, $s0, 413
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1816
# %bb.1815:                             # %for.inc687.7812
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1817
.LBB0_1816:                             # %if.then659.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1818
.LBB0_1817:                             # %if.else672.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1818:                             # %for.inc687.8
	addi.d	$a1, $s0, 417
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1820
# %bb.1819:                             # %for.inc687.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1821
.LBB0_1820:                             # %if.then659.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1822
.LBB0_1821:                             # %if.else672.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1822:                             # %for.inc687.9
	addi.d	$a1, $s0, 421
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1824
# %bb.1823:                             # %for.inc687.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1825
.LBB0_1824:                             # %if.then659.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1826
.LBB0_1825:                             # %if.else672.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1826:                             # %for.inc687.10
	addi.d	$a1, $s0, 425
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1828
# %bb.1827:                             # %for.inc687.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1829
.LBB0_1828:                             # %if.then659.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1830
.LBB0_1829:                             # %if.else672.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1830:                             # %for.inc687.11
	addi.d	$a1, $s0, 429
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1832
# %bb.1831:                             # %for.inc687.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1833
.LBB0_1832:                             # %if.then659.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1834
.LBB0_1833:                             # %if.else672.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1834:                             # %for.inc687.12
	addi.d	$a1, $s0, 433
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1836
# %bb.1835:                             # %for.inc687.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1837
.LBB0_1836:                             # %if.then659.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1838
.LBB0_1837:                             # %if.else672.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1838:                             # %for.inc687.13
	addi.d	$a1, $s0, 437
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1840
# %bb.1839:                             # %for.inc687.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1841
.LBB0_1840:                             # %if.then659.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1842
.LBB0_1841:                             # %if.else672.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1842:                             # %for.inc687.14
	addi.d	$a1, $s0, 441
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 445
	beq	$a0, $a2, .LBB0_1844
# %bb.1843:                             # %for.inc687.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1845
.LBB0_1844:                             # %if.then659.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1846
.LBB0_1845:                             # %if.else672.1
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1846:                             # %for.inc687.1
	addi.d	$a2, $a0, 120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1848
# %bb.1847:                             # %for.inc687.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1849
.LBB0_1848:                             # %if.then659.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1850
.LBB0_1849:                             # %if.else672.1.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1850:                             # %for.inc687.1.1
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 449
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1852
# %bb.1851:                             # %for.inc687.1.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1853
.LBB0_1852:                             # %if.then659.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1854
.LBB0_1853:                             # %if.else672.1.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1854:                             # %for.inc687.1.2
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 453
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1856
# %bb.1855:                             # %for.inc687.1.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1857
.LBB0_1856:                             # %if.then659.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1858
.LBB0_1857:                             # %if.else672.1.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1858:                             # %for.inc687.1.3
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 457
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1860
# %bb.1859:                             # %for.inc687.1.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1861
.LBB0_1860:                             # %if.then659.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1862
.LBB0_1861:                             # %if.else672.1.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1862:                             # %for.inc687.1.4
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 461
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1864
# %bb.1863:                             # %for.inc687.1.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1865
.LBB0_1864:                             # %if.then659.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1866
.LBB0_1865:                             # %if.else672.1.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1866:                             # %for.inc687.1.5
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 465
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1868
# %bb.1867:                             # %for.inc687.1.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1869
.LBB0_1868:                             # %if.then659.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1870
.LBB0_1869:                             # %if.else672.1.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1870:                             # %for.inc687.1.6
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 469
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1872
# %bb.1871:                             # %for.inc687.1.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1873
.LBB0_1872:                             # %if.then659.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1874
.LBB0_1873:                             # %if.else672.1.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1874:                             # %for.inc687.1.7
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 473
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1876
# %bb.1875:                             # %for.inc687.1.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1877
.LBB0_1876:                             # %if.then659.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1878
.LBB0_1877:                             # %if.else672.1.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1878:                             # %for.inc687.1.8
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 477
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1880
# %bb.1879:                             # %for.inc687.1.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1881
.LBB0_1880:                             # %if.then659.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1882
.LBB0_1881:                             # %if.else672.1.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1882:                             # %for.inc687.1.9
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 481
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1884
# %bb.1883:                             # %for.inc687.1.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1885
.LBB0_1884:                             # %if.then659.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1886
.LBB0_1885:                             # %if.else672.1.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1886:                             # %for.inc687.1.10
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 485
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1888
# %bb.1887:                             # %for.inc687.1.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1889
.LBB0_1888:                             # %if.then659.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1890
.LBB0_1889:                             # %if.else672.1.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1890:                             # %for.inc687.1.11
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 489
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1892
# %bb.1891:                             # %for.inc687.1.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1893
.LBB0_1892:                             # %if.then659.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1894
.LBB0_1893:                             # %if.else672.1.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1894:                             # %for.inc687.1.12
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 493
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1896
# %bb.1895:                             # %for.inc687.1.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1897
.LBB0_1896:                             # %if.then659.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1898
.LBB0_1897:                             # %if.else672.1.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1898:                             # %for.inc687.1.13
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 497
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1900
# %bb.1899:                             # %for.inc687.1.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1901
.LBB0_1900:                             # %if.then659.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1902
.LBB0_1901:                             # %if.else672.1.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1902:                             # %for.inc687.1.14
	addi.d	$a0, $a0, 120
	addi.d	$a1, $s0, 501
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 505
	beq	$a0, $a2, .LBB0_1904
# %bb.1903:                             # %for.inc687.1.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1905
.LBB0_1904:                             # %if.then659.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1906
.LBB0_1905:                             # %if.else672.2
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1906:                             # %for.inc687.2
	addi.d	$a2, $a0, 240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1908
# %bb.1907:                             # %for.inc687.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1909
.LBB0_1908:                             # %if.then659.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1910
.LBB0_1909:                             # %if.else672.2.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1910:                             # %for.inc687.2.1
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 509
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1912
# %bb.1911:                             # %for.inc687.2.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1913
.LBB0_1912:                             # %if.then659.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1914
.LBB0_1913:                             # %if.else672.2.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1914:                             # %for.inc687.2.2
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 513
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1916
# %bb.1915:                             # %for.inc687.2.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1917
.LBB0_1916:                             # %if.then659.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1918
.LBB0_1917:                             # %if.else672.2.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1918:                             # %for.inc687.2.3
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 517
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1920
# %bb.1919:                             # %for.inc687.2.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1921
.LBB0_1920:                             # %if.then659.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1922
.LBB0_1921:                             # %if.else672.2.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1922:                             # %for.inc687.2.4
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 521
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1924
# %bb.1923:                             # %for.inc687.2.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1925
.LBB0_1924:                             # %if.then659.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1926
.LBB0_1925:                             # %if.else672.2.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1926:                             # %for.inc687.2.5
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 525
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1928
# %bb.1927:                             # %for.inc687.2.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1929
.LBB0_1928:                             # %if.then659.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1930
.LBB0_1929:                             # %if.else672.2.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1930:                             # %for.inc687.2.6
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 529
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1932
# %bb.1931:                             # %for.inc687.2.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1933
.LBB0_1932:                             # %if.then659.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1934
.LBB0_1933:                             # %if.else672.2.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1934:                             # %for.inc687.2.7
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 533
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1936
# %bb.1935:                             # %for.inc687.2.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1937
.LBB0_1936:                             # %if.then659.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1938
.LBB0_1937:                             # %if.else672.2.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1938:                             # %for.inc687.2.8
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 537
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1940
# %bb.1939:                             # %for.inc687.2.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1941
.LBB0_1940:                             # %if.then659.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1942
.LBB0_1941:                             # %if.else672.2.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1942:                             # %for.inc687.2.9
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 541
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1944
# %bb.1943:                             # %for.inc687.2.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1945
.LBB0_1944:                             # %if.then659.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1946
.LBB0_1945:                             # %if.else672.2.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1946:                             # %for.inc687.2.10
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 545
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1948
# %bb.1947:                             # %for.inc687.2.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1949
.LBB0_1948:                             # %if.then659.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1950
.LBB0_1949:                             # %if.else672.2.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1950:                             # %for.inc687.2.11
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 549
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1952
# %bb.1951:                             # %for.inc687.2.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1953
.LBB0_1952:                             # %if.then659.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1954
.LBB0_1953:                             # %if.else672.2.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1954:                             # %for.inc687.2.12
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 553
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1956
# %bb.1955:                             # %for.inc687.2.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1957
.LBB0_1956:                             # %if.then659.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1958
.LBB0_1957:                             # %if.else672.2.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1958:                             # %for.inc687.2.13
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 557
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1960
# %bb.1959:                             # %for.inc687.2.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1961
.LBB0_1960:                             # %if.then659.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1962
.LBB0_1961:                             # %if.else672.2.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1962:                             # %for.inc687.2.14
	addi.d	$a0, $a0, 240
	addi.d	$a1, $s0, 561
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 565
	beq	$a0, $a2, .LBB0_1964
# %bb.1963:                             # %for.inc687.2.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_1965
.LBB0_1964:                             # %if.then659.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_1966
.LBB0_1965:                             # %if.else672.3
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_1966:                             # %for.inc687.3
	addi.d	$a2, $a0, 360
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1968
# %bb.1967:                             # %for.inc687.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1969
.LBB0_1968:                             # %if.then659.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1970
.LBB0_1969:                             # %if.else672.3.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1970:                             # %for.inc687.3.1
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 569
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1972
# %bb.1971:                             # %for.inc687.3.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1973
.LBB0_1972:                             # %if.then659.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1974
.LBB0_1973:                             # %if.else672.3.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1974:                             # %for.inc687.3.2
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 573
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1976
# %bb.1975:                             # %for.inc687.3.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1977
.LBB0_1976:                             # %if.then659.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1978
.LBB0_1977:                             # %if.else672.3.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1978:                             # %for.inc687.3.3
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 577
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1980
# %bb.1979:                             # %for.inc687.3.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1981
.LBB0_1980:                             # %if.then659.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1982
.LBB0_1981:                             # %if.else672.3.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1982:                             # %for.inc687.3.4
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 581
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1984
# %bb.1983:                             # %for.inc687.3.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1985
.LBB0_1984:                             # %if.then659.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1986
.LBB0_1985:                             # %if.else672.3.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1986:                             # %for.inc687.3.5
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 585
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1988
# %bb.1987:                             # %for.inc687.3.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1989
.LBB0_1988:                             # %if.then659.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1990
.LBB0_1989:                             # %if.else672.3.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1990:                             # %for.inc687.3.6
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 589
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1992
# %bb.1991:                             # %for.inc687.3.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1993
.LBB0_1992:                             # %if.then659.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1994
.LBB0_1993:                             # %if.else672.3.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1994:                             # %for.inc687.3.7
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 593
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_1996
# %bb.1995:                             # %for.inc687.3.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_1997
.LBB0_1996:                             # %if.then659.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_1998
.LBB0_1997:                             # %if.else672.3.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_1998:                             # %for.inc687.3.8
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 597
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2000
# %bb.1999:                             # %for.inc687.3.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2001
.LBB0_2000:                             # %if.then659.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2002
.LBB0_2001:                             # %if.else672.3.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2002:                             # %for.inc687.3.9
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 601
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2004
# %bb.2003:                             # %for.inc687.3.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2005
.LBB0_2004:                             # %if.then659.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2006
.LBB0_2005:                             # %if.else672.3.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2006:                             # %for.inc687.3.10
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 605
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2008
# %bb.2007:                             # %for.inc687.3.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2009
.LBB0_2008:                             # %if.then659.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2010
.LBB0_2009:                             # %if.else672.3.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2010:                             # %for.inc687.3.11
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 609
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2012
# %bb.2011:                             # %for.inc687.3.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2013
.LBB0_2012:                             # %if.then659.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2014
.LBB0_2013:                             # %if.else672.3.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2014:                             # %for.inc687.3.12
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 613
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2016
# %bb.2015:                             # %for.inc687.3.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2017
.LBB0_2016:                             # %if.then659.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2018
.LBB0_2017:                             # %if.else672.3.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2018:                             # %for.inc687.3.13
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 617
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2020
# %bb.2019:                             # %for.inc687.3.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2021
.LBB0_2020:                             # %if.then659.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2022
.LBB0_2021:                             # %if.else672.3.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2022:                             # %for.inc687.3.14
	addi.d	$a0, $a0, 360
	addi.d	$a1, $s0, 621
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 625
	beq	$a0, $a2, .LBB0_2024
# %bb.2023:                             # %for.inc687.3.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2025
.LBB0_2024:                             # %if.then659.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_2026
.LBB0_2025:                             # %if.else672.4
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_2026:                             # %for.inc687.4
	addi.d	$a2, $a0, 480
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2028
# %bb.2027:                             # %for.inc687.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2029
.LBB0_2028:                             # %if.then659.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2030
.LBB0_2029:                             # %if.else672.4.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2030:                             # %for.inc687.4.1
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 629
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2032
# %bb.2031:                             # %for.inc687.4.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2033
.LBB0_2032:                             # %if.then659.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2034
.LBB0_2033:                             # %if.else672.4.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2034:                             # %for.inc687.4.2
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 633
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2036
# %bb.2035:                             # %for.inc687.4.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2037
.LBB0_2036:                             # %if.then659.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2038
.LBB0_2037:                             # %if.else672.4.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2038:                             # %for.inc687.4.3
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 637
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2040
# %bb.2039:                             # %for.inc687.4.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2041
.LBB0_2040:                             # %if.then659.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2042
.LBB0_2041:                             # %if.else672.4.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2042:                             # %for.inc687.4.4
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 641
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2044
# %bb.2043:                             # %for.inc687.4.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2045
.LBB0_2044:                             # %if.then659.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2046
.LBB0_2045:                             # %if.else672.4.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2046:                             # %for.inc687.4.5
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 645
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2048
# %bb.2047:                             # %for.inc687.4.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2049
.LBB0_2048:                             # %if.then659.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2050
.LBB0_2049:                             # %if.else672.4.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2050:                             # %for.inc687.4.6
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 649
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2052
# %bb.2051:                             # %for.inc687.4.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2053
.LBB0_2052:                             # %if.then659.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2054
.LBB0_2053:                             # %if.else672.4.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2054:                             # %for.inc687.4.7
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 653
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2056
# %bb.2055:                             # %for.inc687.4.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2057
.LBB0_2056:                             # %if.then659.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2058
.LBB0_2057:                             # %if.else672.4.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2058:                             # %for.inc687.4.8
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 657
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2060
# %bb.2059:                             # %for.inc687.4.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2061
.LBB0_2060:                             # %if.then659.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2062
.LBB0_2061:                             # %if.else672.4.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2062:                             # %for.inc687.4.9
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 661
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2064
# %bb.2063:                             # %for.inc687.4.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2065
.LBB0_2064:                             # %if.then659.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2066
.LBB0_2065:                             # %if.else672.4.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2066:                             # %for.inc687.4.10
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 665
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2068
# %bb.2067:                             # %for.inc687.4.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2069
.LBB0_2068:                             # %if.then659.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2070
.LBB0_2069:                             # %if.else672.4.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2070:                             # %for.inc687.4.11
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 669
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2072
# %bb.2071:                             # %for.inc687.4.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2073
.LBB0_2072:                             # %if.then659.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2074
.LBB0_2073:                             # %if.else672.4.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2074:                             # %for.inc687.4.12
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 673
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2076
# %bb.2075:                             # %for.inc687.4.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2077
.LBB0_2076:                             # %if.then659.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2078
.LBB0_2077:                             # %if.else672.4.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2078:                             # %for.inc687.4.13
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 677
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2080
# %bb.2079:                             # %for.inc687.4.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2081
.LBB0_2080:                             # %if.then659.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2082
.LBB0_2081:                             # %if.else672.4.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2082:                             # %for.inc687.4.14
	addi.d	$a0, $a0, 480
	addi.d	$a1, $s0, 681
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 685
	beq	$a0, $a2, .LBB0_2084
# %bb.2083:                             # %for.inc687.4.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2085
.LBB0_2084:                             # %if.then659.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_2086
.LBB0_2085:                             # %if.else672.5
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_2086:                             # %for.inc687.5
	addi.d	$a2, $a0, 600
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2088
# %bb.2087:                             # %for.inc687.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2089
.LBB0_2088:                             # %if.then659.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2090
.LBB0_2089:                             # %if.else672.5.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2090:                             # %for.inc687.5.1
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 689
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2092
# %bb.2091:                             # %for.inc687.5.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2093
.LBB0_2092:                             # %if.then659.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2094
.LBB0_2093:                             # %if.else672.5.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2094:                             # %for.inc687.5.2
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 693
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2096
# %bb.2095:                             # %for.inc687.5.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2097
.LBB0_2096:                             # %if.then659.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2098
.LBB0_2097:                             # %if.else672.5.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2098:                             # %for.inc687.5.3
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 697
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2100
# %bb.2099:                             # %for.inc687.5.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2101
.LBB0_2100:                             # %if.then659.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2102
.LBB0_2101:                             # %if.else672.5.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2102:                             # %for.inc687.5.4
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 701
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2104
# %bb.2103:                             # %for.inc687.5.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2105
.LBB0_2104:                             # %if.then659.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2106
.LBB0_2105:                             # %if.else672.5.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2106:                             # %for.inc687.5.5
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 705
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2108
# %bb.2107:                             # %for.inc687.5.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2109
.LBB0_2108:                             # %if.then659.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2110
.LBB0_2109:                             # %if.else672.5.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2110:                             # %for.inc687.5.6
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 709
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2112
# %bb.2111:                             # %for.inc687.5.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2113
.LBB0_2112:                             # %if.then659.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2114
.LBB0_2113:                             # %if.else672.5.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2114:                             # %for.inc687.5.7
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 713
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2116
# %bb.2115:                             # %for.inc687.5.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2117
.LBB0_2116:                             # %if.then659.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2118
.LBB0_2117:                             # %if.else672.5.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2118:                             # %for.inc687.5.8
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 717
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2120
# %bb.2119:                             # %for.inc687.5.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2121
.LBB0_2120:                             # %if.then659.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2122
.LBB0_2121:                             # %if.else672.5.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2122:                             # %for.inc687.5.9
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 721
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2124
# %bb.2123:                             # %for.inc687.5.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2125
.LBB0_2124:                             # %if.then659.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2126
.LBB0_2125:                             # %if.else672.5.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2126:                             # %for.inc687.5.10
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 725
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2128
# %bb.2127:                             # %for.inc687.5.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2129
.LBB0_2128:                             # %if.then659.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2130
.LBB0_2129:                             # %if.else672.5.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2130:                             # %for.inc687.5.11
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 729
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2132
# %bb.2131:                             # %for.inc687.5.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2133
.LBB0_2132:                             # %if.then659.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2134
.LBB0_2133:                             # %if.else672.5.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2134:                             # %for.inc687.5.12
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 733
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2136
# %bb.2135:                             # %for.inc687.5.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2137
.LBB0_2136:                             # %if.then659.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2138
.LBB0_2137:                             # %if.else672.5.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2138:                             # %for.inc687.5.13
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 737
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2140
# %bb.2139:                             # %for.inc687.5.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2141
.LBB0_2140:                             # %if.then659.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2142
.LBB0_2141:                             # %if.else672.5.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2142:                             # %for.inc687.5.14
	addi.d	$a0, $a0, 600
	addi.d	$a1, $s0, 741
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 745
	beq	$a0, $a2, .LBB0_2144
# %bb.2143:                             # %for.inc687.5.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2145
.LBB0_2144:                             # %if.then659.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_2146
.LBB0_2145:                             # %if.else672.6
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_2146:                             # %for.inc687.6
	addi.d	$a2, $a0, 720
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2148
# %bb.2147:                             # %for.inc687.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2149
.LBB0_2148:                             # %if.then659.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2150
.LBB0_2149:                             # %if.else672.6.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2150:                             # %for.inc687.6.1
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 749
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2152
# %bb.2151:                             # %for.inc687.6.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2153
.LBB0_2152:                             # %if.then659.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2154
.LBB0_2153:                             # %if.else672.6.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2154:                             # %for.inc687.6.2
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 753
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2156
# %bb.2155:                             # %for.inc687.6.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2157
.LBB0_2156:                             # %if.then659.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2158
.LBB0_2157:                             # %if.else672.6.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2158:                             # %for.inc687.6.3
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 757
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2160
# %bb.2159:                             # %for.inc687.6.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2161
.LBB0_2160:                             # %if.then659.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2162
.LBB0_2161:                             # %if.else672.6.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2162:                             # %for.inc687.6.4
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 761
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2164
# %bb.2163:                             # %for.inc687.6.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2165
.LBB0_2164:                             # %if.then659.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2166
.LBB0_2165:                             # %if.else672.6.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2166:                             # %for.inc687.6.5
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 765
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2168
# %bb.2167:                             # %for.inc687.6.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2169
.LBB0_2168:                             # %if.then659.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2170
.LBB0_2169:                             # %if.else672.6.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2170:                             # %for.inc687.6.6
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 769
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2172
# %bb.2171:                             # %for.inc687.6.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2173
.LBB0_2172:                             # %if.then659.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2174
.LBB0_2173:                             # %if.else672.6.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2174:                             # %for.inc687.6.7
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 773
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2176
# %bb.2175:                             # %for.inc687.6.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2177
.LBB0_2176:                             # %if.then659.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2178
.LBB0_2177:                             # %if.else672.6.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2178:                             # %for.inc687.6.8
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 777
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2180
# %bb.2179:                             # %for.inc687.6.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2181
.LBB0_2180:                             # %if.then659.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2182
.LBB0_2181:                             # %if.else672.6.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2182:                             # %for.inc687.6.9
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 781
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2184
# %bb.2183:                             # %for.inc687.6.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2185
.LBB0_2184:                             # %if.then659.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2186
.LBB0_2185:                             # %if.else672.6.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2186:                             # %for.inc687.6.10
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 785
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2188
# %bb.2187:                             # %for.inc687.6.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2189
.LBB0_2188:                             # %if.then659.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2190
.LBB0_2189:                             # %if.else672.6.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2190:                             # %for.inc687.6.11
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 789
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2192
# %bb.2191:                             # %for.inc687.6.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2193
.LBB0_2192:                             # %if.then659.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2194
.LBB0_2193:                             # %if.else672.6.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2194:                             # %for.inc687.6.12
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 793
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2196
# %bb.2195:                             # %for.inc687.6.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2197
.LBB0_2196:                             # %if.then659.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2198
.LBB0_2197:                             # %if.else672.6.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2198:                             # %for.inc687.6.13
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 797
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2200
# %bb.2199:                             # %for.inc687.6.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2201
.LBB0_2200:                             # %if.then659.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2202
.LBB0_2201:                             # %if.else672.6.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2202:                             # %for.inc687.6.14
	addi.d	$a0, $a0, 720
	addi.d	$a1, $s0, 801
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	addi.d	$a1, $s0, 805
	beq	$a0, $a2, .LBB0_2204
# %bb.2203:                             # %for.inc687.6.14
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_2205
.LBB0_2204:                             # %if.then659.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s1, $a0
	b	.LBB0_2206
.LBB0_2205:                             # %if.else672.7
	ld.w	$a0, $s8, 0
	ori	$a2, $zero, 960
	mul.d	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a2, $a2, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a2, $a0
.LBB0_2206:                             # %for.inc687.7
	addi.d	$a2, $a0, 840
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2208
# %bb.2207:                             # %for.inc687.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2209
.LBB0_2208:                             # %if.then659.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2210
.LBB0_2209:                             # %if.else672.7.1
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2210:                             # %for.inc687.7.1
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 809
	addi.d	$a2, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2212
# %bb.2211:                             # %for.inc687.7.1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2213
.LBB0_2212:                             # %if.then659.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2214
.LBB0_2213:                             # %if.else672.7.2
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2214:                             # %for.inc687.7.2
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 813
	addi.d	$a2, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2216
# %bb.2215:                             # %for.inc687.7.2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2217
.LBB0_2216:                             # %if.then659.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2218
.LBB0_2217:                             # %if.else672.7.3
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2218:                             # %for.inc687.7.3
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 817
	addi.d	$a2, $a0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2220
# %bb.2219:                             # %for.inc687.7.3
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2221
.LBB0_2220:                             # %if.then659.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2222
.LBB0_2221:                             # %if.else672.7.4
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2222:                             # %for.inc687.7.4
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 821
	addi.d	$a2, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2224
# %bb.2223:                             # %for.inc687.7.4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2225
.LBB0_2224:                             # %if.then659.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2226
.LBB0_2225:                             # %if.else672.7.5
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2226:                             # %for.inc687.7.5
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 825
	addi.d	$a2, $a0, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2228
# %bb.2227:                             # %for.inc687.7.5
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2229
.LBB0_2228:                             # %if.then659.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2230
.LBB0_2229:                             # %if.else672.7.6
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2230:                             # %for.inc687.7.6
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 829
	addi.d	$a2, $a0, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2232
# %bb.2231:                             # %for.inc687.7.6
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2233
.LBB0_2232:                             # %if.then659.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2234
.LBB0_2233:                             # %if.else672.7.7
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2234:                             # %for.inc687.7.7
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 833
	addi.d	$a2, $a0, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2236
# %bb.2235:                             # %for.inc687.7.7
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2237
.LBB0_2236:                             # %if.then659.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2238
.LBB0_2237:                             # %if.else672.7.8
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2238:                             # %for.inc687.7.8
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 837
	addi.d	$a2, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2240
# %bb.2239:                             # %for.inc687.7.8
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2241
.LBB0_2240:                             # %if.then659.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2242
.LBB0_2241:                             # %if.else672.7.9
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2242:                             # %for.inc687.7.9
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 841
	addi.d	$a2, $a0, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2244
# %bb.2243:                             # %for.inc687.7.9
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2245
.LBB0_2244:                             # %if.then659.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2246
.LBB0_2245:                             # %if.else672.7.10
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2246:                             # %for.inc687.7.10
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 845
	addi.d	$a2, $a0, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2248
# %bb.2247:                             # %for.inc687.7.10
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2249
.LBB0_2248:                             # %if.then659.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2250
.LBB0_2249:                             # %if.else672.7.11
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2250:                             # %for.inc687.7.11
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 849
	addi.d	$a2, $a0, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2252
# %bb.2251:                             # %for.inc687.7.11
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2253
.LBB0_2252:                             # %if.then659.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2254
.LBB0_2253:                             # %if.else672.7.12
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2254:                             # %for.inc687.7.12
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 853
	addi.d	$a2, $a0, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2256
# %bb.2255:                             # %for.inc687.7.12
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2257
.LBB0_2256:                             # %if.then659.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2258
.LBB0_2257:                             # %if.else672.7.13
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2258:                             # %for.inc687.7.13
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 857
	addi.d	$a2, $a0, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(biari_init_context)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_2260
# %bb.2259:                             # %for.inc687.7.13
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_2261
.LBB0_2260:                             # %if.then659.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s1, $a0
	b	.LBB0_2262
.LBB0_2261:                             # %if.else672.7.14
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 960
	mul.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(INIT_FLD_LAST_P)
	addi.d	$a1, $a1, %pc_lo12(INIT_FLD_LAST_P)
	add.d	$a0, $a1, $a0
.LBB0_2262:                             # %for.inc687.7.14
	addi.d	$a0, $a0, 840
	addi.d	$a1, $s0, 861
	addi.d	$a2, $a0, 112
	move	$a0, $fp
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(biari_init_context)
	jr	$t8
.Lfunc_end0:
	.size	init_contexts, .Lfunc_end0-init_contexts
                                        # -- End function
	.type	INIT_MB_TYPE_I,@object          # @INIT_MB_TYPE_I
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
INIT_MB_TYPE_I:
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	4294967281                      # 0xfffffff1
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	74                              # 0x4a
	.word	4294967268                      # 0xffffffe4
	.word	127                             # 0x7f
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_I, 264

	.type	INIT_MB_TYPE_P,@object          # @INIT_MB_TYPE_P
	.p2align	2, 0x0
INIT_MB_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	23                              # 0x17
	.word	2                               # 0x2
	.word	21                              # 0x15
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	4294967259                      # 0xffffffdb
	.word	118                             # 0x76
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	65                              # 0x41
	.word	1                               # 0x1
	.word	62                              # 0x3e
	.word	26                              # 0x1a
	.word	67                              # 0x43
	.word	16                              # 0x10
	.word	90                              # 0x5a
	.word	9                               # 0x9
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	4294967276                      # 0xffffffec
	.word	104                             # 0x68
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	18                              # 0x12
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	43                              # 0x2b
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	9                               # 0x9
	.word	4                               # 0x4
	.word	41                              # 0x29
	.word	4294967267                      # 0xffffffe3
	.word	118                             # 0x76
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	79                              # 0x4f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	57                              # 0x39
	.word	2                               # 0x2
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	26                              # 0x1a
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967251                      # 0xffffffd3
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	101                             # 0x65
	.word	4294967292                      # 0xfffffffc
	.word	76                              # 0x4c
	.word	26                              # 0x1a
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	29                              # 0x1d
	.word	16                              # 0x10
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	51                              # 0x33
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967269                      # 0xffffffe5
	.word	99                              # 0x63
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	4294967292                      # 0xfffffffc
	.word	85                              # 0x55
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	5                               # 0x5
	.word	57                              # 0x39
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	37                              # 0x25
	.word	42                              # 0x2a
	.word	12                              # 0xc
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967264                      # 0xffffffe0
	.word	127                             # 0x7f
	.word	4294967274                      # 0xffffffea
	.word	117                             # 0x75
	.word	4294967294                      # 0xfffffffe
	.word	74                              # 0x4a
	.word	20                              # 0x14
	.word	40                              # 0x28
	.word	20                              # 0x14
	.word	10                              # 0xa
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_TYPE_P, 792

	.type	INIT_B8_TYPE_I,@object          # @INIT_B8_TYPE_I
	.p2align	2, 0x0
INIT_B8_TYPE_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_I, 144

	.type	INIT_B8_TYPE_P,@object          # @INIT_B8_TYPE_P
	.p2align	2, 0x0
INIT_B8_TYPE_P:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	73                              # 0x49
	.word	17                              # 0x11
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	86                              # 0x56
	.word	4294967279                      # 0xffffffef
	.word	95                              # 0x5f
	.word	4294967290                      # 0xfffffffa
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	50                              # 0x32
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	10                              # 0xa
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	8                               # 0x8
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	73                              # 0x49
	.word	14                              # 0xe
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967282                      # 0xfffffff2
	.word	88                              # 0x58
	.word	4294967290                      # 0xfffffffa
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_B8_TYPE_P, 432

	.type	INIT_MV_RES_I,@object           # @INIT_MV_RES_I
	.p2align	2, 0x0
INIT_MV_RES_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_I, 160

	.type	INIT_MV_RES_P,@object           # @INIT_MV_RES_P
	.p2align	2, 0x0
INIT_MV_RES_P:
	.word	4294967293                      # 0xfffffffd
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	2                               # 0x2
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	4                               # 0x4
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967289                      # 0xfffffff9
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967281                      # 0xfffffff1
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	116                             # 0x74
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	20                              # 0x14
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	84                              # 0x54
	.word	6                               # 0x6
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	90                              # 0x5a
	.word	4294967295                      # 0xffffffff
	.word	101                             # 0x65
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MV_RES_P, 480

	.type	INIT_REF_NO_I,@object           # @INIT_REF_NO_I
	.p2align	2, 0x0
INIT_REF_NO_I:
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_I, 96

	.type	INIT_REF_NO_P,@object           # @INIT_REF_NO_P
	.p2align	2, 0x0
INIT_REF_NO_P:
	.word	4294967289                      # 0xfffffff9
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	80                              # 0x50
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	77                              # 0x4d
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	86                              # 0x56
	.word	4294967291                      # 0xfffffffb
	.word	72                              # 0x48
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	50                              # 0x32
	.word	1                               # 0x1
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_REF_NO_P, 288

	.type	INIT_DELTA_QP_I,@object         # @INIT_DELTA_QP_I
	.p2align	2, 0x0
INIT_DELTA_QP_I:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_I, 32

	.type	INIT_DELTA_QP_P,@object         # @INIT_DELTA_QP_P
	.p2align	2, 0x0
INIT_DELTA_QP_P:
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	63                              # 0x3f
	.size	INIT_DELTA_QP_P, 96

	.type	INIT_MB_AFF_I,@object           # @INIT_MB_AFF_I
	.p2align	2, 0x0
INIT_MB_AFF_I:
	.word	0                               # 0x0
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_I, 32

	.type	INIT_MB_AFF_P,@object           # @INIT_MB_AFF_P
	.p2align	2, 0x0
INIT_MB_AFF_P:
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	4294967293                      # 0xfffffffd
	.word	96                              # 0x60
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_MB_AFF_P, 96

	.type	INIT_TRANSFORM_SIZE_I,@object   # @INIT_TRANSFORM_SIZE_I
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_I:
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	31                              # 0x1f
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	50                              # 0x32
	.size	INIT_TRANSFORM_SIZE_I, 24

	.type	INIT_TRANSFORM_SIZE_P,@object   # @INIT_TRANSFORM_SIZE_P
	.p2align	2, 0x0
INIT_TRANSFORM_SIZE_P:
	.word	12                              # 0xc
	.word	40                              # 0x28
	.word	11                              # 0xb
	.word	51                              # 0x33
	.word	14                              # 0xe
	.word	59                              # 0x3b
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	21                              # 0x15
	.word	49                              # 0x31
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	50                              # 0x32
	.word	17                              # 0x11
	.word	61                              # 0x3d
	.size	INIT_TRANSFORM_SIZE_P, 72

	.type	INIT_IPR_I,@object              # @INIT_IPR_I
	.p2align	2, 0x0
INIT_IPR_I:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_I, 16

	.type	INIT_IPR_P,@object              # @INIT_IPR_P
	.p2align	2, 0x0
INIT_IPR_P:
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.size	INIT_IPR_P, 48

	.type	INIT_CIPR_I,@object             # @INIT_CIPR_I
	.p2align	2, 0x0
INIT_CIPR_I:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_I, 32

	.type	INIT_CIPR_P,@object             # @INIT_CIPR_P
	.p2align	2, 0x0
INIT_CIPR_P:
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4                               # 0x4
	.word	86                              # 0x56
	.word	0                               # 0x0
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.size	INIT_CIPR_P, 96

	.type	INIT_CBP_I,@object              # @INIT_CBP_I
	.p2align	2, 0x0
INIT_CBP_I:
	.word	4294967279                      # 0xffffffef
	.word	127                             # 0x7f
	.word	4294967283                      # 0xfffffff3
	.word	102                             # 0x66
	.word	0                               # 0x0
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	95                              # 0x5f
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.size	INIT_CBP_I, 96

	.type	INIT_CBP_P,@object              # @INIT_CBP_P
	.p2align	2, 0x0
INIT_CBP_P:
	.word	4294967269                      # 0xffffffe5
	.word	126                             # 0x7e
	.word	4294967268                      # 0xffffffe4
	.word	98                              # 0x62
	.word	4294967271                      # 0xffffffe7
	.word	101                             # 0x65
	.word	4294967273                      # 0xffffffe9
	.word	67                              # 0x43
	.word	4294967268                      # 0xffffffe4
	.word	82                              # 0x52
	.word	4294967276                      # 0xffffffec
	.word	94                              # 0x5e
	.word	4294967280                      # 0xfffffff0
	.word	83                              # 0x53
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	91                              # 0x5b
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967283                      # 0xfffffff3
	.word	93                              # 0x5d
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967257                      # 0xffffffd9
	.word	127                             # 0x7f
	.word	4294967278                      # 0xffffffee
	.word	91                              # 0x5b
	.word	4294967279                      # 0xffffffef
	.word	96                              # 0x60
	.word	4294967270                      # 0xffffffe6
	.word	81                              # 0x51
	.word	4294967261                      # 0xffffffdd
	.word	98                              # 0x62
	.word	4294967272                      # 0xffffffe8
	.word	102                             # 0x66
	.word	4294967273                      # 0xffffffe9
	.word	97                              # 0x61
	.word	4294967269                      # 0xffffffe5
	.word	119                             # 0x77
	.word	4294967272                      # 0xffffffe8
	.word	99                              # 0x63
	.word	4294967275                      # 0xffffffeb
	.word	110                             # 0x6e
	.word	4294967278                      # 0xffffffee
	.word	102                             # 0x66
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967260                      # 0xffffffdc
	.word	127                             # 0x7f
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967271                      # 0xffffffe7
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	89                              # 0x59
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	4294967282                      # 0xfffffff2
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.size	INIT_CBP_P, 288

	.type	INIT_BCBP_I,@object             # @INIT_BCBP_I
	.p2align	2, 0x0
INIT_BCBP_I:
	.word	4294967279                      # 0xffffffef
	.word	123                             # 0x7b
	.word	4294967284                      # 0xfffffff4
	.word	115                             # 0x73
	.word	4294967280                      # 0xfffffff0
	.word	122                             # 0x7a
	.word	4294967285                      # 0xfffffff5
	.word	115                             # 0x73
	.word	4294967284                      # 0xfffffff4
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	68                              # 0x44
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967283                      # 0xfffffff3
	.word	104                             # 0x68
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	93                              # 0x5d
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967290                      # 0xfffffffa
	.word	97                              # 0x61
	.word	4294967289                      # 0xfffffff9
	.word	91                              # 0x5b
	.word	4294967276                      # 0xffffffec
	.word	127                             # 0x7f
	.word	4294967292                      # 0xfffffffc
	.word	56                              # 0x38
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967289                      # 0xfffffff9
	.word	76                              # 0x4c
	.word	4294967274                      # 0xffffffea
	.word	125                             # 0x7d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_I, 256

	.type	INIT_BCBP_P,@object             # @INIT_BCBP_P
	.p2align	2, 0x0
INIT_BCBP_P:
	.word	4294967289                      # 0xfffffff9
	.word	92                              # 0x5c
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	96                              # 0x60
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	65                              # 0x41
	.word	4294967295                      # 0xffffffff
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	126                             # 0x7e
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967288                      # 0xfffffff8
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	80                              # 0x50
	.word	4294967291                      # 0xfffffffb
	.word	89                              # 0x59
	.word	4294967289                      # 0xfffffff9
	.word	94                              # 0x5e
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967281                      # 0xfffffff1
	.word	84                              # 0x54
	.word	4294967261                      # 0xffffffdd
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967265                      # 0xffffffe1
	.word	127                             # 0x7f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	7                               # 0x7
	.word	56                              # 0x38
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	4294967293                      # 0xfffffffd
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967289                      # 0xfffffff9
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	80                              # 0x50
	.word	5                               # 0x5
	.word	76                              # 0x4c
	.word	2                               # 0x2
	.word	84                              # 0x54
	.word	5                               # 0x5
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	4                               # 0x4
	.word	61                              # 0x3d
	.word	4294967282                      # 0xfffffff2
	.word	83                              # 0x53
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	79                              # 0x4f
	.word	4294967285                      # 0xfffffff5
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	91                              # 0x5b
	.word	4294967266                      # 0xffffffe2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967294                      # 0xfffffffe
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	92                              # 0x5c
	.word	4294967290                      # 0xfffffffa
	.word	56                              # 0x38
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	4294967288                      # 0xfffffff8
	.word	71                              # 0x47
	.word	4294967283                      # 0xfffffff3
	.word	98                              # 0x62
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_BCBP_P, 768

	.type	INIT_MAP_I,@object              # @INIT_MAP_I
	.p2align	2, 0x0
INIT_MAP_I:
	.word	4294967289                      # 0xfffffff9
	.word	93                              # 0x5d
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	4294967292                      # 0xfffffffc
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	68                              # 0x44
	.word	4294967284                      # 0xfffffff4
	.word	84                              # 0x54
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	65                              # 0x41
	.word	8                               # 0x8
	.word	61                              # 0x3d
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	4294967294                      # 0xfffffffe
	.word	66                              # 0x42
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967294                      # 0xfffffffe
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	7                               # 0x7
	.word	52                              # 0x34
	.word	10                              # 0xa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	1                               # 0x1
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	28                              # 0x1c
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	33                              # 0x21
	.word	14                              # 0xe
	.word	62                              # 0x3e
	.word	4294967279                      # 0xffffffef
	.word	120                             # 0x78
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967278                      # 0xffffffee
	.word	114                             # 0x72
	.word	4294967285                      # 0xfffffff5
	.word	85                              # 0x55
	.word	4294967281                      # 0xfffffff1
	.word	92                              # 0x5c
	.word	4294967282                      # 0xfffffff2
	.word	89                              # 0x59
	.word	4294967270                      # 0xffffffe6
	.word	71                              # 0x47
	.word	4294967281                      # 0xfffffff1
	.word	81                              # 0x51
	.word	4294967282                      # 0xfffffff2
	.word	80                              # 0x50
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967282                      # 0xfffffff2
	.word	70                              # 0x46
	.word	4294967272                      # 0xffffffe8
	.word	56                              # 0x38
	.word	4294967273                      # 0xffffffe9
	.word	68                              # 0x44
	.word	4294967272                      # 0xffffffe8
	.word	50                              # 0x32
	.word	4294967285                      # 0xfffffff5
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	108                             # 0x6c
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	4294967283                      # 0xfffffff3
	.word	101                             # 0x65
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967284                      # 0xfffffff4
	.word	94                              # 0x5e
	.word	4294967286                      # 0xfffffff6
	.word	88                              # 0x58
	.word	4294967280                      # 0xfffffff0
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967289                      # 0xfffffff9
	.word	83                              # 0x53
	.word	4294967283                      # 0xfffffff3
	.word	87                              # 0x57
	.word	4294967277                      # 0xffffffed
	.word	94                              # 0x5e
	.word	1                               # 0x1
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	18                              # 0x12
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	102                             # 0x66
	.word	4294967281                      # 0xfffffff1
	.word	100                             # 0x64
	.word	0                               # 0x0
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	4294967283                      # 0xfffffff3
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	21                              # 0x15
	.word	37                              # 0x25
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	9                               # 0x9
	.word	57                              # 0x39
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	12                              # 0xc
	.word	72                              # 0x48
	.size	INIT_MAP_I, 960

	.type	INIT_MAP_P,@object              # @INIT_MAP_P
	.p2align	2, 0x0
INIT_MAP_P:
	.word	4294967294                      # 0xfffffffe
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967295                      # 0xffffffff
	.word	75                              # 0x4b
	.word	4294967289                      # 0xfffffff9
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	54                              # 0x36
	.word	5                               # 0x5
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	1                               # 0x1
	.word	50                              # 0x32
	.word	6                               # 0x6
	.word	42                              # 0x2a
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	13                              # 0xd
	.word	29                              # 0x1d
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4294967286                      # 0xfffffff6
	.word	93                              # 0x5d
	.word	4294967289                      # 0xfffffff9
	.word	73                              # 0x49
	.word	4294967294                      # 0xfffffffe
	.word	73                              # 0x49
	.word	13                              # 0xd
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	4294967289                      # 0xfffffff9
	.word	100                             # 0x64
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967291                      # 0xfffffffb
	.word	69                              # 0x45
	.word	4294967287                      # 0xfffffff7
	.word	70                              # 0x46
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967286                      # 0xfffffff6
	.word	68                              # 0x44
	.word	4294967277                      # 0xffffffed
	.word	73                              # 0x49
	.word	4294967284                      # 0xfffffff4
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	70                              # 0x46
	.word	4294967281                      # 0xfffffff1
	.word	67                              # 0x43
	.word	4294967276                      # 0xffffffec
	.word	62                              # 0x3e
	.word	4294967277                      # 0xffffffed
	.word	70                              # 0x46
	.word	4294967280                      # 0xfffffff0
	.word	66                              # 0x42
	.word	4294967274                      # 0xffffffea
	.word	65                              # 0x41
	.word	4294967276                      # 0xffffffec
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	53                              # 0x35
	.word	2                               # 0x2
	.word	53                              # 0x35
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	4294967294                      # 0xfffffffe
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	56                              # 0x38
	.word	4294967283                      # 0xfffffff3
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	69                              # 0x45
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	14                              # 0xe
	.word	39                              # 0x27
	.word	4                               # 0x4
	.word	51                              # 0x33
	.word	13                              # 0xd
	.word	68                              # 0x44
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	61                              # 0x3d
	.word	9                               # 0x9
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	7                               # 0x7
	.word	50                              # 0x32
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	11                              # 0xb
	.word	48                              # 0x30
	.word	4294967291                      # 0xfffffffb
	.word	60                              # 0x3c
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	5                               # 0x5
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	43                              # 0x2b
	.word	4294967295                      # 0xffffffff
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967283                      # 0xfffffff3
	.word	103                             # 0x67
	.word	4294967283                      # 0xfffffff3
	.word	91                              # 0x5b
	.word	4294967287                      # 0xfffffff7
	.word	89                              # 0x59
	.word	4294967282                      # 0xfffffff2
	.word	92                              # 0x5c
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967284                      # 0xfffffff4
	.word	87                              # 0x57
	.word	4294967273                      # 0xffffffe9
	.word	110                             # 0x6e
	.word	4294967272                      # 0xffffffe8
	.word	105                             # 0x69
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967276                      # 0xffffffec
	.word	112                             # 0x70
	.word	4294967279                      # 0xffffffef
	.word	99                              # 0x63
	.word	4294967218                      # 0xffffffb2
	.word	127                             # 0x7f
	.word	4294967226                      # 0xffffffba
	.word	127                             # 0x7f
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967250                      # 0xffffffd2
	.word	127                             # 0x7f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	4294967295                      # 0xffffffff
	.word	55                              # 0x37
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	4294967262                      # 0xffffffde
	.word	119                             # 0x77
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	32                              # 0x20
	.word	20                              # 0x14
	.word	30                              # 0x1e
	.word	22                              # 0x16
	.word	4294967252                      # 0xffffffd4
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	60                              # 0x3c
	.word	4294967293                      # 0xfffffffd
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	67                              # 0x43
	.word	4294967271                      # 0xffffffe7
	.word	84                              # 0x54
	.word	4294967282                      # 0xfffffff2
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	65                              # 0x41
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967285                      # 0xfffffff5
	.word	70                              # 0x46
	.word	18                              # 0x12
	.word	55                              # 0x37
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	9                               # 0x9
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	43                              # 0x2b
	.word	9                               # 0x9
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	46                              # 0x2e
	.word	19                              # 0x13
	.word	38                              # 0x26
	.word	4294967292                      # 0xfffffffc
	.word	66                              # 0x42
	.word	15                              # 0xf
	.word	38                              # 0x26
	.word	12                              # 0xc
	.word	42                              # 0x2a
	.word	9                               # 0x9
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	4294967292                      # 0xfffffffc
	.word	86                              # 0x56
	.word	4294967284                      # 0xfffffff4
	.word	88                              # 0x58
	.word	4294967291                      # 0xfffffffb
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	69                              # 0x45
	.word	4294967295                      # 0xffffffff
	.word	59                              # 0x3b
	.word	5                               # 0x5
	.word	66                              # 0x42
	.word	4                               # 0x4
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967292                      # 0xfffffffc
	.word	44                              # 0x2c
	.word	4294967295                      # 0xffffffff
	.word	69                              # 0x45
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967289                      # 0xfffffff9
	.word	51                              # 0x33
	.word	4294967292                      # 0xfffffffc
	.word	47                              # 0x2f
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967293                      # 0xfffffffd
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	53                              # 0x35
	.word	8                               # 0x8
	.word	76                              # 0x4c
	.word	4294967287                      # 0xfffffff7
	.word	78                              # 0x4e
	.word	4294967285                      # 0xfffffff5
	.word	83                              # 0x53
	.word	9                               # 0x9
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	90                              # 0x5a
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	4294967281                      # 0xfffffff1
	.word	72                              # 0x48
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	80                              # 0x50
	.word	4294967275                      # 0xffffffeb
	.word	83                              # 0x53
	.word	4294967275                      # 0xffffffeb
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	31                              # 0x1f
	.word	4294967271                      # 0xffffffe7
	.word	64                              # 0x40
	.word	4294967267                      # 0xffffffe3
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	75                              # 0x4b
	.word	17                              # 0x11
	.word	63                              # 0x3f
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967291                      # 0xfffffffb
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	27                              # 0x1b
	.word	13                              # 0xd
	.word	91                              # 0x5b
	.word	3                               # 0x3
	.word	65                              # 0x41
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	66                              # 0x42
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4294967293                      # 0xfffffffd
	.word	68                              # 0x44
	.word	4294967276                      # 0xffffffec
	.word	81                              # 0x51
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	1                               # 0x1
	.word	7                               # 0x7
	.word	4294967293                      # 0xfffffffd
	.word	23                              # 0x17
	.word	4294967275                      # 0xffffffeb
	.word	74                              # 0x4a
	.word	16                              # 0x10
	.word	66                              # 0x42
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	17                              # 0x11
	.word	37                              # 0x25
	.word	44                              # 0x2c
	.word	4294967278                      # 0xffffffee
	.word	50                              # 0x32
	.word	4294967262                      # 0xffffffde
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.size	INIT_MAP_P, 2880

	.type	INIT_LAST_I,@object             # @INIT_LAST_I
	.p2align	2, 0x0
INIT_LAST_I:
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	8                               # 0x8
	.word	25                              # 0x19
	.word	13                              # 0xd
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	19                              # 0x13
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	18                              # 0x12
	.word	6                               # 0x6
	.word	29                              # 0x1d
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	7                               # 0x7
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	38                              # 0x26
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	42                              # 0x2a
	.word	13                              # 0xd
	.word	44                              # 0x2c
	.word	16                              # 0x10
	.word	45                              # 0x2d
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	49                              # 0x31
	.word	30                              # 0x1e
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	10                              # 0xa
	.word	55                              # 0x37
	.word	17                              # 0x11
	.word	51                              # 0x33
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	89                              # 0x59
	.word	23                              # 0x17
	.word	4294967283                      # 0xfffffff3
	.word	26                              # 0x1a
	.word	4294967283                      # 0xfffffff3
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	49                              # 0x31
	.word	4294967282                      # 0xfffffff2
	.word	44                              # 0x2c
	.word	3                               # 0x3
	.word	45                              # 0x2d
	.word	6                               # 0x6
	.word	44                              # 0x2c
	.word	34                              # 0x22
	.word	33                              # 0x21
	.word	54                              # 0x36
	.word	19                              # 0x13
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	26                              # 0x1a
	.word	4294967277                      # 0xffffffed
	.word	22                              # 0x16
	.word	4294967279                      # 0xffffffef
	.word	26                              # 0x1a
	.word	4294967279                      # 0xffffffef
	.word	30                              # 0x1e
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967276                      # 0xffffffec
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	37                              # 0x25
	.word	4294967269                      # 0xffffffe5
	.word	33                              # 0x21
	.word	4294967273                      # 0xffffffe9
	.word	40                              # 0x28
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967279                      # 0xffffffef
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	41                              # 0x29
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	1                               # 0x1
	.word	41                              # 0x29
	.word	17                              # 0x11
	.word	30                              # 0x1e
	.word	4294967290                      # 0xfffffffa
	.word	27                              # 0x1b
	.word	3                               # 0x3
	.word	26                              # 0x1a
	.word	22                              # 0x16
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967280                      # 0xfffffff0
	.word	35                              # 0x23
	.word	4294967292                      # 0xfffffffc
	.word	38                              # 0x26
	.word	4294967288                      # 0xfffffff8
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	37                              # 0x25
	.word	3                               # 0x3
	.word	38                              # 0x26
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	16                              # 0x10
	.word	39                              # 0x27
	.word	22                              # 0x16
	.word	14                              # 0xe
	.word	48                              # 0x30
	.word	27                              # 0x1b
	.word	37                              # 0x25
	.word	21                              # 0x15
	.word	60                              # 0x3c
	.word	12                              # 0xc
	.word	68                              # 0x44
	.word	2                               # 0x2
	.word	97                              # 0x61
	.size	INIT_LAST_I, 960

	.type	INIT_LAST_P,@object             # @INIT_LAST_P
	.p2align	2, 0x0
INIT_LAST_P:
	.word	11                              # 0xb
	.word	28                              # 0x1c
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	49                              # 0x31
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	2                               # 0x2
	.word	44                              # 0x2c
	.word	2                               # 0x2
	.word	51                              # 0x33
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	2                               # 0x2
	.word	62                              # 0x3e
	.word	6                               # 0x6
	.word	46                              # 0x2e
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	3                               # 0x3
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	6                               # 0x6
	.word	51                              # 0x33
	.word	6                               # 0x6
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	53                              # 0x35
	.word	6                               # 0x6
	.word	52                              # 0x34
	.word	6                               # 0x6
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	45                              # 0x2d
	.word	14                              # 0xe
	.word	36                              # 0x24
	.word	8                               # 0x8
	.word	53                              # 0x35
	.word	4294967295                      # 0xffffffff
	.word	82                              # 0x52
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	15                              # 0xf
	.word	46                              # 0x2e
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	4294967295                      # 0xffffffff
	.word	84                              # 0x54
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	26                              # 0x1a
	.word	4294967287                      # 0xfffffff7
	.word	33                              # 0x21
	.word	4294967287                      # 0xfffffff7
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	41                              # 0x29
	.word	4294967294                      # 0xfffffffe
	.word	45                              # 0x2d
	.word	3                               # 0x3
	.word	49                              # 0x31
	.word	9                               # 0x9
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	25                              # 0x19
	.word	7                               # 0x7
	.word	30                              # 0x1e
	.word	4294967289                      # 0xfffffff9
	.word	28                              # 0x1c
	.word	3                               # 0x3
	.word	28                              # 0x1c
	.word	4                               # 0x4
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	30                              # 0x1e
	.word	6                               # 0x6
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	30                              # 0x1e
	.word	37                              # 0x25
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	34                              # 0x22
	.word	17                              # 0x11
	.word	70                              # 0x46
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	30                              # 0x1e
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	43                              # 0x2b
	.word	20                              # 0x14
	.word	41                              # 0x29
	.word	11                              # 0xb
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	59                              # 0x3b
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967295                      # 0xffffffff
	.word	94                              # 0x5e
	.word	4294967294                      # 0xfffffffe
	.word	89                              # 0x59
	.word	4294967287                      # 0xfffffff7
	.word	108                             # 0x6c
	.word	4                               # 0x4
	.word	45                              # 0x2d
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	10                              # 0xa
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	4294967285                      # 0xfffffff5
	.word	52                              # 0x34
	.word	4294967253                      # 0xffffffd5
	.word	18                              # 0x12
	.word	15                              # 0xf
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	35                              # 0x23
	.word	4294967274                      # 0xffffffea
	.word	38                              # 0x26
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	0                               # 0x0
	.word	39                              # 0x27
	.word	4294967278                      # 0xffffffee
	.word	32                              # 0x20
	.word	4294967284                      # 0xfffffff4
	.word	102                             # 0x66
	.word	4294967202                      # 0xffffffa2
	.space	8
	.word	56                              # 0x38
	.word	4294967281                      # 0xfffffff1
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	10                              # 0xa
	.word	37                              # 0x25
	.word	4294967291                      # 0xfffffffb
	.word	51                              # 0x33
	.word	4294967267                      # 0xffffffe3
	.word	39                              # 0x27
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967262                      # 0xffffffde
	.word	69                              # 0x45
	.word	4294967238                      # 0xffffffc6
	.word	67                              # 0x43
	.word	4294967233                      # 0xffffffc1
	.word	44                              # 0x2c
	.word	4294967291                      # 0xfffffffb
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	4294967267                      # 0xffffffe3
	.word	32                              # 0x20
	.word	1                               # 0x1
	.space	8
	.word	27                              # 0x1b
	.word	36                              # 0x24
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	34                              # 0x22
	.word	4294967266                      # 0xffffffe2
	.word	36                              # 0x24
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967269                      # 0xffffffe5
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	35                              # 0x23
	.word	4294967280                      # 0xfffffff0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	32                              # 0x20
	.word	4294967288                      # 0xfffffff8
	.word	37                              # 0x25
	.word	4294967290                      # 0xfffffffa
	.word	35                              # 0x23
	.word	0                               # 0x0
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	28                              # 0x1c
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	29                              # 0x1d
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	75                              # 0x4b
	.word	2                               # 0x2
	.word	72                              # 0x48
	.word	8                               # 0x8
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	14                              # 0xe
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	17                              # 0x11
	.word	35                              # 0x23
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	45                              # 0x2d
	.word	20                              # 0x14
	.word	42                              # 0x2a
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	27                              # 0x1b
	.word	26                              # 0x1a
	.word	16                              # 0x10
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	66                              # 0x42
	.word	16                              # 0x10
	.word	56                              # 0x38
	.word	11                              # 0xb
	.word	73                              # 0x49
	.word	10                              # 0xa
	.word	67                              # 0x43
	.word	4294967286                      # 0xfffffff6
	.word	116                             # 0x74
	.word	4                               # 0x4
	.word	39                              # 0x27
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	34                              # 0x22
	.word	11                              # 0xb
	.word	29                              # 0x1d
	.word	8                               # 0x8
	.word	31                              # 0x1f
	.word	6                               # 0x6
	.word	37                              # 0x25
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	3                               # 0x3
	.word	40                              # 0x28
	.word	8                               # 0x8
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	43                              # 0x2b
	.word	13                              # 0xd
	.word	36                              # 0x24
	.word	4                               # 0x4
	.word	47                              # 0x2f
	.word	3                               # 0x3
	.word	55                              # 0x37
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	6                               # 0x6
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	8                               # 0x8
	.word	44                              # 0x2c
	.word	11                              # 0xb
	.word	44                              # 0x2c
	.word	14                              # 0xe
	.word	42                              # 0x2a
	.word	7                               # 0x7
	.word	48                              # 0x30
	.word	4                               # 0x4
	.word	56                              # 0x38
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	37                              # 0x25
	.word	9                               # 0x9
	.word	49                              # 0x31
	.word	19                              # 0x13
	.word	58                              # 0x3a
	.word	10                              # 0xa
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	20                              # 0x14
	.word	33                              # 0x21
	.word	8                               # 0x8
	.word	63                              # 0x3f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	35                              # 0x23
	.word	4294967278                      # 0xffffffee
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	28                              # 0x1c
	.word	4294967293                      # 0xfffffffd
	.word	24                              # 0x18
	.word	10                              # 0xa
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	34                              # 0x22
	.word	4294967282                      # 0xfffffff2
	.word	52                              # 0x34
	.word	4294967252                      # 0xffffffd4
	.word	39                              # 0x27
	.word	4294967272                      # 0xffffffe8
	.word	19                              # 0x13
	.word	17                              # 0x11
	.word	31                              # 0x1f
	.word	25                              # 0x19
	.word	36                              # 0x24
	.word	29                              # 0x1d
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	22                              # 0x16
	.word	73                              # 0x49
	.word	20                              # 0x14
	.word	34                              # 0x22
	.word	19                              # 0x13
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	19                              # 0x13
	.word	16                              # 0x10
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	25                              # 0x19
	.word	21                              # 0x15
	.word	30                              # 0x1e
	.word	20                              # 0x14
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	93                              # 0x5d
	.word	14                              # 0xe
	.word	56                              # 0x38
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	38                              # 0x26
	.word	4294967272                      # 0xffffffe8
	.word	127                             # 0x7f
	.size	INIT_LAST_P, 2880

	.type	INIT_ONE_I,@object              # @INIT_ONE_I
	.p2align	2, 0x0
INIT_ONE_I:
	.word	4294967293                      # 0xfffffffd
	.word	71                              # 0x47
	.word	4294967290                      # 0xfffffffa
	.word	42                              # 0x2a
	.word	4294967291                      # 0xfffffffb
	.word	50                              # 0x32
	.word	4294967293                      # 0xfffffffd
	.word	54                              # 0x36
	.word	4294967294                      # 0xfffffffe
	.word	62                              # 0x3e
	.word	4294967291                      # 0xfffffffb
	.word	67                              # 0x43
	.word	4294967291                      # 0xfffffffb
	.word	27                              # 0x1b
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	46                              # 0x2e
	.word	4294967293                      # 0xfffffffd
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	23                              # 0x17
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967281                      # 0xfffffff1
	.word	55                              # 0x37
	.word	4294967286                      # 0xfffffff6
	.word	60                              # 0x3c
	.word	4294967290                      # 0xfffffffa
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967276                      # 0xffffffec
	.word	84                              # 0x54
	.word	4294967285                      # 0xfffffff5
	.word	79                              # 0x4f
	.word	4294967290                      # 0xfffffffa
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967288                      # 0xfffffff8
	.word	78                              # 0x4e
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	4294967292                      # 0xfffffffc
	.word	48                              # 0x30
	.word	4294967294                      # 0xfffffffe
	.word	53                              # 0x35
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_I, 320

	.type	INIT_ONE_P,@object              # @INIT_ONE_P
	.p2align	2, 0x0
INIT_ONE_P:
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967294                      # 0xfffffffe
	.word	44                              # 0x2c
	.word	0                               # 0x0
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	52                              # 0x34
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	77                              # 0x4d
	.word	3                               # 0x3
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	42                              # 0x2a
	.word	0                               # 0x0
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	55                              # 0x37
	.word	4294967290                      # 0xfffffffa
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967289                      # 0xfffffff9
	.word	42                              # 0x2a
	.word	4294967288                      # 0xfffffff8
	.word	45                              # 0x2d
	.word	4294967291                      # 0xfffffffb
	.word	48                              # 0x30
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	29                              # 0x1d
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	1                               # 0x1
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	43                              # 0x2b
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	29                              # 0x1d
	.word	5                               # 0x5
	.word	31                              # 0x1f
	.word	7                               # 0x7
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	8                               # 0x8
	.word	5                               # 0x5
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967273                      # 0xffffffe9
	.word	112                             # 0x70
	.word	4294967281                      # 0xfffffff1
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967275                      # 0xffffffeb
	.word	101                             # 0x65
	.word	4294967293                      # 0xfffffffd
	.word	39                              # 0x27
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	4294967289                      # 0xfffffff9
	.word	61                              # 0x3d
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	4294967291                      # 0xfffffffb
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	24                              # 0x18
	.word	4294967295                      # 0xffffffff
	.word	36                              # 0x24
	.word	4294967294                      # 0xfffffffe
	.word	42                              # 0x2a
	.word	4294967294                      # 0xfffffffe
	.word	52                              # 0x34
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	76                              # 0x4c
	.word	4294967286                      # 0xfffffff6
	.word	44                              # 0x2c
	.word	4294967286                      # 0xfffffff6
	.word	52                              # 0x34
	.word	4294967286                      # 0xfffffff6
	.word	57                              # 0x39
	.word	4294967287                      # 0xfffffff7
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	31                              # 0x1f
	.word	5                               # 0x5
	.word	52                              # 0x34
	.word	3                               # 0x3
	.word	52                              # 0x34
	.word	7                               # 0x7
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	8                               # 0x8
	.word	17                              # 0x11
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	19                              # 0x13
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967272                      # 0xffffffe8
	.word	115                             # 0x73
	.word	4294967274                      # 0xffffffea
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	4294967275                      # 0xffffffeb
	.word	100                             # 0x64
	.word	4294967282                      # 0xfffffff2
	.word	57                              # 0x39
	.word	4294967284                      # 0xfffffff4
	.word	67                              # 0x43
	.word	4294967285                      # 0xfffffff5
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967289                      # 0xfffffff9
	.word	37                              # 0x25
	.word	4294967288                      # 0xfffffff8
	.word	44                              # 0x2c
	.word	4294967285                      # 0xfffffff5
	.word	49                              # 0x31
	.word	4294967286                      # 0xfffffff6
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967286                      # 0xfffffff6
	.word	82                              # 0x52
	.word	4294967288                      # 0xfffffff8
	.word	48                              # 0x30
	.word	4294967288                      # 0xfffffff8
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967289                      # 0xfffffff9
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	79                              # 0x4f
	.word	4294967274                      # 0xffffffea
	.word	69                              # 0x45
	.word	4294967280                      # 0xfffffff0
	.word	75                              # 0x4b
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	58                              # 0x3a
	.word	4294967283                      # 0xfffffff3
	.word	81                              # 0x51
	.word	4294967290                      # 0xfffffffa
	.word	38                              # 0x26
	.word	4294967283                      # 0xfffffff3
	.word	62                              # 0x3e
	.word	4294967290                      # 0xfffffffa
	.word	58                              # 0x3a
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ONE_P, 960

	.type	INIT_ABS_I,@object              # @INIT_ABS_I
	.p2align	2, 0x0
INIT_ABS_I:
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	1                               # 0x1
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	72                              # 0x48
	.word	4294967295                      # 0xffffffff
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	91                              # 0x5b
	.word	4294967280                      # 0xfffffff0
	.word	64                              # 0x40
	.word	4294967288                      # 0xfffffff8
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	78                              # 0x4e
	.word	4294967290                      # 0xfffffffa
	.word	77                              # 0x4d
	.word	4294967286                      # 0xfffffff6
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	61                              # 0x3d
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967287                      # 0xfffffff7
	.word	92                              # 0x5c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	88                              # 0x58
	.word	4294967279                      # 0xffffffef
	.word	110                             # 0x6e
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	96                              # 0x60
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967277                      # 0xffffffed
	.word	117                             # 0x75
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	71                              # 0x47
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967284                      # 0xfffffff4
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	90                              # 0x5a
	.word	4294967282                      # 0xfffffff2
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_I, 320

	.type	INIT_ABS_P,@object              # @INIT_ABS_P
	.p2align	2, 0x0
INIT_ABS_P:
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967292                      # 0xfffffffc
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	75                              # 0x4b
	.word	4294967288                      # 0xfffffff8
	.word	82                              # 0x52
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967290                      # 0xfffffffa
	.word	59                              # 0x3b
	.word	4294967289                      # 0xfffffff9
	.word	71                              # 0x47
	.word	4294967284                      # 0xfffffff4
	.word	83                              # 0x53
	.word	4294967285                      # 0xfffffff5
	.word	87                              # 0x57
	.word	4294967266                      # 0xffffffe2
	.word	119                             # 0x77
	.word	4294967284                      # 0xfffffff4
	.word	56                              # 0x38
	.word	4294967290                      # 0xfffffffa
	.word	60                              # 0x3c
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967288                      # 0xfffffff8
	.word	76                              # 0x4c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967290                      # 0xfffffffa
	.word	55                              # 0x37
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967293                      # 0xfffffffd
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	90                              # 0x5a
	.word	4294967294                      # 0xfffffffe
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	72                              # 0x48
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	40                              # 0x28
	.word	0                               # 0x0
	.word	58                              # 0x3a
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	79                              # 0x4f
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967285                      # 0xfffffff5
	.word	77                              # 0x4d
	.word	4294967287                      # 0xfffffff7
	.word	80                              # 0x50
	.word	4294967287                      # 0xfffffff7
	.word	84                              # 0x54
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967262                      # 0xffffffde
	.word	127                             # 0x7f
	.word	4294967281                      # 0xfffffff1
	.word	77                              # 0x4d
	.word	4294967279                      # 0xffffffef
	.word	91                              # 0x5b
	.word	4294967271                      # 0xffffffe7
	.word	107                             # 0x6b
	.word	4294967271                      # 0xffffffe7
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	122                             # 0x7a
	.word	4294967287                      # 0xfffffff7
	.word	57                              # 0x39
	.word	4294967290                      # 0xfffffffa
	.word	63                              # 0x3f
	.word	4294967292                      # 0xfffffffc
	.word	65                              # 0x41
	.word	4294967292                      # 0xfffffffc
	.word	67                              # 0x43
	.word	4294967289                      # 0xfffffff9
	.word	82                              # 0x52
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	72                              # 0x48
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967292                      # 0xfffffffc
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	86                              # 0x56
	.word	4294967294                      # 0xfffffffe
	.word	55                              # 0x37
	.word	4294967294                      # 0xfffffffe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	73                              # 0x49
	.word	4294967288                      # 0xfffffff8
	.word	89                              # 0x59
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	37                              # 0x25
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967291                      # 0xfffffffb
	.word	73                              # 0x49
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967292                      # 0xfffffffc
	.word	78                              # 0x4e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	89                              # 0x59
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967285                      # 0xfffffff5
	.word	92                              # 0x5c
	.word	4294967267                      # 0xffffffe3
	.word	127                             # 0x7f
	.word	4294967275                      # 0xffffffeb
	.word	85                              # 0x55
	.word	4294967280                      # 0xfffffff0
	.word	88                              # 0x58
	.word	4294967273                      # 0xffffffe9
	.word	104                             # 0x68
	.word	4294967281                      # 0xfffffff1
	.word	98                              # 0x62
	.word	4294967259                      # 0xffffffdb
	.word	127                             # 0x7f
	.word	4294967284                      # 0xfffffff4
	.word	59                              # 0x3b
	.word	4294967288                      # 0xfffffff8
	.word	63                              # 0x3f
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967290                      # 0xfffffffa
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	75                              # 0x4b
	.word	4294967286                      # 0xfffffff6
	.word	79                              # 0x4f
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967284                      # 0xfffffff4
	.word	92                              # 0x5c
	.word	4294967278                      # 0xffffffee
	.word	108                             # 0x6c
	.word	4294967283                      # 0xfffffff3
	.word	78                              # 0x4e
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967292                      # 0xfffffffc
	.word	81                              # 0x51
	.word	4294967283                      # 0xfffffff3
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967280                      # 0xfffffff0
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	76                              # 0x4c
	.word	4294967283                      # 0xfffffff3
	.word	86                              # 0x56
	.word	4294967287                      # 0xfffffff7
	.word	83                              # 0x53
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.size	INIT_ABS_P, 960

	.type	INIT_FLD_MAP_I,@object          # @INIT_FLD_MAP_I
	.p2align	2, 0x0
INIT_FLD_MAP_I:
	.word	4294967290                      # 0xfffffffa
	.word	93                              # 0x5d
	.word	4294967290                      # 0xfffffffa
	.word	84                              # 0x54
	.word	4294967288                      # 0xfffffff8
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	71                              # 0x47
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	4294967294                      # 0xfffffffe
	.word	60                              # 0x3c
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967293                      # 0xfffffffd
	.word	62                              # 0x3e
	.word	4294967292                      # 0xfffffffc
	.word	58                              # 0x3a
	.word	4294967287                      # 0xfffffff7
	.word	66                              # 0x42
	.word	4294967295                      # 0xffffffff
	.word	79                              # 0x4f
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	4294967289                      # 0xfffffff9
	.word	62                              # 0x3e
	.word	15                              # 0xf
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	40                              # 0x28
	.word	16                              # 0x10
	.word	27                              # 0x1b
	.word	12                              # 0xc
	.word	29                              # 0x1d
	.word	1                               # 0x1
	.word	44                              # 0x2c
	.word	20                              # 0x14
	.word	36                              # 0x24
	.word	18                              # 0x12
	.word	32                              # 0x20
	.word	5                               # 0x5
	.word	42                              # 0x2a
	.word	1                               # 0x1
	.word	48                              # 0x30
	.word	10                              # 0xa
	.word	62                              # 0x3e
	.word	17                              # 0x11
	.word	46                              # 0x2e
	.word	9                               # 0x9
	.word	64                              # 0x40
	.word	4294967282                      # 0xfffffff2
	.word	106                             # 0x6a
	.word	4294967283                      # 0xfffffff3
	.word	97                              # 0x61
	.word	4294967281                      # 0xfffffff1
	.word	90                              # 0x5a
	.word	4294967284                      # 0xfffffff4
	.word	90                              # 0x5a
	.word	4294967278                      # 0xffffffee
	.word	88                              # 0x58
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967287                      # 0xfffffff7
	.word	79                              # 0x4f
	.word	4294967282                      # 0xfffffff2
	.word	86                              # 0x56
	.word	4294967286                      # 0xfffffff6
	.word	73                              # 0x49
	.word	4294967286                      # 0xfffffff6
	.word	70                              # 0x46
	.word	4294967286                      # 0xfffffff6
	.word	69                              # 0x45
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967287                      # 0xfffffff7
	.word	64                              # 0x40
	.word	4294967291                      # 0xfffffffb
	.word	58                              # 0x3a
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	104                             # 0x68
	.word	4294967285                      # 0xfffffff5
	.word	97                              # 0x61
	.word	4294967280                      # 0xfffffff0
	.word	96                              # 0x60
	.word	4294967289                      # 0xfffffff9
	.word	88                              # 0x58
	.word	4294967288                      # 0xfffffff8
	.word	85                              # 0x55
	.word	4294967289                      # 0xfffffff9
	.word	85                              # 0x55
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967283                      # 0xfffffff3
	.word	88                              # 0x58
	.word	4                               # 0x4
	.word	66                              # 0x42
	.word	4294967293                      # 0xfffffffd
	.word	77                              # 0x4d
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	10                              # 0xa
	.word	58                              # 0x3a
	.word	4294967295                      # 0xffffffff
	.word	76                              # 0x4c
	.word	4294967295                      # 0xffffffff
	.word	83                              # 0x53
	.word	4294967289                      # 0xfffffff9
	.word	99                              # 0x63
	.word	4294967282                      # 0xfffffff2
	.word	95                              # 0x5f
	.word	2                               # 0x2
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	74                              # 0x4a
	.word	0                               # 0x0
	.word	70                              # 0x46
	.word	4294967285                      # 0xfffffff5
	.word	75                              # 0x4b
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	65                              # 0x41
	.word	4294967282                      # 0xfffffff2
	.word	73                              # 0x49
	.word	3                               # 0x3
	.word	62                              # 0x3e
	.word	4                               # 0x4
	.word	62                              # 0x3e
	.word	4294967295                      # 0xffffffff
	.word	68                              # 0x44
	.word	4294967283                      # 0xfffffff3
	.word	75                              # 0x4b
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	12                              # 0xc
	.word	70                              # 0x46
	.size	INIT_FLD_MAP_I, 960

	.type	INIT_FLD_MAP_P,@object          # @INIT_FLD_MAP_P
	.p2align	2, 0x0
INIT_FLD_MAP_P:
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967280                      # 0xfffffff0
	.word	106                             # 0x6a
	.word	4294967286                      # 0xfffffff6
	.word	87                              # 0x57
	.word	4294967275                      # 0xffffffeb
	.word	114                             # 0x72
	.word	4294967278                      # 0xffffffee
	.word	110                             # 0x6e
	.word	4294967282                      # 0xfffffff2
	.word	98                              # 0x62
	.word	4294967274                      # 0xffffffea
	.word	110                             # 0x6e
	.word	4294967275                      # 0xffffffeb
	.word	106                             # 0x6a
	.word	4294967278                      # 0xffffffee
	.word	103                             # 0x67
	.word	4294967275                      # 0xffffffeb
	.word	107                             # 0x6b
	.word	4294967273                      # 0xffffffe9
	.word	108                             # 0x6c
	.word	4294967270                      # 0xffffffe6
	.word	112                             # 0x70
	.word	4294967286                      # 0xfffffff6
	.word	96                              # 0x60
	.word	4294967284                      # 0xfffffff4
	.word	95                              # 0x5f
	.word	4294967291                      # 0xfffffffb
	.word	91                              # 0x5b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967287                      # 0xfffffff7
	.word	93                              # 0x5d
	.word	4294967274                      # 0xffffffea
	.word	94                              # 0x5e
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	9                               # 0x9
	.word	67                              # 0x43
	.word	4294967292                      # 0xfffffffc
	.word	80                              # 0x50
	.word	4294967286                      # 0xfffffff6
	.word	85                              # 0x55
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	7                               # 0x7
	.word	60                              # 0x3c
	.word	9                               # 0x9
	.word	58                              # 0x3a
	.word	5                               # 0x5
	.word	61                              # 0x3d
	.word	12                              # 0xc
	.word	50                              # 0x32
	.word	15                              # 0xf
	.word	50                              # 0x32
	.word	18                              # 0x12
	.word	49                              # 0x31
	.word	17                              # 0x11
	.word	54                              # 0x36
	.word	4294967291                      # 0xfffffffb
	.word	85                              # 0x55
	.word	4294967290                      # 0xfffffffa
	.word	81                              # 0x51
	.word	4294967286                      # 0xfffffff6
	.word	77                              # 0x4d
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	4294967279                      # 0xffffffef
	.word	80                              # 0x50
	.word	4294967278                      # 0xffffffee
	.word	73                              # 0x49
	.word	4294967292                      # 0xfffffffc
	.word	74                              # 0x4a
	.word	4294967286                      # 0xfffffff6
	.word	83                              # 0x53
	.word	4294967287                      # 0xfffffff7
	.word	71                              # 0x47
	.word	4294967287                      # 0xfffffff7
	.word	67                              # 0x43
	.word	4294967295                      # 0xffffffff
	.word	61                              # 0x3d
	.word	4294967288                      # 0xfffffff8
	.word	66                              # 0x42
	.word	4294967282                      # 0xfffffff2
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	59                              # 0x3b
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	7                               # 0x7
	.word	46                              # 0x2e
	.word	4294967295                      # 0xffffffff
	.word	51                              # 0x33
	.word	7                               # 0x7
	.word	49                              # 0x31
	.word	8                               # 0x8
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	41                              # 0x29
	.word	6                               # 0x6
	.word	47                              # 0x2f
	.word	2                               # 0x2
	.word	55                              # 0x37
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	6                               # 0x6
	.word	50                              # 0x32
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	13                              # 0xd
	.word	49                              # 0x31
	.word	4                               # 0x4
	.word	63                              # 0x3f
	.word	6                               # 0x6
	.word	64                              # 0x40
	.word	4294967294                      # 0xfffffffe
	.word	69                              # 0x45
	.word	4294967294                      # 0xfffffffe
	.word	59                              # 0x3b
	.word	6                               # 0x6
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	10                              # 0xa
	.word	44                              # 0x2c
	.word	9                               # 0x9
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	43                              # 0x2b
	.word	3                               # 0x3
	.word	53                              # 0x35
	.word	14                              # 0xe
	.word	34                              # 0x22
	.word	10                              # 0xa
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	52                              # 0x34
	.word	13                              # 0xd
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	32                              # 0x20
	.word	7                               # 0x7
	.word	44                              # 0x2c
	.word	7                               # 0x7
	.word	38                              # 0x26
	.word	13                              # 0xd
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	26                              # 0x1a
	.word	43                              # 0x2b
	.word	4294967275                      # 0xffffffeb
	.word	126                             # 0x7e
	.word	4294967273                      # 0xffffffe9
	.word	124                             # 0x7c
	.word	4294967276                      # 0xffffffec
	.word	110                             # 0x6e
	.word	4294967270                      # 0xffffffe6
	.word	126                             # 0x7e
	.word	4294967271                      # 0xffffffe7
	.word	124                             # 0x7c
	.word	4294967279                      # 0xffffffef
	.word	105                             # 0x69
	.word	4294967269                      # 0xffffffe5
	.word	121                             # 0x79
	.word	4294967269                      # 0xffffffe5
	.word	117                             # 0x75
	.word	4294967279                      # 0xffffffef
	.word	102                             # 0x66
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967269                      # 0xffffffe5
	.word	116                             # 0x74
	.word	4294967263                      # 0xffffffdf
	.word	122                             # 0x7a
	.word	4294967286                      # 0xfffffff6
	.word	95                              # 0x5f
	.word	4294967282                      # 0xfffffff2
	.word	100                             # 0x64
	.word	4294967288                      # 0xfffffff8
	.word	95                              # 0x5f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967279                      # 0xffffffef
	.word	111                             # 0x6f
	.word	4294967268                      # 0xffffffe4
	.word	114                             # 0x72
	.word	4294967290                      # 0xfffffffa
	.word	89                              # 0x59
	.word	4294967294                      # 0xfffffffe
	.word	80                              # 0x50
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967287                      # 0xfffffff7
	.word	85                              # 0x55
	.word	4294967288                      # 0xfffffff8
	.word	81                              # 0x51
	.word	4294967295                      # 0xffffffff
	.word	72                              # 0x48
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	9                               # 0x9
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	1                               # 0x1
	.word	69                              # 0x45
	.word	7                               # 0x7
	.word	69                              # 0x45
	.word	4294967293                      # 0xfffffffd
	.word	81                              # 0x51
	.word	4294967293                      # 0xfffffffd
	.word	76                              # 0x4c
	.word	4294967289                      # 0xfffffff9
	.word	72                              # 0x48
	.word	4294967290                      # 0xfffffffa
	.word	78                              # 0x4e
	.word	4294967284                      # 0xfffffff4
	.word	72                              # 0x48
	.word	4294967282                      # 0xfffffff2
	.word	68                              # 0x44
	.word	4294967293                      # 0xfffffffd
	.word	70                              # 0x46
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967291                      # 0xfffffffb
	.word	66                              # 0x42
	.word	4294967291                      # 0xfffffffb
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967292                      # 0xfffffffc
	.word	61                              # 0x3d
	.word	4294967287                      # 0xfffffff7
	.word	60                              # 0x3c
	.word	1                               # 0x1
	.word	54                              # 0x36
	.word	2                               # 0x2
	.word	58                              # 0x3a
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	69                              # 0x45
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967280                      # 0xfffffff0
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	61                              # 0x3d
	.word	4294967290                      # 0xfffffffa
	.word	67                              # 0x43
	.word	4294967293                      # 0xfffffffd
	.word	64                              # 0x40
	.word	2                               # 0x2
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	65                              # 0x41
	.word	4294967293                      # 0xfffffffd
	.word	66                              # 0x42
	.word	0                               # 0x0
	.word	62                              # 0x3e
	.word	9                               # 0x9
	.word	51                              # 0x33
	.word	4294967295                      # 0xffffffff
	.word	66                              # 0x42
	.word	4294967294                      # 0xfffffffe
	.word	71                              # 0x47
	.word	4294967294                      # 0xfffffffe
	.word	75                              # 0x4b
	.word	4294967295                      # 0xffffffff
	.word	70                              # 0x46
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	16                              # 0x10
	.word	37                              # 0x25
	.word	0                               # 0x0
	.word	47                              # 0x2f
	.word	18                              # 0x12
	.word	35                              # 0x23
	.word	11                              # 0xb
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	10                              # 0xa
	.word	41                              # 0x29
	.word	2                               # 0x2
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	41                              # 0x29
	.word	13                              # 0xd
	.word	41                              # 0x29
	.word	0                               # 0x0
	.word	59                              # 0x3b
	.word	3                               # 0x3
	.word	50                              # 0x32
	.word	19                              # 0x13
	.word	40                              # 0x28
	.word	3                               # 0x3
	.word	66                              # 0x42
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	4294967274                      # 0xffffffea
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	127                             # 0x7f
	.word	4294967271                      # 0xffffffe7
	.word	120                             # 0x78
	.word	4294967269                      # 0xffffffe5
	.word	127                             # 0x7f
	.word	4294967277                      # 0xffffffed
	.word	114                             # 0x72
	.word	4294967273                      # 0xffffffe9
	.word	117                             # 0x75
	.word	4294967271                      # 0xffffffe7
	.word	118                             # 0x76
	.word	4294967270                      # 0xffffffe6
	.word	117                             # 0x75
	.word	4294967272                      # 0xffffffe8
	.word	113                             # 0x71
	.word	4294967268                      # 0xffffffe4
	.word	118                             # 0x76
	.word	4294967265                      # 0xffffffe1
	.word	120                             # 0x78
	.word	4294967259                      # 0xffffffdb
	.word	124                             # 0x7c
	.word	4294967286                      # 0xfffffff6
	.word	94                              # 0x5e
	.word	4294967281                      # 0xfffffff1
	.word	102                             # 0x66
	.word	4294967286                      # 0xfffffff6
	.word	99                              # 0x63
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	4294967283                      # 0xfffffff3
	.word	106                             # 0x6a
	.word	4294967246                      # 0xffffffce
	.word	127                             # 0x7f
	.word	4294967291                      # 0xfffffffb
	.word	92                              # 0x5c
	.word	17                              # 0x11
	.word	57                              # 0x39
	.word	4294967291                      # 0xfffffffb
	.word	86                              # 0x56
	.word	4294967283                      # 0xfffffff3
	.word	94                              # 0x5e
	.word	4294967284                      # 0xfffffff4
	.word	91                              # 0x5b
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	0                               # 0x0
	.word	71                              # 0x47
	.word	4294967295                      # 0xffffffff
	.word	73                              # 0x49
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	4294967289                      # 0xfffffff9
	.word	81                              # 0x51
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	15                              # 0xf
	.word	57                              # 0x39
	.word	4294967293                      # 0xfffffffd
	.word	78                              # 0x4e
	.word	4294967288                      # 0xfffffff8
	.word	74                              # 0x4a
	.word	4294967287                      # 0xfffffff7
	.word	72                              # 0x48
	.word	4294967286                      # 0xfffffff6
	.word	72                              # 0x48
	.word	4294967278                      # 0xffffffee
	.word	75                              # 0x4b
	.word	4294967284                      # 0xfffffff4
	.word	71                              # 0x47
	.word	4294967285                      # 0xfffffff5
	.word	63                              # 0x3f
	.word	4294967291                      # 0xfffffffb
	.word	70                              # 0x46
	.word	4294967279                      # 0xffffffef
	.word	75                              # 0x4b
	.word	4294967282                      # 0xfffffff2
	.word	72                              # 0x48
	.word	4294967280                      # 0xfffffff0
	.word	67                              # 0x43
	.word	4294967288                      # 0xfffffff8
	.word	53                              # 0x35
	.word	4294967282                      # 0xfffffff2
	.word	59                              # 0x3b
	.word	4294967287                      # 0xfffffff7
	.word	52                              # 0x34
	.word	4294967285                      # 0xfffffff5
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	1                               # 0x1
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967286                      # 0xfffffff6
	.word	67                              # 0x43
	.word	1                               # 0x1
	.word	68                              # 0x44
	.word	0                               # 0x0
	.word	77                              # 0x4d
	.word	2                               # 0x2
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	68                              # 0x44
	.word	4294967291                      # 0xfffffffb
	.word	78                              # 0x4e
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	59                              # 0x3b
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	54                              # 0x36
	.word	15                              # 0xf
	.word	44                              # 0x2c
	.word	5                               # 0x5
	.word	60                              # 0x3c
	.word	2                               # 0x2
	.word	70                              # 0x46
	.word	4294967294                      # 0xfffffffe
	.word	76                              # 0x4c
	.word	4294967278                      # 0xffffffee
	.word	86                              # 0x56
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	5                               # 0x5
	.word	64                              # 0x40
	.word	4294967284                      # 0xfffffff4
	.word	70                              # 0x46
	.word	11                              # 0xb
	.word	55                              # 0x37
	.word	5                               # 0x5
	.word	56                              # 0x38
	.word	0                               # 0x0
	.word	69                              # 0x45
	.word	2                               # 0x2
	.word	65                              # 0x41
	.word	4294967290                      # 0xfffffffa
	.word	74                              # 0x4a
	.word	5                               # 0x5
	.word	54                              # 0x36
	.word	7                               # 0x7
	.word	54                              # 0x36
	.word	4294967290                      # 0xfffffffa
	.word	76                              # 0x4c
	.word	4294967285                      # 0xfffffff5
	.word	82                              # 0x52
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	25                              # 0x19
	.word	42                              # 0x2a
	.size	INIT_FLD_MAP_P, 2880

	.type	INIT_FLD_LAST_I,@object         # @INIT_FLD_LAST_I
	.p2align	2, 0x0
INIT_FLD_LAST_I:
	.word	15                              # 0xf
	.word	6                               # 0x6
	.word	6                               # 0x6
	.word	19                              # 0x13
	.word	7                               # 0x7
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	11                              # 0xb
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	12                              # 0xc
	.word	23                              # 0x17
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	15                              # 0xf
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	26                              # 0x1a
	.word	14                              # 0xe
	.word	44                              # 0x2c
	.word	17                              # 0x11
	.word	40                              # 0x28
	.word	17                              # 0x11
	.word	47                              # 0x2f
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	17                              # 0x11
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	25                              # 0x19
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	27                              # 0x1b
	.word	22                              # 0x16
	.word	29                              # 0x1d
	.word	19                              # 0x13
	.word	35                              # 0x23
	.word	14                              # 0xe
	.word	50                              # 0x32
	.word	10                              # 0xa
	.word	57                              # 0x39
	.word	7                               # 0x7
	.word	63                              # 0x3f
	.word	4294967294                      # 0xfffffffe
	.word	77                              # 0x4d
	.word	4294967292                      # 0xfffffffc
	.word	82                              # 0x52
	.word	4294967293                      # 0xfffffffd
	.word	94                              # 0x5e
	.word	9                               # 0x9
	.word	69                              # 0x45
	.word	4294967284                      # 0xfffffff4
	.word	109                             # 0x6d
	.word	21                              # 0x15
	.word	4294967286                      # 0xfffffff6
	.word	24                              # 0x18
	.word	4294967285                      # 0xfffffff5
	.word	28                              # 0x1c
	.word	4294967288                      # 0xfffffff8
	.word	28                              # 0x1c
	.word	4294967295                      # 0xffffffff
	.word	29                              # 0x1d
	.word	3                               # 0x3
	.word	29                              # 0x1d
	.word	9                               # 0x9
	.word	35                              # 0x23
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	36                              # 0x24
	.word	14                              # 0xe
	.word	67                              # 0x43
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967261                      # 0xffffffdd
	.word	36                              # 0x24
	.word	4294967262                      # 0xffffffde
	.word	32                              # 0x20
	.word	4294967270                      # 0xffffffe6
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	44                              # 0x2c
	.word	4294967264                      # 0xffffffe0
	.word	34                              # 0x22
	.word	4294967278                      # 0xffffffee
	.word	34                              # 0x22
	.word	4294967281                      # 0xfffffff1
	.word	40                              # 0x28
	.word	4294967281                      # 0xfffffff1
	.word	33                              # 0x21
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967291                      # 0xfffffffb
	.word	33                              # 0x21
	.word	0                               # 0x0
	.word	38                              # 0x26
	.word	2                               # 0x2
	.word	33                              # 0x21
	.word	13                              # 0xd
	.word	23                              # 0x17
	.word	35                              # 0x23
	.word	13                              # 0xd
	.word	58                              # 0x3a
	.word	29                              # 0x1d
	.word	4294967293                      # 0xfffffffd
	.word	26                              # 0x1a
	.word	0                               # 0x0
	.word	22                              # 0x16
	.word	30                              # 0x1e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	31                              # 0x1f
	.word	4294967289                      # 0xfffffff9
	.word	35                              # 0x23
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967293                      # 0xfffffffd
	.word	34                              # 0x22
	.word	3                               # 0x3
	.word	36                              # 0x24
	.word	4294967295                      # 0xffffffff
	.word	34                              # 0x22
	.word	5                               # 0x5
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	35                              # 0x23
	.word	5                               # 0x5
	.word	34                              # 0x22
	.word	12                              # 0xc
	.word	39                              # 0x27
	.word	11                              # 0xb
	.word	30                              # 0x1e
	.word	29                              # 0x1d
	.word	34                              # 0x22
	.word	26                              # 0x1a
	.word	29                              # 0x1d
	.word	39                              # 0x27
	.word	19                              # 0x13
	.word	66                              # 0x42
	.size	INIT_FLD_LAST_I, 960

	.type	INIT_FLD_LAST_P,@object         # @INIT_FLD_LAST_P
	.p2align	2, 0x0
INIT_FLD_LAST_P:
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	21                              # 0x15
	.word	9                               # 0x9
	.word	23                              # 0x17
	.word	4294967294                      # 0xfffffffe
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	32                              # 0x20
	.word	4294967281                      # 0xfffffff1
	.word	34                              # 0x22
	.word	4294967275                      # 0xffffffeb
	.word	39                              # 0x27
	.word	4294967273                      # 0xffffffe9
	.word	42                              # 0x2a
	.word	4294967263                      # 0xffffffdf
	.word	41                              # 0x29
	.word	4294967265                      # 0xffffffe1
	.word	46                              # 0x2e
	.word	4294967268                      # 0xffffffe4
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	21                              # 0x15
	.word	29                              # 0x1d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	45                              # 0x2d
	.word	4294967272                      # 0xffffffe8
	.word	53                              # 0x35
	.word	4294967251                      # 0xffffffd3
	.word	48                              # 0x30
	.word	4294967270                      # 0xffffffe6
	.word	65                              # 0x41
	.word	4294967253                      # 0xffffffd5
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	39                              # 0x27
	.word	4294967286                      # 0xfffffff6
	.word	30                              # 0x1e
	.word	9                               # 0x9
	.word	18                              # 0x12
	.word	26                              # 0x1a
	.word	20                              # 0x14
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	57                              # 0x39
	.word	4294967282                      # 0xfffffff2
	.word	82                              # 0x52
	.word	4294967291                      # 0xfffffffb
	.word	75                              # 0x4b
	.word	4294967277                      # 0xffffffed
	.word	97                              # 0x61
	.word	4294967261                      # 0xffffffdd
	.word	125                             # 0x7d
	.word	21                              # 0x15
	.word	4294967283                      # 0xfffffff3
	.word	33                              # 0x21
	.word	4294967282                      # 0xfffffff2
	.word	39                              # 0x27
	.word	4294967289                      # 0xfffffff9
	.word	46                              # 0x2e
	.word	4294967294                      # 0xfffffffe
	.word	51                              # 0x33
	.word	2                               # 0x2
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	61                              # 0x3d
	.word	17                              # 0x11
	.word	55                              # 0x37
	.word	34                              # 0x22
	.word	42                              # 0x2a
	.word	62                              # 0x3e
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	27                              # 0x1b
	.word	0                               # 0x0
	.word	28                              # 0x1c
	.word	0                               # 0x0
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	27                              # 0x1b
	.word	6                               # 0x6
	.word	34                              # 0x22
	.word	8                               # 0x8
	.word	30                              # 0x1e
	.word	10                              # 0xa
	.word	24                              # 0x18
	.word	22                              # 0x16
	.word	33                              # 0x21
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	32                              # 0x20
	.word	26                              # 0x1a
	.word	31                              # 0x1f
	.word	21                              # 0x15
	.word	41                              # 0x29
	.word	26                              # 0x1a
	.word	44                              # 0x2c
	.word	23                              # 0x17
	.word	47                              # 0x2f
	.word	16                              # 0x10
	.word	65                              # 0x41
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	8                               # 0x8
	.word	60                              # 0x3c
	.word	6                               # 0x6
	.word	63                              # 0x3f
	.word	17                              # 0x11
	.word	65                              # 0x41
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	21                              # 0x15
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	40                              # 0x28
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	42                              # 0x2a
	.word	19                              # 0x13
	.word	57                              # 0x39
	.word	22                              # 0x16
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	61                              # 0x3d
	.word	11                              # 0xb
	.word	86                              # 0x56
	.word	19                              # 0x13
	.word	4294967290                      # 0xfffffffa
	.word	18                              # 0x12
	.word	4294967290                      # 0xfffffffa
	.word	14                              # 0xe
	.word	0                               # 0x0
	.word	26                              # 0x1a
	.word	4294967284                      # 0xfffffff4
	.word	31                              # 0x1f
	.word	4294967280                      # 0xfffffff0
	.word	33                              # 0x21
	.word	4294967271                      # 0xffffffe7
	.word	33                              # 0x21
	.word	4294967274                      # 0xffffffea
	.word	37                              # 0x25
	.word	4294967268                      # 0xffffffe4
	.word	39                              # 0x27
	.word	4294967266                      # 0xffffffe2
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	47                              # 0x2f
	.word	4294967254                      # 0xffffffd6
	.word	45                              # 0x2d
	.word	4294967260                      # 0xffffffdc
	.word	49                              # 0x31
	.word	4294967262                      # 0xffffffde
	.word	41                              # 0x29
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	9                               # 0x9
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	69                              # 0x45
	.word	4294967225                      # 0xffffffb9
	.word	63                              # 0x3f
	.word	4294967233                      # 0xffffffc1
	.word	66                              # 0x42
	.word	4294967232                      # 0xffffffc0
	.word	77                              # 0x4d
	.word	4294967222                      # 0xffffffb6
	.word	54                              # 0x36
	.word	4294967257                      # 0xffffffd9
	.word	52                              # 0x34
	.word	4294967261                      # 0xffffffdd
	.word	41                              # 0x29
	.word	4294967286                      # 0xfffffff6
	.word	36                              # 0x24
	.word	0                               # 0x0
	.word	40                              # 0x28
	.word	4294967295                      # 0xffffffff
	.word	30                              # 0x1e
	.word	14                              # 0xe
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	23                              # 0x17
	.word	37                              # 0x25
	.word	12                              # 0xc
	.word	55                              # 0x37
	.word	11                              # 0xb
	.word	65                              # 0x41
	.word	17                              # 0x11
	.word	4294967286                      # 0xfffffff6
	.word	32                              # 0x20
	.word	4294967283                      # 0xfffffff3
	.word	42                              # 0x2a
	.word	4294967287                      # 0xfffffff7
	.word	49                              # 0x31
	.word	4294967291                      # 0xfffffffb
	.word	53                              # 0x35
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	3                               # 0x3
	.word	68                              # 0x44
	.word	10                              # 0xa
	.word	66                              # 0x42
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	57                              # 0x39
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	37                              # 0x25
	.word	4294967263                      # 0xffffffdf
	.word	39                              # 0x27
	.word	4294967260                      # 0xffffffdc
	.word	40                              # 0x28
	.word	4294967259                      # 0xffffffdb
	.word	38                              # 0x26
	.word	4294967266                      # 0xffffffe2
	.word	46                              # 0x2e
	.word	4294967263                      # 0xffffffdf
	.word	42                              # 0x2a
	.word	4294967266                      # 0xffffffe2
	.word	40                              # 0x28
	.word	4294967272                      # 0xffffffe8
	.word	49                              # 0x31
	.word	4294967267                      # 0xffffffe3
	.word	38                              # 0x26
	.word	4294967284                      # 0xfffffff4
	.word	40                              # 0x28
	.word	4294967286                      # 0xfffffff6
	.word	38                              # 0x26
	.word	4294967293                      # 0xfffffffd
	.word	46                              # 0x2e
	.word	4294967291                      # 0xfffffffb
	.word	31                              # 0x1f
	.word	20                              # 0x14
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	25                              # 0x19
	.word	44                              # 0x2c
	.word	12                              # 0xc
	.word	48                              # 0x30
	.word	11                              # 0xb
	.word	49                              # 0x31
	.word	26                              # 0x1a
	.word	45                              # 0x2d
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	22                              # 0x16
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	22                              # 0x16
	.word	27                              # 0x1b
	.word	21                              # 0x15
	.word	33                              # 0x21
	.word	20                              # 0x14
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	42                              # 0x2a
	.word	25                              # 0x19
	.word	39                              # 0x27
	.word	18                              # 0x12
	.word	50                              # 0x32
	.word	12                              # 0xc
	.word	70                              # 0x46
	.word	21                              # 0x15
	.word	54                              # 0x36
	.word	14                              # 0xe
	.word	71                              # 0x47
	.word	11                              # 0xb
	.word	83                              # 0x53
	.word	17                              # 0x11
	.word	4294967283                      # 0xfffffff3
	.word	16                              # 0x10
	.word	4294967287                      # 0xfffffff7
	.word	17                              # 0x11
	.word	4294967284                      # 0xfffffff4
	.word	27                              # 0x1b
	.word	4294967275                      # 0xffffffeb
	.word	37                              # 0x25
	.word	4294967266                      # 0xffffffe2
	.word	41                              # 0x29
	.word	4294967256                      # 0xffffffd8
	.word	42                              # 0x2a
	.word	4294967255                      # 0xffffffd7
	.word	48                              # 0x30
	.word	4294967249                      # 0xffffffd1
	.word	39                              # 0x27
	.word	4294967264                      # 0xffffffe0
	.word	46                              # 0x2e
	.word	4294967256                      # 0xffffffd8
	.word	52                              # 0x34
	.word	4294967245                      # 0xffffffcd
	.word	46                              # 0x2e
	.word	4294967255                      # 0xffffffd7
	.word	52                              # 0x34
	.word	4294967257                      # 0xffffffd9
	.word	43                              # 0x2b
	.word	4294967277                      # 0xffffffed
	.word	32                              # 0x20
	.word	11                              # 0xb
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	61                              # 0x3d
	.word	4294967241                      # 0xffffffc9
	.word	56                              # 0x38
	.word	4294967250                      # 0xffffffd2
	.word	62                              # 0x3e
	.word	4294967246                      # 0xffffffce
	.word	81                              # 0x51
	.word	4294967229                      # 0xffffffbd
	.word	45                              # 0x2d
	.word	4294967276                      # 0xffffffec
	.word	35                              # 0x23
	.word	4294967294                      # 0xfffffffe
	.word	28                              # 0x1c
	.word	15                              # 0xf
	.word	34                              # 0x22
	.word	1                               # 0x1
	.word	39                              # 0x27
	.word	1                               # 0x1
	.word	30                              # 0x1e
	.word	17                              # 0x11
	.word	20                              # 0x14
	.word	38                              # 0x26
	.word	18                              # 0x12
	.word	45                              # 0x2d
	.word	15                              # 0xf
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	79                              # 0x4f
	.word	9                               # 0x9
	.word	4294967294                      # 0xfffffffe
	.word	30                              # 0x1e
	.word	4294967286                      # 0xfffffff6
	.word	31                              # 0x1f
	.word	4294967292                      # 0xfffffffc
	.word	33                              # 0x21
	.word	4294967295                      # 0xffffffff
	.word	33                              # 0x21
	.word	7                               # 0x7
	.word	31                              # 0x1f
	.word	12                              # 0xc
	.word	37                              # 0x25
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	38                              # 0x26
	.word	20                              # 0x14
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	36                              # 0x24
	.word	4294967280                      # 0xfffffff0
	.word	37                              # 0x25
	.word	4294967282                      # 0xfffffff2
	.word	37                              # 0x25
	.word	4294967279                      # 0xffffffef
	.word	32                              # 0x20
	.word	1                               # 0x1
	.word	34                              # 0x22
	.word	15                              # 0xf
	.word	29                              # 0x1d
	.word	15                              # 0xf
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	34                              # 0x22
	.word	22                              # 0x16
	.word	31                              # 0x1f
	.word	16                              # 0x10
	.word	35                              # 0x23
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	28                              # 0x1c
	.word	33                              # 0x21
	.word	41                              # 0x29
	.word	36                              # 0x24
	.word	28                              # 0x1c
	.word	27                              # 0x1b
	.word	47                              # 0x2f
	.word	21                              # 0x15
	.word	62                              # 0x3e
	.word	18                              # 0x12
	.word	31                              # 0x1f
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	36                              # 0x24
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	0                               # 0x0
	.word	64                              # 0x40
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	29                              # 0x1d
	.word	22                              # 0x16
	.word	41                              # 0x29
	.word	22                              # 0x16
	.word	42                              # 0x2a
	.word	16                              # 0x10
	.word	60                              # 0x3c
	.word	15                              # 0xf
	.word	52                              # 0x34
	.word	14                              # 0xe
	.word	60                              # 0x3c
	.word	3                               # 0x3
	.word	78                              # 0x4e
	.word	4294967280                      # 0xfffffff0
	.word	123                             # 0x7b
	.word	21                              # 0x15
	.word	53                              # 0x35
	.word	22                              # 0x16
	.word	56                              # 0x38
	.word	25                              # 0x19
	.word	61                              # 0x3d
	.size	INIT_FLD_LAST_P, 2880

	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym INIT_MB_TYPE_I
	.addrsig_sym INIT_MB_TYPE_P
	.addrsig_sym INIT_B8_TYPE_I
	.addrsig_sym INIT_B8_TYPE_P
	.addrsig_sym INIT_MV_RES_I
	.addrsig_sym INIT_MV_RES_P
	.addrsig_sym INIT_REF_NO_I
	.addrsig_sym INIT_REF_NO_P
	.addrsig_sym INIT_DELTA_QP_I
	.addrsig_sym INIT_DELTA_QP_P
	.addrsig_sym INIT_MB_AFF_I
	.addrsig_sym INIT_MB_AFF_P
	.addrsig_sym INIT_TRANSFORM_SIZE_I
	.addrsig_sym INIT_TRANSFORM_SIZE_P
	.addrsig_sym INIT_IPR_I
	.addrsig_sym INIT_IPR_P
	.addrsig_sym INIT_CIPR_I
	.addrsig_sym INIT_CIPR_P
	.addrsig_sym INIT_CBP_I
	.addrsig_sym INIT_CBP_P
	.addrsig_sym INIT_BCBP_I
	.addrsig_sym INIT_BCBP_P
	.addrsig_sym INIT_MAP_I
	.addrsig_sym INIT_MAP_P
	.addrsig_sym INIT_LAST_I
	.addrsig_sym INIT_LAST_P
	.addrsig_sym INIT_ONE_I
	.addrsig_sym INIT_ONE_P
	.addrsig_sym INIT_ABS_I
	.addrsig_sym INIT_ABS_P
	.addrsig_sym INIT_FLD_MAP_I
	.addrsig_sym INIT_FLD_MAP_P
	.addrsig_sym INIT_FLD_LAST_I
	.addrsig_sym INIT_FLD_LAST_P
