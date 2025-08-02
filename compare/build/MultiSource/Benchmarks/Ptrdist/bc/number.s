	.file	"number.c"
	.text
	.globl	free_num                        # -- Begin function free_num
	.p2align	5
	.type	free_num,@function
free_num:                               # @free_num
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB0_4
# %bb.1:                                # %if.end
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB0_3
# %bb.2:                                # %if.then3
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_3:                                # %if.end4
	st.d	$zero, $a0, 0
.LBB0_4:                                # %return
	ret
.Lfunc_end0:
	.size	free_num, .Lfunc_end0-free_num
                                        # -- End function
	.globl	new_num                         # -- Begin function new_num
	.p2align	5
	.type	new_num,@function
new_num:                                # @new_num
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s0, $a0, 4
	st.w	$fp, $a0, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	st.b	$zero, $a0, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	new_num, .Lfunc_end1-new_num
                                        # -- End function
	.globl	init_numbers                    # -- Begin function init_numbers
	.p2align	5
	.type	init_numbers,@function
init_numbers:                           # @init_numbers
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	vreplgr2vr.d	$vr0, $a1
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	st.b	$zero, $a0, 16
	pcalau12i	$a1, %pc_hi20(_zero_)
	st.d	$a0, $a1, %pc_lo12(_zero_)
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(_one_)
	st.d	$a0, $a1, %pc_lo12(_one_)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 16
	ori	$a0, $zero, 1041
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(_two_)
	st.d	$a0, $a1, %pc_lo12(_two_)
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 16
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	init_numbers, .Lfunc_end2-init_numbers
                                        # -- End function
	.globl	copy_num                        # -- Begin function copy_num
	.p2align	5
	.type	copy_num,@function
copy_num:                               # @copy_num
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ret
.Lfunc_end3:
	.size	copy_num, .Lfunc_end3-copy_num
                                        # -- End function
	.globl	init_num                        # -- Begin function init_num
	.p2align	5
	.type	init_num,@function
init_num:                               # @init_num
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(_zero_)
	ld.d	$a1, $a1, %pc_lo12(_zero_)
	ld.w	$a2, $a1, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 12
	st.d	$a1, $a0, 0
	ret
.Lfunc_end4:
	.size	init_num, .Lfunc_end4-init_num
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function int2num
.LCPI5_0:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.text
	.globl	int2num
	.p2align	5
	.type	int2num,@function
int2num:                                # @int2num
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	srai.d	$a0, $a1, 31
	xor	$a1, $a1, $a0
	sub.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	mul.d	$a2, $a2, $a0
	srli.d	$a2, $a2, 35
	ori	$a3, $zero, 10
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a1, $a2
	st.b	$a2, $sp, 10
	addi.d	$s2, $sp, 11
	ori	$s1, $zero, 1
	bltu	$a1, $a3, .LBB5_3
# %bb.1:                                # %while.body.preheader
	ori	$s1, $zero, 1
	lu12i.w	$a2, 104857
	ori	$a2, $a2, 2458
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a0
	srli.d	$a1, $a1, 35
	mul.d	$a5, $a1, $a2
	srli.d	$a5, $a5, 32
	slli.d	$a6, $a5, 3
	alsl.d	$a5, $a5, $a6, 1
	sub.d	$a5, $a1, $a5
	st.b	$a5, $s2, 0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 1
	bltu	$a3, $a4, .LBB5_2
.LBB5_3:                                # %while.end
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB5_6
# %bb.4:                                # %if.end.i
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB5_6
# %bb.5:                                # %if.then3.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %free_num.exit
	addi.d	$a0, $s1, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	addi.w	$a1, $zero, -1
	st.d	$a0, $s0, 0
	bge	$a1, $fp, .LBB5_8
# %bb.7:                                # %iter.check
	ori	$a2, $zero, 16
	addi.d	$a1, $a0, 16
	bgeu	$s1, $a2, .LBB5_9
	b	.LBB5_11
.LBB5_8:                                # %if.then7
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	ori	$a2, $zero, 16
	addi.d	$a1, $a0, 16
	bltu	$s1, $a2, .LBB5_11
.LBB5_9:                                # %vector.memcheck
	bgeu	$a1, $s2, .LBB5_15
# %bb.10:                               # %vector.memcheck
	addi.d	$a2, $s1, -1
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a3, $a0, $a2
	addi.d	$a3, $a3, 17
	nor	$a2, $a2, $zero
	add.d	$a2, $s2, $a2
	bgeu	$a2, $a3, .LBB5_15
.LBB5_11:
	move	$a4, $s2
.LBB5_12:                               # %while.body13.preheader
	addi.d	$a0, $s1, 1
	addi.d	$a2, $a4, -1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_13:                               # %while.body13
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a1, 0
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, -1
	blt	$a3, $a0, .LBB5_13
.LBB5_14:                               # %while.end16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB5_15:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 32
	bstrpick.d	$a2, $s1, 31, 0
	bgeu	$s1, $a3, .LBB5_20
# %bb.16:
	move	$a3, $zero
.LBB5_17:                               # %vec.epilog.ph
	bstrpick.d	$a4, $a2, 31, 4
	slli.d	$a5, $a4, 4
	sub.d	$s1, $s1, $a5
	alsl.d	$a1, $a4, $a1, 4
	sub.d	$a4, $s2, $a5
	sub.d	$a6, $a3, $a5
	sub.d	$a7, $s2, $a3
	pcalau12i	$t0, %pc_hi20(.LCPI5_1)
	vld	$vr0, $t0, %pc_lo12(.LCPI5_1)
	addi.d	$a7, $a7, -16
	add.d	$a0, $a3, $a0
	addi.d	$a0, $a0, 16
	.p2align	4, , 16
.LBB5_18:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a0, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, -16
	addi.d	$a0, $a0, 16
	bnez	$a6, .LBB5_18
# %bb.19:                               # %vec.epilog.middle.block
	bne	$a5, $a2, .LBB5_12
	b	.LBB5_14
.LBB5_20:                               # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $s2, -32
	move	$a5, $a1
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, 0
	xvpermi.d	$xr1, $xr1, 78
	xvshuf.b	$xr1, $xr0, $xr1, $xr0
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_21
# %bb.22:                               # %middle.block
	beq	$a3, $a2, .LBB5_14
# %bb.23:                               # %vec.epilog.iter.check
	andi	$a4, $a2, 16
	bnez	$a4, .LBB5_17
# %bb.24:
	sub.d	$s1, $s1, $a3
	add.d	$a1, $a1, $a3
	sub.d	$a4, $s2, $a3
	b	.LBB5_12
.Lfunc_end5:
	.size	int2num, .Lfunc_end5-int2num
                                        # -- End function
	.globl	num2long                        # -- Begin function num2long
	.p2align	5
	.type	num2long,@function
num2long:                               # @num2long
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 4
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB6_5
# %bb.1:                                # %for.body.preheader
	move	$a2, $zero
	addi.d	$a3, $a0, 16
	ori	$a4, $zero, 2
	lu12i.w	$a5, -209716
	ori	$a5, $a5, 3277
	lu32i.d	$a5, -209716
	lu52i.d	$a5, $a5, 204
	.p2align	4, , 16
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a3, 0
	move	$a6, $a1
	slli.d	$a1, $a2, 3
	alsl.d	$a1, $a2, $a1, 1
	add.d	$a2, $a1, $a7
	bltu	$a6, $a4, .LBB6_4
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a1, $a6, -1
	blt	$a2, $a5, .LBB6_2
.LBB6_4:                                # %for.end
	ori	$a1, $zero, 1
	sltu	$a1, $a1, $a6
	srai.d	$a3, $a2, 63
	andn	$a2, $a2, $a3
	masknez	$a1, $a2, $a1
	b	.LBB6_6
.LBB6_5:
	move	$a1, $zero
.LBB6_6:                                # %for.end.thread
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	sub.d	$a2, $zero, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ret
.Lfunc_end6:
	.size	num2long, .Lfunc_end6-num2long
                                        # -- End function
	.globl	bc_compare                      # -- Begin function bc_compare
	.p2align	5
	.type	bc_compare,@function
bc_compare:                             # @bc_compare
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	move	$a3, $zero
	pcaddu18i	$t8, %call36(_do_compare)
	jr	$t8
.Lfunc_end7:
	.size	bc_compare, .Lfunc_end7-bc_compare
                                        # -- End function
	.p2align	5                               # -- Begin function _do_compare
	.type	_do_compare,@function
_do_compare:                            # @_do_compare
# %bb.0:                                # %entry
	beqz	$a2, .LBB8_2
# %bb.1:                                # %land.lhs.true
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a1, 0
	bne	$a4, $a5, .LBB8_8
.LBB8_2:                                # %if.end
	ld.w	$t1, $a0, 4
	ld.w	$a4, $a1, 4
	bne	$t1, $a4, .LBB8_7
# %bb.3:                                # %if.end24
	ld.w	$a6, $a0, 8
	ld.w	$a7, $a1, 8
	slt	$a4, $a6, $a7
	masknez	$a5, $a7, $a4
	maskeqz	$a4, $a6, $a4
	or	$t2, $a4, $a5
	add.w	$t3, $t2, $t1
	addi.d	$a5, $a0, 16
	ori	$t0, $zero, 1
	addi.d	$a4, $a1, 16
	blt	$t3, $t0, .LBB8_9
# %bb.4:                                # %land.rhs.preheader
	add.d	$a1, $t1, $t2
	addi.w	$a1, $a1, 1
	.p2align	4, , 16
.LBB8_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t1, $a5, 0
	ld.bu	$t2, $a4, 0
	bne	$t1, $t2, .LBB8_16
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a5, $a5, 1
	addi.w	$a1, $a1, -1
	addi.d	$a4, $a4, 1
	blt	$t0, $a1, .LBB8_5
	b	.LBB8_11
.LBB8_7:                                # %if.then7
	bge	$a4, $t1, .LBB8_28
	b	.LBB8_21
.LBB8_8:                                # %if.then
	sltu	$a0, $zero, $a4
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_9:                                # %if.end47
	beqz	$t3, .LBB8_11
# %bb.10:                               # %if.end47.if.then50_crit_edge
	ld.bu	$t1, $a5, 0
	b	.LBB8_20
.LBB8_11:                               # %if.end71
	beq	$a6, $a7, .LBB8_19
# %bb.12:                               # %if.then76
	bge	$a7, $a6, .LBB8_25
# %bb.13:                               # %for.body.preheader
	sub.d	$a1, $a6, $a7
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB8_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a5, 0
	bnez	$a1, .LBB8_21
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB8_14 Depth=1
	move	$a1, $zero
	addi.w	$a3, $a3, -1
	addi.d	$a5, $a5, 1
	blt	$a4, $a3, .LBB8_14
	b	.LBB8_24
.LBB8_16:                               # %while.end
	beqz	$a3, .LBB8_20
# %bb.17:                               # %while.end
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB8_20
# %bb.18:                               # %while.end
	bne	$a6, $a7, .LBB8_20
.LBB8_19:
	move	$a0, $zero
	ret
.LBB8_20:                               # %if.then50
	ld.b	$a1, $a4, 0
	ext.w.b	$a3, $t1
	bge	$a1, $a3, .LBB8_28
.LBB8_21:                               # %if.then11
	beqz	$a2, .LBB8_23
# %bb.22:                               # %lor.lhs.false
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_23:
	ori	$a1, $zero, 1
.LBB8_24:                               # %cleanup
	move	$a0, $a1
	ret
.LBB8_25:                               # %for.body107.preheader
	sub.d	$a1, $a7, $a6
	addi.d	$a3, $a1, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB8_26:                               # %for.body107
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a4, 0
	bnez	$a1, .LBB8_28
# %bb.27:                               # %for.inc121
                                        #   in Loop: Header=BB8_26 Depth=1
	move	$a1, $zero
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	blt	$a5, $a3, .LBB8_26
	b	.LBB8_24
.LBB8_28:                               # %if.else17
	beqz	$a2, .LBB8_30
# %bb.29:                               # %lor.lhs.false19
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB8_30:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end8:
	.size	_do_compare, .Lfunc_end8-_do_compare
                                        # -- End function
	.globl	is_zero                         # -- Begin function is_zero
	.p2align	5
	.type	is_zero,@function
is_zero:                                # @is_zero
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(_zero_)
	ld.d	$a1, $a1, %pc_lo12(_zero_)
	beq	$a0, $a1, .LBB9_7
# %bb.1:                                # %if.end
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	add.w	$a1, $a2, $a1
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB9_6
# %bb.2:                                # %land.rhs.preheader
	addi.d	$a0, $a0, 16
	.p2align	4, , 16
.LBB9_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	move	$a3, $a1
	bnez	$a4, .LBB9_8
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a3, -1
	blt	$a2, $a3, .LBB9_3
# %bb.5:
	move	$a1, $zero
.LBB9_6:                                # %while.end
	sltui	$a0, $a1, 1
	ret
.LBB9_7:
	ori	$a0, $zero, 1
	ret
.LBB9_8:
	sltui	$a0, $a3, 1
	ret
.Lfunc_end9:
	.size	is_zero, .Lfunc_end9-is_zero
                                        # -- End function
	.globl	is_neg                          # -- Begin function is_neg
	.p2align	5
	.type	is_neg,@function
is_neg:                                 # @is_neg
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ret
.Lfunc_end10:
	.size	is_neg, .Lfunc_end10-is_neg
                                        # -- End function
	.globl	bc_add                          # -- Begin function bc_add
	.p2align	5
	.type	bc_add,@function
bc_add:                                 # @bc_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a1, 0
	move	$fp, $a2
	bne	$a0, $a3, .LBB11_2
# %bb.1:                                # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_add)
	jirl	$ra, $ra, 0
	b	.LBB11_12
.LBB11_2:                               # %if.else
	ld.w	$a6, $s0, 4
	ld.w	$a0, $a1, 4
	bne	$a6, $a0, .LBB11_7
# %bb.3:                                # %if.end24.i
	ld.w	$a3, $s0, 8
	ld.w	$a4, $a1, 8
	slt	$a0, $a3, $a4
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a7, $a0, $a2
	add.w	$t0, $a7, $a6
	addi.d	$a0, $s0, 16
	ori	$a5, $zero, 1
	addi.d	$a2, $a1, 16
	blt	$t0, $a5, .LBB11_8
# %bb.4:                                # %land.rhs.i.preheader
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB11_5:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a2, 0
	bne	$a7, $t0, .LBB11_10
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB11_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a6, $a6, -1
	addi.d	$a2, $a2, 1
	blt	$a5, $a6, .LBB11_5
	b	.LBB11_13
.LBB11_7:                               # %if.then7.i
	blt	$a0, $a6, .LBB11_11
	b	.LBB11_22
.LBB11_8:                               # %if.end47.i
	beqz	$t0, .LBB11_13
# %bb.9:                                # %if.end47.if.then50_crit_edge.i
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a2, 0
.LBB11_10:                              # %if.then50.i
	ext.w.b	$a0, $a7
	ext.w.b	$a2, $t0
	bge	$a2, $a0, .LBB11_22
.LBB11_11:                              # %sw.bb10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
.LBB11_12:                              # %if.end
	ld.w	$a1, $s0, 0
	b	.LBB11_23
.LBB11_13:                              # %if.end71.i
	bne	$a3, $a4, .LBB11_15
.LBB11_14:                              # %sw.bb8
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a0, $a0, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB11_24
	b	.LBB11_26
.LBB11_15:                              # %if.then76.i
	bge	$a4, $a3, .LBB11_19
# %bb.16:                               # %for.body.preheader.i
	sub.d	$a2, $a3, $a4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB11_11
# %bb.18:                               # %for.inc.i
                                        #   in Loop: Header=BB11_17 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	blt	$a3, $a2, .LBB11_17
	b	.LBB11_14
.LBB11_19:                              # %for.body107.preheader.i
	sub.d	$a0, $a4, $a3
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_20:                              # %for.body107.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bnez	$a4, .LBB11_22
# %bb.21:                               # %for.inc121.i
                                        #   in Loop: Header=BB11_20 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	blt	$a3, $a0, .LBB11_20
	b	.LBB11_14
.LBB11_22:                              # %sw.bb
	move	$a0, $a1
	move	$s1, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
.LBB11_23:                              # %if.end
	st.w	$a1, $a0, 0
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB11_26
.LBB11_24:                              # %if.end.i
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB11_26
# %bb.25:                               # %if.then3.i
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB11_26:                              # %free_num.exit
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	bc_add, .Lfunc_end11-bc_add
                                        # -- End function
	.p2align	5                               # -- Begin function _do_add
	.type	_do_add,@function
_do_add:                                # @_do_add
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
	move	$fp, $a1
	move	$s0, $a0
	ld.w	$s6, $a0, 8
	ld.w	$s7, $a1, 8
	slt	$a0, $s7, $s6
	ld.w	$s4, $s0, 4
	ld.w	$s2, $a1, 4
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s6, $a0
	or	$s8, $a0, $a1
	slt	$a0, $s2, $s4
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 1
	add.d	$s5, $s8, $s1
	addi.d	$a0, $s5, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	st.w	$zero, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s8, $a0, 8
	ori	$a5, $zero, 1
	st.w	$a5, $a0, 12
	addi.d	$s1, $a0, 16
	st.b	$zero, $a0, 16
	add.d	$a1, $s0, $s4
	add.d	$a1, $a1, $s6
	addi.d	$s2, $a1, 15
	add.d	$a1, $fp, $a4
	add.d	$a1, $a1, $s7
	addi.d	$s3, $a1, 15
	add.d	$a1, $s5, $s1
	addi.d	$a1, $a1, -1
	bne	$s6, $s7, .LBB12_2
.LBB12_1:                               # %if.end45
	move	$s7, $s6
	b	.LBB12_6
.LBB12_2:                               # %if.then
	bge	$s7, $s6, .LBB12_4
# %bb.3:                                # %while.body.preheader
	slt	$a1, $s4, $a4
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	add.d	$a1, $a1, $s8
	sub.d	$a2, $s7, $s6
	nor	$a2, $a2, $zero
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a1, $a1, $a2
	add.d	$s5, $a1, $a0
	addi.d	$a3, $s5, 16
	add.d	$a1, $s6, $s4
	sub.d	$a1, $a1, $a2
	add.d	$s0, $a1, $s0
	addi.d	$a1, $s0, 15
	addi.d	$a2, $a2, 1
	move	$fp, $a0
	move	$a0, $a3
	move	$s2, $a4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 1
	move	$a4, $s2
	move	$a0, $fp
	addi.d	$s2, $s0, 14
	addi.d	$a1, $s5, 15
	move	$s6, $s7
	b	.LBB12_6
.LBB12_4:                               # %while.cond38.preheader
	bge	$s6, $s7, .LBB12_6
# %bb.5:                                # %while.body40.preheader
	slt	$a1, $s4, $a4
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	add.d	$a1, $a1, $s8
	sub.d	$a2, $s6, $s7
	nor	$a2, $a2, $zero
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a1, $a1, $a2
	add.d	$s0, $a1, $a0
	addi.d	$a3, $s0, 16
	add.d	$a1, $s7, $a4
	sub.d	$a1, $a1, $a2
	add.d	$s3, $a1, $fp
	addi.d	$a1, $s3, 15
	addi.d	$a2, $a2, 1
	move	$fp, $a0
	move	$a0, $a3
	move	$s5, $a4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 1
	move	$a4, $s5
	move	$a0, $fp
	addi.d	$s3, $s3, 14
	addi.d	$a1, $s0, 15
	b	.LBB12_1
.LBB12_6:                               # %if.end45
	move	$a2, $zero
	add.w	$a3, $s6, $s4
	add.w	$a4, $s7, $a4
	blt	$a3, $a5, .LBB12_11
# %bb.7:                                # %if.end45
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB12_11
# %bb.8:                                # %while.body53.preheader
	move	$a2, $zero
	ori	$a6, $zero, 9
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB12_9:                               # %while.body53
                                        # =>This Inner Loop Header: Depth=1
	move	$t1, $a3
	move	$t0, $a4
	ld.b	$a3, $s2, 0
	ld.b	$a4, $s3, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -1
	add.d	$a2, $a3, $a2
	add.d	$a3, $a2, $a4
	ext.w.b	$a2, $a3
	slt	$a2, $a6, $a2
	addi.d	$a4, $a3, -10
	masknez	$a3, $a3, $a2
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $t1, -1
	addi.w	$a4, $t0, -1
	bltu	$t1, $a7, .LBB12_11
# %bb.10:                               # %while.body53
                                        #   in Loop: Header=BB12_9 Depth=1
	bltu	$a5, $t0, .LBB12_9
.LBB12_11:                              # %while.end71
	sltui	$a5, $a3, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a3
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB12_14
# %bb.12:                               # %while.body80.preheader
	masknez	$a6, $s2, $a5
	maskeqz	$a5, $s3, $a5
	or	$a6, $a5, $a6
	addi.d	$a4, $a4, 1
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB12_13:                              # %while.body80
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a6, 0
	addi.d	$a6, $a6, -1
	add.d	$a7, $a7, $a2
	ext.w.b	$a2, $a7
	slt	$a2, $a5, $a2
	addi.d	$t0, $a7, -10
	masknez	$a7, $a7, $a2
	maskeqz	$t0, $t0, $a2
	or	$a7, $t0, $a7
	st.b	$a7, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, -1
	bltu	$a3, $a4, .LBB12_13
.LBB12_14:                              # %while.end95
	beqz	$a2, .LBB12_16
# %bb.15:                               # %if.then98
	ld.b	$a2, $a1, 0
	addi.d	$a2, $a2, 1
	st.b	$a2, $a1, 0
.LBB12_16:                              # %if.end102
	ld.w	$a3, $a0, 4
	ori	$a1, $zero, 2
	blt	$a3, $a1, .LBB12_21
# %bb.17:                               # %land.rhs.preheader.i
	add.d	$a2, $a0, $a3
	addi.d	$a2, $a2, 15
	move	$a4, $s1
	.p2align	4, , 16
.LBB12_18:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a4, 0
	move	$a5, $a3
	bnez	$a6, .LBB12_22
# %bb.19:                               # %while.body.i
                                        #   in Loop: Header=BB12_18 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$a3, $a5, -1
	blt	$a1, $a5, .LBB12_18
# %bb.20:
	ori	$a3, $zero, 1
	b	.LBB12_23
.LBB12_21:
	move	$a2, $s1
	b	.LBB12_23
.LBB12_22:
	move	$a3, $a5
	move	$a2, $a4
.LBB12_23:                              # %while.end.i
	ld.w	$a1, $a0, 8
	add.w	$a1, $a1, $a3
	ori	$a4, $zero, 1
	st.w	$a3, $a0, 4
	blt	$a1, $a4, .LBB12_29
# %bb.24:                               # %iter.check
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB12_26
# %bb.25:                               # %vector.memcheck
	sub.d	$a3, $a0, $a2
	addi.d	$a4, $a3, 16
	ori	$a3, $zero, 64
	bgeu	$a4, $a3, .LBB12_30
.LBB12_26:
	move	$a3, $a2
	move	$a5, $a1
.LBB12_27:                              # %while.body10.i.preheader
	addi.d	$a1, $a5, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB12_28:                              # %while.body10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $s1, 1
	addi.w	$a1, $a1, -1
	st.b	$a4, $s1, 0
	move	$s1, $a5
	bltu	$a2, $a1, .LBB12_28
.LBB12_29:                              # %_rm_leading_zeros.exit
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
.LBB12_30:                              # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB12_32
# %bb.31:
	move	$a4, $zero
	b	.LBB12_36
.LBB12_32:                              # %vector.ph
	bstrpick.d	$a3, $a1, 30, 6
	slli.d	$a4, $a3, 6
	addi.d	$a3, $a0, 48
	addi.d	$a5, $a2, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB12_33:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -64
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB12_33
# %bb.34:                               # %middle.block
	beq	$a4, $a1, .LBB12_29
# %bb.35:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 48
	beqz	$a3, .LBB12_39
.LBB12_36:                              # %vec.epilog.ph
	bstrpick.d	$a5, $a1, 30, 4
	slli.d	$a6, $a5, 4
	alsl.d	$a3, $a5, $a2, 4
	alsl.d	$s1, $a5, $s1, 4
	sub.d	$a5, $a1, $a6
	sub.d	$a7, $a4, $a6
	add.d	$t0, $a4, $a0
	addi.d	$t0, $t0, 16
	add.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB12_37:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$a2, $a2, 16
	bnez	$a7, .LBB12_37
# %bb.38:                               # %vec.epilog.middle.block
	bne	$a6, $a1, .LBB12_27
	b	.LBB12_29
.LBB12_39:
	add.d	$a3, $a2, $a4
	add.d	$s1, $s1, $a4
	sub.d	$a5, $a1, $a4
	b	.LBB12_27
.Lfunc_end12:
	.size	_do_add, .Lfunc_end12-_do_add
                                        # -- End function
	.p2align	5                               # -- Begin function _do_sub
	.type	_do_sub,@function
_do_sub:                                # @_do_sub
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
	move	$s0, $a0
	ld.w	$s7, $a0, 4
	ld.w	$s3, $a1, 4
	slt	$a0, $s3, $s7
	ld.w	$s5, $s0, 8
	ld.w	$s8, $a1, 8
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s7, $a0
	or	$s1, $a0, $a1
	slt	$a0, $s8, $s5
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s5, $a0
	or	$s6, $a0, $a1
	slt	$a0, $s7, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slt	$a0, $s5, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s5, $a0
	or	$s2, $a0, $a1
	add.d	$s4, $s1, $s6
	addi.d	$a0, $s4, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t8, $s7
	move	$t5, $s1
	st.w	$zero, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s6, $a0, 8
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 12
	addi.d	$s1, $a0, 16
	st.b	$zero, $a0, 16
	add.d	$a2, $s0, $s7
	add.d	$a2, $a2, $s5
	addi.d	$a3, $a2, 15
	add.d	$a2, $fp, $s3
	add.d	$a2, $a2, $s8
	addi.d	$s7, $a2, 15
	add.d	$a2, $s4, $s1
	addi.d	$a4, $a2, -1
	bge	$s8, $s5, .LBB13_3
# %bb.1:                                # %if.then
	sub.w	$a2, $s5, $s2
	blt	$a2, $a1, .LBB13_7
# %bb.2:                                # %for.body.preheader
	add.d	$a1, $s6, $t5
	sub.d	$a3, $s2, $s5
	nor	$a3, $a3, $zero
	bstrpick.d	$a4, $a3, 31, 0
	sub.d	$a1, $a1, $a4
	add.d	$s4, $a1, $a0
	addi.d	$a3, $s4, 15
	add.d	$a1, $s5, $t8
	sub.d	$a1, $a1, $a4
	add.d	$s0, $a1, $s0
	addi.d	$a1, $s0, 15
	move	$fp, $a0
	move	$a0, $a3
	move	$s5, $t5
	move	$s6, $t8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$t8, $s6
	move	$t5, $s5
	move	$a0, $fp
	move	$a1, $zero
	addi.d	$a3, $s0, 14
	addi.d	$a4, $s4, 14
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	add.w	$a6, $s2, $t6
	ori	$a2, $zero, 1
	bge	$a6, $a2, .LBB13_8
	b	.LBB13_10
.LBB13_3:                               # %if.else
	sub.w	$a5, $s8, $s2
	blt	$a5, $a1, .LBB13_7
# %bb.4:                                # %for.body60.preheader
	move	$a2, $zero
	move	$a1, $zero
	addi.d	$a5, $a5, 1
	add.d	$a4, $s4, $a0
	addi.d	$a7, $a4, 15
	add.d	$a6, $s3, $s8
	add.d	$a6, $a6, $fp
	addi.d	$t0, $a6, 15
	ori	$t1, $zero, 10
	ori	$t2, $zero, 1
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_5:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$t3, $t0, $a2
	add.w	$t3, $a1, $t3
	slt	$a1, $zero, $t3
	maskeqz	$t4, $t1, $a1
	sub.d	$t3, $t4, $t3
	stx.b	$t3, $a7, $a2
	addi.w	$a5, $a5, -1
	addi.d	$a2, $a2, -1
	bltu	$t2, $a5, .LBB13_5
# %bb.6:                                # %if.end73.loopexit
	add.d	$a4, $a4, $a2
	addi.d	$a4, $a4, 15
	add.d	$a2, $a6, $a2
	addi.d	$s7, $a2, 15
	add.w	$a6, $s2, $t6
	ori	$a2, $zero, 1
	bge	$a6, $a2, .LBB13_8
	b	.LBB13_10
.LBB13_7:
	move	$a1, $zero
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	add.w	$a6, $s2, $t6
	ori	$a2, $zero, 1
	blt	$a6, $a2, .LBB13_10
	.p2align	4, , 16
.LBB13_8:                               # %for.body78
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s7, 0
	ld.b	$a7, $a3, 0
	addi.d	$a5, $a3, -1
	addi.d	$s7, $s7, -1
	add.d	$a1, $a1, $a2
	sub.w	$a2, $a7, $a1
	slti	$a3, $a2, 0
	addi.d	$a7, $a2, 10
	bstrpick.d	$a1, $a2, 31, 31
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $a2
	addi.d	$a2, $a4, -1
	addi.w	$a6, $a6, -1
	st.b	$a3, $a4, 0
	move	$a4, $a2
	move	$a3, $a5
	bnez	$a6, .LBB13_8
# %bb.9:                                # %for.end94
	bne	$t8, $s3, .LBB13_11
	b	.LBB13_14
.LBB13_10:
	move	$a5, $a3
	move	$a2, $a4
	beq	$t8, $s3, .LBB13_14
.LBB13_11:                              # %for.end94
	sub.w	$a4, $t5, $t6
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB13_14
# %bb.12:                               # %for.body102.preheader
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB13_13:                              # %for.body102
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a5, 0
	addi.d	$a5, $a5, -1
	sub.w	$a1, $a6, $a1
	slti	$a6, $a1, 0
	addi.d	$a7, $a1, 10
	masknez	$t0, $a1, $a6
	maskeqz	$a6, $a7, $a6
	or	$a6, $a6, $t0
	st.b	$a6, $a2, 0
	addi.d	$a2, $a2, -1
	addi.w	$a4, $a4, -1
	bstrpick.d	$a1, $a1, 31, 31
	bltu	$a3, $a4, .LBB13_13
.LBB13_14:                              # %if.end117
	ld.w	$a3, $a0, 4
	ori	$a1, $zero, 2
	blt	$a3, $a1, .LBB13_19
# %bb.15:                               # %land.rhs.preheader.i
	add.d	$a2, $a0, $a3
	addi.d	$a2, $a2, 15
	move	$a4, $s1
	.p2align	4, , 16
.LBB13_16:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a4, 0
	move	$a5, $a3
	bnez	$a6, .LBB13_20
# %bb.17:                               # %while.body.i
                                        #   in Loop: Header=BB13_16 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$a3, $a5, -1
	blt	$a1, $a5, .LBB13_16
# %bb.18:
	ori	$a3, $zero, 1
	b	.LBB13_21
.LBB13_19:
	move	$a2, $s1
	b	.LBB13_21
.LBB13_20:
	move	$a3, $a5
	move	$a2, $a4
.LBB13_21:                              # %while.end.i
	ld.w	$a1, $a0, 8
	add.w	$a1, $a1, $a3
	ori	$a4, $zero, 1
	st.w	$a3, $a0, 4
	blt	$a1, $a4, .LBB13_27
# %bb.22:                               # %iter.check
	ori	$a3, $zero, 16
	bltu	$a1, $a3, .LBB13_24
# %bb.23:                               # %vector.memcheck
	sub.d	$a3, $a0, $a2
	addi.d	$a4, $a3, 16
	ori	$a3, $zero, 64
	bgeu	$a4, $a3, .LBB13_28
.LBB13_24:
	move	$a3, $a2
	move	$a5, $a1
.LBB13_25:                              # %while.body10.i.preheader
	addi.d	$a1, $a5, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB13_26:                              # %while.body10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $s1, 1
	addi.w	$a1, $a1, -1
	st.b	$a4, $s1, 0
	move	$s1, $a5
	bltu	$a2, $a1, .LBB13_26
.LBB13_27:                              # %_rm_leading_zeros.exit
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
.LBB13_28:                              # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB13_30
# %bb.29:
	move	$a4, $zero
	b	.LBB13_34
.LBB13_30:                              # %vector.ph
	bstrpick.d	$a3, $a1, 30, 6
	slli.d	$a4, $a3, 6
	addi.d	$a3, $a0, 48
	addi.d	$a5, $a2, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB13_31:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -64
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB13_31
# %bb.32:                               # %middle.block
	beq	$a4, $a1, .LBB13_27
# %bb.33:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 48
	beqz	$a3, .LBB13_37
.LBB13_34:                              # %vec.epilog.ph
	bstrpick.d	$a5, $a1, 30, 4
	slli.d	$a6, $a5, 4
	alsl.d	$a3, $a5, $a2, 4
	alsl.d	$s1, $a5, $s1, 4
	sub.d	$a5, $a1, $a6
	sub.d	$a7, $a4, $a6
	add.d	$t0, $a4, $a0
	addi.d	$t0, $t0, 16
	add.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB13_35:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	addi.d	$a2, $a2, 16
	bnez	$a7, .LBB13_35
# %bb.36:                               # %vec.epilog.middle.block
	bne	$a6, $a1, .LBB13_25
	b	.LBB13_27
.LBB13_37:
	add.d	$a3, $a2, $a4
	add.d	$s1, $s1, $a4
	sub.d	$a5, $a1, $a4
	b	.LBB13_25
.Lfunc_end13:
	.size	_do_sub, .Lfunc_end13-_do_sub
                                        # -- End function
	.globl	bc_sub                          # -- Begin function bc_sub
	.p2align	5
	.type	bc_sub,@function
bc_sub:                                 # @bc_sub
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a3, $a1, 0
	move	$fp, $a2
	bne	$a0, $a3, .LBB14_6
# %bb.1:                                # %if.else
	ld.w	$a6, $s0, 4
	ld.w	$a0, $a1, 4
	bne	$a6, $a0, .LBB14_7
# %bb.2:                                # %if.end24.i
	ld.w	$a3, $s0, 8
	ld.w	$a4, $a1, 8
	slt	$a0, $a3, $a4
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a3, $a0
	or	$a7, $a0, $a2
	add.w	$t0, $a7, $a6
	addi.d	$a0, $s0, 16
	ori	$a5, $zero, 1
	addi.d	$a2, $a1, 16
	blt	$t0, $a5, .LBB14_8
# %bb.3:                                # %land.rhs.i.preheader
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB14_4:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a2, 0
	bne	$a7, $t0, .LBB14_10
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$a6, $a6, -1
	addi.d	$a2, $a2, 1
	blt	$a5, $a6, .LBB14_4
	b	.LBB14_13
.LBB14_6:                               # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_add)
	jirl	$ra, $ra, 0
	b	.LBB14_12
.LBB14_7:                               # %if.then7.i
	blt	$a0, $a6, .LBB14_11
	b	.LBB14_22
.LBB14_8:                               # %if.end47.i
	beqz	$t0, .LBB14_13
# %bb.9:                                # %if.end47.if.then50_crit_edge.i
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a2, 0
.LBB14_10:                              # %if.then50.i
	ext.w.b	$a0, $a7
	ext.w.b	$a2, $t0
	bge	$a2, $a0, .LBB14_22
.LBB14_11:                              # %sw.bb11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
.LBB14_12:                              # %if.end
	ld.w	$a1, $s0, 0
	b	.LBB14_23
.LBB14_13:                              # %if.end71.i
	bne	$a3, $a4, .LBB14_15
.LBB14_14:                              # %sw.bb9
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a0, $a0, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB14_24
	b	.LBB14_26
.LBB14_15:                              # %if.then76.i
	bge	$a4, $a3, .LBB14_19
# %bb.16:                               # %for.body.preheader.i
	sub.d	$a2, $a3, $a4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB14_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a0, 0
	bnez	$a4, .LBB14_11
# %bb.18:                               # %for.inc.i
                                        #   in Loop: Header=BB14_17 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	blt	$a3, $a2, .LBB14_17
	b	.LBB14_14
.LBB14_19:                              # %for.body107.preheader.i
	sub.d	$a0, $a4, $a3
	addi.d	$a0, $a0, 1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB14_20:                              # %for.body107.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bnez	$a4, .LBB14_22
# %bb.21:                               # %for.inc121.i
                                        #   in Loop: Header=BB14_20 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	blt	$a3, $a0, .LBB14_20
	b	.LBB14_14
.LBB14_22:                              # %sw.bb
	move	$a0, $a1
	move	$s1, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_do_sub)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	sltui	$a1, $a1, 1
.LBB14_23:                              # %if.end
	st.w	$a1, $a0, 0
	ld.d	$a1, $fp, 0
	beqz	$a1, .LBB14_26
.LBB14_24:                              # %if.end.i
	ld.w	$a2, $a1, 12
	addi.w	$a2, $a2, -1
	st.w	$a2, $a1, 12
	bnez	$a2, .LBB14_26
# %bb.25:                               # %if.then3.i
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB14_26:                              # %free_num.exit
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	bc_sub, .Lfunc_end14-bc_sub
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function bc_multiply
.LCPI15_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI15_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	bc_multiply
	.p2align	5
	.type	bc_multiply,@function
bc_multiply:                            # @bc_multiply
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
	move	$s5, $a1
	move	$s0, $a0
	ld.w	$s6, $a0, 4
	ld.w	$s7, $a0, 8
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.w	$fp, $s7, $s6
	add.d	$s3, $a1, $a0
	add.d	$s8, $s3, $fp
	add.w	$a0, $a1, $s7
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$s1, $a1, $a2
	sub.w	$s4, $a0, $s1
	sub.w	$s2, $s8, $a0
	add.d	$a0, $s2, $s1
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$s2, $a0, 4
	st.w	$s1, $a0, 8
	ori	$a4, $zero, 1
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s5, 0
	st.w	$a4, $a0, 12
	addi.d	$s2, $a0, 16
	st.b	$zero, $a0, 16
	xor	$a1, $a1, $a2
	sltu	$a1, $zero, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	addi.d	$a1, $fp, 15
	nor	$a2, $s4, $zero
	add.w	$t0, $s8, $a2
	addi.w	$a2, $s3, -1
	lu12i.w	$a6, 419430
	pcalau12i	$a3, %pc_hi20(.LCPI15_0)
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	blt	$s4, $a4, .LBB15_22
# %bb.1:                                # %for.body.lr.ph
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a7, $zero
	move	$t1, $zero
	move	$a5, $zero
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	add.d	$a4, $s6, $s7
	addi.d	$t2, $a4, -2
	add.d	$a4, $a4, $s0
	addi.d	$t3, $a4, 11
	sub.w	$t4, $zero, $s3
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	add.d	$t5, $s5, $s3
	addi.d	$t6, $t5, 20
	ori	$t7, $zero, 16
	ori	$a0, $zero, 8
	ori	$s8, $zero, 17
	xvrepli.b	$xr0, 0
	ori	$a4, $a6, 1639
	lu32i.d	$a4, 419430
	lu52i.d	$ra, $a4, 1638
	addi.w	$a6, $zero, -1
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %while.end
                                        #   in Loop: Header=BB15_3 Depth=1
	mulh.d	$a4, $a5, $ra
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 2
	add.d	$a5, $a4, $a5
	addi.w	$t1, $t1, 1
	addi.w	$t4, $t4, 1
	addi.d	$a7, $a7, 1
	beq	$t1, $s4, .LBB15_11
.LBB15_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
                                        #     Child Loop BB15_9 Depth 2
	sub.w	$a4, $t1, $s3
	slt	$t0, $a6, $a4
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $a6, $t0
	or	$a4, $a4, $t0
	nor	$t0, $a4, $zero
	add.d	$fp, $a1, $t0
	blt	$fp, $t7, .LBB15_2
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	slt	$t0, $t1, $a2
	masknez	$s1, $a2, $t0
	maskeqz	$t0, $t1, $t0
	or	$t0, $t0, $s1
	bltz	$t0, .LBB15_2
# %bb.5:                                # %while.body.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	sub.w	$a4, $zero, $a4
	add.d	$a4, $t2, $a4
	sltu	$s1, $a4, $t0
	masknez	$s5, $t0, $s1
	maskeqz	$a4, $a4, $s1
	or	$a4, $a4, $s5
	addi.d	$s7, $a4, 1
	nor	$t0, $t0, $zero
	bltu	$s7, $a0, .LBB15_9
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB15_3 Depth=1
	slt	$a4, $a6, $t4
	masknez	$s1, $a6, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $s1
	sub.w	$s1, $zero, $a4
	add.d	$s1, $t3, $s1
	add.d	$s6, $t6, $t0
	slt	$s5, $a7, $a2
	masknez	$t8, $a2, $s5
	maskeqz	$s5, $a7, $s5
	or	$t8, $s5, $t8
	sub.d	$a4, $t2, $a4
	sltu	$s5, $t8, $a4
	masknez	$a4, $a4, $s5
	maskeqz	$t8, $t8, $s5
	or	$a4, $t8, $a4
	addi.d	$a4, $a4, 1
	bstrins.d	$a4, $zero, 2, 0
	move	$s5, $s7
	bstrins.d	$s5, $zero, 2, 0
	sub.d	$fp, $fp, $s5
	add.d	$t0, $s5, $t0
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.d	$xr1, $a5, 0
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB15_7:                               # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $s1, 0
	ld.w	$t8, $s1, -4
	vinsgr2vr.w	$vr3, $a5, 0
	vshuf4i.b	$vr3, $vr3, 27
	xvld	$xr4, $a3, %pc_lo12(.LCPI15_0)
	vinsgr2vr.w	$vr5, $t8, 0
	vshuf4i.b	$vr5, $vr5, 27
	xvpermi.d	$xr3, $xr3, 68
	xvshuf.b	$xr3, $xr0, $xr3, $xr4
	ld.w	$a5, $s6, -4
	xvslli.d	$xr3, $xr3, 56
	xvsrai.d	$xr3, $xr3, 56
	xvpermi.d	$xr5, $xr5, 68
	vinsgr2vr.w	$vr6, $a5, 0
	ld.w	$a5, $s6, 0
	xvshuf.b	$xr5, $xr0, $xr5, $xr4
	xvslli.d	$xr5, $xr5, 56
	xvsrai.d	$xr5, $xr5, 56
	vinsgr2vr.w	$vr7, $a5, 0
	xvpermi.d	$xr6, $xr6, 68
	xvshuf.b	$xr6, $xr0, $xr6, $xr4
	xvslli.d	$xr6, $xr6, 56
	xvsrai.d	$xr6, $xr6, 56
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.b	$xr4, $xr0, $xr7, $xr4
	xvslli.d	$xr4, $xr4, 56
	xvsrai.d	$xr4, $xr4, 56
	xvmadd.d	$xr1, $xr6, $xr3
	xvmadd.d	$xr2, $xr4, $xr5
	addi.d	$s1, $s1, -8
	addi.d	$a4, $a4, -8
	addi.d	$s6, $s6, 8
	bnez	$a4, .LBB15_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	xvld	$xr3, $a4, %pc_lo12(.LCPI15_1)
	xvadd.d	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr3, $xr0, $xr2
	xvadd.d	$xr1, $xr1, $xr3
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.d	$xr2, $xr2, 1
	xvadd.d	$xr1, $xr1, $xr2
	xvpickve2gr.d	$a5, $xr1, 0
	beq	$s7, $s5, .LBB15_2
	.p2align	4, , 16
.LBB15_9:                               # %while.body
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $t0
	add.d	$t0, $t5, $t0
	ldx.b	$t8, $s0, $fp
	ld.b	$t0, $t0, 16
	mul.d	$t0, $t0, $t8
	add.d	$a5, $t0, $a5
	bltu	$fp, $s8, .LBB15_2
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB15_9 Depth=2
	addi.d	$fp, $fp, -1
	addi.d	$t0, $a4, 1
	bne	$a4, $a6, .LBB15_9
	b	.LBB15_2
.LBB15_11:
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$a6, 419430
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a7, $s8, -1
	add.d	$t0, $s2, $t0
	bge	$s4, $a7, .LBB15_23
.LBB15_12:                              # %for.body104.lr.ph
	move	$t1, $zero
	xvrepli.b	$xr0, 0
	add.d	$a4, $s6, $s7
	addi.d	$t2, $a4, -2
	sub.w	$t3, $s4, $s3
	add.d	$a4, $a4, $s0
	addi.d	$a0, $a4, 11
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	add.d	$t5, $s5, $s3
	addi.d	$a0, $t5, 20
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$t7, $zero, -1
	ori	$t8, $zero, 16
	ori	$s5, $zero, 17
	ori	$a4, $a6, 1639
	lu32i.d	$a4, 419430
	lu52i.d	$a6, $a4, 1638
	move	$s6, $s4
	move	$s7, $t3
	b	.LBB15_14
	.p2align	4, , 16
.LBB15_13:                              # %while.end146
                                        #   in Loop: Header=BB15_14 Depth=1
	mulh.d	$a0, $a5, $a6
	srli.d	$a4, $a0, 63
	srai.d	$a0, $a0, 2
	add.d	$a4, $a0, $a4
	slli.d	$a0, $a4, 3
	alsl.d	$a0, $a4, $a0, 1
	sub.d	$a0, $a5, $a0
	addi.d	$t4, $t0, -1
	st.b	$a0, $t0, 0
	addi.w	$s4, $s4, 1
	addi.d	$t1, $t1, 1
	addi.w	$s7, $s7, 1
	addi.d	$s6, $s6, 1
	move	$t0, $t4
	move	$a5, $a4
	bge	$s4, $a7, .LBB15_24
.LBB15_14:                              # %for.body104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_20 Depth 2
	sub.w	$a0, $s4, $s3
	slt	$a4, $t7, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $t7, $a4
	or	$a0, $a0, $a4
	nor	$a0, $a0, $zero
	add.d	$s8, $a1, $a0
	blt	$s8, $t8, .LBB15_13
# %bb.15:                               # %for.body104
                                        #   in Loop: Header=BB15_14 Depth=1
	slt	$a0, $s4, $a2
	masknez	$a4, $a2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a4, $a0, $a4
	bltz	$a4, .LBB15_13
# %bb.16:                               # %while.body138.preheader
                                        #   in Loop: Header=BB15_14 Depth=1
	add.w	$a0, $t3, $t1
	slt	$t4, $t7, $a0
	maskeqz	$a0, $a0, $t4
	masknez	$t4, $t7, $t4
	or	$a0, $a0, $t4
	sub.w	$a0, $zero, $a0
	add.d	$a0, $t2, $a0
	sltu	$t4, $a0, $a4
	masknez	$t6, $a4, $t4
	maskeqz	$a0, $a0, $t4
	or	$a0, $a0, $t6
	addi.d	$s1, $a0, 1
	nor	$fp, $a4, $zero
	ori	$a0, $zero, 8
	bltu	$s1, $a0, .LBB15_20
# %bb.17:                               # %vector.ph161
                                        #   in Loop: Header=BB15_14 Depth=1
	slt	$a0, $t7, $s7
	masknez	$a4, $t7, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a4
	sub.w	$a4, $zero, $a0
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	add.d	$t4, $t4, $a4
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$t6, $a4, $fp
	slt	$a4, $s6, $a2
	masknez	$ra, $a2, $a4
	maskeqz	$a4, $s6, $a4
	or	$a4, $a4, $ra
	sub.d	$a0, $t2, $a0
	sltu	$ra, $a4, $a0
	masknez	$a0, $a0, $ra
	maskeqz	$a4, $a4, $ra
	or	$a0, $a4, $a0
	addi.d	$a4, $a0, 1
	bstrins.d	$a4, $zero, 2, 0
	move	$ra, $s1
	bstrins.d	$ra, $zero, 2, 0
	sub.d	$s8, $s8, $ra
	add.d	$fp, $ra, $fp
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.d	$xr1, $a5, 0
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB15_18:                              # %vector.body164
                                        #   Parent Loop BB15_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $t4, 0
	ld.w	$a5, $t4, -4
	vinsgr2vr.w	$vr3, $a0, 0
	vshuf4i.b	$vr3, $vr3, 27
	xvld	$xr4, $a3, %pc_lo12(.LCPI15_0)
	vinsgr2vr.w	$vr5, $a5, 0
	vshuf4i.b	$vr5, $vr5, 27
	xvpermi.d	$xr3, $xr3, 68
	xvshuf.b	$xr3, $xr0, $xr3, $xr4
	ld.w	$a0, $t6, -4
	xvslli.d	$xr3, $xr3, 56
	xvsrai.d	$xr3, $xr3, 56
	xvpermi.d	$xr5, $xr5, 68
	vinsgr2vr.w	$vr6, $a0, 0
	ld.w	$a0, $t6, 0
	xvshuf.b	$xr5, $xr0, $xr5, $xr4
	xvslli.d	$xr5, $xr5, 56
	xvsrai.d	$xr5, $xr5, 56
	vinsgr2vr.w	$vr7, $a0, 0
	xvpermi.d	$xr6, $xr6, 68
	xvshuf.b	$xr6, $xr0, $xr6, $xr4
	xvslli.d	$xr6, $xr6, 56
	xvsrai.d	$xr6, $xr6, 56
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.b	$xr4, $xr0, $xr7, $xr4
	xvslli.d	$xr4, $xr4, 56
	xvsrai.d	$xr4, $xr4, 56
	xvmadd.d	$xr1, $xr6, $xr3
	xvmadd.d	$xr2, $xr4, $xr5
	addi.d	$t4, $t4, -8
	addi.d	$a4, $a4, -8
	addi.d	$t6, $t6, 8
	bnez	$a4, .LBB15_18
# %bb.19:                               # %middle.block177
                                        #   in Loop: Header=BB15_14 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	xvld	$xr3, $a0, %pc_lo12(.LCPI15_1)
	xvadd.d	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr3, $xr0, $xr2
	xvadd.d	$xr1, $xr1, $xr3
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.d	$xr2, $xr2, 1
	xvadd.d	$xr1, $xr1, $xr2
	xvpickve2gr.d	$a5, $xr1, 0
	beq	$s1, $ra, .LBB15_13
	.p2align	4, , 16
.LBB15_20:                              # %while.body138
                                        #   Parent Loop BB15_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $t5, $fp
	ldx.b	$t4, $s0, $s8
	ld.b	$a0, $a0, 16
	mul.d	$a0, $a0, $t4
	add.d	$a5, $a0, $a5
	bltu	$s8, $s5, .LBB15_13
# %bb.21:                               # %while.body138
                                        #   in Loop: Header=BB15_20 Depth=2
	move	$a4, $fp
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, 1
	bne	$a4, $t7, .LBB15_20
	b	.LBB15_13
.LBB15_22:
	move	$a5, $zero
	move	$s4, $zero
	addi.w	$a7, $s8, -1
	add.d	$t0, $s2, $t0
	blt	$s4, $a7, .LBB15_12
.LBB15_23:
	move	$a4, $a5
	move	$t4, $t0
.LBB15_24:                              # %for.end152
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 0
	st.b	$a4, $t4, 0
	beqz	$a1, .LBB15_27
# %bb.25:                               # %if.end.i
	ld.w	$a0, $a1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 12
	bnez	$a0, .LBB15_27
# %bb.26:                               # %if.then3.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB15_27:                              # %free_num.exit
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a0, 4
	ori	$a1, $zero, 2
	st.d	$a0, $fp, 0
	blt	$a3, $a1, .LBB15_32
# %bb.28:                               # %land.rhs.preheader.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	addi.d	$a2, $a0, 15
	move	$a4, $s2
	.p2align	4, , 16
.LBB15_29:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a4, 0
	move	$a5, $a3
	bnez	$a0, .LBB15_33
# %bb.30:                               # %while.body.i
                                        #   in Loop: Header=BB15_29 Depth=1
	addi.d	$a4, $a4, 1
	addi.w	$a3, $a5, -1
	blt	$a1, $a5, .LBB15_29
# %bb.31:
	ori	$a3, $zero, 1
	b	.LBB15_34
.LBB15_32:
	move	$a2, $s2
	b	.LBB15_34
.LBB15_33:
	move	$a3, $a5
	move	$a2, $a4
.LBB15_34:                              # %while.end.i
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 8
	add.w	$a1, $a1, $a3
	ori	$a4, $zero, 1
	st.w	$a3, $a0, 4
	blt	$a1, $a4, .LBB15_40
# %bb.35:                               # %iter.check
	ori	$a0, $zero, 16
	bltu	$a1, $a0, .LBB15_37
# %bb.36:                               # %vector.memcheck
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 16
	ori	$a3, $zero, 64
	bgeu	$a0, $a3, .LBB15_48
.LBB15_37:
	move	$a3, $a2
	move	$a4, $s2
	move	$a6, $a1
.LBB15_38:                              # %while.body10.i.preheader
	addi.d	$a1, $a6, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB15_39:                              # %while.body10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a0, $a4, 0
	move	$a4, $a5
	bltu	$a2, $a1, .LBB15_39
.LBB15_40:                              # %_rm_leading_zeros.exit
	pcalau12i	$a0, %pc_hi20(_zero_)
	ld.d	$a1, $a0, %pc_lo12(_zero_)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB15_46
# %bb.41:                               # %if.end.i99
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a0, 8
	add.w	$a4, $a3, $a2
	ori	$a1, $zero, 1
	blt	$a4, $a1, .LBB15_45
# %bb.42:                               # %land.rhs.i106.preheader
	add.d	$a0, $a2, $a3
	addi.d	$a2, $a0, 1
	.p2align	4, , 16
.LBB15_43:                              # %land.rhs.i106
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	bnez	$a0, .LBB15_47
# %bb.44:                               # %while.body.i108
                                        #   in Loop: Header=BB15_43 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$s2, $s2, 1
	blt	$a1, $a2, .LBB15_43
	b	.LBB15_46
.LBB15_45:                              # %is_zero.exit
	bnez	$a4, .LBB15_47
.LBB15_46:                              # %if.then
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
.LBB15_47:                              # %if.end
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
.LBB15_48:                              # %vector.main.loop.iter.check
	bgeu	$a1, $a3, .LBB15_50
# %bb.49:
	move	$a5, $zero
	b	.LBB15_54
.LBB15_50:                              # %vector.ph189
	bstrpick.d	$a0, $a1, 30, 6
	slli.d	$a5, $a0, 6
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a3, $a0, 48
	addi.d	$a4, $a2, 32
	move	$a6, $a5
	.p2align	4, , 16
.LBB15_51:                              # %vector.body192
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB15_51
# %bb.52:                               # %middle.block198
	beq	$a5, $a1, .LBB15_40
# %bb.53:                               # %vec.epilog.iter.check
	andi	$a0, $a1, 48
	beqz	$a0, .LBB15_57
.LBB15_54:                              # %vec.epilog.ph
	bstrpick.d	$a0, $a1, 30, 4
	slli.d	$a7, $a0, 4
	alsl.d	$a3, $a0, $a2, 4
	alsl.d	$a4, $a0, $s2, 4
	sub.d	$a6, $a1, $a7
	sub.d	$t0, $a5, $a7
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	addi.d	$t1, $a0, 16
	add.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB15_55:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, 0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a2, $a2, 16
	bnez	$t0, .LBB15_55
# %bb.56:                               # %vec.epilog.middle.block
	bne	$a7, $a1, .LBB15_38
	b	.LBB15_40
.LBB15_57:
	add.d	$a3, $a2, $a5
	add.d	$a4, $s2, $a5
	sub.d	$a6, $a1, $a5
	b	.LBB15_38
.Lfunc_end15:
	.size	bc_multiply, .Lfunc_end15-bc_multiply
                                        # -- End function
	.globl	bc_divide                       # -- Begin function bc_divide
	.p2align	5
	.type	bc_divide,@function
bc_divide:                              # @bc_divide
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(_zero_)
	ld.d	$a4, $s2, %pc_lo12(_zero_)
	move	$s8, $a0
	addi.w	$a0, $zero, -1
	beq	$a1, $a4, .LBB16_90
# %bb.1:                                # %if.end.i
	move	$fp, $a3
	move	$s5, $a2
	move	$s7, $a1
	ld.w	$s3, $a1, 4
	ld.w	$s4, $a1, 8
	add.w	$a2, $s4, $s3
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB16_5
# %bb.2:                                # %land.rhs.preheader.i
	addi.d	$a2, $s7, 16
	add.d	$a3, $s3, $s4
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB16_3:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bnez	$a4, .LBB16_6
# %bb.4:                                # %while.body.i
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	blt	$a1, $a3, .LBB16_3
	b	.LBB16_90
.LBB16_5:                               # %is_zero.exit
	beqz	$a2, .LBB16_90
.LBB16_6:                               # %if.end
	addi.d	$s6, $s8, 16
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	beqz	$s4, .LBB16_12
# %bb.7:                                # %if.end27.thread363
	addi.d	$s2, $s7, 16
.LBB16_8:                               # %land.rhs.preheader
	bstrpick.d	$a0, $s4, 31, 0
	add.d	$a0, $s3, $a0
	add.d	$a0, $a0, $s7
	addi.d	$a0, $a0, 15
	.p2align	4, , 16
.LBB16_9:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB16_19
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB16_9 Depth=1
	addi.w	$s4, $s4, -1
	addi.d	$a0, $a0, -1
	bnez	$s4, .LBB16_9
.LBB16_11:
	move	$s4, $zero
	b	.LBB16_19
.LBB16_12:                              # %if.then1
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB16_17
# %bb.13:                               # %land.lhs.true
	ld.bu	$a1, $s7, 16
	bne	$a1, $a0, .LBB16_17
# %bb.14:                               # %if.then5
	ld.w	$s1, $s8, 4
	add.d	$a0, $fp, $s1
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s1, $a0, 4
	st.w	$fp, $a0, 8
	ori	$s3, $zero, 1
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s7, 0
	st.w	$s3, $s0, 12
	addi.d	$s4, $s0, 16
	st.b	$zero, $s0, 16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $s0, 0
	add.d	$a0, $s4, $s1
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 8
	slt	$a1, $a0, $fp
	masknez	$a2, $fp, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	add.w	$a2, $a0, $s1
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB16_100
# %bb.15:                               # %if.end.i165
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB16_101
# %bb.16:                               # %if.end27.thread372
	move	$s4, $zero
	st.d	$s0, $s5, 0
	addi.d	$s2, $s7, 16
	ori	$s3, $zero, 1
	b	.LBB16_19
.LBB16_17:                              # %if.end27.thread
	move	$s4, $zero
.LBB16_18:                              # %while.end
	addi.d	$s2, $s7, 16
.LBB16_19:                              # %while.end
	ld.w	$a2, $s8, 4
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 8
	add.w	$s1, $a2, $s4
	sub.w	$a1, $a0, $s4
	slt	$a3, $a1, $fp
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	sub.d	$a1, $fp, $a1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a2
	addi.w	$s5, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$s7, $s4, $s3
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$s5, $a0, 31, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bstrpick.d	$s6, $s7, 31, 0
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s8, $s6
	ld.bu	$s3, $s8, 0
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	beqz	$s3, .LBB16_21
# %bb.20:
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB16_23
	.p2align	4, , 16
.LBB16_21:                              # %while.body82
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s3, $s8, 1
	addi.d	$s8, $s8, 1
	addi.w	$s7, $s7, -1
	beqz	$s3, .LBB16_21
# %bb.22:                               # %while.end85.loopexit
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB16_23:                              # %while.end85
	add.w	$s5, $s1, $fp
	sltu	$a0, $s5, $s7
	sltu	$a2, $s1, $s7
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a1, $s1, $s7
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a2
	masknez	$a0, $a1, $a0
	addi.d	$s6, $a0, 1
	add.d	$s0, $s6, $fp
	addi.w	$s2, $s6, 0
	add.d	$a0, $fp, $s2
	addi.d	$a0, $a0, 1040
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.w	$zero, $a0, 0
	st.w	$s6, $a0, 4
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.w	$fp, $a0, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 12
	addi.d	$s6, $s1, 16
	st.b	$zero, $s1, 16
	bstrpick.d	$a2, $s0, 31, 0
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t2, $a0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bltu	$s5, $s7, .LBB16_66
# %bb.24:                               # %if.then111
	move	$t5, $s5
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ext.w.b	$a0, $s3
	addi.d	$a0, $a0, 1
	ori	$t4, $zero, 10
	div.d	$a0, $t4, $a0
	bstrpick.d	$a1, $a0, 15, 0
	ori	$s2, $zero, 1
	addi.d	$a2, $s7, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$s1, 419430
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s2, .LBB16_40
# %bb.25:                               # %if.then116
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a3, $a2, 0
	addi.w	$a2, $a3, 1
	beqz	$a1, .LBB16_38
# %bb.26:                               # %if.else5.i
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4094
	ext.w.h	$a0, $a0
	bltu	$a4, $a3, .LBB16_31
# %bb.27:                               # %while.body.preheader.i
	move	$a3, $zero
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, -1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	masknez	$a5, $a5, $a7
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a6, $a6, $a7
	or	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 2
	ori	$a5, $s1, 1639
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB16_28:                              # %while.body.i179
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a2, 0
	mul.d	$a7, $a7, $a0
	add.w	$a7, $a7, $a3
	mul.d	$a3, $a7, $a5
	srli.d	$t0, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $t0
	slli.d	$t0, $a3, 3
	alsl.d	$t0, $a3, $t0, 1
	sub.d	$t0, $a7, $t0
	st.b	$t0, $a2, 0
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, -1
	bltu	$a6, $a4, .LBB16_28
# %bb.29:                               # %while.end.i182
	addi.w	$a4, $a7, 9
	ori	$a5, $zero, 19
	bltu	$a4, $a5, .LBB16_31
# %bb.30:                               # %if.then17.i
	st.b	$a3, $a2, 0
.LBB16_31:                              # %_one_mult.exit
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB16_40
# %bb.32:                               # %_one_mult.exit
	move	$fp, $t5
	beqz	$a1, .LBB16_39
# %bb.33:                               # %if.else5.i186
	ori	$a1, $zero, 1
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ori	$t4, $zero, 10
	move	$t5, $fp
	blt	$s7, $a1, .LBB16_40
# %bb.34:                               # %while.body.preheader.i188
	move	$a3, $zero
	add.d	$a2, $s8, $s7
	addi.d	$a2, $a2, -1
	ori	$a4, $s1, 1639
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_35:                              # %while.body.i192
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a2, 0
	mul.d	$a6, $a6, $a0
	add.w	$a6, $a6, $a3
	mul.d	$a3, $a6, $a4
	srli.d	$a7, $a3, 63
	srai.d	$a3, $a3, 34
	add.d	$a3, $a3, $a7
	slli.d	$a7, $a3, 3
	alsl.d	$a7, $a3, $a7, 1
	sub.d	$a7, $a6, $a7
	st.b	$a7, $a2, 0
	addi.w	$a5, $a5, -1
	addi.d	$a2, $a2, -1
	bltu	$a1, $a5, .LBB16_35
# %bb.36:                               # %while.end.i207
	addi.w	$a0, $a6, 9
	ori	$a1, $zero, 19
	bltu	$a0, $a1, .LBB16_40
# %bb.37:                               # %if.then17.i210
	st.b	$a3, $a2, 0
	b	.LBB16_40
.LBB16_38:                              # %_one_mult.exit.thread
	move	$fp, $t5
	move	$a0, $t1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_39:                              # %if.then.i185
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ori	$t4, $zero, 10
	move	$t5, $fp
.LBB16_40:                              # %if.end120
	move	$s4, $zero
	bstrpick.d	$a2, $s7, 31, 0
	add.d	$a0, $s6, $a2
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s5, $a0, $a1
	sub.w	$t0, $t5, $s7
	addi.d	$a0, $t2, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $t2, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s7, $s8
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $a2, $s8
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$t5, $zero, 9
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1639
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $s1, 1639
	b	.LBB16_43
	.p2align	4, , 16
.LBB16_41:                              #   in Loop: Header=BB16_43 Depth=1
	move	$fp, $zero
.LBB16_42:                              # %if.end276
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.d	$a0, $s5, 1
	st.b	$fp, $s5, 0
	move	$s5, $a0
	bltu	$t0, $s4, .LBB16_65
.LBB16_43:                              # %while.body139
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_53 Depth 2
                                        #     Child Loop BB16_58 Depth 2
                                        #     Child Loop BB16_62 Depth 2
	move	$a1, $s4
	bstrpick.d	$s0, $s4, 31, 0
	ldx.bu	$a3, $t1, $s0
	ld.bu	$a4, $s8, 0
	ext.w.b	$a2, $a3
	ext.w.b	$a0, $a4
	addi.w	$s4, $s4, 1
	bne	$a4, $a3, .LBB16_45
# %bb.44:                               # %while.body139.if.end158_crit_edge
                                        #   in Loop: Header=BB16_43 Depth=1
	bstrpick.d	$a3, $s4, 31, 0
	ori	$fp, $zero, 9
	b	.LBB16_46
	.p2align	4, , 16
.LBB16_45:                              # %if.else147
                                        #   in Loop: Header=BB16_43 Depth=1
	bstrpick.d	$a3, $s4, 31, 0
	ldx.b	$a4, $t1, $a3
	slli.d	$a5, $a2, 3
	alsl.d	$a5, $a2, $a5, 1
	add.d	$a4, $a5, $a4
	div.d	$a4, $a4, $a0
	ext.w.h	$fp, $a4
.LBB16_46:                              # %if.end158
                                        #   in Loop: Header=BB16_43 Depth=1
	ld.b	$a4, $s8, 1
	ldx.b	$a3, $t1, $a3
	mul.d	$a5, $fp, $a4
	mul.d	$a2, $a2, $t4
	add.d	$a2, $a2, $a3
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.b	$a1, $t1, $a1
	mul.d	$a3, $fp, $a0
	sub.d	$a3, $a2, $a3
	mul.d	$a3, $a3, $t4
	add.d	$a3, $a3, $a1
	bgeu	$a3, $a5, .LBB16_48
# %bb.47:                               # %if.then182
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.d	$a3, $fp, -1
	mul.d	$a4, $a3, $a4
	mul.d	$a0, $a3, $a0
	sub.d	$a0, $a2, $a0
	slli.d	$a2, $a0, 3
	alsl.d	$a0, $a0, $a2, 1
	add.w	$a0, $a0, $a1
	sltu	$a0, $a0, $a4
	addi.d	$a1, $fp, -2
	masknez	$a2, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$fp, $a0, $a2
.LBB16_48:                              # %if.end210
                                        #   in Loop: Header=BB16_43 Depth=1
	beqz	$fp, .LBB16_41
# %bb.49:                               # %if.then213
                                        #   in Loop: Header=BB16_43 Depth=1
	st.b	$zero, $t2, 0
	bne	$fp, $s2, .LBB16_51
# %bb.50:                               # %if.then3.i214
                                        #   in Loop: Header=BB16_43 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	move	$s1, $t0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$t5, $zero, 9
	move	$t0, $s1
	ori	$t4, $zero, 10
	ld.d	$t3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB16_56
	.p2align	4, , 16
.LBB16_51:                              # %if.else5.i216
                                        #   in Loop: Header=BB16_43 Depth=1
	blt	$s7, $s2, .LBB16_56
# %bb.52:                               # %while.body.i222.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	move	$a1, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_53:                              # %while.body.i222
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a3, 0
	mul.d	$a4, $fp, $a4
	add.w	$a4, $a4, $a1
	mul.d	$a1, $a4, $s3
	srli.d	$a5, $a1, 63
	srai.d	$a1, $a1, 34
	add.d	$a1, $a1, $a5
	slli.d	$a5, $a1, 3
	alsl.d	$a5, $a1, $a5, 1
	sub.d	$a5, $a4, $a5
	st.b	$a5, $a0, 0
	addi.d	$a0, $a0, -1
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	bltu	$s2, $a2, .LBB16_53
# %bb.54:                               # %while.end.i237
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.w	$a2, $a4, 9
	ori	$a3, $zero, 19
	bltu	$a2, $a3, .LBB16_56
# %bb.55:                               # %if.then17.i240
                                        #   in Loop: Header=BB16_43 Depth=1
	st.b	$a1, $a0, 0
	.p2align	4, , 16
.LBB16_56:                              # %_one_mult.exit242
                                        #   in Loop: Header=BB16_43 Depth=1
	beqz	$t3, .LBB16_42
# %bb.57:                               # %for.body.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	add.d	$a0, $t1, $s0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	move	$a3, $zero
	move	$a1, $t3
	move	$a2, $a0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_58:                              # %for.body
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a5, 0
	ld.b	$a6, $a2, 0
	addi.d	$a5, $a5, -1
	add.d	$a3, $a3, $a4
	sub.w	$a4, $a6, $a3
	slti	$a3, $a4, 0
	addi.d	$a6, $a4, 10
	masknez	$a7, $a4, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a7
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $a4, 31, 31
	bnez	$a1, .LBB16_58
# %bb.59:                               # %if.end237
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.w	$a1, $zero, -1
	blt	$a1, $a4, .LBB16_42
# %bb.60:                               # %if.then240
                                        #   in Loop: Header=BB16_43 Depth=1
	addi.d	$fp, $fp, -1
	beqz	$s7, .LBB16_42
# %bb.61:                               # %for.body252.preheader
                                        #   in Loop: Header=BB16_43 Depth=1
	move	$a3, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB16_62:                              # %for.body252
                                        #   Parent Loop BB16_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a0, 0
	ld.b	$a5, $a1, 0
	add.d	$a3, $a3, $a4
	add.w	$a4, $a3, $a5
	slt	$a3, $t5, $a4
	addi.d	$a5, $a4, 246
	masknez	$a6, $a4, $a3
	maskeqz	$a5, $a5, $a3
	or	$a5, $a5, $a6
	st.b	$a5, $a0, 0
	addi.d	$a0, $a0, -1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	bnez	$a2, .LBB16_62
# %bb.63:                               # %for.end268
                                        #   in Loop: Header=BB16_43 Depth=1
	blt	$a4, $t4, .LBB16_42
# %bb.64:                               # %if.then271
                                        #   in Loop: Header=BB16_43 Depth=1
	ld.b	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	srli.d	$a3, $a2, 63
	srai.d	$a2, $a2, 18
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a2, 3
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a1, $a1, $a2
	st.b	$a1, $a0, 0
	b	.LBB16_42
.LBB16_65:                              # %if.end281.loopexit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s2, $s1, 4
.LBB16_66:                              # %if.end281
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(_zero_)
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $s1, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beq	$s1, $a2, .LBB16_77
# %bb.67:                               # %if.end.i244
	ld.w	$a1, $s1, 8
	add.w	$a2, $a1, $s2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB16_71
# %bb.68:                               # %land.rhs.i256.preheader
	add.d	$a1, $s2, $a1
	addi.d	$a1, $a1, 1
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_69:                              # %land.rhs.i256
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	bnez	$a3, .LBB16_72
# %bb.70:                               # %while.body.i260
                                        #   in Loop: Header=BB16_69 Depth=1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	blt	$a0, $a1, .LBB16_69
	b	.LBB16_77
.LBB16_71:                              # %is_zero.exit264
	beqz	$a2, .LBB16_77
.LBB16_72:                              # %if.end292
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB16_78
.LBB16_73:                              # %land.rhs.preheader.i270
	add.d	$a1, $s1, $s2
	addi.d	$a1, $a1, 15
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_74:                              # %land.rhs.i271
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	move	$a3, $s2
	bnez	$a4, .LBB16_79
# %bb.75:                               # %while.body.i273
                                        #   in Loop: Header=BB16_74 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$s2, $a3, -1
	blt	$a0, $a3, .LBB16_74
# %bb.76:
	ori	$s2, $zero, 1
	b	.LBB16_80
.LBB16_77:                              # %if.then290
	st.w	$zero, $s1, 0
	ori	$a0, $zero, 2
	bge	$s2, $a0, .LBB16_73
.LBB16_78:
	move	$a1, $s6
	b	.LBB16_80
.LBB16_79:
	move	$s2, $a3
	move	$a1, $a2
.LBB16_80:                              # %while.end.i267
	ld.w	$a0, $s1, 8
	add.w	$a0, $a0, $s2
	ori	$a2, $zero, 1
	st.w	$s2, $s1, 4
	blt	$a0, $a2, .LBB16_86
# %bb.81:                               # %iter.check
	ori	$a2, $zero, 16
	bltu	$a0, $a2, .LBB16_83
# %bb.82:                               # %vector.memcheck
	sub.d	$a2, $s1, $a1
	addi.d	$a3, $a2, 16
	ori	$a2, $zero, 64
	bgeu	$a3, $a2, .LBB16_91
.LBB16_83:
	move	$a2, $a1
	move	$a4, $a0
.LBB16_84:                              # %while.body10.i.preheader
	addi.d	$a0, $a4, 1
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB16_85:                              # %while.body10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a4, $s6, 1
	addi.w	$a0, $a0, -1
	st.b	$a3, $s6, 0
	move	$s6, $a4
	bltu	$a1, $a0, .LBB16_85
.LBB16_86:                              # %_rm_leading_zeros.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB16_89
# %bb.87:                               # %if.end.i278
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB16_89
# %bb.88:                               # %if.then3.i283
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
.LBB16_89:                              # %free_num.exit284
	st.d	$s1, $fp, 0
	move	$a0, $t2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB16_90:                              # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB16_91:                              # %vector.main.loop.iter.check
	bgeu	$a0, $a2, .LBB16_93
# %bb.92:
	move	$a3, $zero
	b	.LBB16_97
.LBB16_93:                              # %vector.ph
	bstrpick.d	$a2, $a0, 30, 6
	slli.d	$a3, $a2, 6
	addi.d	$a2, $s1, 48
	addi.d	$a4, $a1, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB16_94:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a5, $a5, -64
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB16_94
# %bb.95:                               # %middle.block
	beq	$a3, $a0, .LBB16_86
# %bb.96:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 48
	beqz	$a2, .LBB16_102
.LBB16_97:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a5, $a4, 4
	alsl.d	$a2, $a4, $a1, 4
	alsl.d	$s6, $a4, $s6, 4
	sub.d	$a4, $a0, $a5
	sub.d	$a6, $a3, $a5
	add.d	$a7, $a3, $s1
	addi.d	$a7, $a7, 16
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB16_98:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$a1, $a1, 16
	bnez	$a6, .LBB16_98
# %bb.99:                               # %vec.epilog.middle.block
	bne	$a5, $a0, .LBB16_84
	b	.LBB16_86
.LBB16_100:                             # %if.end27.thread367
	move	$s4, $zero
	st.d	$s0, $s5, 0
	b	.LBB16_18
.LBB16_101:                             # %if.end27
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s7, 8
	ld.w	$s3, $s7, 4
	st.d	$s0, $s5, 0
	addi.d	$s2, $s7, 16
	bnez	$s4, .LBB16_8
	b	.LBB16_11
.LBB16_102:
	add.d	$a2, $a1, $a3
	add.d	$s6, $s6, $a3
	sub.d	$a4, $a0, $a3
	b	.LBB16_84
.Lfunc_end16:
	.size	bc_divide, .Lfunc_end16-bc_divide
                                        # -- End function
	.globl	bc_modulo                       # -- Begin function bc_modulo
	.p2align	5
	.type	bc_modulo,@function
bc_modulo:                              # @bc_modulo
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(_zero_)
	ld.d	$a5, $a4, %pc_lo12(_zero_)
	addi.w	$a4, $zero, -1
	beq	$a1, $a5, .LBB17_10
# %bb.1:                                # %if.end.i
	ld.w	$t1, $a1, 4
	ld.w	$a6, $a1, 8
	add.w	$t0, $a6, $t1
	ori	$a7, $zero, 1
	blt	$t0, $a7, .LBB17_5
# %bb.2:                                # %land.rhs.preheader.i
	addi.d	$t0, $a1, 16
	add.d	$t1, $t1, $a6
	addi.d	$t1, $t1, 1
	.p2align	4, , 16
.LBB17_3:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t2, $t0, 0
	bnez	$t2, .LBB17_6
# %bb.4:                                # %while.body.i
                                        #   in Loop: Header=BB17_3 Depth=1
	addi.w	$t1, $t1, -1
	addi.d	$t0, $t0, 1
	blt	$a7, $t1, .LBB17_3
	b	.LBB17_10
.LBB17_5:                               # %is_zero.exit
	beqz	$t0, .LBB17_10
.LBB17_6:                               # %if.end
	ld.w	$a4, $a0, 8
	add.w	$a6, $a6, $a3
	slt	$a7, $a6, $a4
	ld.w	$t0, $a5, 12
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$fp, $a4, $a6
	addi.d	$a4, $t0, 1
	st.w	$a4, $a5, 12
	st.d	$a5, $sp, 0
	move	$s0, $a2
	addi.d	$a2, $sp, 0
	move	$s1, $a0
	move	$s2, $a1
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	addi.d	$a2, $sp, 0
	move	$a1, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB17_9
# %bb.7:                                # %if.end.i11
	ld.w	$a0, $fp, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 12
	bnez	$a0, .LBB17_9
# %bb.8:                                # %if.then3.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_9:                               # %cleanup
	move	$a4, $zero
.LBB17_10:                              # %cleanup
	move	$a0, $a4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	bc_modulo, .Lfunc_end17-bc_modulo
                                        # -- End function
	.globl	bc_raise                        # -- Begin function bc_raise
	.p2align	5
	.type	bc_raise,@function
bc_raise:                               # @bc_raise
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
	move	$s2, $a1
	ld.w	$a1, $a1, 8
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a0
	beqz	$a1, .LBB18_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(rt_warn)
	jirl	$ra, $ra, 0
.LBB18_2:                               # %if.end
	ld.w	$a0, $s2, 4
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB18_7
# %bb.3:                                # %for.body.preheader.i
	move	$a1, $zero
	addi.d	$a2, $s2, 16
	ori	$a3, $zero, 2
	lu12i.w	$a4, -209716
	ori	$a4, $a4, 3277
	lu32i.d	$a4, -209716
	lu52i.d	$a4, $a4, 204
	move	$a6, $a0
	.p2align	4, , 16
.LBB18_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a2, 0
	move	$a5, $a6
	slli.d	$a6, $a1, 3
	alsl.d	$a1, $a1, $a6, 1
	add.d	$a1, $a1, $a7
	bltu	$a5, $a3, .LBB18_6
# %bb.5:                                # %for.body.i
                                        #   in Loop: Header=BB18_4 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$a6, $a5, -1
	blt	$a1, $a4, .LBB18_4
.LBB18_6:                               # %for.end.i
	ori	$a2, $zero, 1
	sltu	$a2, $a2, $a5
	srai.d	$a3, $a1, 63
	andn	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	b	.LBB18_8
.LBB18_7:
	move	$a1, $zero
.LBB18_8:                               # %num2long.exit
	ld.w	$a2, $s2, 0
	sltui	$a2, $a2, 1
	sub.d	$a3, $zero, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a1, $a1, $a2
	or	$s3, $a1, $a3
	beqz	$s3, .LBB18_12
# %bb.9:                                # %if.end11
	addi.w	$s2, $zero, -1
	bge	$s2, $s3, .LBB18_20
# %bb.10:                               # %if.else
	ld.w	$a1, $s1, 8
	mul.d	$a2, $s3, $a1
	slt	$a0, $a1, $s0
	masknez	$a3, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a3
	move	$a0, $s3
	blt	$s0, $a2, .LBB18_21
# %bb.11:                               # %cond.false34
	mul.w	$s0, $a1, $s3
	move	$a0, $s3
	b	.LBB18_21
.LBB18_12:                              # %land.lhs.true
	ori	$a1, $zero, 1
	blt	$a1, $a0, .LBB18_14
# %bb.13:                               # %lor.lhs.false
	ld.bu	$a0, $s2, 16
	beqz	$a0, .LBB18_15
.LBB18_14:                              # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(rt_error)
	jirl	$ra, $ra, 0
.LBB18_15:                              # %if.then9
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_19
# %bb.16:                               # %if.end.i
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB18_18
# %bb.17:                               # %if.then3.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_18:                              # %if.end4.i
	st.d	$zero, $fp, 0
.LBB18_19:                              # %free_num.exit
	pcalau12i	$a0, %pc_hi20(_one_)
	ld.d	$a0, $a0, %pc_lo12(_one_)
	ld.w	$a1, $a0, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 12
	st.d	$a0, $fp, 0
	b	.LBB18_32
.LBB18_20:                              # %if.then14
	sub.d	$a0, $zero, $s3
.LBB18_21:                              # %if.end41
	pcalau12i	$s4, %pc_hi20(_one_)
	ld.d	$a1, $s4, %pc_lo12(_one_)
	ld.w	$a2, $a1, 12
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 12
	ld.w	$a2, $s1, 12
	st.d	$a1, $sp, 16
	addi.d	$a1, $a2, 1
	st.w	$a1, $s1, 12
	st.d	$s1, $sp, 8
	ori	$s5, $zero, 1
	b	.LBB18_23
	.p2align	4, , 16
.LBB18_22:                              # %if.end47
                                        #   in Loop: Header=BB18_23 Depth=1
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s6, 1
	bgeu	$s5, $s6, .LBB18_25
.LBB18_23:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $sp, 8
	move	$s6, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB18_22
# %bb.24:                               # %if.then46
                                        #   in Loop: Header=BB18_23 Depth=1
	ld.d	$a0, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	b	.LBB18_22
.LBB18_25:                              # %while.end
	bge	$s2, $s3, .LBB18_33
# %bb.26:                               # %if.else51
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_29
# %bb.27:                               # %if.end.i46
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB18_29
# %bb.28:                               # %if.then3.i51
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_29:                              # %free_num.exit52
	ld.d	$a0, $sp, 16
	st.d	$a0, $fp, 0
.LBB18_30:                              # %if.end52
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB18_32
# %bb.31:                               # %if.end.i54
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB18_36
.LBB18_32:                              # %cleanup
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
.LBB18_33:                              # %if.then49
	ld.d	$a0, $s4, %pc_lo12(_one_)
	ld.d	$s1, $sp, 16
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB18_30
# %bb.34:                               # %if.end.i38
	ld.w	$a0, $s1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 12
	bnez	$a0, .LBB18_30
# %bb.35:                               # %if.then3.i43
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB18_30
.LBB18_36:                              # %if.then3.i59
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end18:
	.size	bc_raise, .Lfunc_end18-bc_raise
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function bc_sqrt
.LCPI19_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
.LCPI19_1:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI19_3:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI19_2:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.text
	.globl	bc_sqrt
	.p2align	5
	.type	bc_sqrt,@function
bc_sqrt:                                # @bc_sqrt
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
	move	$fp, $a0
	ld.d	$s5, $a0, 0
	pcalau12i	$s1, %pc_hi20(_zero_)
	ld.d	$s3, $s1, %pc_lo12(_zero_)
	move	$s0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_do_compare)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB19_13
# %bb.1:                                # %if.else
	beqz	$a0, .LBB19_14
# %bb.2:                                # %if.end4
	pcalau12i	$s1, %pc_hi20(_one_)
	ld.d	$s4, $s1, %pc_lo12(_one_)
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_do_compare)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_19
# %bb.3:                                # %if.end9
	move	$s6, $a0
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s5, 8
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	ld.w	$s7, $s3, 12
	maskeqz	$a1, $s0, $a1
	or	$s1, $a1, $a0
	addi.w	$s2, $s1, 2
	addi.d	$a0, $s7, 2
	st.w	$a0, $s3, 12
	ori	$a0, $zero, 1042
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_0)
	move	$s0, $a0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 1280
	addi.w	$s8, $zero, -1
	st.h	$a0, $s0, 16
	bge	$s8, $s6, .LBB19_24
# %bb.4:                                # %if.else16
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	and	$a1, $a0, $a1
	st.w	$a0, $s3, 12
	beqz	$a1, .LBB19_6
# %bb.5:                                # %if.then3.i.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
.LBB19_6:                               # %free_num.exit.i
	ori	$a0, $zero, 1042
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_1)
	move	$s4, $a0
	vst	$vr0, $a0, 0
	ori	$s6, $zero, 1
	st.h	$s6, $a0, 16
	ld.w	$s7, $s5, 4
	st.d	$a0, $sp, 32
	srai.d	$a0, $s7, 31
	xor	$a1, $s7, $a0
	sub.w	$a1, $a1, $a0
	bstrpick.d	$a2, $a1, 31, 0
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	mul.d	$a2, $a2, $a0
	srli.d	$a2, $a2, 35
	ori	$a3, $zero, 10
	mul.d	$a2, $a2, $a3
	sub.d	$a2, $a1, $a2
	st.b	$a2, $sp, 42
	addi.d	$s5, $sp, 43
	bltu	$a1, $a3, .LBB19_9
# %bb.7:                                # %while.body.i45.preheader
	ori	$s6, $zero, 1
	lu12i.w	$a2, 104857
	ori	$a2, $a2, 2458
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB19_8:                               # %while.body.i45
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a0
	srli.d	$a1, $a1, 35
	mul.d	$a5, $a1, $a2
	srli.d	$a5, $a5, 32
	slli.d	$a6, $a5, 3
	alsl.d	$a5, $a5, $a6, 1
	sub.d	$a5, $a1, $a5
	st.b	$a5, $s5, 0
	addi.w	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	bltu	$a3, $a4, .LBB19_8
.LBB19_9:                               # %if.end.i.i56
	ld.w	$a0, $s3, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 12
	bnez	$a0, .LBB19_11
# %bb.10:                               # %if.then3.i.i76
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_11:                              # %free_num.exit.i60
	addi.d	$a0, $s6, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$s6, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	st.d	$a0, $sp, 24
	bge	$s8, $s7, .LBB19_25
# %bb.12:                               # %iter.check
	ori	$a2, $zero, 16
	addi.d	$a1, $a0, 16
	bgeu	$s6, $a2, .LBB19_26
	b	.LBB19_28
.LBB19_13:
	move	$a0, $zero
	b	.LBB19_66
.LBB19_14:                              # %if.then2
	beqz	$s5, .LBB19_18
# %bb.15:                               # %if.end.i
	ld.w	$a0, $s5, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_17
# %bb.16:                               # %if.then3.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_17:                              # %if.end4.i
	st.d	$zero, $fp, 0
	ld.d	$s3, $s1, %pc_lo12(_zero_)
.LBB19_18:                              # %free_num.exit
	ld.w	$a0, $s3, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 12
	st.d	$s3, $fp, 0
	b	.LBB19_65
.LBB19_19:                              # %if.then7
	beqz	$s5, .LBB19_23
# %bb.20:                               # %if.end.i24
	ld.w	$a0, $s5, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_22
# %bb.21:                               # %if.then3.i29
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_22:                              # %if.end4.i28
	st.d	$zero, $fp, 0
	ld.d	$s4, $s1, %pc_lo12(_one_)
.LBB19_23:                              # %free_num.exit30
	ld.w	$a0, $s4, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	st.d	$s4, $fp, 0
	b	.LBB19_65
.LBB19_24:                              # %if.then14
	ld.w	$a0, $s4, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s4, 12
	st.d	$s4, $sp, 32
	b	.LBB19_33
.LBB19_25:                              # %if.then7.i
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	ori	$a2, $zero, 16
	addi.d	$a1, $a0, 16
	bltu	$s6, $a2, .LBB19_28
.LBB19_26:                              # %vector.memcheck
	bgeu	$a1, $s5, .LBB19_67
# %bb.27:                               # %vector.memcheck
	addi.d	$a2, $s6, -1
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a3, $a0, $a2
	addi.d	$a3, $a3, 17
	nor	$a2, $a2, $zero
	add.d	$a2, $s5, $a2
	bgeu	$a2, $a3, .LBB19_67
.LBB19_28:
	move	$a4, $s5
.LBB19_29:                              # %while.body13.i68.preheader
	addi.d	$a2, $s6, 1
	addi.d	$a3, $a4, -1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB19_30:                              # %while.body13.i68
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a3, 0
	st.b	$a5, $a1, 0
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	blt	$a4, $a2, .LBB19_30
.LBB19_31:                              # %if.end.i79
	addi.d	$a2, $sp, 24
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 24
	st.w	$zero, $s5, 8
	addi.d	$a2, $sp, 32
	move	$a0, $s4
	move	$a1, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_raise)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 12
	move	$s3, $zero
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 12
	bnez	$a0, .LBB19_33
# %bb.32:                               # %if.then3.i84
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $zero
.LBB19_33:                              # %while.body.preheader
	ori	$s5, $zero, 1
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB19_34:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_40 Depth 2
                                        #     Child Loop BB19_51 Depth 2
                                        #     Child Loop BB19_46 Depth 2
	beqz	$s3, .LBB19_37
# %bb.35:                               # %if.end.i87
                                        #   in Loop: Header=BB19_34 Depth=1
	ld.w	$a0, $s3, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 12
	bnez	$a0, .LBB19_37
# %bb.36:                               # %if.then3.i92
                                        #   in Loop: Header=BB19_34 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_37:                              # %free_num.exit93
                                        #   in Loop: Header=BB19_34 Depth=1
	ld.d	$s3, $sp, 32
	ld.w	$a1, $s3, 12
	ld.d	$a0, $fp, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s3, 12
	st.d	$s3, $sp, 24
	addi.d	$a2, $sp, 32
	move	$a1, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bc_add)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	addi.d	$a2, $sp, 32
	move	$a1, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 32
	ld.w	$a4, $s4, 4
	ld.w	$a0, $s3, 4
	bne	$a4, $a0, .LBB19_34
# %bb.38:                               # %if.end24.i
                                        #   in Loop: Header=BB19_34 Depth=1
	ld.w	$a2, $s4, 8
	ld.w	$a3, $s3, 8
	slt	$a0, $a2, $a3
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a6, $a0, $a1
	add.w	$a5, $a6, $a4
	addi.d	$a0, $s4, 16
	addi.d	$a1, $s3, 16
	blt	$a5, $s5, .LBB19_42
# %bb.39:                               # %land.rhs.i.preheader
                                        #   in Loop: Header=BB19_34 Depth=1
	add.d	$a4, $a4, $a6
	addi.w	$a4, $a4, 1
	.p2align	4, , 16
.LBB19_40:                              # %land.rhs.i
                                        #   Parent Loop BB19_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a0, 0
	ld.bu	$a6, $a1, 0
	bne	$a5, $a6, .LBB19_48
# %bb.41:                               # %while.body.i102
                                        #   in Loop: Header=BB19_40 Depth=2
	addi.d	$a0, $a0, 1
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	blt	$s5, $a4, .LBB19_40
	b	.LBB19_43
.LBB19_42:                              # %if.end47.i
                                        #   in Loop: Header=BB19_34 Depth=1
	bnez	$a5, .LBB19_34
.LBB19_43:                              # %if.end71.i
                                        #   in Loop: Header=BB19_34 Depth=1
	beq	$a2, $a3, .LBB19_53
# %bb.44:                               # %if.then76.i
                                        #   in Loop: Header=BB19_34 Depth=1
	bge	$a3, $a2, .LBB19_50
# %bb.45:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB19_34 Depth=1
	sub.d	$a1, $a2, $a3
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB19_46:                              # %for.body.i
                                        #   Parent Loop BB19_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB19_34
# %bb.47:                               # %for.inc.i
                                        #   in Loop: Header=BB19_46 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	blt	$s5, $a1, .LBB19_46
	b	.LBB19_53
.LBB19_48:                              # %while.end.i101
                                        #   in Loop: Header=BB19_34 Depth=1
	bne	$a2, $a3, .LBB19_34
# %bb.49:                               # %while.end.i101
                                        #   in Loop: Header=BB19_34 Depth=1
	bne	$a4, $s6, .LBB19_34
	b	.LBB19_53
.LBB19_50:                              # %for.body107.preheader.i
                                        #   in Loop: Header=BB19_34 Depth=1
	sub.d	$a0, $a3, $a2
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB19_51:                              # %for.body107.i
                                        #   Parent Loop BB19_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	bnez	$a2, .LBB19_34
# %bb.52:                               # %for.inc121.i
                                        #   in Loop: Header=BB19_51 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	blt	$s5, $a0, .LBB19_51
.LBB19_53:                              # %while.end
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB19_57
# %bb.54:                               # %if.end.i105
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB19_56
# %bb.55:                               # %if.then3.i110
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_56:                              # %if.end4.i109
	st.d	$zero, $fp, 0
.LBB19_57:                              # %free_num.exit111
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(_one_)
	move	$a0, $s4
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB19_60
# %bb.58:                               # %if.end.i113
	ld.w	$a0, $s4, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 12
	bnez	$a0, .LBB19_60
# %bb.59:                               # %if.then3.i118
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_60:                              # %free_num.exit119
	beqz	$s3, .LBB19_63
# %bb.61:                               # %if.end.i121
	ld.w	$a0, $s3, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 12
	bnez	$a0, .LBB19_63
# %bb.62:                               # %if.then3.i126
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_63:                              # %if.end.i129
	ld.w	$a1, $s0, 12
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB19_66
# %bb.64:                               # %if.then3.i134
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_65:                              # %cleanup
	ori	$a0, $zero, 1
.LBB19_66:                              # %cleanup
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
.LBB19_67:                              # %vector.main.loop.iter.check
	ori	$a3, $zero, 32
	bstrpick.d	$a2, $s6, 31, 0
	bgeu	$s6, $a3, .LBB19_72
# %bb.68:
	move	$a3, $zero
.LBB19_69:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a2, 31, 4
	slli.d	$a5, $a4, 4
	sub.d	$s6, $s6, $a5
	alsl.d	$a1, $a4, $a1, 4
	sub.d	$a4, $s5, $a5
	sub.d	$a6, $a3, $a5
	sub.d	$a7, $s5, $a3
	pcalau12i	$t0, %pc_hi20(.LCPI19_3)
	vld	$vr0, $t0, %pc_lo12(.LCPI19_3)
	addi.d	$a7, $a7, -16
	add.d	$a3, $a3, $a0
	addi.d	$a3, $a3, 16
	.p2align	4, , 16
.LBB19_70:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, -16
	addi.d	$a3, $a3, 16
	bnez	$a6, .LBB19_70
# %bb.71:                               # %vec.epilog.middle.block
	bne	$a5, $a2, .LBB19_29
	b	.LBB19_31
.LBB19_72:                              # %vector.ph
	pcalau12i	$a3, %pc_hi20(.LCPI19_2)
	xvld	$xr0, $a3, %pc_lo12(.LCPI19_2)
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $s5, -32
	move	$a5, $a1
	move	$a6, $a3
	.p2align	4, , 16
.LBB19_73:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a4, 0
	xvpermi.d	$xr1, $xr1, 78
	xvshuf.b	$xr1, $xr0, $xr1, $xr0
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, -32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB19_73
# %bb.74:                               # %middle.block
	beq	$a3, $a2, .LBB19_31
# %bb.75:                               # %vec.epilog.iter.check
	andi	$a4, $a2, 16
	bnez	$a4, .LBB19_69
# %bb.76:
	sub.d	$s6, $s6, $a3
	add.d	$a1, $a1, $a3
	sub.d	$a4, $s5, $a3
	b	.LBB19_29
.Lfunc_end19:
	.size	bc_sqrt, .Lfunc_end19-bc_sqrt
                                        # -- End function
	.globl	out_long                        # -- Begin function out_long
	.p2align	5
	.type	out_long,@function
out_long:                               # @out_long
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a2, .LBB20_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 32
	jirl	$ra, $fp, 0
.LBB20_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	bge	$s2, $s0, .LBB20_4
	.p2align	4, , 16
.LBB20_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 48
	jirl	$ra, $fp, 0
	addi.w	$s0, $s0, -1
	blt	$s2, $s0, .LBB20_3
.LBB20_4:                               # %for.cond.preheader
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB20_7
# %bb.5:                                # %for.body.preheader
	bstrpick.d	$s0, $s1, 30, 0
	addi.d	$s1, $sp, 16
	.p2align	4, , 16
.LBB20_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $s1, 0
	jirl	$ra, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB20_6
.LBB20_7:                               # %for.end
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end20:
	.size	out_long, .Lfunc_end20-out_long
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function out_num
.LCPI21_0:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI21_1:
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.text
	.globl	out_num
	.p2align	5
	.type	out_num,@function
out_num:                                # @out_num
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$s3, $a0
	ld.w	$a0, $a0, 0
	ori	$a3, $zero, 1
	move	$s4, $a1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bne	$a0, $a3, .LBB21_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
.LBB21_2:                               # %if.end
	pcalau12i	$s6, %pc_hi20(_zero_)
	ld.d	$a7, $s6, %pc_lo12(_zero_)
	beq	$s3, $a7, .LBB21_19
# %bb.3:                                # %if.end.i
	ld.w	$a1, $s3, 4
	ld.w	$a0, $s3, 8
	add.w	$a4, $a0, $a1
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB21_7
# %bb.4:                                # %land.rhs.preheader.i
	addi.d	$a4, $s3, 16
	add.d	$a5, $a1, $a0
	addi.d	$a5, $a5, 1
	.p2align	4, , 16
.LBB21_5:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a4, 0
	bnez	$a6, .LBB21_8
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB21_5 Depth=1
	addi.w	$a5, $a5, -1
	addi.d	$a4, $a4, 1
	blt	$a3, $a5, .LBB21_5
	b	.LBB21_19
.LBB21_7:                               # %is_zero.exit
	beqz	$a4, .LBB21_19
.LBB21_8:                               # %if.else
	ori	$s1, $zero, 10
	bne	$s4, $s1, .LBB21_20
# %bb.9:                                # %if.then3
	ori	$s0, $zero, 1
	addi.d	$fp, $s3, 16
	blt	$s0, $a1, .LBB21_12
# %bb.10:                               # %lor.lhs.false
	ld.bu	$a2, $fp, 0
	beqz	$a2, .LBB21_139
# %bb.11:                               # %if.then7
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB21_15
.LBB21_12:                              # %for.body.preheader
	addi.d	$s1, $a1, 1
	.p2align	4, , 16
.LBB21_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, 48
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s1, $s1, -1
	bltu	$s0, $s1, .LBB21_13
# %bb.14:                               # %if.end14.loopexit
	ld.w	$a0, $s3, 8
.LBB21_15:                              # %if.end14
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB21_77
.LBB21_16:                              # %if.then17
	ori	$a0, $zero, 46
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, 8
	blt	$a0, $s0, .LBB21_77
# %bb.17:                               # %for.body22.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB21_18:                              # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $fp, 0
	addi.d	$fp, $fp, 1
	addi.d	$a0, $a0, 48
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, 8
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB21_18
	b	.LBB21_77
.LBB21_19:                              # %if.then1
	ori	$a0, $zero, 48
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	jr	$a2
.LBB21_20:                              # %if.else29
	ld.w	$a0, $a7, 12
	pcalau12i	$a1, %pc_hi20(_one_)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(_one_)
	addi.d	$a0, $a0, 1
	st.w	$a0, $a7, 12
	st.d	$a7, $sp, 152
	addi.d	$a2, $sp, 152
	move	$a0, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, %pc_lo12(_zero_)
	ld.w	$a0, $a2, 12
	st.d	$a2, $sp, 144
	ld.d	$a1, $sp, 152
	st.d	$a2, $sp, 136
	addi.d	$a0, $a0, 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $a2, 12
	addi.d	$a2, $sp, 144
	move	$a0, $s3
	move	$s2, $a1
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	srai.d	$a0, $s4, 31
	xor	$a1, $s4, $a0
	sub.w	$a0, $a1, $a0
	lu12i.w	$a1, -209716
	ori	$s5, $a1, 3277
	bstrpick.d	$a1, $a0, 31, 0
	move	$s8, $s5
	lu32i.d	$s8, 0
	mul.d	$a1, $a1, $s8
	srli.d	$a1, $a1, 35
	mul.d	$a1, $a1, $s1
	sub.d	$a1, $a0, $a1
	st.b	$a1, $sp, 160
	addi.d	$s0, $sp, 161
	ori	$fp, $zero, 1
	bltu	$a0, $s1, .LBB21_23
# %bb.21:                               # %while.body.i52.preheader
	ori	$fp, $zero, 1
	lu12i.w	$a1, 104857
	ori	$a1, $a1, 2458
	ori	$a2, $zero, 99
	.p2align	4, , 16
.LBB21_22:                              # %while.body.i52
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a0
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a0, $s8
	srli.d	$a0, $a0, 35
	mul.d	$a4, $a0, $a1
	srli.d	$a4, $a4, 32
	slli.d	$a5, $a4, 3
	alsl.d	$a4, $a4, $a5, 1
	sub.d	$a4, $a0, $a4
	st.b	$a4, $s0, 0
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	bltu	$a2, $a3, .LBB21_22
.LBB21_23:                              # %if.end.i.i
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 12
	bnez	$a0, .LBB21_25
# %bb.24:                               # %if.then3.i.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_25:                              # %free_num.exit.i
	addi.d	$a0, $fp, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$zero, $a0, 0
	st.w	$fp, $a0, 4
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s7, 8
	addi.w	$a0, $zero, -1
	st.b	$zero, $s7, 16
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	blt	$a0, $s4, .LBB21_27
# %bb.26:                               # %if.then7.i
	ori	$a0, $zero, 1
	st.w	$a0, $s7, 0
.LBB21_27:                              # %iter.check
	addi.d	$a0, $s7, 16
	ori	$a1, $zero, 16
	pcalau12i	$a3, %pc_hi20(.LCPI21_0)
	pcalau12i	$s1, %pc_hi20(.LCPI21_1)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bltu	$fp, $a1, .LBB21_30
# %bb.28:                               # %vector.memcheck
	bgeu	$a0, $s0, .LBB21_120
# %bb.29:                               # %vector.memcheck
	addi.d	$a1, $fp, -1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a2, $s7, $a1
	addi.d	$a2, $a2, 17
	nor	$a1, $a1, $zero
	add.d	$a1, $s0, $a1
	bgeu	$a1, $a2, .LBB21_120
.LBB21_30:
	move	$a3, $s0
.LBB21_31:                              # %while.body13.i.preheader
	addi.d	$a1, $fp, 1
	addi.d	$a2, $a3, -1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB21_32:                              # %while.body13.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	blt	$a3, $a1, .LBB21_32
.LBB21_33:                              # %int2num.exit
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	ld.w	$a1, $a0, 12
	addi.w	$a2, $s4, -1
	srai.d	$a3, $a2, 31
	xor	$a2, $a2, $a3
	sub.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 31, 0
	mul.d	$a3, $a3, $s8
	srli.d	$a3, $a3, 35
	ori	$a4, $zero, 10
	mul.d	$a3, $a3, $a4
	sub.d	$a3, $a2, $a3
	st.b	$a3, $sp, 160
	addi.d	$s0, $sp, 161
	ori	$fp, $zero, 1
	bltu	$a2, $a4, .LBB21_36
# %bb.34:                               # %while.body.i65.preheader
	ori	$fp, $zero, 1
	lu12i.w	$a3, 104857
	ori	$a3, $a3, 2458
	ori	$a4, $zero, 99
	.p2align	4, , 16
.LBB21_35:                              # %while.body.i65
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a2
	bstrpick.d	$a2, $a2, 31, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a2, $a2, 35
	mul.d	$a6, $a2, $a3
	srli.d	$a6, $a6, 32
	slli.d	$a7, $a6, 3
	alsl.d	$a6, $a6, $a7, 1
	sub.d	$a6, $a2, $a6
	st.b	$a6, $s0, 0
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, 1
	bltu	$a4, $a5, .LBB21_35
.LBB21_36:                              # %if.end.i.i79
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB21_38
# %bb.37:                               # %if.then3.i.i101
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_38:                              # %free_num.exit.i83
	addi.d	$a0, $fp, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	st.w	$fp, $a0, 4
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 8
	st.b	$zero, $a0, 16
	bgtz	$s4, .LBB21_40
# %bb.39:                               # %if.then7.i91
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB21_40:                              # %iter.check382
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 16
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	move	$t0, $s2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	bltu	$fp, $a1, .LBB21_43
# %bb.41:                               # %vector.memcheck372
	bgeu	$a0, $s0, .LBB21_125
# %bb.42:                               # %vector.memcheck372
	addi.d	$a1, $fp, -1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	addi.d	$a2, $a2, 17
	nor	$a1, $a1, $zero
	add.d	$a1, $s0, $a1
	bgeu	$a1, $a2, .LBB21_125
.LBB21_43:
	move	$a3, $s0
.LBB21_44:                              # %while.body13.i93.preheader
	addi.d	$a1, $fp, 1
	addi.d	$a2, $a3, -1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB21_45:                              # %while.body13.i93
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	st.b	$a4, $a0, 0
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	blt	$a3, $a1, .LBB21_45
.LBB21_46:                              # %int2num.exit102
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	pcalau12i	$a1, %pc_hi20(ref_str)
	addi.d	$a1, $a1, %pc_lo12(ref_str)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	beq	$t0, $a0, .LBB21_65
# %bb.47:                               # %if.end.i104.preheader
	move	$s2, $zero
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$a0, $s5
	lu32i.d	$a0, -209716
	lu52i.d	$s1, $a0, 204
.LBB21_48:                              # %if.end.i104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_50 Depth 2
                                        #     Child Loop BB21_55 Depth 2
	ld.w	$a1, $t0, 4
	ld.w	$a2, $t0, 8
	add.w	$a0, $a2, $a1
	blt	$a0, $fp, .LBB21_52
# %bb.49:                               # %land.rhs.preheader.i114
                                        #   in Loop: Header=BB21_48 Depth=1
	addi.d	$a0, $t0, 16
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB21_50:                              # %land.rhs.i116
                                        #   Parent Loop BB21_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a0, 0
	bnez	$a2, .LBB21_53
# %bb.51:                               # %while.body.i120
                                        #   in Loop: Header=BB21_50 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	blt	$fp, $a1, .LBB21_50
	b	.LBB21_60
.LBB21_52:                              # %is_zero.exit124
                                        #   in Loop: Header=BB21_48 Depth=1
	beqz	$a0, .LBB21_60
.LBB21_53:                              # %while.body
                                        #   in Loop: Header=BB21_48 Depth=1
	addi.d	$a2, $sp, 136
	move	$a1, $s7
	move	$s7, $t0
	move	$a0, $t0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_modulo)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 136
	ld.w	$a1, $a5, 4
	move	$s5, $a0
	blt	$a1, $fp, .LBB21_58
# %bb.54:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB21_48 Depth=1
	move	$a0, $zero
	addi.d	$a2, $a5, 16
	.p2align	4, , 16
.LBB21_55:                              # %for.body.i
                                        #   Parent Loop BB21_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	move	$a3, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	add.d	$a0, $a0, $a4
	bltu	$a3, $s0, .LBB21_57
# %bb.56:                               # %for.body.i
                                        #   in Loop: Header=BB21_55 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a3, -1
	blt	$a0, $s1, .LBB21_55
.LBB21_57:                              # %for.end.i
                                        #   in Loop: Header=BB21_48 Depth=1
	sltu	$a1, $fp, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	masknez	$a3, $a0, $a1
	b	.LBB21_59
.LBB21_58:                              #   in Loop: Header=BB21_48 Depth=1
	move	$a3, $zero
.LBB21_59:                              # %num2long.exit
                                        #   in Loop: Header=BB21_48 Depth=1
	move	$a0, $s7
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a5, 0
	sltui	$a1, $a1, 1
	sub.d	$a2, $zero, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s5, 0
	st.d	$s2, $s5, 8
	addi.d	$a2, $sp, 152
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_divide)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 152
	ld.d	$a0, $s6, %pc_lo12(_zero_)
	move	$s2, $s5
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	bne	$t0, $a0, .LBB21_48
	b	.LBB21_61
.LBB21_60:                              # %while.end
	move	$s5, $s2
	beqz	$s2, .LBB21_65
.LBB21_61:                              # %while.body43.preheader
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 17
	bge	$s4, $a0, .LBB21_131
# %bb.62:                               # %while.body43.us.preheader
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_63:                              # %while.body43.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$fp, $s5, 8
	ldx.b	$a0, $s0, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $fp
	bnez	$fp, .LBB21_63
# %bb.64:
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
.LBB21_65:                              # %if.end57
	ld.w	$a0, $s3, 8
	ori	$a1, $zero, 1
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB21_67
.LBB21_66:                              # %if.then61
	ori	$a0, $zero, 46
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(_one_)
	ld.w	$a0, $s2, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 12
	ld.w	$a0, $s2, 4
	ld.w	$a3, $s3, 8
	st.d	$s2, $sp, 128
	bge	$a3, $a0, .LBB21_78
.LBB21_67:                              # %if.end83
	beqz	$t0, .LBB21_70
.LBB21_68:                              # %if.end.i234
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $a1, 12
	bnez	$a0, .LBB21_70
# %bb.69:                               # %if.then3.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_70:                              # %free_num.exit
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB21_73
# %bb.71:                               # %if.end.i239
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB21_73
# %bb.72:                               # %if.then3.i244
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_73:                              # %if.end.i247
	ld.w	$a0, $s7, 12
	addi.w	$a0, $a0, -1
	st.w	$a0, $s7, 12
	beqz	$a0, .LBB21_75
# %bb.74:                               # %free_num.exit253
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB21_76
	b	.LBB21_77
.LBB21_75:                              # %if.then3.i252
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_77
.LBB21_76:                              # %if.end.i255
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	beqz	$a1, .LBB21_130
.LBB21_77:                              # %if.end85
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB21_78:                              # %while.body68.lr.ph
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$s4, $zero, 1
	ori	$s3, $zero, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu32i.d	$a0, -209716
	lu52i.d	$s1, $a0, 204
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$fp, $a0, 2458
	ori	$s0, $zero, 99
	b	.LBB21_81
	.p2align	4, , 16
.LBB21_79:                              # %if.then74
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.b	$a0, $a0, $s7
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
.LBB21_80:                              # %if.end81
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 128
	move	$a1, $s7
	move	$a3, $zero
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 128
	ld.w	$a0, $s2, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 8
	blt	$a3, $a0, .LBB21_68
.LBB21_81:                              # %while.body68
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_83 Depth 2
                                        #     Child Loop BB21_89 Depth 2
                                        #     Child Loop BB21_116 Depth 2
                                        #     Child Loop BB21_113 Depth 2
                                        #     Child Loop BB21_100 Depth 2
                                        #     Child Loop BB21_105 Depth 2
                                        #     Child Loop BB21_108 Depth 2
	ld.d	$a0, $sp, 144
	addi.d	$a2, $sp, 144
	move	$a1, $s7
	pcaddu18i	$ra, %call36(bc_multiply)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 144
	ld.w	$a1, $s6, 4
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	blt	$a1, $s4, .LBB21_86
# %bb.82:                               # %for.body.preheader.i150
                                        #   in Loop: Header=BB21_81 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s6, 16
	.p2align	4, , 16
.LBB21_83:                              # %for.body.i152
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	move	$a3, $a1
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 1
	add.d	$a0, $a0, $a4
	bltu	$a3, $s3, .LBB21_85
# %bb.84:                               # %for.body.i152
                                        #   in Loop: Header=BB21_83 Depth=2
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a3, -1
	blt	$a0, $s1, .LBB21_83
.LBB21_85:                              # %for.end.i163
                                        #   in Loop: Header=BB21_81 Depth=1
	sltu	$a1, $s4, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	masknez	$a3, $a0, $a1
	b	.LBB21_87
	.p2align	4, , 16
.LBB21_86:                              #   in Loop: Header=BB21_81 Depth=1
	move	$a3, $zero
.LBB21_87:                              # %num2long.exit165
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s6, 0
	sltui	$a1, $a1, 1
	sub.d	$a2, $zero, $a3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	addi.w	$s7, $a2, 0
	srai.d	$a1, $s7, 31
	xor	$a2, $a2, $a1
	sub.w	$a4, $a2, $a1
	bstrpick.d	$a1, $a4, 31, 0
	mul.d	$a1, $a1, $s8
	srli.d	$a1, $a1, 35
	ori	$a2, $zero, 10
	mul.d	$a1, $a1, $a2
	sub.d	$a1, $a4, $a1
	st.b	$a1, $sp, 160
	ori	$s2, $zero, 1
	addi.d	$s5, $sp, 161
	bltu	$a4, $a2, .LBB21_90
# %bb.88:                               # %while.body.i173.preheader
                                        #   in Loop: Header=BB21_81 Depth=1
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB21_89:                              # %while.body.i173
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a4
	bstrpick.d	$a2, $a4, 31, 0
	mul.d	$a2, $a2, $s8
	srli.d	$a4, $a2, 35
	mul.d	$a2, $a4, $fp
	srli.d	$a2, $a2, 32
	slli.d	$a3, $a2, 3
	alsl.d	$a2, $a2, $a3, 1
	sub.d	$a2, $a4, $a2
	st.b	$a2, $s5, 0
	addi.w	$s2, $s2, 1
	addi.d	$s5, $s5, 1
	bltu	$s0, $a1, .LBB21_89
.LBB21_90:                              # %while.end.i183
                                        #   in Loop: Header=BB21_81 Depth=1
	beqz	$a0, .LBB21_93
# %bb.91:                               # %if.end.i.i187
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.w	$a1, $a0, 12
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 12
	bnez	$a1, .LBB21_93
# %bb.92:                               # %if.then3.i.i209
                                        #   in Loop: Header=BB21_81 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_93:                              # %free_num.exit.i191
                                        #   in Loop: Header=BB21_81 Depth=1
	addi.d	$a0, $s2, 1040
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	st.w	$zero, $a0, 0
	st.w	$s2, $a0, 4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a7, 8
	st.b	$zero, $a7, 16
	st.d	$a7, $sp, 152
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a0, $s7, .LBB21_95
# %bb.94:                               # %iter.check435
                                        #   in Loop: Header=BB21_81 Depth=1
	addi.d	$a0, $a7, 16
	ori	$a1, $zero, 16
	bgeu	$s2, $a1, .LBB21_96
	b	.LBB21_98
	.p2align	4, , 16
.LBB21_95:                              # %if.then7.i199
                                        #   in Loop: Header=BB21_81 Depth=1
	st.w	$s4, $a7, 0
	addi.d	$a0, $a7, 16
	ori	$a1, $zero, 16
	bltu	$s2, $a1, .LBB21_98
.LBB21_96:                              # %vector.memcheck423
                                        #   in Loop: Header=BB21_81 Depth=1
	bgeu	$a0, $s5, .LBB21_110
# %bb.97:                               # %vector.memcheck423
                                        #   in Loop: Header=BB21_81 Depth=1
	addi.d	$a1, $s2, -1
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$a2, $a7, $a1
	addi.d	$a2, $a2, 17
	nor	$a1, $a1, $zero
	add.d	$a1, $a1, $s5
	bgeu	$a1, $a2, .LBB21_110
.LBB21_98:                              #   in Loop: Header=BB21_81 Depth=1
	move	$a3, $s5
.LBB21_99:                              # %while.body13.i201.preheader
                                        #   in Loop: Header=BB21_81 Depth=1
	addi.d	$a1, $s2, 1
	addi.d	$a2, $a3, -1
	.p2align	4, , 16
.LBB21_100:                             # %while.body13.i201
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 0
	st.b	$a3, $a0, 0
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	blt	$s4, $a1, .LBB21_100
.LBB21_101:                             # %int2num.exit210
                                        #   in Loop: Header=BB21_81 Depth=1
	addi.d	$a2, $sp, 144
	move	$a0, $s6
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $a7
	pcaddu18i	$ra, %call36(bc_sub)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 16
	bge	$a1, $a0, .LBB21_79
# %bb.102:                              # %if.else78
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 4
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB21_104
# %bb.103:                              # %if.then.i
                                        #   in Loop: Header=BB21_81 Depth=1
	ori	$a0, $zero, 32
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.LBB21_104:                             # %if.end.i212
                                        #   in Loop: Header=BB21_81 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 160
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$s5, $a0, 0
	bge	$s5, $s2, .LBB21_106
	.p2align	4, , 16
.LBB21_105:                             # %while.body.i228
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 48
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s2, $s2, -1
	blt	$s5, $s2, .LBB21_105
.LBB21_106:                             # %for.cond.preheader.i217
                                        #   in Loop: Header=BB21_81 Depth=1
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	blt	$s5, $s4, .LBB21_109
# %bb.107:                              # %for.body.preheader.i220
                                        #   in Loop: Header=BB21_81 Depth=1
	bstrpick.d	$s2, $s6, 30, 0
	addi.d	$s5, $sp, 160
	.p2align	4, , 16
.LBB21_108:                             # %for.body.i222
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s5, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 1
	bnez	$s2, .LBB21_108
.LBB21_109:                             # %out_long.exit232
                                        #   in Loop: Header=BB21_81 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB21_80
	.p2align	4, , 16
.LBB21_110:                             # %vector.main.loop.iter.check437
                                        #   in Loop: Header=BB21_81 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	ori	$a2, $zero, 32
	bgeu	$s2, $a2, .LBB21_115
# %bb.111:                              #   in Loop: Header=BB21_81 Depth=1
	move	$a2, $zero
.LBB21_112:                             # %vec.epilog.ph452
                                        #   in Loop: Header=BB21_81 Depth=1
	bstrpick.d	$a3, $a1, 31, 4
	slli.d	$a4, $a3, 4
	sub.d	$s2, $s2, $a4
	alsl.d	$a0, $a3, $a0, 4
	sub.d	$a3, $s5, $a4
	sub.d	$a6, $s5, $a2
	sub.d	$a5, $a2, $a4
	addi.d	$a6, $a6, -16
	add.d	$a2, $a7, $a2
	addi.d	$a2, $a2, 16
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_113:                             # %vec.epilog.vector.body459
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vld	$vr1, $t0, %pc_lo12(.LCPI21_1)
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, -16
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB21_113
# %bb.114:                              # %vec.epilog.middle.block467
                                        #   in Loop: Header=BB21_81 Depth=1
	bne	$a4, $a1, .LBB21_99
	b	.LBB21_101
.LBB21_115:                             # %vector.ph438
                                        #   in Loop: Header=BB21_81 Depth=1
	bstrpick.d	$a2, $a1, 31, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s5, -32
	move	$a4, $a0
	move	$a5, $a2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_116:                             # %vector.body441
                                        #   Parent Loop BB21_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a3, 0
	xvld	$xr1, $a6, %pc_lo12(.LCPI21_0)
	xvpermi.d	$xr0, $xr0, 78
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB21_116
# %bb.117:                              # %middle.block448
                                        #   in Loop: Header=BB21_81 Depth=1
	beq	$a2, $a1, .LBB21_101
# %bb.118:                              # %vec.epilog.iter.check453
                                        #   in Loop: Header=BB21_81 Depth=1
	andi	$a3, $a1, 16
	bnez	$a3, .LBB21_112
# %bb.119:                              #   in Loop: Header=BB21_81 Depth=1
	sub.d	$s2, $s2, $a2
	add.d	$a0, $a0, $a2
	sub.d	$a3, $s5, $a2
	b	.LBB21_99
.LBB21_120:                             # %vector.main.loop.iter.check
	ori	$a2, $zero, 32
	bstrpick.d	$a1, $fp, 31, 0
	bgeu	$fp, $a2, .LBB21_140
# %bb.121:
	move	$a2, $zero
.LBB21_122:                             # %vec.epilog.ph
	bstrpick.d	$a3, $a1, 31, 4
	slli.d	$a4, $a3, 4
	sub.d	$fp, $fp, $a4
	alsl.d	$a0, $a3, $a0, 4
	sub.d	$a3, $s0, $a4
	sub.d	$a5, $a2, $a4
	sub.d	$a6, $s0, $a2
	vld	$vr0, $s1, %pc_lo12(.LCPI21_1)
	addi.d	$a6, $a6, -16
	add.d	$a2, $a2, $s7
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB21_123:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a2, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, -16
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB21_123
# %bb.124:                              # %vec.epilog.middle.block
	bne	$a4, $a1, .LBB21_31
	b	.LBB21_33
.LBB21_125:                             # %vector.main.loop.iter.check384
	ori	$a2, $zero, 32
	bstrpick.d	$a1, $fp, 31, 0
	bgeu	$fp, $a2, .LBB21_145
# %bb.126:
	move	$a2, $zero
.LBB21_127:                             # %vec.epilog.ph399
	bstrpick.d	$a3, $a1, 31, 4
	slli.d	$a4, $a3, 4
	sub.d	$fp, $fp, $a4
	alsl.d	$a0, $a3, $a0, 4
	sub.d	$a3, $s0, $a4
	sub.d	$a5, $a2, $a4
	sub.d	$a6, $s0, $a2
	vld	$vr0, $s1, %pc_lo12(.LCPI21_1)
	addi.d	$a6, $a6, -16
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $t1
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB21_128:                             # %vec.epilog.vector.body406
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, 0
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vst	$vr1, $a2, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, -16
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB21_128
# %bb.129:                              # %vec.epilog.middle.block414
	bne	$a4, $a1, .LBB21_44
	b	.LBB21_46
.LBB21_130:                             # %if.then3.i260
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB21_131:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	ori	$fp, $zero, 1
	b	.LBB21_133
	.p2align	4, , 16
.LBB21_132:                             # %out_long.exit
                                        #   in Loop: Header=BB21_133 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s5, $s0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s0, .LBB21_138
.LBB21_133:                             # %while.body43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_134 Depth 2
                                        #     Child Loop BB21_137 Depth 2
	ld.d	$s0, $s5, 8
	ld.d	$s7, $s5, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s1, $a0, 4
	ori	$a0, $zero, 32
	jirl	$ra, $a7, 0
	addi.d	$a0, $sp, 160
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$s2, $a0, 0
	bge	$s2, $s1, .LBB21_135
	.p2align	4, , 16
.LBB21_134:                             # %while.body.i140
                                        #   Parent Loop BB21_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 48
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.w	$s1, $s1, -1
	blt	$s2, $s1, .LBB21_134
.LBB21_135:                             # %for.cond.preheader.i
                                        #   in Loop: Header=BB21_133 Depth=1
	blt	$s2, $fp, .LBB21_132
# %bb.136:                              # %for.body.preheader.i138
                                        #   in Loop: Header=BB21_133 Depth=1
	bstrpick.d	$s1, $s7, 30, 0
	addi.d	$s2, $sp, 160
	.p2align	4, , 16
.LBB21_137:                             # %for.body.i139
                                        #   Parent Loop BB21_133 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $s2, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	jirl	$ra, $a1, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 1
	bnez	$s1, .LBB21_137
	b	.LBB21_132
.LBB21_138:
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 8
	ori	$a1, $zero, 1
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB21_66
	b	.LBB21_67
.LBB21_139:                             # %if.else12
	addi.d	$fp, $s3, 17
	ori	$s0, $zero, 1
	bge	$a0, $s0, .LBB21_16
	b	.LBB21_77
.LBB21_140:                             # %vector.ph
	xvld	$xr0, $a3, %pc_lo12(.LCPI21_0)
	bstrpick.d	$a2, $a1, 31, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s0, -32
	move	$a4, $a0
	move	$a5, $a2
	.p2align	4, , 16
.LBB21_141:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, 0
	xvpermi.d	$xr1, $xr1, 78
	xvshuf.b	$xr1, $xr0, $xr1, $xr0
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB21_141
# %bb.142:                              # %middle.block
	beq	$a2, $a1, .LBB21_33
# %bb.143:                              # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB21_122
# %bb.144:
	sub.d	$fp, $fp, $a2
	add.d	$a0, $a0, $a2
	sub.d	$a3, $s0, $a2
	b	.LBB21_31
.LBB21_145:                             # %vector.ph385
	xvld	$xr0, $a3, %pc_lo12(.LCPI21_0)
	bstrpick.d	$a2, $a1, 31, 5
	slli.d	$a2, $a2, 5
	addi.d	$a3, $s0, -32
	move	$a4, $a0
	move	$a5, $a2
	.p2align	4, , 16
.LBB21_146:                             # %vector.body388
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, 0
	xvpermi.d	$xr1, $xr1, 78
	xvshuf.b	$xr1, $xr0, $xr1, $xr0
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, -32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB21_146
# %bb.147:                              # %middle.block395
	beq	$a2, $a1, .LBB21_46
# %bb.148:                              # %vec.epilog.iter.check400
	andi	$a3, $a1, 16
	bnez	$a3, .LBB21_127
# %bb.149:
	sub.d	$fp, $fp, $a2
	add.d	$a0, $a0, $a2
	sub.d	$a3, $s0, $a2
	b	.LBB21_44
.Lfunc_end21:
	.size	out_num, .Lfunc_end21-out_num
                                        # -- End function
	.type	_zero_,@object                  # @_zero_
	.bss
	.globl	_zero_
	.p2align	3, 0x0
_zero_:
	.dword	0
	.size	_zero_, 8

	.type	_one_,@object                   # @_one_
	.globl	_one_
	.p2align	3, 0x0
_one_:
	.dword	0
	.size	_one_, 8

	.type	_two_,@object                   # @_two_
	.globl	_two_
	.p2align	3, 0x0
_two_:
	.dword	0
	.size	_two_, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"non-zero scale in exponent"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"exponent too large in raise"
	.size	.L.str.1, 28

	.type	ref_str,@object                 # @ref_str
	.data
	.globl	ref_str
ref_str:
	.asciz	"0123456789ABCDEF"
	.size	ref_str, 17

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%ld"
	.size	.L.str.2, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
