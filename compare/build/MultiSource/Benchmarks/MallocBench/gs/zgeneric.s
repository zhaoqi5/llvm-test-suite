	.file	"zgeneric.c"
	.text
	.globl	zcopy                           # -- Begin function zcopy
	.p2align	5
	.type	zcopy,@function
zcopy:                                  # @zcopy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, 8
	bstrpick.d	$a4, $a2, 7, 2
	ori	$a3, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a3, $a4, .LBB0_19
# %bb.1:                                # %entry
	slli.d	$a3, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI0_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI0_0)
	ldx.w	$a3, $a5, $a3
	add.d	$a3, $a5, $a3
	jr	$a3
.LBB0_2:                                # %sw.bb22
	ld.hu	$a5, $a0, -8
	bstrpick.d	$a3, $a5, 7, 2
	bne	$a3, $a4, .LBB0_19
# %bb.3:                                # %if.end.i
	andi	$a2, $a2, 256
	addi.w	$a1, $zero, -7
	beqz	$a2, .LBB0_19
# %bb.4:                                # %if.end.i
	andi	$a2, $a5, 512
	beqz	$a2, .LBB0_19
# %bb.5:                                # %if.end17.i
	ld.hu	$a2, $a0, -6
	ld.hu	$a1, $a0, 10
	bltu	$a1, $a2, .LBB0_12
# %bb.6:                                # %if.end24.i
	addi.d	$fp, $a0, -16
	beqz	$a3, .LBB0_9
# %bb.7:                                # %if.end24.i
	ori	$a1, $zero, 13
	beq	$a3, $a1, .LBB0_16
# %bb.8:                                # %if.end24.i
	ori	$a1, $zero, 10
	bne	$a3, $a1, .LBB0_18
.LBB0_9:                                # %sw.bb.i
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a0, -16
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(refcpy)
	jirl	$ra, $ra, 0
	b	.LBB0_17
.LBB0_10:                               # %sw.bb24
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(zcopy_dict)
	jr	$t8
.LBB0_11:                               # %sw.bb
	pcalau12i	$a1, %got_pc_hi20(osbot)
	ld.d	$a1, $a1, %got_pc_lo12(osbot)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a0, 0
	sub.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 4
	bgeu	$a2, $a1, .LBB0_13
.LBB0_12:
	addi.w	$a1, $zero, -15
	b	.LBB0_19
.LBB0_13:                               # %if.end
	pcalau12i	$a2, %got_pc_hi20(ostop)
	ld.d	$s0, $a2, %got_pc_lo12(ostop)
	ld.d	$a3, $s0, 0
	addi.w	$a2, $a1, 0
	alsl.d	$a4, $a2, $a0, 4
	addi.d	$a4, $a4, -16
	bgeu	$a3, $a4, .LBB0_15
# %bb.14:
	addi.w	$a1, $zero, -16
	b	.LBB0_19
.LBB0_15:                               # %if.end8
	slli.d	$s1, $a1, 32
	slli.d	$a1, $a2, 4
	sub.d	$a1, $a0, $a1
	srai.d	$a2, $s1, 28
	move	$fp, $a0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	ld.d	$a1, $s0, 0
	add.d	$a0, $s1, $a0
	srai.d	$a0, $a0, 28
	add.d	$a0, $fp, $a0
	sltu	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(osp)
	ld.d	$a2, $a2, %got_pc_lo12(osp)
	masknez	$a0, $a0, $a1
	maskeqz	$a3, $fp, $a1
	or	$a0, $a3, $a0
	st.d	$a0, $a2, 0
	addi.w	$a0, $zero, -16
	maskeqz	$a1, $a0, $a1
	b	.LBB0_19
.LBB0_16:                               # %sw.bb32.i
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a0, -16
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_17:                               # %if.end27
	move	$a0, $s0
.LBB0_18:                               # %if.end27
	ld.h	$a1, $a0, -6
	st.h	$a1, $a0, 10
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a2, $a1, %got_pc_lo12(osp)
	vst	$vr0, $fp, 0
	ld.h	$a3, $a0, -8
	move	$a1, $zero
	ld.d	$a4, $a2, 0
	lu12i.w	$a5, 8
	or	$a3, $a3, $a5
	st.h	$a3, $a0, -8
	addi.d	$a0, $a4, -16
	st.d	$a0, $a2, 0
.LBB0_19:                               # %cleanup35
	move	$a0, $a1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	zcopy, .Lfunc_end0-zcopy
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
                                        # -- End function
	.text
	.globl	copy_interval                   # -- Begin function copy_interval
	.p2align	5
	.type	copy_interval,@function
copy_interval:                          # @copy_interval
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a3, $a2, 8
	ld.hu	$a5, $a0, 8
	bstrpick.d	$a4, $a3, 7, 2
	bstrpick.d	$a6, $a5, 7, 2
	bne	$a4, $a6, .LBB1_6
# %bb.1:                                # %if.end
	andi	$a6, $a3, 512
	addi.w	$a3, $zero, -7
	beqz	$a6, .LBB1_5
# %bb.2:                                # %if.end
	andi	$a5, $a5, 256
	beqz	$a5, .LBB1_5
# %bb.3:                                # %if.end17
	ld.hu	$a5, $a0, 10
	ld.hu	$a3, $a2, 10
	sub.w	$a5, $a5, $a1
	bgeu	$a5, $a3, .LBB1_7
# %bb.4:
	addi.w	$a3, $zero, -15
.LBB1_5:                                # %return
	move	$a0, $a3
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_6:
	addi.w	$a3, $zero, -20
	move	$a0, $a3
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_7:                                # %if.end24
	beqz	$a4, .LBB1_10
# %bb.8:                                # %if.end24
	ori	$a5, $zero, 13
	beq	$a4, $a5, .LBB1_11
# %bb.9:                                # %if.end24
	ori	$a5, $zero, 10
	bne	$a4, $a5, .LBB1_12
.LBB1_10:                               # %sw.bb
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a0, $a1, $a0, 4
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(refcpy)
	jirl	$ra, $ra, 0
	b	.LBB1_12
.LBB1_11:                               # %sw.bb32
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a0, $a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %return
	move	$a3, $zero
	move	$a0, $a3
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	copy_interval, .Lfunc_end1-copy_interval
                                        # -- End function
	.globl	zlength                         # -- Begin function zlength
	.p2align	5
	.type	zlength,@function
zlength:                                # @zlength
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $a0
	ld.hu	$a1, $a0, 8
	bstrpick.d	$a3, $a1, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a0, $zero, -20
	bltu	$a4, $a3, .LBB2_4
# %bb.1:                                # %entry
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB2_2:                                # %sw.bb
	andi	$a0, $a1, 512
	bnez	$a0, .LBB2_5
# %bb.3:
	addi.w	$a0, $zero, -7
.LBB2_4:                                # %return
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_5:                                # %if.end
	ld.hu	$a1, $a2, 10
	move	$a0, $zero
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 20
	st.h	$a1, $a2, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_6:                                # %sw.bb6
	move	$fp, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $a0, 8
	andi	$a0, $a0, 512
	bnez	$a0, .LBB2_9
# %bb.7:
	addi.w	$a0, $zero, -7
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_8:                                # %sw.bb18
	addi.d	$a1, $sp, 0
	move	$fp, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(name_string_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 10
	move	$a0, $zero
	b	.LBB2_10
.LBB2_9:                                # %if.end13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dict_length)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	bstrpick.d	$a1, $a1, 31, 0
.LBB2_10:                               # %return
	st.d	$a1, $fp, 0
	ori	$a1, $zero, 20
	st.h	$a1, $fp, 8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	zlength, .Lfunc_end2-zlength
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_2-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_8-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_2-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_2-.LJTI2_0
                                        # -- End function
	.text
	.globl	zget                            # -- Begin function zget
	.p2align	5
	.type	zget,@function
zget:                                   # @zget
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.hu	$a2, $a0, -8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a0, $zero, -20
	bltu	$a4, $a3, .LBB3_18
# %bb.1:                                # %entry
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	addi.d	$fp, $s0, -16
	jr	$a3
.LBB3_2:                                # %sw.bb8
	ld.hu	$a3, $s0, 8
	andi	$a3, $a3, 252
	ori	$a4, $zero, 20
	bne	$a3, $a4, .LBB3_18
# %bb.3:                                # %if.end15
	andi	$a0, $a2, 512
	beqz	$a0, .LBB3_11
# %bb.4:                                # %if.end22
	ld.d	$a0, $s0, 0
	ld.hu	$a1, $s0, -6
	bgeu	$a0, $a1, .LBB3_16
# %bb.5:                                # %if.end27
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $a1, 4
	b	.LBB3_14
.LBB3_6:                                # %sw.bb32
	ld.hu	$a3, $s0, 8
	andi	$a3, $a3, 252
	ori	$a4, $zero, 20
	bne	$a3, $a4, .LBB3_18
# %bb.7:                                # %if.end39
	andi	$a0, $a2, 512
	beqz	$a0, .LBB3_11
# %bb.8:                                # %if.end46
	ld.d	$a0, $s0, 0
	ld.hu	$a2, $s0, -6
	bgeu	$a0, $a2, .LBB3_16
# %bb.9:                                # %if.end53
	ld.d	$a2, $s0, -16
	ldx.bu	$a0, $a2, $a0
	st.d	$a0, $s0, -16
	ori	$a0, $zero, 20
	st.h	$a0, $s0, -8
	b	.LBB3_15
.LBB3_10:                               # %sw.bb
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $a0, 8
	andi	$a0, $a0, 512
	bnez	$a0, .LBB3_12
.LBB3_11:
	addi.w	$a0, $zero, -7
	b	.LBB3_18
.LBB3_12:                               # %if.end
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(dict_lookup)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_17
# %bb.13:                               # %if.end.sw.epilog_crit_edge
	ld.d	$a0, $sp, 0
.LBB3_14:                               # %sw.epilog
	vld	$vr0, $a0, 0
	vst	$vr0, $fp, 0
.LBB3_15:                               # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a1, 0
	b	.LBB3_18
.LBB3_16:
	addi.w	$a0, $zero, -15
	b	.LBB3_18
.LBB3_17:
	addi.w	$a0, $zero, -21
.LBB3_18:                               # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	zget, .Lfunc_end3-zget
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_2-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_18-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
                                        # -- End function
	.text
	.globl	zput                            # -- Begin function zput
	.p2align	5
	.type	zput,@function
zput:                                   # @zput
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, -24
	bstrpick.d	$a1, $a2, 7, 2
	ori	$a3, $zero, 13
	bltu	$a3, $a1, .LBB4_7
# %bb.1:                                # %entry
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI4_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_0)
	ldx.w	$a1, $a3, $a1
	addi.d	$s0, $a0, -16
	addi.d	$fp, $a0, -32
	add.d	$a3, $a3, $a1
	addi.w	$a1, $zero, -7
	jr	$a3
.LBB4_2:                                # %sw.bb9
	ld.hu	$a3, $a0, -8
	andi	$a3, $a3, 252
	ori	$a4, $zero, 20
	bne	$a3, $a4, .LBB4_7
# %bb.3:                                # %if.end15
	andi	$a2, $a2, 256
	beqz	$a2, .LBB4_20
# %bb.4:                                # %if.end22
	ld.d	$a2, $s0, 0
	addi.w	$a1, $zero, -15
	bltz	$a2, .LBB4_20
# %bb.5:                                # %lor.lhs.false
	ld.hu	$a3, $a0, -22
	bgeu	$a2, $a3, .LBB4_20
# %bb.6:                                # %if.end30
	ld.d	$a1, $a0, -32
	vld	$vr0, $a0, 0
	slli.d	$a0, $a2, 4
	vstx	$vr0, $a1, $a0
	b	.LBB4_10
.LBB4_7:
	addi.w	$a1, $zero, -20
	b	.LBB4_20
.LBB4_8:                                # %sw.bb
	move	$s1, $a0
	move	$s2, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	ld.hu	$a0, $a0, 8
	andi	$a0, $a0, 256
	beqz	$a0, .LBB4_20
# %bb.9:                                # %if.end
	move	$a2, $s1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(dict_put)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bnez	$a0, .LBB4_20
.LBB4_10:                               # %sw.epilog
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -48
	st.d	$a2, $a0, 0
	b	.LBB4_20
.LBB4_11:                               # %sw.bb36
	ld.hu	$a3, $a0, -8
	andi	$a4, $a3, 252
	ori	$a5, $zero, 20
	addi.w	$a3, $zero, -20
	bne	$a4, $a5, .LBB4_18
# %bb.12:                               # %if.end43
	andi	$a2, $a2, 256
	beqz	$a2, .LBB4_20
# %bb.13:                               # %if.end50
	ld.d	$a2, $s0, 0
	addi.w	$a4, $zero, -15
	bltz	$a2, .LBB4_19
# %bb.14:                               # %lor.lhs.false54
	ld.hu	$a1, $a0, -22
	bgeu	$a2, $a1, .LBB4_19
# %bb.15:                               # %if.end61
	ld.hu	$a1, $a0, 8
	andi	$a5, $a1, 252
	ori	$a6, $zero, 20
	move	$a1, $a3
	bne	$a5, $a6, .LBB4_20
# %bb.16:                               # %if.end68
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 255
	move	$a1, $a4
	bltu	$a3, $a0, .LBB4_20
# %bb.17:                               # %if.end73
	ld.d	$a1, $fp, 0
	stx.b	$a0, $a1, $a2
	b	.LBB4_10
.LBB4_18:
	move	$a1, $a3
	b	.LBB4_20
.LBB4_19:
	move	$a1, $a4
.LBB4_20:                               # %cleanup80
	move	$a0, $a1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	zput, .Lfunc_end4-zput
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_8-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_7-.LJTI4_0
	.word	.LBB4_11-.LJTI4_0
                                        # -- End function
	.text
	.globl	zgetinterval                    # -- Begin function zgetinterval
	.p2align	5
	.type	zgetinterval,@function
zgetinterval:                           # @zgetinterval
# %bb.0:                                # %entry
	ld.hu	$a1, $a0, -8
	andi	$a3, $a1, 252
	ori	$a2, $zero, 20
	addi.w	$a1, $zero, -20
	bne	$a3, $a2, .LBB5_8
# %bb.1:                                # %if.end
	ld.hu	$a3, $a0, 8
	andi	$a3, $a3, 252
	bne	$a3, $a2, .LBB5_8
# %bb.2:                                # %if.end9
	ld.hu	$a2, $a0, -24
	bstrpick.d	$a4, $a2, 7, 2
	ori	$a3, $zero, 13
	bltu	$a3, $a4, .LBB5_8
# %bb.3:                                # %if.end9
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a4
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1025
	and	$a3, $a3, $a5
	beqz	$a3, .LBB5_8
# %bb.4:                                # %sw.epilog
	andi	$a1, $a2, 512
	bnez	$a1, .LBB5_6
# %bb.5:
	addi.w	$a1, $zero, -7
	move	$a0, $a1
	ret
.LBB5_6:                                # %if.end17
	ld.d	$a5, $a0, -16
	ld.hu	$a6, $a0, -22
	addi.w	$a1, $zero, -15
	bltu	$a6, $a5, .LBB5_8
# %bb.7:                                # %if.end22
	ld.d	$a3, $a0, 0
	sub.d	$a6, $a6, $a5
	bgeu	$a6, $a3, .LBB5_9
.LBB5_8:                                # %cleanup
	move	$a0, $a1
	ret
.LBB5_9:                                # %if.end32
	beqz	$a4, .LBB5_12
# %bb.10:                               # %if.end32
	ori	$a1, $zero, 13
	beq	$a4, $a1, .LBB5_13
# %bb.11:                               # %if.end32
	ori	$a1, $zero, 10
	bne	$a4, $a1, .LBB5_15
.LBB5_12:                               # %sw.bb39
	ld.d	$a1, $a0, -32
	alsl.d	$a1, $a5, $a1, 4
	b	.LBB5_14
.LBB5_13:                               # %sw.bb42
	ld.d	$a1, $a0, -32
	add.d	$a1, $a1, $a5
.LBB5_14:                               # %sw.epilog46.sink.split
	st.d	$a1, $a0, -32
.LBB5_15:                               # %sw.epilog46
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a4, $a1, %got_pc_lo12(osp)
	st.h	$a3, $a0, -22
	ld.d	$a3, $a4, 0
	lu12i.w	$a5, 8
	or	$a2, $a2, $a5
	st.h	$a2, $a0, -24
	addi.d	$a0, $a3, -32
	st.d	$a0, $a4, 0
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	zgetinterval, .Lfunc_end5-zgetinterval
                                        # -- End function
	.globl	zputinterval                    # -- Begin function zputinterval
	.p2align	5
	.type	zputinterval,@function
zputinterval:                           # @zputinterval
# %bb.0:                                # %entry
	ld.hu	$a1, $a0, -8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 20
	addi.w	$a1, $zero, -20
	bne	$a2, $a3, .LBB6_19
# %bb.1:                                # %if.end
	ld.hu	$a3, $a0, -24
	bstrpick.d	$a2, $a3, 7, 2
	beqz	$a2, .LBB6_5
# %bb.2:                                # %if.end
	ori	$a4, $zero, 13
	beq	$a2, $a4, .LBB6_5
# %bb.3:                                # %if.end
	ori	$a0, $zero, 10
	bne	$a2, $a0, .LBB6_19
# %bb.4:                                # %sw.bb
	addi.w	$a0, $zero, -7
	ret
.LBB6_5:                                # %sw.epilog
	andi	$a1, $a3, 256
	bnez	$a1, .LBB6_7
# %bb.6:
	addi.w	$a0, $zero, -7
	ret
.LBB6_7:                                # %if.end11
	ld.d	$a3, $a0, -16
	ld.hu	$a5, $a0, -22
	bgeu	$a5, $a3, .LBB6_9
# %bb.8:
	addi.w	$a0, $zero, -15
	ret
.LBB6_9:                                # %if.end16
	ld.hu	$a6, $a0, 8
	bstrpick.d	$a4, $a6, 7, 2
	move	$a1, $zero
	bne	$a4, $a2, .LBB6_19
# %bb.10:                               # %if.end16
	andi	$a2, $a6, 512
	beqz	$a2, .LBB6_19
# %bb.11:                               # %if.end17.i
	ld.hu	$a2, $a0, 10
	sub.w	$a1, $a5, $a3
	bgeu	$a1, $a2, .LBB6_13
# %bb.12:
	move	$a0, $zero
	ret
.LBB6_13:                               # %if.end24.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a4, .LBB6_16
# %bb.14:                               # %if.end24.i
	ori	$a1, $zero, 13
	beq	$a4, $a1, .LBB6_17
# %bb.15:                               # %if.end24.i
	ori	$a1, $zero, 10
	bne	$a4, $a1, .LBB6_18
.LBB6_16:                               # %sw.bb.i
	ld.d	$a4, $a0, -32
	ld.d	$a1, $a0, 0
	alsl.d	$a0, $a3, $a4, 4
	pcaddu18i	$ra, %call36(refcpy)
	jirl	$ra, $ra, 0
	b	.LBB6_18
.LBB6_17:                               # %sw.bb32.i
	ld.d	$a4, $a0, -32
	ld.d	$a1, $a0, 0
	add.d	$a0, $a4, $a3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_18:                               # %if.then21
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, -48
	st.d	$a2, $a0, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB6_19:                               # %cleanup
	move	$a0, $a1
	ret
.Lfunc_end6:
	.size	zputinterval, .Lfunc_end6-zputinterval
                                        # -- End function
	.globl	zforall                         # -- Begin function zforall
	.p2align	5
	.type	zforall,@function
zforall:                                # @zforall
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a2, $a0, -8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 13
	addi.w	$a1, $zero, -20
	bltu	$a4, $a3, .LBB7_11
# %bb.1:                                # %entry
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI7_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI7_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	addi.d	$fp, $a0, -16
	jr	$a3
.LBB7_2:                                # %sw.bb
	andi	$a1, $a2, 512
	beqz	$a1, .LBB7_7
# %bb.3:
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(array_continue)
	addi.d	$a1, $a1, %pc_lo12(array_continue)
	b	.LBB7_9
.LBB7_4:                                # %sw.bb4
	andi	$a1, $a2, 512
	beqz	$a1, .LBB7_7
# %bb.5:
	move	$a2, $zero
	pcalau12i	$a1, %pc_hi20(string_continue)
	addi.d	$a1, $a1, %pc_lo12(string_continue)
	b	.LBB7_9
.LBB7_6:                                # %sw.bb12
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dict_access_ref)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $a0, 8
	andi	$a0, $a0, 512
	bnez	$a0, .LBB7_8
.LBB7_7:
	addi.w	$a1, $zero, -7
	b	.LBB7_11
.LBB7_8:                                # %if.end19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dict_first)
	jirl	$ra, $ra, 0
	bstrpick.d	$a2, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(dict_continue)
	addi.d	$a1, $a0, %pc_lo12(dict_continue)
	move	$a0, $s0
.LBB7_9:                                # %sw.epilog
	pcalau12i	$a3, %got_pc_hi20(esp)
	ld.d	$a3, $a3, %got_pc_lo12(esp)
	pcalau12i	$a4, %got_pc_hi20(estop)
	ld.d	$a5, $a4, %got_pc_lo12(estop)
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a5, 0
	addi.d	$a6, $a4, 96
	bgeu	$a5, $a6, .LBB7_12
# %bb.10:
	addi.w	$a1, $zero, -5
.LBB7_11:                               # %cleanup
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_12:                               # %if.end24
	ori	$a5, $zero, 2
	st.h	$a5, $a4, 16
	ori	$a5, $zero, 33
	st.h	$a5, $a4, 24
	addi.d	$a5, $a4, 32
	st.d	$a5, $a3, 0
	vld	$vr0, $fp, 0
	vst	$vr0, $a4, 32
	st.d	$a2, $a4, 48
	ori	$a2, $zero, 20
	st.h	$a2, $a4, 56
	pcalau12i	$a2, %got_pc_hi20(osp)
	ld.d	$a2, $a2, %got_pc_lo12(osp)
	addi.d	$a5, $a4, 64
	st.d	$a5, $a3, 0
	vld	$vr0, $a0, 0
	ld.d	$a3, $a2, 0
	vst	$vr0, $a4, 64
	addi.d	$a3, $a3, -32
	addi.d	$a0, $a0, -32
	st.d	$a3, $a2, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.Lfunc_end7:
	.size	zforall, .Lfunc_end7-zforall
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_6-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_2-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_11-.LJTI7_0
	.word	.LBB7_4-.LJTI7_0
                                        # -- End function
	.text
	.globl	array_continue                  # -- Begin function array_continue
	.p2align	5
	.type	array_continue,@function
array_continue:                         # @array_continue
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a2, $a1, 0
	ld.hu	$a3, $a2, -22
	addi.d	$a4, $a3, -1
	st.h	$a4, $a2, -22
	beqz	$a3, .LBB8_3
# %bb.1:                                # %if.then
	pcalau12i	$a3, %got_pc_hi20(ostop)
	ld.d	$a3, $a3, %got_pc_lo12(ostop)
	pcalau12i	$a4, %got_pc_hi20(osp)
	ld.d	$a4, $a4, %got_pc_lo12(osp)
	ld.d	$a5, $a3, 0
	addi.d	$a3, $a0, 16
	st.d	$a3, $a4, 0
	bgeu	$a5, $a3, .LBB8_4
# %bb.2:                                # %if.then2
	st.d	$a0, $a4, 0
	addi.w	$a0, $zero, -16
	ret
.LBB8_3:                                # %if.else
	addi.d	$a0, $a2, -64
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	ret
.LBB8_4:                                # %if.end
	ld.d	$a0, $a2, -32
	vld	$vr0, $a0, 0
	vst	$vr0, $a3, 0
	ld.d	$a0, $a2, -32
	addi.d	$a0, $a0, 16
	st.d	$a0, $a2, -32
	ld.d	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(array_continue)
	addi.d	$a3, $a3, %pc_lo12(array_continue)
	st.d	$a3, $a0, 16
	ori	$a3, $zero, 37
	st.w	$a3, $a0, 24
	addi.d	$a3, $a0, 32
	st.d	$a3, $a1, 0
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 32
	ori	$a0, $zero, 1
	ret
.Lfunc_end8:
	.size	array_continue, .Lfunc_end8-array_continue
                                        # -- End function
	.globl	string_continue                 # -- Begin function string_continue
	.p2align	5
	.type	string_continue,@function
string_continue:                        # @string_continue
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a2, $a1, 0
	ld.hu	$a3, $a2, -22
	addi.d	$a4, $a3, -1
	st.h	$a4, $a2, -22
	beqz	$a3, .LBB9_3
# %bb.1:                                # %if.then
	pcalau12i	$a3, %got_pc_hi20(ostop)
	ld.d	$a4, $a3, %got_pc_lo12(ostop)
	pcalau12i	$a3, %got_pc_hi20(osp)
	ld.d	$a3, $a3, %got_pc_lo12(osp)
	ld.d	$a4, $a4, 0
	addi.d	$a5, $a0, 16
	st.d	$a5, $a3, 0
	bgeu	$a4, $a5, .LBB9_4
# %bb.2:                                # %if.then2
	st.d	$a0, $a3, 0
	addi.w	$a0, $zero, -16
	ret
.LBB9_3:                                # %if.else
	addi.d	$a0, $a2, -64
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	ret
.LBB9_4:                                # %if.end
	ld.d	$a3, $a2, -32
	ld.bu	$a3, $a3, 0
	st.d	$a3, $a0, 16
	ori	$a3, $zero, 20
	st.h	$a3, $a0, 24
	ld.d	$a0, $a2, -32
	addi.d	$a0, $a0, 1
	st.d	$a0, $a2, -32
	ld.d	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(string_continue)
	addi.d	$a3, $a3, %pc_lo12(string_continue)
	st.d	$a3, $a0, 16
	ori	$a3, $zero, 37
	st.w	$a3, $a0, 24
	addi.d	$a3, $a0, 32
	st.d	$a3, $a1, 0
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 32
	ori	$a0, $zero, 1
	ret
.Lfunc_end9:
	.size	string_continue, .Lfunc_end9-string_continue
                                        # -- End function
	.globl	dict_continue                   # -- Begin function dict_continue
	.p2align	5
	.type	dict_continue,@function
dict_continue:                          # @dict_continue
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$fp, $a1, %got_pc_lo12(esp)
	pcalau12i	$a1, %got_pc_hi20(ostop)
	ld.d	$a1, $a1, %got_pc_lo12(ostop)
	ld.d	$s0, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(osp)
	ld.d	$s1, $a2, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $s0, -16
	addi.d	$a3, $a0, 32
	st.d	$a3, $s1, 0
	bgeu	$a2, $a3, .LBB10_2
# %bb.1:                                # %if.then
	st.d	$a0, $s1, 0
	addi.w	$a0, $zero, -16
	b	.LBB10_6
.LBB10_2:                               # %if.end
	addi.d	$a3, $s0, -32
	addi.d	$a2, $a0, 16
	move	$a0, $a3
	pcaddu18i	$ra, %call36(dict_next)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB10_4
# %bb.3:                                # %if.then7
	ld.d	$a1, $fp, 0
	st.d	$a0, $a1, -16
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(dict_continue)
	addi.d	$a1, $a1, %pc_lo12(dict_continue)
	st.d	$a1, $a0, 16
	ori	$a1, $zero, 37
	st.w	$a1, $a0, 24
	addi.d	$a1, $a0, 32
	st.d	$a1, $fp, 0
	vld	$vr0, $s0, 0
	vst	$vr0, $a0, 32
	b	.LBB10_5
.LBB10_4:                               # %if.else
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	addi.d	$a0, $a0, -32
	st.d	$a0, $s1, 0
	addi.d	$a0, $a1, -64
	st.d	$a0, $fp, 0
.LBB10_5:                               # %cleanup
	ori	$a0, $zero, 1
.LBB10_6:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	dict_continue, .Lfunc_end10-dict_continue
                                        # -- End function
	.globl	zgeneric_op_init                # -- Begin function zgeneric_op_init
	.p2align	5
	.type	zgeneric_op_init,@function
zgeneric_op_init:                       # @zgeneric_op_init
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(zgeneric_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(zgeneric_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end11:
	.size	zgeneric_op_init, .Lfunc_end11-zgeneric_op_init
                                        # -- End function
	.type	zgeneric_op_init.my_defs,@object # @zgeneric_op_init.my_defs
	.data
	.p2align	3, 0x0
zgeneric_op_init.my_defs:
	.dword	.L.str
	.dword	zcopy
	.dword	.L.str.1
	.dword	zforall
	.dword	.L.str.2
	.dword	zget
	.dword	.L.str.3
	.dword	zgetinterval
	.dword	.L.str.4
	.dword	zlength
	.dword	.L.str.5
	.dword	zput
	.dword	.L.str.6
	.dword	zputinterval
	.space	16
	.size	zgeneric_op_init.my_defs, 128

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1copy"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"2forall"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"2get"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"3getinterval"
	.size	.L.str.3, 13

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"1length"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"3put"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"3putinterval"
	.size	.L.str.6, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zcopy
	.addrsig_sym zlength
	.addrsig_sym zget
	.addrsig_sym zput
	.addrsig_sym zgetinterval
	.addrsig_sym zputinterval
	.addrsig_sym zforall
	.addrsig_sym array_continue
	.addrsig_sym string_continue
	.addrsig_sym dict_continue
	.addrsig_sym zgeneric_op_init.my_defs
