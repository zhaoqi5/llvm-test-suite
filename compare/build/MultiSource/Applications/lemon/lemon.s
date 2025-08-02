	.file	"lemon.c"
	.text
	.globl	Action_add                      # -- Begin function Action_add
	.p2align	5
	.type	Action_add,@function
Action_add:                             # @Action_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(Action_new.freelist)
	ld.d	$a4, $fp, %pc_lo12(Action_new.freelist)
	bnez	$a4, .LBB0_5
# %bb.1:                                # %if.then.i
	move	$s0, $a0
	move	$s1, $a1
	move	$s2, $a2
	move	$s3, $a3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB0_6
# %bb.2:                                # %vector.body.preheader
	move	$a4, $a0
	addi.d	$a0, $a0, 40
	ori	$a1, $zero, 98
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a0, 40
	st.d	$a0, $a0, -16
	st.d	$a2, $a0, 24
	addi.d	$a1, $a1, -2
	addi.d	$a0, $a0, 80
	bnez	$a1, .LBB0_3
# %bb.4:                                # %for.body.i
	addi.d	$a0, $a4, 2047
	addi.d	$a0, $a0, 1913
	stptr.d	$a0, $a4, 3944
	stptr.d	$zero, $a4, 3984
	move	$a3, $s3
	move	$a2, $s2
	move	$a1, $s1
	move	$a0, $s0
.LBB0_5:                                # %Action_new.exit
	ld.d	$a5, $a4, 24
	st.d	$a5, $fp, %pc_lo12(Action_new.freelist)
	ld.d	$a5, $a0, 0
	st.d	$a5, $a4, 24
	st.d	$a4, $a0, 0
	st.w	$a1, $a4, 8
	st.d	$a2, $a4, 0
	st.d	$a3, $a4, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_6:                                # %if.then3.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	Action_add, .Lfunc_end0-Action_add
                                        # -- End function
	.globl	acttab_free                     # -- Begin function acttab_free
	.p2align	5
	.type	acttab_free,@function
acttab_free:                            # @acttab_free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	acttab_free, .Lfunc_end1-acttab_free
                                        # -- End function
	.globl	acttab_alloc                    # -- Begin function acttab_alloc
	.p2align	5
	.type	acttab_alloc,@function
acttab_alloc:                           # @acttab_alloc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	acttab_alloc, .Lfunc_end2-acttab_alloc
                                        # -- End function
	.globl	acttab_action                   # -- Begin function acttab_action
	.p2align	5
	.type	acttab_action,@function
acttab_action:                          # @acttab_action
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 36
	ld.w	$a3, $fp, 40
	move	$s0, $a2
	move	$s1, $a1
	blt	$a0, $a3, .LBB3_3
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 16
	addi.w	$a1, $a3, 25
	st.w	$a1, $fp, 40
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB3_10
# %bb.2:                                # %if.end9thread-pre-split
	ld.w	$a0, $fp, 36
.LBB3_3:                                # %if.end9
	beqz	$a0, .LBB3_7
# %bb.4:                                # %if.else
	ld.w	$a1, $fp, 32
	bge	$a1, $s1, .LBB3_6
# %bb.5:                                # %if.then17
	st.w	$s1, $fp, 32
.LBB3_6:                                # %if.end19
	ld.w	$a1, $fp, 24
	blt	$s1, $a1, .LBB3_8
	b	.LBB3_9
.LBB3_7:                                # %if.then13
	st.w	$s1, $fp, 32
.LBB3_8:                                # %if.then23
	st.w	$s1, $fp, 24
	st.w	$s0, $fp, 28
.LBB3_9:                                # %if.end27
	ld.d	$a1, $fp, 16
	alsl.d	$a2, $a0, $a1, 3
	slli.d	$a3, $a0, 3
	stx.w	$s1, $a1, $a3
	st.w	$s0, $a2, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 36
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_10:                               # %if.then7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	acttab_action, .Lfunc_end3-acttab_action
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function acttab_insert
.LCPI4_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	acttab_insert
	.p2align	5
	.type	acttab_insert,@function
acttab_insert:                          # @acttab_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 32
	ld.w	$a3, $fp, 0
	ld.w	$s0, $fp, 4
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, 1
	blt	$a0, $s0, .LBB4_5
# %bb.1:                                # %if.then
	add.d	$a1, $s0, $a0
	ld.d	$a0, $fp, 8
	addi.w	$a1, $a1, 20
	st.w	$a1, $fp, 4
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB4_47
# %bb.2:                                # %for.cond.preheader
	ld.w	$a1, $fp, 4
	bge	$s0, $a1, .LBB4_4
# %bb.3:                                # %for.body.preheader
	alsl.d	$a0, $s0, $a0, 3
	sub.d	$a1, $s0, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %if.end23thread-pre-split
	ld.w	$a3, $fp, 0
.LBB4_5:                                # %if.end23
	ld.w	$a1, $fp, 24
	add.w	$a0, $a1, $a3
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_39
# %bb.6:                                # %for.body29.lr.ph
	move	$a4, $zero
	move	$t5, $zero
	ld.d	$a5, $fp, 8
	bstrpick.d	$a6, $a3, 31, 0
	bstrpick.d	$a7, $a3, 30, 3
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a5, 32
	addi.w	$t1, $zero, -1
	ori	$t2, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	move	$t3, $a1
	b	.LBB4_9
.LBB4_7:                                # %for.end84
                                        #   in Loop: Header=BB4_9 Depth=1
	beq	$t4, $a3, .LBB4_38
	.p2align	4, , 16
.LBB4_8:                                # %for.inc192
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$t4, $a4, 1
	nor	$t5, $a4, $zero
	addi.d	$t3, $t3, -1
	move	$a4, $t4
	beq	$t4, $a0, .LBB4_40
.LBB4_9:                                # %for.body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_36 Depth 2
                                        #     Child Loop BB4_24 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	slli.d	$t4, $a4, 3
	ldx.w	$t4, $a5, $t4
	bge	$t1, $t4, .LBB4_22
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB4_9 Depth=1
	bne	$t4, $a1, .LBB4_8
# %bb.11:                               # %if.then97
                                        #   in Loop: Header=BB4_9 Depth=1
	alsl.d	$t4, $a4, $a5, 3
	ld.w	$t4, $t4, 4
	ld.w	$t6, $fp, 28
	bne	$t4, $t6, .LBB4_8
# %bb.12:                               # %for.cond106.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.w	$t4, $fp, 36
	blt	$t4, $a2, .LBB4_19
# %bb.13:                               # %for.body110.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$t6, $fp, 16
	addi.d	$t6, $t6, 4
	move	$t7, $t4
	.p2align	4, , 16
.LBB4_14:                               # %for.body110
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $t6, -4
	sub.d	$t8, $s0, $a1
	add.w	$t8, $t8, $a4
	bltz	$t8, .LBB4_8
# %bb.15:                               # %for.body110
                                        #   in Loop: Header=BB4_14 Depth=2
	bge	$t8, $a3, .LBB4_8
# %bb.16:                               # %if.end124
                                        #   in Loop: Header=BB4_14 Depth=2
	slli.d	$s1, $t8, 3
	ldx.w	$s1, $a5, $s1
	bne	$s0, $s1, .LBB4_8
# %bb.17:                               # %if.end136
                                        #   in Loop: Header=BB4_14 Depth=2
	alsl.d	$t8, $t8, $a5, 3
	ld.w	$s0, $t6, 0
	ld.w	$t8, $t8, 4
	bne	$s0, $t8, .LBB4_8
# %bb.18:                               # %for.cond106
                                        #   in Loop: Header=BB4_14 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB4_14
.LBB4_19:                               # %for.cond157.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	blt	$a3, $a2, .LBB4_31
# %bb.20:                               # %for.body161.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	bgeu	$a3, $t2, .LBB4_32
# %bb.21:                               #   in Loop: Header=BB4_9 Depth=1
	move	$t7, $zero
	move	$t5, $zero
	move	$t8, $zero
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_22:                               # %for.cond37.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.w	$t4, $fp, 36
	blt	$t4, $a2, .LBB4_27
# %bb.23:                               # %for.body40.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$t5, $fp, 16
	.p2align	4, , 16
.LBB4_24:                               # %for.body40
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, 0
	sub.d	$t6, $t6, $a1
	add.w	$t6, $t6, $a4
	bltz	$t6, .LBB4_8
# %bb.25:                               # %if.end49
                                        #   in Loop: Header=BB4_24 Depth=2
	slli.d	$t6, $t6, 3
	ldx.w	$t6, $a5, $t6
	blt	$t1, $t6, .LBB4_8
# %bb.26:                               # %for.cond37
                                        #   in Loop: Header=BB4_24 Depth=2
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 8
	bnez	$t4, .LBB4_24
.LBB4_27:                               # %for.cond66.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$t4, $zero
	blt	$a3, $a2, .LBB4_7
# %bb.28:                               # %for.body70.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$t5, $a6
	move	$t6, $a5
	.p2align	4, , 16
.LBB4_29:                               # %for.body70
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t6, 0
	add.w	$t8, $t3, $t4
	beq	$t8, $t7, .LBB4_7
# %bb.30:                               # %for.inc82
                                        #   in Loop: Header=BB4_29 Depth=2
	addi.w	$t4, $t4, 1
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 8
	bnez	$t5, .LBB4_29
	b	.LBB4_38
.LBB4_31:                               #   in Loop: Header=BB4_9 Depth=1
	move	$t5, $zero
	b	.LBB4_37
.LBB4_32:                               # %vector.ph
                                        #   in Loop: Header=BB4_9 Depth=1
	pcalau12i	$t6, %pc_hi20(.LCPI4_0)
	vld	$vr2, $t6, %pc_lo12(.LCPI4_0)
	add.d	$t5, $a1, $t5
	vreplgr2vr.w	$vr3, $t5
	vaddi.wu	$vr4, $vr3, 4
	move	$t5, $t0
	move	$t6, $a7
	vori.b	$vr5, $vr0, 0
	vori.b	$vr6, $vr0, 0
	.p2align	4, , 16
.LBB4_33:                               # %vector.body
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, -32
	ld.w	$t8, $t5, -24
	ld.w	$s0, $t5, -16
	ld.w	$s1, $t5, -8
	vinsgr2vr.w	$vr7, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 1
	vinsgr2vr.w	$vr7, $s0, 2
	vinsgr2vr.w	$vr7, $s1, 3
	ld.w	$t7, $t5, 0
	ld.w	$t8, $t5, 8
	ld.w	$s0, $t5, 16
	ld.w	$s1, $t5, 24
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $s0, 2
	vinsgr2vr.w	$vr8, $s1, 3
	vslt.w	$vr9, $vr1, $vr7
	vslt.w	$vr10, $vr1, $vr8
	vadd.w	$vr11, $vr3, $vr2
	vadd.w	$vr12, $vr2, $vr4
	vseq.w	$vr7, $vr7, $vr11
	vseq.w	$vr8, $vr8, $vr12
	vand.v	$vr7, $vr9, $vr7
	vand.v	$vr8, $vr10, $vr8
	vsub.w	$vr5, $vr5, $vr7
	vsub.w	$vr6, $vr6, $vr8
	vaddi.wu	$vr2, $vr2, 8
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB4_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=1
	vadd.w	$vr2, $vr6, $vr5
	vshuf4i.w	$vr3, $vr2, 14
	vadd.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vadd.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$t5, $vr2, 0
	move	$t7, $a7
	move	$t8, $a7
	beq	$a7, $a6, .LBB4_37
.LBB4_35:                               # %for.body161.preheader
                                        #   in Loop: Header=BB4_9 Depth=1
	alsl.d	$t6, $t7, $a5, 3
	sub.d	$t7, $a6, $t7
	add.w	$t8, $t8, $t3
	.p2align	4, , 16
.LBB4_36:                               # %for.body161
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $t6, 0
	slt	$s1, $t1, $s0
	xor	$s0, $t8, $s0
	sltui	$s0, $s0, 1
	and	$s0, $s1, $s0
	add.w	$t5, $t5, $s0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, -1
	addi.w	$t8, $t8, 1
	bnez	$t7, .LBB4_36
.LBB4_37:                               # %for.end184
                                        #   in Loop: Header=BB4_9 Depth=1
	bne	$t5, $t4, .LBB4_8
.LBB4_38:
	move	$a0, $a4
	ld.w	$a3, $fp, 36
	bge	$a3, $a2, .LBB4_41
	b	.LBB4_46
.LBB4_39:
	move	$a0, $zero
.LBB4_40:                               # %for.end194
	ld.w	$a3, $fp, 36
	blt	$a3, $a2, .LBB4_46
.LBB4_41:                               # %for.body199.lr.ph
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %for.inc220
                                        #   in Loop: Header=BB4_43 Depth=1
	ld.w	$a3, $fp, 36
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bge	$a2, $a3, .LBB4_45
.LBB4_43:                               # %for.body199
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 16
	ldx.w	$a4, $a3, $a1
	ld.w	$a5, $fp, 24
	ld.d	$a6, $fp, 8
	ldx.d	$a7, $a3, $a1
	sub.d	$a3, $a4, $a5
	add.w	$a3, $a3, $a0
	slli.d	$a4, $a3, 3
	stx.d	$a7, $a6, $a4
	ld.w	$a4, $fp, 0
	blt	$a3, $a4, .LBB4_42
# %bb.44:                               # %if.then216
                                        #   in Loop: Header=BB4_43 Depth=1
	addi.d	$a3, $a3, 1
	st.w	$a3, $fp, 0
	b	.LBB4_42
.LBB4_45:                               # %for.end222.loopexit
	ld.w	$a1, $fp, 24
.LBB4_46:                               # %for.end222
	sub.w	$a0, $a0, $a1
	st.w	$zero, $fp, 36
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_47:                               # %if.then14
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	acttab_insert, .Lfunc_end4-acttab_insert
                                        # -- End function
	.globl	FindRulePrecedences             # -- Begin function FindRulePrecedences
	.p2align	5
	.type	FindRulePrecedences,@function
FindRulePrecedences:                    # @FindRulePrecedences
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB5_15
# %bb.1:                                # %for.body.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	addi.w	$a3, $zero, -1
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %for.inc32
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB5_15
.LBB5_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_11 Depth 3
	ld.d	$a4, $a0, 64
	bnez	$a4, .LBB5_2
# %bb.4:                                # %for.cond1.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a4, $a0, 24
	blt	$a4, $a1, .LBB5_2
# %bb.5:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=2
	move	$a6, $zero
	addi.d	$a5, $a5, 1
	beq	$a5, $a4, .LBB5_2
.LBB5_7:                                # %land.rhs
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
	bnez	$a6, .LBB5_2
# %bb.8:                                # %for.body5
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a6, $a0, 32
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $a6, 12
	bne	$a7, $a2, .LBB5_13
# %bb.9:                                # %for.cond8.preheader
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a7, $a6, 84
	blt	$a7, $a1, .LBB5_6
# %bb.10:                               # %for.body10.lr.ph
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$t0, $a6, 88
	.p2align	4, , 16
.LBB5_11:                               # %for.body10
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $t0, 0
	ld.w	$t1, $a6, 32
	blt	$a3, $t1, .LBB5_14
# %bb.12:                               # %for.cond8
                                        #   in Loop: Header=BB5_11 Depth=3
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB5_11
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_13:                               # %if.else
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.w	$a7, $a6, 32
	bltz	$a7, .LBB5_6
.LBB5_14:                               # %if.end27.sink.split
                                        #   in Loop: Header=BB5_7 Depth=2
	st.d	$a6, $a0, 64
	addi.d	$a5, $a5, 1
	bne	$a5, $a4, .LBB5_7
	b	.LBB5_2
.LBB5_15:                               # %for.end33
	ret
.Lfunc_end5:
	.size	FindRulePrecedences, .Lfunc_end5-FindRulePrecedences
                                        # -- End function
	.globl	FindFirstSets                   # -- Begin function FindFirstSets
	.p2align	5
	.type	FindFirstSets,@function
FindFirstSets:                          # @FindFirstSets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_8
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a1, $fp, 32
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB6_3
# %bb.2:
	move	$a2, $zero
	b	.LBB6_6
.LBB6_3:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -32
	ld.d	$a6, $a3, -24
	ld.d	$a7, $a3, -16
	ld.d	$t0, $a3, -8
	ld.d	$t1, $a3, 0
	ld.d	$t2, $a3, 8
	ld.d	$t3, $a3, 16
	ld.d	$t4, $a3, 24
	st.w	$zero, $a5, 48
	st.w	$zero, $a6, 48
	st.w	$zero, $a7, 48
	st.w	$zero, $t0, 48
	st.w	$zero, $t1, 48
	st.w	$zero, $t2, 48
	st.w	$zero, $t3, 48
	st.w	$zero, $t4, 48
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB6_4
# %bb.5:                                # %middle.block
	beq	$a2, $a0, .LBB6_8
.LBB6_6:                                # %for.body.preheader
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB6_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.w	$zero, $a3, 48
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB6_7
.LBB6_8:                                # %for.end
	ld.w	$a1, $fp, 28
	pcalau12i	$s1, %pc_hi20(size)
	bge	$a1, $a0, .LBB6_12
# %bb.9:                                # %for.body4.lr.ph
	ld.w	$s0, $s1, %pc_lo12(size)
	slli.d	$s2, $a1, 3
	sub.d	$s3, $a0, $a1
	.p2align	4, , 16
.LBB6_10:                               # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_51
# %bb.11:                               # %SetNew.exit
                                        #   in Loop: Header=BB6_10 Depth=1
	ld.d	$a1, $fp, 32
	ldx.d	$a1, $a1, $s2
	st.d	$a0, $a1, 40
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB6_10
.LBB6_12:                               # %do.body.preheader
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB6_50
# %bb.13:                               # %for.body12.preheader
	move	$a2, $zero
	ori	$a1, $zero, 1
	move	$a3, $a0
	.p2align	4, , 16
.LBB6_14:                               # %for.body12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a4, 48
	bnez	$a5, .LBB6_23
# %bb.15:                               # %for.cond15.preheader
                                        #   in Loop: Header=BB6_14 Depth=1
	ld.w	$a5, $a3, 24
	blt	$a5, $a1, .LBB6_20
# %bb.16:                               # %for.body17.lr.ph
                                        #   in Loop: Header=BB6_14 Depth=1
	ld.d	$a7, $a3, 32
	move	$a6, $zero
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_17:                               # %for.body17
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	ld.w	$t2, $t1, 12
	bnez	$t2, .LBB6_21
# %bb.18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_17 Depth=2
	ld.w	$t1, $t1, 48
	beqz	$t1, .LBB6_21
# %bb.19:                               # %for.inc25
                                        #   in Loop: Header=BB6_17 Depth=2
	addi.w	$a6, $a6, 1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB6_17
	b	.LBB6_22
.LBB6_20:                               #   in Loop: Header=BB6_14 Depth=1
	move	$a6, $zero
.LBB6_21:                               # %for.end27
                                        #   in Loop: Header=BB6_14 Depth=1
	bne	$a6, $a5, .LBB6_23
.LBB6_22:                               # %if.then30
                                        #   in Loop: Header=BB6_14 Depth=1
	ori	$a2, $zero, 1
	st.w	$a2, $a4, 48
.LBB6_23:                               # %for.inc34
                                        #   in Loop: Header=BB6_14 Depth=1
	ld.d	$a3, $a3, 88
	bnez	$a3, .LBB6_14
# %bb.24:                               # %for.cond11.do.cond_crit_edge
                                        #   in Loop: Header=BB6_14 Depth=1
	move	$a4, $a2
	move	$a2, $zero
	move	$a3, $a0
	bnez	$a4, .LBB6_14
# %bb.25:                               # %do.body37.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	b	.LBB6_27
	.p2align	4, , 16
.LBB6_26:                               # %for.end94
                                        #   in Loop: Header=BB6_27 Depth=1
	beqz	$a3, .LBB6_50
.LBB6_27:                               # %do.body37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_31 Depth 2
                                        #       Child Loop BB6_35 Depth 3
                                        #         Child Loop BB6_41 Depth 4
                                        #       Child Loop BB6_49 Depth 3
	ld.d	$a2, $fp, 8
	beqz	$a2, .LBB6_50
# %bb.28:                               # %for.body41.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	move	$a3, $zero
	b	.LBB6_31
.LBB6_29:                               # %if.then52
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a4, $a4, 40
	ld.w	$a5, $a5, 8
	ldx.bu	$a6, $a4, $a5
	stx.b	$a0, $a4, $a5
	sltui	$a4, $a6, 1
	add.w	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_30:                               # %for.inc92
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a2, $a2, 88
	beqz	$a2, .LBB6_26
.LBB6_31:                               # %for.body41
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_35 Depth 3
                                        #         Child Loop BB6_41 Depth 4
                                        #       Child Loop BB6_49 Depth 3
	ld.w	$a7, $a2, 24
	blt	$a7, $a0, .LBB6_30
# %bb.32:                               # %for.body46.lr.ph
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.d	$a4, $a2, 0
	move	$a6, $zero
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_33:                               # %if.then72
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a5, $a4, 48
	beqz	$a5, .LBB6_30
# %bb.34:                               # %for.inc89
                                        #   in Loop: Header=BB6_35 Depth=3
	addi.d	$a6, $a6, 1
	bge	$a6, $a7, .LBB6_30
.LBB6_35:                               # %for.body46
                                        #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_41 Depth 4
	ld.d	$a5, $a2, 32
	slli.d	$t0, $a6, 3
	ldx.d	$a5, $a5, $t0
	ld.w	$t0, $a5, 12
	beqz	$t0, .LBB6_29
# %bb.36:                               # %for.body46
                                        #   in Loop: Header=BB6_35 Depth=3
	beq	$t0, $a1, .LBB6_47
# %bb.37:                               # %if.else70
                                        #   in Loop: Header=BB6_35 Depth=3
	beq	$a4, $a5, .LBB6_33
# %bb.38:                               # %if.else77
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a7, $s1, %pc_lo12(size)
	blt	$a7, $a0, .LBB6_44
# %bb.39:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.d	$t0, $a4, 40
	ld.d	$t1, $a5, 40
	move	$t2, $zero
	b	.LBB6_41
	.p2align	4, , 16
.LBB6_40:                               # %for.inc.i
                                        #   in Loop: Header=BB6_41 Depth=4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	addi.d	$t1, $t1, 1
	beqz	$a7, .LBB6_45
.LBB6_41:                               # %for.body.i
                                        #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        #       Parent Loop BB6_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t3, $t1, 0
	beqz	$t3, .LBB6_40
# %bb.42:                               # %if.end.i
                                        #   in Loop: Header=BB6_41 Depth=4
	ld.bu	$t3, $t0, 0
	bnez	$t3, .LBB6_40
# %bb.43:                               # %if.then8.i
                                        #   in Loop: Header=BB6_41 Depth=4
	ori	$t2, $zero, 1
	st.b	$t2, $t0, 0
	b	.LBB6_40
	.p2align	4, , 16
.LBB6_44:                               #   in Loop: Header=BB6_35 Depth=3
	move	$t2, $zero
.LBB6_45:                               # %SetUnion.exit
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a5, $a5, 48
	add.w	$a3, $t2, $a3
	beqz	$a5, .LBB6_30
# %bb.46:                               # %SetUnion.exit.for.inc89_crit_edge
                                        #   in Loop: Header=BB6_35 Depth=3
	ld.w	$a7, $a2, 24
	addi.d	$a6, $a6, 1
	blt	$a6, $a7, .LBB6_35
	b	.LBB6_30
.LBB6_47:                               # %for.cond58.preheader
                                        #   in Loop: Header=BB6_31 Depth=2
	ld.w	$a6, $a5, 84
	blt	$a6, $a0, .LBB6_30
# %bb.48:                               # %for.body60.lr.ph
                                        #   in Loop: Header=BB6_31 Depth=2
	move	$a6, $zero
	move	$a7, $zero
	.p2align	4, , 16
.LBB6_49:                               # %for.body60
                                        #   Parent Loop BB6_27 Depth=1
                                        #     Parent Loop BB6_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a5, 88
	ldx.d	$t0, $t0, $a6
	ld.d	$t1, $a4, 40
	ld.w	$t0, $t0, 8
	ldx.bu	$t2, $t1, $t0
	stx.b	$a0, $t1, $t0
	ld.w	$t0, $a5, 84
	sltui	$t1, $t2, 1
	add.w	$a3, $a3, $t1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t0, .LBB6_49
	b	.LBB6_30
.LBB6_50:                               # %do.end97
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_51:                               # %if.then.i
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	FindFirstSets, .Lfunc_end6-FindFirstSets
                                        # -- End function
	.globl	FindStates                      # -- Begin function FindStates
	.p2align	5
	.type	FindStates,@function
FindStates:                             # @FindStates
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	pcalau12i	$s1, %pc_hi20(x4a)
	ld.d	$a1, $s1, %pc_lo12(x4a)
	addi.d	$a0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, 0
	pcalau12i	$a2, %pc_hi20(basisend)
	st.d	$a0, $a2, %pc_lo12(basisend)
	beqz	$a1, .LBB7_6
.LBB7_1:                                # %Configlist_init.exit
	ld.d	$s0, $fp, 96
	beqz	$s0, .LBB7_9
# %bb.2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB7_20
# %bb.3:                                # %if.end.i
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB7_10
# %bb.4:                                # %while.body.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $s0, 1
	.p2align	4, , 16
.LBB7_5:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB7_5
	b	.LBB7_11
.LBB7_6:                                # %if.end.i.i
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(x4a)
	beqz	$a0, .LBB7_1
# %bb.7:                                # %if.then2.i.i
	move	$s0, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	beqz	$a0, .LBB7_29
# %bb.8:                                # %if.else.i.i
	addi.d	$a0, $a0, 1536
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 512
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB7_1
.LBB7_9:                                # %if.else
	addi.d	$s1, $fp, 8
	b	.LBB7_21
.LBB7_10:
	move	$a1, $zero
.LBB7_11:                               # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	beqz	$s1, .LBB7_20
	.p2align	4, , 16
.LBB7_12:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_14
# %bb.13:                               # %if.end5.i
                                        #   in Loop: Header=BB7_12 Depth=1
	ld.d	$s1, $s1, 16
	bnez	$s1, .LBB7_12
	b	.LBB7_20
.LBB7_14:                               # %Symbol_find.exit
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB7_20
# %bb.15:                               # %if.end8
	ld.d	$s2, $fp, 8
	bnez	$s2, .LBB7_22
.LBB7_16:                               # %for.end23
	ld.d	$s0, $s1, 16
	beqz	$s0, .LBB7_19
# %bb.17:                               # %for.body27.preheader
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB7_18:                               # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s1, $s0, 16
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(Configlist_addbasis)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 16
	st.b	$s1, $a0, 0
	ld.d	$s0, $s0, 80
	bnez	$s0, .LBB7_18
.LBB7_19:                               # %for.end31
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(getstate)
	jr	$t8
.LBB7_20:                               # %if.then2
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a0, $fp, 240
	ld.d	$a4, $a1, 0
	addi.d	$s1, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a2, $a1, %pc_lo12(.L.str.2)
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
.LBB7_21:                               # %for.cond11.preheader.lr.ph.sink.split
	ld.d	$s2, $s1, 0
	ld.d	$s1, $s2, 0
.LBB7_22:                               # %for.cond11.preheader.lr.ph
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %for.end
                                        #   in Loop: Header=BB7_24 Depth=1
	ld.d	$s2, $s2, 88
	beqz	$s2, .LBB7_16
.LBB7_24:                               # %for.cond11.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
	ld.w	$a0, $s2, 24
	blt	$a0, $s3, .LBB7_23
# %bb.25:                               # %for.body13.lr.ph
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_26:                               # %for.inc
                                        #   in Loop: Header=BB7_27 Depth=2
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB7_23
.LBB7_27:                               # %for.body13
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 32
	ldx.d	$a1, $a1, $s4
	bne	$a1, $s1, .LBB7_26
# %bb.28:                               # %if.then15
                                        #   in Loop: Header=BB7_27 Depth=2
	ld.d	$a0, $fp, 240
	ld.d	$a3, $s1, 0
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	ld.w	$a0, $s2, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB7_26
.LBB7_29:                               # %if.then5.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(x4a)
	b	.LBB7_1
.Lfunc_end7:
	.size	FindStates, .Lfunc_end7-FindStates
                                        # -- End function
	.globl	ErrorMsg                        # -- Begin function ErrorMsg
	.p2align	5
	.type	ErrorMsg,@function
ErrorMsg:                               # @ErrorMsg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 1976                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1928                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1920                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1912                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1896                  # 8-byte Folded Spill
	lu12i.w	$t0, 2
	sub.d	$sp, $sp, $t0
	move	$s0, $a2
	move	$t0, $a1
	move	$t1, $a0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2024
	add.d	$a0, $sp, $a0
	st.d	$a7, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2016
	add.d	$a0, $sp, $a0
	st.d	$a6, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2008
	add.d	$a0, $sp, $a0
	st.d	$a5, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2000
	add.d	$a0, $sp, $a0
	st.d	$a4, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1992
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1992
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 40
	blt	$t0, $a1, .LBB8_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 20
	move	$a3, $t1
	move	$a4, $t0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 48
	ori	$a2, $zero, 20
	move	$a3, $t1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB8_3:                                # %if.end
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vsprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB8_7
# %bb.4:                                # %land.rhs.preheader
	bstrpick.d	$a2, $a0, 30, 0
	addi.d	$a0, $sp, 87
	ori	$a3, $zero, 10
	.p2align	4, , 16
.LBB8_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a0, $a2
	bne	$a4, $a3, .LBB8_7
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a4, $a2, -1
	addi.d	$a5, $a4, 1
	stx.b	$zero, $a0, $a2
	move	$a2, $a4
	bltu	$a1, $a5, .LBB8_5
.LBB8_7:                                # %while.end
	ld.bu	$a0, $sp, 88
	beqz	$a0, .LBB8_28
# %bb.8:                                # %while.body24.lr.ph
	addi.w	$a0, $fp, 0
	ori	$a1, $zero, 79
	ori	$s0, $zero, 0
	move	$s1, $zero
	bge	$a1, $a0, .LBB8_13
# %bb.9:                                # %while.body24.us.preheader
	addi.d	$s2, $sp, 88
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	lu32i.d	$s0, 1
	ori	$s4, $zero, 32
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$fp, $a0, %pc_lo12(.L.str.9)
	addi.d	$a4, $sp, 88
	.p2align	4, , 16
.LBB8_10:                               # %while.body24.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
	slli.d	$a0, $s1, 32
	add.d	$s6, $a0, $s3
	.p2align	4, , 16
.LBB8_11:                               # %while.cond28.us
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s1, $s2
	addi.d	$s1, $s1, 1
	add.d	$s6, $s6, $s0
	beq	$a0, $s4, .LBB8_11
# %bb.12:                               # %while.end35.us
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a0, $s5, 0
	addi.d	$a2, $sp, 48
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s6, 32
	ldx.bu	$a1, $a0, $s2
	add.d	$a4, $s2, $a0
	addi.w	$s1, $s1, -1
	bnez	$a1, .LBB8_10
	b	.LBB8_28
.LBB8_13:                               # %while.body24.preheader
	slli.d	$a0, $fp, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 78
	sub.d	$a0, $a1, $a0
	srai.d	$s2, $a0, 32
	ori	$a0, $zero, 80
	sub.d	$a0, $a0, $fp
	bstrpick.d	$s3, $a0, 31, 0
	addi.d	$s4, $sp, 88
	ori	$s5, $zero, 9
	ori	$s6, $zero, 32
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu32i.d	$s0, 1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 45
	ori	$fp, $zero, 10
	addi.d	$a4, $sp, 88
	.p2align	4, , 16
.LBB8_14:                               # %while.body24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #     Child Loop BB8_26 Depth 2
	move	$a1, $zero
	move	$a0, $zero
	move	$a3, $zero
	b	.LBB8_18
	.p2align	4, , 16
.LBB8_15:                               # %for.body.i
                                        #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $s8, .LBB8_21
# %bb.16:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB8_18 Depth=2
	slt	$a6, $a0, $s2
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a1, $a6
	or	$a3, $a6, $a3
.LBB8_17:                               # %if.end23.i
                                        #   in Loop: Header=BB8_18 Depth=2
	addi.d	$a5, $a5, -32
	sltui	$a5, $a5, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	addi.d	$a0, $a0, 1
	or	$a3, $a2, $a3
	beq	$s3, $a0, .LBB8_25
.LBB8_18:                               # %for.body.i
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a5, $a4, $a0
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	blt	$s5, $a5, .LBB8_15
# %bb.19:                               # %for.body.i
                                        #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $s5, .LBB8_22
# %bb.20:                               # %if.then.i
                                        #   in Loop: Header=BB8_18 Depth=2
	stx.b	$s6, $a4, $a0
	b	.LBB8_17
.LBB8_21:                               # %for.body.i
                                        #   in Loop: Header=BB8_18 Depth=2
	bne	$a5, $fp, .LBB8_17
	b	.LBB8_23
.LBB8_22:                               # %for.body.i
                                        #   in Loop: Header=BB8_18 Depth=2
	bnez	$a5, .LBB8_17
	b	.LBB8_24
	.p2align	4, , 16
.LBB8_23:                               # %if.then8.i
                                        #   in Loop: Header=BB8_14 Depth=1
	stx.b	$s6, $a4, $a0
.LBB8_24:                               # %findbreak.exit
                                        #   in Loop: Header=BB8_14 Depth=1
	move	$a3, $a2
.LBB8_25:                               # %findbreak.exit
                                        #   in Loop: Header=BB8_14 Depth=1
	add.w	$a0, $a3, $s1
	slli.d	$a1, $a0, 32
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$s7, $a1, $a2
	addi.d	$s1, $a0, -1
	add.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB8_26:                               # %while.cond28
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	add.d	$s7, $s7, $s0
	addi.d	$s1, $s1, 1
	addi.d	$a0, $a0, 1
	beq	$a1, $s6, .LBB8_26
# %bb.27:                               # %while.end35
                                        #   in Loop: Header=BB8_14 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 48
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s7, 32
	ldx.bu	$a1, $a0, $s4
	add.d	$a4, $s4, $a0
	bnez	$a1, .LBB8_14
.LBB8_28:                               # %while.end40
	lu12i.w	$a0, 2
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1912                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1920                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1976                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end8:
	.size	ErrorMsg, .Lfunc_end8-ErrorMsg
                                        # -- End function
	.globl	getstate                        # -- Begin function getstate
	.p2align	5
	.type	getstate,@function
getstate:                               # @getstate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	pcaddu18i	$ra, %call36(Configlist_sortbasis)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(basis)
	ld.d	$s0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$zero, $a0, %pc_lo12(basisend)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(State_find)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_18
# %bb.1:                                # %for.cond.preheader
	move	$fp, $a0
	beqz	$s0, .LBB9_12
# %bb.2:                                # %for.cond.preheader
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB9_12
# %bb.3:                                # %for.body.preheader
	pcalau12i	$a1, %pc_hi20(plink_freelist)
	ld.d	$a2, $a1, %pc_lo12(plink_freelist)
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB9_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #     Child Loop BB9_8 Depth 2
	ld.d	$a3, $s0, 32
	beqz	$a3, .LBB9_7
# %bb.5:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a4, $a0, 32
	.p2align	4, , 16
.LBB9_6:                                # %while.body.i
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 8
	st.d	$a4, $a3, 8
	st.d	$a3, $a0, 32
	move	$a4, $a3
	move	$a3, $a5
	bnez	$a5, .LBB9_6
.LBB9_7:                                # %Plink_copy.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a3, $s0, 24
	beqz	$a3, .LBB9_10
	.p2align	4, , 16
.LBB9_8:                                # %while.body.i25
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	move	$a2, $a3
	ld.d	$a3, $a3, 8
	st.d	$a4, $a2, 8
	bnez	$a3, .LBB9_8
# %bb.9:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB9_4 Depth=1
	st.d	$a2, $a1, %pc_lo12(plink_freelist)
.LBB9_10:                               # %Plink_delete.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a3, $s0, 24
	ld.d	$s0, $s0, 64
	vst	$vr0, $a3, 0
	beqz	$s0, .LBB9_12
# %bb.11:                               # %Plink_delete.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $a0, 64
	bnez	$a0, .LBB9_4
.LBB9_12:                               # %for.end
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	beqz	$s0, .LBB9_20
# %bb.13:                               # %for.body.preheader.i
	pcalau12i	$s1, %pc_hi20(freelist)
	ld.d	$s2, $s1, %pc_lo12(freelist)
	b	.LBB9_15
	.p2align	4, , 16
.LBB9_14:                               # %if.end.i
                                        #   in Loop: Header=BB9_15 Depth=1
	st.d	$s2, $s3, 56
	move	$s2, $s3
	beqz	$s0, .LBB9_17
.LBB9_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $s0
	ld.d	$a0, $s0, 16
	ld.d	$s0, $s0, 56
	beqz	$a0, .LBB9_14
# %bb.16:                               # %if.then.i
                                        #   in Loop: Header=BB9_15 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB9_14
.LBB9_17:                               # %for.cond.for.end_crit_edge.i
	st.d	$s3, $s1, %pc_lo12(freelist)
	b	.LBB9_20
.LBB9_18:                               # %if.else
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Configlist_closure)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(Configlist_sort)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s2, $a0, %pc_lo12(current)
	st.d	$zero, $a0, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_21
# %bb.19:                               # %if.end
	move	$fp, $a0
	ld.w	$a0, $s1, 16
	st.d	$s0, $fp, 0
	st.d	$s2, $fp, 8
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 16
	st.w	$a0, $fp, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(State_insert)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(buildshifts)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %if.end18
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB9_21:                               # %if.then.i31
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	getstate, .Lfunc_end9-getstate
                                        # -- End function
	.globl	same_symbol                     # -- Begin function same_symbol
	.p2align	5
	.type	same_symbol,@function
same_symbol:                            # @same_symbol
# %bb.0:                                # %entry
	beq	$a0, $a1, .LBB10_10
# %bb.1:                                # %if.end
	ld.w	$a3, $a0, 12
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB10_9
# %bb.2:                                # %if.end3
	ld.w	$a3, $a1, 12
	bne	$a3, $a2, .LBB10_9
# %bb.3:                                # %if.end7
	ld.w	$a2, $a0, 84
	ld.w	$a3, $a1, 84
	bne	$a2, $a3, .LBB10_9
# %bb.4:                                # %for.cond.preheader
	move	$a3, $a0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB10_8
# %bb.5:                                # %for.body.lr.ph
	ld.d	$a3, $a3, 88
	ld.d	$a1, $a1, 88
	.p2align	4, , 16
.LBB10_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a1, 0
	bne	$a4, $a5, .LBB10_9
# %bb.7:                                # %for.cond
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB10_6
.LBB10_8:                               # %cleanup
	ret
.LBB10_9:
	move	$a0, $zero
	ret
.LBB10_10:
	ori	$a0, $zero, 1
	ret
.Lfunc_end10:
	.size	same_symbol, .Lfunc_end10-same_symbol
                                        # -- End function
	.globl	buildshifts                     # -- Begin function buildshifts
	.p2align	5
	.type	buildshifts,@function
buildshifts:                            # @buildshifts
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
	ld.d	$s2, $a1, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s2, .LBB11_40
# %bb.1:
	move	$fp, $a1
	ori	$a0, $zero, 1
	move	$a1, $s2
	.p2align	4, , 16
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a1, 48
	ld.d	$a1, $a1, 56
	bnez	$a1, .LBB11_2
# %bb.3:
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$s5, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 2
	pcalau12i	$s8, %pc_hi20(Action_new.freelist)
	ori	$s4, $zero, 1568
	b	.LBB11_7
.LBB11_4:                               # %if.else
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_36
.LBB11_5:                               # %Action_add.exit60
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a1, $a0, 24
	ld.d	$a2, $fp, 24
	st.d	$a1, $s8, %pc_lo12(Action_new.freelist)
	st.d	$a2, $a0, 24
	st.d	$a0, $fp, 24
	st.w	$zero, $a0, 8
	st.d	$s6, $a0, 0
	st.d	$s1, $a0, 16
	.p2align	4, , 16
.LBB11_6:                               # %for.inc52
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$s2, $s2, 56
	beqz	$s2, .LBB11_40
.LBB11_7:                               # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_13 Depth 2
                                        #       Child Loop BB11_21 Depth 3
                                        #       Child Loop BB11_25 Depth 3
                                        #     Child Loop BB11_38 Depth 2
                                        #     Child Loop BB11_32 Depth 2
                                        #       Child Loop BB11_35 Depth 3
	ld.w	$a0, $s2, 48
	beqz	$a0, .LBB11_6
# %bb.8:                                # %if.end
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s2, 8
	ld.w	$a0, $a0, 24
	bge	$a1, $a0, .LBB11_6
# %bb.9:                                # %if.end9
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(currentend)
	st.d	$zero, $s5, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s5, $a0, %pc_lo12(basisend)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(Configtable_clear)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s2, 8
	ld.d	$a0, $a0, 32
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a0, $a1
	move	$s1, $s2
	b	.LBB11_13
.LBB11_10:                              # %if.end32
                                        #   in Loop: Header=BB11_13 Depth=2
	st.w	$zero, $s1, 48
	addi.w	$a1, $a1, 1
	pcaddu18i	$ra, %call36(Configlist_addbasis)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(plink_freelist)
	ld.d	$a1, $s0, %pc_lo12(plink_freelist)
	beqz	$a1, .LBB11_23
.LBB11_11:                              # %Plink_add.exit
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a2, $a1, 8
	ld.d	$a3, $a0, 32
	st.d	$a2, $s0, %pc_lo12(plink_freelist)
	st.d	$a3, $a1, 8
	st.d	$a1, $a0, 32
	st.d	$s1, $a1, 0
	.p2align	4, , 16
.LBB11_12:                              # %for.inc37
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$s1, $s1, 56
	beqz	$s1, .LBB11_27
.LBB11_13:                              # %for.body14
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_21 Depth 3
                                        #       Child Loop BB11_25 Depth 3
	ld.w	$a0, $s1, 48
	beqz	$a0, .LBB11_12
# %bb.14:                               # %if.end18
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a0, $s1, 0
	ld.w	$a1, $s1, 8
	ld.w	$a2, $a0, 24
	bge	$a1, $a2, .LBB11_12
# %bb.15:                               # %if.end24
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a2, $a0, 32
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $a2, $a3
	beq	$a3, $s6, .LBB11_10
# %bb.16:                               # %if.end.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $a3, 12
	bne	$a2, $s7, .LBB11_12
# %bb.17:                               # %if.end3.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $s6, 12
	bne	$a2, $s7, .LBB11_12
# %bb.18:                               # %if.end7.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.w	$a2, $a3, 84
	ld.w	$a4, $s6, 84
	bne	$a2, $a4, .LBB11_12
# %bb.19:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ori	$a4, $zero, 1
	blt	$a2, $a4, .LBB11_10
# %bb.20:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB11_13 Depth=2
	ld.d	$a3, $a3, 88
	ld.d	$a4, $s6, 88
	.p2align	4, , 16
.LBB11_21:                              # %for.body.i
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	bne	$a5, $a6, .LBB11_12
# %bb.22:                               # %for.cond.i
                                        #   in Loop: Header=BB11_21 Depth=3
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB11_21
	b	.LBB11_10
.LBB11_23:                              # %if.then.i.i
                                        #   in Loop: Header=BB11_13 Depth=2
	move	$s3, $a0
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB11_42
# %bb.24:                               # %vector.body83.preheader
                                        #   in Loop: Header=BB11_13 Depth=2
	move	$a1, $a0
	move	$a0, $zero
	.p2align	4, , 16
.LBB11_25:                              # %vector.body83
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a1, $a0
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a0, $a0, 32
	st.d	$a4, $a2, 24
	bne	$a0, $s4, .LBB11_25
# %bb.26:                               # %for.body.i.i
                                        #   in Loop: Header=BB11_13 Depth=2
	addi.d	$a0, $a1, 1584
	st.d	$a0, $a1, 1576
	st.d	$zero, $a1, 1592
	move	$a0, $s3
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_27:                              # %for.end39
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getstate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 12
	move	$s1, $a0
	bne	$a1, $s7, .LBB11_4
# %bb.28:                               # %for.cond43.preheader
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.w	$a0, $s6, 84
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_6
# %bb.29:                               # %for.body45.lr.ph
                                        #   in Loop: Header=BB11_7 Depth=1
	ld.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	move	$s0, $zero
	b	.LBB11_32
	.p2align	4, , 16
.LBB11_30:                              # %for.body.i.i36
                                        #   in Loop: Header=BB11_32 Depth=2
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
.LBB11_31:                              # %Action_add.exit
                                        #   in Loop: Header=BB11_32 Depth=2
	ld.d	$a1, $fp, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $fp, 24
	st.d	$s1, $a0, 16
	ld.w	$a1, $s6, 84
	st.d	$a2, $s8, %pc_lo12(Action_new.freelist)
	st.w	$zero, $a0, 8
	addi.d	$s0, $s0, 1
	st.d	$s3, $a0, 0
	move	$a0, $a2
	bge	$s0, $a1, .LBB11_6
.LBB11_32:                              # %for.body45
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_35 Depth 3
	ld.d	$a1, $s6, 88
	slli.d	$a2, $s0, 3
	ldx.d	$s3, $a1, $a2
	bnez	$a0, .LBB11_31
# %bb.33:                               # %if.then.i.i33
                                        #   in Loop: Header=BB11_32 Depth=2
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_41
# %bb.34:                               # %vector.body.preheader
                                        #   in Loop: Header=BB11_32 Depth=2
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB11_35:                              # %vector.body
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB11_35
	b	.LBB11_30
.LBB11_36:                              # %if.then.i.i48
                                        #   in Loop: Header=BB11_7 Depth=1
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB11_41
# %bb.37:                               # %vector.body76.preheader
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB11_38:                              # %vector.body76
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB11_38
# %bb.39:                               # %for.body.i.i51
                                        #   in Loop: Header=BB11_7 Depth=1
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
	b	.LBB11_5
.LBB11_40:                              # %for.end54
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
	ret
.LBB11_41:                              # %if.then3.i.i44
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB11_42:                              # %if.then3.i.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	buildshifts, .Lfunc_end11-buildshifts
                                        # -- End function
	.globl	FindLinks                       # -- Begin function FindLinks
	.p2align	5
	.type	FindLinks,@function
FindLinks:                              # @FindLinks
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.w	$fp, $a0, 16
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB12_17
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.inc5
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $fp, .LBB12_5
.LBB12_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a1, $a3
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB12_2
	.p2align	4, , 16
.LBB12_4:                               # %for.body3
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a3, $a4, 40
	ld.d	$a4, $a4, 56
	bnez	$a4, .LBB12_4
	b	.LBB12_2
.LBB12_5:                               # %for.body10.lr.ph
	ld.d	$s0, $a0, 0
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(plink_freelist)
	ori	$s3, $zero, 1568
	b	.LBB12_7
	.p2align	4, , 16
.LBB12_6:                               # %for.inc28
                                        #   in Loop: Header=BB12_7 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $fp, .LBB12_17
.LBB12_7:                               # %for.body10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #       Child Loop BB12_12 Depth 3
                                        #         Child Loop BB12_15 Depth 4
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$s4, $a0, 8
	bnez	$s4, .LBB12_9
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_8:                               # %for.inc25
                                        #   in Loop: Header=BB12_9 Depth=2
	ld.d	$s4, $s4, 56
	beqz	$s4, .LBB12_6
.LBB12_9:                               # %for.body17
                                        #   Parent Loop BB12_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_12 Depth 3
                                        #         Child Loop BB12_15 Depth 4
	ld.d	$s5, $s4, 32
	beqz	$s5, .LBB12_8
# %bb.10:                               # %for.body20.preheader
                                        #   in Loop: Header=BB12_9 Depth=2
	ld.d	$a0, $s2, %pc_lo12(plink_freelist)
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              # %Plink_add.exit
                                        #   in Loop: Header=BB12_12 Depth=3
	ld.d	$a1, $s6, 24
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 8
	st.d	$a0, $s6, 24
	ld.d	$s5, $s5, 8
	st.d	$a2, $s2, %pc_lo12(plink_freelist)
	st.d	$s4, $a0, 0
	move	$a0, $a2
	beqz	$s5, .LBB12_8
.LBB12_12:                              # %for.body20
                                        #   Parent Loop BB12_7 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_15 Depth 4
	ld.d	$s6, $s5, 0
	bnez	$a0, .LBB12_11
# %bb.13:                               # %if.then.i.i
                                        #   in Loop: Header=BB12_12 Depth=3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB12_18
# %bb.14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB12_12 Depth=3
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_15:                              # %vector.body
                                        #   Parent Loop BB12_7 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        #       Parent Loop BB12_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a2, $a0, $a1
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a1, $a1, 32
	st.d	$a4, $a2, 24
	bne	$a1, $s3, .LBB12_15
# %bb.16:                               # %for.body.i.i
                                        #   in Loop: Header=BB12_12 Depth=3
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
	b	.LBB12_11
.LBB12_17:                              # %for.end30
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB12_18:                              # %if.then3.i.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	FindLinks, .Lfunc_end12-FindLinks
                                        # -- End function
	.globl	FindFollowSets                  # -- Begin function FindFollowSets
	.p2align	5
	.type	FindFollowSets,@function
FindFollowSets:                         # @FindFollowSets
# %bb.0:                                # %entry
	ld.w	$a6, $a0, 16
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB13_28
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 0
	move	$a3, $zero
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.inc4
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a6, .LBB13_5
.LBB13_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB13_2
	.p2align	4, , 16
.LBB13_4:                               # %for.body3
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a4, 48
	ld.d	$a4, $a4, 56
	bnez	$a4, .LBB13_4
	b	.LBB13_2
.LBB13_5:                               # %do.body.preheader
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(size)
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %do.cond
                                        #   in Loop: Header=BB13_7 Depth=1
	beqz	$a4, .LBB13_28
.LBB13_7:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
                                        #       Child Loop BB13_14 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	blt	$a6, $a1, .LBB13_28
# %bb.8:                                # %for.body9.preheader
                                        #   in Loop: Header=BB13_7 Depth=1
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB13_11
	.p2align	4, , 16
.LBB13_9:                               # %for.inc36.loopexit
                                        #   in Loop: Header=BB13_11 Depth=2
	ld.w	$a6, $a0, 16
.LBB13_10:                              # %for.inc36
                                        #   in Loop: Header=BB13_11 Depth=2
	addi.d	$a3, $a3, 1
	bge	$a3, $a6, .LBB13_6
.LBB13_11:                              # %for.body9
                                        #   Parent Loop BB13_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_14 Depth 3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	ld.d	$a5, $a0, 0
	slli.d	$a7, $a3, 3
	ldx.d	$a5, $a5, $a7
	ld.d	$a5, $a5, 8
	bnez	$a5, .LBB13_14
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_12:                              # %for.end31
                                        #   in Loop: Header=BB13_14 Depth=3
	st.w	$zero, $a5, 48
.LBB13_13:                              # %for.inc33
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a5, $a5, 56
	beqz	$a5, .LBB13_9
.LBB13_14:                              # %for.body16
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_19 Depth 4
                                        #           Child Loop BB13_21 Depth 5
                                        #         Child Loop BB13_26 Depth 4
	ld.w	$a6, $a5, 48
	beqz	$a6, .LBB13_13
# %bb.15:                               # %if.end
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a6, $a5, 24
	beqz	$a6, .LBB13_12
# %bb.16:                               # %for.body21.lr.ph
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.w	$a7, $a2, %pc_lo12(size)
	blt	$a7, $a1, .LBB13_12
# %bb.17:                               #   in Loop: Header=BB13_14 Depth=3
	bstrpick.d	$t2, $a7, 31, 0
	addi.w	$a7, $t2, 0
	blt	$a7, $a1, .LBB13_26
	.p2align	4, , 16
.LBB13_18:                              # %for.body.preheader.i
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a7, $a6, 0
	ld.d	$a7, $a7, 16
	ld.d	$t0, $a5, 16
	move	$t1, $zero
	sub.d	$t2, $zero, $t2
	ori	$t3, $zero, 1
.LBB13_19:                              # %for.body.i.outer
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB13_21 Depth 5
	addi.d	$t1, $t1, 1
	b	.LBB13_21
	.p2align	4, , 16
.LBB13_20:                              # %for.inc.i
                                        #   in Loop: Header=BB13_21 Depth=5
	addi.d	$t1, $t1, 1
	add.d	$t4, $t2, $t1
	beq	$t4, $a1, .LBB13_24
.LBB13_21:                              # %for.body.i
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        #         Parent Loop BB13_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.d	$t4, $t0, $t1
	ld.bu	$t4, $t4, -1
	beqz	$t4, .LBB13_20
# %bb.22:                               # %if.end.i
                                        #   in Loop: Header=BB13_21 Depth=5
	add.d	$t4, $a7, $t1
	ld.bu	$t5, $t4, -1
	bnez	$t5, .LBB13_20
# %bb.23:                               # %for.inc.i.thread
                                        #   in Loop: Header=BB13_19 Depth=4
	move	$t3, $zero
	add.d	$t5, $t2, $t1
	st.b	$a1, $t4, -1
	bnez	$t5, .LBB13_19
	b	.LBB13_25
	.p2align	4, , 16
.LBB13_24:                              # %SetUnion.exit
                                        #   in Loop: Header=BB13_14 Depth=3
	andi	$a7, $t3, 1
	bnez	$a7, .LBB13_26
.LBB13_25:                              # %if.then25
                                        #   in Loop: Header=BB13_14 Depth=3
	ld.d	$a7, $a6, 0
	ori	$a4, $zero, 1
	st.w	$a4, $a7, 48
.LBB13_26:                              # %for.inc29
                                        #   Parent Loop BB13_7 Depth=1
                                        #     Parent Loop BB13_11 Depth=2
                                        #       Parent Loop BB13_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a6, 8
	beqz	$a6, .LBB13_12
# %bb.27:                               # %for.body21thread-pre-split
                                        #   in Loop: Header=BB13_26 Depth=4
	ld.wu	$t2, $a2, %pc_lo12(size)
	addi.w	$a7, $t2, 0
	bge	$a7, $a1, .LBB13_18
	b	.LBB13_26
.LBB13_28:                              # %do.end
	ret
.Lfunc_end13:
	.size	FindFollowSets, .Lfunc_end13-FindFollowSets
                                        # -- End function
	.globl	FindActions                     # -- Begin function FindActions
	.p2align	5
	.type	FindActions,@function
FindActions:                            # @FindActions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	ori	$s0, $zero, 1
	pcalau12i	$s1, %pc_hi20(Action_new.freelist)
	blt	$a0, $s0, .LBB14_17
# %bb.1:                                # %for.body.lr.ph
	move	$s2, $zero
	ori	$s3, $zero, 2
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_2:                               # %for.inc19.loopexit
                                        #   in Loop: Header=BB14_4 Depth=1
	ld.w	$a0, $fp, 16
.LBB14_3:                               # %for.inc19
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB14_17
.LBB14_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a1, $fp, 0
	slli.d	$a2, $s2, 3
	ldx.d	$s4, $a1, $a2
	ld.d	$s5, $s4, 8
	bnez	$s5, .LBB14_6
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_5:                               # %for.inc17
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.d	$s5, $s5, 56
	beqz	$s5, .LBB14_2
.LBB14_6:                               # %for.body3
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_11 Depth 3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 24
	ld.w	$a1, $s5, 8
	bne	$a0, $a1, .LBB14_5
# %bb.7:                                # %for.cond6.preheader
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.w	$a1, $fp, 28
	blt	$a1, $s0, .LBB14_5
# %bb.8:                                # %for.body8.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=2
	ld.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	move	$s6, $zero
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_9:                               # %Action_add.exit
                                        #   in Loop: Header=BB14_11 Depth=3
	ld.d	$a1, $s4, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $s4, 24
	st.d	$s8, $a0, 16
	ld.w	$a1, $fp, 28
	st.d	$a2, $s1, %pc_lo12(Action_new.freelist)
	st.w	$s3, $a0, 8
	st.d	$s7, $a0, 0
	move	$a0, $a2
.LBB14_10:                              # %for.inc
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.d	$s6, $s6, 1
	bge	$s6, $a1, .LBB14_5
.LBB14_11:                              # %for.body8
                                        #   Parent Loop BB14_4 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_15 Depth 4
	ld.d	$a2, $s5, 16
	ldx.bu	$a2, $a2, $s6
	beqz	$a2, .LBB14_10
# %bb.12:                               # %if.then12
                                        #   in Loop: Header=BB14_11 Depth=3
	ld.d	$a1, $fp, 32
	slli.d	$a2, $s6, 3
	ldx.d	$s7, $a1, $a2
	ld.d	$s8, $s5, 0
	bnez	$a0, .LBB14_9
# %bb.13:                               # %if.then.i.i
                                        #   in Loop: Header=BB14_11 Depth=3
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB14_85
# %bb.14:                               # %vector.body.preheader
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB14_15:                              # %vector.body
                                        #   Parent Loop BB14_4 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        #       Parent Loop BB14_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB14_15
# %bb.16:                               # %for.body.i.i
                                        #   in Loop: Header=BB14_11 Depth=3
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
	b	.LBB14_9
.LBB14_17:                              # %for.end21
	ld.d	$s0, $fp, 96
	beqz	$s0, .LBB14_27
# %bb.18:                               # %if.then23
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB14_27
# %bb.19:                               # %if.end.i
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB14_22
# %bb.20:                               # %while.body.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $s0, 1
	.p2align	4, , 16
.LBB14_21:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB14_21
	b	.LBB14_23
.LBB14_22:
	move	$a1, $zero
.LBB14_23:                              # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s2, $a0, $a1
	beqz	$s2, .LBB14_27
	.p2align	4, , 16
.LBB14_24:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_26
# %bb.25:                               # %if.end5.i
                                        #   in Loop: Header=BB14_24 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB14_24
	b	.LBB14_27
.LBB14_26:                              # %Symbol_find.exit
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB14_28
.LBB14_27:                              # %if.end30.sink.split
	ld.d	$a0, $fp, 8
	ld.d	$s2, $a0, 0
.LBB14_28:                              # %if.end30
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	ld.d	$s0, $a1, 0
	bnez	$a0, .LBB14_33
# %bb.29:                               # %if.then.i.i60
	ori	$a0, $zero, 100
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Action_new.freelist)
	beqz	$a0, .LBB14_85
# %bb.30:                               # %vector.body126.preheader
	addi.d	$a1, $a0, 40
	ori	$a2, $zero, 98
	.p2align	4, , 16
.LBB14_31:                              # %vector.body126
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, 40
	st.d	$a1, $a1, -16
	st.d	$a3, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 80
	bnez	$a2, .LBB14_31
# %bb.32:                               # %for.body.i.i63
	addi.d	$a1, $a0, 2047
	addi.d	$a1, $a1, 1913
	stptr.d	$a1, $a0, 3944
	stptr.d	$zero, $a0, 3984
.LBB14_33:                              # %Action_add.exit72
	ld.d	$a1, $s0, 24
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 24
	st.d	$a0, $s0, 24
	st.d	$zero, $a0, 16
	ld.w	$a1, $fp, 16
	st.d	$a2, $s1, %pc_lo12(Action_new.freelist)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 8
	st.d	$s2, $a0, 0
	blt	$a1, $a2, .LBB14_69
# %bb.34:                               # %for.body37.lr.ph
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 5
	addi.w	$s4, $zero, -1
	ori	$s5, $zero, 8
	ori	$s6, $zero, 7
	ori	$s7, $zero, 4
	ori	$s8, $zero, 6
	b	.LBB14_36
	.p2align	4, , 16
.LBB14_35:                              # %for.end67
                                        #   in Loop: Header=BB14_36 Depth=1
	ld.w	$a1, $fp, 16
	addi.d	$s1, $s1, 1
	bge	$s1, $a1, .LBB14_69
.LBB14_36:                              # %for.body37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_37 Depth 2
                                        #       Child Loop BB14_41 Depth 3
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s1, 3
	ldx.d	$s0, $a0, $a1
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(Action_sort)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
	beqz	$a0, .LBB14_35
	.p2align	4, , 16
.LBB14_37:                              # %land.rhs.preheader
                                        #   Parent Loop BB14_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_41 Depth 3
	ld.d	$a3, $a0, 24
	beqz	$a3, .LBB14_35
# %bb.38:                               # %for.cond53.preheader
                                        #   in Loop: Header=BB14_37 Depth=2
	move	$a1, $a0
	ld.d	$a2, $a0, 0
	move	$a0, $a3
	b	.LBB14_41
.LBB14_39:                              # %if.then78.i
                                        #   in Loop: Header=BB14_41 Depth=3
	st.w	$s8, $a3, 8
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB14_40:                              # %resolve_conflict.exit
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $fp, 264
	ld.d	$a3, $a3, 24
	add.d	$a4, $a5, $a4
	st.w	$a4, $fp, 264
	beqz	$a3, .LBB14_37
.LBB14_41:                              # %land.rhs55
                                        #   Parent Loop BB14_36 Depth=1
                                        #     Parent Loop BB14_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	bne	$a4, $a2, .LBB14_37
# %bb.42:                               # %for.body60
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a1, 8
	beqz	$a5, .LBB14_53
# %bb.43:                               #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
.LBB14_44:                              # %if.else54.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bne	$a5, $s2, .LBB14_40
# %bb.45:                               # %land.lhs.true57.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a3, 8
	bne	$a5, $s2, .LBB14_40
# %bb.46:                               # %if.then60.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a5, $a1, 16
	ld.d	$a5, $a5, 64
	beqz	$a5, .LBB14_39
# %bb.47:                               # %if.then60.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a6, $a3, 16
	ld.d	$a6, $a6, 64
	beqz	$a6, .LBB14_39
# %bb.48:                               # %lor.lhs.false68.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a5, 32
	bltz	$a5, .LBB14_39
# %bb.49:                               # %lor.lhs.false71.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a6, $a6, 32
	bltz	$a6, .LBB14_39
# %bb.50:                               # %lor.lhs.false71.i
                                        #   in Loop: Header=BB14_41 Depth=3
	beq	$a5, $a6, .LBB14_39
# %bb.51:                               # %if.else81.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a6, $a5, .LBB14_66
# %bb.52:                               # %if.then85.i
                                        #   in Loop: Header=BB14_41 Depth=3
	st.w	$s5, $a3, 8
	b	.LBB14_40
	.p2align	4, , 16
.LBB14_53:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a3, 8
	beq	$a4, $s2, .LBB14_56
# %bb.54:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bnez	$a4, .LBB14_61
# %bb.55:                               # %if.end.i75
                                        #   in Loop: Header=BB14_41 Depth=3
	st.w	$s7, $a3, 8
	ld.w	$a5, $a1, 8
	ori	$a4, $zero, 1
	bnez	$a5, .LBB14_44
	b	.LBB14_40
.LBB14_56:                              # %if.then9.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.d	$a4, $a3, 16
	ld.d	$a5, $a4, 64
	beqz	$a5, .LBB14_65
# %bb.57:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a2, 32
	bltz	$a4, .LBB14_65
# %bb.58:                               # %lor.lhs.false12.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a5, $a5, 32
	bge	$s4, $a5, .LBB14_65
# %bb.59:                               # %if.else.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a5, $a4, .LBB14_62
.LBB14_60:                              # %if.then21.i
                                        #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	st.w	$s5, $a3, 8
	b	.LBB14_40
.LBB14_61:                              #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	b	.LBB14_40
.LBB14_62:                              # %if.else23.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bltu	$a4, $a5, .LBB14_68
# %bb.63:                               # %land.lhs.true33.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ld.w	$a4, $a2, 36
	beqz	$a4, .LBB14_68
# %bb.64:                               # %land.lhs.true33.i
                                        #   in Loop: Header=BB14_41 Depth=3
	ori	$a5, $zero, 1
	beq	$a4, $a5, .LBB14_60
.LBB14_65:                              # %if.then15.i
                                        #   in Loop: Header=BB14_41 Depth=3
	st.w	$s3, $a3, 8
	ori	$a4, $zero, 1
	b	.LBB14_40
.LBB14_66:                              # %if.else87.i
                                        #   in Loop: Header=BB14_41 Depth=3
	bgeu	$a5, $a6, .LBB14_40
# %bb.67:                               # %if.then91.i
                                        #   in Loop: Header=BB14_41 Depth=3
	st.w	$s5, $a1, 8
	b	.LBB14_40
.LBB14_68:                              # %if.then27.i
                                        #   in Loop: Header=BB14_41 Depth=3
	move	$a4, $zero
	st.w	$s6, $a1, 8
	b	.LBB14_40
.LBB14_69:                              # %for.end70
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB14_72
# %bb.70:
	move	$a0, $s1
	.p2align	4, , 16
.LBB14_71:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a0, 76
	ld.d	$a0, $a0, 88
	bnez	$a0, .LBB14_71
.LBB14_72:                              # %for.cond78.preheader
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB14_79
# %bb.73:                               # %for.body81.lr.ph
	ld.d	$a2, $fp, 0
	move	$a3, $zero
	ori	$a4, $zero, 2
	b	.LBB14_75
	.p2align	4, , 16
.LBB14_74:                              # %for.end96
                                        #   in Loop: Header=BB14_75 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB14_79
.LBB14_75:                              # %for.body81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_76 Depth 2
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a2, $a5
	.p2align	4, , 16
.LBB14_76:                              # %for.body81
                                        #   Parent Loop BB14_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB14_74
# %bb.77:                               # %for.body89
                                        #   in Loop: Header=BB14_76 Depth=2
	ld.w	$a6, $a5, 8
	bne	$a6, $a4, .LBB14_76
# %bb.78:                               # %if.then91
                                        #   in Loop: Header=BB14_76 Depth=2
	ld.d	$a6, $a5, 16
	st.w	$a0, $a6, 76
	b	.LBB14_76
.LBB14_79:                              # %for.cond101.preheader
	beqz	$s1, .LBB14_84
# %bb.80:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	b	.LBB14_82
	.p2align	4, , 16
.LBB14_81:                              # %for.inc109
                                        #   in Loop: Header=BB14_82 Depth=1
	ld.d	$s1, $s1, 88
	beqz	$s1, .LBB14_84
.LBB14_82:                              # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s1, 76
	bnez	$a0, .LBB14_81
# %bb.83:                               # %if.end107
                                        #   in Loop: Header=BB14_82 Depth=1
	ld.d	$a0, $fp, 240
	ld.w	$a1, $s1, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
	b	.LBB14_81
.LBB14_84:                              # %for.end111
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB14_85:                              # %if.then3.i.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a0, $a0, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	FindActions, .Lfunc_end14-FindActions
                                        # -- End function
	.p2align	5                               # -- Begin function Action_sort
	.type	Action_sort,@function
Action_sort:                            # @Action_sort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 240
	addi.d	$s0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB15_25
# %bb.1:                                # %while.body.i.preheader
	ori	$a0, $zero, 2
	addi.w	$a1, $zero, -1
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_4 Depth=1
	move	$a4, $a3
.LBB15_3:                               # %for.end15.i
                                        #   in Loop: Header=BB15_4 Depth=1
	bstrpick.d	$a3, $a4, 31, 0
	slli.d	$a3, $a3, 3
	stx.d	$a2, $a3, $s0
	beqz	$fp, .LBB15_25
.LBB15_4:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #       Child Loop BB15_17 Depth 3
	move	$a2, $fp
	ld.d	$fp, $fp, 24
	move	$a3, $zero
	st.d	$zero, $a2, 24
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_5:                               #   in Loop: Header=BB15_7 Depth=2
	move	$a7, $a5
	move	$t0, $a4
	move	$a6, $a2
.LBB15_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB15_7 Depth=2
	alsl.d	$a5, $a3, $s0, 3
	masknez	$a4, $a7, $t1
	maskeqz	$a7, $t0, $t1
	or	$a4, $a7, $a4
	st.d	$a4, $a6, 24
	addi.d	$a3, $a3, 1
	ori	$a4, $zero, 29
	st.d	$zero, $a5, 0
	beq	$a3, $a4, .LBB15_3
.LBB15_7:                               # %land.rhs.i
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_17 Depth 3
	slli.d	$a4, $a3, 3
	ldx.d	$a6, $a4, $s0
	beqz	$a6, .LBB15_2
# %bb.8:                                # %for.body8.i
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a6, 0
	ld.w	$a4, $a4, 8
	ld.w	$a5, $a5, 8
	sub.w	$a4, $a4, $a5
	bnez	$a4, .LBB15_10
# %bb.9:                                # %if.end.i46
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.w	$a5, $a2, 8
	ld.w	$a4, $a6, 8
	sub.w	$a4, $a5, $a4
	beqz	$a4, .LBB15_12
.LBB15_10:                              # %actioncmp.exit59
                                        #   in Loop: Header=BB15_7 Depth=2
	bge	$a1, $a4, .LBB15_14
.LBB15_11:                              # %if.else7.i.i
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a5, $a6, 24
	move	$a4, $a2
	move	$a2, $a6
	sltu	$t1, $zero, $a4
	bnez	$a4, .LBB15_15
	b	.LBB15_5
.LBB15_12:                              # %land.lhs.true.i51
                                        #   in Loop: Header=BB15_7 Depth=2
	bne	$a5, $a0, .LBB15_11
# %bb.13:                               # %if.then8.i53
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a4, $a2, 16
	ld.d	$a5, $a6, 16
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	blt	$a1, $a4, .LBB15_11
	.p2align	4, , 16
.LBB15_14:                              # %if.then6.i.i
                                        #   in Loop: Header=BB15_7 Depth=2
	ld.d	$a4, $a2, 24
	move	$a5, $a6
	sltu	$t1, $zero, $a4
	beqz	$a4, .LBB15_5
.LBB15_15:                              # %if.end.i.i
                                        #   in Loop: Header=BB15_7 Depth=2
	beqz	$a5, .LBB15_5
# %bb.16:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB15_7 Depth=2
	move	$a6, $a2
	.p2align	4, , 16
.LBB15_17:                              # %while.body.i.i
                                        #   Parent Loop BB15_4 Depth=1
                                        #     Parent Loop BB15_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a5, 0
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	sub.w	$a7, $a7, $t0
	addi.d	$a6, $a6, 24
	bnez	$a7, .LBB15_19
# %bb.18:                               # %if.end.i27
                                        #   in Loop: Header=BB15_17 Depth=3
	ld.w	$t0, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a7, $t0, $a7
	beqz	$a7, .LBB15_21
.LBB15_19:                              # %actioncmp.exit40
                                        #   in Loop: Header=BB15_17 Depth=3
	bge	$a1, $a7, .LBB15_23
.LBB15_20:                              # %if.else19.i.i
                                        #   in Loop: Header=BB15_17 Depth=3
	st.d	$a5, $a6, 0
	ld.d	$a7, $a5, 24
	move	$t0, $a4
	move	$a6, $a5
	sltu	$t1, $zero, $t0
	bnez	$t0, .LBB15_24
	b	.LBB15_6
.LBB15_21:                              # %land.lhs.true.i32
                                        #   in Loop: Header=BB15_17 Depth=3
	bne	$t0, $a0, .LBB15_20
# %bb.22:                               # %if.then8.i34
                                        #   in Loop: Header=BB15_17 Depth=3
	ld.d	$a7, $a4, 16
	ld.d	$t0, $a5, 16
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	sub.w	$a7, $a7, $t0
	blt	$a1, $a7, .LBB15_20
	.p2align	4, , 16
.LBB15_23:                              # %if.then14.i.i
                                        #   in Loop: Header=BB15_17 Depth=3
	st.d	$a4, $a6, 0
	ld.d	$t0, $a4, 24
	move	$a7, $a5
	move	$a6, $a4
	sltu	$t1, $zero, $t0
	beqz	$t0, .LBB15_6
.LBB15_24:                              # %if.end24.i.i
                                        #   in Loop: Header=BB15_17 Depth=3
	move	$a4, $t0
	move	$a5, $a7
	bnez	$a7, .LBB15_17
	b	.LBB15_6
.LBB15_25:                              # %for.body21.i.preheader
	move	$a1, $zero
	move	$a0, $zero
	ori	$a2, $zero, 30
	ori	$a3, $zero, 2
	addi.w	$a4, $zero, -1
	b	.LBB15_28
	.p2align	4, , 16
.LBB15_26:                              #   in Loop: Header=BB15_28 Depth=1
	move	$a0, $a7
.LBB15_27:                              # %for.inc29.i
                                        #   in Loop: Header=BB15_28 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB15_49
.LBB15_28:                              # %for.body21.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_39 Depth 2
	slli.d	$a5, $a1, 3
	ldx.d	$a7, $a5, $s0
	beqz	$a7, .LBB15_27
# %bb.29:                               # %if.then.i
                                        #   in Loop: Header=BB15_28 Depth=1
	beqz	$a0, .LBB15_26
# %bb.30:                               # %if.else4.i.i
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a7, 0
	ld.w	$a5, $a5, 8
	ld.w	$a6, $a6, 8
	sub.w	$a5, $a5, $a6
	bnez	$a5, .LBB15_32
# %bb.31:                               # %if.end.i8
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.w	$a6, $a0, 8
	ld.w	$a5, $a7, 8
	sub.w	$a5, $a6, $a5
	beqz	$a5, .LBB15_34
.LBB15_32:                              # %actioncmp.exit21
                                        #   in Loop: Header=BB15_28 Depth=1
	bge	$a4, $a5, .LBB15_36
.LBB15_33:                              # %if.else7.i28.i
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a6, $a7, 24
	move	$a5, $a0
	move	$a0, $a7
	sltu	$t2, $zero, $a5
	bnez	$a5, .LBB15_37
	b	.LBB15_47
.LBB15_34:                              # %land.lhs.true.i13
                                        #   in Loop: Header=BB15_28 Depth=1
	bne	$a6, $a3, .LBB15_33
# %bb.35:                               # %if.then8.i15
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a5, $a0, 16
	ld.d	$a6, $a7, 16
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	sub.w	$a5, $a5, $a6
	blt	$a4, $a5, .LBB15_33
.LBB15_36:                              # %if.then6.i62.i
                                        #   in Loop: Header=BB15_28 Depth=1
	ld.d	$a5, $a0, 24
	move	$a6, $a7
	sltu	$t2, $zero, $a5
	beqz	$a5, .LBB15_47
.LBB15_37:                              # %if.end.i30.i
                                        #   in Loop: Header=BB15_28 Depth=1
	beqz	$a6, .LBB15_47
# %bb.38:                               # %while.body.i45.i.preheader
                                        #   in Loop: Header=BB15_28 Depth=1
	move	$a7, $a0
	.p2align	4, , 16
.LBB15_39:                              # %while.body.i45.i
                                        #   Parent Loop BB15_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a5, 0
	ld.d	$t1, $a6, 0
	ld.w	$t0, $t0, 8
	ld.w	$t1, $t1, 8
	sub.w	$t0, $t0, $t1
	addi.d	$a7, $a7, 24
	bnez	$t0, .LBB15_41
# %bb.40:                               # %if.end.i
                                        #   in Loop: Header=BB15_39 Depth=2
	ld.w	$t1, $a5, 8
	ld.w	$t0, $a6, 8
	sub.w	$t0, $t1, $t0
	beqz	$t0, .LBB15_43
.LBB15_41:                              # %actioncmp.exit
                                        #   in Loop: Header=BB15_39 Depth=2
	bge	$a4, $t0, .LBB15_45
.LBB15_42:                              # %if.else19.i52.i
                                        #   in Loop: Header=BB15_39 Depth=2
	st.d	$a6, $a7, 0
	ld.d	$t0, $a6, 24
	move	$t1, $a5
	move	$a7, $a6
	sltu	$t2, $zero, $t1
	bnez	$t1, .LBB15_46
	b	.LBB15_48
.LBB15_43:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB15_39 Depth=2
	bne	$t1, $a3, .LBB15_42
# %bb.44:                               # %if.then8.i
                                        #   in Loop: Header=BB15_39 Depth=2
	ld.d	$t0, $a5, 16
	ld.d	$t1, $a6, 16
	ld.w	$t0, $t0, 72
	ld.w	$t1, $t1, 72
	sub.w	$t0, $t0, $t1
	blt	$a4, $t0, .LBB15_42
	.p2align	4, , 16
.LBB15_45:                              # %if.then14.i60.i
                                        #   in Loop: Header=BB15_39 Depth=2
	st.d	$a5, $a7, 0
	ld.d	$t1, $a5, 24
	move	$t0, $a6
	move	$a7, $a5
	sltu	$t2, $zero, $t1
	beqz	$t1, .LBB15_48
.LBB15_46:                              # %if.end24.i54.i
                                        #   in Loop: Header=BB15_39 Depth=2
	move	$a5, $t1
	move	$a6, $t0
	bnez	$t0, .LBB15_39
	b	.LBB15_48
.LBB15_47:                              #   in Loop: Header=BB15_28 Depth=1
	move	$t0, $a6
	move	$t1, $a5
	move	$a7, $a0
.LBB15_48:                              # %while.end.i.i
                                        #   in Loop: Header=BB15_28 Depth=1
	masknez	$a5, $t0, $t2
	maskeqz	$a6, $t1, $t2
	or	$a5, $a6, $a5
	st.d	$a5, $a7, 24
	b	.LBB15_27
.LBB15_49:                              # %msort.exit
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end15:
	.size	Action_sort, .Lfunc_end15-Action_sort
                                        # -- End function
	.globl	newconfig                       # -- Begin function newconfig
	.p2align	5
	.type	newconfig,@function
newconfig:                              # @newconfig
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(freelist)
	ld.d	$a0, $fp, %pc_lo12(freelist)
	bnez	$a0, .LBB16_3
# %bb.1:                                # %if.then
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(freelist)
	beqz	$a0, .LBB16_4
# %bb.2:                                # %for.body.preheader
	addi.d	$a1, $a0, 72
	st.d	$a1, $a0, 56
	addi.d	$a1, $a0, 144
	st.d	$a1, $a0, 128
.LBB16_3:                               # %if.end13
	ld.d	$a1, $a0, 56
	st.d	$a1, $fp, %pc_lo12(freelist)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_4:                               # %if.then3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	newconfig, .Lfunc_end16-newconfig
                                        # -- End function
	.globl	deleteconfig                    # -- Begin function deleteconfig
	.p2align	5
	.type	deleteconfig,@function
deleteconfig:                           # @deleteconfig
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(freelist)
	ld.d	$a2, $a1, %pc_lo12(freelist)
	st.d	$a2, $a0, 56
	st.d	$a0, $a1, %pc_lo12(freelist)
	ret
.Lfunc_end17:
	.size	deleteconfig, .Lfunc_end17-deleteconfig
                                        # -- End function
	.globl	Configlist_init                 # -- Begin function Configlist_init
	.p2align	5
	.type	Configlist_init,@function
Configlist_init:                        # @Configlist_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	pcalau12i	$s0, %pc_hi20(x4a)
	ld.d	$a1, $s0, %pc_lo12(x4a)
	addi.d	$a0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, 0
	pcalau12i	$a2, %pc_hi20(basisend)
	st.d	$a0, $a2, %pc_lo12(basisend)
	beqz	$a1, .LBB18_2
.LBB18_1:                               # %Configtable_init.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_2:                               # %if.end.i
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB18_1
# %bb.3:                                # %if.then2.i
	move	$fp, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB18_5
# %bb.4:                                # %if.else.i
	addi.d	$a0, $a0, 1536
	ori	$a2, $zero, 512
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB18_5:                               # %if.then5.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x4a)
	b	.LBB18_1
.Lfunc_end18:
	.size	Configlist_init, .Lfunc_end18-Configlist_init
                                        # -- End function
	.globl	Configlist_reset                # -- Begin function Configlist_reset
	.p2align	5
	.type	Configlist_reset,@function
Configlist_reset:                       # @Configlist_reset
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(current)
	addi.d	$a0, $a0, %pc_lo12(current)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$a0, $a1, %pc_lo12(currentend)
	pcalau12i	$a0, %pc_hi20(basis)
	addi.d	$a0, $a0, %pc_lo12(basis)
	st.d	$zero, $a0, 0
	pcalau12i	$a1, %pc_hi20(basisend)
	st.d	$a0, $a1, %pc_lo12(basisend)
	move	$a0, $zero
	pcaddu18i	$t8, %call36(Configtable_clear)
	jr	$t8
.Lfunc_end19:
	.size	Configlist_reset, .Lfunc_end19-Configlist_reset
                                        # -- End function
	.globl	Configlist_add                  # -- Begin function Configlist_add
	.p2align	5
	.type	Configlist_add,@function
Configlist_add:                         # @Configlist_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x4a)
	ld.d	$a3, $a2, %pc_lo12(x4a)
	beqz	$a3, .LBB20_2
# %bb.1:                                # %if.end.i
	ld.w	$a2, $a0, 72
	alsl.d	$a4, $a2, $a2, 3
	ld.w	$a5, $a3, 0
	alsl.d	$a4, $a4, $a2, 2
	add.w	$a4, $a4, $a1
	ld.d	$a3, $a3, 16
	addi.w	$a5, $a5, -1
	and	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	bnez	$a3, .LBB20_5
.LBB20_2:                               # %if.then
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	beqz	$fp, .LBB20_7
# %bb.3:                                # %if.then.newconfig.exit_crit_edge
	ld.d	$a3, $fp, 56
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_4:                               # %if.end4.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB20_2
.LBB20_5:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a3, 0
	ld.d	$a4, $fp, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a2, .LBB20_4
# %bb.6:                                # %Configcmp.exit.i
                                        #   in Loop: Header=BB20_5 Depth=1
	ld.w	$a4, $fp, 8
	bne	$a4, $a1, .LBB20_4
	b	.LBB20_11
.LBB20_7:                               # %if.then.i
	move	$s1, $a0
	move	$s2, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(freelist)
	beqz	$a0, .LBB20_13
# %bb.8:                                # %for.body.preheader.i
	move	$fp, $a0
	addi.d	$a3, $a0, 72
	st.d	$a3, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $fp, 128
	move	$a1, $s2
	move	$a0, $s1
.LBB20_9:                               # %newconfig.exit
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a2, $a2, %pc_lo12(size)
	st.d	$a3, $s0, %pc_lo12(freelist)
	st.d	$a0, $fp, 0
	st.w	$a1, $fp, 8
	ori	$a1, $zero, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_12
# %bb.10:                               # %SetNew.exit
	addi.d	$a1, $fp, 56
	st.d	$a0, $fp, 16
	st.d	$zero, $fp, 24
	pcalau12i	$a0, %pc_hi20(currentend)
	ld.d	$a2, $a0, %pc_lo12(currentend)
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 56
	st.d	$fp, $a2, 0
	st.d	$a1, $a0, %pc_lo12(currentend)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Configtable_insert)
	jirl	$ra, $ra, 0
.LBB20_11:                              # %if.end
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB20_12:                              # %if.then.i21
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB20_13:                              # %if.then3.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	Configlist_add, .Lfunc_end20-Configlist_add
                                        # -- End function
	.globl	Configlist_addbasis             # -- Begin function Configlist_addbasis
	.p2align	5
	.type	Configlist_addbasis,@function
Configlist_addbasis:                    # @Configlist_addbasis
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x4a)
	ld.d	$a3, $a2, %pc_lo12(x4a)
	beqz	$a3, .LBB21_2
# %bb.1:                                # %if.end.i
	ld.w	$a2, $a0, 72
	alsl.d	$a4, $a2, $a2, 3
	ld.w	$a5, $a3, 0
	alsl.d	$a4, $a4, $a2, 2
	add.w	$a4, $a4, $a1
	ld.d	$a3, $a3, 16
	addi.w	$a5, $a5, -1
	and	$a4, $a5, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	bnez	$a3, .LBB21_5
.LBB21_2:                               # %if.then
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$fp, $s0, %pc_lo12(freelist)
	beqz	$fp, .LBB21_7
# %bb.3:                                # %if.then.newconfig.exit_crit_edge
	ld.d	$a3, $fp, 56
	b	.LBB21_9
	.p2align	4, , 16
.LBB21_4:                               # %if.end4.i
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB21_2
.LBB21_5:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a3, 0
	ld.d	$a4, $fp, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a2, .LBB21_4
# %bb.6:                                # %Configcmp.exit.i
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a4, $fp, 8
	bne	$a4, $a1, .LBB21_4
	b	.LBB21_11
.LBB21_7:                               # %if.then.i
	move	$s1, $a0
	move	$s2, $a1
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(freelist)
	beqz	$a0, .LBB21_13
# %bb.8:                                # %for.body.preheader.i
	move	$fp, $a0
	addi.d	$a3, $a0, 72
	st.d	$a3, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $fp, 128
	move	$a1, $s2
	move	$a0, $s1
.LBB21_9:                               # %newconfig.exit
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a2, $a2, %pc_lo12(size)
	st.d	$a3, $s0, %pc_lo12(freelist)
	st.d	$a0, $fp, 0
	st.w	$a1, $fp, 8
	ori	$a1, $zero, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB21_12
# %bb.10:                               # %SetNew.exit
	addi.d	$a1, $fp, 56
	st.d	$a0, $fp, 16
	addi.d	$a0, $fp, 64
	st.d	$zero, $fp, 24
	vrepli.b	$vr0, 0
	pcalau12i	$a2, %pc_hi20(currentend)
	ld.d	$a3, $a2, %pc_lo12(currentend)
	st.d	$a1, $a2, %pc_lo12(currentend)
	pcalau12i	$a1, %pc_hi20(basisend)
	ld.d	$a2, $a1, %pc_lo12(basisend)
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 56
	st.d	$fp, $a3, 0
	st.d	$fp, $a2, 0
	st.d	$a0, $a1, %pc_lo12(basisend)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Configtable_insert)
	jirl	$ra, $ra, 0
.LBB21_11:                              # %if.end
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB21_12:                              # %if.then.i23
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB21_13:                              # %if.then3.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	Configlist_addbasis, .Lfunc_end21-Configlist_addbasis
                                        # -- End function
	.globl	Configlist_closure              # -- Begin function Configlist_closure
	.p2align	5
	.type	Configlist_closure,@function
Configlist_closure:                     # @Configlist_closure
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(current)
	ld.d	$s3, $a1, %pc_lo12(current)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$s3, .LBB22_65
# %bb.1:                                # %for.body.lr.ph
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x4a)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(freelist)
	pcalau12i	$s8, %pc_hi20(size)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s6, $zero, 2
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %for.inc54
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s3, $s3, 56
	beqz	$s3, .LBB22_65
.LBB22_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
                                        #       Child Loop BB22_14 Depth 3
                                        #       Child Loop BB22_23 Depth 3
                                        #       Child Loop BB22_33 Depth 3
                                        #       Child Loop BB22_44 Depth 3
                                        #         Child Loop BB22_50 Depth 4
                                        #       Child Loop BB22_56 Depth 3
                                        #       Child Loop BB22_61 Depth 3
	ld.d	$s0, $s3, 0
	ld.w	$a1, $s3, 8
	ld.w	$a0, $s0, 24
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bge	$a1, $a0, .LBB22_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ld.w	$a0, $fp, 12
	bne	$a0, $s5, .LBB22_2
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s7, $fp, 16
	beqz	$s7, .LBB22_63
.LBB22_6:                               # %for.body12.lr.ph
                                        #   in Loop: Header=BB22_3 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_7:                               # %Plink_add.exit
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a1, $a0, 8
	ld.d	$a2, $s3, 24
	st.d	$a1, $fp, %pc_lo12(plink_freelist)
	st.d	$a2, $a0, 8
	st.d	$a0, $s3, 24
	st.d	$s1, $a0, 0
.LBB22_8:                               # %for.inc51
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s7, $s7, 80
	beqz	$s7, .LBB22_2
.LBB22_9:                               # %for.body12
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_14 Depth 3
                                        #       Child Loop BB22_23 Depth 3
                                        #       Child Loop BB22_33 Depth 3
                                        #       Child Loop BB22_44 Depth 3
                                        #         Child Loop BB22_50 Depth 4
                                        #       Child Loop BB22_56 Depth 3
                                        #       Child Loop BB22_61 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(x4a)
	beqz	$s4, .LBB22_11
# %bb.10:                               # %if.end.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a0, $s7, 72
	ld.w	$a1, $s4, 0
	alsl.d	$a2, $a0, $a0, 3
	alsl.d	$a2, $a2, $a0, 2
	addi.d	$a1, $a1, -1
	ld.d	$a3, $s4, 16
	and	$a1, $a1, $a2
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a3, $a1
	bnez	$a1, .LBB22_14
.LBB22_11:                              # %if.then.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s1, $s2, %pc_lo12(freelist)
	beqz	$s1, .LBB22_16
# %bb.12:                               # %if.then.newconfig.exit_crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a1, $s1, 56
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_13:                              # %if.end4.i.i
                                        #   in Loop: Header=BB22_14 Depth=3
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB22_11
.LBB22_14:                              # %while.body.i.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $a1, 0
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 72
	bne	$a2, $a0, .LBB22_13
# %bb.15:                               # %Configcmp.exit.i.i
                                        #   in Loop: Header=BB22_14 Depth=3
	ld.w	$a2, $s1, 8
	bnez	$a2, .LBB22_13
	b	.LBB22_42
	.p2align	4, , 16
.LBB22_16:                              # %if.then.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ori	$a0, $zero, 3
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(freelist)
	beqz	$a0, .LBB22_67
# %bb.17:                               # %for.body.preheader.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$s1, $a0
	addi.d	$a1, $a0, 72
	st.d	$a1, $a0, 56
	addi.d	$a0, $a0, 144
	st.d	$a0, $s1, 128
.LBB22_18:                              # %newconfig.exit.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a0, $s8, %pc_lo12(size)
	st.d	$a1, $s2, %pc_lo12(freelist)
	st.d	$s7, $s1, 0
	st.w	$zero, $s1, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_66
# %bb.19:                               # %SetNew.exit.i
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a1, $s1, 56
	st.d	$a0, $s1, 16
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, %pc_lo12(currentend)
	st.d	$zero, $s1, 24
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $s1, 32
	vst	$vr0, $s1, 56
	st.d	$s1, $a0, 0
	st.d	$a1, $a2, %pc_lo12(currentend)
	beqz	$s4, .LBB22_42
# %bb.20:                               # %if.end.i49
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a2, $s7, 72
	ld.w	$s6, $s4, 0
	alsl.d	$a0, $a2, $a2, 3
	alsl.d	$a6, $a0, $a2, 2
	addi.d	$a0, $s6, -1
	ld.d	$s2, $s4, 16
	and	$a0, $a0, $a6
	addi.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	beqz	$a1, .LBB22_25
# %bb.21:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a3, $a1
	b	.LBB22_23
	.p2align	4, , 16
.LBB22_22:                              # %if.end5.i
                                        #   in Loop: Header=BB22_23 Depth=3
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB22_25
.LBB22_23:                              # %while.body.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 72
	bne	$a5, $a2, .LBB22_22
# %bb.24:                               # %Configcmp.exit.i
                                        #   in Loop: Header=BB22_23 Depth=3
	ld.w	$a4, $a4, 8
	bnez	$a4, .LBB22_22
	b	.LBB22_36
	.p2align	4, , 16
.LBB22_25:                              # %while.end.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$fp, $s4, 4
	bge	$fp, $s6, .LBB22_27
# %bb.26:                               # %while.end.if.end74_crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s3, $s4, 8
	b	.LBB22_39
	.p2align	4, , 16
.LBB22_27:                              # %if.then8.i54
                                        #   in Loop: Header=BB22_9 Depth=2
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	slli.w	$s2, $s6, 1
	slli.d	$a0, $s2, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_35
# %bb.28:                               # %if.end20.i
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$s3, $a0
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	move	$t0, $s2
	add.d	$s2, $s3, $a0
	blt	$s6, $s5, .LBB22_30
# %bb.29:                               # %for.body.preheader.i60
                                        #   in Loop: Header=BB22_9 Depth=2
	slli.d	$a2, $t0, 3
	move	$a0, $s2
	move	$a1, $zero
	move	$s6, $t0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t0, $s6
.LBB22_30:                              # %for.cond30.preheader.i
                                        #   in Loop: Header=BB22_9 Depth=2
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	blez	$fp, .LBB22_37
# %bb.31:                               # %for.body34.lr.ph.i
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a1, $zero
	ld.d	$a0, $s4, 8
	addi.w	$s6, $t0, -1
	slli.d	$a2, $fp, 4
	alsl.d	$a2, $fp, $a2, 3
	b	.LBB22_33
	.p2align	4, , 16
.LBB22_32:                              # %if.end54.i
                                        #   in Loop: Header=BB22_33 Depth=3
	alsl.d	$a5, $a5, $s2, 3
	st.d	$a6, $a4, 8
	stx.d	$a3, $s3, $a1
	st.d	$a5, $a4, 16
	addi.d	$a1, $a1, 24
	st.d	$a4, $a5, 0
	beq	$a2, $a1, .LBB22_38
.LBB22_33:                              # %for.body34.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a3, 8
	alsl.d	$a6, $a4, $a4, 3
	alsl.d	$a4, $a6, $a4, 2
	add.w	$a4, $a4, $a5
	and	$a5, $a4, $s6
	slli.d	$a4, $a5, 3
	ldx.d	$a6, $s2, $a4
	add.d	$a4, $s3, $a1
	beqz	$a6, .LBB22_32
# %bb.34:                               # %if.then49.i
                                        #   in Loop: Header=BB22_33 Depth=3
	addi.d	$a7, $a4, 8
	st.d	$a7, $a6, 16
	b	.LBB22_32
.LBB22_35:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB22_36:                              #   in Loop: Header=BB22_9 Depth=2
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ori	$s6, $zero, 2
	b	.LBB22_42
.LBB22_37:                              # %for.cond30.preheader.for.end70_crit_edge.i
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $s4, 8
	addi.d	$s6, $t0, -1
.LBB22_38:                              # %for.end70.i
                                        #   in Loop: Header=BB22_9 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s3, $s4, 8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $s6, $a0
	addi.w	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.w	$a2, $s4, 0
	st.d	$s2, $s4, 16
.LBB22_39:                              # %if.end74.i
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a2, $fp, 1
	st.w	$a2, $s4, 4
	slli.d	$a2, $fp, 4
	alsl.d	$a3, $fp, $a2, 3
	add.d	$a2, $s3, $a3
	stx.d	$s1, $s3, $a3
	ori	$s6, $zero, 2
	beqz	$a1, .LBB22_41
# %bb.40:                               # %if.then88.i
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a3, $a2, 8
	st.d	$a3, $a1, 16
.LBB22_41:                              # %if.end94.i
                                        #   in Loop: Header=BB22_9 Depth=2
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a0, $a2, 16
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
.LBB22_42:                              # %Configlist_add.exit
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB22_44
	.p2align	4, , 16
.LBB22_43:                              # %SetUnion.exit
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.w	$a1, $a1, 48
	beqz	$a1, .LBB22_57
.LBB22_44:                              # %for.cond13
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_50 Depth 4
	ld.w	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB22_57
# %bb.45:                               # %for.body16
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.d	$a1, $s0, 32
	slli.d	$a2, $a0, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $a1, 12
	beqz	$a2, .LBB22_53
# %bb.46:                               # %for.body16
                                        #   in Loop: Header=BB22_44 Depth=3
	beq	$a2, $s6, .LBB22_54
# %bb.47:                               # %if.else36
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.w	$a2, $s8, %pc_lo12(size)
	blt	$a2, $s5, .LBB22_43
# %bb.48:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB22_44 Depth=3
	ld.d	$a3, $s1, 16
	ld.d	$a4, $a1, 40
	b	.LBB22_50
	.p2align	4, , 16
.LBB22_49:                              # %for.inc.i
                                        #   in Loop: Header=BB22_50 Depth=4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 1
	beqz	$a2, .LBB22_43
.LBB22_50:                              # %for.body.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        #       Parent Loop BB22_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a5, $a4, 0
	beqz	$a5, .LBB22_49
# %bb.51:                               # %if.end.i
                                        #   in Loop: Header=BB22_50 Depth=4
	ld.bu	$a5, $a3, 0
	bnez	$a5, .LBB22_49
# %bb.52:                               # %if.then8.i
                                        #   in Loop: Header=BB22_50 Depth=4
	st.b	$s5, $a3, 0
	b	.LBB22_49
	.p2align	4, , 16
.LBB22_53:                              # %if.then22
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.d	$a2, $s1, 16
	ld.w	$a1, $a1, 8
	stx.b	$s5, $a2, $a1
	b	.LBB22_57
	.p2align	4, , 16
.LBB22_54:                              # %for.cond27.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a2, $a1, 84
	blt	$a2, $s5, .LBB22_57
# %bb.55:                               # %for.body29.lr.ph
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a2, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB22_56:                              # %for.body29
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a1, 88
	ldx.d	$a4, $a4, $a2
	ld.d	$a5, $s1, 16
	ld.w	$a4, $a4, 8
	stx.b	$s5, $a5, $a4
	ld.w	$a4, $a1, 84
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	blt	$a3, $a4, .LBB22_56
	.p2align	4, , 16
.LBB22_57:                              # %for.end46
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.w	$a1, $s0, 24
	addi.w	$a0, $a0, 0
	bne	$a1, $a0, .LBB22_8
# %bb.58:                               # %if.then49
                                        #   in Loop: Header=BB22_9 Depth=2
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a0, $fp, %pc_lo12(plink_freelist)
	ori	$s4, $zero, 1568
	bnez	$a0, .LBB22_7
# %bb.59:                               # %if.then.i.i43
                                        #   in Loop: Header=BB22_9 Depth=2
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB22_68
# %bb.60:                               # %vector.body.preheader
                                        #   in Loop: Header=BB22_9 Depth=2
	move	$a1, $zero
	.p2align	4, , 16
.LBB22_61:                              # %vector.body
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $a1
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a2, 32
	st.d	$a3, $a2, 8
	addi.d	$a1, $a1, 32
	st.d	$a4, $a2, 24
	bne	$a1, $s4, .LBB22_61
# %bb.62:                               # %for.body.i.i
                                        #   in Loop: Header=BB22_9 Depth=2
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
	b	.LBB22_7
.LBB22_63:                              # %land.lhs.true
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	beq	$fp, $a0, .LBB22_2
# %bb.64:                               # %if.end8
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 240
	ld.w	$a1, $s0, 48
	ld.d	$a3, $fp, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 40
	ld.d	$s7, $fp, 16
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 40
	bnez	$s7, .LBB22_6
	b	.LBB22_2
.LBB22_65:                              # %for.end55
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB22_66:                              # %if.then.i21.i
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.LBB22_67:                              # %if.then3.i.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB22_68:                              # %if.then3.i.i48
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	Configlist_closure, .Lfunc_end22-Configlist_closure
                                        # -- End function
	.globl	Configlist_sort                 # -- Begin function Configlist_sort
	.p2align	5
	.type	Configlist_sort,@function
Configlist_sort:                        # @Configlist_sort
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(current)
	ld.d	$s1, $fp, %pc_lo12(current)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 240
	addi.d	$s0, $sp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB23_21
# %bb.1:                                # %while.body.i.preheader
	addi.w	$a0, $zero, -1
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	move	$a3, $a2
.LBB23_3:                               # %for.end15.i
                                        #   in Loop: Header=BB23_4 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a2, $s0
	beqz	$s1, .LBB23_21
.LBB23_4:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
                                        #       Child Loop BB23_15 Depth 3
	move	$a1, $s1
	ld.d	$s1, $s1, 56
	move	$a2, $zero
	st.d	$zero, $a1, 56
	b	.LBB23_7
	.p2align	4, , 16
.LBB23_5:                               #   in Loop: Header=BB23_7 Depth=2
	move	$a6, $a5
	move	$a7, $a4
	move	$a3, $a1
.LBB23_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB23_7 Depth=2
	alsl.d	$a4, $a2, $s0, 3
	masknez	$a5, $a6, $t0
	maskeqz	$a6, $a7, $t0
	or	$a5, $a6, $a5
	st.d	$a5, $a3, 56
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 29
	st.d	$zero, $a4, 0
	beq	$a2, $a3, .LBB23_3
.LBB23_7:                               # %land.rhs.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_15 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a3, $s0
	beqz	$a3, .LBB23_2
# %bb.8:                                # %for.body8.i
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	beqz	$a4, .LBB23_11
# %bb.9:                                # %Configcmp.exit31
                                        #   in Loop: Header=BB23_7 Depth=2
	bge	$a0, $a4, .LBB23_12
.LBB23_10:                              # %if.else7.i.i
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a5, $a3, 56
	move	$a4, $a1
	move	$a1, $a3
	sltu	$t0, $zero, $a4
	bnez	$a4, .LBB23_13
	b	.LBB23_5
	.p2align	4, , 16
.LBB23_11:                              # %if.then.i27
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.w	$a4, $a1, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
	blt	$a0, $a4, .LBB23_10
.LBB23_12:                              # %if.then6.i.i
                                        #   in Loop: Header=BB23_7 Depth=2
	ld.d	$a4, $a1, 56
	move	$a5, $a3
	sltu	$t0, $zero, $a4
	beqz	$a4, .LBB23_5
.LBB23_13:                              # %if.end.i.i
                                        #   in Loop: Header=BB23_7 Depth=2
	beqz	$a5, .LBB23_5
# %bb.14:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB23_7 Depth=2
	move	$a3, $a1
	.p2align	4, , 16
.LBB23_15:                              # %while.body.i.i
                                        #   Parent Loop BB23_4 Depth=1
                                        #     Parent Loop BB23_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	beqz	$a6, .LBB23_18
# %bb.16:                               # %Configcmp.exit21
                                        #   in Loop: Header=BB23_15 Depth=3
	bge	$a0, $a6, .LBB23_19
.LBB23_17:                              # %if.else19.i.i
                                        #   in Loop: Header=BB23_15 Depth=3
	st.d	$a5, $a3, 56
	ld.d	$a6, $a5, 56
	move	$a7, $a4
	move	$a3, $a5
	sltu	$t0, $zero, $a7
	bnez	$a7, .LBB23_20
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_18:                              # %if.then.i17
                                        #   in Loop: Header=BB23_15 Depth=3
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
	blt	$a0, $a6, .LBB23_17
.LBB23_19:                              # %if.then14.i.i
                                        #   in Loop: Header=BB23_15 Depth=3
	st.d	$a4, $a3, 56
	ld.d	$a7, $a4, 56
	move	$a6, $a5
	move	$a3, $a4
	sltu	$t0, $zero, $a7
	beqz	$a7, .LBB23_6
.LBB23_20:                              # %if.end24.i.i
                                        #   in Loop: Header=BB23_15 Depth=3
	move	$a4, $a7
	move	$a5, $a6
	bnez	$a6, .LBB23_15
	b	.LBB23_6
.LBB23_21:                              # %for.body21.i.preheader
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $zero, 30
	addi.w	$a3, $zero, -1
	b	.LBB23_24
	.p2align	4, , 16
.LBB23_22:                              #   in Loop: Header=BB23_24 Depth=1
	move	$a2, $a4
.LBB23_23:                              # %for.inc29.i
                                        #   in Loop: Header=BB23_24 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB23_41
.LBB23_24:                              # %for.body21.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_33 Depth 2
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $a4, $s0
	beqz	$a4, .LBB23_23
# %bb.25:                               # %if.then.i
                                        #   in Loop: Header=BB23_24 Depth=1
	beqz	$a2, .LBB23_22
# %bb.26:                               # %if.else4.i.i
                                        #   in Loop: Header=BB23_24 Depth=1
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a4, 0
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	sub.w	$a5, $a5, $a6
	beqz	$a5, .LBB23_29
# %bb.27:                               # %Configcmp.exit11
                                        #   in Loop: Header=BB23_24 Depth=1
	bge	$a3, $a5, .LBB23_30
.LBB23_28:                              # %if.else7.i28.i
                                        #   in Loop: Header=BB23_24 Depth=1
	ld.d	$a6, $a4, 56
	move	$a5, $a2
	move	$a2, $a4
	sltu	$t1, $zero, $a5
	bnez	$a5, .LBB23_31
	b	.LBB23_39
.LBB23_29:                              # %if.then.i7
                                        #   in Loop: Header=BB23_24 Depth=1
	ld.w	$a5, $a2, 8
	ld.w	$a6, $a4, 8
	sub.w	$a5, $a5, $a6
	blt	$a3, $a5, .LBB23_28
.LBB23_30:                              # %if.then6.i62.i
                                        #   in Loop: Header=BB23_24 Depth=1
	ld.d	$a5, $a2, 56
	move	$a6, $a4
	sltu	$t1, $zero, $a5
	beqz	$a5, .LBB23_39
.LBB23_31:                              # %if.end.i30.i
                                        #   in Loop: Header=BB23_24 Depth=1
	beqz	$a6, .LBB23_39
# %bb.32:                               # %while.body.i45.i.preheader
                                        #   in Loop: Header=BB23_24 Depth=1
	move	$a4, $a2
	.p2align	4, , 16
.LBB23_33:                              # %while.body.i45.i
                                        #   Parent Loop BB23_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a6, 0
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	sub.w	$a7, $a7, $t0
	beqz	$a7, .LBB23_36
# %bb.34:                               # %Configcmp.exit
                                        #   in Loop: Header=BB23_33 Depth=2
	bge	$a3, $a7, .LBB23_37
.LBB23_35:                              # %if.else19.i52.i
                                        #   in Loop: Header=BB23_33 Depth=2
	st.d	$a6, $a4, 56
	ld.d	$a7, $a6, 56
	move	$t0, $a5
	move	$a4, $a6
	sltu	$t1, $zero, $t0
	bnez	$t0, .LBB23_38
	b	.LBB23_40
	.p2align	4, , 16
.LBB23_36:                              # %if.then.i1
                                        #   in Loop: Header=BB23_33 Depth=2
	ld.w	$a7, $a5, 8
	ld.w	$t0, $a6, 8
	sub.w	$a7, $a7, $t0
	blt	$a3, $a7, .LBB23_35
.LBB23_37:                              # %if.then14.i60.i
                                        #   in Loop: Header=BB23_33 Depth=2
	st.d	$a5, $a4, 56
	ld.d	$t0, $a5, 56
	move	$a7, $a6
	move	$a4, $a5
	sltu	$t1, $zero, $t0
	beqz	$t0, .LBB23_40
.LBB23_38:                              # %if.end24.i54.i
                                        #   in Loop: Header=BB23_33 Depth=2
	move	$a5, $t0
	move	$a6, $a7
	bnez	$a7, .LBB23_33
	b	.LBB23_40
.LBB23_39:                              #   in Loop: Header=BB23_24 Depth=1
	move	$a7, $a6
	move	$t0, $a5
	move	$a4, $a2
.LBB23_40:                              # %while.end.i.i
                                        #   in Loop: Header=BB23_24 Depth=1
	masknez	$a5, $a7, $t1
	maskeqz	$a6, $t0, $t1
	or	$a5, $a6, $a5
	st.d	$a5, $a4, 56
	b	.LBB23_23
.LBB23_41:                              # %msort.exit
	st.d	$a2, $fp, %pc_lo12(current)
	pcalau12i	$a0, %pc_hi20(currentend)
	st.d	$zero, $a0, %pc_lo12(currentend)
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end23:
	.size	Configlist_sort, .Lfunc_end23-Configlist_sort
                                        # -- End function
	.globl	Configlist_sortbasis            # -- Begin function Configlist_sortbasis
	.p2align	5
	.type	Configlist_sortbasis,@function
Configlist_sortbasis:                   # @Configlist_sortbasis
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current)
	ld.d	$s0, $a0, %pc_lo12(current)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 240
	addi.d	$fp, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB24_21
# %bb.1:                                # %while.body.i.preheader
	addi.w	$a0, $zero, -1
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	move	$a3, $a2
.LBB24_3:                               # %for.end15.i
                                        #   in Loop: Header=BB24_4 Depth=1
	bstrpick.d	$a2, $a3, 31, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a2, $fp
	beqz	$s0, .LBB24_21
.LBB24_4:                               # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_7 Depth 2
                                        #       Child Loop BB24_15 Depth 3
	move	$a1, $s0
	ld.d	$s0, $s0, 64
	move	$a2, $zero
	st.d	$zero, $a1, 64
	b	.LBB24_7
	.p2align	4, , 16
.LBB24_5:                               #   in Loop: Header=BB24_7 Depth=2
	move	$a6, $a5
	move	$a7, $a4
	move	$a3, $a1
.LBB24_6:                               # %merge.exit.i
                                        #   in Loop: Header=BB24_7 Depth=2
	alsl.d	$a4, $a2, $fp, 3
	masknez	$a5, $a6, $t0
	maskeqz	$a6, $a7, $t0
	or	$a5, $a6, $a5
	st.d	$a5, $a3, 64
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 29
	st.d	$zero, $a4, 0
	beq	$a2, $a3, .LBB24_3
.LBB24_7:                               # %land.rhs.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_15 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a3, $fp
	beqz	$a3, .LBB24_2
# %bb.8:                                # %for.body8.i
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	beqz	$a4, .LBB24_11
# %bb.9:                                # %Configcmp.exit31
                                        #   in Loop: Header=BB24_7 Depth=2
	bge	$a0, $a4, .LBB24_12
.LBB24_10:                              # %if.else7.i.i
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a5, $a3, 64
	move	$a4, $a1
	move	$a1, $a3
	sltu	$t0, $zero, $a4
	bnez	$a4, .LBB24_13
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_11:                              # %if.then.i27
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.w	$a4, $a1, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
	blt	$a0, $a4, .LBB24_10
.LBB24_12:                              # %if.then6.i.i
                                        #   in Loop: Header=BB24_7 Depth=2
	ld.d	$a4, $a1, 64
	move	$a5, $a3
	sltu	$t0, $zero, $a4
	beqz	$a4, .LBB24_5
.LBB24_13:                              # %if.end.i.i
                                        #   in Loop: Header=BB24_7 Depth=2
	beqz	$a5, .LBB24_5
# %bb.14:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB24_7 Depth=2
	move	$a3, $a1
	.p2align	4, , 16
.LBB24_15:                              # %while.body.i.i
                                        #   Parent Loop BB24_4 Depth=1
                                        #     Parent Loop BB24_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	beqz	$a6, .LBB24_18
# %bb.16:                               # %Configcmp.exit21
                                        #   in Loop: Header=BB24_15 Depth=3
	bge	$a0, $a6, .LBB24_19
.LBB24_17:                              # %if.else19.i.i
                                        #   in Loop: Header=BB24_15 Depth=3
	st.d	$a5, $a3, 64
	ld.d	$a6, $a5, 64
	move	$a7, $a4
	move	$a3, $a5
	sltu	$t0, $zero, $a7
	bnez	$a7, .LBB24_20
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_18:                              # %if.then.i17
                                        #   in Loop: Header=BB24_15 Depth=3
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
	blt	$a0, $a6, .LBB24_17
.LBB24_19:                              # %if.then14.i.i
                                        #   in Loop: Header=BB24_15 Depth=3
	st.d	$a4, $a3, 64
	ld.d	$a7, $a4, 64
	move	$a6, $a5
	move	$a3, $a4
	sltu	$t0, $zero, $a7
	beqz	$a7, .LBB24_6
.LBB24_20:                              # %if.end24.i.i
                                        #   in Loop: Header=BB24_15 Depth=3
	move	$a4, $a7
	move	$a5, $a6
	bnez	$a6, .LBB24_15
	b	.LBB24_6
.LBB24_21:                              # %for.body21.i.preheader
	move	$a0, $zero
	move	$a1, $zero
	ori	$a2, $zero, 30
	addi.w	$a3, $zero, -1
	b	.LBB24_24
	.p2align	4, , 16
.LBB24_22:                              #   in Loop: Header=BB24_24 Depth=1
	move	$a1, $a4
.LBB24_23:                              # %for.inc29.i
                                        #   in Loop: Header=BB24_24 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB24_41
.LBB24_24:                              # %for.body21.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_33 Depth 2
	slli.d	$a4, $a0, 3
	ldx.d	$a4, $a4, $fp
	beqz	$a4, .LBB24_23
# %bb.25:                               # %if.then.i
                                        #   in Loop: Header=BB24_24 Depth=1
	beqz	$a1, .LBB24_22
# %bb.26:                               # %if.else4.i.i
                                        #   in Loop: Header=BB24_24 Depth=1
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a4, 0
	ld.w	$a5, $a5, 72
	ld.w	$a6, $a6, 72
	sub.w	$a5, $a5, $a6
	beqz	$a5, .LBB24_29
# %bb.27:                               # %Configcmp.exit11
                                        #   in Loop: Header=BB24_24 Depth=1
	bge	$a3, $a5, .LBB24_30
.LBB24_28:                              # %if.else7.i28.i
                                        #   in Loop: Header=BB24_24 Depth=1
	ld.d	$a6, $a4, 64
	move	$a5, $a1
	move	$a1, $a4
	sltu	$t1, $zero, $a5
	bnez	$a5, .LBB24_31
	b	.LBB24_39
.LBB24_29:                              # %if.then.i7
                                        #   in Loop: Header=BB24_24 Depth=1
	ld.w	$a5, $a1, 8
	ld.w	$a6, $a4, 8
	sub.w	$a5, $a5, $a6
	blt	$a3, $a5, .LBB24_28
.LBB24_30:                              # %if.then6.i62.i
                                        #   in Loop: Header=BB24_24 Depth=1
	ld.d	$a5, $a1, 64
	move	$a6, $a4
	sltu	$t1, $zero, $a5
	beqz	$a5, .LBB24_39
.LBB24_31:                              # %if.end.i30.i
                                        #   in Loop: Header=BB24_24 Depth=1
	beqz	$a6, .LBB24_39
# %bb.32:                               # %while.body.i45.i.preheader
                                        #   in Loop: Header=BB24_24 Depth=1
	move	$a4, $a1
	.p2align	4, , 16
.LBB24_33:                              # %while.body.i45.i
                                        #   Parent Loop BB24_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a6, 0
	ld.w	$a7, $a7, 72
	ld.w	$t0, $t0, 72
	sub.w	$a7, $a7, $t0
	beqz	$a7, .LBB24_36
# %bb.34:                               # %Configcmp.exit
                                        #   in Loop: Header=BB24_33 Depth=2
	bge	$a3, $a7, .LBB24_37
.LBB24_35:                              # %if.else19.i52.i
                                        #   in Loop: Header=BB24_33 Depth=2
	st.d	$a6, $a4, 64
	ld.d	$a7, $a6, 64
	move	$t0, $a5
	move	$a4, $a6
	sltu	$t1, $zero, $t0
	bnez	$t0, .LBB24_38
	b	.LBB24_40
	.p2align	4, , 16
.LBB24_36:                              # %if.then.i1
                                        #   in Loop: Header=BB24_33 Depth=2
	ld.w	$a7, $a5, 8
	ld.w	$t0, $a6, 8
	sub.w	$a7, $a7, $t0
	blt	$a3, $a7, .LBB24_35
.LBB24_37:                              # %if.then14.i60.i
                                        #   in Loop: Header=BB24_33 Depth=2
	st.d	$a5, $a4, 64
	ld.d	$t0, $a5, 64
	move	$a7, $a6
	move	$a4, $a5
	sltu	$t1, $zero, $t0
	beqz	$t0, .LBB24_40
.LBB24_38:                              # %if.end24.i54.i
                                        #   in Loop: Header=BB24_33 Depth=2
	move	$a5, $t0
	move	$a6, $a7
	bnez	$a7, .LBB24_33
	b	.LBB24_40
.LBB24_39:                              #   in Loop: Header=BB24_24 Depth=1
	move	$a7, $a6
	move	$t0, $a5
	move	$a4, $a1
.LBB24_40:                              # %while.end.i.i
                                        #   in Loop: Header=BB24_24 Depth=1
	masknez	$a5, $a7, $t1
	maskeqz	$a6, $t0, $t1
	or	$a5, $a6, $a5
	st.d	$a5, $a4, 64
	b	.LBB24_23
.LBB24_41:                              # %msort.exit
	pcalau12i	$a0, %pc_hi20(basis)
	st.d	$a1, $a0, %pc_lo12(basis)
	pcalau12i	$a0, %pc_hi20(basisend)
	st.d	$zero, $a0, %pc_lo12(basisend)
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end24:
	.size	Configlist_sortbasis, .Lfunc_end24-Configlist_sortbasis
                                        # -- End function
	.globl	Configlist_return               # -- Begin function Configlist_return
	.p2align	5
	.type	Configlist_return,@function
Configlist_return:                      # @Configlist_return
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(current)
	ld.d	$a0, $a1, %pc_lo12(current)
	st.d	$zero, $a1, %pc_lo12(current)
	pcalau12i	$a1, %pc_hi20(currentend)
	st.d	$zero, $a1, %pc_lo12(currentend)
	ret
.Lfunc_end25:
	.size	Configlist_return, .Lfunc_end25-Configlist_return
                                        # -- End function
	.globl	Configlist_basis                # -- Begin function Configlist_basis
	.p2align	5
	.type	Configlist_basis,@function
Configlist_basis:                       # @Configlist_basis
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(basis)
	ld.d	$a0, $a1, %pc_lo12(basis)
	st.d	$zero, $a1, %pc_lo12(basis)
	pcalau12i	$a1, %pc_hi20(basisend)
	st.d	$zero, $a1, %pc_lo12(basisend)
	ret
.Lfunc_end26:
	.size	Configlist_basis, .Lfunc_end26-Configlist_basis
                                        # -- End function
	.globl	Configlist_eat                  # -- Begin function Configlist_eat
	.p2align	5
	.type	Configlist_eat,@function
Configlist_eat:                         # @Configlist_eat
# %bb.0:                                # %entry
	beqz	$a0, .LBB27_6
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$s0, %pc_hi20(freelist)
	ld.d	$s1, $s0, %pc_lo12(freelist)
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               # %if.end
                                        #   in Loop: Header=BB27_3 Depth=1
	st.d	$s1, $s2, 56
	move	$s1, $s2
	beqz	$fp, .LBB27_5
.LBB27_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $fp
	ld.d	$a0, $fp, 16
	ld.d	$fp, $fp, 56
	beqz	$a0, .LBB27_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB27_3 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_2
.LBB27_5:                               # %for.cond.for.end_crit_edge
	st.d	$s2, $s0, %pc_lo12(freelist)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB27_6:                               # %for.end
	ret
.Lfunc_end27:
	.size	Configlist_eat, .Lfunc_end27-Configlist_eat
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	memory_error                    # -- Begin function memory_error
	.p2align	5
	.type	memory_error,@function
memory_error:                           # @memory_error
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	memory_error, .Lfunc_end28-memory_error
                                        # -- End function
	.text
	.globl	lemon_main                      # -- Begin function lemon_main
	.p2align	5
	.type	lemon_main,@function
lemon_main:                             # @lemon_main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s2, $a0, %got_pc_lo12(stderr)
	ld.d	$a2, $s2, 0
	move	$fp, $a1
	pcalau12i	$a0, %pc_hi20(lemon_main.options)
	addi.d	$a1, $a0, %pc_lo12(lemon_main.options)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(OptInit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.version)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.version)
	bnez	$a0, .LBB29_14
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(argv)
	ld.d	$s3, $a0, %pc_lo12(argv)
	beqz	$s3, .LBB29_21
# %bb.2:                                # %land.lhs.true.i
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB29_21
# %bb.3:                                # %for.cond.preheader.i
	ld.d	$s0, $s3, 8
	beqz	$s0, .LBB29_21
# %bb.4:                                # %for.body.i.preheader
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$s1, $zero
	ori	$s5, $zero, 16
	ori	$s6, $zero, 43
	ori	$s7, $zero, 45
	ori	$s8, $zero, 1
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_5:                               # %if.end.tail.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ldx.d	$s0, $s3, $s5
	addi.d	$s5, $s5, 8
	beqz	$s0, .LBB29_16
.LBB29_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s2, $s0, 0
	beqz	$s4, .LBB29_11
.LBB29_7:                               # %if.then21.i
                                        #   in Loop: Header=BB29_6 Depth=1
	addi.w	$s1, $s1, 1
.LBB29_8:                               # %sub_0.i
                                        #   in Loop: Header=BB29_6 Depth=1
	bne	$s2, $s7, .LBB29_5
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s7, .LBB29_5
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s8, $a0
	or	$s4, $a0, $a1
	b	.LBB29_5
	.p2align	4, , 16
.LBB29_11:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB29_6 Depth=1
	beq	$s2, $s6, .LBB29_8
# %bb.12:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB29_6 Depth=1
	beq	$s2, $s7, .LBB29_8
# %bb.13:                               # %lor.lhs.false16.i
                                        #   in Loop: Header=BB29_6 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_8
	b	.LBB29_7
.LBB29_14:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB29_15:                              # %if.then12
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_16:                              # %OptNArgs.exit
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	bne	$s1, $a0, .LBB29_21
# %bb.17:                               # %if.end5
	addi.d	$a0, $sp, 24
	ori	$a2, $zero, 288
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(x1a)
	ld.d	$a0, $s1, %pc_lo12(x1a)
	bnez	$a0, .LBB29_23
# %bb.18:                               # %if.end.i
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(x1a)
	beqz	$a0, .LBB29_23
# %bb.19:                               # %if.then2.i
	move	$s0, $a0
	ori	$a0, $zero, 1024
	st.d	$a0, $s0, 0
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_22
# %bb.20:                               # %if.then5.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(x1a)
	b	.LBB29_23
.LBB29_21:                              # %if.then3
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_22:                              # %if.else.i
	lu12i.w	$a1, 6
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, 16
	lu12i.w	$a2, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_23:                              # %Strsafe_init.exit
	pcalau12i	$s4, %pc_hi20(x2a)
	ld.d	$a0, $s4, %pc_lo12(x2a)
	bnez	$a0, .LBB29_28
# %bb.24:                               # %if.end.i16
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(x2a)
	beqz	$a0, .LBB29_28
# %bb.25:                               # %if.then2.i19
	move	$s0, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $s0, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_27
# %bb.26:                               # %if.then5.i27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, %pc_lo12(x2a)
	b	.LBB29_28
.LBB29_27:                              # %if.else.i24
	add.d	$a0, $a0, $s1
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_28:                              # %Symbol_init.exit
	pcalau12i	$s5, %pc_hi20(x3a)
	ld.d	$a0, $s5, %pc_lo12(x3a)
	bnez	$a0, .LBB29_33
# %bb.29:                               # %if.end.i29
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(x3a)
	beqz	$a0, .LBB29_33
# %bb.30:                               # %if.then2.i32
	move	$s0, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $s0, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	bnez	$a0, .LBB29_32
# %bb.31:                               # %if.then5.i40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s5, %pc_lo12(x3a)
	b	.LBB29_33
.LBB29_32:                              # %if.else.i37
	add.d	$a0, $a0, $s1
	st.d	$a0, $s0, 16
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_33:                              # %land.lhs.true.i.i
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 304
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB29_35
# %bb.34:                               # %for.cond.preheader.i.i
	ld.d	$fp, $s3, 8
	bnez	$fp, .LBB29_36
.LBB29_35:
	move	$a0, $zero
	b	.LBB29_48
.LBB29_36:                              # %for.body.i.i.preheader
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $zero
	addi.d	$s0, $s3, 16
	ori	$s5, $zero, 1
	ori	$s6, $zero, 43
	ori	$s8, $zero, 45
	ori	$s7, $zero, 1
	b	.LBB29_38
	.p2align	4, , 16
.LBB29_37:                              #   in Loop: Header=BB29_38 Depth=1
	move	$s1, $zero
	ld.d	$fp, $s0, 0
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB29_45
.LBB29_38:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	bnez	$s1, .LBB29_46
# %bb.39:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$s2, $fp, 0
	beq	$s2, $s6, .LBB29_37
# %bb.40:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	beq	$s2, $s8, .LBB29_43
# %bb.41:                               # %lor.lhs.false15.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_46
# %bb.42:                               # %sub_0.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	bne	$s2, $s8, .LBB29_37
.LBB29_43:                              # %sub_1.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$a0, $fp, 1
	bne	$a0, $s8, .LBB29_37
# %bb.44:                               # %sub_2.i.i
                                        #   in Loop: Header=BB29_38 Depth=1
	ld.bu	$a0, $fp, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s1, $a0, $a1
	ld.d	$fp, $s0, 0
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB29_38
.LBB29_45:
	move	$a0, $zero
	b	.LBB29_47
.LBB29_46:                              # %cond.true.i
	bstrpick.d	$a0, $s7, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s3, $a0
.LBB29_47:                              # %OptArg.exit
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
.LBB29_48:                              # %OptArg.exit
	pcalau12i	$a1, %pc_hi20(lemon_main.basisflag)
	ld.w	$a1, $a1, %pc_lo12(lemon_main.basisflag)
	st.d	$a0, $sp, 264
	st.w	$a1, $sp, 296
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72
	st.w	$zero, $a0, 52
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 64
	bnez	$a0, .LBB29_15
# %bb.49:                               # %if.end14
	ld.w	$a0, $sp, 44
	bnez	$a0, .LBB29_51
# %bb.50:                               # %if.then16
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_51:                              # %if.end18
	ld.d	$a0, $s4, %pc_lo12(x2a)
	bnez	$a0, .LBB29_53
# %bb.52:
	move	$a0, $zero
	b	.LBB29_54
.LBB29_53:                              # %cond.true.i43
	ld.w	$a0, $a0, 4
.LBB29_54:                              # %Symbol_count.exit
	st.w	$a0, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, %pc_lo12(x2a)
	beqz	$s0, .LBB29_56
# %bb.55:                               # %if.end.i47
	ld.w	$fp, $s0, 4
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_60
.LBB29_56:
	move	$a0, $zero
.LBB29_57:                              # %Symbol_arrayof.exit
	ld.w	$a2, $sp, 48
	st.d	$a0, $sp, 56
	addi.w	$a1, $a2, 1
	bltz	$a2, .LBB29_72
# %bb.58:                               # %for.body.preheader
	ori	$a2, $zero, 8
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a1, $a2, .LBB29_67
# %bb.59:
	move	$a2, $zero
	b	.LBB29_70
.LBB29_60:                              # %for.cond.preheader.i51
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB29_57
# %bb.61:                               # %for.body.lr.ph.i
	ld.d	$a1, $s0, 8
	ori	$a2, $zero, 12
	bltu	$fp, $a2, .LBB29_64
# %bb.62:                               # %vector.memcheck
	slli.d	$a2, $fp, 5
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, -24
	bgeu	$a0, $a2, .LBB29_118
# %bb.63:                               # %vector.memcheck
	alsl.d	$a2, $fp, $a0, 3
	bgeu	$a1, $a2, .LBB29_118
.LBB29_64:
	move	$a2, $zero
.LBB29_65:                              # %for.body.i53.preheader
	sub.d	$a3, $fp, $a2
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB29_66:                              # %for.body.i53
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	stx.d	$a2, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB29_66
	b	.LBB29_57
.LBB29_67:                              # %vector.ph110
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a0, 32
	ori	$a5, $zero, 7
	move	$a6, $a2
	.p2align	4, , 16
.LBB29_68:                              # %vector.body113
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a5, -7
	addi.d	$t0, $a5, -6
	addi.d	$t1, $a5, -5
	addi.d	$t2, $a5, -4
	addi.d	$t3, $a5, -3
	addi.d	$t4, $a5, -2
	addi.d	$t5, $a5, -1
	ld.d	$t6, $a4, -32
	ld.d	$t7, $a4, -24
	ld.d	$t8, $a4, -16
	ld.d	$fp, $a4, -8
	ld.d	$s0, $a4, 0
	ld.d	$s1, $a4, 8
	ld.d	$s2, $a4, 16
	ld.d	$s3, $a4, 24
	st.w	$a7, $t6, 8
	st.w	$t0, $t7, 8
	st.w	$t1, $t8, 8
	st.w	$t2, $fp, 8
	st.w	$t3, $s0, 8
	st.w	$t4, $s1, 8
	st.w	$t5, $s2, 8
	st.w	$a5, $s3, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB29_68
# %bb.69:                               # %middle.block117
	beq	$a2, $a3, .LBB29_72
.LBB29_70:                              # %for.body.preheader151
	alsl.d	$a4, $a2, $a0, 3
	sub.d	$a3, $a3, $a2
	.p2align	4, , 16
.LBB29_71:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a2, $a5, 8
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB29_71
.LBB29_72:                              # %for.end
	pcalau12i	$a2, %pc_hi20(Symbolcmpp)
	addi.d	$a3, $a2, %pc_lo12(Symbolcmpp)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 48
	ld.d	$fp, $sp, 56
	bltz	$a0, .LBB29_80
# %bb.73:                               # %for.body32.lr.ph
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 7
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a0, $a2, .LBB29_75
# %bb.74:
	move	$a0, $zero
	b	.LBB29_78
.LBB29_75:                              # %vector.ph122
	bstrpick.d	$a0, $a1, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $fp, 32
	move	$a4, $a0
	.p2align	4, , 16
.LBB29_76:                              # %vector.body125
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a2, -7
	addi.d	$a6, $a2, -6
	addi.d	$a7, $a2, -5
	addi.d	$t0, $a2, -4
	addi.d	$t1, $a2, -3
	addi.d	$t2, $a2, -2
	addi.d	$t3, $a2, -1
	ld.d	$t4, $a3, -32
	ld.d	$t5, $a3, -24
	ld.d	$t6, $a3, -16
	ld.d	$t7, $a3, -8
	ld.d	$t8, $a3, 0
	ld.d	$s0, $a3, 8
	ld.d	$s1, $a3, 16
	ld.d	$s2, $a3, 24
	st.w	$a5, $t4, 8
	st.w	$a6, $t5, 8
	st.w	$a7, $t6, 8
	st.w	$t0, $t7, 8
	st.w	$t1, $t8, 8
	st.w	$t2, $s0, 8
	st.w	$t3, $s1, 8
	st.w	$a2, $s2, 8
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB29_76
# %bb.77:                               # %middle.block130
	beq	$a0, $a1, .LBB29_80
.LBB29_78:                              # %for.body32.preheader
	alsl.d	$a2, $a0, $fp, 3
	sub.d	$a1, $a1, $a0
	.p2align	4, , 16
.LBB29_79:                              # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a0, $a3, 8
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB29_79
.LBB29_80:                              # %for.cond40.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $fp, 8
	ori	$a1, $zero, 2
	.p2align	4, , 16
.LBB29_81:                              # %for.cond40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a3, $a3, 0
	ld.b	$a3, $a3, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	andi	$a3, $a3, 256
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB29_81
# %bb.82:                               # %for.end54
	pcalau12i	$a0, %pc_hi20(lemon_main.rpflag)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.rpflag)
	addi.d	$a2, $a1, -2
	st.w	$a2, $sp, 52
	bnez	$a0, .LBB29_95
# %bb.83:                               # %if.else
	ld.d	$a0, $sp, 32
	pcalau12i	$a2, %pc_hi20(size)
	st.w	$a1, $a2, %pc_lo12(size)
	bnez	$a0, .LBB29_97
.LBB29_84:                              # %FindRulePrecedences.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindFirstSets)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 40
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindStates)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, %pc_lo12(x3a)
	beqz	$s1, .LBB29_86
# %bb.85:                               # %if.end.i67
	ld.w	$s0, $s1, 4
	slli.d	$fp, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_111
.LBB29_86:
	move	$a0, $zero
.LBB29_87:                              # %State_arrayof.exit
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindLinks)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindFollowSets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FindActions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.compress)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.compress)
	bnez	$a0, .LBB29_89
# %bb.88:                               # %if.then62
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(CompressTables)
	jirl	$ra, $ra, 0
.LBB29_89:                              # %if.end63
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ResortStates)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.quiet)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.quiet)
	bnez	$a0, .LBB29_91
# %bb.90:                               # %if.then65
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportOutput)
	jirl	$ra, $ra, 0
.LBB29_91:                              # %if.end66
	pcalau12i	$fp, %pc_hi20(lemon_main.mhflag)
	ld.w	$a1, $fp, %pc_lo12(lemon_main.mhflag)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportTable)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(lemon_main.mhflag)
	bnez	$a0, .LBB29_93
# %bb.92:                               # %if.then68
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(ReportHeader)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	beqz	$a0, .LBB29_94
	b	.LBB29_96
.LBB29_93:                              # %if.end70
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	bnez	$a0, .LBB29_96
.LBB29_94:                              # %if.end80
	ld.w	$a0, $sp, 64
	ld.w	$a1, $sp, 288
	add.w	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_95:                              # %if.then56
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(Reprint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(lemon_main.statistics)
	ld.w	$a0, $a0, %pc_lo12(lemon_main.statistics)
	beqz	$a0, .LBB29_94
.LBB29_96:                              # %if.then72
	ld.w	$a0, $sp, 48
	ld.w	$a1, $sp, 52
	ld.w	$a3, $sp, 44
	sub.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	ld.w	$a2, $sp, 292
	ld.w	$a3, $sp, 288
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 64
	ld.w	$a1, $sp, 288
	add.w	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB29_97:                              # %for.body.i57.preheader
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	addi.w	$a3, $zero, -1
	b	.LBB29_99
	.p2align	4, , 16
.LBB29_98:                              # %for.inc32.i
                                        #   in Loop: Header=BB29_99 Depth=1
	ld.d	$a0, $a0, 88
	beqz	$a0, .LBB29_84
.LBB29_99:                              # %for.body.i57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_103 Depth 2
                                        #       Child Loop BB29_107 Depth 3
	ld.d	$a4, $a0, 64
	bnez	$a4, .LBB29_98
# %bb.100:                              # %for.cond1.preheader.i
                                        #   in Loop: Header=BB29_99 Depth=1
	ld.w	$a4, $a0, 24
	blt	$a4, $a1, .LBB29_98
# %bb.101:                              # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB29_99 Depth=1
	move	$a5, $zero
	move	$a6, $zero
	b	.LBB29_103
	.p2align	4, , 16
.LBB29_102:                             #   in Loop: Header=BB29_103 Depth=2
	move	$a6, $zero
	addi.d	$a5, $a5, 1
	beq	$a5, $a4, .LBB29_98
.LBB29_103:                             # %land.rhs.i
                                        #   Parent Loop BB29_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_107 Depth 3
	bnez	$a6, .LBB29_98
# %bb.104:                              # %for.body5.i
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.d	$a6, $a0, 32
	slli.d	$a7, $a5, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $a6, 12
	bne	$a7, $a2, .LBB29_109
# %bb.105:                              # %for.cond8.preheader.i
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.w	$a7, $a6, 84
	blt	$a7, $a1, .LBB29_102
# %bb.106:                              # %for.body10.lr.ph.i
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.d	$t0, $a6, 88
	.p2align	4, , 16
.LBB29_107:                             # %for.body10.i
                                        #   Parent Loop BB29_99 Depth=1
                                        #     Parent Loop BB29_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $t0, 0
	ld.w	$t1, $a6, 32
	blt	$a3, $t1, .LBB29_110
# %bb.108:                              # %for.cond8.i
                                        #   in Loop: Header=BB29_107 Depth=3
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB29_107
	b	.LBB29_102
	.p2align	4, , 16
.LBB29_109:                             # %if.else.i61
                                        #   in Loop: Header=BB29_103 Depth=2
	ld.w	$a7, $a6, 32
	bltz	$a7, .LBB29_102
.LBB29_110:                             # %if.end27.sink.split.i
                                        #   in Loop: Header=BB29_103 Depth=2
	st.d	$a6, $a0, 64
	addi.d	$a5, $a5, 1
	bne	$a5, $a4, .LBB29_103
	b	.LBB29_98
.LBB29_111:                             # %for.cond.preheader.i72
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB29_87
# %bb.112:                              # %for.body.lr.ph.i75
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 12
	bltu	$s0, $a2, .LBB29_115
# %bb.113:                              # %vector.memcheck133
	slli.d	$a2, $s0, 5
	add.d	$a2, $a1, $a2
	addi.d	$a2, $a2, -24
	bgeu	$a0, $a2, .LBB29_121
# %bb.114:                              # %vector.memcheck133
	alsl.d	$a2, $s0, $a0, 3
	bgeu	$a1, $a2, .LBB29_121
.LBB29_115:
	move	$a2, $zero
.LBB29_116:                             # %for.body.i78.preheader
	sub.d	$a3, $s0, $a2
	slli.d	$a4, $a2, 3
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB29_117:                             # %for.body.i78
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	stx.d	$a2, $a0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, 32
	bnez	$a3, .LBB29_117
	b	.LBB29_87
.LBB29_118:                             # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $fp, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a1, 128
	slli.d	$a5, $fp, 3
	bstrpick.d	$a5, $a5, 33, 6
	slli.d	$a5, $a5, 6
	.p2align	4, , 16
.LBB29_119:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -128
	ld.d	$a7, $a4, -96
	ld.d	$t0, $a4, -64
	ld.d	$t1, $a4, -32
	xvinsgr2vr.d	$xr0, $a6, 0
	xvinsgr2vr.d	$xr0, $a7, 1
	xvinsgr2vr.d	$xr0, $t0, 2
	xvinsgr2vr.d	$xr0, $t1, 3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a4, 32
	ld.d	$t0, $a4, 64
	ld.d	$t1, $a4, 96
	xvinsgr2vr.d	$xr1, $a6, 0
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $t1, 3
	add.d	$a6, $a0, $a3
	xvstx	$xr0, $a0, $a3
	xvst	$xr1, $a6, 32
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 256
	bne	$a5, $a3, .LBB29_119
# %bb.120:                              # %middle.block
	beq	$a2, $fp, .LBB29_57
	b	.LBB29_65
.LBB29_121:                             # %vector.ph141
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a1, 128
	bstrpick.d	$a5, $fp, 33, 6
	slli.d	$a5, $a5, 6
	.p2align	4, , 16
.LBB29_122:                             # %vector.body144
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -128
	ld.d	$a7, $a4, -96
	ld.d	$t0, $a4, -64
	ld.d	$t1, $a4, -32
	xvinsgr2vr.d	$xr0, $a6, 0
	xvinsgr2vr.d	$xr0, $a7, 1
	xvinsgr2vr.d	$xr0, $t0, 2
	xvinsgr2vr.d	$xr0, $t1, 3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a4, 32
	ld.d	$t0, $a4, 64
	ld.d	$t1, $a4, 96
	xvinsgr2vr.d	$xr1, $a6, 0
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $t1, 3
	add.d	$a6, $a0, $a3
	xvstx	$xr0, $a0, $a3
	xvst	$xr1, $a6, 32
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 256
	bne	$a5, $a3, .LBB29_122
# %bb.123:                              # %middle.block147
	beq	$a2, $s0, .LBB29_87
	b	.LBB29_116
.Lfunc_end29:
	.size	lemon_main, .Lfunc_end29-lemon_main
                                        # -- End function
	.p2align	5                               # -- Begin function handle_D_option
	.type	handle_D_option,@function
handle_D_option:                        # @handle_D_option
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(nDefine)
	ld.w	$a2, $a1, %pc_lo12(nDefine)
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(azDefine)
	ld.d	$a0, $s1, %pc_lo12(azDefine)
	addi.w	$s0, $a2, 1
	st.w	$s0, $a1, %pc_lo12(nDefine)
	slli.d	$a1, $s0, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(azDefine)
	beqz	$a0, .LBB30_6
# %bb.1:                                # %if.end
	alsl.d	$s1, $s0, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, -8
	beqz	$a0, .LBB30_6
# %bb.2:                                # %if.end9
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 61
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB30_5
	.p2align	4, , 16
.LBB30_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	beq	$a1, $a0, .LBB30_5
# %bb.4:                                # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$a1, $s0, 0
	bnez	$a1, .LBB30_3
.LBB30_5:                               # %for.end
	st.b	$zero, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB30_6:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	handle_D_option, .Lfunc_end30-handle_D_option
                                        # -- End function
	.globl	OptInit                         # -- Begin function OptInit
	.p2align	5
	.type	OptInit,@function
OptInit:                                # @OptInit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$a2, $a0
	pcalau12i	$s7, %pc_hi20(argv)
	st.d	$a0, $s7, %pc_lo12(argv)
	pcalau12i	$s8, %pc_hi20(op)
	st.d	$a1, $s8, %pc_lo12(op)
	pcalau12i	$a0, %pc_hi20(errstream)
	st.d	$fp, $a0, %pc_lo12(errstream)
	beqz	$a2, .LBB31_67
# %bb.1:                                # %land.lhs.true
	beqz	$a1, .LBB31_67
# %bb.2:                                # %land.lhs.true
	ld.d	$a0, $a2, 0
	beqz	$a0, .LBB31_67
# %bb.3:                                # %for.cond.preheader
	ld.d	$a0, $a2, 8
	beqz	$a0, .LBB31_67
# %bb.4:                                # %for.body.lr.ph
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.166)
	addi.d	$a1, $a1, %pc_lo12(.L.str.166)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(emsg)
	addi.d	$a1, $a1, %pc_lo12(emsg)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.167)
	addi.d	$a1, $a1, %pc_lo12(.L.str.167)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	ori	$s4, $zero, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a2
	b	.LBB31_8
	.p2align	4, , 16
.LBB31_5:                               #   in Loop: Header=BB31_8 Depth=1
	ori	$s0, $zero, 1
.LBB31_6:                               # %for.inc
                                        #   in Loop: Header=BB31_8 Depth=1
	add.w	$s3, $s0, $s3
.LBB31_7:                               # %for.inc
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$s2, $s7, %pc_lo12(argv)
	addi.d	$s4, $s4, 1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s2, $a0
	beqz	$a0, .LBB31_66
.LBB31_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_17 Depth 2
                                        #     Child Loop BB31_12 Depth 2
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 45
	beq	$a1, $a2, .LBB31_10
# %bb.9:                                # %for.body
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$a2, $zero, 43
	bne	$a1, $a2, .LBB31_14
.LBB31_10:                              # %if.then15
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$s1, $s8, %pc_lo12(op)
	ld.d	$s6, $s1, 8
	beqz	$s6, .LBB31_24
# %bb.11:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB31_8 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$s0, $s2, $a0
	addi.d	$s5, $s0, 1
	.p2align	4, , 16
.LBB31_12:                              # %for.body.i
                                        #   Parent Loop BB31_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_19
# %bb.13:                               # %for.cond.i
                                        #   in Loop: Header=BB31_12 Depth=2
	ld.d	$s6, $s1, 40
	addi.d	$s1, $s1, 32
	bnez	$s6, .LBB31_12
	b	.LBB31_24
	.p2align	4, , 16
.LBB31_14:                              # %if.else
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_7
# %bb.15:                               # %if.then20
                                        #   in Loop: Header=BB31_8 Depth=1
	move	$s1, $s7
	slli.d	$a0, $s4, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$a0, $s2, $a0
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.b	$zero, $a0, 0
	move	$s7, $s8
	ld.d	$s0, $s8, %pc_lo12(op)
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB31_27
# %bb.16:                               # %for.body.lr.ph.i15
                                        #   in Loop: Header=BB31_8 Depth=1
	alsl.d	$a0, $s4, $s2, 3
	ld.d	$s6, $a0, 0
	move	$s2, $zero
	addi.d	$s8, $s0, 40
	.p2align	4, , 16
.LBB31_17:                              # %for.body.i16
                                        #   Parent Loop BB31_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_28
# %bb.18:                               # %for.cond.i19
                                        #   in Loop: Header=BB31_17 Depth=2
	ld.d	$a1, $s8, 0
	addi.d	$s2, $s2, 1
	addi.d	$s8, $s8, 32
	bnez	$a1, .LBB31_17
	b	.LBB31_28
	.p2align	4, , 16
.LBB31_19:                              # %for.end.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB31_24
# %bb.20:                               # %if.else.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a1, $s1, 0
	ori	$a0, $zero, 8
	beq	$a1, $a0, .LBB31_36
# %bb.21:                               # %if.else.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.bu	$a0, $s0, 0
	addi.d	$a0, $a0, -45
	sltui	$a0, $a0, 1
	ori	$a2, $zero, 5
	beq	$a1, $a2, .LBB31_35
# %bb.22:                               # %if.else.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB31_38
# %bb.23:                               # %if.then31.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s1, 16
	st.w	$a0, $a1, 0
	add.w	$s3, $zero, $s3
	b	.LBB31_7
	.p2align	4, , 16
.LBB31_24:                              # %if.then21.i
                                        #   in Loop: Header=BB31_8 Depth=1
	beqz	$fp, .LBB31_5
# %bb.25:                               # %if.then23.i
                                        #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB31_26:                              # %handleflags.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	b	.LBB31_6
.LBB31_27:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s2, $zero
.LBB31_28:                              # %for.end.i23
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$a0, $zero, 61
	st.b	$a0, $s5, 0
	slli.d	$s6, $s2, 5
	add.d	$a0, $s0, $s6
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB31_33
# %bb.29:                               # %if.else.i24
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	move	$s8, $s7
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB31_49
# %bb.30:                               # %if.else.i24
                                        #   in Loop: Header=BB31_8 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI31_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI31_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	addi.d	$a0, $s5, 1
	move	$s7, $s1
	jr	$a1
.LBB31_31:                              # %sw.bb.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$s2, $zero, 1
	beqz	$fp, .LBB31_51
# %bb.32:                               # %if.then22.i
                                        #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a1, $a0, %pc_lo12(.L.str.168)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_54
.LBB31_33:                              # %if.then13.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$s2, $zero, 1
	move	$s8, $s7
	beqz	$fp, .LBB31_40
# %bb.34:                               # %if.then15.i
                                        #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a1, $a0, %pc_lo12(.L.str.166)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	move	$s7, $s1
	b	.LBB31_64
.LBB31_35:                              # %if.then40.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s1, 16
	b	.LBB31_37
.LBB31_36:                              # %if.then50.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s1, 16
	addi.d	$a0, $s0, 2
.LBB31_37:                              # %handleflags.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	jirl	$ra, $a1, 0
	add.w	$s3, $zero, $s3
	b	.LBB31_7
.LBB31_38:                              # %if.else57.i
                                        #   in Loop: Header=BB31_8 Depth=1
	beqz	$fp, .LBB31_5
# %bb.39:                               # %if.then59.i
                                        #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB31_26
.LBB31_40:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s7, $s1
	b	.LBB31_64
.LBB31_41:                              # %sw.bb26.i
                                        #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB31_50
# %bb.42:                               # %if.then29.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$s2, $zero, 1
	beqz	$fp, .LBB31_44
# %bb.43:                               # %if.then31.i27
                                        #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.169)
	addi.d	$a1, $a0, %pc_lo12(.L.str.169)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	fmov.d	$fs1, $fa0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(argv)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	sub.w	$a1, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs1
.LBB31_44:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_55
.LBB31_45:                              # %sw.bb53.i
                                        #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	b	.LBB31_53
.LBB31_46:                              # %sw.bb38.i
                                        #   in Loop: Header=BB31_8 Depth=1
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	ld.bu	$a1, $s0, 0
	move	$s5, $a0
	beqz	$a1, .LBB31_52
# %bb.47:                               # %if.then42.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ori	$s2, $zero, 1
	beqz	$fp, .LBB31_65
# %bb.48:                               # %if.then44.i
                                        #   in Loop: Header=BB31_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.170)
	addi.d	$a1, $a0, %pc_lo12(.L.str.170)
	pcalau12i	$a0, %pc_hi20(emsg)
	addi.d	$a2, $a0, %pc_lo12(emsg)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(argv)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	sub.w	$a1, $s0, $a0
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(errline)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB31_54
.LBB31_49:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	move	$s2, $zero
	fmov.d	$fa0, $fs0
	move	$s7, $s1
	b	.LBB31_55
.LBB31_50:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	move	$s2, $zero
	b	.LBB31_55
.LBB31_51:                              #   in Loop: Header=BB31_8 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB31_54
.LBB31_52:                              #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $zero
.LBB31_53:                              # %sw.epilog.i
                                        #   in Loop: Header=BB31_8 Depth=1
	move	$s2, $zero
.LBB31_54:                              # %sw.epilog.i
                                        #   in Loop: Header=BB31_8 Depth=1
	fmov.d	$fa0, $fs0
.LBB31_55:                              # %sw.epilog.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $s8, %pc_lo12(op)
	ldx.w	$a2, $a1, $s6
	addi.d	$a2, $a2, -2
	ori	$a3, $zero, 6
	bltu	$a3, $a2, .LBB31_64
# %bb.56:                               # %sw.epilog.i
                                        #   in Loop: Header=BB31_8 Depth=1
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI31_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI31_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	add.d	$a1, $a1, $s6
	jr	$a2
.LBB31_57:                              # %sw.bb65.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	st.w	$s5, $a0, 0
	b	.LBB31_64
.LBB31_58:                              # %sw.bb73.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	st.d	$a0, $a1, 0
	b	.LBB31_64
.LBB31_59:                              # %sw.bb77.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	b	.LBB31_62
.LBB31_60:                              # %sw.bb58.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	fst.d	$fa0, $a0, 0
	b	.LBB31_64
.LBB31_61:                              # %sw.bb69.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a1, $a1, 16
	addi.w	$a0, $s5, 0
.LBB31_62:                              # %handleswitch.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	jirl	$ra, $a1, 0
	b	.LBB31_64
.LBB31_63:                              # %sw.bb61.i
                                        #   in Loop: Header=BB31_8 Depth=1
	ld.d	$a0, $a1, 16
	jirl	$ra, $a0, 0
	.p2align	4, , 16
.LBB31_64:                              # %handleswitch.exit
                                        #   in Loop: Header=BB31_8 Depth=1
	add.w	$s3, $s2, $s3
	b	.LBB31_7
.LBB31_65:                              #   in Loop: Header=BB31_8 Depth=1
	move	$a0, $zero
	b	.LBB31_54
.LBB31_66:                              # %for.end
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bge	$s3, $a0, .LBB31_68
.LBB31_67:                              # %if.end29
	move	$a0, $zero
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB31_68:                              # %if.then27
	ld.d	$a2, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(OptPrint)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	OptInit, .Lfunc_end31-OptInit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI31_0:
	.word	.LBB31_31-.LJTI31_0
	.word	.LBB31_46-.LJTI31_0
	.word	.LBB31_41-.LJTI31_0
	.word	.LBB31_45-.LJTI31_0
	.word	.LBB31_31-.LJTI31_0
	.word	.LBB31_46-.LJTI31_0
	.word	.LBB31_41-.LJTI31_0
	.word	.LBB31_45-.LJTI31_0
.LJTI31_1:
	.word	.LBB31_57-.LJTI31_1
	.word	.LBB31_60-.LJTI31_1
	.word	.LBB31_58-.LJTI31_1
	.word	.LBB31_64-.LJTI31_1
	.word	.LBB31_61-.LJTI31_1
	.word	.LBB31_63-.LJTI31_1
	.word	.LBB31_59-.LJTI31_1
                                        # -- End function
	.text
	.globl	OptNArgs                        # -- Begin function OptNArgs
	.p2align	5
	.type	OptNArgs,@function
OptNArgs:                               # @OptNArgs
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(argv)
	ld.d	$a0, $a0, %pc_lo12(argv)
	beqz	$a0, .LBB32_13
# %bb.1:                                # %land.lhs.true
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB32_13
# %bb.2:                                # %for.cond.preheader
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB32_13
# %bb.3:                                # %for.body.preheader
	move	$s1, $zero
	move	$fp, $zero
	addi.d	$s2, $a0, 16
	ori	$s3, $zero, 43
	ori	$s4, $zero, 45
	ori	$s5, $zero, 1
	b	.LBB32_5
	.p2align	4, , 16
.LBB32_4:                               # %if.end.tail
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB32_14
.LBB32_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s6, $s0, 0
	beqz	$s1, .LBB32_10
.LBB32_6:                               # %if.then21
                                        #   in Loop: Header=BB32_5 Depth=1
	addi.w	$fp, $fp, 1
.LBB32_7:                               # %sub_0
                                        #   in Loop: Header=BB32_5 Depth=1
	bne	$s6, $s4, .LBB32_4
# %bb.8:                                # %sub_1
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s4, .LBB32_4
# %bb.9:                                # %sub_2
                                        #   in Loop: Header=BB32_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s1, $a0, $a1
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_10:                              # %lor.lhs.false
                                        #   in Loop: Header=BB32_5 Depth=1
	beq	$s6, $s3, .LBB32_7
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB32_5 Depth=1
	beq	$s6, $s4, .LBB32_7
# %bb.12:                               # %lor.lhs.false16
                                        #   in Loop: Header=BB32_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB32_7
	b	.LBB32_6
.LBB32_13:
	move	$fp, $zero
.LBB32_14:                              # %if.end30
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end32:
	.size	OptNArgs, .Lfunc_end32-OptNArgs
                                        # -- End function
	.globl	OptArg                          # -- Begin function OptArg
	.p2align	5
	.type	OptArg,@function
OptArg:                                 # @OptArg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(argv)
	ld.d	$s1, $a1, %pc_lo12(argv)
	beqz	$s1, .LBB33_14
# %bb.1:                                # %land.lhs.true.i
	move	$fp, $a0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB33_14
# %bb.2:                                # %for.cond.preheader.i
	ld.d	$s0, $s1, 8
	beqz	$s0, .LBB33_14
# %bb.3:                                # %for.body.i.preheader
	move	$s3, $zero
	addi.d	$s2, $s1, 16
	ori	$s4, $zero, 1
	ori	$s5, $zero, 43
	ori	$s7, $zero, 45
	ori	$s6, $zero, 1
	b	.LBB33_5
	.p2align	4, , 16
.LBB33_4:                               # %if.end24.tail.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB33_14
.LBB33_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB33_11
.LBB33_6:                               # %if.then20.i
                                        #   in Loop: Header=BB33_5 Depth=1
	beqz	$fp, .LBB33_16
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$s8, $s0, 0
	addi.w	$fp, $fp, -1
.LBB33_8:                               # %sub_0.i
                                        #   in Loop: Header=BB33_5 Depth=1
	bne	$s8, $s7, .LBB33_4
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s7, .LBB33_4
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_11:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ld.bu	$s8, $s0, 0
	beq	$s8, $s5, .LBB33_8
# %bb.12:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB33_5 Depth=1
	beq	$s8, $s7, .LBB33_8
# %bb.13:                               # %lor.lhs.false15.i
                                        #   in Loop: Header=BB33_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_8
	b	.LBB33_6
.LBB33_14:
	move	$a0, $zero
.LBB33_15:                              # %cond.end
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB33_16:                              # %cond.true
	bstrpick.d	$a0, $s6, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	b	.LBB33_15
.Lfunc_end33:
	.size	OptArg, .Lfunc_end33-OptArg
                                        # -- End function
	.globl	OptErr                          # -- Begin function OptErr
	.p2align	5
	.type	OptErr,@function
OptErr:                                 # @OptErr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(argv)
	ld.d	$a1, $a1, %pc_lo12(argv)
	beqz	$a1, .LBB34_14
# %bb.1:                                # %land.lhs.true.i
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB34_14
# %bb.2:                                # %for.cond.preheader.i
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB34_14
# %bb.3:                                # %for.body.i.preheader
	move	$s3, $zero
	addi.d	$s2, $a1, 16
	ori	$s4, $zero, 1
	ori	$s5, $zero, 43
	ori	$s6, $zero, 45
	ori	$s1, $zero, 1
	b	.LBB34_5
	.p2align	4, , 16
.LBB34_4:                               # %if.end24.tail.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.d	$s0, $s2, 0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB34_14
.LBB34_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	beqz	$s3, .LBB34_11
.LBB34_6:                               # %if.then20.i
                                        #   in Loop: Header=BB34_5 Depth=1
	beqz	$fp, .LBB34_15
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$s7, $s0, 0
	addi.w	$fp, $fp, -1
.LBB34_8:                               # %sub_0.i
                                        #   in Loop: Header=BB34_5 Depth=1
	bne	$s7, $s6, .LBB34_4
# %bb.9:                                # %sub_1.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$a0, $s0, 1
	bne	$a0, $s6, .LBB34_4
# %bb.10:                               # %sub_2.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$a0, $s0, 2
	sltui	$a0, $a0, 1
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	b	.LBB34_4
	.p2align	4, , 16
.LBB34_11:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.bu	$s7, $s0, 0
	beq	$s7, $s5, .LBB34_8
# %bb.12:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB34_5 Depth=1
	beq	$s7, $s6, .LBB34_8
# %bb.13:                               # %lor.lhs.false15.i
                                        #   in Loop: Header=BB34_5 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB34_8
	b	.LBB34_6
.LBB34_14:                              # %if.end
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB34_15:                              # %if.then
	pcalau12i	$a0, %pc_hi20(errstream)
	ld.d	$a2, $a0, %pc_lo12(errstream)
	move	$a0, $s1
	move	$a1, $zero
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(errline)
	jr	$t8
.Lfunc_end34:
	.size	OptErr, .Lfunc_end34-OptErr
                                        # -- End function
	.p2align	5                               # -- Begin function errline
	.type	errline,@function
errline:                                # @errline
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(argv)
	ld.d	$a3, $s3, %pc_lo12(argv)
	ld.d	$a3, $a3, 0
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$a0, $a3
	move	$a1, $a2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s3, %pc_lo12(argv)
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s4, $a0, 1
	ori	$a1, $zero, 2
	ori	$a0, $zero, 1
	blt	$s1, $a1, .LBB35_6
# %bb.1:                                # %land.rhs.preheader
	slli.d	$s7, $s1, 3
	ori	$s6, $zero, 1
	ori	$s8, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s2, $a0, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB35_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a2, $s5, $s8
	beqz	$a2, .LBB35_5
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB35_2 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s3, %pc_lo12(argv)
	ldx.d	$a0, $s5, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	addi.d	$s4, $a0, 1
	addi.d	$s8, $s8, 8
	addi.w	$s6, $s6, 1
	bne	$s7, $s8, .LBB35_2
# %bb.4:
	move	$s6, $s1
.LBB35_5:                               # %for.end.loopexit
	bstrpick.d	$a0, $s6, 31, 0
.LBB35_6:                               # %for.end
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s5, $a0
	add.w	$s0, $s4, $s0
	beqz	$a2, .LBB35_9
# %bb.7:                                # %for.body22.preheader
	addi.d	$s2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s1, $a0, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB35_8:                               # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(argv)
	ldx.d	$a2, $a0, $s2
	addi.d	$s2, $s2, 8
	bnez	$a2, .LBB35_8
.LBB35_9:                               # %for.end28
	ori	$a0, $zero, 19
	blt	$a0, $s0, .LBB35_11
# %bb.10:                               # %if.then31
	pcalau12i	$a0, %pc_hi20(.L.str.171)
	addi.d	$a1, $a0, %pc_lo12(.L.str.171)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
	move	$a2, $s0
	b	.LBB35_12
.LBB35_11:                              # %if.else
	addi.w	$a2, $s0, -7
	pcalau12i	$a0, %pc_hi20(.L.str.172)
	addi.d	$a1, $a0, %pc_lo12(.L.str.172)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	move	$a0, $fp
.LBB35_12:                              # %if.then31
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end35:
	.size	errline, .Lfunc_end35-errline
                                        # -- End function
	.globl	OptPrint                        # -- Begin function OptPrint
	.p2align	5
	.type	OptPrint,@function
OptPrint:                               # @OptPrint
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(op)
	ld.d	$s8, $s7, %pc_lo12(op)
	ld.d	$s0, $s8, 8
	beqz	$s0, .LBB36_19
# %bb.1:                                # %for.body.preheader
	move	$fp, $zero
	ori	$s1, $zero, 8
	ori	$s2, $zero, 1
	move	$s3, $s8
	move	$a0, $s0
	b	.LBB36_4
	.p2align	4, , 16
.LBB36_2:                               # %sw.bb8
                                        #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 7
.LBB36_3:                               # %sw.epilog
                                        #   in Loop: Header=BB36_4 Depth=1
	slt	$a2, $fp, $a1
	ld.d	$a0, $s3, 40
	masknez	$a3, $fp, $a2
	maskeqz	$a1, $a1, $a2
	or	$fp, $a1, $a3
	addi.d	$s3, $s3, 32
	beqz	$a0, .LBB36_10
.LBB36_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	addi.w	$a1, $a0, 1
	bltu	$s1, $a2, .LBB36_3
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB36_4 Depth=1
	sll.d	$a2, $s2, $a2
	andi	$a3, $a2, 68
	bnez	$a3, .LBB36_9
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB36_4 Depth=1
	andi	$a3, $a2, 136
	bnez	$a3, .LBB36_2
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB36_4 Depth=1
	andi	$a2, $a2, 272
	beqz	$a2, .LBB36_3
# %bb.8:                                # %sw.bb10
                                        #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 9
	b	.LBB36_3
	.p2align	4, , 16
.LBB36_9:                               # %sw.bb6
                                        #   in Loop: Header=BB36_4 Depth=1
	addi.w	$a1, $a0, 10
	b	.LBB36_3
.LBB36_10:                              # %for.body18.lr.ph
	addi.d	$a0, $fp, -8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $fp, -6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $fp, -9
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 40
	ori	$s2, $zero, 7
	pcalau12i	$a0, %pc_hi20(.LJTI36_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI36_0)
	pcalau12i	$s5, %pc_hi20(errstream)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s3, $a0, %pc_lo12(.L.str.39)
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB36_14
	.p2align	4, , 16
.LBB36_11:                              # %sw.bb44
                                        #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB36_12:                              # %for.inc77
                                        #   in Loop: Header=BB36_14 Depth=1
	move	$a2, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB36_13:                              # %for.inc77
                                        #   in Loop: Header=BB36_14 Depth=1
	ld.d	$a0, $s7, %pc_lo12(op)
	ldx.d	$s0, $a0, $s1
	add.d	$a0, $a0, $s1
	addi.d	$s8, $a0, -8
	addi.d	$s1, $s1, 32
	beqz	$s0, .LBB36_19
.LBB36_14:                              # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$a0, $a0, -1
	bltu	$s2, $a0, .LBB36_13
# %bb.15:                               # %for.body18
                                        #   in Loop: Header=BB36_14 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB36_16:                              # %sw.bb22
                                        #   in Loop: Header=BB36_14 Depth=1
	ld.d	$a0, $s5, %pc_lo12(errstream)
	ld.d	$a4, $s8, 24
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB36_13
	.p2align	4, , 16
.LBB36_17:                              # %sw.bb60
                                        #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB36_12
	.p2align	4, , 16
.LBB36_18:                              # %sw.bb29
                                        #   in Loop: Header=BB36_14 Depth=1
	ld.d	$s6, $s5, %pc_lo12(errstream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s8, 24
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $a0
	move	$a0, $s6
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB36_12
.LBB36_19:                              # %for.end79
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end36:
	.size	OptPrint, .Lfunc_end36-OptPrint
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI36_0:
	.word	.LBB36_16-.LJTI36_0
	.word	.LBB36_18-.LJTI36_0
	.word	.LBB36_11-.LJTI36_0
	.word	.LBB36_17-.LJTI36_0
	.word	.LBB36_16-.LJTI36_0
	.word	.LBB36_18-.LJTI36_0
	.word	.LBB36_11-.LJTI36_0
	.word	.LBB36_17-.LJTI36_0
                                        # -- End function
	.text
	.globl	Parse                           # -- Begin function Parse
	.p2align	5
	.type	Parse,@function
Parse:                                  # @Parse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a1, 3
	ori	$a1, $a1, 2016
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 128
	lu12i.w	$a1, 3
	ori	$a2, $a1, 3832
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 240
	st.d	$fp, $sp, 144
	st.d	$s1, $sp, 120
	st.w	$zero, $sp, 152
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_145
# %bb.1:                                # %if.end
	move	$s3, $a0
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s4, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_146
# %bb.2:                                # %if.end17
	move	$s0, $a0
	addi.w	$s2, $s4, 0
	ori	$a1, $zero, 1
	ori	$s4, $zero, 1
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB37_147
# %bb.3:                                # %if.end27
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nDefine)
	ld.w	$s5, $a0, %pc_lo12(nDefine)
	stx.b	$zero, $s0, $s2
	pcalau12i	$a0, %pc_hi20(azDefine)
	ld.d	$a0, $a0, %pc_lo12(azDefine)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 15
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $s0, 1
	ori	$s1, $zero, 7
	ori	$a2, $zero, 10
	ori	$a1, $zero, 37
	lu12i.w	$s6, 2
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	move	$s7, $s0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB37_6
	.p2align	4, , 16
.LBB37_4:                               # %if.end.thread.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s4, $s4, 1
.LBB37_5:                               # %for.inc202.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s7, $s7, 1
	addi.w	$s1, $s1, 1
	addi.d	$fp, $fp, 1
.LBB37_6:                               # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_51 Depth 2
                                        #     Child Loop BB37_120 Depth 2
                                        #     Child Loop BB37_143 Depth 2
                                        #     Child Loop BB37_139 Depth 2
                                        #     Child Loop BB37_27 Depth 2
                                        #     Child Loop BB37_30 Depth 2
                                        #     Child Loop BB37_35 Depth 2
                                        #     Child Loop BB37_45 Depth 2
	ldx.bu	$a0, $s0, $s8
	beq	$a0, $a2, .LBB37_4
# %bb.7:                                # %for.cond.i
                                        #   in Loop: Header=BB37_6 Depth=1
	beq	$a0, $a1, .LBB37_9
# %bb.8:                                # %for.cond.i
                                        #   in Loop: Header=BB37_6 Depth=1
	bnez	$a0, .LBB37_5
	b	.LBB37_150
	.p2align	4, , 16
.LBB37_9:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB37_6 Depth=1
	add.d	$s2, $s0, $s8
	beqz	$s8, .LBB37_11
# %bb.10:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.bu	$a0, $s2, -1
	bne	$a0, $a2, .LBB37_5
.LBB37_11:                              # %if.end17.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.173)
	addi.d	$a1, $a0, %pc_lo12(.L.str.173)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_13
# %bb.12:                               # %land.lhs.true22.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 6
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s6
	bnez	$a0, .LBB37_21
.LBB37_13:                              # %if.else.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.174)
	addi.d	$a1, $a0, %pc_lo12(.L.str.174)
	ori	$a2, $zero, 6
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_15
# %bb.14:                               # %land.lhs.true74.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 6
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s6
	bnez	$a0, .LBB37_19
.LBB37_15:                              # %lor.lhs.false85.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.175)
	addi.d	$a1, $a0, %pc_lo12(.L.str.175)
	ori	$a2, $zero, 7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_17
# %bb.16:                               # %land.lhs.true91.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 7
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s6
	bnez	$a0, .LBB37_19
.LBB37_17:                              #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 10
.LBB37_18:                              # %for.inc202.i.loopexit625
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a1, $zero, 37
	b	.LBB37_5
.LBB37_19:                              # %if.then102.i
                                        #   in Loop: Header=BB37_6 Depth=1
	beqz	$s3, .LBB37_26
# %bb.20:                               # %if.then104.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s3, $s3, 1
	ori	$a2, $zero, 10
	ori	$a4, $zero, 32
	ori	$a1, $zero, 37
	move	$a0, $fp
	andi	$a1, $a1, 255
	bnez	$a1, .LBB37_45
	b	.LBB37_18
.LBB37_21:                              # %if.then31.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a6, $zero, 32
	beqz	$s3, .LBB37_116
# %bb.22:                               # %if.then33.i
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$s3, $s3, -1
	ori	$a2, $zero, 10
	bnez	$s3, .LBB37_138
# %bb.23:                               # %for.cond37.preheader.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	bge	$a1, $s8, .LBB37_137
# %bb.24:                               # %iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	sub.d	$a0, $s8, $a1
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB37_47
# %bb.25:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a3, $a1
	b	.LBB37_143
.LBB37_26:                              # %if.else106.i
                                        #   in Loop: Header=BB37_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	move	$a2, $s1
	.p2align	4, , 16
.LBB37_27:                              # %for.cond108.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s7, $a0
	ld.b	$a3, $a3, 7
	slli.d	$a3, $a3, 1
	ldx.hu	$a4, $a1, $a3
	move	$a3, $a2
	and	$a4, $a4, $s6
	addi.d	$a0, $a0, 1
	addi.w	$a2, $a2, 1
	bnez	$a4, .LBB37_27
# %bb.28:                               # %for.cond122.preheader.i
                                        #   in Loop: Header=BB37_6 Depth=1
	add.d	$a2, $s8, $a0
	addi.d	$a2, $a2, 6
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s0, $a2
	beqz	$a2, .LBB37_39
# %bb.29:                               # %land.rhs128.i.preheader
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	bstrpick.d	$a3, $a3, 31, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	ori	$a4, $zero, 32
	.p2align	4, , 16
.LBB37_30:                              # %land.rhs128.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	and	$a2, $a2, $s6
	bnez	$a2, .LBB37_32
# %bb.31:                               # %for.inc141.i
                                        #   in Loop: Header=BB37_30 Depth=2
	ld.bu	$a2, $a3, 0
	addi.d	$s3, $s3, 1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB37_30
.LBB37_32:                              # %for.end143.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 1
	blt	$s5, $a2, .LBB37_40
.LBB37_33:                              # %for.body147.i.preheader
                                        #   in Loop: Header=BB37_6 Depth=1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s7, $a0
	addi.d	$s4, $a0, 6
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB37_35
	.p2align	4, , 16
.LBB37_34:                              # %for.inc165.i
                                        #   in Loop: Header=BB37_35 Depth=2
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 8
	beqz	$s0, .LBB37_38
.LBB37_35:                              # %for.body147.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s6, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_34
# %bb.36:                               # %land.lhs.true156.i
                                        #   in Loop: Header=BB37_35 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB37_34
# %bb.37:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB37_41
.LBB37_38:                              #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $zero
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ori	$a4, $zero, 32
	ori	$a2, $zero, 1
	b	.LBB37_41
.LBB37_39:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	ori	$a4, $zero, 32
	ori	$a2, $zero, 1
	bge	$s5, $a2, .LBB37_33
.LBB37_40:                              #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $zero
.LBB37_41:                              # %for.end167.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ld.bu	$a1, $s2, 3
	addi.d	$a1, $a1, -110
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	beqz	$a0, .LBB37_43
# %bb.42:                               # %if.then179.i
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$s3, $zero, 1
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB37_44
.LBB37_43:                              #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
.LBB37_44:                              # %if.end181.i
                                        #   in Loop: Header=BB37_6 Depth=1
	lu12i.w	$s6, 2
	ori	$a2, $zero, 10
	ori	$a1, $zero, 37
	move	$a0, $fp
	andi	$a1, $a1, 255
	beqz	$a1, .LBB37_18
	.p2align	4, , 16
.LBB37_45:                              # %for.cond182.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a2, .LBB37_18
# %bb.46:                               # %for.body194.i
                                        #   in Loop: Header=BB37_45 Depth=2
	ld.bu	$a1, $a0, 0
	st.b	$a4, $a0, -1
	addi.d	$a0, $a0, 1
	andi	$a1, $a1, 255
	bnez	$a1, .LBB37_45
	b	.LBB37_18
.LBB37_47:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	bgeu	$a0, $a6, .LBB37_49
# %bb.48:                               #   in Loop: Header=BB37_6 Depth=1
	move	$a2, $zero
	b	.LBB37_118
.LBB37_49:                              # %vector.ph
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$a3, $zero, -32
	and	$a2, $a0, $a3
	and	$a3, $a0, $a3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a1
	b	.LBB37_51
	.p2align	4, , 16
.LBB37_50:                              # %pred.store.continue423
                                        #   in Loop: Header=BB37_51 Depth=2
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, 32
	beqz	$a3, .LBB37_115
.LBB37_51:                              # %vector.body
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, -15
	xvseqi.b	$xr0, $xr0, 10
	xvxori.b	$xr0, $xr0, 255
	vpickve2gr.b	$a5, $vr0, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_83
# %bb.52:                               # %pred.store.if
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -15
	vpickve2gr.b	$a5, $vr0, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_84
.LBB37_53:                              # %pred.store.continue363
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_85
.LBB37_54:                              # %pred.store.if364
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -13
	vpickve2gr.b	$a5, $vr0, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_86
.LBB37_55:                              # %pred.store.continue367
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_87
.LBB37_56:                              # %pred.store.if368
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -11
	vpickve2gr.b	$a5, $vr0, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_88
.LBB37_57:                              # %pred.store.continue371
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_89
.LBB37_58:                              # %pred.store.if372
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -9
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_90
.LBB37_59:                              # %pred.store.continue375
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 8
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_91
.LBB37_60:                              # %pred.store.if376
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -7
	vpickve2gr.b	$a5, $vr0, 9
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_92
.LBB37_61:                              # %pred.store.continue379
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 10
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_93
.LBB37_62:                              # %pred.store.if380
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -5
	vpickve2gr.b	$a5, $vr0, 11
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_94
.LBB37_63:                              # %pred.store.continue383
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_95
.LBB37_64:                              # %pred.store.if384
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -3
	vpickve2gr.b	$a5, $vr0, 13
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_96
.LBB37_65:                              # %pred.store.continue387
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 14
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_97
.LBB37_66:                              # %pred.store.if388
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -1
	vpickve2gr.b	$a5, $vr0, 15
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_98
.LBB37_67:                              # %pred.store.continue391
                                        #   in Loop: Header=BB37_51 Depth=2
	xvpermi.d	$xr0, $xr0, 14
	vpickve2gr.b	$a5, $vr0, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_99
.LBB37_68:                              # %pred.store.if392
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 1
	vpickve2gr.b	$a5, $vr0, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_100
.LBB37_69:                              # %pred.store.continue395
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_101
.LBB37_70:                              # %pred.store.if396
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 3
	vpickve2gr.b	$a5, $vr0, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_102
.LBB37_71:                              # %pred.store.continue399
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_103
.LBB37_72:                              # %pred.store.if400
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 5
	vpickve2gr.b	$a5, $vr0, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_104
.LBB37_73:                              # %pred.store.continue403
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_105
.LBB37_74:                              # %pred.store.if404
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 7
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_106
.LBB37_75:                              # %pred.store.continue407
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 8
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_107
.LBB37_76:                              # %pred.store.if408
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 9
	vpickve2gr.b	$a5, $vr0, 9
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_108
.LBB37_77:                              # %pred.store.continue411
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 10
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_109
.LBB37_78:                              # %pred.store.if412
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 11
	vpickve2gr.b	$a5, $vr0, 11
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_110
.LBB37_79:                              # %pred.store.continue415
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_111
.LBB37_80:                              # %pred.store.if416
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 13
	vpickve2gr.b	$a5, $vr0, 13
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_112
.LBB37_81:                              # %pred.store.continue419
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 14
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_113
.LBB37_82:                              # %pred.store.if420
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 15
	vpickve2gr.b	$a5, $vr0, 15
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_50
	b	.LBB37_114
	.p2align	4, , 16
.LBB37_83:                              # %pred.store.continue
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_53
.LBB37_84:                              # %pred.store.if362
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -14
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_54
.LBB37_85:                              # %pred.store.continue365
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_55
.LBB37_86:                              # %pred.store.if366
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -12
	vpickve2gr.b	$a5, $vr0, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_56
.LBB37_87:                              # %pred.store.continue369
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_57
.LBB37_88:                              # %pred.store.if370
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -10
	vpickve2gr.b	$a5, $vr0, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_58
.LBB37_89:                              # %pred.store.continue373
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_59
.LBB37_90:                              # %pred.store.if374
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -8
	vpickve2gr.b	$a5, $vr0, 8
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_60
.LBB37_91:                              # %pred.store.continue377
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 9
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_61
.LBB37_92:                              # %pred.store.if378
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -6
	vpickve2gr.b	$a5, $vr0, 10
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_62
.LBB37_93:                              # %pred.store.continue381
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 11
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_63
.LBB37_94:                              # %pred.store.if382
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -4
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_64
.LBB37_95:                              # %pred.store.continue385
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 13
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_65
.LBB37_96:                              # %pred.store.if386
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, -2
	vpickve2gr.b	$a5, $vr0, 14
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_66
.LBB37_97:                              # %pred.store.continue389
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 15
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_67
.LBB37_98:                              # %pred.store.if390
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 0
	xvpermi.d	$xr0, $xr0, 14
	vpickve2gr.b	$a5, $vr0, 0
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_68
.LBB37_99:                              # %pred.store.continue393
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_69
.LBB37_100:                             # %pred.store.if394
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 2
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_70
.LBB37_101:                             # %pred.store.continue397
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_71
.LBB37_102:                             # %pred.store.if398
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 4
	vpickve2gr.b	$a5, $vr0, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_72
.LBB37_103:                             # %pred.store.continue401
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_73
.LBB37_104:                             # %pred.store.if402
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 6
	vpickve2gr.b	$a5, $vr0, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_74
.LBB37_105:                             # %pred.store.continue405
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_75
.LBB37_106:                             # %pred.store.if406
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 8
	vpickve2gr.b	$a5, $vr0, 8
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_76
.LBB37_107:                             # %pred.store.continue409
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 9
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_77
.LBB37_108:                             # %pred.store.if410
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 10
	vpickve2gr.b	$a5, $vr0, 10
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_78
.LBB37_109:                             # %pred.store.continue413
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 11
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_79
.LBB37_110:                             # %pred.store.if414
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 12
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_80
.LBB37_111:                             # %pred.store.continue417
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 13
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_81
.LBB37_112:                             # %pred.store.if418
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 14
	vpickve2gr.b	$a5, $vr0, 14
	andi	$a5, $a5, 1
	bnez	$a5, .LBB37_82
.LBB37_113:                             # %pred.store.continue421
                                        #   in Loop: Header=BB37_51 Depth=2
	vpickve2gr.b	$a5, $vr0, 15
	andi	$a5, $a5, 1
	beqz	$a5, .LBB37_50
.LBB37_114:                             # %pred.store.if422
                                        #   in Loop: Header=BB37_51 Depth=2
	st.b	$a6, $a4, 16
	b	.LBB37_50
.LBB37_115:                             # %middle.block
                                        #   in Loop: Header=BB37_6 Depth=1
	bne	$a0, $a2, .LBB37_117
.LBB37_116:                             #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
	ori	$a2, $zero, 10
	move	$a0, $s7
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB37_139
	b	.LBB37_18
.LBB37_117:                             # %vec.epilog.iter.check
                                        #   in Loop: Header=BB37_6 Depth=1
	andi	$a3, $a0, 24
	beqz	$a3, .LBB37_141
.LBB37_118:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB37_6 Depth=1
	addi.w	$a3, $zero, -8
	and	$a4, $a0, $a3
	add.d	$a3, $a4, $a1
	sub.d	$a5, $a2, $a4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	b	.LBB37_120
	.p2align	4, , 16
.LBB37_119:                             # %pred.store.continue443
                                        #   in Loop: Header=BB37_120 Depth=2
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, 8
	beqz	$a5, .LBB37_136
.LBB37_120:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, -3
	vinsgr2vr.d	$vr0, $a2, 0
	vseqi.b	$vr0, $vr0, 10
	vxori.b	$vr0, $vr0, 255
	vpickve2gr.h	$a2, $vr0, 0
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_128
# %bb.121:                              # %pred.store.if428
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, -3
	vilvl.b	$vr0, $vr0, $vr0
	vpickve2gr.h	$a2, $vr0, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_129
.LBB37_122:                             # %pred.store.continue431
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_130
.LBB37_123:                             # %pred.store.if432
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, -1
	vpickve2gr.h	$a2, $vr0, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_131
.LBB37_124:                             # %pred.store.continue435
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_132
.LBB37_125:                             # %pred.store.if436
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, 1
	vpickve2gr.h	$a2, $vr0, 5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_133
.LBB37_126:                             # %pred.store.continue439
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 6
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_134
.LBB37_127:                             # %pred.store.if440
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, 3
	vpickve2gr.h	$a2, $vr0, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_119
	b	.LBB37_135
	.p2align	4, , 16
.LBB37_128:                             # %pred.store.continue429
                                        #   in Loop: Header=BB37_120 Depth=2
	vilvl.b	$vr0, $vr0, $vr0
	vpickve2gr.h	$a2, $vr0, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_122
.LBB37_129:                             # %pred.store.if430
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, -2
	vpickve2gr.h	$a2, $vr0, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_123
.LBB37_130:                             # %pred.store.continue433
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_124
.LBB37_131:                             # %pred.store.if434
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, 0
	vpickve2gr.h	$a2, $vr0, 4
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_125
.LBB37_132:                             # %pred.store.continue437
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_126
.LBB37_133:                             # %pred.store.if438
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, 2
	vpickve2gr.h	$a2, $vr0, 6
	andi	$a2, $a2, 1
	bnez	$a2, .LBB37_127
.LBB37_134:                             # %pred.store.continue441
                                        #   in Loop: Header=BB37_120 Depth=2
	vpickve2gr.h	$a2, $vr0, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB37_119
.LBB37_135:                             # %pred.store.if442
                                        #   in Loop: Header=BB37_120 Depth=2
	st.b	$a6, $a1, 4
	b	.LBB37_119
.LBB37_136:                             # %vec.epilog.middle.block
                                        #   in Loop: Header=BB37_6 Depth=1
	ori	$a2, $zero, 10
	bne	$a0, $a4, .LBB37_143
.LBB37_137:                             #   in Loop: Header=BB37_6 Depth=1
	move	$s3, $zero
.LBB37_138:                             # %if.end52.i
                                        #   in Loop: Header=BB37_6 Depth=1
	move	$a0, $s7
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB37_18
	.p2align	4, , 16
.LBB37_139:                             # %for.cond53.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a2, .LBB37_18
# %bb.140:                              # %for.body63.i
                                        #   in Loop: Header=BB37_139 Depth=2
	st.b	$a6, $a0, 0
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB37_139
	b	.LBB37_18
.LBB37_141:                             #   in Loop: Header=BB37_6 Depth=1
	add.d	$a3, $a2, $a1
	ori	$a2, $zero, 10
	b	.LBB37_143
	.p2align	4, , 16
.LBB37_142:                             # %for.inc.i
                                        #   in Loop: Header=BB37_143 Depth=2
	addi.d	$a3, $a3, 1
	beq	$s8, $a3, .LBB37_137
.LBB37_143:                             # %for.body40.i
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s0, $a3
	beq	$a0, $a2, .LBB37_142
# %bb.144:                              # %if.then46.i
                                        #   in Loop: Header=BB37_143 Depth=2
	stx.b	$a6, $s0, $a3
	b	.LBB37_142
.LBB37_145:                             # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_148
.LBB37_146:                             # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s1
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_148
.LBB37_147:                             # %if.then23
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a2, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s1
	move	$a1, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB37_148:                             # %cleanup
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
.LBB37_149:                             # %cleanup
	lu12i.w	$a0, 3
	ori	$a0, $a0, 2016
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB37_150:                             # %for.end204.i
	bnez	$s3, .LBB37_423
# %bb.151:                              # %for.condthread-pre-split.preheader
	lu12i.w	$a1, 3
	ori	$a0, $a1, 3800
	addi.d	$a2, $sp, 120
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $a1, 3820
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a1, $a0, 3976
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $a0, 4008
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.bu	$fp, $s0, 0
	ori	$s8, $zero, 10
	ori	$s7, $zero, 47
	ori	$s5, $zero, 42
	ori	$s3, $zero, 95
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$s4, $zero, 92
	ori	$s1, $zero, 1
	b	.LBB37_153
.LBB37_152:                             # %if.then41
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$fp, $s0, 0
	.p2align	4, , 16
.LBB37_153:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_174 Depth 2
                                        #     Child Loop BB37_198 Depth 2
                                        #       Child Loop BB37_215 Depth 3
                                        #       Child Loop BB37_219 Depth 3
                                        #       Child Loop BB37_205 Depth 3
                                        #     Child Loop BB37_188 Depth 2
                                        #     Child Loop BB37_229 Depth 2
                                        #     Child Loop BB37_370 Depth 2
                                        #     Child Loop BB37_373 Depth 2
                                        #     Child Loop BB37_167 Depth 2
                                        #     Child Loop BB37_160 Depth 2
	andi	$s2, $fp, 255
	beq	$s2, $s8, .LBB37_155
# %bb.154:                              # %for.cond
                                        #   in Loop: Header=BB37_153 Depth=1
	bnez	$s2, .LBB37_156
	b	.LBB37_422
	.p2align	4, , 16
.LBB37_155:                             # %if.then34
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.w	$s1, $s1, 1
.LBB37_156:                             # %if.end36
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ext.w.b	$a2, $fp
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	and	$a3, $a2, $s6
	bnez	$a3, .LBB37_152
# %bb.157:                              # %if.end42
                                        #   in Loop: Header=BB37_153 Depth=1
	bne	$s2, $s7, .LBB37_171
# %bb.158:                              # %land.lhs.true
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a3, $s0, 1
	bne	$a3, $s7, .LBB37_162
# %bb.159:                              # %if.then49
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$s0, $s0, 2
	ld.bu	$fp, $s0, 0
	beqz	$fp, .LBB37_153
	.p2align	4, , 16
.LBB37_160:                             # %while.cond
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$fp, $s8, .LBB37_153
# %bb.161:                              # %while.body
                                        #   in Loop: Header=BB37_160 Depth=2
	addi.d	$s0, $s0, 1
	ld.bu	$fp, $s0, 0
	bnez	$fp, .LBB37_160
	b	.LBB37_153
.LBB37_162:                             # %land.lhs.true
                                        #   in Loop: Header=BB37_153 Depth=1
	bne	$a3, $s5, .LBB37_178
# %bb.163:                              # %if.then64
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $s0, 2
	beqz	$a1, .LBB37_192
# %bb.164:                              # %land.rhs70.preheader
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $s0, 3
	b	.LBB37_167
	.p2align	4, , 16
.LBB37_165:                             # %if.then81
                                        #   in Loop: Header=BB37_167 Depth=2
	addi.w	$s1, $s1, 1
.LBB37_166:                             # %if.end83
                                        #   in Loop: Header=BB37_167 Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB37_191
.LBB37_167:                             # %land.rhs70
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $s8, .LBB37_165
# %bb.168:                              # %land.rhs70
                                        #   in Loop: Header=BB37_167 Depth=2
	bne	$a1, $s7, .LBB37_166
# %bb.169:                              # %lor.rhs
                                        #   in Loop: Header=BB37_167 Depth=2
	ld.bu	$a1, $a0, -2
	bne	$a1, $s5, .LBB37_166
# %bb.170:                              # %lor.rhs.while.end85.loopexit_crit_edge
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 1
	b	.LBB37_193
.LBB37_171:                             # %if.end90
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$s0, $sp, 136
	st.w	$s1, $sp, 128
	ori	$a3, $zero, 123
	beq	$s2, $a3, .LBB37_194
# %bb.172:                              # %if.end90
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a3, $zero, 34
	bne	$s2, $a3, .LBB37_179
# %bb.173:                              #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 34
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB37_174:                             # %while.cond95
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	addi.d	$s0, $s0, 1
	beqz	$a1, .LBB37_225
# %bb.175:                              # %while.cond95
                                        #   in Loop: Header=BB37_174 Depth=2
	beq	$a1, $a2, .LBB37_226
# %bb.176:                              # %while.cond95
                                        #   in Loop: Header=BB37_174 Depth=2
	bne	$a1, $s8, .LBB37_174
# %bb.177:                              # %if.then106
                                        #   in Loop: Header=BB37_174 Depth=2
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	addi.d	$s0, $s0, 1
	b	.LBB37_174
.LBB37_178:                             # %if.end90.thread
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$s0, $sp, 136
	st.w	$s1, $sp, 128
.LBB37_179:                             # %if.else256
                                        #   in Loop: Header=BB37_153 Depth=1
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_186
# %bb.180:                              # %if.else283
                                        #   in Loop: Header=BB37_153 Depth=1
	beq	$s2, $s7, .LBB37_223
# %bb.181:                              # %if.else283
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 124
	beq	$s2, $a2, .LBB37_223
# %bb.182:                              # %if.else283
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a1, $zero, 58
	bne	$s2, $a1, .LBB37_224
# %bb.183:                              # %land.lhs.true286
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $s0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_224
# %bb.184:                              # %land.lhs.true291
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $s0, 2
	ori	$a2, $zero, 61
	bne	$a1, $a2, .LBB37_224
# %bb.185:                              # %if.then296
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	addi.d	$s2, $s0, 3
	b	.LBB37_232
.LBB37_186:                             # %while.cond264.preheader
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a2, $s0, 0
	bnez	$a2, .LBB37_188
	b	.LBB37_190
	.p2align	4, , 16
.LBB37_187:                             # %while.body280
                                        #   in Loop: Header=BB37_188 Depth=2
	ld.bu	$a2, $s0, 1
	addi.d	$s2, $s0, 1
	move	$s0, $s2
	beqz	$a2, .LBB37_231
.LBB37_188:                             # %land.rhs268
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a3, $a2, 255
	beq	$a3, $s3, .LBB37_187
# %bb.189:                              # %land.rhs268
                                        #   in Loop: Header=BB37_188 Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_187
.LBB37_190:                             #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	move	$s2, $s0
	b	.LBB37_233
.LBB37_191:                             # %while.end85.loopexitsplit
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a1, $zero
	addi.d	$a0, $a0, -1
	b	.LBB37_193
.LBB37_192:                             #   in Loop: Header=BB37_153 Depth=1
	move	$a1, $zero
	addi.d	$a0, $s0, 2
.LBB37_193:                             # %while.end85
                                        #   in Loop: Header=BB37_153 Depth=1
	add.d	$s0, $a0, $a1
	ld.bu	$fp, $s0, 0
	b	.LBB37_153
.LBB37_194:                             # %for.cond124.preheader
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a2, $s0, 1
	addi.d	$s2, $s0, 1
	beqz	$a2, .LBB37_238
# %bb.195:                              # %land.rhs128.preheader
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a1, $zero, 1
	move	$fp, $s1
	ori	$t0, $zero, 37
	ori	$t1, $zero, 125
	b	.LBB37_198
.LBB37_196:                             #   in Loop: Header=BB37_198 Depth=2
	move	$s2, $a3
.LBB37_197:                             # %for.inc243
                                        #   in Loop: Header=BB37_198 Depth=2
	move	$s0, $s2
	ld.bu	$a2, $s2, 1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB37_239
.LBB37_198:                             # %land.rhs128
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB37_215 Depth 3
                                        #       Child Loop BB37_219 Depth 3
                                        #       Child Loop BB37_205 Depth 3
	andi	$a2, $a2, 255
	ori	$a3, $zero, 1
	blt	$a3, $a1, .LBB37_200
# %bb.199:                              # %land.rhs128
                                        #   in Loop: Header=BB37_198 Depth=2
	beq	$a2, $t1, .LBB37_240
.LBB37_200:                             # %for.body136
                                        #   in Loop: Header=BB37_198 Depth=2
	addi.d	$a3, $a2, -10
	bltu	$t0, $a3, .LBB37_207
# %bb.201:                              # %for.body136
                                        #   in Loop: Header=BB37_198 Depth=2
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI37_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI37_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB37_202:                             # %if.then210
                                        #   in Loop: Header=BB37_198 Depth=2
	ld.bu	$a4, $s2, 1
	addi.d	$a3, $s2, 1
	beqz	$a4, .LBB37_196
# %bb.203:                              # %land.rhs217.preheader
                                        #   in Loop: Header=BB37_198 Depth=2
	move	$a5, $zero
	b	.LBB37_205
	.p2align	4, , 16
.LBB37_204:                             # %for.body225
                                        #   in Loop: Header=BB37_205 Depth=3
	addi.d	$a5, $a5, -92
	sltui	$a5, $a5, 1
	ext.w.b	$a7, $a4
	addi.d	$a6, $a6, -10
	ld.bu	$a4, $a3, 1
	sltui	$a6, $a6, 1
	add.w	$fp, $fp, $a6
	addi.d	$s2, $a3, 1
	masknez	$a5, $a7, $a5
	move	$a3, $s2
	beqz	$a4, .LBB37_197
.LBB37_205:                             # %land.rhs217
                                        #   Parent Loop BB37_153 Depth=1
                                        #     Parent Loop BB37_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a6, $a4, 255
	beq	$a5, $s4, .LBB37_204
# %bb.206:                              # %land.rhs217
                                        #   in Loop: Header=BB37_205 Depth=3
	bne	$a6, $a2, .LBB37_204
	b	.LBB37_196
	.p2align	4, , 16
.LBB37_207:                             # %for.body136
                                        #   in Loop: Header=BB37_198 Depth=2
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_217
# %bb.208:                              # %for.body136
                                        #   in Loop: Header=BB37_198 Depth=2
	bne	$a2, $t1, .LBB37_197
# %bb.209:                              # %if.then149
                                        #   in Loop: Header=BB37_198 Depth=2
	addi.w	$a1, $a1, -1
	b	.LBB37_197
.LBB37_210:                             # %land.lhs.true153
                                        #   in Loop: Header=BB37_198 Depth=2
	ld.bu	$a2, $s0, 2
	beq	$a2, $s7, .LBB37_218
# %bb.211:                              # %land.lhs.true153
                                        #   in Loop: Header=BB37_198 Depth=2
	bne	$a2, $s5, .LBB37_197
# %bb.212:                              # %if.then158
                                        #   in Loop: Header=BB37_198 Depth=2
	ld.bu	$a2, $s0, 3
	addi.d	$s2, $s0, 3
	beqz	$a2, .LBB37_197
# %bb.213:                              # %land.rhs164.preheader
                                        #   in Loop: Header=BB37_198 Depth=2
	move	$a3, $zero
	b	.LBB37_215
	.p2align	4, , 16
.LBB37_214:                             # %while.body172
                                        #   in Loop: Header=BB37_215 Depth=3
	ext.w.b	$a3, $a2
	ld.bu	$a2, $s2, 1
	addi.d	$a4, $a4, -10
	sltui	$a5, $a4, 1
	addi.d	$a4, $s2, 1
	add.w	$fp, $fp, $a5
	move	$s2, $a4
	beqz	$a2, .LBB37_222
.LBB37_215:                             # %land.rhs164
                                        #   Parent Loop BB37_153 Depth=1
                                        #     Parent Loop BB37_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a4, $a2, 255
	bne	$a3, $s5, .LBB37_214
# %bb.216:                              # %land.rhs164
                                        #   in Loop: Header=BB37_215 Depth=3
	bne	$a4, $s7, .LBB37_214
	b	.LBB37_197
.LBB37_217:                             # %if.then144
                                        #   in Loop: Header=BB37_198 Depth=2
	addi.w	$a1, $a1, 1
	b	.LBB37_197
.LBB37_218:                             # %if.then188
                                        #   in Loop: Header=BB37_198 Depth=2
	addi.d	$s2, $s0, 3
	ld.bu	$a2, $s2, 0
	beqz	$a2, .LBB37_197
	.p2align	4, , 16
.LBB37_219:                             # %while.cond190
                                        #   Parent Loop BB37_153 Depth=1
                                        #     Parent Loop BB37_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a2, $s8, .LBB37_221
# %bb.220:                              # %while.body198
                                        #   in Loop: Header=BB37_219 Depth=3
	addi.d	$s2, $s2, 1
	ld.bu	$a2, $s2, 0
	bnez	$a2, .LBB37_219
	b	.LBB37_197
.LBB37_221:                             # %if.then139
                                        #   in Loop: Header=BB37_198 Depth=2
	addi.w	$fp, $fp, 1
	b	.LBB37_197
.LBB37_222:                             #   in Loop: Header=BB37_198 Depth=2
	move	$s2, $a4
	b	.LBB37_197
.LBB37_223:                             # %land.lhs.true304
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a2, $s0, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 1024
	bnez	$a2, .LBB37_227
.LBB37_224:                             # %if.else334
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	addi.d	$s2, $s0, 1
	b	.LBB37_232
.LBB37_225:                             # %if.then113
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	ld.d	$a0, $sp, 120
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a2, $a1, %pc_lo12(.L.str.46)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s0, -1
	st.w	$a0, $sp, 132
	b	.LBB37_232
.LBB37_226:                             # %if.else
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	addi.d	$s2, $s0, -1
	b	.LBB37_233
.LBB37_227:                             # %if.then313
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a2, $s0, 2
	addi.d	$s2, $s0, 2
	bnez	$a2, .LBB37_229
	b	.LBB37_231
	.p2align	4, , 16
.LBB37_228:                             # %while.body331
                                        #   in Loop: Header=BB37_229 Depth=2
	ld.bu	$a2, $s2, 1
	addi.d	$s0, $s2, 1
	move	$s2, $s0
	beqz	$a2, .LBB37_190
.LBB37_229:                             # %land.rhs319
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a3, $a2, 255
	beq	$a3, $s3, .LBB37_228
# %bb.230:                              # %land.rhs319
                                        #   in Loop: Header=BB37_229 Depth=2
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	andi	$a2, $a2, 8
	bnez	$a2, .LBB37_228
.LBB37_231:                             #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
.LBB37_232:                             # %if.end340
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s0, $s2
.LBB37_233:                             # %if.end340
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$s3, $s2, 0
	ld.d	$a0, $sp, 136
	st.b	$zero, $s2, 0
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 152
	ori	$a2, $zero, 19
	bltu	$a2, $a1, .LBB37_391
# %bb.234:                              # %if.end340
                                        #   in Loop: Header=BB37_153 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI37_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI37_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB37_235:                             # %sw.bb892.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB37_237
# %bb.236:                              # %if.then897.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 152
	ld.bu	$a1, $a0, 0
.LBB37_237:                             # %if.end899.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 37
	beq	$a1, $a0, .LBB37_263
	b	.LBB37_391
.LBB37_238:                             #   in Loop: Header=BB37_153 Depth=1
	move	$fp, $s1
.LBB37_239:                             # %if.then248
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	ld.d	$a0, $sp, 120
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a2, $a1, %pc_lo12(.L.str.47)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	move	$s0, $s2
	move	$s1, $fp
	b	.LBB37_233
.LBB37_240:                             # %if.else253
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$s6, $a0
	addi.d	$s0, $s0, 2
	move	$s1, $fp
	b	.LBB37_233
.LBB37_241:                             # %sw.bb429.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB37_290
.LBB37_242:                             # %if.then120.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 6
	b	.LBB37_390
.LBB37_243:                             # %sw.bb704.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB37_295
# %bb.244:                              # %if.else711.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_349
# %bb.245:                              # %if.else735.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.219)
	addi.d	$a2, $a2, %pc_lo12(.L.str.219)
	b	.LBB37_341
.LBB37_246:                             # %sw.bb54.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_302
# %bb.247:                              # %if.then63.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.180)
	addi.d	$a2, $a2, %pc_lo12(.L.str.180)
	b	.LBB37_305
.LBB37_248:                             # %sw.bb174.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_251
# %bb.249:                              # %land.lhs.true179.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_251
# %bb.250:                              # %land.lhs.true184.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 61
	beq	$a0, $a1, .LBB37_242
.LBB37_251:                             # %if.else191.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $a2, 0
	ld.d	$a4, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.187)
	addi.d	$a2, $a2, %pc_lo12(.L.str.187)
	b	.LBB37_287
.LBB37_252:                             # %sw.bb444.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_306
# %bb.253:                              # %if.else654.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.216)
	addi.d	$a2, $a2, %pc_lo12(.L.str.216)
	move	$a3, $a0
	move	$a0, $a4
.LBB37_254:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_301
.LBB37_255:                             # %sw.bb742.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	andi	$a2, $a1, 255
	ori	$a3, $zero, 34
	beq	$a2, $a3, .LBB37_298
# %bb.256:                              # %sw.bb742.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_298
# %bb.257:                              # %lor.lhs.false752.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a3, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a3, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB37_298
# %bb.258:                              # %if.else801.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3912
	add.d	$a2, $sp, $a2
	ldptr.d	$a3, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.221)
	addi.d	$a2, $a2, %pc_lo12(.L.str.221)
	move	$a4, $a0
	b	.LBB37_300
.LBB37_259:                             # %sw.bb138.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_329
# %bb.260:                              # %if.else150.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.185)
	addi.d	$a2, $a2, %pc_lo12(.L.str.185)
	b	.LBB37_286
.LBB37_261:                             # %sw.bb.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a1, $sp, 144
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3904
	add.d	$a2, $sp, $a2
	stptr.d	$zero, $a2, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a2, 0
	st.w	$zero, $a2, 16
	st.w	$zero, $a1, 20
.LBB37_262:                             # %sw.bb1.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a2, $a0, 0
	andi	$a1, $a2, 255
	ori	$a3, $zero, 37
	bne	$a1, $a3, .LBB37_264
.LBB37_263:                             # %if.then904.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 2
	b	.LBB37_390
.LBB37_264:                             # %if.else.i134
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a3, $s6, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a3, $a2
	andi	$a2, $a2, 512
	bnez	$a2, .LBB37_330
# %bb.265:                              # %if.else12.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 91
	beq	$a1, $a2, .LBB37_364
# %bb.266:                              # %if.else12.i
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 123
	bne	$a1, $a0, .LBB37_365
# %bb.267:                              # %if.then17.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3904
	add.d	$a0, $sp, $a0
	ldptr.d	$a0, $a0, 0
	beqz	$a0, .LBB37_383
# %bb.268:                              # %if.else22.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB37_394
# %bb.269:                              # %if.then26.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.178)
	addi.d	$a2, $a2, %pc_lo12(.L.str.178)
	b	.LBB37_399
.LBB37_270:                             # %sw.bb682.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB37_297
# %bb.271:                              # %if.else697.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 72
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3928
	add.d	$a0, $sp, $a0
	stptr.d	$zero, $a0, 0
	ori	$a0, $zero, 3
	b	.LBB37_390
.LBB37_272:                             # %sw.bb106.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 40
	beq	$a1, $a2, .LBB37_343
# %bb.273:                              # %sw.bb106.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_276
# %bb.274:                              # %land.lhs.true.i132
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 58
	bne	$a1, $a2, .LBB37_276
# %bb.275:                              # %land.lhs.true115.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a0, $a0, 2
	ori	$a1, $zero, 61
	beq	$a0, $a1, .LBB37_242
.LBB37_276:                             # %if.else129.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $sp, 168
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.184)
	addi.d	$a2, $a2, %pc_lo12(.L.str.184)
	b	.LBB37_388
.LBB37_277:                             # %sw.bb94.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 93
	beq	$a0, $a1, .LBB37_295
# %bb.278:                              # %if.then99.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.183)
	addi.d	$a2, $a2, %pc_lo12(.L.str.183)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	b	.LBB37_295
.LBB37_279:                             # %sw.bb201.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a2, $a0, 0
	andi	$a1, $a2, 255
	ori	$a3, $zero, 46
	bne	$a1, $a3, .LBB37_331
# %bb.280:                              # %if.then206.i128
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$fp, $sp, 184
	slli.d	$a0, $fp, 4
	addi.d	$a0, $a0, 96
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_363
# %bb.281:                              # %if.else222.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 128
	st.w	$a1, $a0, 20
	addi.d	$a2, $a0, 96
	st.d	$a2, $a0, 32
	alsl.d	$a1, $fp, $a2, 3
	st.d	$a1, $a0, 40
	ori	$a1, $zero, 1
	lu12i.w	$a7, -2
	blt	$fp, $a1, .LBB37_374
# %bb.282:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB37_153 Depth=1
	slli.d	$a1, $fp, 3
	ori	$a3, $zero, 8
	bgeu	$fp, $a3, .LBB37_369
# %bb.283:                              #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $zero
	b	.LBB37_372
.LBB37_284:                             # %sw.bb400.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_338
# %bb.285:                              # %if.else416.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 184
	addi.d	$a2, $sp, 192
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, -8
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.192)
	addi.d	$a2, $a2, %pc_lo12(.L.str.192)
.LBB37_286:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $a0
	move	$a0, $a5
.LBB37_287:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_389
.LBB37_288:                             # %sw.bb159.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 41
	bne	$a0, $a1, .LBB37_290
# %bb.289:                              # %if.then164.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 9
	b	.LBB37_390
.LBB37_290:                             # %if.else166.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	ld.d	$a3, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.186)
	addi.d	$a2, $a2, %pc_lo12(.L.str.186)
	b	.LBB37_388
.LBB37_291:                             # %sw.bb809.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	beq	$a1, $a2, .LBB37_295
# %bb.292:                              # %if.else816.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_353
# %bb.293:                              # %if.then825.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.222)
	addi.d	$a2, $a2, %pc_lo12(.L.str.222)
	b	.LBB37_341
.LBB37_294:                             # %sw.bb854.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ori	$a2, $zero, 46
	bne	$a1, $a2, .LBB37_339
.LBB37_295:                             # %if.end104.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 1
	b	.LBB37_390
.LBB37_296:                             # %sw.bb661.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.b	$a1, $a0, 0
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB37_342
.LBB37_297:                             # %if.then670.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.217)
	addi.d	$a2, $a2, %pc_lo12(.L.str.217)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_301
.LBB37_298:                             # %if.then761.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	ld.d	$a3, $a1, 0
	beqz	$a3, .LBB37_344
# %bb.299:                              # %if.then765.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a5, $sp, 120
	ld.w	$a1, $sp, 128
	lu12i.w	$a3, 3
	ori	$a3, $a3, 3912
	add.d	$a3, $sp, $a3
	ldptr.d	$a4, $a3, 0
	addi.d	$a2, $a2, -34
	sltui	$a2, $a2, 1
	add.d	$a3, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.L.str.220)
	addi.d	$a2, $a0, %pc_lo12(.L.str.220)
.LBB37_300:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a0, $a5
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_301:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 15
	b	.LBB37_390
.LBB37_302:                             # %if.else68.i
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $a0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3904
	add.d	$a0, $sp, $a0
	ldptr.d	$fp, $a0, 0
	beqz	$fp, .LBB37_359
# %bb.303:                              # %if.else77.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB37_367
# %bb.304:                              # %if.then81.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.182)
	addi.d	$a2, $a2, %pc_lo12(.L.str.182)
.LBB37_305:                             # %if.end92.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_360
.LBB37_306:                             # %if.then453.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3912
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $a1, 0
	ori	$a1, $zero, 3
	st.w	$a1, $sp, 152
	pcalau12i	$a1, %pc_hi20(.L.str.193)
	addi.d	$a1, $a1, %pc_lo12(.L.str.193)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_361
# %bb.307:                              # %if.else462.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.194)
	addi.d	$a1, $a0, %pc_lo12(.L.str.194)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_368
# %bb.308:                              # %if.else471.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.195)
	addi.d	$a1, $a0, %pc_lo12(.L.str.195)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_382
# %bb.309:                              # %if.else480.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.196)
	addi.d	$a1, $a0, %pc_lo12(.L.str.196)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_393
# %bb.310:                              # %if.else489.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.197)
	addi.d	$a1, $a0, %pc_lo12(.L.str.197)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_401
# %bb.311:                              # %if.else498.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.198)
	addi.d	$a1, $a0, %pc_lo12(.L.str.198)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_402
# %bb.312:                              # %if.else505.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.199)
	addi.d	$a1, $a0, %pc_lo12(.L.str.199)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_403
# %bb.313:                              # %if.else514.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.200)
	addi.d	$a1, $a0, %pc_lo12(.L.str.200)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_404
# %bb.314:                              # %if.else523.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.201)
	addi.d	$a1, $a0, %pc_lo12(.L.str.201)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_405
# %bb.315:                              # %if.else532.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.202)
	addi.d	$a1, $a0, %pc_lo12(.L.str.202)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_406
# %bb.316:                              # %if.else541.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.203)
	addi.d	$a1, $a0, %pc_lo12(.L.str.203)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_409
# %bb.317:                              # %if.else548.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.204)
	addi.d	$a1, $a0, %pc_lo12(.L.str.204)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_410
# %bb.318:                              # %if.else555.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.205)
	addi.d	$a1, $a0, %pc_lo12(.L.str.205)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_411
# %bb.319:                              # %if.else562.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.206)
	addi.d	$a1, $a0, %pc_lo12(.L.str.206)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_412
# %bb.320:                              # %if.else569.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.207)
	addi.d	$a1, $a0, %pc_lo12(.L.str.207)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_413
# %bb.321:                              # %if.else576.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.208)
	addi.d	$a1, $a0, %pc_lo12(.L.str.208)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_414
# %bb.322:                              # %if.else584.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.209)
	addi.d	$a1, $a0, %pc_lo12(.L.str.209)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_415
# %bb.323:                              # %if.else593.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.210)
	addi.d	$a1, $a0, %pc_lo12(.L.str.210)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_416
# %bb.324:                              # %if.else602.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.211)
	addi.d	$a1, $a0, %pc_lo12(.L.str.211)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_418
# %bb.325:                              # %if.else608.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.212)
	addi.d	$a1, $a0, %pc_lo12(.L.str.212)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_419
# %bb.326:                              # %if.else614.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.213)
	addi.d	$a1, $a0, %pc_lo12(.L.str.213)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_420
# %bb.327:                              # %if.else620.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.214)
	addi.d	$a1, $a0, %pc_lo12(.L.str.214)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB37_421
# %bb.328:                              # %if.else626.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.215)
	addi.d	$a2, $a2, %pc_lo12(.L.str.215)
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB37_254
.LBB37_329:                             # %if.then147.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $sp, 176
	ori	$a0, $zero, 8
	b	.LBB37_390
.LBB37_330:                             # %if.then9.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168
	st.w	$zero, $sp, 184
	st.d	$zero, $sp, 176
	ori	$a0, $zero, 5
	b	.LBB37_390
.LBB37_331:                             # %if.else272.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a3, $s6, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a3, $a2
	andi	$a2, $a2, 1024
	bnez	$a2, .LBB37_351
# %bb.332:                              # %if.else304.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 40
	beq	$a1, $a2, .LBB37_384
# %bb.333:                              # %if.else304.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a2, $zero, 124
	beq	$a1, $a2, .LBB37_335
# %bb.334:                              # %if.else304.i
                                        #   in Loop: Header=BB37_153 Depth=1
	bne	$a1, $s7, .LBB37_386
.LBB37_335:                             # %land.lhs.true313.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 184
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB37_386
# %bb.336:                              # %if.then317.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 192
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s6, $a0, -8
	ld.w	$a1, $s6, 12
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB37_395
# %bb.337:                              # %if.then317.if.end337_crit_edge.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $s6, 84
	ld.d	$a0, $s6, 88
	addi.w	$fp, $a1, 1
	b	.LBB37_396
.LBB37_338:                             # %if.then409.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 184
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	st.d	$a0, $a1, -8
	ori	$a0, $zero, 11
	b	.LBB37_390
.LBB37_339:                             # %if.else861.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $s6, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 256
	bnez	$a1, .LBB37_356
# %bb.340:                              # %if.then870.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.224)
	addi.d	$a2, $a2, %pc_lo12(.L.str.224)
.LBB37_341:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_400
.LBB37_342:                             # %if.else676.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 56
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 64
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3928
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 3
	b	.LBB37_390
.LBB37_343:                             # %if.then127.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 7
	b	.LBB37_390
.LBB37_344:                             # %if.else777.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a3, $zero, 123
	beq	$a2, $a3, .LBB37_346
# %bb.345:                              # %if.else777.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a3, $zero, 34
	bne	$a2, $a3, .LBB37_347
.LBB37_346:                             # %cond.true787.i
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $a0, 1
.LBB37_347:                             # %cond.end790.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3928
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	st.d	$a0, $a1, 0
	beqz	$a2, .LBB37_295
# %bb.348:                              # %if.then795.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a0, $sp, 128
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 1
	b	.LBB37_390
.LBB37_349:                             # %if.then720.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bltz	$a1, .LBB37_379
# %bb.350:                              # %if.then725.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.218)
	addi.d	$a2, $a2, %pc_lo12(.L.str.218)
	b	.LBB37_358
.LBB37_351:                             # %if.then281.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$fp, $sp, 184
	ori	$a1, $zero, 1000
	blt	$fp, $a1, .LBB37_366
# %bb.352:                              # %if.then285.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.189)
	addi.d	$a2, $a2, %pc_lo12(.L.str.189)
	b	.LBB37_387
.LBB37_353:                             # %if.else830.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160
	beqz	$a1, .LBB37_380
# %bb.354:                              # %if.else838.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB37_392
# %bb.355:                              # %if.then841.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.223)
	addi.d	$a2, $a2, %pc_lo12(.L.str.223)
	b	.LBB37_358
.LBB37_356:                             # %if.else875.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	ld.d	$a2, $a1, 56
	beqz	$a2, .LBB37_381
# %bb.357:                              # %if.else884.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.225)
	addi.d	$a2, $a2, %pc_lo12(.L.str.225)
.LBB37_358:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_400
.LBB37_359:                             # %if.then72.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.181)
	addi.d	$a2, $a2, %pc_lo12(.L.str.181)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_360:                             # %if.end92.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 13
	b	.LBB37_390
.LBB37_361:                             # %if.then458.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 64
.LBB37_362:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3920
	b	.LBB37_408
.LBB37_363:                             # %if.then216.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a3, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.188)
	addi.d	$a2, $a2, %pc_lo12(.L.str.188)
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.w	$a1, $sp, 132
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 132
	b	.LBB37_378
.LBB37_364:                             # %if.then43.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 12
	b	.LBB37_390
.LBB37_365:                             # %if.else45.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.179)
	addi.d	$a2, $a2, %pc_lo12(.L.str.179)
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	b	.LBB37_400
.LBB37_366:                             # %if.else291.i
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	slli.d	$a1, $fp, 3
	addi.d	$a2, $sp, 192
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	stx.d	$zero, $a0, $a1
	addi.d	$a0, $fp, 1
	st.w	$a0, $sp, 184
	b	.LBB37_391
.LBB37_367:                             # %if.else86.i
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a0, $a3
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ori	$a0, $zero, 13
	b	.LBB37_390
.LBB37_368:                             # %if.then466.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 112
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 120
	b	.LBB37_407
.LBB37_369:                             # %vector.ph447
                                        #   in Loop: Header=BB37_153 Depth=1
	bstrpick.d	$a3, $fp, 30, 3
	slli.d	$a3, $a3, 3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$a5, $a3
.LBB37_370:                             # %vector.body450
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a6, $a7, 160
	xvldx	$xr0, $a4, $a6
	ori	$a6, $a7, 192
	xvldx	$xr1, $a4, $a6
	xvst	$xr0, $a2, 0
	xvld	$xr0, $a4, -32
	xvld	$xr2, $a4, 0
	xvst	$xr1, $a2, 32
	add.d	$a6, $a2, $a1
	xvstx	$xr0, $a2, $a1
	xvst	$xr2, $a6, 32
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB37_370
# %bb.371:                              # %middle.block457
                                        #   in Loop: Header=BB37_153 Depth=1
	beq	$a3, $fp, .LBB37_374
.LBB37_372:                             # %for.body.i.preheader
                                        #   in Loop: Header=BB37_153 Depth=1
	sub.d	$a2, $fp, $a3
	alsl.d	$a4, $a3, $a0, 3
	addi.d	$a4, $a4, 96
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a5, 3
.LBB37_373:                             # %for.body.i
                                        #   Parent Loop BB37_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $a3, -8000
	ld.d	$a6, $a3, 0
	st.d	$a5, $a4, 0
	stx.d	$a6, $a4, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB37_373
.LBB37_374:                             # %for.end.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a1, $sp, 144
	vld	$vr0, $sp, 168
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 56
	ld.w	$a2, $a1, 20
	ld.d	$a3, $sp, 168
	vst	$vr0, $a0, 0
	st.w	$fp, $a0, 24
	addi.d	$a4, $a2, 1
	ld.d	$a5, $a3, 16
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3944
	add.d	$a6, $sp, $a6
	ldptr.d	$a6, $a6, 0
	st.w	$a4, $a1, 20
	st.w	$a2, $a0, 72
	st.d	$a5, $a0, 80
	st.d	$a0, $a3, 16
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3952
	add.d	$a1, $sp, $a1
	beqz	$a6, .LBB37_376
# %bb.375:                              # %if.else264.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ldptr.d	$a1, $a1, 0
	st.d	$a0, $a1, 88
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3952
	b	.LBB37_377
.LBB37_376:                             # %if.then261.i
                                        #   in Loop: Header=BB37_153 Depth=1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3944
.LBB37_377:                             # %if.end270.i
                                        #   in Loop: Header=BB37_153 Depth=1
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
.LBB37_378:                             # %if.end270.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3904
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB37_390
.LBB37_379:                             # %if.else730.i
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3936
	add.d	$a1, $sp, $a1
	ldptr.d	$a1, $a1, 0
	rotri.d	$a1, $a1, 32
	st.d	$a1, $a0, 32
	b	.LBB37_391
.LBB37_380:                             # %if.then836.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $sp, 160
	b	.LBB37_391
.LBB37_381:                             # %if.then881.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$a0, $a1, 56
	b	.LBB37_391
.LBB37_382:                             # %if.then475.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 192
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 200
	b	.LBB37_407
.LBB37_383:                             # %if.then21.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.177)
	addi.d	$a2, $a2, %pc_lo12(.L.str.177)
	b	.LBB37_399
.LBB37_384:                             # %land.lhs.true384.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 184
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB37_386
# %bb.385:                              # %if.then388.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.w	$s8, $sp, 152
	b	.LBB37_391
.LBB37_386:                             # %if.else390.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a4, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.191)
	addi.d	$a2, $a2, %pc_lo12(.L.str.191)
.LBB37_387:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	move	$a3, $a0
	move	$a0, $a4
.LBB37_388:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_389:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	ori	$a0, $zero, 14
.LBB37_390:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	st.w	$a0, $sp, 152
.LBB37_391:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	st.b	$s3, $s2, 0
	ld.bu	$fp, $s0, 0
	lu12i.w	$s6, 2
	ori	$s3, $zero, 95
	b	.LBB37_153
.LBB37_392:                             # %if.else846.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a2, $sp, 144
	st.d	$a1, $a0, 24
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 276
	b	.LBB37_391
.LBB37_393:                             # %if.then484.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 208
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 216
	b	.LBB37_407
.LBB37_394:                             # %if.else31.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a1, $sp, 128
	st.w	$a1, $a0, 48
	addi.d	$a1, $a3, 1
	st.d	$a1, $a0, 56
	b	.LBB37_391
.LBB37_395:                             # %if.then324.i
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$fp, $zero, 2
	st.w	$fp, $a0, 12
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 84
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, 88
	st.d	$s6, $a0, 0
	st.d	$a1, $a2, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $a1, 0
	move	$s6, $a2
.LBB37_396:                             # %if.end337.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.w	$fp, $s6, 84
	slli.d	$a1, $fp, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 88
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $fp, 1
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 88
	ld.w	$a2, $s6, 84
	alsl.d	$a2, $a2, $a1, 3
	st.d	$a0, $a2, -8
	ld.b	$a2, $fp, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 512
	bnez	$a2, .LBB37_398
# %bb.397:                              # %lor.lhs.false361.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 0
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 512
	beqz	$a0, .LBB37_391
.LBB37_398:                             # %if.then373.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 120
	ld.w	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.190)
	addi.d	$a2, $a2, %pc_lo12(.L.str.190)
.LBB37_399:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
.LBB37_400:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.w	$a0, $sp, 132
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 132
	b	.LBB37_391
.LBB37_401:                             # %if.then493.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 224
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 232
	b	.LBB37_407
.LBB37_402:                             # %if.then502.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 256
	b	.LBB37_362
.LBB37_403:                             # %if.then509.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 128
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 136
	b	.LBB37_407
.LBB37_404:                             # %if.then518.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 176
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 184
	b	.LBB37_407
.LBB37_405:                             # %if.then527.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 160
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 168
	b	.LBB37_407
.LBB37_406:                             # %if.then536.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 144
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3920
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	addi.d	$a0, $a0, 152
.LBB37_407:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3928
.LBB37_408:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	b	.LBB37_391
.LBB37_409:                             # %if.then545.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 72
	b	.LBB37_362
.LBB37_410:                             # %if.then552.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 80
	b	.LBB37_362
.LBB37_411:                             # %if.then559.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 88
	b	.LBB37_362
.LBB37_412:                             # %if.then566.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 104
	b	.LBB37_362
.LBB37_413:                             # %if.then573.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a0, $a0, 96
	b	.LBB37_362
.LBB37_414:                             # %if.then580.i
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3936
	add.d	$a0, $sp, $a0
	stptr.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	b	.LBB37_390
.LBB37_415:                             # %if.then588.i
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	b	.LBB37_417
.LBB37_416:                             # %if.then597.i
                                        #   in Loop: Header=BB37_153 Depth=1
	addi.d	$a0, $sp, 120
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, 1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3940
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 2
.LBB37_417:                             # %parseonetoken.exit
                                        #   in Loop: Header=BB37_153 Depth=1
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3936
	add.d	$a1, $sp, $a1
	stptr.w	$a0, $a1, 0
	ori	$a0, $zero, 4
	b	.LBB37_390
.LBB37_418:                             # %if.then606.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 16
	b	.LBB37_390
.LBB37_419:                             # %if.then612.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 17
	b	.LBB37_390
.LBB37_420:                             # %if.then618.i
                                        #   in Loop: Header=BB37_153 Depth=1
	st.d	$zero, $sp, 160
	ori	$a0, $zero, 18
	b	.LBB37_390
.LBB37_421:                             # %if.then624.i
                                        #   in Loop: Header=BB37_153 Depth=1
	ori	$a0, $zero, 19
	b	.LBB37_390
.LBB37_422:                             # %for.end343
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3944
	add.d	$a0, $sp, $a0
	ldptr.d	$a0, $a0, 0
	ld.w	$a1, $sp, 132
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a2, 8
	st.w	$a1, $a2, 40
	b	.LBB37_149
.LBB37_423:                             # %if.then206.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a1, $a1, %pc_lo12(.L.str.176)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	Parse, .Lfunc_end37-Parse
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI37_0:
	.word	.LBB37_221-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_202-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_202-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_197-.LJTI37_0
	.word	.LBB37_210-.LJTI37_0
.LJTI37_1:
	.word	.LBB37_261-.LJTI37_1
	.word	.LBB37_262-.LJTI37_1
	.word	.LBB37_252-.LJTI37_1
	.word	.LBB37_255-.LJTI37_1
	.word	.LBB37_243-.LJTI37_1
	.word	.LBB37_272-.LJTI37_1
	.word	.LBB37_279-.LJTI37_1
	.word	.LBB37_259-.LJTI37_1
	.word	.LBB37_288-.LJTI37_1
	.word	.LBB37_248-.LJTI37_1
	.word	.LBB37_284-.LJTI37_1
	.word	.LBB37_241-.LJTI37_1
	.word	.LBB37_246-.LJTI37_1
	.word	.LBB37_277-.LJTI37_1
	.word	.LBB37_235-.LJTI37_1
	.word	.LBB37_235-.LJTI37_1
	.word	.LBB37_296-.LJTI37_1
	.word	.LBB37_270-.LJTI37_1
	.word	.LBB37_291-.LJTI37_1
	.word	.LBB37_294-.LJTI37_1
                                        # -- End function
	.text
	.globl	Plink_new                       # -- Begin function Plink_new
	.p2align	5
	.type	Plink_new,@function
Plink_new:                              # @Plink_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a0, $fp, %pc_lo12(plink_freelist)
	bnez	$a0, .LBB38_5
# %bb.1:                                # %if.then
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB38_6
# %bb.2:                                # %vector.body.preheader
	move	$a1, $zero
	ori	$a2, $zero, 1568
	.p2align	4, , 16
.LBB38_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a3, 32
	st.d	$a4, $a3, 8
	addi.d	$a1, $a1, 32
	st.d	$a5, $a3, 24
	bne	$a1, $a2, .LBB38_3
# %bb.4:                                # %for.body
	addi.d	$a1, $a0, 1584
	st.d	$a1, $a0, 1576
	st.d	$zero, $a0, 1592
.LBB38_5:                               # %if.end13
	ld.d	$a1, $a0, 8
	st.d	$a1, $fp, %pc_lo12(plink_freelist)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB38_6:                               # %if.then3
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	Plink_new, .Lfunc_end38-Plink_new
                                        # -- End function
	.globl	Plink_add                       # -- Begin function Plink_add
	.p2align	5
	.type	Plink_add,@function
Plink_add:                              # @Plink_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(plink_freelist)
	ld.d	$a2, $fp, %pc_lo12(plink_freelist)
	bnez	$a2, .LBB39_5
# %bb.1:                                # %if.then.i
	move	$s0, $a0
	move	$s1, $a1
	ori	$a0, $zero, 100
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(plink_freelist)
	beqz	$a0, .LBB39_6
# %bb.2:                                # %vector.body.preheader
	move	$a2, $a0
	move	$a0, $zero
	ori	$a1, $zero, 1568
	.p2align	4, , 16
.LBB39_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a2, $a0
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a3, 32
	st.d	$a4, $a3, 8
	addi.d	$a0, $a0, 32
	st.d	$a5, $a3, 24
	bne	$a0, $a1, .LBB39_3
# %bb.4:                                # %for.body.i
	addi.d	$a0, $a2, 1584
	st.d	$a0, $a2, 1576
	st.d	$zero, $a2, 1592
	move	$a1, $s1
	move	$a0, $s0
.LBB39_5:                               # %Plink_new.exit
	ld.d	$a3, $a2, 8
	st.d	$a3, $fp, %pc_lo12(plink_freelist)
	ld.d	$a3, $a0, 0
	st.d	$a3, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a1, $a2, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB39_6:                               # %if.then3.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	Plink_add, .Lfunc_end39-Plink_add
                                        # -- End function
	.globl	Plink_copy                      # -- Begin function Plink_copy
	.p2align	5
	.type	Plink_copy,@function
Plink_copy:                             # @Plink_copy
# %bb.0:                                # %entry
	beqz	$a1, .LBB40_3
# %bb.1:                                # %while.body.preheader
	ld.d	$a2, $a0, 0
	.p2align	4, , 16
.LBB40_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 8
	st.d	$a2, $a1, 8
	st.d	$a1, $a0, 0
	move	$a2, $a1
	move	$a1, $a3
	bnez	$a3, .LBB40_2
.LBB40_3:                               # %while.end
	ret
.Lfunc_end40:
	.size	Plink_copy, .Lfunc_end40-Plink_copy
                                        # -- End function
	.globl	Plink_delete                    # -- Begin function Plink_delete
	.p2align	5
	.type	Plink_delete,@function
Plink_delete:                           # @Plink_delete
# %bb.0:                                # %entry
	beqz	$a0, .LBB41_4
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a1, %pc_hi20(plink_freelist)
	ld.d	$a2, $a1, %pc_lo12(plink_freelist)
	.p2align	4, , 16
.LBB41_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a2
	move	$a2, $a0
	ld.d	$a0, $a0, 8
	st.d	$a3, $a2, 8
	bnez	$a0, .LBB41_2
# %bb.3:                                # %while.cond.while.end_crit_edge
	st.d	$a2, $a1, %pc_lo12(plink_freelist)
.LBB41_4:                               # %while.end
	ret
.Lfunc_end41:
	.size	Plink_delete, .Lfunc_end41-Plink_delete
                                        # -- End function
	.globl	file_makename                   # -- Begin function file_makename
	.p2align	5
	.type	file_makename,@function
file_makename:                          # @file_makename
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 240
	move	$fp, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB42_4
# %bb.1:                                # %if.end
	move	$s1, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 46
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB42_3
# %bb.2:                                # %if.then8
	st.b	$zero, $a0, 0
.LBB42_3:                               # %if.end9
	move	$a0, $s1
	move	$a1, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.LBB42_4:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	file_makename, .Lfunc_end42-file_makename
                                        # -- End function
	.globl	file_open                       # -- Begin function file_open
	.p2align	5
	.type	file_open,@function
file_open:                              # @file_open
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 248
	move	$s0, $a2
	beqz	$a0, .LBB43_2
# %bb.1:                                # %if.then
	move	$s1, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a1, $s1
.LBB43_2:                               # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$a0, $fp, 248
	ld.bu	$a1, $s0, 0
	ori	$a0, $zero, 114
	bne	$a1, $a0, .LBB43_4
# %bb.3:
	move	$a0, $zero
	b	.LBB43_6
.LBB43_4:                               # %if.end5
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 119
	bne	$a1, $a3, .LBB43_6
# %bb.5:                                # %if.end5
	beqz	$a0, .LBB43_7
.LBB43_6:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB43_7:                               # %if.then11
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB43_6
.Lfunc_end43:
	.size	file_open, .Lfunc_end43-file_open
                                        # -- End function
	.globl	Reprint                         # -- Begin function Reprint
	.p2align	5
	.type	Reprint,@function
Reprint:                                # @Reprint
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
	move	$fp, $a0
	ld.d	$a1, $a0, 240
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 24
	ori	$s1, $zero, 1
	blt	$s2, $s1, .LBB44_4
# %bb.1:                                # %for.body.lr.ph
	ld.d	$s3, $fp, 32
	ori	$s0, $zero, 10
	move	$s4, $s2
	.p2align	4, , 16
.LBB44_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB44_2
# %bb.3:                                # %for.end
	addi.w	$a0, $s0, 5
	ori	$a1, $zero, 76
	div.wu	$a0, $a1, $a0
	ori	$a1, $zero, 71
	sltu	$a1, $a1, $s0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	add.d	$a1, $s2, $a0
	addi.w	$a1, $a1, -1
	div.w	$s4, $a1, $a0
	bge	$s4, $s1, .LBB44_5
	b	.LBB44_10
.LBB44_4:
	ori	$a0, $zero, 5
	ori	$s0, $zero, 10
	add.d	$a1, $s2, $a0
	addi.w	$a1, $a1, -1
	div.w	$s4, $a1, $a0
	blt	$s4, $s1, .LBB44_10
.LBB44_5:                               # %for.body14.lr.ph
	move	$s1, $zero
	move	$s6, $zero
	move	$s7, $zero
	slli.d	$s8, $s4, 3
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$s2, $a0, %pc_lo12(.L.str.53)
	b	.LBB44_7
	.p2align	4, , 16
.LBB44_6:                               # %for.end28
                                        #   in Loop: Header=BB44_7 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	addi.d	$s1, $s1, 8
	beq	$s6, $s4, .LBB44_10
.LBB44_7:                               # %for.body14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_9 Depth 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	bge	$s7, $a0, .LBB44_6
# %bb.8:                                # %for.body20.preheader
                                        #   in Loop: Header=BB44_7 Depth=1
	move	$s3, $s7
	move	$s5, $s1
	.p2align	4, , 16
.LBB44_9:                               # %for.body20
                                        #   Parent Loop BB44_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s5
	ld.d	$a4, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	add.w	$s3, $s3, $s4
	add.d	$s5, $s5, $s8
	blt	$s3, $a0, .LBB44_9
	b	.LBB44_6
.LBB44_10:                              # %for.end32
	ld.d	$s4, $fp, 8
	beqz	$s4, .LBB44_22
# %bb.11:                               # %for.body34.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$fp, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s0, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s1, $a0, %pc_lo12(.L.str.57)
	ori	$s6, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s2, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB44_13
	.p2align	4, , 16
.LBB44_12:                              # %if.end70
                                        #   in Loop: Header=BB44_13 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 88
	beqz	$s4, .LBB44_22
.LBB44_13:                              # %for.body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_16 Depth 2
                                        #       Child Loop BB44_19 Depth 3
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB44_20
# %bb.14:                               # %for.body41.lr.ph
                                        #   in Loop: Header=BB44_13 Depth=1
	move	$s7, $zero
	b	.LBB44_16
	.p2align	4, , 16
.LBB44_15:                              # %for.inc61
                                        #   in Loop: Header=BB44_16 Depth=2
	ld.w	$a0, $s4, 24
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB44_20
.LBB44_16:                              # %for.body41
                                        #   Parent Loop BB44_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB44_19 Depth 3
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s7, 3
	ldx.d	$s8, $a0, $a1
	ld.d	$a1, $s8, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 12
	bne	$a0, $s6, .LBB44_15
# %bb.17:                               # %for.cond49.preheader
                                        #   in Loop: Header=BB44_16 Depth=2
	ld.w	$a0, $s8, 84
	blt	$a0, $s6, .LBB44_15
# %bb.18:                               # %for.body52.lr.ph
                                        #   in Loop: Header=BB44_16 Depth=2
	ori	$s5, $zero, 1
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB44_19:                              # %for.body52
                                        #   Parent Loop BB44_13 Depth=1
                                        #     Parent Loop BB44_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 88
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 84
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	blt	$s5, $a0, .LBB44_19
	b	.LBB44_15
	.p2align	4, , 16
.LBB44_20:                              # %for.end63
                                        #   in Loop: Header=BB44_13 Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 64
	beqz	$a0, .LBB44_12
# %bb.21:                               # %if.then66
                                        #   in Loop: Header=BB44_13 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB44_12
.LBB44_22:                              # %for.end73
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end44:
	.size	Reprint, .Lfunc_end44-Reprint
                                        # -- End function
	.globl	ConfigPrint                     # -- Begin function ConfigPrint
	.p2align	5
	.type	ConfigPrint,@function
ConfigPrint:                            # @ConfigPrint
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
	move	$fp, $a1
	ld.d	$s4, $a1, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a1, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
	bltz	$a0, .LBB45_10
# %bb.1:                                # %for.body.lr.ph
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	pcalau12i	$a2, %pc_hi20(.L.str.57)
	addi.d	$s2, $a2, %pc_lo12(.L.str.57)
	pcalau12i	$a2, %pc_hi20(.L.str.58)
	addi.d	$s3, $a2, %pc_lo12(.L.str.58)
	b	.LBB45_3
	.p2align	4, , 16
.LBB45_2:                               # %for.inc20
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.w	$a0, $s4, 24
	addi.d	$a1, $s6, 1
	bge	$s6, $a0, .LBB45_10
.LBB45_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_9 Depth 2
	ld.wu	$a2, $fp, 8
	move	$s6, $a1
	bne	$a1, $a2, .LBB45_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB45_3 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 24
.LBB45_5:                               # %if.end
                                        #   in Loop: Header=BB45_3 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s6, $a0, .LBB45_10
# %bb.6:                                # %if.end7
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.d	$a0, $s4, 32
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	ld.d	$a2, $s7, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 12
	bne	$a0, $s5, .LBB45_2
# %bb.7:                                # %for.cond12.preheader
                                        #   in Loop: Header=BB45_3 Depth=1
	ld.w	$a0, $s7, 84
	blt	$a0, $s5, .LBB45_2
# %bb.8:                                # %for.body14.lr.ph
                                        #   in Loop: Header=BB45_3 Depth=1
	ori	$s8, $zero, 1
	ori	$s1, $zero, 8
	.p2align	4, , 16
.LBB45_9:                               # %for.body14
                                        #   Parent Loop BB45_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 88
	ldx.d	$a0, $a0, $s1
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 84
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	blt	$s8, $a0, .LBB45_9
	b	.LBB45_2
.LBB45_10:                              # %for.end22
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end45:
	.size	ConfigPrint, .Lfunc_end45-ConfigPrint
                                        # -- End function
	.globl	PrintAction                     # -- Begin function PrintAction
	.p2align	5
	.type	PrintAction,@function
PrintAction:                            # @PrintAction
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a0, 8
	ori	$a4, $zero, 9
	ori	$fp, $zero, 1
	bltu	$a4, $a3, .LBB46_11
# %bb.1:                                # %entry
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI46_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI46_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB46_2:                               # %sw.bb26
	move	$fp, $zero
	b	.LBB46_11
.LBB46_3:                               # %sw.bb14
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a5, $a0, %pc_lo12(.L.str.67)
	b	.LBB46_8
.LBB46_4:                               # %sw.bb20
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a5, $a0, %pc_lo12(.L.str.68)
	b	.LBB46_8
.LBB46_5:                               # %sw.bb1
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 72
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a5, $a0, %pc_lo12(.L.str.64)
	b	.LBB46_8
.LBB46_6:                               # %sw.bb10
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a4, $a0, %pc_lo12(.L.str.66)
	b	.LBB46_10
.LBB46_7:                               # %sw.bb
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $a3, 0
	ld.w	$a4, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a5, $a0, %pc_lo12(.L.str.63)
.LBB46_8:                               # %sw.epilog
	move	$a0, $a1
	move	$a1, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB46_11
.LBB46_9:                               # %sw.bb6
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a4, $a0, %pc_lo12(.L.str.65)
.LBB46_10:                              # %sw.epilog
	move	$a0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB46_11:                              # %sw.epilog
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	PrintAction, .Lfunc_end46-PrintAction
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI46_0:
	.word	.LBB46_7-.LJTI46_0
	.word	.LBB46_9-.LJTI46_0
	.word	.LBB46_5-.LJTI46_0
	.word	.LBB46_6-.LJTI46_0
	.word	.LBB46_4-.LJTI46_0
	.word	.LBB46_3-.LJTI46_0
	.word	.LBB46_3-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
	.word	.LBB46_2-.LJTI46_0
                                        # -- End function
	.text
	.globl	ReportOutput                    # -- Begin function ReportOutput
	.p2align	5
	.type	ReportOutput,@function
ReportOutput:                           # @ReportOutput
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$s8, $a0
	ld.d	$a0, $a0, 248
	beqz	$a0, .LBB47_2
# %bb.1:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB47_2:                               # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$s0, $a1, 0
	st.d	$a0, $s8, 248
	beqz	$s0, .LBB47_46
# %bb.3:                                # %for.cond.preheader
	ld.w	$a0, $s8, 16
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB47_33
# %bb.4:                                # %for.body.lr.ph
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI47_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI47_0)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s1, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s4, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s5, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	b	.LBB47_6
	.p2align	4, , 16
.LBB47_5:                               # %for.end
                                        #   in Loop: Header=BB47_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bge	$a1, $a0, .LBB47_33
.LBB47_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_9 Depth 2
                                        #       Child Loop BB47_15 Depth 3
                                        #         Child Loop BB47_21 Depth 4
                                        #     Child Loop BB47_26 Depth 2
	ld.d	$a0, $s8, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a0, $a1
	ld.w	$a2, $fp, 16
	move	$a0, $s0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 272
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	ldx.d	$s8, $fp, $a0
	bnez	$s8, .LBB47_9
.LBB47_7:                               # %while.end
                                        #   in Loop: Header=BB47_6 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $a0, 24
	bnez	$s8, .LBB47_26
	b	.LBB47_5
	.p2align	4, , 16
.LBB47_8:                               # %ConfigPrint.exit
                                        #   in Loop: Header=BB47_9 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 272
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 64
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 56
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ldx.d	$s8, $s8, $a0
	beqz	$s8, .LBB47_7
.LBB47_9:                               # %while.body
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_15 Depth 3
                                        #         Child Loop BB47_21 Depth 4
	ld.d	$a0, $s8, 0
	ld.w	$a1, $s8, 8
	ld.w	$a2, $a0, 24
	bne	$a1, $a2, .LBB47_11
# %bb.10:                               # %if.then8
                                        #   in Loop: Header=BB47_9 Depth=2
	ld.w	$a2, $a0, 72
	addi.d	$a0, $sp, 148
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 148
	move	$a0, $s0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_12
	.p2align	4, , 16
.LBB47_11:                              # %if.else13
                                        #   in Loop: Header=BB47_9 Depth=2
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB47_12:                              # %if.end15
                                        #   in Loop: Header=BB47_9 Depth=2
	ld.d	$s6, $s8, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	bltz	$a0, .LBB47_8
# %bb.13:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB47_9 Depth=2
	move	$a1, $zero
	b	.LBB47_15
	.p2align	4, , 16
.LBB47_14:                              # %for.inc20.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ld.w	$a0, $s6, 24
	addi.d	$a1, $fp, 1
	bge	$fp, $a0, .LBB47_8
.LBB47_15:                              # %for.body.i
                                        #   Parent Loop BB47_6 Depth=1
                                        #     Parent Loop BB47_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB47_21 Depth 4
	ld.wu	$a2, $s8, 8
	move	$fp, $a1
	bne	$a1, $a2, .LBB47_17
# %bb.16:                               # %if.then.i56
                                        #   in Loop: Header=BB47_15 Depth=3
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
.LBB47_17:                              # %if.end.i55
                                        #   in Loop: Header=BB47_15 Depth=3
	bstrpick.d	$a0, $a0, 31, 0
	beq	$fp, $a0, .LBB47_8
# %bb.18:                               # %if.end7.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ld.d	$a0, $s6, 32
	slli.d	$a1, $fp, 3
	ldx.d	$s2, $a0, $a1
	ld.d	$a2, $s2, 0
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 12
	bne	$a0, $s1, .LBB47_14
# %bb.19:                               # %for.cond12.preheader.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ld.w	$a0, $s2, 84
	blt	$a0, $s1, .LBB47_14
# %bb.20:                               # %for.body14.lr.ph.i
                                        #   in Loop: Header=BB47_15 Depth=3
	ori	$s7, $zero, 1
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB47_21:                              # %for.body14.i
                                        #   Parent Loop BB47_6 Depth=1
                                        #     Parent Loop BB47_9 Depth=2
                                        #       Parent Loop BB47_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s2, 88
	ldx.d	$a0, $a0, $s3
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 84
	addi.d	$s7, $s7, 1
	addi.d	$s3, $s3, 8
	blt	$s7, $a0, .LBB47_21
	b	.LBB47_14
.LBB47_22:                              # %sw.bb1.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 72
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB47_23:                              # %if.then30
                                        #   in Loop: Header=BB47_26 Depth=2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB47_24:                              # %if.then30
                                        #   in Loop: Header=BB47_26 Depth=2
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB47_25:                              # %for.inc
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$s8, $s8, 24
	beqz	$s8, .LBB47_5
.LBB47_26:                              # %for.body27
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 8
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB47_24
# %bb.27:                               # %for.body27
                                        #   in Loop: Header=BB47_26 Depth=2
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB47_28:                              # %sw.bb14.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 72
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_29:                              # %sw.bb.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 16
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_30:                              # %sw.bb6.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_24
.LBB47_31:                              # %sw.bb20.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, 16
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a1, 16
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB47_23
.LBB47_32:                              # %sw.bb10.i
                                        #   in Loop: Header=BB47_26 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a3, $a0, 0
	ori	$a2, $zero, 30
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB47_24
.LBB47_33:                              # %for.end36
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB47_47
# %bb.34:                               # %for.body41.lr.ph
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$s2, $a0, %pc_lo12(.L.str.77)
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s3, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$s4, $a0, %pc_lo12(.L.str.79)
	b	.LBB47_36
	.p2align	4, , 16
.LBB47_35:                              # %if.end70
                                        #   in Loop: Header=BB47_36 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB47_47
.LBB47_36:                              # %for.body41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_44 Depth 2
	ld.d	$a0, $s8, 32
	slli.d	$a1, $s1, 3
	ldx.d	$s6, $a0, $a1
	ld.d	$a3, $s6, 0
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 12
	bne	$a0, $s5, .LBB47_35
# %bb.37:                               # %if.then46
                                        #   in Loop: Header=BB47_36 Depth=1
	ori	$a0, $zero, 58
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 48
	beqz	$a0, .LBB47_39
# %bb.38:                               # %if.then49
                                        #   in Loop: Header=BB47_36 Depth=1
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB47_39:                              # %if.end51
                                        #   in Loop: Header=BB47_36 Depth=1
	ld.w	$a0, $s8, 28
	blt	$a0, $s5, .LBB47_35
# %bb.40:                               # %for.body54.lr.ph
                                        #   in Loop: Header=BB47_36 Depth=1
	ld.d	$a1, $s6, 40
	beqz	$a1, .LBB47_35
# %bb.41:                               # %for.body54.preheader
                                        #   in Loop: Header=BB47_36 Depth=1
	move	$fp, $zero
	move	$s7, $zero
	beqz	$a1, .LBB47_44
	.p2align	4, , 16
.LBB47_42:                              # %land.lhs.true
                                        #   in Loop: Header=BB47_36 Depth=1
	ldx.bu	$a1, $a1, $s7
	beqz	$a1, .LBB47_44
# %bb.43:                               # %if.then60
                                        #   in Loop: Header=BB47_36 Depth=1
	ld.d	$a0, $s8, 32
	ldx.d	$a0, $a0, $fp
	ld.d	$a2, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 28
.LBB47_44:                              # %for.inc67
                                        #   Parent Loop BB47_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB47_35
# %bb.45:                               # %for.body54thread-pre-split
                                        #   in Loop: Header=BB47_44 Depth=2
	ld.d	$a1, $s6, 40
	addi.d	$fp, $fp, 8
	bnez	$a1, .LBB47_42
	b	.LBB47_44
.LBB47_46:                              # %file_open.exit.thread
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s8, 40
.LBB47_47:                              # %cleanup
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end47:
	.size	ReportOutput, .Lfunc_end47-ReportOutput
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI47_0:
	.word	.LBB47_29-.LJTI47_0
	.word	.LBB47_30-.LJTI47_0
	.word	.LBB47_22-.LJTI47_0
	.word	.LBB47_32-.LJTI47_0
	.word	.LBB47_31-.LJTI47_0
	.word	.LBB47_28-.LJTI47_0
	.word	.LBB47_28-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
	.word	.LBB47_25-.LJTI47_0
                                        # -- End function
	.text
	.globl	pathsearch                      # -- Begin function pathsearch
	.p2align	5
	.type	pathsearch,@function
pathsearch:                             # @pathsearch
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_5
# %bb.1:                                # %if.then
	move	$s3, $a0
	ld.bu	$s4, $a0, 0
	st.b	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB48_3
# %bb.2:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB48_3:                               # %if.end
	st.b	$s4, $s3, 0
.LBB48_4:                               # %if.end37
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB48_5:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.82)
	addi.d	$a2, $a2, %pc_lo12(.L.str.82)
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_11
# %bb.6:                                # %while.cond.preheader
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$s3, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s5, $a0, %pc_lo12(.L.str.39)
	b	.LBB48_8
	.p2align	4, , 16
.LBB48_7:                               # %if.end23
                                        #   in Loop: Header=BB48_8 Depth=1
	ld.bu	$s6, $s4, 0
	st.b	$zero, $s4, 0
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	st.b	$s6, $s4, 0
	sltui	$a0, $s6, 1
	addi.d	$a1, $s4, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB48_4
.LBB48_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB48_4
# %bb.9:                                # %while.body
                                        #   in Loop: Header=BB48_8 Depth=1
	ori	$a1, $zero, 58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB48_7
# %bb.10:                               # %if.then21
                                        #   in Loop: Header=BB48_8 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s4, $s2, $a0
	b	.LBB48_7
.LBB48_11:
	move	$s1, $zero
	b	.LBB48_4
.Lfunc_end48:
	.size	pathsearch, .Lfunc_end48-pathsearch
                                        # -- End function
	.globl	compute_action                  # -- Begin function compute_action
	.p2align	5
	.type	compute_action,@function
compute_action:                         # @compute_action
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB49_6
# %bb.1:                                # %entry
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI49_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI49_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB49_2:                               # %sw.bb
	ld.d	$a0, $a1, 16
	ld.w	$a0, $a0, 16
	ret
.LBB49_3:                               # %sw.bb1
	ld.d	$a1, $a1, 16
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 16
	add.w	$a0, $a0, $a1
	ret
.LBB49_4:                               # %sw.bb3
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 20
	add.w	$a0, $a0, $a1
	ret
.LBB49_5:                               # %sw.bb6
	ld.w	$a1, $a0, 16
	ld.w	$a0, $a0, 20
	add.d	$a0, $a1, $a0
	addi.w	$a0, $a0, 1
	ret
.LBB49_6:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end49:
	.size	compute_action, .Lfunc_end49-compute_action
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI49_0:
	.word	.LBB49_2-.LJTI49_0
	.word	.LBB49_5-.LJTI49_0
	.word	.LBB49_3-.LJTI49_0
	.word	.LBB49_4-.LJTI49_0
                                        # -- End function
	.text
	.globl	tplt_xfer                       # -- Begin function tplt_xfer
	.p2align	5
	.type	tplt_xfer,@function
tplt_xfer:                              # @tplt_xfer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
# %bb.1:                                # %land.rhs.lr.ph
	beqz	$s2, .LBB50_16
# %bb.2:
	ori	$s6, $zero, 80
	addi.d	$s7, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$s3, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$s4, $a0, %pc_lo12(.L.str.84)
	b	.LBB50_4
	.p2align	4, , 16
.LBB50_3:                               # %if.end42.loopexit
                                        #   in Loop: Header=BB50_4 Depth=1
	add.d	$a0, $s7, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
.LBB50_4:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_9 Depth 2
	ld.bu	$a0, $sp, 16
	ori	$a1, $zero, 37
	bne	$a0, $a1, .LBB50_6
# %bb.5:                                # %land.rhs
                                        #   in Loop: Header=BB50_4 Depth=1
	ld.bu	$a1, $sp, 17
	ori	$a2, $zero, 37
	beq	$a1, $a2, .LBB50_20
.LBB50_6:                               # %while.body
                                        #   in Loop: Header=BB50_4 Depth=1
	ld.w	$a1, $fp, 0
	move	$s8, $zero
	move	$s5, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 0
	b	.LBB50_9
	.p2align	4, , 16
.LBB50_7:                               # %for.cond
                                        #   in Loop: Header=BB50_9 Depth=2
	beqz	$a0, .LBB50_3
.LBB50_8:                               # %for.inc
                                        #   in Loop: Header=BB50_9 Depth=2
	addi.w	$s8, $s8, 1
	ldx.bu	$a0, $s8, $s7
.LBB50_9:                               # %for.cond
                                        #   Parent Loop BB50_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a0, $s6, .LBB50_7
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB50_9 Depth=2
	add.d	$a0, $s7, $s8
	ori	$a2, $zero, 5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB50_8
# %bb.11:                               # %land.lhs.true19
                                        #   in Loop: Header=BB50_9 Depth=2
	beqz	$s8, .LBB50_13
# %bb.12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB50_9 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	add.d	$a1, $s8, $s7
	ld.b	$a1, $a1, -1
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB50_8
.LBB50_13:                              # %if.then30
                                        #   in Loop: Header=BB50_9 Depth=2
	bge	$s5, $s8, .LBB50_15
# %bb.14:                               # %if.then33
                                        #   in Loop: Header=BB50_9 Depth=2
	sub.w	$a2, $s8, $s5
	add.d	$a3, $s7, $s5
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB50_15:                              # %if.end
                                        #   in Loop: Header=BB50_9 Depth=2
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 4
	addi.w	$s5, $s8, 5
	move	$s8, $a0
	b	.LBB50_8
.LBB50_16:                              # %land.rhs.us.preheader
	ori	$s2, $zero, 37
	b	.LBB50_18
	.p2align	4, , 16
.LBB50_17:                              # %while.body.us
                                        #   in Loop: Header=BB50_18 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1000
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_20
.LBB50_18:                              # %land.rhs.us
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $sp, 16
	bne	$a0, $s2, .LBB50_17
# %bb.19:                               # %land.rhs.us
                                        #   in Loop: Header=BB50_18 Depth=1
	ld.bu	$a0, $sp, 17
	bne	$a0, $s2, .LBB50_17
.LBB50_20:                              # %while.end
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.Lfunc_end50:
	.size	tplt_xfer, .Lfunc_end50-tplt_xfer
                                        # -- End function
	.globl	tplt_open                       # -- Begin function tplt_open
	.p2align	5
	.type	tplt_open,@function
tplt_open:                              # @tplt_open
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1040
	st.d	$ra, $sp, 1032                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 240
	ori	$a1, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_2
# %bb.1:                                # %if.then
	sub.w	$a2, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	addi.d	$a0, $sp, 16
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	b	.LBB51_3
.LBB51_2:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	addi.d	$a0, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB51_3:                               # %if.end
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	addi.d	$s0, $sp, 16
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_6
# %bb.4:                                # %if.else12
	pcalau12i	$a0, %pc_hi20(tplt_open.templatename)
	addi.d	$s0, $a0, %pc_lo12(tplt_open.templatename)
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_6
# %bb.5:                                # %if.end21
	ld.d	$a0, $fp, 240
	pcalau12i	$a1, %pc_hi20(tplt_open.templatename)
	addi.d	$a1, $a1, %pc_lo12(tplt_open.templatename)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(pathsearch)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB51_9
.LBB51_6:                               # %if.end26
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB51_8
.LBB51_7:                               # %cleanup
	ld.d	$s0, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1040
	ret
.LBB51_8:
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	b	.LBB51_10
.LBB51_9:
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
.LBB51_10:                              # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(tplt_open.templatename)
	addi.d	$a2, $a2, %pc_lo12(tplt_open.templatename)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 40
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 40
	b	.LBB51_7
.Lfunc_end51:
	.size	tplt_open, .Lfunc_end51-tplt_open
                                        # -- End function
	.globl	tplt_linedir                    # -- Begin function tplt_linedir
	.p2align	5
	.type	tplt_linedir,@function
tplt_linedir:                           # @tplt_linedir
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB52_3
	.p2align	4, , 16
.LBB52_1:                               # %if.then
                                        #   in Loop: Header=BB52_3 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB52_2:                               # %if.end
                                        #   in Loop: Header=BB52_3 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB52_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB52_1
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB52_3 Depth=1
	bnez	$a0, .LBB52_2
# %bb.5:                                # %while.end
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end52:
	.size	tplt_linedir, .Lfunc_end52-tplt_linedir
                                        # -- End function
	.p2align	5                               # -- Begin function mybasename
	.type	mybasename,@function
mybasename:                             # @mybasename
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end53:
	.size	mybasename, .Lfunc_end53-mybasename
                                        # -- End function
	.globl	tplt_print                      # -- Begin function tplt_print
	.p2align	5
	.type	tplt_print,@function
tplt_print:                             # @tplt_print
# %bb.0:                                # %entry
	beqz	$a2, .LBB54_20
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s3, $a3
	move	$s2, $a2
	move	$s1, $a1
	move	$s0, $a0
	ld.d	$s4, $a1, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB54_4
	.p2align	4, , 16
.LBB54_2:                               # %if.then.i
                                        #   in Loop: Header=BB54_4 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB54_3:                               # %if.end.i
                                        #   in Loop: Header=BB54_4 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB54_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB54_2
# %bb.5:                                # %while.cond.i
                                        #   in Loop: Header=BB54_4 Depth=1
	bnez	$a0, .LBB54_3
# %bb.6:                                # %tplt_linedir.exit
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ori	$s3, $zero, 10
	b	.LBB54_9
	.p2align	4, , 16
.LBB54_7:                               # %if.then3
                                        #   in Loop: Header=BB54_9 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
	ld.bu	$a0, $s2, 0
.LBB54_8:                               # %if.end5
                                        #   in Loop: Header=BB54_9 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
.LBB54_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	beq	$a0, $s3, .LBB54_7
# %bb.10:                               # %while.cond
                                        #   in Loop: Header=BB54_9 Depth=1
	bnez	$a0, .LBB54_8
# %bb.11:                               # %while.end
	ld.bu	$a0, $s2, -1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB54_13
# %bb.12:                               # %while.end.if.end13_crit_edge
	ld.w	$a0, $fp, 0
	b	.LBB54_14
.LBB54_13:                              # %if.then10
	ori	$a0, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
.LBB54_14:                              # %if.end13
	ld.d	$s1, $s1, 248
	addi.w	$s2, $a0, 2
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 92
	b	.LBB54_17
	.p2align	4, , 16
.LBB54_15:                              # %if.then.i21
                                        #   in Loop: Header=BB54_17 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
.LBB54_16:                              # %if.end.i24
                                        #   in Loop: Header=BB54_17 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 1
.LBB54_17:                              # %while.cond.i19
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s1, 0
	beq	$a0, $s2, .LBB54_15
# %bb.18:                               # %while.cond.i19
                                        #   in Loop: Header=BB54_17 Depth=1
	bnez	$a0, .LBB54_16
# %bb.19:                               # %tplt_linedir.exit28
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $fp, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB54_20:                              # %return
	ret
.Lfunc_end54:
	.size	tplt_print, .Lfunc_end54-tplt_print
                                        # -- End function
	.globl	emit_destructor_code            # -- Begin function emit_destructor_code
	.p2align	5
	.type	emit_destructor_code,@function
emit_destructor_code:                   # @emit_destructor_code
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.w	$a1, $a1, 12
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a0
	beqz	$a1, .LBB55_7
# %bb.1:                                # %if.else
	ld.d	$s5, $s2, 56
	beqz	$s5, .LBB55_13
# %bb.2:                                # %if.then3
	ld.w	$s3, $s2, 64
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_5
	.p2align	4, , 16
.LBB55_3:                               # %if.then.i44
                                        #   in Loop: Header=BB55_5 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_4:                               # %if.end.i47
                                        #   in Loop: Header=BB55_5 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_5:                               # %while.cond.i42
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_3
# %bb.6:                                # %while.cond.i42
                                        #   in Loop: Header=BB55_5 Depth=1
	bnez	$a0, .LBB55_4
	b	.LBB55_19
.LBB55_7:                               # %if.then
	ld.d	$s5, $s0, 208
	beqz	$s5, .LBB55_31
# %bb.8:                                # %if.end
	ld.w	$s3, $s0, 216
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_11
	.p2align	4, , 16
.LBB55_9:                               # %if.then.i
                                        #   in Loop: Header=BB55_11 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_10:                              # %if.end.i
                                        #   in Loop: Header=BB55_11 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_11:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_9
# %bb.12:                               # %while.cond.i
                                        #   in Loop: Header=BB55_11 Depth=1
	bnez	$a0, .LBB55_10
	b	.LBB55_19
.LBB55_13:                              # %if.else7
	ld.d	$s5, $s0, 224
	beqz	$s5, .LBB55_32
# %bb.14:                               # %if.end13
	ld.w	$s3, $s0, 232
	ld.d	$s4, $s0, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB55_17
	.p2align	4, , 16
.LBB55_15:                              # %if.then.i59
                                        #   in Loop: Header=BB55_17 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB55_16:                              # %if.end.i62
                                        #   in Loop: Header=BB55_17 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB55_17:                              # %while.cond.i57
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB55_15
# %bb.18:                               # %while.cond.i57
                                        #   in Loop: Header=BB55_17 Depth=1
	bnez	$a0, .LBB55_16
.LBB55_19:                              # %if.end19.sink.split
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 123
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB55_20:                              # %if.end19
	move	$s4, $zero
	ori	$s6, $zero, 36
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$s3, $a0, %pc_lo12(.L.str.92)
	ld.bu	$a0, $s5, 0
	bne	$a0, $s6, .LBB55_23
	b	.LBB55_22
	.p2align	4, , 16
.LBB55_21:                              # %if.then26
                                        #   in Loop: Header=BB55_22 Depth=1
	ld.w	$a2, $s2, 80
	addi.d	$s5, $s5, 1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	ld.bu	$a0, $s5, 0
	bne	$a0, $s6, .LBB55_23
.LBB55_22:                              # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s5, 1
	beq	$a1, $s6, .LBB55_21
	b	.LBB55_24
	.p2align	4, , 16
.LBB55_23:                              # %for.cond
	beqz	$a0, .LBB55_25
.LBB55_24:                              # %if.end28
	addi.d	$s5, $s5, 1
	addi.d	$a1, $a0, -10
	sltui	$a1, $a1, 1
	add.d	$s4, $s4, $a1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	bne	$a0, $s6, .LBB55_23
	b	.LBB55_22
.LBB55_25:                              # %for.end
	ld.w	$a0, $s1, 0
	add.d	$a0, $s4, $a0
	addi.d	$a0, $a0, 3
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s1, 0
	ld.d	$s0, $s0, 248
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB55_28
	.p2align	4, , 16
.LBB55_26:                              # %if.then.i74
                                        #   in Loop: Header=BB55_28 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB55_27:                              # %if.end.i77
                                        #   in Loop: Header=BB55_28 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB55_28:                              # %while.cond.i72
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB55_26
# %bb.29:                               # %while.cond.i72
                                        #   in Loop: Header=BB55_28 Depth=1
	bnez	$a0, .LBB55_27
# %bb.30:                               # %tplt_linedir.exit81
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB55_31:                              # %cleanup
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB55_32:
	move	$s5, $zero
	b	.LBB55_20
.Lfunc_end55:
	.size	emit_destructor_code, .Lfunc_end55-emit_destructor_code
                                        # -- End function
	.globl	has_destructor                  # -- Begin function has_destructor
	.p2align	5
	.type	has_destructor,@function
has_destructor:                         # @has_destructor
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 12
	beqz	$a2, .LBB56_3
# %bb.1:                                # %if.else
	ld.d	$a2, $a1, 224
	ori	$a1, $zero, 1
	beqz	$a2, .LBB56_4
# %bb.2:                                # %if.end
	move	$a0, $a1
	ret
.LBB56_3:                               # %if.then
	ld.d	$a0, $a1, 208
	sltu	$a1, $zero, $a0
	move	$a0, $a1
	ret
.LBB56_4:                               # %lor.rhs
	ld.d	$a0, $a0, 56
	sltu	$a1, $zero, $a0
	move	$a0, $a1
	ret
.Lfunc_end56:
	.size	has_destructor, .Lfunc_end56-has_destructor
                                        # -- End function
	.globl	append_str                      # -- Begin function append_str
	.p2align	5
	.type	append_str,@function
append_str:                             # @append_str
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB57_16
# %bb.1:                                # %if.end
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$s5, %pc_hi20(append_str.used)
	bgtz	$a1, .LBB57_5
# %bb.2:                                # %if.then2
	move	$fp, $a2
	addi.w	$a0, $zero, -1
	blt	$a0, $s0, .LBB57_4
# %bb.3:                                # %if.then4
	ld.w	$a0, $s5, %pc_lo12(append_str.used)
	add.d	$a0, $a0, $s0
	st.w	$a0, $s5, %pc_lo12(append_str.used)
.LBB57_4:                               # %if.end5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a2, $fp
.LBB57_5:                               # %if.end6
	ld.w	$fp, $s5, %pc_lo12(append_str.used)
	pcalau12i	$a3, %pc_hi20(append_str.alloced)
	ld.w	$a0, $a3, %pc_lo12(append_str.alloced)
	addi.w	$s3, $s0, 0
	add.d	$a1, $s3, $fp
	addi.d	$a1, $a1, 80
	bgeu	$a1, $a0, .LBB57_17
# %bb.6:                                # %if.end23thread-pre-split
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$s2, $a0, %pc_lo12(append_str.z)
	beqz	$s2, .LBB57_18
.LBB57_7:                               # %while.cond.preheader
	ori	$s6, $zero, 1
	blt	$s3, $s6, .LBB57_15
# %bb.8:                                # %while.body.preheader
	ori	$s7, $zero, 37
	ori	$a5, $zero, 100
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$s3, $a0, %pc_lo12(.L.str.94)
	pcalau12i	$fp, %pc_hi20(append_str.z)
	b	.LBB57_10
	.p2align	4, , 16
.LBB57_9:                               # %if.else
                                        #   in Loop: Header=BB57_10 Depth=1
	ld.w	$a3, $s5, %pc_lo12(append_str.used)
	addi.w	$s0, $s0, -1
	addi.d	$a4, $a3, 1
	st.w	$a4, $s5, %pc_lo12(append_str.used)
	stx.b	$a1, $s2, $a3
	move	$s1, $a0
	blez	$s0, .LBB57_14
.LBB57_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s1, 0
	addi.w	$a3, $s0, 0
	addi.d	$a0, $s1, 1
	beq	$a3, $s6, .LBB57_9
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB57_10 Depth=1
	bne	$a1, $s7, .LBB57_9
# %bb.12:                               # %land.lhs.true35
                                        #   in Loop: Header=BB57_10 Depth=1
	ld.bu	$a3, $a0, 0
	bne	$a3, $a5, .LBB57_9
# %bb.13:                               # %if.then39
                                        #   in Loop: Header=BB57_10 Depth=1
	addi.d	$a0, $sp, 16
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, %pc_lo12(append_str.z)
	ld.w	$s8, $s5, %pc_lo12(append_str.used)
	add.d	$s4, $s2, $s8
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 100
	add.d	$a0, $s8, $a0
	st.w	$a0, $s5, %pc_lo12(append_str.used)
	addi.d	$a0, $s1, 2
	addi.w	$s0, $s0, -2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	move	$s1, $a0
	bgtz	$s0, .LBB57_10
.LBB57_14:                              # %while.end.loopexit
	ld.w	$fp, $s5, %pc_lo12(append_str.used)
.LBB57_15:                              # %while.end
	stx.b	$zero, $s2, $fp
	b	.LBB57_19
.LBB57_16:                              # %if.then
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$s2, $a0, %pc_lo12(append_str.z)
	pcalau12i	$a0, %pc_hi20(append_str.used)
	st.w	$zero, $a0, %pc_lo12(append_str.used)
	b	.LBB57_19
.LBB57_17:                              # %if.then14
	pcalau12i	$s4, %pc_hi20(append_str.z)
	ld.d	$a0, $s4, %pc_lo12(append_str.z)
	addi.w	$a1, $a1, 200
	st.w	$a1, $a3, %pc_lo12(append_str.alloced)
	move	$s2, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$s2, $a0
	st.d	$a0, $s4, %pc_lo12(append_str.z)
	bnez	$s2, .LBB57_7
.LBB57_18:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$s2, $a0, %pc_lo12(.L.str.39)
.LBB57_19:                              # %cleanup
	move	$a0, $s2
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end57:
	.size	append_str, .Lfunc_end57-append_str
                                        # -- End function
	.globl	translate_code                  # -- Begin function translate_code
	.p2align	5
	.type	translate_code,@function
translate_code:                         # @translate_code
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a2, $a1, 24
	ori	$a1, $zero, 1
	move	$s0, $a0
	blt	$a2, $a1, .LBB58_2
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB58_2:                               # %for.end
	ld.d	$s7, $fp, 56
	bnez	$s7, .LBB58_4
# %bb.3:                                # %if.then
	ld.w	$a0, $fp, 20
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$s7, $a1, %pc_lo12(.L.str.54)
	st.d	$s7, $fp, 56
	st.w	$a0, $fp, 48
.LBB58_4:                               # %if.end
	pcalau12i	$a0, %pc_hi20(append_str.used)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$zero, $a0, %pc_lo12(append_str.used)
	ld.bu	$s2, $s7, 0
	beqz	$s2, .LBB58_32
# %bb.5:                                # %for.body5.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$s6, $zero, 95
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB58_9
.LBB58_6:                               #   in Loop: Header=BB58_9 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
.LBB58_7:                               # %if.end101
                                        #   in Loop: Header=BB58_9 Depth=1
	st.b	$s4, $s3, 0
.LBB58_8:                               # %if.end102
                                        #   in Loop: Header=BB58_9 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s7, 1
	addi.d	$s7, $s7, 1
	beqz	$s2, .LBB58_31
.LBB58_9:                               # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_14 Depth 2
                                        #     Child Loop BB58_21 Depth 2
	ld.d	$a0, $s1, 0
	ext.w.b	$a1, $s2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 1024
	beqz	$a1, .LBB58_8
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a1, $fp, 56
	beq	$s7, $a1, .LBB58_13
# %bb.11:                               # %lor.lhs.false
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.b	$a1, $s7, -1
	beq	$a1, $s6, .LBB58_8
# %bb.12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB58_9 Depth=1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB58_8
.LBB58_13:                              # %for.cond29.preheader
                                        #   in Loop: Header=BB58_9 Depth=1
	move	$s3, $s7
	.p2align	4, , 16
.LBB58_14:                              # %for.cond29
                                        #   Parent Loop BB58_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s3, 1
	andi	$s4, $a1, 255
	addi.d	$s3, $s3, 1
	beq	$s4, $s6, .LBB58_14
# %bb.15:                               # %for.cond29
                                        #   in Loop: Header=BB58_14 Depth=2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	bnez	$a1, .LBB58_14
# %bb.16:                               # %for.end42
                                        #   in Loop: Header=BB58_9 Depth=1
	st.b	$zero, $s3, 0
	ld.d	$a1, $fp, 8
	beqz	$a1, .LBB58_18
# %bb.17:                               # %land.lhs.true44
                                        #   in Loop: Header=BB58_9 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_26
.LBB58_18:                              # %if.else
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.w	$a0, $fp, 24
	blt	$a0, $s5, .LBB58_7
# %bb.19:                               # %for.body55.lr.ph
                                        #   in Loop: Header=BB58_9 Depth=1
	move	$s5, $zero
	ld.d	$s0, $fp, 40
	addi.d	$s8, $a0, -1
	slli.d	$s1, $a0, 3
	addi.d	$s2, $sp, 48
	b	.LBB58_21
	.p2align	4, , 16
.LBB58_20:                              # %for.inc98
                                        #   in Loop: Header=BB58_21 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, 1
	beq	$s1, $s5, .LBB58_6
.LBB58_21:                              # %for.body55
                                        #   Parent Loop BB58_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a1, $s0, $s5
	beqz	$a1, .LBB58_20
# %bb.22:                               # %land.lhs.true59
                                        #   in Loop: Header=BB58_21 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB58_20
# %bb.23:                               # %if.then66
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 56
	beq	$s7, $a0, .LBB58_27
# %bb.24:                               # %land.lhs.true70
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.bu	$a0, $s7, -1
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB58_27
# %bb.25:                               # %if.then75
                                        #   in Loop: Header=BB58_9 Depth=1
	sub.w	$a2, $zero, $s8
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	addi.w	$a1, $zero, -1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	b	.LBB58_30
.LBB58_26:                              # %if.then49
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $s3
	b	.LBB58_7
.LBB58_27:                              # %if.else78
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s5
	ld.w	$a1, $a0, 12
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB58_29
# %bb.28:                               # %if.then84
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$a0, $a0, 88
	ld.d	$a0, $a0, 0
.LBB58_29:                              # %if.end89
                                        #   in Loop: Header=BB58_9 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.w	$a3, $a0, 80
	sub.w	$a2, $zero, $s8
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
.LBB58_30:                              # %if.end94
                                        #   in Loop: Header=BB58_9 Depth=1
	st.b	$s5, $s2, 0
	move	$s7, $s3
	b	.LBB58_7
.LBB58_31:                              # %for.end106.loopexit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	ld.d	$a3, $fp, 8
	bnez	$a3, .LBB58_33
	b	.LBB58_35
.LBB58_32:
	move	$a0, $zero
	ld.d	$a3, $fp, 8
	beqz	$a3, .LBB58_35
.LBB58_33:                              # %for.end106
	bnez	$a0, .LBB58_35
# %bb.34:                               # %if.then111
	ld.d	$a2, $fp, 0
	ld.d	$a0, $s0, 240
	ld.w	$a1, $fp, 20
	ld.d	$a4, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.98)
	addi.d	$a2, $a2, %pc_lo12(.L.str.98)
	move	$a5, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 40
.LBB58_35:                              # %if.end117
	ld.w	$a0, $fp, 24
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB58_46
# %bb.36:                               # %for.body122.lr.ph
	move	$s4, $zero
	move	$s5, $zero
	addi.d	$s6, $s0, 208
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$s1, $a1, %pc_lo12(.L.str.100)
	addi.d	$s7, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$s2, $a1, %pc_lo12(.L.str.99)
	b	.LBB58_41
.LBB58_37:                              # %lor.rhs.i
                                        #   in Loop: Header=BB58_41 Depth=1
	addi.d	$a2, $a1, 56
.LBB58_38:                              # %has_destructor.exit
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB58_40
.LBB58_39:                              # %if.then158
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.w	$a2, $a1, 8
	sub.w	$a3, $s3, $a0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(append_str)
	jirl	$ra, $ra, 0
.LBB58_40:                              # %for.inc170
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.w	$a0, $fp, 24
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB58_46
.LBB58_41:                              # %for.body122
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 40
	ldx.d	$a3, $a1, $s4
	beqz	$a3, .LBB58_44
# %bb.42:                               # %land.lhs.true127
                                        #   in Loop: Header=BB58_41 Depth=1
	ldx.bu	$a0, $s5, $s7
	bnez	$a0, .LBB58_40
# %bb.43:                               # %if.then131
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a2, $a0, $s4
	ld.d	$a0, $s0, 240
	ld.w	$a1, $fp, 20
	ld.d	$a4, $a2, 0
	move	$a2, $s2
	move	$a5, $a3
	pcaddu18i	$ra, %call36(ErrorMsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 40
	b	.LBB58_40
	.p2align	4, , 16
.LBB58_44:                              # %if.then152
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a1, $fp, 32
	ldx.d	$a1, $a1, $s4
	ld.w	$a3, $a1, 12
	move	$a2, $s6
	beqz	$a3, .LBB58_38
# %bb.45:                               # %if.else.i
                                        #   in Loop: Header=BB58_41 Depth=1
	ld.d	$a2, $s0, 224
	bnez	$a2, .LBB58_39
	b	.LBB58_37
.LBB58_46:                              # %for.end172
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB58_48
# %bb.47:                               # %if.then175
	pcalau12i	$a0, %pc_hi20(append_str.z)
	ld.d	$a0, $a0, %pc_lo12(append_str.z)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(append_str.used)
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
.LBB58_48:                              # %if.end180
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.Lfunc_end58:
	.size	translate_code, .Lfunc_end58-translate_code
                                        # -- End function
	.globl	emit_code                       # -- Begin function emit_code
	.p2align	5
	.type	emit_code,@function
emit_code:                              # @emit_code
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.d	$a1, $a1, 56
	beqz	$a1, .LBB59_17
# %bb.1:                                # %if.then
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a0
	ld.w	$s3, $s2, 48
	ld.d	$s4, $a2, 240
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 92
	b	.LBB59_4
	.p2align	4, , 16
.LBB59_2:                               # %if.then.i
                                        #   in Loop: Header=BB59_4 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
.LBB59_3:                               # %if.end.i
                                        #   in Loop: Header=BB59_4 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
.LBB59_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s4, 0
	beq	$a0, $s3, .LBB59_2
# %bb.5:                                # %while.cond.i
                                        #   in Loop: Header=BB59_4 Depth=1
	bnez	$a0, .LBB59_3
# %bb.6:                                # %tplt_linedir.exit
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 56
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	move	$a1, $zero
	ori	$a2, $zero, 10
	b	.LBB59_9
	.p2align	4, , 16
.LBB59_7:                               # %if.then5
                                        #   in Loop: Header=BB59_9 Depth=1
	addi.d	$a1, $a1, 1
.LBB59_8:                               # %for.inc
                                        #   in Loop: Header=BB59_9 Depth=1
	addi.d	$a0, $a0, 1
.LBB59_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	beq	$a3, $a2, .LBB59_7
# %bb.10:                               # %for.cond
                                        #   in Loop: Header=BB59_9 Depth=1
	bnez	$a3, .LBB59_8
# %bb.11:                               # %for.end
	ld.w	$a0, $s1, 0
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 3
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s1, 0
	ld.d	$s0, $s0, 248
	ori	$a1, $zero, 47
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 92
	b	.LBB59_14
	.p2align	4, , 16
.LBB59_12:                              # %if.then.i19
                                        #   in Loop: Header=BB59_14 Depth=1
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
.LBB59_13:                              # %if.end.i22
                                        #   in Loop: Header=BB59_14 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
.LBB59_14:                              # %while.cond.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s0, 0
	beq	$a0, $s1, .LBB59_12
# %bb.15:                               # %while.cond.i17
                                        #   in Loop: Header=BB59_14 Depth=1
	bnez	$a0, .LBB59_13
# %bb.16:                               # %tplt_linedir.exit26
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB59_17:                              # %if.end8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end59:
	.size	emit_code, .Lfunc_end59-emit_code
                                        # -- End function
	.globl	print_stack_union               # -- Begin function print_stack_union
	.p2align	5
	.type	print_stack_union,@function
print_stack_union:                      # @print_stack_union
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
	move	$s1, $a1
	ld.w	$a1, $a1, 24
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.w	$s3, $a1, 1
	ori	$a1, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 88
	move	$s5, $a0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	beqz	$a1, .LBB60_2
# %bb.1:                                # %if.then
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB60_3
.LBB60_2:
	move	$s4, $zero
.LBB60_3:                               # %if.end
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB60_8
# %bb.4:                                # %for.body9.lr.ph
	ld.d	$fp, $s1, 32
	move	$s0, $a1
	b	.LBB60_6
	.p2align	4, , 16
.LBB60_5:                               # %cleanup
                                        #   in Loop: Header=BB60_6 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	beqz	$s0, .LBB60_8
.LBB60_6:                               # %for.body9
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 72
	beqz	$a0, .LBB60_5
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB60_6 Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	addi.w	$a1, $s4, 0
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$s4, $a1, $a0
	b	.LBB60_5
.LBB60_8:                               # %for.end26
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s4, 1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB60_54
# %bb.9:                                # %for.end26
	move	$s4, $a0
	beqz	$a0, .LBB60_54
# %bb.10:                               # %for.cond37.preheader
	ori	$a4, $zero, 1
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	blt	$a2, $a4, .LBB60_40
# %bb.11:                               # %for.body41.lr.ph
	move	$fp, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a0, 32
	ld.d	$s2, $a0, 48
	addi.d	$s6, $s4, -1
	ori	$a6, $s3, 1
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$s0, 2
	ori	$s7, $zero, 53
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB60_14
	.p2align	4, , 16
.LBB60_12:                              # %if.then60
                                        #   in Loop: Header=BB60_14 Depth=1
	st.w	$zero, $s8, 80
.LBB60_13:                              # %cleanup156
                                        #   in Loop: Header=BB60_14 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $a2, .LBB60_40
.LBB60_14:                              # %for.body41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_18 Depth 2
                                        #     Child Loop BB60_21 Depth 2
                                        #     Child Loop BB60_23 Depth 2
                                        #     Child Loop BB60_28 Depth 2
                                        #     Child Loop BB60_34 Depth 2
	slli.d	$a0, $fp, 3
	ldx.d	$s8, $a5, $a0
	beq	$s8, $s2, .LBB60_30
# %bb.15:                               # %if.end50
                                        #   in Loop: Header=BB60_14 Depth=1
	ld.w	$a0, $s8, 12
	bne	$a0, $a4, .LBB60_12
# %bb.16:                               # %lor.lhs.false53
                                        #   in Loop: Header=BB60_14 Depth=1
	ld.d	$a0, $s8, 72
	or	$a1, $a3, $a0
	beqz	$a1, .LBB60_12
# %bb.17:                               # %while.cond.preheader
                                        #   in Loop: Header=BB60_14 Depth=1
	sltu	$a1, $zero, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a3, $s1, -1
	addi.d	$a1, $s1, 1
	.p2align	4, , 16
.LBB60_18:                              # %while.cond
                                        #   Parent Loop BB60_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a3, 1
	slli.d	$a2, $a4, 1
	ldx.hu	$a5, $a0, $a2
	move	$a2, $a1
	addi.d	$a3, $a3, 1
	and	$a5, $a5, $s0
	addi.d	$a1, $a1, 1
	bnez	$a5, .LBB60_18
# %bb.19:                               # %while.cond75.preheader
                                        #   in Loop: Header=BB60_14 Depth=1
	andi	$a3, $a4, 255
	beqz	$a3, .LBB60_25
# %bb.20:                               # %while.body77.preheader
                                        #   in Loop: Header=BB60_14 Depth=1
	move	$a1, $zero
	move	$a4, $s4
	.p2align	4, , 16
.LBB60_21:                              # %while.body77
                                        #   Parent Loop BB60_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $a4, 0
	ld.bu	$a3, $a2, 0
	addi.d	$a4, $a4, 1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB60_21
# %bb.22:                               # %while.cond83.preheader
                                        #   in Loop: Header=BB60_14 Depth=1
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB60_26
	.p2align	4, , 16
.LBB60_23:                              # %land.rhs
                                        #   Parent Loop BB60_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a2, $a1
	ldx.b	$a1, $s6, $a1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $s0
	beqz	$a1, .LBB60_31
# %bb.24:                               # %while.body95
                                        #   in Loop: Header=BB60_23 Depth=2
	addi.w	$a1, $a2, -1
	blt	$a3, $a2, .LBB60_23
.LBB60_25:                              #   in Loop: Header=BB60_14 Depth=1
	move	$a1, $zero
.LBB60_26:                              # %while.end96
                                        #   in Loop: Header=BB60_14 Depth=1
	stx.b	$zero, $s4, $a1
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB60_32
.LBB60_27:                              # %for.body103.preheader
                                        #   in Loop: Header=BB60_14 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB60_28:                              # %for.body103
                                        #   Parent Loop BB60_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $a0
	ld.bu	$a0, $a2, 0
	mul.d	$a1, $a1, $s7
	add.w	$a1, $a1, $a3
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB60_28
# %bb.29:                               # %for.end111.loopexit
                                        #   in Loop: Header=BB60_14 Depth=1
	bstrpick.d	$a0, $a1, 30, 0
	b	.LBB60_33
	.p2align	4, , 16
.LBB60_30:                              # %if.then48
                                        #   in Loop: Header=BB60_14 Depth=1
	st.w	$a6, $s8, 80
	b	.LBB60_13
.LBB60_31:                              #   in Loop: Header=BB60_14 Depth=1
	move	$a1, $a2
	stx.b	$zero, $s4, $a1
	ld.bu	$a0, $s4, 0
	bnez	$a0, .LBB60_27
.LBB60_32:                              #   in Loop: Header=BB60_14 Depth=1
	move	$a0, $zero
.LBB60_33:                              # %for.end111
                                        #   in Loop: Header=BB60_14 Depth=1
	mod.wu	$s1, $a0, $s3
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s5, $a0
	beqz	$a0, .LBB60_36
	.p2align	4, , 16
.LBB60_34:                              # %while.body117
                                        #   Parent Loop BB60_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, 1
	beqz	$a0, .LBB60_38
# %bb.35:                               # %if.end126
                                        #   in Loop: Header=BB60_34 Depth=2
	slt	$a0, $a1, $s3
	maskeqz	$s1, $a1, $a0
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s5, $a0
	bnez	$a0, .LBB60_34
.LBB60_36:                              #   in Loop: Header=BB60_14 Depth=1
	alsl.d	$s5, $s1, $s5, 3
	addi.d	$a0, $s1, 1
	st.w	$a0, $s8, 80
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	beqz	$a0, .LBB60_54
# %bb.37:                               # %if.end151
                                        #   in Loop: Header=BB60_14 Depth=1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB60_39
.LBB60_38:                              # %while.end132
                                        #   in Loop: Header=BB60_14 Depth=1
	st.w	$a1, $s8, 80
.LBB60_39:                              # %cleanup156
                                        #   in Loop: Header=BB60_14 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ori	$a4, $zero, 1
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB60_13
.LBB60_40:                              # %for.end162
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 64
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.83)
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$fp, $s1, 0
	addi.d	$a2, $a2, %pc_lo12(.L.str.83)
	maskeqz	$a1, $a2, $a1
	or	$s6, $a1, $a0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beqz	$s2, .LBB60_42
# %bb.41:                               # %if.then167
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	b	.LBB60_43
.LBB60_42:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
.LBB60_43:                              # %if.end170
	ld.d	$a0, $s0, 80
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.105)
	addi.d	$a2, $a2, %pc_lo12(.L.str.105)
	maskeqz	$a1, $a2, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB60_45
# %bb.44:                               # %if.then180
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 2
	b	.LBB60_46
.LBB60_45:
	addi.d	$fp, $fp, 1
.LBB60_46:                              # %if.end183
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s5, .LBB60_51
# %bb.47:                               # %for.body191.preheader
	slt	$a0, $s5, $s3
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$s0, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$s3, $a0, %pc_lo12(.L.str.109)
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	b	.LBB60_49
	.p2align	4, , 16
.LBB60_48:                              # %for.inc205
                                        #   in Loop: Header=BB60_49 Depth=1
	addi.d	$s0, $s0, -1
	addi.w	$s5, $s5, 1
	addi.d	$s2, $s2, 8
	beqz	$s0, .LBB60_51
.LBB60_49:                              # %for.body191
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s2, 0
	beqz	$s6, .LBB60_48
# %bb.50:                               # %if.end197
                                        #   in Loop: Header=BB60_49 Depth=1
	move	$a0, $s7
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB60_48
.LBB60_51:                              # %for.end207
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	ld.w	$a1, $a0, 52
	beqz	$a1, .LBB60_53
# %bb.52:                               # %if.then210
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
.LBB60_53:                              # %if.end215
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1
	st.w	$a0, $s1, 0
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
.LBB60_54:                              # %if.then34
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a0, $a0, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	print_stack_union, .Lfunc_end60-print_stack_union
                                        # -- End function
	.globl	ReportTable                     # -- Begin function ReportTable
	.p2align	5
	.type	ReportTable,@function
ReportTable:                            # @ReportTable
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1200
	st.d	$ra, $sp, 1192                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1112                  # 8-byte Folded Spill
	move	$s2, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(tplt_open)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_236
# %bb.1:                                # %if.end
	move	$s8, $a0
	ld.d	$a0, $fp, 248
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB61_3
# %bb.2:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
.LBB61_3:                               # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$s1, $a1, 0
	st.d	$a0, $s6, 248
	beqz	$s1, .LBB61_238
# %bb.4:                                # %if.end5
	ld.d	$a0, $s6, 64
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 108
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, 112
	ld.w	$a3, $s6, 120
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB61_9
# %bb.5:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 28
	ld.w	$fp, $sp, 108
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB61_10
# %bb.6:                                # %for.body.lr.ph
	move	$a3, $s6
	ld.d	$a0, $s6, 256
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	ori	$s0, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s5, $a0, %pc_lo12(.L.str.115)
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB61_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 32
	ldx.d	$a0, $a0, $s0
	ld.d	$a3, $a0, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 28
	addi.d	$s6, $s6, 1
	addi.w	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	blt	$s6, $a0, .LBB61_7
# %bb.8:                                # %for.end.loopexit
	add.d	$fp, $fp, $s3
	b	.LBB61_11
.LBB61_9:                               # %if.end28.critedge
	ld.d	$a0, $s6, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	b	.LBB61_12
.LBB61_10:
	addi.d	$fp, $fp, 1
.LBB61_11:                              # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 1
	st.w	$a0, $sp, 108
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
.LBB61_12:                              # %if.end28
	ld.d	$a0, $s6, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	addi.w	$a1, $a0, 5
	slti	$a0, $a0, 251
	lu12i.w	$a2, 15
	ori	$s0, $a2, 4095
	sltu	$a1, $a1, $s0
	pcalau12i	$a2, %pc_hi20(.L.str.228)
	addi.d	$s3, $a2, %pc_lo12(.L.str.228)
	masknez	$a2, $s3, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.227)
	addi.d	$s4, $a3, %pc_lo12(.L.str.227)
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.226)
	addi.d	$s5, $a2, %pc_lo12(.L.str.226)
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 24
	ld.w	$fp, $sp, 108
	addi.w	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 16
	ld.w	$a1, $s6, 20
	add.w	$a0, $a1, $a0
	addi.w	$a1, $a0, 5
	slti	$a0, $a0, 251
	sltu	$a1, $a1, $s0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 56
	addi.d	$a1, $fp, 3
	st.w	$a1, $sp, 108
	beqz	$a0, .LBB61_14
# %bb.13:                               # %if.then43
	ld.w	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $fp, 4
	st.w	$a0, $sp, 108
.LBB61_14:                              # %if.end47
	addi.d	$a2, $sp, 108
	move	$a0, $s1
	move	$a1, $s6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(print_stack_union)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, 104
	ld.w	$s0, $sp, 108
	beqz	$a2, .LBB61_16
# %bb.15:                               # %if.then51
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB61_17
.LBB61_16:                              # %if.else55
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB61_17:                              # %if.end58
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s0, 3
	st.w	$fp, $sp, 108
	beqz	$s2, .LBB61_19
# %bb.18:                               # %if.then62
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a0, $a0, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s0, 4
	st.w	$fp, $sp, 108
.LBB61_19:                              # %if.end65
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 64
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ld.d	$s4, $a2, 72
	pcalau12i	$a2, %pc_hi20(.L.str.83)
	addi.d	$a2, $a2, %pc_lo12(.L.str.83)
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	beqz	$s4, .LBB61_26
# %bb.20:                               # %land.lhs.true
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB61_26
# %bb.21:                               # %if.then73
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s0, $a0, 0
	ori	$s7, $zero, 1
	blt	$s0, $s7, .LBB61_32
# %bb.22:                               # %land.rhs.lr.ph
	move	$s5, $a0
	addi.d	$s6, $s4, -1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	move	$s0, $s5
	.p2align	4, , 16
.LBB61_23:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $s0, 0
	ldx.b	$a3, $s6, $a2
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB61_28
# %bb.24:                               # %while.body
                                        #   in Loop: Header=BB61_23 Depth=1
	addi.d	$s0, $s0, -1
	blt	$s7, $a2, .LBB61_23
.LBB61_25:
	move	$s0, $zero
	b	.LBB61_32
.LBB61_26:                              # %if.else135
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a1, $a0, %pc_lo12(.L.str.127)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a1, $a0, %pc_lo12(.L.str.128)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$a1, $a0, %pc_lo12(.L.str.129)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a1, $a0, %pc_lo12(.L.str.130)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB61_33
.LBB61_27:                              # %if.then146
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 5
	b	.LBB61_34
.LBB61_28:                              # %land.rhs92.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 95
	ori	$a2, $zero, 1
	b	.LBB61_30
	.p2align	4, , 16
.LBB61_29:                              # %while.body112
                                        #   in Loop: Header=BB61_30 Depth=1
	addi.d	$s0, $s0, -1
	bge	$a2, $a3, .LBB61_25
.LBB61_30:                              # %land.rhs92
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $s0, 0
	ldx.b	$a4, $s6, $a3
	beq	$a4, $a1, .LBB61_29
# %bb.31:                               # %land.rhs92
                                        #   in Loop: Header=BB61_30 Depth=1
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a0, $a4
	andi	$a4, $a4, 8
	bnez	$a4, .LBB61_29
.LBB61_32:                              # %while.end114
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s1
	move	$a2, $s3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $s4, 72
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a1, $a0, %pc_lo12(.L.str.124)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 72
	addi.w	$s0, $s0, 0
	add.d	$a4, $a3, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 72
	add.d	$a3, $a0, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB61_27
.LBB61_33:
	addi.d	$fp, $fp, 4
.LBB61_34:                              # %if.end149
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a2, $s0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.131)
	addi.d	$a1, $a0, %pc_lo12(.L.str.131)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 20
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a1, $a0, %pc_lo12(.L.str.132)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.d	$a0, $s0, 48
	ld.w	$a1, $a0, 52
	addi.d	$s0, $fp, 2
	st.w	$s0, $sp, 108
	beqz	$a1, .LBB61_36
# %bb.35:                               # %if.then157
	ld.w	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a1, $a0, %pc_lo12(.L.str.133)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	ld.w	$a2, $a0, 80
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a1, $a0, %pc_lo12(.L.str.134)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s0, $fp, 4
	st.w	$s0, $sp, 108
.LBB61_36:                              # %if.end165
	ld.w	$a0, $a2, 276
	beqz	$a0, .LBB61_38
# %bb.37:                               # %if.then167
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $s0, 1
	st.w	$a0, $sp, 108
.LBB61_38:                              # %if.end170
	ld.d	$a0, $a2, 64
	move	$fp, $a2
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.w	$fp, $fp, 16
	slli.w	$s2, $fp, 1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB61_239
# %bb.39:                               # %for.cond180.preheader
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB61_42
# %bb.40:                               # %for.body184.lr.ph
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB61_41:                              # %for.body184
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a3, 32
	st.d	$a3, $a2, -16
	st.w	$a0, $a2, -8
	ld.w	$a5, $a3, 36
	st.w	$a4, $a2, -4
	st.d	$a3, $a2, 0
	st.w	$zero, $a2, 8
	st.w	$a5, $a2, 12
	addi.d	$fp, $fp, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 32
	bnez	$fp, .LBB61_41
.LBB61_42:                              # %for.end214
	pcalau12i	$a0, %pc_hi20(axset_compare)
	addi.d	$a3, $a0, %pc_lo12(axset_compare)
	ori	$a2, $zero, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_240
# %bb.43:                               # %for.cond219.preheader
	move	$s6, $a0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 16
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $fp, .LBB61_72
# %bb.44:                               # %land.rhs224.lr.ph
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s8, $zero, 3
	pcalau12i	$a0, %pc_hi20(.LJTI61_1)
	addi.d	$s7, $a0, %pc_lo12(.LJTI61_1)
	b	.LBB61_47
	.p2align	4, , 16
.LBB61_45:                              # %for.end258
                                        #   in Loop: Header=BB61_47 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(acttab_insert)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 40
	slt	$a1, $a0, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$s2, $a1, $a2
	slt	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a0, $a0, $a1
	or	$s4, $a0, $a2
.LBB61_46:                              # %for.inc319
                                        #   in Loop: Header=BB61_47 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 16
	addi.d	$s3, $s3, 1
	slli.w	$a0, $a0, 1
	bge	$s3, $a0, .LBB61_71
.LBB61_47:                              # %land.rhs224
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_51 Depth 2
                                        #     Child Loop BB61_62 Depth 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $s3, $a0, 4
	ld.w	$a1, $a0, 12
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB61_71
# %bb.48:                               # %for.body231
                                        #   in Loop: Header=BB61_47 Depth=1
	ld.d	$fp, $a0, 0
	ld.w	$a0, $a0, 8
	ld.d	$s5, $fp, 24
	beqz	$a0, .LBB61_59
# %bb.49:                               # %for.cond241.preheader
                                        #   in Loop: Header=BB61_47 Depth=1
	bnez	$s5, .LBB61_51
	b	.LBB61_45
	.p2align	4, , 16
.LBB61_50:                              # %cleanup
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.d	$s5, $s5, 24
	beqz	$s5, .LBB61_45
.LBB61_51:                              # %for.body243
                                        #   Parent Loop BB61_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a3, 28
	bge	$a1, $a0, .LBB61_50
# %bb.52:                               # %if.end249
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $s5, 8
	bltu	$s8, $a0, .LBB61_50
# %bb.53:                               # %if.end249
                                        #   in Loop: Header=BB61_51 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI61_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI61_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB61_54:                              # %sw.bb.i
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a2, $a0, 16
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_55:                              # %sw.bb1.i
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a0, $a0, 72
	ld.w	$a2, $a3, 16
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_56:                              # %sw.bb3.i
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_58
	b	.LBB61_50
.LBB61_57:                              # %sw.bb6.i
                                        #   in Loop: Header=BB61_51 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1
	bltz	$a2, .LBB61_50
.LBB61_58:                              # %if.end254
                                        #   in Loop: Header=BB61_51 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(acttab_action)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_50
	.p2align	4, , 16
.LBB61_59:                              # %for.cond274.preheader
                                        #   in Loop: Header=BB61_47 Depth=1
	bnez	$s5, .LBB61_62
.LBB61_60:                              # %for.end304
                                        #   in Loop: Header=BB61_47 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(acttab_insert)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 44
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slt	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$s0, $a0, $a2
	b	.LBB61_46
	.p2align	4, , 16
.LBB61_61:                              # %cleanup299
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.d	$s5, $s5, 24
	beqz	$s5, .LBB61_60
.LBB61_62:                              # %for.body276
                                        #   Parent Loop BB61_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a3, 28
	blt	$a1, $a0, .LBB61_61
# %bb.63:                               # %if.end284
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 24
	beq	$a1, $a0, .LBB61_61
# %bb.64:                               # %if.end291
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $s5, 8
	bltu	$s8, $a0, .LBB61_61
# %bb.65:                               # %if.end291
                                        #   in Loop: Header=BB61_62 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s7, $a0
	add.d	$a0, $s7, $a0
	jr	$a0
.LBB61_66:                              # %sw.bb.i540
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a2, $a0, 16
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_67:                              # %sw.bb1.i535
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.d	$a0, $s5, 16
	ld.w	$a0, $a0, 72
	ld.w	$a2, $a3, 16
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_68:                              # %sw.bb3.i531
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.w	$a2, $a2, $a0
	bgez	$a2, .LBB61_70
	b	.LBB61_61
.LBB61_69:                              # %sw.bb6.i525
                                        #   in Loop: Header=BB61_62 Depth=2
	ld.w	$a0, $a3, 16
	ld.w	$a2, $a3, 20
	add.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1
	bltz	$a2, .LBB61_61
.LBB61_70:                              # %if.end296
                                        #   in Loop: Header=BB61_62 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(acttab_action)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_61
.LBB61_71:                              # %for.end321.loopexit
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $s2, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB61_73
.LBB61_72:
	addi.w	$a0, $zero, -1
	move	$s0, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.LBB61_73:                              # %for.end321
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.136)
	addi.d	$a0, $a0, %pc_lo12(.L.str.136)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	ld.w	$s4, $s6, 0
	addi.d	$s3, $a0, 1
	st.w	$s3, $sp, 108
	addi.d	$s0, $s4, -1
	blt	$s4, $fp, .LBB61_85
# %bb.74:                               # %for.body328.lr.ph
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 8
	move	$s5, $zero
	move	$s6, $zero
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s0, $s0, 31, 0
	ld.w	$a1, $sp, 108
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s2, $a0, 4
	addi.w	$s7, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$fp, $a0, %pc_lo12(.L.str.138)
	move	$s8, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	b	.LBB61_77
	.p2align	4, , 16
.LBB61_75:                              # %if.then352
                                        #   in Loop: Header=BB61_77 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	move	$s6, $zero
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
.LBB61_76:                              # %if.end357
                                        #   in Loop: Header=BB61_77 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beqz	$s8, .LBB61_84
.LBB61_77:                              # %for.body328
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 0
	bge	$s7, $a2, .LBB61_82
# %bb.78:                               # %if.end340
                                        #   in Loop: Header=BB61_77 Depth=1
	beqz	$s6, .LBB61_83
.LBB61_79:                              # %if.end345
                                        #   in Loop: Header=BB61_77 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	beq	$s6, $a0, .LBB61_75
# %bb.80:                               # %if.end345
                                        #   in Loop: Header=BB61_77 Depth=1
	beqz	$s0, .LBB61_75
# %bb.81:                               # %if.else355
                                        #   in Loop: Header=BB61_77 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB61_76
	.p2align	4, , 16
.LBB61_82:                              # %if.then335
                                        #   in Loop: Header=BB61_77 Depth=1
	ld.w	$a0, $a1, 16
	ld.w	$a1, $a1, 20
	add.d	$a0, $a0, $a1
	addi.w	$a2, $a0, 2
	bnez	$s6, .LBB61_79
.LBB61_83:                              # %if.then343
                                        #   in Loop: Header=BB61_77 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$fp, $s7
	move	$s7, $s3
	move	$s3, $a2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$s3, $s7
	move	$s7, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB61_79
.LBB61_84:                              # %for.end360.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 108
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ori	$fp, $zero, 1
.LBB61_85:                              # %for.end360
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$a0, $a0, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s3, 2
	st.w	$s7, $sp, 108
	blt	$s4, $fp, .LBB61_97
# %bb.86:                               # %for.body368.lr.ph
	move	$s5, $zero
	move	$s3, $zero
	ld.d	$fp, $s6, 8
	bstrpick.d	$s0, $s0, 31, 0
	ld.w	$a0, $sp, 108
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s2, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s6, $a0, %pc_lo12(.L.str.138)
	ori	$s8, $zero, 9
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_89
	.p2align	4, , 16
.LBB61_87:                              # %if.then389
                                        #   in Loop: Header=BB61_89 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	move	$s3, $zero
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
.LBB61_88:                              # %if.end394
                                        #   in Loop: Header=BB61_89 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, -1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$s4, .LBB61_96
.LBB61_89:                              # %for.body368
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 0
	bge	$s2, $a2, .LBB61_92
# %bb.90:                               # %if.end376
                                        #   in Loop: Header=BB61_89 Depth=1
	beqz	$s3, .LBB61_93
.LBB61_91:                              # %if.end381
                                        #   in Loop: Header=BB61_89 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bne	$s3, $s8, .LBB61_94
	b	.LBB61_87
	.p2align	4, , 16
.LBB61_92:                              # %if.then374
                                        #   in Loop: Header=BB61_89 Depth=1
	ld.w	$a2, $a0, 24
	bnez	$s3, .LBB61_91
.LBB61_93:                              # %if.then379
                                        #   in Loop: Header=BB61_89 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$s8, $s6
	move	$s6, $s2
	move	$s2, $s7
	move	$s7, $a2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	move	$s7, $s2
	move	$s2, $s6
	move	$s6, $s8
	ori	$s8, $zero, 9
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s3, $s8, .LBB61_87
.LBB61_94:                              # %if.end381
                                        #   in Loop: Header=BB61_89 Depth=1
	beqz	$s0, .LBB61_87
# %bb.95:                               # %if.else392
                                        #   in Loop: Header=BB61_89 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB61_88
.LBB61_96:                              # %for.end397.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 108
.LBB61_97:                              # %for.end397
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$a1, $a0, %pc_lo12(.L.str.141)
	move	$a0, $s1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 16
	lu12i.w	$a1, -524288
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	blt	$s2, $s0, .LBB61_103
# %bb.98:                               # %land.rhs407.lr.ph
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, -8
	ori	$a1, $a1, 1
	.p2align	4, , 16
.LBB61_99:                              # %land.rhs407
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $s2
	slli.d	$a3, $s2, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 40
	bne	$a3, $a1, .LBB61_102
# %bb.100:                              # %while.body416
                                        #   in Loop: Header=BB61_99 Depth=1
	addi.w	$s2, $a2, -1
	blt	$s0, $a2, .LBB61_99
# %bb.101:
	move	$s2, $zero
	b	.LBB61_103
.LBB61_102:
	move	$s2, $a2
.LBB61_103:                             # %if.else6.i
	addi.w	$s5, $s2, -1
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a1, $a0, %pc_lo12(.L.str.142)
	move	$a0, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s6, $zero, -128
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sltu	$a0, $s6, $a2
	slti	$a1, $fp, 128
	lu12i.w	$s4, -8
	sltu	$a2, $s4, $a2
	lu12i.w	$a3, 7
	ori	$s8, $a3, 4095
	slt	$a3, $fp, $s8
	pcalau12i	$a4, %pc_hi20(.L.str.231)
	addi.d	$fp, $a4, %pc_lo12(.L.str.231)
	masknez	$a4, $fp, $a2
	pcalau12i	$a5, %pc_hi20(.L.str.230)
	addi.d	$a5, $a5, %pc_lo12(.L.str.230)
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $fp, $a3
	or	$a2, $a2, $a3
	masknez	$a3, $a2, $a1
	masknez	$a2, $a2, $a0
	pcalau12i	$a4, %pc_hi20(.L.str.229)
	addi.d	$a4, $a4, %pc_lo12(.L.str.229)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	or	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$a1, $a0, %pc_lo12(.L.str.143)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s7, 4
	blt	$s2, $s0, .LBB61_112
# %bb.104:                              # %for.body429.preheader
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $zero
	move	$s4, $zero
	move	$fp, $zero
	bstrpick.d	$a0, $s5, 31, 0
	ld.w	$s7, $sp, 108
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$s2, $s2, 3
	lu12i.w	$a0, -524288
	ori	$s8, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s6, $a0, %pc_lo12(.L.str.138)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_106
	.p2align	4, , 16
.LBB61_105:                             # %if.then451
                                        #   in Loop: Header=BB61_106 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s3, 1
	move	$fp, $zero
	move	$s3, $s7
	addi.d	$s0, $s0, 8
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s2, $s0, .LBB61_111
.LBB61_106:                             # %for.body429
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	ld.w	$s5, $a0, 40
	bnez	$fp, .LBB61_108
# %bb.107:                              # %if.then441
                                        #   in Loop: Header=BB61_106 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_108:                             # %if.end443
                                        #   in Loop: Header=BB61_106 Depth=1
	xor	$a0, $s5, $s8
	sltui	$a0, $a0, 1
	masknez	$a1, $s5, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	beq	$fp, $a0, .LBB61_105
# %bb.109:                              # %if.end443
                                        #   in Loop: Header=BB61_106 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $s0, .LBB61_105
# %bb.110:                              # %if.else454
                                        #   in Loop: Header=BB61_106 Depth=1
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s2, $s0, .LBB61_106
.LBB61_111:                             # %for.end459.loopexit
	st.w	$s7, $sp, 108
	lu12i.w	$s7, -524288
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	lu12i.w	$s4, -8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	b	.LBB61_113
.LBB61_112:
	lu12i.w	$s7, -524288
.LBB61_113:                             # %for.end459
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$a1, $a0, %pc_lo12(.L.str.144)
	move	$a0, $s1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s5, $a0, 16
	blt	$s5, $s0, .LBB61_119
# %bb.114:                              # %land.rhs469.lr.ph
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, -8
	ori	$a1, $s7, 1
	.p2align	4, , 16
.LBB61_115:                             # %land.rhs469
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $s5
	slli.d	$a3, $s5, 3
	ldx.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 44
	bne	$a3, $a1, .LBB61_118
# %bb.116:                              # %while.body478
                                        #   in Loop: Header=BB61_115 Depth=1
	addi.w	$s5, $a2, -1
	blt	$s0, $a2, .LBB61_115
# %bb.117:
	move	$s5, $zero
	b	.LBB61_119
.LBB61_118:
	move	$s5, $a2
.LBB61_119:                             # %if.else6.i553
	addi.w	$s7, $s5, -1
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$a1, $a0, %pc_lo12(.L.str.145)
	move	$a0, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	sltu	$a0, $s6, $a2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	slti	$a1, $a3, 128
	sltu	$a2, $s4, $a2
	slt	$a3, $a3, $s8
	masknez	$a4, $fp, $a2
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	maskeqz	$a2, $a2, $a3
	masknez	$a3, $fp, $a3
	or	$a2, $a2, $a3
	masknez	$a3, $a2, $a1
	masknez	$a2, $a2, $a0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a2
	maskeqz	$a0, $a0, $a1
	or	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a1, $a0, %pc_lo12(.L.str.146)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s3, 4
	blt	$s5, $s0, .LBB61_128
# %bb.120:                              # %for.body491.preheader
	move	$s0, $zero
	move	$s3, $zero
	move	$s4, $zero
	bstrpick.d	$a0, $s7, 31, 0
	ld.w	$s8, $sp, 108
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$s6, $s5, 3
	lu12i.w	$a0, -524288
	ori	$s7, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s5, $a0, %pc_lo12(.L.str.138)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_122
	.p2align	4, , 16
.LBB61_121:                             # %if.then514
                                        #   in Loop: Header=BB61_122 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s2, 1
	move	$s4, $zero
	move	$s2, $s8
	addi.d	$s0, $s0, 8
	addi.w	$s3, $s3, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s6, $s0, .LBB61_127
.LBB61_122:                             # %for.body491
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	ld.w	$fp, $a0, 44
	bnez	$s4, .LBB61_124
# %bb.123:                              # %if.then504
                                        #   in Loop: Header=BB61_122 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_124:                             # %if.end506
                                        #   in Loop: Header=BB61_122 Depth=1
	xor	$a0, $fp, $s7
	sltui	$a0, $a0, 1
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 9
	beq	$s4, $a0, .LBB61_121
# %bb.125:                              # %if.end506
                                        #   in Loop: Header=BB61_122 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a0, $s0, .LBB61_121
# %bb.126:                              # %if.else517
                                        #   in Loop: Header=BB61_122 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	addi.w	$s3, $s3, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bne	$s6, $s0, .LBB61_122
.LBB61_127:                             # %for.end522.loopexit
	st.w	$s8, $sp, 108
.LBB61_128:                             # %for.end522
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$a0, $a0, %pc_lo12(.L.str.147)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 16
	addi.d	$fp, $s2, 2
	blt	$a0, $s0, .LBB61_136
# %bb.129:                              # %for.body531.lr.ph
	move	$s0, $zero
	move	$s2, $zero
	move	$s8, $zero
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$s5, $a1, 3
	slli.d	$s6, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$s4, $a0, %pc_lo12(.L.str.138)
	ori	$s7, $zero, 9
	b	.LBB61_131
	.p2align	4, , 16
.LBB61_130:                             # %if.then547
                                        #   in Loop: Header=BB61_131 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	addi.w	$s2, $s2, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$s6, $s0, .LBB61_136
.LBB61_131:                             # %for.body531
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	ldx.d	$s3, $a0, $s0
	bnez	$s8, .LBB61_133
# %bb.132:                              # %if.then537
                                        #   in Loop: Header=BB61_131 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_133:                             # %if.end539
                                        #   in Loop: Header=BB61_131 Depth=1
	ld.w	$a2, $s3, 48
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beq	$s8, $s7, .LBB61_130
# %bb.134:                              # %if.end539
                                        #   in Loop: Header=BB61_131 Depth=1
	beq	$s5, $s0, .LBB61_130
# %bb.135:                              # %if.else550
                                        #   in Loop: Header=BB61_131 Depth=1
	addi.w	$s8, $s8, 1
	addi.d	$s0, $s0, 8
	addi.w	$s2, $s2, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bne	$s6, $s0, .LBB61_131
.LBB61_136:                             # %for.end555
	pcalau12i	$a0, %pc_hi20(.L.str.139)
	addi.d	$a0, $a0, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	addi.d	$a1, $fp, 1
	st.w	$a1, $sp, 108
	addi.d	$a3, $sp, 108
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 276
	beqz	$a0, .LBB61_144
# %bb.137:                              # %for.cond562.preheader
	ld.w	$a0, $a1, 28
	blt	$a0, $s0, .LBB61_144
# %bb.138:                              # %for.body566.lr.ph
	move	$fp, $zero
	move	$s5, $zero
	ld.w	$s4, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$s2, $a0, %pc_lo12(.L.str.148)
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$s3, $a0, %pc_lo12(.L.str.149)
	b	.LBB61_141
	.p2align	4, , 16
.LBB61_139:                             # %if.else575
                                        #   in Loop: Header=BB61_141 Depth=1
	ld.w	$a2, $a1, 8
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB61_140:                             # %if.end582
                                        #   in Loop: Header=BB61_141 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 28
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 1
	addi.d	$fp, $fp, 8
	bge	$s5, $a0, .LBB61_143
.LBB61_141:                             # %for.body566
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 32
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 24
	bnez	$a1, .LBB61_139
# %bb.142:                              # %if.then572
                                        #   in Loop: Header=BB61_141 Depth=1
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB61_140
.LBB61_143:                             # %for.cond562.if.end587.loopexit_crit_edge
	st.w	$s4, $sp, 108
.LBB61_144:                             # %if.end587
	ld.d	$a0, $a1, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 24
	blt	$a0, $s0, .LBB61_151
# %bb.145:                              # %for.body593.lr.ph
	move	$s4, $zero
	move	$s0, $zero
	ld.w	$fp, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$s2, $a0, %pc_lo12(.L.str.150)
	pcalau12i	$a0, %pc_hi20(.L.str.151)
	addi.d	$s3, $a0, %pc_lo12(.L.str.151)
	ori	$s5, $zero, 3
	b	.LBB61_147
	.p2align	4, , 16
.LBB61_146:                             # %for.inc608
                                        #   in Loop: Header=BB61_147 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 24
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	bge	$s0, $a0, .LBB61_149
.LBB61_147:                             # %for.body593
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 32
	ldx.d	$a0, $a0, $s4
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 112
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 112
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	andi	$a0, $s0, 3
	bne	$a0, $s5, .LBB61_146
# %bb.148:                              # %if.then604
                                        #   in Loop: Header=BB61_147 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	b	.LBB61_146
.LBB61_149:                             # %for.end610
	andi	$a0, $s0, 3
	st.w	$fp, $sp, 108
	beqz	$a0, .LBB61_151
# %bb.150:                              # %if.then614
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
.LBB61_151:                             # %if.end617
	ld.d	$a0, $a1, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB61_162
# %bb.152:                              # %for.body621.preheader
	move	$s2, $zero
	ld.w	$a1, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$a0, $a0, %pc_lo12(.L.str.152)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s5, $a0, %pc_lo12(.L.str.57)
	ori	$s0, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s6, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB61_154
	.p2align	4, , 16
.LBB61_153:                             # %writeRuleText.exit
                                        #   in Loop: Header=BB61_154 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 88
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	addi.w	$s2, $s2, 1
	beqz	$fp, .LBB61_161
.LBB61_154:                             # %for.body621
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_157 Depth 2
                                        #       Child Loop BB61_160 Depth 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB61_153
# %bb.155:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB61_154 Depth=1
	move	$s3, $zero
	b	.LBB61_157
	.p2align	4, , 16
.LBB61_156:                             # %if.end.i572
                                        #   in Loop: Header=BB61_157 Depth=2
	ld.w	$a0, $fp, 24
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB61_153
.LBB61_157:                             # %for.body.i
                                        #   Parent Loop BB61_154 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_160 Depth 3
	ld.d	$a0, $fp, 32
	slli.d	$a1, $s3, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	bne	$a0, $s0, .LBB61_156
# %bb.158:                              # %for.cond4.preheader.i
                                        #   in Loop: Header=BB61_157 Depth=2
	ld.w	$a0, $s4, 84
	blt	$a0, $s0, .LBB61_156
# %bb.159:                              # %for.body6.lr.ph.i
                                        #   in Loop: Header=BB61_157 Depth=2
	ori	$s7, $zero, 1
	ori	$s8, $zero, 8
	.p2align	4, , 16
.LBB61_160:                             # %for.body6.i
                                        #   Parent Loop BB61_154 Depth=1
                                        #     Parent Loop BB61_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 88
	ldx.d	$a0, $a0, $s8
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 84
	addi.d	$s7, $s7, 1
	addi.d	$s8, $s8, 8
	blt	$s7, $a0, .LBB61_160
	b	.LBB61_156
.LBB61_161:                             # %for.end628.loopexit
	st.w	$a1, $sp, 108
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
.LBB61_162:                             # %for.end628
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 208
	ld.w	$a0, $a3, 24
	beqz	$a1, .LBB61_174
# %bb.163:                              # %for.end628
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB61_174
# %bb.164:                              # %for.body636.lr.ph
	ld.w	$fp, $sp, 108
	move	$s0, $zero
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$s2, $a1, %pc_lo12(.L.str.154)
	b	.LBB61_166
	.p2align	4, , 16
.LBB61_165:                             # %cleanup652
                                        #   in Loop: Header=BB61_166 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bge	$s3, $a0, .LBB61_169
.LBB61_166:                             # %for.body636
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a3, 32
	ldx.d	$a1, $a1, $s0
	beqz	$a1, .LBB61_165
# %bb.167:                              # %lor.lhs.false643
                                        #   in Loop: Header=BB61_166 Depth=1
	ld.w	$a2, $a1, 12
	bnez	$a2, .LBB61_165
# %bb.168:                              # %if.end647
                                        #   in Loop: Header=BB61_166 Depth=1
	ld.w	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	addi.d	$fp, $fp, 1
	b	.LBB61_165
.LBB61_169:                             # %for.cond658.preheader
	ori	$a1, $zero, 1
	st.w	$fp, $sp, 108
	blt	$a0, $a1, .LBB61_174
# %bb.170:                              # %land.rhs662.lr.ph
	ld.d	$a1, $a3, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB61_171:                             # %land.rhs662
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	ld.w	$a3, $a3, 12
	beqz	$a3, .LBB61_237
# %bb.172:                              # %for.inc671
                                        #   in Loop: Header=BB61_171 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB61_171
# %bb.173:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB61_174:                             # %if.end684
	ld.d	$a1, $a3, 224
	beqz	$a1, .LBB61_186
.LBB61_175:                             # %for.cond687.preheader
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB61_204
# %bb.176:                              # %for.body691.lr.ph
	ld.w	$s0, $sp, 108
	move	$s3, $zero
	move	$s4, $zero
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(.L.str.154)
	addi.d	$s2, $a2, %pc_lo12(.L.str.154)
	b	.LBB61_179
.LBB61_177:                             # %if.end710
                                        #   in Loop: Header=BB61_179 Depth=1
	ld.d	$a3, $s5, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 24
	addi.d	$s0, $s0, 1
	move	$a1, $s5
	.p2align	4, , 16
.LBB61_178:                             # %cleanup715
                                        #   in Loop: Header=BB61_179 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a0, .LBB61_184
.LBB61_179:                             # %for.body691
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a3, 32
	ldx.d	$s5, $a2, $s3
	beqz	$s5, .LBB61_178
# %bb.180:                              # %lor.lhs.false698
                                        #   in Loop: Header=BB61_179 Depth=1
	ld.w	$a2, $s5, 12
	beqz	$a2, .LBB61_178
# %bb.181:                              # %lor.lhs.false702
                                        #   in Loop: Header=BB61_179 Depth=1
	ld.w	$a2, $s5, 8
	blt	$a2, $fp, .LBB61_178
# %bb.182:                              # %lor.lhs.false706
                                        #   in Loop: Header=BB61_179 Depth=1
	ld.d	$a3, $s5, 56
	beqz	$a3, .LBB61_177
# %bb.183:                              #   in Loop: Header=BB61_179 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_178
.LBB61_184:                             # %for.end720
	st.w	$s0, $sp, 108
	beqz	$a1, .LBB61_186
# %bb.185:                              # %if.then723
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a3, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
.LBB61_186:                             # %if.end727
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB61_204
# %bb.187:                              # %for.body732.lr.ph
	move	$s4, $zero
	ori	$s3, $zero, 8
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$a1, $a1, %pc_lo12(.L.str.154)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.155)
	addi.d	$s0, $a1, %pc_lo12(.L.str.155)
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB61_191
.LBB61_188:                             # %for.end790.loopexit
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $sp, 108
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
.LBB61_189:                             # %for.end790
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.d	$a0, $a3, 32
	ldx.d	$a1, $a0, $s6
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $sp, 108
	ld.w	$a0, $a3, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
.LBB61_190:                             # %cleanup796
                                        #   in Loop: Header=BB61_191 Depth=1
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 1
	bge	$s4, $a0, .LBB61_204
.LBB61_191:                             # %for.body732
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_198 Depth 2
	ld.d	$a1, $a3, 32
	slli.d	$s6, $s4, 3
	ldx.d	$s7, $a1, $s6
	addi.d	$s4, $s4, 1
	beqz	$s7, .LBB61_190
# %bb.192:                              # %lor.lhs.false739
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.w	$a1, $s7, 12
	beqz	$a1, .LBB61_190
# %bb.193:                              # %lor.lhs.false743
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.d	$a1, $s7, 56
	beqz	$a1, .LBB61_190
# %bb.194:                              # %if.end748
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.w	$a2, $s7, 8
	ld.d	$a3, $s7, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 108
	ld.w	$s2, $a3, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	bge	$s4, $s2, .LBB61_189
# %bb.195:                              # %for.body758.lr.ph
                                        #   in Loop: Header=BB61_191 Depth=1
	ld.w	$a0, $sp, 108
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s8, $fp
	move	$s5, $s3
	b	.LBB61_198
.LBB61_196:                             # %if.then781
                                        #   in Loop: Header=BB61_198 Depth=2
	ld.w	$a2, $s0, 8
	ld.d	$a3, $s0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s2, $a3, 24
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $s0, 56
	.p2align	4, , 16
.LBB61_197:                             # %if.end787
                                        #   in Loop: Header=BB61_198 Depth=2
	addi.w	$s8, $s8, 1
	addi.d	$s5, $s5, 8
	bge	$s8, $s2, .LBB61_188
.LBB61_198:                             # %for.body758
                                        #   Parent Loop BB61_191 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 32
	ldx.d	$s0, $a0, $s5
	beqz	$s0, .LBB61_197
# %bb.199:                              # %land.lhs.true763
                                        #   in Loop: Header=BB61_198 Depth=2
	ld.w	$a0, $s0, 12
	beqz	$a0, .LBB61_197
# %bb.200:                              # %land.lhs.true767
                                        #   in Loop: Header=BB61_198 Depth=2
	ld.d	$a1, $s0, 56
	beqz	$a1, .LBB61_197
# %bb.201:                              # %land.lhs.true770
                                        #   in Loop: Header=BB61_198 Depth=2
	ld.w	$a0, $s0, 80
	ld.w	$a2, $s7, 80
	bne	$a0, $a2, .LBB61_197
# %bb.202:                              # %land.lhs.true775
                                        #   in Loop: Header=BB61_198 Depth=2
	ld.d	$a0, $s7, 56
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB61_196
# %bb.203:                              #   in Loop: Header=BB61_198 Depth=2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	b	.LBB61_197
.LBB61_204:                             # %for.end801
	ld.d	$a0, $a3, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 144
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 152
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB61_208
# %bb.205:                              # %for.body807.preheader
	ld.w	$s0, $sp, 108
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$s2, $a0, %pc_lo12(.L.str.156)
	.p2align	4, , 16
.LBB61_206:                             # %for.body807
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a0, 8
	ld.w	$a3, $fp, 24
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 88
	addi.d	$s0, $s0, 1
	bnez	$fp, .LBB61_206
# %bb.207:                              # %for.end813.loopexit
	st.w	$s0, $sp, 108
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
.LBB61_208:                             # %for.end813
	ld.d	$a0, $a0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB61_235
	.p2align	4, , 16
.LBB61_209:                             # %for.body818
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(translate_code)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $s2, 88
	bnez	$s2, .LBB61_209
# %bb.210:                              # %for.cond823.preheader
	ld.d	$s2, $s0, 8
	beqz	$s2, .LBB61_235
# %bb.211:
	pcalau12i	$a0, %pc_hi20(.L.str.157)
	addi.d	$a0, $a0, %pc_lo12(.L.str.157)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s5, $a0, %pc_lo12(.L.str.57)
	ori	$s8, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$s6, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a0, $a0, %pc_lo12(.L.str.159)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB61_215
	.p2align	4, , 16
.LBB61_212:                             # %for.end851.loopexit
                                        #   in Loop: Header=BB61_215 Depth=1
	st.w	$a2, $sp, 108
.LBB61_213:                             # %for.end851
                                        #   in Loop: Header=BB61_215 Depth=1
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	move	$a1, $s2
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(emit_code)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
.LBB61_214:                             # %cleanup854
                                        #   in Loop: Header=BB61_215 Depth=1
	ld.d	$s2, $s2, 88
	beqz	$s2, .LBB61_235
.LBB61_215:                             # %for.body825
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_219 Depth 2
                                        #       Child Loop BB61_222 Depth 3
                                        #     Child Loop BB61_227 Depth 2
                                        #       Child Loop BB61_231 Depth 3
                                        #         Child Loop BB61_234 Depth 4
	ld.d	$a0, $s2, 56
	beqz	$a0, .LBB61_214
# %bb.216:                              # %if.end829
                                        #   in Loop: Header=BB61_215 Depth=1
	ld.w	$a2, $s2, 72
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB61_223
# %bb.217:                              # %for.body.lr.ph.i577
                                        #   in Loop: Header=BB61_215 Depth=1
	move	$fp, $zero
	b	.LBB61_219
	.p2align	4, , 16
.LBB61_218:                             # %if.end.i585
                                        #   in Loop: Header=BB61_219 Depth=2
	ld.w	$a0, $s2, 24
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB61_223
.LBB61_219:                             # %for.body.i579
                                        #   Parent Loop BB61_215 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_222 Depth 3
	ld.d	$a0, $s2, 32
	slli.d	$a1, $fp, 3
	ldx.d	$s0, $a0, $a1
	ld.d	$a2, $s0, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	bne	$a0, $s8, .LBB61_218
# %bb.220:                              # %for.cond4.preheader.i588
                                        #   in Loop: Header=BB61_219 Depth=2
	ld.w	$a0, $s0, 84
	blt	$a0, $s8, .LBB61_218
# %bb.221:                              # %for.body6.lr.ph.i591
                                        #   in Loop: Header=BB61_219 Depth=2
	ori	$s3, $zero, 1
	ori	$s4, $zero, 8
	.p2align	4, , 16
.LBB61_222:                             # %for.body6.i593
                                        #   Parent Loop BB61_215 Depth=1
                                        #     Parent Loop BB61_219 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 88
	ldx.d	$a0, $a0, $s4
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 84
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	blt	$s3, $a0, .LBB61_222
	b	.LBB61_218
	.p2align	4, , 16
.LBB61_223:                             # %writeRuleText.exit599
                                        #   in Loop: Header=BB61_215 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	ld.d	$fp, $s2, 88
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
	beqz	$fp, .LBB61_213
# %bb.224:                              # %for.body837.preheader
                                        #   in Loop: Header=BB61_215 Depth=1
	ld.w	$a2, $sp, 108
	b	.LBB61_227
	.p2align	4, , 16
.LBB61_225:                             # %writeRuleText.exit625
                                        #   in Loop: Header=BB61_227 Depth=2
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$zero, $fp, 56
.LBB61_226:                             # %for.inc849
                                        #   in Loop: Header=BB61_227 Depth=2
	ld.d	$fp, $fp, 88
	beqz	$fp, .LBB61_212
.LBB61_227:                             # %for.body837
                                        #   Parent Loop BB61_215 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB61_231 Depth 3
                                        #         Child Loop BB61_234 Depth 4
	ld.d	$a0, $fp, 56
	ld.d	$a1, $s2, 56
	bne	$a0, $a1, .LBB61_226
# %bb.228:                              # %if.then842
                                        #   in Loop: Header=BB61_227 Depth=2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a2, $fp, 72
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB61_225
# %bb.229:                              # %for.body.lr.ph.i603
                                        #   in Loop: Header=BB61_227 Depth=2
	move	$s3, $zero
	b	.LBB61_231
	.p2align	4, , 16
.LBB61_230:                             # %if.end.i611
                                        #   in Loop: Header=BB61_231 Depth=3
	ld.w	$a0, $fp, 24
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB61_225
.LBB61_231:                             # %for.body.i605
                                        #   Parent Loop BB61_215 Depth=1
                                        #     Parent Loop BB61_227 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB61_234 Depth 4
	ld.d	$a0, $fp, 32
	slli.d	$a1, $s3, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$a2, $s4, 0
	move	$a0, $s1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	bne	$a0, $s8, .LBB61_230
# %bb.232:                              # %for.cond4.preheader.i614
                                        #   in Loop: Header=BB61_231 Depth=3
	ld.w	$a0, $s4, 84
	blt	$a0, $s8, .LBB61_230
# %bb.233:                              # %for.body6.lr.ph.i617
                                        #   in Loop: Header=BB61_231 Depth=3
	ori	$s7, $zero, 1
	ori	$s0, $zero, 8
	.p2align	4, , 16
.LBB61_234:                             # %for.body6.i619
                                        #   Parent Loop BB61_215 Depth=1
                                        #     Parent Loop BB61_227 Depth=2
                                        #       Parent Loop BB61_231 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s4, 88
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 84
	addi.d	$s7, $s7, 1
	addi.d	$s0, $s0, 8
	blt	$s7, $a0, .LBB61_234
	b	.LBB61_230
.LBB61_235:                             # %for.end859
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 160
	ld.w	$a3, $s0, 168
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 128
	ld.w	$a3, $s0, 136
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 176
	ld.w	$a3, $s0, 184
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	addi.d	$a3, $sp, 108
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tplt_xfer)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 192
	ld.w	$a3, $s0, 200
	addi.d	$a4, $sp, 108
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tplt_print)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB61_236:                             # %cleanup865
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	ret
.LBB61_237:                             # %if.then677
	ld.d	$a1, $a1, 0
	addi.d	$a3, $sp, 108
	move	$a0, $s1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(emit_destructor_code)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$a0, $a0, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.w	$a1, $sp, 108
	ld.w	$a0, $fp, 24
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 108
	ld.d	$a1, $a3, 224
	bnez	$a1, .LBB61_175
	b	.LBB61_186
.LBB61_238:                             # %if.then3
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 40
	move	$a0, $s8
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1192                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1200
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB61_239:                             # %if.then177
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB61_240:                             # %if.then.i523
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end61:
	.size	ReportTable, .Lfunc_end61-ReportTable
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI61_0:
	.word	.LBB61_54-.LJTI61_0
	.word	.LBB61_57-.LJTI61_0
	.word	.LBB61_55-.LJTI61_0
	.word	.LBB61_56-.LJTI61_0
.LJTI61_1:
	.word	.LBB61_66-.LJTI61_1
	.word	.LBB61_69-.LJTI61_1
	.word	.LBB61_67-.LJTI61_1
	.word	.LBB61_68-.LJTI61_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function axset_compare
	.type	axset_compare,@function
axset_compare:                          # @axset_compare
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 12
	ld.w	$a5, $a1, 12
	addi.w	$a3, $zero, -1
	bge	$a4, $a5, .LBB62_2
.LBB62_1:
	move	$a0, $a3
	ret
.LBB62_2:                               # %if.end
	move	$a2, $a0
	ori	$a0, $zero, 1
	bge	$a5, $a4, .LBB62_4
.LBB62_3:                               # %cleanup
	ret
.LBB62_4:                               # %if.end6
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a1, 8
	blt	$a4, $a5, .LBB62_1
# %bb.5:                                # %if.end10
	blt	$a5, $a4, .LBB62_3
# %bb.6:                                # %if.end15
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a2, 16
	move	$a0, $a3
	blt	$a1, $a2, .LBB62_3
# %bb.7:                                # %if.end20
	slt	$a0, $a2, $a1
	ret
.Lfunc_end62:
	.size	axset_compare, .Lfunc_end62-axset_compare
                                        # -- End function
	.globl	ReportHeader                    # -- Begin function ReportHeader
	.p2align	5
	.type	ReportHeader,@function
ReportHeader:                           # @ReportHeader
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 248
	ld.d	$s1, $fp, 256
	beqz	$a0, .LBB63_2
# %bb.1:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB63_2:                               # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s0, $a0, %pc_lo12(.L.str.113)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 248
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(file_makename)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$s0, $a1, 0
	st.d	$a0, $fp, 248
	beqz	$s0, .LBB63_7
# %bb.3:                                # %for.cond23.preheader
	ld.w	$a0, $fp, 28
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB63_6
# %bb.4:                                # %for.body26.lr.ph
	sltui	$a0, $s1, 1
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$s1, $a0, $a2
	ori	$s2, $zero, 1
	ori	$s4, $zero, 8
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s3, $a0, %pc_lo12(.L.str.115)
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB63_5:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s4
	ld.d	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	blt	$s5, $a0, .LBB63_5
.LBB63_6:                               # %cleanup
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB63_7:                               # %file_open.exit25.thread
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 40
	b	.LBB63_6
.Lfunc_end63:
	.size	ReportHeader, .Lfunc_end63-ReportHeader
                                        # -- End function
	.globl	CompressTables                  # -- Begin function CompressTables
	.p2align	5
	.type	CompressTables,@function
CompressTables:                         # @CompressTables
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 16
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB64_30
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a0
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 9
	b	.LBB64_4
	.p2align	4, , 16
.LBB64_2:                               # %for.end70
                                        #   in Loop: Header=BB64_4 Depth=1
	ld.d	$a0, $s4, 24
	pcaddu18i	$ra, %call36(Action_sort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	st.d	$a0, $s4, 24
.LBB64_3:                               # %for.inc74
                                        #   in Loop: Header=BB64_4 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a1, .LBB64_30
.LBB64_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_9 Depth 2
                                        #       Child Loop BB64_17 Depth 3
                                        #     Child Loop BB64_22 Depth 2
                                        #     Child Loop BB64_27 Depth 2
	ld.d	$a0, $fp, 0
	slli.d	$a2, $s1, 3
	ldx.d	$s4, $a0, $a2
	ld.d	$s6, $s4, 24
	beqz	$s6, .LBB64_3
# %bb.5:                                # %for.body3.preheader
                                        #   in Loop: Header=BB64_4 Depth=1
	move	$a0, $zero
	move	$a2, $zero
	move	$s5, $zero
	move	$a3, $s6
	b	.LBB64_9
.LBB64_6:                               #   in Loop: Header=BB64_9 Depth=2
	ori	$a5, $zero, 1
.LBB64_7:                               # %for.end
                                        #   in Loop: Header=BB64_9 Depth=2
	slt	$a6, $a2, $a5
	masknez	$a7, $s5, $a6
	maskeqz	$a4, $a4, $a6
	or	$s5, $a4, $a7
	masknez	$a2, $a2, $a6
	maskeqz	$a4, $a5, $a6
	or	$a2, $a4, $a2
	.p2align	4, , 16
.LBB64_8:                               # %for.inc34
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a3, $a3, 24
	beqz	$a3, .LBB64_19
.LBB64_9:                               # %for.body3
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_17 Depth 3
	ld.w	$a4, $a3, 8
	beq	$a4, $s2, .LBB64_12
# %bb.10:                               # %for.body3
                                        #   in Loop: Header=BB64_9 Depth=2
	bnez	$a4, .LBB64_8
# %bb.11:                               # %if.end.thread
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $fp, 56
	xor	$a4, $a4, $a5
	sltui	$a4, $a4, 1
	masknez	$a0, $a0, $a4
	maskeqz	$a4, $s0, $a4
	or	$a0, $a4, $a0
	b	.LBB64_8
	.p2align	4, , 16
.LBB64_12:                              # %if.end9
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a4, $a3, 16
	ld.w	$a5, $a4, 16
	bnez	$a5, .LBB64_8
# %bb.13:                               # %if.end9
                                        #   in Loop: Header=BB64_9 Depth=2
	beq	$a4, $s5, .LBB64_8
# %bb.14:                               # %for.cond16.preheader
                                        #   in Loop: Header=BB64_9 Depth=2
	ld.d	$a6, $a3, 24
	beqz	$a6, .LBB64_6
# %bb.15:                               # %for.body18.preheader
                                        #   in Loop: Header=BB64_9 Depth=2
	ori	$a5, $zero, 1
	b	.LBB64_17
	.p2align	4, , 16
.LBB64_16:                              # %for.inc
                                        #   in Loop: Header=BB64_17 Depth=3
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB64_7
.LBB64_17:                              # %for.body18
                                        #   Parent Loop BB64_4 Depth=1
                                        #     Parent Loop BB64_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a6, 8
	bne	$a7, $s2, .LBB64_16
# %bb.18:                               # %if.end22
                                        #   in Loop: Header=BB64_17 Depth=3
	ld.d	$a7, $a6, 16
	xor	$a7, $a7, $a4
	sltui	$a7, $a7, 1
	add.w	$a5, $a5, $a7
	b	.LBB64_16
	.p2align	4, , 16
.LBB64_19:                              # %for.end36
                                        #   in Loop: Header=BB64_4 Depth=1
	blt	$a2, $s0, .LBB64_3
# %bb.20:                               # %for.end36
                                        #   in Loop: Header=BB64_4 Depth=1
	beqz	$a0, .LBB64_22
	b	.LBB64_3
	.p2align	4, , 16
.LBB64_21:                              # %for.inc52
                                        #   in Loop: Header=BB64_22 Depth=2
	ld.d	$s6, $s6, 24
	beqz	$s6, .LBB64_24
.LBB64_22:                              # %for.body44
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 8
	bne	$a0, $s2, .LBB64_21
# %bb.23:                               # %land.lhs.true47
                                        #   in Loop: Header=BB64_22 Depth=2
	ld.d	$a0, $s6, 16
	bne	$a0, $s5, .LBB64_21
	b	.LBB64_25
	.p2align	4, , 16
.LBB64_24:                              #   in Loop: Header=BB64_4 Depth=1
	move	$s6, $zero
.LBB64_25:                              # %for.end54
                                        #   in Loop: Header=BB64_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(Symbol_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	st.d	$a0, $s6, 0
	bnez	$a1, .LBB64_27
	b	.LBB64_2
	.p2align	4, , 16
.LBB64_26:                              # %for.inc68
                                        #   in Loop: Header=BB64_27 Depth=2
	ld.d	$a1, $a1, 24
	beqz	$a1, .LBB64_2
.LBB64_27:                              # %for.body59
                                        #   Parent Loop BB64_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $a1, 8
	bne	$a0, $s2, .LBB64_26
# %bb.28:                               # %land.lhs.true62
                                        #   in Loop: Header=BB64_27 Depth=2
	ld.d	$a0, $a1, 16
	bne	$a0, $s5, .LBB64_26
# %bb.29:                               # %if.then65
                                        #   in Loop: Header=BB64_27 Depth=2
	st.w	$s3, $a1, 8
	b	.LBB64_26
.LBB64_30:                              # %for.end76
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end64:
	.size	CompressTables, .Lfunc_end64-CompressTables
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function ResortStates
.LCPI65_0:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2147483649                      # 0x80000001
	.word	2147483649                      # 0x80000001
	.text
	.globl	ResortStates
	.p2align	5
	.type	ResortStates,@function
ResortStates:                           # @ResortStates
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a1, $a0, 16
	ld.d	$a0, $a0, 0
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB65_21
# %bb.1:                                # %for.body.lr.ph
	ld.w	$a3, $fp, 20
	move	$a2, $zero
	add.w	$a3, $a3, $a1
	addi.w	$a4, $a3, 1
	pcalau12i	$a5, %pc_hi20(.LCPI65_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI65_0)
	ori	$a5, $zero, 3
	pcalau12i	$a6, %pc_hi20(.LJTI65_0)
	addi.d	$a6, $a6, %pc_lo12(.LJTI65_0)
	pcalau12i	$a7, %pc_hi20(.LJTI65_1)
	addi.d	$a7, $a7, %pc_lo12(.LJTI65_1)
	b	.LBB65_3
	.p2align	4, , 16
.LBB65_2:                               # %for.inc20
                                        #   in Loop: Header=BB65_3 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB65_21
.LBB65_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_7 Depth 2
	slli.d	$t0, $a2, 3
	ldx.d	$t0, $a0, $t0
	ld.d	$t1, $t0, 24
	st.w	$a3, $t0, 48
	vst	$vr0, $t0, 32
	beqz	$t1, .LBB65_2
# %bb.4:                                # %for.body4.preheader
                                        #   in Loop: Header=BB65_3 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	b	.LBB65_7
	.p2align	4, , 16
.LBB65_5:                               # %if.then7
                                        #   in Loop: Header=BB65_7 Depth=2
	addi.d	$t2, $t2, 1
	st.w	$t2, $t0, 32
.LBB65_6:                               # %for.inc
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB65_2
.LBB65_7:                               # %for.body4
                                        #   Parent Loop BB65_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t1, 8
	bltu	$a5, $t4, .LBB65_6
# %bb.8:                                # %for.body4
                                        #   in Loop: Header=BB65_7 Depth=2
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $a6, $t4
	add.d	$t6, $a6, $t5
	move	$t5, $a3
	jr	$t6
.LBB65_9:                               # %sw.bb.i
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 16
	ld.w	$t5, $t5, 16
	bgez	$t5, .LBB65_12
	b	.LBB65_6
	.p2align	4, , 16
.LBB65_10:                              # %sw.bb6.i
                                        #   in Loop: Header=BB65_7 Depth=2
	move	$t5, $a4
.LBB65_11:                              # %compute_action.exit
                                        #   in Loop: Header=BB65_7 Depth=2
	bltz	$t5, .LBB65_6
.LBB65_12:                              # %if.then
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 0
	ld.w	$t5, $t5, 8
	ld.w	$t6, $fp, 28
	blt	$t5, $t6, .LBB65_5
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.w	$t6, $fp, 24
	bge	$t5, $t6, .LBB65_16
# %bb.14:                               # %if.then12
                                        #   in Loop: Header=BB65_7 Depth=2
	addi.d	$t3, $t3, 1
	st.w	$t3, $t0, 36
	b	.LBB65_6
	.p2align	4, , 16
.LBB65_15:                              # %sw.bb1.i
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t5, $t1, 16
	ld.w	$t5, $t5, 72
	add.w	$t5, $t5, $a1
	bgez	$t5, .LBB65_12
	b	.LBB65_6
.LBB65_16:                              # %if.else15
                                        #   in Loop: Header=BB65_7 Depth=2
	ldx.w	$t4, $a7, $t4
	add.d	$t5, $a7, $t4
	move	$t4, $a3
	jr	$t5
.LBB65_17:                              # %sw.bb.i48
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t4, $t1, 16
	ld.w	$t4, $t4, 16
	b	.LBB65_20
.LBB65_18:                              # %sw.bb6.i33
                                        #   in Loop: Header=BB65_7 Depth=2
	move	$t4, $a4
	b	.LBB65_20
.LBB65_19:                              # %sw.bb1.i43
                                        #   in Loop: Header=BB65_7 Depth=2
	ld.d	$t4, $t1, 16
	ld.w	$t4, $t4, 72
	add.d	$t4, $t4, $a1
.LBB65_20:                              # %compute_action.exit51
                                        #   in Loop: Header=BB65_7 Depth=2
	st.w	$t4, $t0, 48
	b	.LBB65_6
.LBB65_21:                              # %for.end22
	addi.d	$a0, $a0, 8
	addi.w	$a1, $a1, -1
	pcalau12i	$a2, %pc_hi20(stateResortCompare)
	addi.d	$a3, $a2, %pc_lo12(stateResortCompare)
	ori	$a2, $zero, 8
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	blt	$a1, $s0, .LBB65_29
# %bb.22:                               # %for.body30.lr.ph
	ld.d	$a2, $fp, 0
	bgeu	$a1, $s1, .LBB65_24
# %bb.23:
	move	$a0, $zero
	b	.LBB65_27
.LBB65_24:                              # %vector.ph
	bstrpick.d	$a0, $a1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a2, 32
	ori	$a4, $zero, 7
	move	$a5, $a0
	.p2align	4, , 16
.LBB65_25:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a4, -7
	addi.d	$a7, $a4, -6
	addi.d	$t0, $a4, -5
	addi.d	$t1, $a4, -4
	addi.d	$t2, $a4, -3
	addi.d	$t3, $a4, -2
	addi.d	$t4, $a4, -1
	ld.d	$t5, $a3, -32
	ld.d	$t6, $a3, -24
	ld.d	$t7, $a3, -16
	ld.d	$t8, $a3, -8
	ld.d	$fp, $a3, 0
	ld.d	$s0, $a3, 8
	ld.d	$s1, $a3, 16
	ld.d	$s2, $a3, 24
	st.w	$a6, $t5, 16
	st.w	$a7, $t6, 16
	st.w	$t0, $t7, 16
	st.w	$t1, $t8, 16
	st.w	$t2, $fp, 16
	st.w	$t3, $s0, 16
	st.w	$t4, $s1, 16
	st.w	$a4, $s2, 16
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 64
	bnez	$a5, .LBB65_25
# %bb.26:                               # %middle.block
	beq	$a0, $a1, .LBB65_29
.LBB65_27:                              # %for.body30.preheader
	alsl.d	$a2, $a0, $a2, 3
	sub.d	$a1, $a1, $a0
	.p2align	4, , 16
.LBB65_28:                              # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	st.w	$a0, $a3, 16
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB65_28
.LBB65_29:                              # %for.end36
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end65:
	.size	ResortStates, .Lfunc_end65-ResortStates
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI65_0:
	.word	.LBB65_9-.LJTI65_0
	.word	.LBB65_10-.LJTI65_0
	.word	.LBB65_15-.LJTI65_0
	.word	.LBB65_11-.LJTI65_0
.LJTI65_1:
	.word	.LBB65_17-.LJTI65_1
	.word	.LBB65_18-.LJTI65_1
	.word	.LBB65_19-.LJTI65_1
	.word	.LBB65_20-.LJTI65_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function stateResortCompare
	.type	stateResortCompare,@function
stateResortCompare:                     # @stateResortCompare
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a4, $a2, 36
	ld.w	$a5, $a3, 36
	addi.w	$a1, $zero, -1
	bge	$a4, $a5, .LBB66_2
# %bb.1:
	move	$a0, $a1
	ret
.LBB66_2:                               # %if.end
	ori	$a0, $zero, 1
	bge	$a5, $a4, .LBB66_4
.LBB66_3:                               # %cleanup
	ret
.LBB66_4:                               # %if.end6
	ld.w	$a4, $a2, 32
	ld.w	$a5, $a3, 32
	bge	$a4, $a5, .LBB66_6
# %bb.5:
	move	$a0, $a1
	ret
.LBB66_6:                               # %if.end10
	blt	$a5, $a4, .LBB66_3
# %bb.7:                                # %if.end15
	ld.w	$a2, $a2, 16
	ld.w	$a3, $a3, 16
	move	$a0, $a1
	blt	$a2, $a3, .LBB66_3
# %bb.8:                                # %if.end19
	slt	$a0, $a3, $a2
	ret
.Lfunc_end66:
	.size	stateResortCompare, .Lfunc_end66-stateResortCompare
                                        # -- End function
	.globl	SetSize                         # -- Begin function SetSize
	.p2align	5
	.type	SetSize,@function
SetSize:                                # @SetSize
# %bb.0:                                # %entry
	addi.d	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(size)
	st.w	$a0, $a1, %pc_lo12(size)
	ret
.Lfunc_end67:
	.size	SetSize, .Lfunc_end67-SetSize
                                        # -- End function
	.globl	SetNew                          # -- Begin function SetNew
	.p2align	5
	.type	SetNew,@function
SetNew:                                 # @SetNew
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(size)
	ld.w	$a0, $a0, %pc_lo12(size)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB68_2
# %bb.1:                                # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB68_2:                               # %if.then
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	SetNew, .Lfunc_end68-SetNew
                                        # -- End function
	.globl	SetFree                         # -- Begin function SetFree
	.p2align	5
	.type	SetFree,@function
SetFree:                                # @SetFree
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end69:
	.size	SetFree, .Lfunc_end69-SetFree
                                        # -- End function
	.globl	SetAdd                          # -- Begin function SetAdd
	.p2align	5
	.type	SetAdd,@function
SetAdd:                                 # @SetAdd
# %bb.0:                                # %entry
	ldx.bu	$a2, $a0, $a1
	ori	$a3, $zero, 1
	sltui	$a2, $a2, 1
	stx.b	$a3, $a0, $a1
	move	$a0, $a2
	ret
.Lfunc_end70:
	.size	SetAdd, .Lfunc_end70-SetAdd
                                        # -- End function
	.globl	SetUnion                        # -- Begin function SetUnion
	.p2align	5
	.type	SetUnion,@function
SetUnion:                               # @SetUnion
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(size)
	ld.w	$a3, $a2, %pc_lo12(size)
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB71_6
# %bb.1:                                # %for.body.preheader
	move	$a2, $zero
	b	.LBB71_3
	.p2align	4, , 16
.LBB71_2:                               # %for.inc
                                        #   in Loop: Header=BB71_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	beqz	$a3, .LBB71_7
.LBB71_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, 0
	beqz	$a4, .LBB71_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB71_3 Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB71_2
# %bb.5:                                # %if.then8
                                        #   in Loop: Header=BB71_3 Depth=1
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 0
	b	.LBB71_2
.LBB71_6:
	move	$a2, $zero
.LBB71_7:                               # %for.end
	move	$a0, $a2
	ret
.Lfunc_end71:
	.size	SetUnion, .Lfunc_end71-SetUnion
                                        # -- End function
	.globl	strhash                         # -- Begin function strhash
	.p2align	5
	.type	strhash,@function
strhash:                                # @strhash
# %bb.0:                                # %entry
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB72_4
# %bb.1:                                # %while.body.preheader
	move	$a1, $a0
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB72_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $a2
	ld.bu	$a2, $a1, 0
	alsl.d	$a4, $a0, $a0, 1
	alsl.d	$a0, $a4, $a0, 2
	add.w	$a0, $a0, $a3
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB72_2
# %bb.3:                                # %while.end
	ret
.LBB72_4:
	move	$a0, $zero
	ret
.Lfunc_end72:
	.size	strhash, .Lfunc_end72-strhash
                                        # -- End function
	.globl	Strsafe                         # -- Begin function Strsafe
	.p2align	5
	.type	Strsafe,@function
Strsafe:                                # @Strsafe
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB73_5
# %bb.1:                                # %if.end
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(x1a)
	ld.d	$a0, $a0, %pc_lo12(x1a)
	beqz	$a0, .LBB73_10
# %bb.2:                                # %if.end.i
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB73_6
# %bb.3:                                # %while.body.i.i.preheader
	move	$a1, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB73_4:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a1, $a1, 1
	alsl.d	$a1, $a5, $a1, 2
	add.w	$a1, $a1, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB73_4
	b	.LBB73_7
.LBB73_5:
	move	$s0, $zero
	b	.LBB73_12
.LBB73_6:
	move	$a1, $zero
.LBB73_7:                               # %strhash.exit.i
	ld.w	$a2, $a0, 0
	ld.d	$a0, $a0, 16
	addi.w	$a2, $a2, -1
	and	$a1, $a2, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	beqz	$s1, .LBB73_10
	.p2align	4, , 16
.LBB73_8:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_12
# %bb.9:                                # %while.cond.i
                                        #   in Loop: Header=BB73_8 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB73_8
.LBB73_10:                              # %land.lhs.true
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB73_13
# %bb.11:                               # %if.then5
	move	$s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Strsafe_insert)
	jirl	$ra, $ra, 0
.LBB73_12:                              # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB73_13:                              # %if.then10
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end73:
	.size	Strsafe, .Lfunc_end73-Strsafe
                                        # -- End function
	.globl	Strsafe_init                    # -- Begin function Strsafe_init
	.p2align	5
	.type	Strsafe_init,@function
Strsafe_init:                           # @Strsafe_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x1a)
	ld.d	$a0, $s0, %pc_lo12(x1a)
	beqz	$a0, .LBB74_2
.LBB74_1:                               # %if.end11
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB74_2:                               # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x1a)
	beqz	$a0, .LBB74_1
# %bb.3:                                # %if.then2
	move	$fp, $a0
	ori	$a0, $zero, 1024
	st.d	$a0, $fp, 0
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB74_5
# %bb.4:                                # %if.else
	lu12i.w	$a1, 6
	add.d	$a0, $a0, $a1
	lu12i.w	$a2, 2
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB74_5:                               # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x1a)
	b	.LBB74_1
.Lfunc_end74:
	.size	Strsafe_init, .Lfunc_end74-Strsafe_init
                                        # -- End function
	.globl	Strsafe_insert                  # -- Begin function Strsafe_insert
	.p2align	5
	.type	Strsafe_insert,@function
Strsafe_insert:                         # @Strsafe_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x1a)
	ld.d	$s2, $a1, %pc_lo12(x1a)
	beqz	$s2, .LBB75_22
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB75_4
# %bb.2:                                # %while.body.i.preheader
	move	$s3, $zero
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB75_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $a0
	ld.bu	$a0, $a1, 0
	alsl.d	$a3, $s3, $s3, 1
	alsl.d	$a3, $a3, $s3, 2
	add.w	$s3, $a3, $a2
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB75_3
	b	.LBB75_5
.LBB75_4:
	move	$s3, $zero
.LBB75_5:                               # %strhash.exit
	ld.w	$s6, $s2, 0
	ld.d	$s0, $s2, 16
	addi.w	$a0, $s6, -1
	and	$s5, $a0, $s3
	slli.d	$a0, $s5, 3
	ldx.d	$s1, $s0, $a0
	beqz	$s1, .LBB75_8
	.p2align	4, , 16
.LBB75_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB75_22
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB75_6 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB75_6
.LBB75_8:                               # %while.end
	ld.w	$s4, $s2, 4
	bge	$s4, $s6, .LBB75_10
# %bb.9:                                # %while.end.if.end74_crit_edge
	ld.d	$s1, $s2, 8
	b	.LBB75_25
.LBB75_10:                              # %if.then8
	slli.w	$s5, $s6, 1
	slli.d	$a0, $s5, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB75_22
# %bb.11:                               # %if.end20
	move	$s1, $a0
	slli.d	$a0, $s5, 4
	alsl.d	$a1, $s5, $a0, 3
	ori	$a0, $zero, 1
	add.d	$s0, $s1, $a1
	blt	$s6, $a0, .LBB75_13
# %bb.12:                               # %for.body.preheader
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB75_13:                              # %for.cond30.preheader
	blez	$s4, .LBB75_23
# %bb.14:                               # %for.body34.lr.ph
	ld.d	$a0, $s2, 8
	move	$a1, $zero
	addi.w	$s6, $s5, -1
	b	.LBB75_16
	.p2align	4, , 16
.LBB75_15:                              # %if.end54
                                        #   in Loop: Header=BB75_16 Depth=1
	alsl.d	$a4, $a4, $s0, 3
	st.d	$a5, $a3, 8
	st.d	$a2, $a3, 0
	st.d	$a4, $a3, 16
	addi.d	$a1, $a1, 1
	st.d	$a3, $a4, 0
	beq	$a1, $s4, .LBB75_24
.LBB75_16:                              # %for.body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB75_18 Depth 2
	slli.d	$a2, $a1, 4
	alsl.d	$a3, $a1, $a2, 3
	ldx.d	$a2, $a0, $a3
	ld.bu	$a4, $a2, 0
	beqz	$a4, .LBB75_19
# %bb.17:                               # %while.body.i46.preheader
                                        #   in Loop: Header=BB75_16 Depth=1
	move	$a5, $zero
	addi.d	$a6, $a2, 1
	.p2align	4, , 16
.LBB75_18:                              # %while.body.i46
                                        #   Parent Loop BB75_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a7, $a4
	ld.bu	$a4, $a6, 0
	alsl.d	$t0, $a5, $a5, 1
	alsl.d	$a5, $t0, $a5, 2
	add.w	$a5, $a5, $a7
	addi.d	$a6, $a6, 1
	bnez	$a4, .LBB75_18
	b	.LBB75_20
	.p2align	4, , 16
.LBB75_19:                              #   in Loop: Header=BB75_16 Depth=1
	move	$a5, $zero
.LBB75_20:                              # %strhash.exit55
                                        #   in Loop: Header=BB75_16 Depth=1
	and	$a4, $a5, $s6
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s0, $a5
	add.d	$a3, $s1, $a3
	beqz	$a5, .LBB75_15
# %bb.21:                               # %if.then49
                                        #   in Loop: Header=BB75_16 Depth=1
	addi.d	$a6, $a3, 8
	st.d	$a6, $a5, 16
	b	.LBB75_15
.LBB75_22:
	move	$a0, $zero
	b	.LBB75_28
.LBB75_23:                              # %for.cond30.preheader.for.end70_crit_edge
	ld.d	$a0, $s2, 8
	addi.w	$s6, $s5, -1
.LBB75_24:                              # %for.end70
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s5, $s2, 0
	st.d	$s1, $s2, 8
	st.d	$s0, $s2, 16
	and	$s5, $s6, $s3
.LBB75_25:                              # %if.end74
	addi.d	$a0, $s4, 1
	st.w	$a0, $s2, 4
	slli.d	$a0, $s4, 4
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s0, $a1
	alsl.d	$a2, $s4, $a0, 3
	add.d	$a0, $s1, $a2
	stx.d	$fp, $s1, $a2
	alsl.d	$a2, $s5, $s0, 3
	beqz	$a1, .LBB75_27
# %bb.26:                               # %if.then88
	addi.d	$a3, $a0, 8
	st.d	$a3, $a1, 16
.LBB75_27:                              # %if.end94
	st.d	$a1, $a0, 8
	st.d	$a0, $a2, 0
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 1
.LBB75_28:                              # %cleanup106
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end75:
	.size	Strsafe_insert, .Lfunc_end75-Strsafe_insert
                                        # -- End function
	.globl	Strsafe_find                    # -- Begin function Strsafe_find
	.p2align	5
	.type	Strsafe_find,@function
Strsafe_find:                           # @Strsafe_find
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x1a)
	ld.d	$a1, $a1, %pc_lo12(x1a)
	beqz	$a1, .LBB76_8
# %bb.1:                                # %if.end
	move	$fp, $a0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB76_4
# %bb.2:                                # %while.body.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB76_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB76_3
	b	.LBB76_5
.LBB76_4:
	move	$a0, $zero
.LBB76_5:                               # %strhash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s1, $a1, $a0
	beqz	$s1, .LBB76_8
	.p2align	4, , 16
.LBB76_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB76_9
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB76_6 Depth=1
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB76_6
.LBB76_8:
	move	$s0, $zero
.LBB76_9:                               # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end76:
	.size	Strsafe_find, .Lfunc_end76-Strsafe_find
                                        # -- End function
	.globl	Symbol_new                      # -- Begin function Symbol_new
	.p2align	5
	.type	Symbol_new,@function
Symbol_new:                             # @Symbol_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x2a)
	ld.d	$a1, $a1, %pc_lo12(x2a)
	move	$fp, $a0
	beqz	$a1, .LBB77_9
# %bb.1:                                # %if.end.i
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB77_4
# %bb.2:                                # %while.body.i.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB77_3:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB77_3
	b	.LBB77_5
.LBB77_4:
	move	$a0, $zero
.LBB77_5:                               # %strhash.exit.i
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	beqz	$s0, .LBB77_9
	.p2align	4, , 16
.LBB77_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB77_8
# %bb.7:                                # %if.end5.i
                                        #   in Loop: Header=BB77_6 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB77_6
	b	.LBB77_9
.LBB77_8:                               # %Symbol_find.exit
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB77_11
.LBB77_9:                               # %if.then
	ori	$a0, $zero, 1
	ori	$a1, $zero, 96
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB77_12
# %bb.10:                               # %if.end
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Strsafe)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 256
	sltui	$a0, $a0, 1
	st.w	$a0, $s0, 12
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 3
	st.d	$a0, $s0, 32
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Symbol_insert)
	jirl	$ra, $ra, 0
.LBB77_11:                              # %if.end9
	ld.w	$a0, $s0, 52
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 52
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB77_12:                              # %if.then3
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end77:
	.size	Symbol_new, .Lfunc_end77-Symbol_new
                                        # -- End function
	.globl	Symbolcmpp                      # -- Begin function Symbolcmpp
	.p2align	5
	.type	Symbolcmpp,@function
Symbolcmpp:                             # @Symbolcmpp
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a0, 8
	ld.b	$a0, $a2, 0
	ld.w	$a2, $a3, 8
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 90
	slt	$a0, $a5, $a0
	lu12i.w	$a4, 2441
	ld.b	$a3, $a3, 0
	ori	$a6, $a4, 1664
	maskeqz	$a0, $a6, $a0
	add.w	$a4, $a0, $a1
	slt	$a0, $a5, $a3
	maskeqz	$a0, $a6, $a0
	add.w	$a5, $a0, $a2
	addi.w	$a3, $zero, -1
	bge	$a4, $a5, .LBB78_2
# %bb.1:
	move	$a0, $a3
	ret
.LBB78_2:                               # %if.end
	ori	$a0, $zero, 1
	blt	$a5, $a4, .LBB78_5
# %bb.3:                                # %if.end15
	move	$a0, $a3
	blt	$a1, $a2, .LBB78_5
# %bb.4:                                # %if.end19
	slt	$a0, $a2, $a1
.LBB78_5:                               # %cleanup
	ret
.Lfunc_end78:
	.size	Symbolcmpp, .Lfunc_end78-Symbolcmpp
                                        # -- End function
	.globl	Symbol_init                     # -- Begin function Symbol_init
	.p2align	5
	.type	Symbol_init,@function
Symbol_init:                            # @Symbol_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x2a)
	ld.d	$a0, $s0, %pc_lo12(x2a)
	beqz	$a0, .LBB79_2
.LBB79_1:                               # %if.end11
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB79_2:                               # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x2a)
	beqz	$a0, .LBB79_1
# %bb.3:                                # %if.then2
	move	$fp, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $fp, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB79_5
# %bb.4:                                # %if.else
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 1024
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB79_5:                               # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x2a)
	b	.LBB79_1
.Lfunc_end79:
	.size	Symbol_init, .Lfunc_end79-Symbol_init
                                        # -- End function
	.globl	Symbol_insert                   # -- Begin function Symbol_insert
	.p2align	5
	.type	Symbol_insert,@function
Symbol_insert:                          # @Symbol_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x2a)
	ld.d	$s3, $a2, %pc_lo12(x2a)
	beqz	$s3, .LBB80_22
# %bb.1:                                # %if.end
	move	$s0, $a1
	move	$fp, $a0
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB80_4
# %bb.2:                                # %while.body.i.preheader
	move	$s4, $zero
	addi.d	$a1, $s0, 1
	.p2align	4, , 16
.LBB80_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $a0
	ld.bu	$a0, $a1, 0
	alsl.d	$a3, $s4, $s4, 1
	alsl.d	$a3, $a3, $s4, 2
	add.w	$s4, $a3, $a2
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB80_3
	b	.LBB80_5
.LBB80_4:
	move	$s4, $zero
.LBB80_5:                               # %strhash.exit
	ld.w	$s7, $s3, 0
	ld.d	$s1, $s3, 16
	addi.w	$a0, $s7, -1
	and	$s6, $a0, $s4
	slli.d	$a0, $s6, 3
	ldx.d	$s2, $s1, $a0
	beqz	$s2, .LBB80_8
	.p2align	4, , 16
.LBB80_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_22
# %bb.7:                                # %while.cond
                                        #   in Loop: Header=BB80_6 Depth=1
	ld.d	$s2, $s2, 16
	bnez	$s2, .LBB80_6
.LBB80_8:                               # %while.end
	ld.w	$s5, $s3, 4
	bge	$s5, $s7, .LBB80_10
# %bb.9:                                # %while.end.if.end76_crit_edge
	ld.d	$s2, $s3, 8
	b	.LBB80_25
.LBB80_10:                              # %if.then8
	slli.w	$s6, $s7, 1
	slli.d	$s1, $s6, 5
	alsl.d	$a0, $s6, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB80_22
# %bb.11:                               # %if.end20
	move	$s2, $a0
	ori	$a0, $zero, 1
	add.d	$s1, $s2, $s1
	blt	$s7, $a0, .LBB80_13
# %bb.12:                               # %for.body.preheader
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB80_13:                              # %for.cond30.preheader
	blez	$s5, .LBB80_23
# %bb.14:                               # %for.body34.lr.ph
	ld.d	$a0, $s3, 8
	move	$a1, $zero
	addi.w	$s7, $s6, -1
	b	.LBB80_16
	.p2align	4, , 16
.LBB80_15:                              # %if.end54
                                        #   in Loop: Header=BB80_16 Depth=1
	ld.d	$a3, $a3, 0
	alsl.d	$a5, $a5, $s1, 3
	st.d	$a6, $a4, 16
	st.d	$a2, $a4, 8
	st.d	$a3, $a4, 0
	st.d	$a5, $a4, 24
	addi.d	$a1, $a1, 1
	st.d	$a4, $a5, 0
	beq	$a1, $s5, .LBB80_24
.LBB80_16:                              # %for.body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_18 Depth 2
	slli.d	$a4, $a1, 5
	add.d	$a3, $a0, $a4
	ld.d	$a2, $a3, 8
	ld.bu	$a5, $a2, 0
	beqz	$a5, .LBB80_19
# %bb.17:                               # %while.body.i49.preheader
                                        #   in Loop: Header=BB80_16 Depth=1
	move	$a6, $zero
	addi.d	$a7, $a2, 1
	.p2align	4, , 16
.LBB80_18:                              # %while.body.i49
                                        #   Parent Loop BB80_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$t1, $a6, $a6, 1
	alsl.d	$a6, $t1, $a6, 2
	add.w	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB80_18
	b	.LBB80_20
	.p2align	4, , 16
.LBB80_19:                              #   in Loop: Header=BB80_16 Depth=1
	move	$a6, $zero
.LBB80_20:                              # %strhash.exit58
                                        #   in Loop: Header=BB80_16 Depth=1
	and	$a5, $a6, $s7
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $s1, $a6
	add.d	$a4, $s2, $a4
	beqz	$a6, .LBB80_15
# %bb.21:                               # %if.then49
                                        #   in Loop: Header=BB80_16 Depth=1
	addi.d	$a7, $a4, 16
	st.d	$a7, $a6, 24
	b	.LBB80_15
.LBB80_22:
	move	$a0, $zero
	b	.LBB80_28
.LBB80_23:                              # %for.cond30.preheader.for.end72_crit_edge
	ld.d	$a0, $s3, 8
	addi.w	$s7, $s6, -1
.LBB80_24:                              # %for.end72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s6, $s3, 0
	st.d	$s2, $s3, 8
	st.d	$s1, $s3, 16
	and	$s6, $s7, $s4
.LBB80_25:                              # %if.end76
	addi.d	$a0, $s5, 1
	st.w	$a0, $s3, 4
	slli.d	$a2, $s5, 5
	slli.d	$a0, $s6, 3
	ldx.d	$a1, $s1, $a0
	add.d	$a0, $s2, $a2
	st.d	$s0, $a0, 8
	stx.d	$fp, $s2, $a2
	alsl.d	$a2, $s6, $s1, 3
	beqz	$a1, .LBB80_27
# %bb.26:                               # %if.then91
	addi.d	$a3, $a0, 16
	st.d	$a3, $a1, 24
.LBB80_27:                              # %if.end97
	st.d	$a1, $a0, 16
	st.d	$a0, $a2, 0
	st.d	$a2, $a0, 24
	ori	$a0, $zero, 1
.LBB80_28:                              # %cleanup109
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end80:
	.size	Symbol_insert, .Lfunc_end80-Symbol_insert
                                        # -- End function
	.globl	Symbol_find                     # -- Begin function Symbol_find
	.p2align	5
	.type	Symbol_find,@function
Symbol_find:                            # @Symbol_find
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(x2a)
	ld.d	$a1, $a1, %pc_lo12(x2a)
	beqz	$a1, .LBB81_4
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB81_5
# %bb.2:                                # %while.body.i.preheader
	move	$a0, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB81_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a4, $a2
	ld.bu	$a2, $a3, 0
	alsl.d	$a5, $a0, $a0, 1
	alsl.d	$a0, $a5, $a0, 2
	add.w	$a0, $a0, $a4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB81_3
	b	.LBB81_6
.LBB81_4:
	move	$a0, $zero
	ret
.LBB81_5:
	move	$a0, $zero
.LBB81_6:                               # %strhash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a0, $a2, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s0, $a1, $a0
	beqz	$s0, .LBB81_9
	.p2align	4, , 16
.LBB81_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB81_10
# %bb.8:                                # %if.end5
                                        #   in Loop: Header=BB81_7 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB81_7
.LBB81_9:
	move	$a0, $zero
	b	.LBB81_11
.LBB81_10:                              # %cond.true
	ld.d	$a0, $s0, 0
.LBB81_11:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	Symbol_find, .Lfunc_end81-Symbol_find
                                        # -- End function
	.globl	Symbol_Nth                      # -- Begin function Symbol_Nth
	.p2align	5
	.type	Symbol_Nth,@function
Symbol_Nth:                             # @Symbol_Nth
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	move	$a1, $a0
	move	$a0, $zero
	blt	$a1, $a2, .LBB82_5
# %bb.1:                                # %entry
	pcalau12i	$a2, %pc_hi20(x2a)
	ld.d	$a2, $a2, %pc_lo12(x2a)
	beqz	$a2, .LBB82_5
# %bb.2:                                # %land.lhs.true1
	ld.w	$a0, $a2, 4
	bge	$a0, $a1, .LBB82_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB82_4:                               # %if.then
	ld.d	$a0, $a2, 8
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, -32
.LBB82_5:                               # %if.end
	ret
.Lfunc_end82:
	.size	Symbol_Nth, .Lfunc_end82-Symbol_Nth
                                        # -- End function
	.globl	Symbol_count                    # -- Begin function Symbol_count
	.p2align	5
	.type	Symbol_count,@function
Symbol_count:                           # @Symbol_count
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$a0, $a0, %pc_lo12(x2a)
	beqz	$a0, .LBB83_2
# %bb.1:                                # %cond.true
	ld.w	$a0, $a0, 4
	ret
.LBB83_2:
	move	$a0, $zero
	ret
.Lfunc_end83:
	.size	Symbol_count, .Lfunc_end83-Symbol_count
                                        # -- End function
	.globl	Symbol_arrayof                  # -- Begin function Symbol_arrayof
	.p2align	5
	.type	Symbol_arrayof,@function
Symbol_arrayof:                         # @Symbol_arrayof
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x2a)
	ld.d	$s0, $a0, %pc_lo12(x2a)
	beqz	$s0, .LBB84_5
# %bb.1:                                # %if.end
	ld.w	$fp, $s0, 4
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB84_5
# %bb.2:                                # %for.cond.preheader
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB84_11
# %bb.3:                                # %for.body.lr.ph
	ld.d	$a1, $s0, 8
	ori	$a2, $zero, 8
	bgeu	$fp, $a2, .LBB84_6
# %bb.4:
	move	$a2, $zero
	b	.LBB84_9
.LBB84_5:
	move	$a0, $zero
	b	.LBB84_11
.LBB84_6:                               # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $fp, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a1, 128
	slli.d	$a5, $fp, 3
	bstrpick.d	$a5, $a5, 33, 6
	slli.d	$a5, $a5, 6
	.p2align	4, , 16
.LBB84_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -128
	ld.d	$a7, $a4, -96
	ld.d	$t0, $a4, -64
	ld.d	$t1, $a4, -32
	xvinsgr2vr.d	$xr0, $a6, 0
	xvinsgr2vr.d	$xr0, $a7, 1
	xvinsgr2vr.d	$xr0, $t0, 2
	xvinsgr2vr.d	$xr0, $t1, 3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a4, 32
	ld.d	$t0, $a4, 64
	ld.d	$t1, $a4, 96
	xvinsgr2vr.d	$xr1, $a6, 0
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $t1, 3
	add.d	$a6, $a0, $a3
	xvstx	$xr0, $a0, $a3
	xvst	$xr1, $a6, 32
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 256
	bne	$a5, $a3, .LBB84_7
# %bb.8:                                # %middle.block
	beq	$a2, $fp, .LBB84_11
.LBB84_9:                               # %for.body.preheader
	slli.d	$a3, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a1, $a1, $a4
	sub.d	$a2, $fp, $a2
	.p2align	4, , 16
.LBB84_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	stx.d	$a4, $a0, $a3
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB84_10
.LBB84_11:                              # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end84:
	.size	Symbol_arrayof, .Lfunc_end84-Symbol_arrayof
                                        # -- End function
	.globl	Configcmp                       # -- Begin function Configcmp
	.p2align	5
	.type	Configcmp,@function
Configcmp:                              # @Configcmp
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a2, $a2, 72
	ld.w	$a3, $a3, 72
	sub.w	$a2, $a2, $a3
	beqz	$a2, .LBB85_2
# %bb.1:                                # %if.end
	move	$a0, $a2
	ret
.LBB85_2:                               # %if.then
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	sub.w	$a2, $a0, $a1
	move	$a0, $a2
	ret
.Lfunc_end85:
	.size	Configcmp, .Lfunc_end85-Configcmp
                                        # -- End function
	.globl	statecmp                        # -- Begin function statecmp
	.p2align	5
	.type	statecmp,@function
statecmp:                               # @statecmp
# %bb.0:                                # %entry
	beqz	$a0, .LBB86_8
# %bb.1:                                # %entry
	beqz	$a1, .LBB86_8
	.p2align	4, , 16
.LBB86_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a1, 0
	ld.w	$a2, $a2, 72
	ld.w	$a3, $a3, 72
	sub.w	$a2, $a2, $a3
	bnez	$a2, .LBB86_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB86_2 Depth=1
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a1, 8
	sub.w	$a2, $a2, $a3
.LBB86_4:                               # %for.inc
                                        #   in Loop: Header=BB86_2 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a1, $a1, 64
	bnez	$a2, .LBB86_7
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB86_2 Depth=1
	beqz	$a0, .LBB86_7
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB86_2 Depth=1
	bnez	$a1, .LBB86_2
.LBB86_7:                               # %for.end
	sltu	$a1, $zero, $a1
	sltu	$a0, $zero, $a0
	sltui	$a3, $a2, 1
	masknez	$a0, $a0, $a1
	addi.w	$a4, $zero, -1
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a1, $a2, $a3
	or	$a0, $a0, $a1
	ret
.LBB86_8:                               # %for.end.thread
	sltu	$a1, $zero, $a1
	sltu	$a0, $zero, $a0
	masknez	$a0, $a0, $a1
	addi.w	$a2, $zero, -1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end86:
	.size	statecmp, .Lfunc_end86-statecmp
                                        # -- End function
	.globl	statehash                       # -- Begin function statehash
	.p2align	5
	.type	statehash,@function
statehash:                              # @statehash
# %bb.0:                                # %entry
	move	$a1, $zero
	beqz	$a0, .LBB87_3
# %bb.1:                                # %while.body.preheader
	ori	$a2, $zero, 571
	.p2align	4, , 16
.LBB87_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a3, $a3, 72
	mul.d	$a1, $a1, $a2
	ld.w	$a4, $a0, 8
	ld.d	$a0, $a0, 64
	alsl.d	$a5, $a3, $a3, 3
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a1, $a3, $a1
	add.w	$a1, $a1, $a4
	bnez	$a0, .LBB87_2
.LBB87_3:                               # %while.end
	move	$a0, $a1
	ret
.Lfunc_end87:
	.size	statehash, .Lfunc_end87-statehash
                                        # -- End function
	.globl	State_new                       # -- Begin function State_new
	.p2align	5
	.type	State_new,@function
State_new:                              # @State_new
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 56
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB88_2
# %bb.1:                                # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB88_2:                               # %if.then
	pcaddu18i	$ra, %call36(memory_error)
	jirl	$ra, $ra, 0
.Lfunc_end88:
	.size	State_new, .Lfunc_end88-State_new
                                        # -- End function
	.globl	State_init                      # -- Begin function State_init
	.p2align	5
	.type	State_init,@function
State_init:                             # @State_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x3a)
	ld.d	$a0, $s0, %pc_lo12(x3a)
	beqz	$a0, .LBB89_2
.LBB89_1:                               # %if.end11
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB89_2:                               # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x3a)
	beqz	$a0, .LBB89_1
# %bb.3:                                # %if.then2
	move	$fp, $a0
	ori	$a0, $zero, 128
	st.d	$a0, $fp, 0
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB89_5
# %bb.4:                                # %if.else
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 1024
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB89_5:                               # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x3a)
	b	.LBB89_1
.Lfunc_end89:
	.size	State_init, .Lfunc_end89-State_init
                                        # -- End function
	.globl	State_insert                    # -- Begin function State_insert
	.p2align	5
	.type	State_insert,@function
State_insert:                           # @State_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(x3a)
	ld.d	$s1, $a2, %pc_lo12(x3a)
	beqz	$s1, .LBB90_33
# %bb.1:                                # %if.end
	move	$s2, $zero
	beqz	$a1, .LBB90_4
# %bb.2:                                # %while.body.i.preheader
	ori	$a2, $zero, 571
	move	$a3, $a1
	.p2align	4, , 16
.LBB90_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	mul.d	$a5, $s2, $a2
	ld.w	$a6, $a3, 8
	ld.d	$a3, $a3, 64
	alsl.d	$a7, $a4, $a4, 3
	alsl.d	$a4, $a7, $a4, 2
	add.d	$a4, $a4, $a5
	add.w	$s2, $a4, $a6
	bnez	$a3, .LBB90_3
.LBB90_4:                               # %statehash.exit
	ld.w	$s7, $s1, 0
	ld.d	$fp, $s1, 16
	addi.w	$a2, $s7, -1
	and	$a2, $a2, $s2
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	beqz	$a3, .LBB90_19
# %bb.5:                                # %while.body.lr.ph
	bnez	$a1, .LBB90_7
	b	.LBB90_18
	.p2align	4, , 16
.LBB90_6:                               # %if.end5
                                        #   in Loop: Header=BB90_7 Depth=1
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB90_19
.LBB90_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_9 Depth 2
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB90_6
# %bb.8:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB90_7 Depth=1
	move	$a5, $a1
	.p2align	4, , 16
.LBB90_9:                               # %for.body.i
                                        #   Parent Loop BB90_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	ld.w	$a6, $a6, 72
	ld.w	$a7, $a7, 72
	sub.w	$a6, $a6, $a7
	bnez	$a6, .LBB90_11
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB90_9 Depth=2
	ld.w	$a6, $a4, 8
	ld.w	$a7, $a5, 8
	sub.w	$a6, $a6, $a7
.LBB90_11:                              # %for.inc.i
                                        #   in Loop: Header=BB90_9 Depth=2
	ld.d	$a4, $a4, 64
	ld.d	$a5, $a5, 64
	bnez	$a6, .LBB90_14
# %bb.12:                               # %for.inc.i
                                        #   in Loop: Header=BB90_9 Depth=2
	beqz	$a4, .LBB90_14
# %bb.13:                               # %for.inc.i
                                        #   in Loop: Header=BB90_9 Depth=2
	bnez	$a5, .LBB90_9
.LBB90_14:                              # %for.end.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a6, .LBB90_6
# %bb.15:                               # %for.end.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a5, .LBB90_6
# %bb.16:                               # %for.end.i
                                        #   in Loop: Header=BB90_7 Depth=1
	bnez	$a4, .LBB90_6
	b	.LBB90_33
	.p2align	4, , 16
.LBB90_17:                              # %if.end5.us
                                        #   in Loop: Header=BB90_18 Depth=1
	ld.d	$a3, $a3, 16
	beqz	$a3, .LBB90_19
.LBB90_18:                              # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 8
	bnez	$a4, .LBB90_17
	b	.LBB90_33
.LBB90_19:                              # %while.end
	ld.w	$s3, $s1, 4
	bge	$s3, $s7, .LBB90_21
# %bb.20:                               # %while.end.if.end76_crit_edge
	ld.d	$s0, $s1, 8
	b	.LBB90_36
.LBB90_21:                              # %if.then8
	move	$s4, $a1
	move	$s5, $a0
	slli.w	$s6, $s7, 1
	slli.d	$fp, $s6, 5
	alsl.d	$a0, $s6, $fp, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB90_33
# %bb.22:                               # %if.end20
	move	$s0, $a0
	ori	$a0, $zero, 1
	add.d	$fp, $s0, $fp
	blt	$s7, $a0, .LBB90_24
# %bb.23:                               # %for.body.preheader
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB90_24:                              # %for.cond30.preheader
	blez	$s3, .LBB90_34
# %bb.25:                               # %for.body34.lr.ph
	ld.d	$a0, $s1, 8
	move	$a1, $zero
	addi.w	$s7, $s6, -1
	ori	$a2, $zero, 571
	b	.LBB90_27
	.p2align	4, , 16
.LBB90_26:                              # %if.end54
                                        #   in Loop: Header=BB90_27 Depth=1
	ld.d	$a4, $a4, 0
	alsl.d	$a6, $a6, $fp, 3
	st.d	$a7, $a5, 16
	st.d	$a3, $a5, 8
	st.d	$a4, $a5, 0
	st.d	$a6, $a5, 24
	addi.d	$a1, $a1, 1
	st.d	$a5, $a6, 0
	beq	$a1, $s3, .LBB90_35
.LBB90_27:                              # %for.body34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_29 Depth 2
	slli.d	$a5, $a1, 5
	add.d	$a4, $a0, $a5
	ld.d	$a3, $a4, 8
	beqz	$a3, .LBB90_30
# %bb.28:                               # %while.body.i52.preheader
                                        #   in Loop: Header=BB90_27 Depth=1
	move	$a7, $zero
	move	$a6, $a3
	.p2align	4, , 16
.LBB90_29:                              # %while.body.i52
                                        #   Parent Loop BB90_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, 0
	ld.w	$t0, $t0, 72
	mul.d	$a7, $a7, $a2
	ld.w	$t1, $a6, 8
	ld.d	$a6, $a6, 64
	alsl.d	$t2, $t0, $t0, 3
	alsl.d	$t0, $t2, $t0, 2
	add.d	$a7, $t0, $a7
	add.w	$a7, $a7, $t1
	bnez	$a6, .LBB90_29
	b	.LBB90_31
	.p2align	4, , 16
.LBB90_30:                              #   in Loop: Header=BB90_27 Depth=1
	move	$a7, $zero
.LBB90_31:                              # %statehash.exit64
                                        #   in Loop: Header=BB90_27 Depth=1
	and	$a6, $a7, $s7
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $fp, $a7
	add.d	$a5, $s0, $a5
	beqz	$a7, .LBB90_26
# %bb.32:                               # %if.then49
                                        #   in Loop: Header=BB90_27 Depth=1
	addi.d	$t0, $a5, 16
	st.d	$t0, $a7, 24
	b	.LBB90_26
.LBB90_33:
	move	$a0, $zero
	b	.LBB90_39
.LBB90_34:                              # %for.cond30.preheader.for.end72_crit_edge
	ld.d	$a0, $s1, 8
	addi.w	$s7, $s6, -1
.LBB90_35:                              # %for.end72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s6, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$fp, $s1, 16
	and	$a2, $s7, $s2
	move	$a0, $s5
	move	$a1, $s4
.LBB90_36:                              # %if.end76
	addi.d	$a3, $s3, 1
	st.w	$a3, $s1, 4
	slli.d	$a5, $s3, 5
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $fp, $a3
	add.d	$a3, $s0, $a5
	st.d	$a1, $a3, 8
	stx.d	$a0, $s0, $a5
	alsl.d	$a0, $a2, $fp, 3
	beqz	$a4, .LBB90_38
# %bb.37:                               # %if.then91
	addi.d	$a1, $a3, 16
	st.d	$a1, $a4, 24
.LBB90_38:                              # %if.end97
	st.d	$a4, $a3, 16
	st.d	$a3, $a0, 0
	st.d	$a0, $a3, 24
	ori	$a0, $zero, 1
.LBB90_39:                              # %cleanup109
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end90:
	.size	State_insert, .Lfunc_end90-State_insert
                                        # -- End function
	.globl	State_find                      # -- Begin function State_find
	.p2align	5
	.type	State_find,@function
State_find:                             # @State_find
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(x3a)
	ld.d	$a1, $a1, %pc_lo12(x3a)
	beqz	$a1, .LBB91_20
# %bb.1:                                # %if.end
	move	$a3, $zero
	beqz	$a0, .LBB91_4
# %bb.2:                                # %while.body.i.preheader
	ori	$a2, $zero, 571
	move	$a4, $a0
	.p2align	4, , 16
.LBB91_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.w	$a5, $a5, 72
	mul.d	$a3, $a3, $a2
	ld.w	$a6, $a4, 8
	ld.d	$a4, $a4, 64
	alsl.d	$a7, $a5, $a5, 3
	alsl.d	$a5, $a7, $a5, 2
	add.d	$a3, $a5, $a3
	add.w	$a3, $a3, $a6
	bnez	$a4, .LBB91_3
.LBB91_4:                               # %statehash.exit
	ld.w	$a2, $a1, 0
	ld.d	$a1, $a1, 16
	addi.w	$a2, $a2, -1
	and	$a2, $a2, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	beqz	$a1, .LBB91_20
# %bb.5:                                # %while.body.lr.ph
	bnez	$a0, .LBB91_7
	b	.LBB91_18
	.p2align	4, , 16
.LBB91_6:                               # %if.end5
                                        #   in Loop: Header=BB91_7 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB91_20
.LBB91_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_9 Depth 2
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB91_6
# %bb.8:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB91_7 Depth=1
	move	$a3, $a0
	.p2align	4, , 16
.LBB91_9:                               # %for.body.i
                                        #   Parent Loop BB91_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a5, 72
	sub.w	$a4, $a4, $a5
	bnez	$a4, .LBB91_11
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB91_9 Depth=2
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a3, 8
	sub.w	$a4, $a4, $a5
.LBB91_11:                              # %for.inc.i
                                        #   in Loop: Header=BB91_9 Depth=2
	ld.d	$a2, $a2, 64
	ld.d	$a3, $a3, 64
	bnez	$a4, .LBB91_14
# %bb.12:                               # %for.inc.i
                                        #   in Loop: Header=BB91_9 Depth=2
	beqz	$a2, .LBB91_14
# %bb.13:                               # %for.inc.i
                                        #   in Loop: Header=BB91_9 Depth=2
	bnez	$a3, .LBB91_9
.LBB91_14:                              # %for.end.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a4, .LBB91_6
# %bb.15:                               # %for.end.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a3, .LBB91_6
# %bb.16:                               # %for.end.i
                                        #   in Loop: Header=BB91_7 Depth=1
	bnez	$a2, .LBB91_6
	b	.LBB91_19
	.p2align	4, , 16
.LBB91_17:                              # %if.end5.us
                                        #   in Loop: Header=BB91_18 Depth=1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB91_20
.LBB91_18:                              # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB91_17
.LBB91_19:                              # %cond.true
	ld.d	$a0, $a1, 0
	ret
.LBB91_20:
	move	$a0, $zero
	ret
.Lfunc_end91:
	.size	State_find, .Lfunc_end91-State_find
                                        # -- End function
	.globl	State_arrayof                   # -- Begin function State_arrayof
	.p2align	5
	.type	State_arrayof,@function
State_arrayof:                          # @State_arrayof
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(x3a)
	ld.d	$s1, $a0, %pc_lo12(x3a)
	beqz	$s1, .LBB92_5
# %bb.1:                                # %if.end
	ld.w	$s0, $s1, 4
	slli.d	$fp, $s0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB92_5
# %bb.2:                                # %for.cond.preheader
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB92_11
# %bb.3:                                # %for.body.lr.ph
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 8
	bgeu	$s0, $a2, .LBB92_6
# %bb.4:
	move	$a2, $zero
	b	.LBB92_9
.LBB92_5:
	move	$a0, $zero
	b	.LBB92_11
.LBB92_6:                               # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a1, 128
	bstrpick.d	$a5, $fp, 33, 6
	slli.d	$a5, $a5, 6
	.p2align	4, , 16
.LBB92_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -128
	ld.d	$a7, $a4, -96
	ld.d	$t0, $a4, -64
	ld.d	$t1, $a4, -32
	xvinsgr2vr.d	$xr0, $a6, 0
	xvinsgr2vr.d	$xr0, $a7, 1
	xvinsgr2vr.d	$xr0, $t0, 2
	xvinsgr2vr.d	$xr0, $t1, 3
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a4, 32
	ld.d	$t0, $a4, 64
	ld.d	$t1, $a4, 96
	xvinsgr2vr.d	$xr1, $a6, 0
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t0, 2
	xvinsgr2vr.d	$xr1, $t1, 3
	add.d	$a6, $a0, $a3
	xvstx	$xr0, $a0, $a3
	xvst	$xr1, $a6, 32
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 256
	bne	$a5, $a3, .LBB92_7
# %bb.8:                                # %middle.block
	beq	$a2, $s0, .LBB92_11
.LBB92_9:                               # %for.body.preheader
	slli.d	$a3, $a2, 3
	slli.d	$a4, $a2, 5
	add.d	$a1, $a1, $a4
	sub.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB92_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	stx.d	$a4, $a0, $a3
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB92_10
.LBB92_11:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end92:
	.size	State_arrayof, .Lfunc_end92-State_arrayof
                                        # -- End function
	.globl	confighash                      # -- Begin function confighash
	.p2align	5
	.type	confighash,@function
confighash:                             # @confighash
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 8
	alsl.d	$a2, $a1, $a1, 3
	alsl.d	$a1, $a2, $a1, 2
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end93:
	.size	confighash, .Lfunc_end93-confighash
                                        # -- End function
	.globl	Configtable_init                # -- Begin function Configtable_init
	.p2align	5
	.type	Configtable_init,@function
Configtable_init:                       # @Configtable_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(x4a)
	ld.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB94_2
.LBB94_1:                               # %if.end11
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB94_2:                               # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(x4a)
	beqz	$a0, .LBB94_1
# %bb.3:                                # %if.then2
	move	$fp, $a0
	ori	$a0, $zero, 64
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB94_5
# %bb.4:                                # %if.else
	addi.d	$a0, $a0, 1536
	ori	$a2, $zero, 512
	st.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB94_5:                               # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(x4a)
	b	.LBB94_1
.Lfunc_end94:
	.size	Configtable_init, .Lfunc_end94-Configtable_init
                                        # -- End function
	.globl	Configtable_insert              # -- Begin function Configtable_insert
	.p2align	5
	.type	Configtable_insert,@function
Configtable_insert:                     # @Configtable_insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(x4a)
	ld.d	$s1, $a1, %pc_lo12(x4a)
	beqz	$s1, .LBB95_15
# %bb.1:                                # %if.end
	ld.d	$a1, $a0, 0
	ld.w	$a2, $a1, 72
	ld.w	$a3, $a0, 8
	alsl.d	$a1, $a2, $a2, 3
	ld.w	$s6, $s1, 0
	alsl.d	$a1, $a1, $a2, 2
	add.w	$s2, $a1, $a3
	ld.d	$fp, $s1, 16
	addi.w	$a1, $s6, -1
	and	$a1, $a1, $s2
	slli.d	$a4, $a1, 3
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB95_5
.LBB95_2:                               # %while.end
	ld.w	$s3, $s1, 4
	bge	$s3, $s6, .LBB95_7
# %bb.3:                                # %while.end.if.end74_crit_edge
	ld.d	$s0, $s1, 8
	b	.LBB95_18
	.p2align	4, , 16
.LBB95_4:                               # %if.end5
                                        #   in Loop: Header=BB95_5 Depth=1
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB95_2
.LBB95_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a5, 0
	ld.w	$a6, $a6, 72
	bne	$a6, $a2, .LBB95_4
# %bb.6:                                # %Configcmp.exit
                                        #   in Loop: Header=BB95_5 Depth=1
	ld.w	$a5, $a5, 8
	bne	$a5, $a3, .LBB95_4
	b	.LBB95_15
.LBB95_7:                               # %if.then8
	move	$s4, $a0
	slli.w	$s5, $s6, 1
	slli.d	$a0, $s5, 5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB95_15
# %bb.8:                                # %if.end20
	move	$s0, $a0
	slli.d	$a0, $s5, 4
	alsl.d	$a1, $s5, $a0, 3
	ori	$a0, $zero, 1
	add.d	$fp, $s0, $a1
	blt	$s6, $a0, .LBB95_10
# %bb.9:                                # %for.body.preheader
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	slli.d	$a2, $a0, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB95_10:                              # %for.cond30.preheader
	blez	$s3, .LBB95_16
# %bb.11:                               # %for.body34.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s1, 8
	addi.w	$s6, $s5, -1
	slli.d	$a2, $s3, 4
	alsl.d	$a2, $s3, $a2, 3
	b	.LBB95_13
	.p2align	4, , 16
.LBB95_12:                              # %if.end54
                                        #   in Loop: Header=BB95_13 Depth=1
	alsl.d	$a5, $a5, $fp, 3
	st.d	$a6, $a4, 8
	stx.d	$a3, $s0, $a1
	st.d	$a5, $a4, 16
	addi.d	$a1, $a1, 24
	st.d	$a4, $a5, 0
	beq	$a2, $a1, .LBB95_17
.LBB95_13:                              # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a3, $a0, $a1
	ld.d	$a4, $a3, 0
	ld.w	$a4, $a4, 72
	ld.w	$a5, $a3, 8
	alsl.d	$a6, $a4, $a4, 3
	alsl.d	$a4, $a6, $a4, 2
	add.w	$a4, $a4, $a5
	and	$a5, $a4, $s6
	slli.d	$a4, $a5, 3
	ldx.d	$a6, $fp, $a4
	add.d	$a4, $s0, $a1
	beqz	$a6, .LBB95_12
# %bb.14:                               # %if.then49
                                        #   in Loop: Header=BB95_13 Depth=1
	addi.d	$a7, $a4, 8
	st.d	$a7, $a6, 16
	b	.LBB95_12
.LBB95_15:
	move	$a0, $zero
	b	.LBB95_21
.LBB95_16:                              # %for.cond30.preheader.for.end70_crit_edge
	ld.d	$a0, $s1, 8
	addi.w	$s6, $s5, -1
.LBB95_17:                              # %for.end70
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.w	$s5, $s1, 0
	st.d	$s0, $s1, 8
	st.d	$fp, $s1, 16
	and	$a1, $s6, $s2
	move	$a0, $s4
.LBB95_18:                              # %if.end74
	addi.d	$a2, $s3, 1
	st.w	$a2, $s1, 4
	slli.d	$a2, $s3, 4
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $fp, $a3
	alsl.d	$a4, $s3, $a2, 3
	add.d	$a2, $s0, $a4
	stx.d	$a0, $s0, $a4
	alsl.d	$a0, $a1, $fp, 3
	beqz	$a3, .LBB95_20
# %bb.19:                               # %if.then88
	addi.d	$a1, $a2, 8
	st.d	$a1, $a3, 16
.LBB95_20:                              # %if.end94
	st.d	$a3, $a2, 8
	st.d	$a2, $a0, 0
	st.d	$a0, $a2, 16
	ori	$a0, $zero, 1
.LBB95_21:                              # %cleanup106
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end95:
	.size	Configtable_insert, .Lfunc_end95-Configtable_insert
                                        # -- End function
	.globl	Configtable_find                # -- Begin function Configtable_find
	.p2align	5
	.type	Configtable_find,@function
Configtable_find:                       # @Configtable_find
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(x4a)
	ld.d	$a3, $a1, %pc_lo12(x4a)
	beqz	$a3, .LBB96_2
# %bb.1:                                # %if.end
	ld.d	$a1, $a0, 0
	ld.w	$a1, $a1, 72
	ld.w	$a2, $a0, 8
	alsl.d	$a0, $a1, $a1, 3
	ld.w	$a4, $a3, 0
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $a0, $a2
	ld.d	$a3, $a3, 16
	addi.w	$a4, $a4, -1
	and	$a0, $a4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a3, $a0
	bnez	$a3, .LBB96_5
.LBB96_2:
	move	$a0, $zero
.LBB96_3:                               # %cleanup
	ret
	.p2align	4, , 16
.LBB96_4:                               # %if.end4
                                        #   in Loop: Header=BB96_5 Depth=1
	ld.d	$a3, $a3, 8
	beqz	$a3, .LBB96_2
.LBB96_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a0, 0
	ld.w	$a4, $a4, 72
	bne	$a4, $a1, .LBB96_4
# %bb.6:                                # %Configcmp.exit
                                        #   in Loop: Header=BB96_5 Depth=1
	ld.w	$a4, $a0, 8
	bne	$a4, $a2, .LBB96_4
	b	.LBB96_3
.Lfunc_end96:
	.size	Configtable_find, .Lfunc_end96-Configtable_find
                                        # -- End function
	.globl	Configtable_clear               # -- Begin function Configtable_clear
	.p2align	5
	.type	Configtable_clear,@function
Configtable_clear:                      # @Configtable_clear
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(x4a)
	ld.d	$s0, $s1, %pc_lo12(x4a)
	beqz	$s0, .LBB97_9
# %bb.1:                                # %lor.lhs.false
	move	$fp, $a0
	ld.w	$a0, $s0, 4
	beqz	$a0, .LBB97_9
# %bb.2:                                # %if.end
	beqz	$fp, .LBB97_6
# %bb.3:                                # %if.end
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB97_6
# %bb.4:                                # %for.body.preheader
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB97_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ldx.d	$a0, $a0, $s2
	jirl	$ra, $fp, 0
	ld.d	$s0, $s1, %pc_lo12(x4a)
	ld.w	$a0, $s0, 4
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 24
	blt	$s3, $a0, .LBB97_5
.LBB97_6:                               # %if.end5
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB97_8
# %bb.7:                                # %for.body8.lr.ph
	ld.d	$a0, $s0, 16
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB97_8:                               # %for.end13
	st.w	$zero, $s0, 4
.LBB97_9:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end97:
	.size	Configtable_clear, .Lfunc_end97-Configtable_clear
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blt	$a0, $a2, .LBB98_10
# %bb.1:                                # %for.cond1.preheader.us.preheader
	move	$s0, $a0
	move	$s5, $zero
	addi.w	$s6, $zero, -1
	ori	$s7, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$s1, $a0, %pc_lo12(.L.str.163)
	b	.LBB98_3
	.p2align	4, , 16
.LBB98_2:                               # %for.cond1.for.inc23_crit_edge.us
                                        #   in Loop: Header=BB98_3 Depth=1
	addi.w	$s5, $s5, 1
	ori	$a0, $zero, 20
	beq	$s5, $a0, .LBB98_10
.LBB98_3:                               # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_6 Depth 2
                                        #       Child Loop BB98_7 Depth 3
	ori	$fp, $zero, 1
	b	.LBB98_6
	.p2align	4, , 16
.LBB98_4:                               # %while.end.us
                                        #   in Loop: Header=BB98_6 Depth=2
	ld.w	$a0, $sp, 24
	bnez	$a0, .LBB98_9
# %bb.5:                                # %if.end22.us
                                        #   in Loop: Header=BB98_6 Depth=2
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB98_2
.LBB98_6:                               # %for.body3.us
                                        #   Parent Loop BB98_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB98_7 Depth 3
	pcaddu18i	$ra, %call36(fork)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB98_11
	.p2align	4, , 16
.LBB98_7:                               # %while.cond.us
                                        #   Parent Loop BB98_3 Depth=1
                                        #     Parent Loop BB98_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(wait)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB98_4
# %bb.8:                                # %land.rhs.us
                                        #   in Loop: Header=BB98_7 Depth=3
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	beq	$a0, $s7, .LBB98_7
	b	.LBB98_4
.LBB98_9:                               # %if.then16.us
                                        #   in Loop: Header=BB98_6 Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s8, 0
	slli.d	$a0, $fp, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s3, $a1, $a0
	ori	$a1, $zero, 47
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	bne	$fp, $s0, .LBB98_6
	b	.LBB98_2
.LBB98_10:                              # %for.end25
	move	$a0, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB98_11:                              # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	st.d	$a0, $sp, 24
	pcalau12i	$a1, %pc_hi20(.L.str.161)
	bstrpick.d	$a0, $fp, 31, 0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	addi.d	$a1, $a1, %pc_lo12(.L.str.161)
	ld.d	$fp, $s4, 0
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
	pcaddu18i	$ra, %call36(mybasename)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a1, $a0, %pc_lo12(.L.str.162)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(lemon_main)
	jirl	$ra, $ra, 0
.Lfunc_end98:
	.size	main, .Lfunc_end98-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to allocate memory for a new acttab."
	.size	.L.str, 44

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"malloc failed\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"The specified start symbol \"%s\" is not in a nonterminal of the grammar.  \"%s\" will be used as the start symbol instead."
	.size	.L.str.2, 120

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"The start symbol \"%s\" occurs on the right-hand side of a rule. This will result in a parser which does not work properly."
	.size	.L.str.3, 122

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"This rule can not be reduced.\n"
	.size	.L.str.4, 31

	.type	freelist,@object                # @freelist
	.local	freelist
	.comm	freelist,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unable to allocate memory for a new configuration."
	.size	.L.str.5, 51

	.type	current,@object                 # @current
	.local	current
	.comm	current,8,8
	.type	currentend,@object              # @currentend
	.local	currentend
	.comm	currentend,8,8
	.type	basis,@object                   # @basis
	.local	basis
	.comm	basis,8,8
	.type	basisend,@object                # @basisend
	.local	basisend
	.comm	basisend,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Nonterminal \"%s\" has no rules."
	.size	.L.str.6, 31

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%.*s:%d: "
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%.*s: "
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s%.*s\n"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Out of memory.  Aborting...\n"
	.size	.L.str.10, 29

	.type	lemon_main.version,@object      # @lemon_main.version
	.local	lemon_main.version
	.comm	lemon_main.version,4,4
	.type	lemon_main.rpflag,@object       # @lemon_main.rpflag
	.local	lemon_main.rpflag
	.comm	lemon_main.rpflag,4,4
	.type	lemon_main.basisflag,@object    # @lemon_main.basisflag
	.local	lemon_main.basisflag
	.comm	lemon_main.basisflag,4,4
	.type	lemon_main.compress,@object     # @lemon_main.compress
	.local	lemon_main.compress
	.comm	lemon_main.compress,4,4
	.type	lemon_main.quiet,@object        # @lemon_main.quiet
	.local	lemon_main.quiet
	.comm	lemon_main.quiet,4,4
	.type	lemon_main.statistics,@object   # @lemon_main.statistics
	.local	lemon_main.statistics
	.comm	lemon_main.statistics,4,4
	.type	lemon_main.mhflag,@object       # @lemon_main.mhflag
	.local	lemon_main.mhflag
	.comm	lemon_main.mhflag,4,4
	.type	lemon_main.options,@object      # @lemon_main.options
	.data
	.p2align	3, 0x0
lemon_main.options:
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.11
	.dword	lemon_main.basisflag
	.dword	.L.str.12
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.13
	.dword	lemon_main.compress
	.dword	.L.str.14
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.15
	.dword	handle_D_option
	.dword	.L.str.16
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.17
	.dword	lemon_main.rpflag
	.dword	.L.str.18
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.19
	.dword	lemon_main.mhflag
	.dword	.L.str.20
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.21
	.dword	lemon_main.quiet
	.dword	.L.str.22
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.23
	.dword	lemon_main.statistics
	.dword	.L.str.24
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.25
	.dword	lemon_main.version
	.dword	.L.str.26
	.word	1                               # 0x1
	.space	4
	.dword	0
	.dword	0
	.dword	0
	.size	lemon_main.options, 288

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"b"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Print only the basis in report."
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"c"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Don't compress the action table."
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"D"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Define an %ifdef macro."
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"g"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Print grammar without actions."
	.size	.L.str.18, 31

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"m"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Output a makeheaders compatible file"
	.size	.L.str.20, 37

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"q"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"(Quiet) Don't print the report file."
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"s"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Print parser stats to standard output."
	.size	.L.str.24, 39

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"x"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Print the version number."
	.size	.L.str.26, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Exactly one filename argument is required.\n"
	.size	.L.str.28, 44

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"$"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"error"
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Empty grammar.\n"
	.size	.L.str.31, 16

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"{default}"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Parser statistics: %d terminals, %d nonterminals, %d rules\n"
	.size	.L.str.33, 60

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"                   %d states, %d parser table entries, %d conflicts\n"
	.size	.L.str.34, 69

	.type	argv,@object                    # @argv
	.local	argv
	.comm	argv,8,8
	.type	op,@object                      # @op
	.local	op
	.comm	op,8,8
	.type	errstream,@object               # @errstream
	.local	errstream
	.comm	errstream,8,8
	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Valid command line options for \"%s\" are:\n"
	.size	.L.str.35, 42

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"  -%-*s  %s\n"
	.size	.L.str.37, 13

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"  %s=<integer>%*s  %s\n"
	.size	.L.str.38, 23

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.space	1
	.size	.L.str.39, 1

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"  %s=<real>%*s  %s\n"
	.size	.L.str.40, 20

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  %s=<string>%*s  %s\n"
	.size	.L.str.41, 22

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"rb"
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Can't open this file for reading."
	.size	.L.str.43, 34

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Can't allocate %d of memory to hold this file."
	.size	.L.str.44, 47

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Can't read in all %d bytes of this file."
	.size	.L.str.45, 41

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"String starting on this line is not terminated before the end of the file."
	.size	.L.str.46, 75

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"C code starting on this line is not terminated before the end of the file."
	.size	.L.str.47, 75

	.type	plink_freelist,@object          # @plink_freelist
	.local	plink_freelist
	.comm	plink_freelist,8,8
	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Unable to allocate memory for a new follow-set propagation link.\n"
	.size	.L.str.48, 66

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Can't allocate space for a filename.\n"
	.size	.L.str.49, 38

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Can't open file \"%s\".\n"
	.size	.L.str.50, 23

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"// Reprint of input file \"%s\".\n// Symbols:\n"
	.size	.L.str.51, 44

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"//"
	.size	.L.str.52, 3

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" %3d %-*.*s"
	.size	.L.str.53, 12

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\n"
	.size	.L.str.54, 2

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"%s"
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	" ::="
	.size	.L.str.56, 5

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	" %s"
	.size	.L.str.57, 4

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"|%s"
	.size	.L.str.58, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	" [%s]"
	.size	.L.str.60, 6

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"%s ::="
	.size	.L.str.61, 7

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" *"
	.size	.L.str.62, 3

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"%*s shift  %d"
	.size	.L.str.63, 14

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"%*s reduce %d"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%*s accept"
	.size	.L.str.65, 11

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%*s error"
	.size	.L.str.66, 10

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%*s reduce %-3d ** Parsing conflict **"
	.size	.L.str.67, 39

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%*s shift  %d ** Parsing conflict **"
	.size	.L.str.68, 37

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	".out"
	.size	.L.str.69, 5

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"State %d:\n"
	.size	.L.str.71, 11

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"(%d)"
	.size	.L.str.72, 5

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"    %5s "
	.size	.L.str.73, 9

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"          "
	.size	.L.str.74, 11

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"----------------------------------------------------\n"
	.size	.L.str.75, 54

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Symbols:\n"
	.size	.L.str.76, 10

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"  %3d: %s"
	.size	.L.str.77, 10

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	" <lambda>"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s/%s"
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"PATH"
	.size	.L.str.81, 5

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	".:/bin:/usr/bin"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Parse"
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%.*s"
	.size	.L.str.84, 5

	.type	tplt_open.templatename,@object  # @tplt_open.templatename
	.data
tplt_open.templatename:
	.asciz	"lempar.c"
	.size	tplt_open.templatename, 9

	.type	.L.str.85,@object               # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"%.*s.lt"
	.size	.L.str.85, 8

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"%s.lt"
	.size	.L.str.86, 6

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Can't find the parser driver template file \"%s\".\n"
	.size	.L.str.87, 50

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Can't open the template file \"%s\".\n"
	.size	.L.str.88, 36

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"#line %d \""
	.size	.L.str.89, 11

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"\"\n"
	.size	.L.str.90, 3

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"(yypminor->yy%d)"
	.size	.L.str.92, 17

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"}\n"
	.size	.L.str.93, 3

	.type	append_str.z,@object            # @append_str.z
	.local	append_str.z
	.comm	append_str.z,8,8
	.type	append_str.alloced,@object      # @append_str.alloced
	.local	append_str.alloced
	.comm	append_str.alloced,4,4
	.type	append_str.used,@object         # @append_str.used
	.local	append_str.used
	.comm	append_str.used,4,4
	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"%d"
	.size	.L.str.94, 3

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"yygotominor.yy%d"
	.size	.L.str.95, 17

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"yymsp[%d].major"
	.size	.L.str.96, 16

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"yymsp[%d].minor.yy%d"
	.size	.L.str.97, 21

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Label \"%s\" for \"%s(%s)\" is never used."
	.size	.L.str.98, 39

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Label %s for \"%s(%s)\" is never used."
	.size	.L.str.99, 37

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"  yy_destructor(%d,&yymsp[%d].minor);\n"
	.size	.L.str.100, 39

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"{%s"
	.size	.L.str.101, 4

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Out of memory.\n"
	.size	.L.str.102, 16

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"#if INTERFACE\n"
	.size	.L.str.103, 15

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"#define %sTOKENTYPE %s\n"
	.size	.L.str.104, 24

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"void*"
	.size	.L.str.105, 6

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"#endif\n"
	.size	.L.str.106, 8

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"typedef union {\n"
	.size	.L.str.107, 17

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"  %sTOKENTYPE yy0;\n"
	.size	.L.str.108, 20

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"  %s yy%d;\n"
	.size	.L.str.109, 12

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"  int yy%d;\n"
	.size	.L.str.110, 13

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"} YYMINORTYPE;\n"
	.size	.L.str.111, 16

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	".c"
	.size	.L.str.112, 3

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	".h"
	.size	.L.str.113, 3

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"#include \"%s\"\n"
	.size	.L.str.114, 15

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"#define %s%-30s %2d\n"
	.size	.L.str.115, 21

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"#define YYCODETYPE %s\n"
	.size	.L.str.116, 23

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"#define YYNOCODE %d\n"
	.size	.L.str.117, 21

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"#define YYACTIONTYPE %s\n"
	.size	.L.str.118, 25

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"#define YYWILDCARD %d\n"
	.size	.L.str.119, 23

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"#ifndef YYSTACKDEPTH\n"
	.size	.L.str.120, 22

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"#define YYSTACKDEPTH %s\n"
	.size	.L.str.121, 25

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"#define YYSTACKDEPTH 100\n"
	.size	.L.str.122, 26

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"#define %sARG_SDECL %s;\n"
	.size	.L.str.123, 25

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"#define %sARG_PDECL ,%s\n"
	.size	.L.str.124, 25

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"#define %sARG_FETCH %s = yypParser->%s\n"
	.size	.L.str.125, 40

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"#define %sARG_STORE yypParser->%s = %s\n"
	.size	.L.str.126, 40

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"#define %sARG_SDECL\n"
	.size	.L.str.127, 21

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"#define %sARG_PDECL\n"
	.size	.L.str.128, 21

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"#define %sARG_FETCH\n"
	.size	.L.str.129, 21

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"#define %sARG_STORE\n"
	.size	.L.str.130, 21

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"#define YYNSTATE %d\n"
	.size	.L.str.131, 21

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"#define YYNRULE %d\n"
	.size	.L.str.132, 20

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"#define YYERRORSYMBOL %d\n"
	.size	.L.str.133, 26

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"#define YYERRSYMDT yy%d\n"
	.size	.L.str.134, 25

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"#define YYFALLBACK 1\n"
	.size	.L.str.135, 22

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"static const YYACTIONTYPE yy_action[] = {\n"
	.size	.L.str.136, 43

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	" /* %5d */ "
	.size	.L.str.137, 12

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	" %4d,"
	.size	.L.str.138, 6

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"};\n"
	.size	.L.str.139, 4

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"static const YYCODETYPE yy_lookahead[] = {\n"
	.size	.L.str.140, 44

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"#define YY_SHIFT_USE_DFLT (%d)\n"
	.size	.L.str.141, 32

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"#define YY_SHIFT_MAX %d\n"
	.size	.L.str.142, 25

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"static const %s yy_shift_ofst[] = {\n"
	.size	.L.str.143, 37

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"#define YY_REDUCE_USE_DFLT (%d)\n"
	.size	.L.str.144, 33

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"#define YY_REDUCE_MAX %d\n"
	.size	.L.str.145, 26

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"static const %s yy_reduce_ofst[] = {\n"
	.size	.L.str.146, 38

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"static const YYACTIONTYPE yy_default[] = {\n"
	.size	.L.str.147, 44

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"    0,  /* %10s => nothing */\n"
	.size	.L.str.148, 31

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"  %3d,  /* %10s => %s */\n"
	.size	.L.str.149, 26

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"\"%s\","
	.size	.L.str.150, 6

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"  %-15s"
	.size	.L.str.151, 8

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	" /* %3d */ \""
	.size	.L.str.152, 13

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"\",\n"
	.size	.L.str.153, 4

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"    case %d: /* %s */\n"
	.size	.L.str.154, 23

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"      break;\n"
	.size	.L.str.155, 14

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"  { %d, %d },\n"
	.size	.L.str.156, 15

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"      case %d: /* "
	.size	.L.str.157, 19

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	" */\n"
	.size	.L.str.158, 5

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"        break;\n"
	.size	.L.str.159, 16

	.type	size,@object                    # @size
	.local	size
	.comm	size,4,4
	.type	x1a,@object                     # @x1a
	.local	x1a
	.comm	x1a,8,8
	.type	x2a,@object                     # @x2a
	.local	x2a
	.comm	x2a,8,8
	.type	x3a,@object                     # @x3a
	.local	x3a
	.comm	x3a,8,8
	.type	x4a,@object                     # @x4a
	.local	x4a
	.comm	x4a,8,8
	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"lemon-child"
	.size	.L.str.160, 12

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"-s"
	.size	.L.str.161, 3

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"Processing %s\n"
	.size	.L.str.162, 15

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"Error while running on: %s\n"
	.size	.L.str.163, 28

	.type	Action_new.freelist,@object     # @Action_new.freelist
	.local	Action_new.freelist
	.comm	Action_new.freelist,8,8
	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"Unable to allocate memory for a new parser action."
	.size	.L.str.164, 51

	.type	nDefine,@object                 # @nDefine
	.local	nDefine
	.comm	nDefine,4,4
	.type	azDefine,@object                # @azDefine
	.local	azDefine
	.comm	azDefine,8,8
	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"out of memory\n"
	.size	.L.str.165, 15

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"%sundefined option.\n"
	.size	.L.str.166, 21

	.type	emsg,@object                    # @emsg
	.data
emsg:
	.asciz	"Command line syntax error: "
	.size	emsg, 28

	.type	.L.str.167,@object              # @.str.167
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.167:
	.asciz	"%smissing argument on switch.\n"
	.size	.L.str.167, 31

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"%soption requires an argument.\n"
	.size	.L.str.168, 32

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"%sillegal character in floating-point argument.\n"
	.size	.L.str.169, 49

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"%sillegal character in integer argument.\n"
	.size	.L.str.170, 42

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"\n%*s^-- here\n"
	.size	.L.str.171, 14

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"\n%*shere --^\n"
	.size	.L.str.172, 14

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"%endif"
	.size	.L.str.173, 7

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"%ifdef"
	.size	.L.str.174, 7

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"%ifndef"
	.size	.L.str.175, 8

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"unterminated %%ifdef starting on line %d\n"
	.size	.L.str.176, 42

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"There is not prior rule opon which to attach the code fragment which begins on this line."
	.size	.L.str.177, 90

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"Code fragment beginning on this line is not the first to follow the previous rule."
	.size	.L.str.178, 83

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"Token \"%s\" should be either \"%%\" or a nonterminal name."
	.size	.L.str.179, 56

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"The precedence symbol must be a terminal."
	.size	.L.str.180, 42

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"There is no prior rule to assign precedence \"[%s]\"."
	.size	.L.str.181, 52

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"Precedence mark on this line is not the first to follow the previous rule."
	.size	.L.str.182, 75

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"Missing \"]\" on precedence mark."
	.size	.L.str.183, 32

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"Expected to see a \":\" following the LHS symbol \"%s\"."
	.size	.L.str.184, 53

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"\"%s\" is not a valid alias for the LHS \"%s\"\n"
	.size	.L.str.185, 44

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"Missing \")\" following LHS alias name \"%s\"."
	.size	.L.str.186, 43

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"Missing \"->\" following: \"%s(%s)\"."
	.size	.L.str.187, 34

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"Can't allocate enough memory for this rule."
	.size	.L.str.188, 44

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"Too many symbols on RHS of rule beginning at \"%s\"."
	.size	.L.str.189, 51

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"Cannot form a compound containing a non-terminal"
	.size	.L.str.190, 49

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"Illegal character on RHS of rule: \"%s\"."
	.size	.L.str.191, 40

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"\"%s\" is not a valid alias for the RHS symbol \"%s\"\n"
	.size	.L.str.192, 51

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"name"
	.size	.L.str.193, 5

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"include"
	.size	.L.str.194, 8

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"code"
	.size	.L.str.195, 5

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"token_destructor"
	.size	.L.str.196, 17

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"default_destructor"
	.size	.L.str.197, 19

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"token_prefix"
	.size	.L.str.198, 13

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"syntax_error"
	.size	.L.str.199, 13

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"parse_accept"
	.size	.L.str.200, 13

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"parse_failure"
	.size	.L.str.201, 14

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"stack_overflow"
	.size	.L.str.202, 15

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"extra_argument"
	.size	.L.str.203, 15

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"token_type"
	.size	.L.str.204, 11

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"default_type"
	.size	.L.str.205, 13

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"stack_size"
	.size	.L.str.206, 11

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"start_symbol"
	.size	.L.str.207, 13

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"left"
	.size	.L.str.208, 5

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"right"
	.size	.L.str.209, 6

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"nonassoc"
	.size	.L.str.210, 9

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"destructor"
	.size	.L.str.211, 11

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"type"
	.size	.L.str.212, 5

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"fallback"
	.size	.L.str.213, 9

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"wildcard"
	.size	.L.str.214, 9

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"Unknown declaration keyword: \"%%%s\"."
	.size	.L.str.215, 37

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"Illegal declaration keyword: \"%s\"."
	.size	.L.str.216, 35

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"Symbol name missing after %destructor keyword"
	.size	.L.str.217, 46

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"Symbol \"%s\" has already be given a precedence."
	.size	.L.str.218, 47

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"Can't assign a precedence to \"%s\"."
	.size	.L.str.219, 35

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"The argument \"%s\" to declaration \"%%%s\" is not the first."
	.size	.L.str.220, 58

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"Illegal argument to %%%s: %s"
	.size	.L.str.221, 29

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"%%fallback argument \"%s\" should be a token"
	.size	.L.str.222, 43

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"More than one fallback assigned to token %s"
	.size	.L.str.223, 44

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"%%wildcard argument \"%s\" should be a token"
	.size	.L.str.224, 43

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"Extra wildcard to token: %s"
	.size	.L.str.225, 28

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"unsigned char"
	.size	.L.str.226, 14

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"unsigned short int"
	.size	.L.str.227, 19

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"unsigned int"
	.size	.L.str.228, 13

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"signed char"
	.size	.L.str.229, 12

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"short"
	.size	.L.str.230, 6

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"int"
	.size	.L.str.231, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Lemon version 1.0"
	.size	.Lstr, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_D_option
	.addrsig_sym axset_compare
	.addrsig_sym stateResortCompare
	.addrsig_sym Symbolcmpp
	.addrsig_sym current
	.addrsig_sym basis
	.addrsig_sym lemon_main.version
	.addrsig_sym lemon_main.rpflag
	.addrsig_sym lemon_main.basisflag
	.addrsig_sym lemon_main.compress
	.addrsig_sym lemon_main.quiet
	.addrsig_sym lemon_main.statistics
	.addrsig_sym lemon_main.mhflag
	.addrsig_sym lemon_main.options
	.addrsig_sym tplt_open.templatename
	.addrsig_sym emsg
