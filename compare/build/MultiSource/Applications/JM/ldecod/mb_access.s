	.file	"mb_access.c"
	.text
	.globl	mb_is_available                 # -- Begin function mb_is_available
	.p2align	5
	.type	mb_is_available,@function
mb_is_available:                        # @mb_is_available
# %bb.0:                                # %entry
	bltz	$a0, .LBB0_5
# %bb.1:                                # %lor.lhs.false
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1520
	ldx.w	$a2, $a2, $a3
	bge	$a0, $a2, .LBB0_5
# %bb.2:                                # %if.end
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ldptr.w	$a3, $a2, 5628
	bnez	$a3, .LBB0_4
# %bb.3:                                # %if.then2
	ldptr.d	$a2, $a2, 5600
	ori	$a3, $zero, 408
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 12
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, 12
	bne	$a0, $a1, .LBB0_5
.LBB0_4:                                # %if.end10
	ori	$a0, $zero, 1
	ret
.LBB0_5:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	mb_is_available, .Lfunc_end0-mb_is_available
                                        # -- End function
	.globl	CheckAvailabilityOfNeighbors    # -- Begin function CheckAvailabilityOfNeighbors
	.p2align	5
	.type	CheckAvailabilityOfNeighbors,@function
CheckAvailabilityOfNeighbors:           # @CheckAvailabilityOfNeighbors
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a2, $a0, 0
	ld.w	$a4, $a2, 4
	ldptr.d	$a1, $a2, 5600
	ori	$a0, $zero, 408
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	lu12i.w	$a5, 77
	ori	$a5, $a5, 1512
	ldx.w	$a6, $a3, $a5
	add.d	$a3, $a3, $a5
	beqz	$a6, .LBB1_21
# %bb.1:                                # %if.then
	srai.d	$a5, $a4, 1
	bstrpick.d	$a4, $a4, 31, 1
	slli.d	$a6, $a4, 1
	addi.d	$a7, $zero, -2
	ld.w	$t2, $a3, 4
	alsl.w	$t1, $a4, $a7, 1
	addi.d	$a4, $a6, -2
	st.w	$a4, $a0, 364
	sub.d	$a7, $a5, $t2
	slli.w	$a6, $a7, 1
	st.w	$a6, $a0, 368
	ori	$t0, $zero, 2
	addi.d	$a4, $a6, 2
	st.w	$a4, $a0, 372
	nor	$a4, $t2, $zero
	add.d	$a4, $a5, $a4
	slli.w	$a4, $a4, 1
	st.w	$a4, $a0, 376
	bltz	$t1, .LBB1_6
# %bb.2:                                # %lor.lhs.false.i
	ld.w	$t2, $a3, 8
	bge	$t1, $t2, .LBB1_6
# %bb.3:                                # %if.end.i
	ldptr.w	$t2, $a2, 5628
	bnez	$t2, .LBB1_5
# %bb.4:                                # %if.then2.i
	ori	$t2, $zero, 408
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a1, $t1
	ld.w	$t1, $t1, 12
	ld.w	$t2, $a0, 12
	bne	$t1, $t2, .LBB1_6
.LBB1_5:                                # %land.rhs
	pcalau12i	$t1, %pc_hi20(PicPos)
	ld.d	$t1, $t1, %pc_lo12(PicPos)
	slli.d	$t2, $a5, 3
	ldx.d	$t1, $t1, $t2
	ld.w	$t1, $t1, 0
	sltu	$t1, $zero, $t1
	alsl.w	$a7, $a7, $t0, 1
	st.w	$t1, $a0, 380
	bgez	$a6, .LBB1_7
	b	.LBB1_11
.LBB1_6:
	move	$t1, $zero
	alsl.w	$a7, $a7, $t0, 1
	st.w	$t1, $a0, 380
	bltz	$a6, .LBB1_11
.LBB1_7:                                # %lor.lhs.false.i49
	ld.w	$t0, $a3, 8
	bge	$a6, $t0, .LBB1_11
# %bb.8:                                # %if.end.i53
	ldptr.w	$t0, $a2, 5628
	bnez	$t0, .LBB1_10
# %bb.9:                                # %if.then2.i57
	ori	$t0, $zero, 408
	mul.d	$a6, $a6, $t0
	add.d	$a6, $a1, $a6
	ld.w	$a6, $a6, 12
	ld.w	$t0, $a0, 12
	bne	$a6, $t0, .LBB1_11
.LBB1_10:                               # %if.end10.i56
	ori	$a6, $zero, 1
	st.w	$a6, $a0, 384
	bgez	$a7, .LBB1_12
	b	.LBB1_16
.LBB1_11:
	move	$a6, $zero
	st.w	$a6, $a0, 384
	bltz	$a7, .LBB1_16
.LBB1_12:                               # %lor.lhs.false.i68
	ld.w	$a6, $a3, 8
	bge	$a7, $a6, .LBB1_16
# %bb.13:                               # %if.end.i72
	ldptr.w	$a6, $a2, 5628
	bnez	$a6, .LBB1_15
# %bb.14:                               # %if.then2.i76
	ori	$a6, $zero, 408
	mul.d	$a6, $a7, $a6
	add.d	$a6, $a1, $a6
	ld.w	$a6, $a6, 12
	ld.w	$a7, $a0, 12
	bne	$a6, $a7, .LBB1_16
.LBB1_15:                               # %land.rhs20
	pcalau12i	$a6, %pc_hi20(PicPos)
	ld.d	$a6, $a6, %pc_lo12(PicPos)
	alsl.d	$a6, $a5, $a6, 3
	ld.d	$a6, $a6, 8
	ld.w	$a6, $a6, 0
	sltu	$a6, $zero, $a6
	st.w	$a6, $a0, 388
	bgez	$a4, .LBB1_17
	b	.LBB1_43
.LBB1_16:
	move	$a6, $zero
	st.w	$a6, $a0, 388
	bltz	$a4, .LBB1_43
.LBB1_17:                               # %lor.lhs.false.i87
	ld.w	$a3, $a3, 8
	bge	$a4, $a3, .LBB1_43
# %bb.18:                               # %if.end.i91
	ldptr.w	$a2, $a2, 5628
	bnez	$a2, .LBB1_20
# %bb.19:                               # %if.then2.i95
	ori	$a2, $zero, 408
	mul.d	$a2, $a4, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a0, 12
	bne	$a1, $a2, .LBB1_43
.LBB1_20:                               # %land.rhs31
	pcalau12i	$a1, %pc_hi20(PicPos)
	ld.d	$a1, $a1, %pc_lo12(PicPos)
	alsl.d	$a1, $a5, $a1, 3
	b	.LBB1_42
.LBB1_21:                               # %if.else
	ld.w	$a5, $a3, 4
	addi.w	$t0, $a4, -1
	st.w	$t0, $a0, 364
	sub.w	$a7, $a4, $a5
	st.w	$a7, $a0, 368
	addi.w	$a6, $a7, 1
	st.w	$a6, $a0, 372
	nor	$a5, $a5, $zero
	add.w	$a5, $a4, $a5
	st.w	$a5, $a0, 376
	blez	$a4, .LBB1_23
# %bb.22:                               # %lor.lhs.false.i106
	ld.w	$t1, $a3, 8
	bge	$t1, $a4, .LBB1_24
.LBB1_23:
	move	$t0, $zero
	st.w	$t0, $a0, 380
	bgez	$a7, .LBB1_27
	b	.LBB1_31
.LBB1_24:                               # %if.end.i110
	ldptr.w	$t1, $a2, 5628
	bnez	$t1, .LBB1_26
# %bb.25:                               # %if.then2.i114
	ori	$t1, $zero, 408
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a1, $t0
	ld.w	$t0, $t0, 12
	ld.w	$t1, $a0, 12
	bne	$t0, $t1, .LBB1_23
.LBB1_26:                               # %land.rhs54
	pcalau12i	$t0, %pc_hi20(PicPos)
	ld.d	$t0, $t0, %pc_lo12(PicPos)
	slli.d	$t1, $a4, 3
	ldx.d	$t0, $t0, $t1
	ld.w	$t0, $t0, 0
	sltu	$t0, $zero, $t0
	st.w	$t0, $a0, 380
	bltz	$a7, .LBB1_31
.LBB1_27:                               # %lor.lhs.false.i125
	ld.w	$t0, $a3, 8
	bge	$a7, $t0, .LBB1_31
# %bb.28:                               # %if.end.i129
	ldptr.w	$t1, $a2, 5628
	bnez	$t1, .LBB1_30
# %bb.29:                               # %if.then2.i133
	ori	$t1, $zero, 408
	mul.d	$a7, $a7, $t1
	add.d	$a7, $a1, $a7
	ld.w	$a7, $a7, 12
	ld.w	$t1, $a0, 12
	bne	$a7, $t1, .LBB1_36
.LBB1_30:                               # %if.end10.i132
	ori	$a7, $zero, 1
	st.w	$a7, $a0, 384
	blt	$a6, $t0, .LBB1_33
	b	.LBB1_37
.LBB1_31:                               # %mb_is_available.exit142
	st.w	$zero, $a0, 384
	bltz	$a6, .LBB1_37
# %bb.32:                               # %mb_is_available.exit142.lor.lhs.false.i144_crit_edge
	ld.w	$t0, $a3, 8
	bge	$a6, $t0, .LBB1_37
.LBB1_33:                               # %if.end.i148
	ldptr.w	$a7, $a2, 5628
	bnez	$a7, .LBB1_35
# %bb.34:                               # %if.then2.i152
	ori	$a7, $zero, 408
	mul.d	$a6, $a6, $a7
	add.d	$a6, $a1, $a6
	ld.w	$a6, $a6, 12
	ld.w	$a7, $a0, 12
	bne	$a6, $a7, .LBB1_37
.LBB1_35:                               # %land.rhs68
	pcalau12i	$a6, %pc_hi20(PicPos)
	ld.d	$a6, $a6, %pc_lo12(PicPos)
	alsl.d	$a6, $a4, $a6, 3
	ld.d	$a6, $a6, 8
	ld.w	$a6, $a6, 0
	sltu	$a6, $zero, $a6
	st.w	$a6, $a0, 388
	bgez	$a5, .LBB1_38
	b	.LBB1_43
.LBB1_36:
	st.w	$zero, $a0, 384
	blt	$a6, $t0, .LBB1_33
.LBB1_37:
	move	$a6, $zero
	st.w	$a6, $a0, 388
	bltz	$a5, .LBB1_43
.LBB1_38:                               # %lor.lhs.false.i163
	ld.w	$a3, $a3, 8
	bge	$a5, $a3, .LBB1_43
# %bb.39:                               # %if.end.i167
	ldptr.w	$a2, $a2, 5628
	bnez	$a2, .LBB1_41
# %bb.40:                               # %if.then2.i171
	ori	$a2, $zero, 408
	mul.d	$a2, $a5, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a0, 12
	bne	$a1, $a2, .LBB1_43
.LBB1_41:                               # %land.rhs80
	pcalau12i	$a1, %pc_hi20(PicPos)
	ld.d	$a1, $a1, %pc_lo12(PicPos)
	alsl.d	$a1, $a4, $a1, 3
.LBB1_42:                               # %if.end.sink.split
	ld.d	$a1, $a1, 0
	ld.w	$a1, $a1, 0
	sltu	$a1, $zero, $a1
	st.w	$a1, $a0, 392
	ret
.LBB1_43:
	st.w	$zero, $a0, 392
	ret
.Lfunc_end1:
	.size	CheckAvailabilityOfNeighbors, .Lfunc_end1-CheckAvailabilityOfNeighbors
                                        # -- End function
	.globl	get_mb_block_pos_normal         # -- Begin function get_mb_block_pos_normal
	.p2align	5
	.type	get_mb_block_pos_normal,@function
get_mb_block_pos_normal:                # @get_mb_block_pos_normal
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(PicPos)
	ld.d	$a3, $a3, %pc_lo12(PicPos)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a3, $a0
	ld.w	$a3, $a0, 0
	st.w	$a3, $a1, 0
	ld.w	$a0, $a0, 4
	st.w	$a0, $a2, 0
	ret
.Lfunc_end2:
	.size	get_mb_block_pos_normal, .Lfunc_end2-get_mb_block_pos_normal
                                        # -- End function
	.globl	get_mb_block_pos_mbaff          # -- Begin function get_mb_block_pos_mbaff
	.p2align	5
	.type	get_mb_block_pos_mbaff,@function
get_mb_block_pos_mbaff:                 # @get_mb_block_pos_mbaff
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(PicPos)
	ld.d	$a3, $a3, %pc_lo12(PicPos)
	slli.d	$a4, $a0, 2
	bstrins.d	$a4, $zero, 2, 0
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $a3, 0
	st.w	$a4, $a1, 0
	ld.w	$a1, $a3, 4
	bstrins.d	$a0, $a1, 63, 1
	st.w	$a0, $a2, 0
	ret
.Lfunc_end3:
	.size	get_mb_block_pos_mbaff, .Lfunc_end3-get_mb_block_pos_mbaff
                                        # -- End function
	.globl	get_mb_pos                      # -- Begin function get_mb_pos
	.p2align	5
	.type	get_mb_pos,@function
get_mb_pos:                             # @get_mb_pos
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(get_mb_block_pos)
	ld.d	$a4, $a4, %pc_lo12(get_mb_block_pos)
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	jirl	$ra, $a4, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $fp, $a0, 3
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1852
	ldx.w	$a2, $a0, $a2
	ld.w	$a3, $s1, 0
	mul.d	$a2, $a3, $a2
	st.w	$a2, $s1, 0
	ori	$a1, $a1, 1856
	ldx.w	$a0, $a0, $a1
	ld.w	$a1, $s0, 0
	mul.d	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	get_mb_pos, .Lfunc_end4-get_mb_pos
                                        # -- End function
	.globl	getNonAffNeighbour              # -- Begin function getNonAffNeighbour
	.p2align	5
	.type	getNonAffNeighbour,@function
getNonAffNeighbour:                     # @getNonAffNeighbour
# %bb.0:                                # %entry
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a6, $a5, 0
	ldptr.d	$a7, $a6, 5600
	bstrpick.d	$t0, $a0, 31, 0
	alsl.d	$a3, $a3, $a6, 3
	ldptr.w	$a5, $a3, 5948
	ldptr.w	$a3, $a3, 5952
	ori	$t1, $zero, 408
	mul.d	$t0, $t0, $t1
	add.d	$a7, $a7, $t0
	bltz	$a1, .LBB5_5
# %bb.1:                                # %if.else17
	bge	$a1, $a5, .LBB5_8
# %bb.2:                                # %if.then19
	bltz	$a2, .LBB5_11
# %bb.3:                                # %if.else24
	bge	$a2, $a3, .LBB5_9
# %bb.4:                                # %if.end43.thread46
	st.w	$a0, $a4, 4
	ori	$a6, $zero, 1
	st.w	$a6, $a4, 0
	b	.LBB5_16
.LBB5_5:                                # %if.then
	bltz	$a2, .LBB5_10
# %bb.6:                                # %if.else
	bge	$a2, $a3, .LBB5_9
# %bb.7:                                # %if.then11
	addi.d	$a0, $a7, 364
	ori	$t0, $zero, 380
	b	.LBB5_13
.LBB5_8:                                # %if.else33
	bltz	$a2, .LBB5_12
.LBB5_9:                                # %lor.lhs.false.sink.split
	st.w	$zero, $a4, 0
	b	.LBB5_14
.LBB5_10:                               # %if.then9
	addi.d	$a0, $a7, 376
	ori	$t0, $zero, 392
	b	.LBB5_13
.LBB5_11:                               # %if.then21
	addi.d	$a0, $a7, 368
	ori	$t0, $zero, 384
	b	.LBB5_13
.LBB5_12:                               # %if.then36
	addi.d	$a0, $a7, 372
	ori	$t0, $zero, 388
.LBB5_13:                               # %if.end43
	ld.w	$a0, $a0, 0
	st.w	$a0, $a4, 4
	ldx.w	$a7, $a7, $t0
	st.w	$a7, $a4, 0
	bnez	$a7, .LBB5_16
.LBB5_14:                               # %lor.lhs.false
	ldptr.w	$a0, $a6, 5628
	beqz	$a0, .LBB5_17
# %bb.15:                               # %lor.lhs.false.if.then46_crit_edge
	ld.w	$a0, $a4, 4
.LBB5_16:                               # %if.then46
	pcalau12i	$a6, %pc_hi20(PicPos)
	ld.d	$a6, $a6, %pc_lo12(PicPos)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a6, $a0
	addi.d	$a6, $a5, -1
	and	$a1, $a6, $a1
	st.w	$a1, $a4, 8
	addi.d	$a6, $a3, -1
	and	$a2, $a6, $a2
	st.w	$a2, $a4, 12
	ld.w	$a6, $a0, 0
	mul.d	$a5, $a6, $a5
	add.d	$a1, $a5, $a1
	st.w	$a1, $a4, 16
	ld.w	$a0, $a0, 4
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.w	$a0, $a4, 20
.LBB5_17:                               # %if.end58
	ret
.Lfunc_end5:
	.size	getNonAffNeighbour, .Lfunc_end5-getNonAffNeighbour
                                        # -- End function
	.globl	getAffNeighbour                 # -- Begin function getAffNeighbour
	.p2align	5
	.type	getAffNeighbour,@function
getAffNeighbour:                        # @getAffNeighbour
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$fp, $a5, %got_pc_lo12(img)
	ld.d	$a7, $fp, 0
	ldptr.d	$t0, $a7, 5600
	alsl.d	$a5, $a3, $a7, 3
	ldptr.w	$a6, $a5, 5952
	ldptr.w	$a5, $a5, 5948
	st.w	$zero, $a4, 0
	bge	$a2, $a6, .LBB6_68
# %bb.1:                                # %if.end
	bltz	$a2, .LBB6_3
# %bb.2:                                # %if.end
	bge	$a1, $a5, .LBB6_68
.LBB6_3:                                # %if.end14
	bstrpick.d	$t1, $a0, 31, 0
	ori	$t2, $zero, 408
	mul.d	$t1, $t1, $t2
	add.d	$t1, $t0, $t1
	bltz	$a1, .LBB6_9
# %bb.4:                                # %land.lhs.true209
	bge	$a1, $a5, .LBB6_16
# %bb.5:                                # %if.then211
	bltz	$a2, .LBB6_25
# %bb.6:                                # %if.else275
	bnez	$a2, .LBB6_66
# %bb.7:                                # %land.lhs.true277
	ldptr.w	$a7, $a7, 5628
	ori	$t0, $zero, 2
	bne	$a7, $t0, .LBB6_66
# %bb.8:                                # %if.then280
	ld.w	$a0, $t1, 368
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	ori	$a0, $zero, 1
	st.w	$a0, $a4, 0
	addi.d	$a2, $zero, -1
	b	.LBB6_67
.LBB6_9:                                # %if.then16
	ld.w	$t2, $t1, 356
	andi	$t3, $a0, 1
	bltz	$a2, .LBB6_22
# %bb.10:                               # %if.then76
	ld.w	$a0, $t1, 364
	ld.w	$t1, $t1, 380
	st.w	$a0, $a4, 4
	st.w	$t1, $a4, 0
	beqz	$t2, .LBB6_31
# %bb.11:                               # %if.else141
	bnez	$t3, .LBB6_36
# %bb.12:                               # %if.then144
	beqz	$t1, .LBB6_63
# %bb.13:                               # %if.then151
	ori	$a7, $zero, 408
	mul.d	$a7, $a0, $a7
	add.d	$a7, $t0, $a7
	ld.w	$a7, $a7, 356
	bnez	$a7, .LBB6_67
# %bb.14:                               # %if.then158
	bstrpick.d	$a7, $a6, 31, 1
	bgeu	$a2, $a7, .LBB6_69
# %bb.15:                               # %if.then161
	slli.d	$a2, $a2, 1
	b	.LBB6_67
.LBB6_16:                               # %if.else296
	addi.d	$t2, $zero, -1
	bgez	$a2, .LBB6_64
# %bb.17:                               # %if.then298
	ld.w	$t3, $t1, 356
	andi	$a0, $a0, 1
	beqz	$t3, .LBB6_42
# %bb.18:                               # %if.else311
	ld.w	$t3, $t1, 372
	bnez	$a0, .LBB6_55
# %bb.19:                               # %if.then314
	ld.w	$a0, $t1, 388
	st.w	$t3, $a4, 4
	st.w	$a0, $a4, 0
	beqz	$a0, .LBB6_64
# %bb.20:                               # %if.then321
	ori	$a0, $zero, 408
	mul.d	$a0, $t3, $a0
	add.d	$a0, $t0, $a0
	ld.w	$a0, $a0, 356
	bnez	$a0, .LBB6_67
# %bb.21:                               # %if.then328
	addi.d	$a0, $t3, 1
	b	.LBB6_30
.LBB6_22:                               # %if.then18
	beqz	$t2, .LBB6_40
# %bb.23:                               # %if.else41
	ld.w	$t2, $t1, 376
	bnez	$t3, .LBB6_44
# %bb.24:                               # %if.then44
	ld.w	$a0, $t1, 392
	st.w	$t2, $a4, 4
	st.w	$a0, $a4, 0
	bnez	$a0, .LBB6_28
	b	.LBB6_63
.LBB6_25:                               # %if.then213
	ld.w	$t2, $t1, 356
	andi	$t3, $a0, 1
	beqz	$t2, .LBB6_45
# %bb.26:                               # %if.else243
	ld.w	$t2, $t1, 368
	bnez	$t3, .LBB6_56
# %bb.27:                               # %if.then246
	ld.w	$a0, $t1, 384
	st.w	$t2, $a4, 4
	st.w	$a0, $a4, 0
	beqz	$a0, .LBB6_63
.LBB6_28:                               # %if.then51
	ori	$a0, $zero, 408
	mul.d	$a0, $t2, $a0
	add.d	$a0, $t0, $a0
	ld.w	$a0, $a0, 356
	bnez	$a0, .LBB6_67
# %bb.29:                               # %if.then58
	addi.d	$a0, $t2, 1
.LBB6_30:                               # %if.then350
	st.w	$a0, $a4, 4
	slli.d	$a2, $a2, 1
	b	.LBB6_67
.LBB6_31:                               # %if.then79
	bnez	$t3, .LBB6_49
# %bb.32:                               # %if.then82
	beqz	$t1, .LBB6_63
# %bb.33:                               # %if.then89
	ori	$a7, $zero, 408
	mul.d	$a7, $a0, $a7
	add.d	$a7, $t0, $a7
	ld.w	$a7, $a7, 356
	beqz	$a7, .LBB6_67
# %bb.34:                               # %if.else97
	andi	$a7, $a2, 1
	bnez	$a7, .LBB6_70
# %bb.35:                               # %if.then100
	bstrpick.d	$a2, $a2, 31, 1
	b	.LBB6_67
.LBB6_36:                               # %if.else171
	beqz	$t1, .LBB6_63
# %bb.37:                               # %if.then178
	ori	$a7, $zero, 408
	mul.d	$a7, $a0, $a7
	add.d	$a7, $t0, $a7
	ld.w	$a7, $a7, 356
	bnez	$a7, .LBB6_54
# %bb.38:                               # %if.then185
	bstrpick.d	$a7, $a6, 31, 1
	bgeu	$a2, $a7, .LBB6_71
# %bb.39:                               # %if.then188
	slli.d	$a0, $a2, 1
	addi.d	$a2, $a0, 1
	b	.LBB6_67
.LBB6_40:                               # %if.then19
	bnez	$t3, .LBB6_60
# %bb.41:                               # %if.then21
	ld.w	$t0, $t1, 376
	ld.w	$a0, $t1, 392
	addi.d	$t0, $t0, 1
	b	.LBB6_58
.LBB6_42:                               # %if.then301
	bnez	$a0, .LBB6_64
# %bb.43:                               # %if.then304
	ld.w	$t0, $t1, 372
	ld.w	$a0, $t1, 388
	addi.d	$t0, $t0, 1
	b	.LBB6_58
.LBB6_44:                               # %if.else64
	ld.w	$a0, $t1, 392
	b	.LBB6_57
.LBB6_45:                               # %if.then216
	bnez	$t3, .LBB6_65
# %bb.46:                               # %if.then219
	ld.w	$t2, $t1, 368
	ld.w	$a0, $t1, 384
	st.w	$t2, $a4, 4
	beqz	$a0, .LBB6_59
# %bb.47:                               # %if.then222
	ldptr.w	$t1, $a7, 5628
	ori	$t3, $zero, 1
	bne	$t1, $t3, .LBB6_57
# %bb.48:                               # %land.lhs.true224
	ori	$t1, $zero, 408
	mul.d	$t1, $t2, $t1
	add.d	$t0, $t0, $t1
	ld.w	$t0, $t0, 356
	bnez	$t0, .LBB6_59
	b	.LBB6_57
.LBB6_49:                               # %if.else109
	beqz	$t1, .LBB6_63
# %bb.50:                               # %if.then116
	ori	$a7, $zero, 408
	mul.d	$a7, $a0, $a7
	add.d	$a7, $t0, $a7
	ld.w	$a7, $a7, 356
	beqz	$a7, .LBB6_54
# %bb.51:                               # %if.else126
	andi	$a7, $a2, 1
	beqz	$a7, .LBB6_53
# %bb.52:                               # %if.else132
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
.LBB6_53:                               # %if.then129
	add.d	$a0, $a6, $a2
	bstrpick.d	$a2, $a0, 31, 1
	b	.LBB6_67
.LBB6_54:                               # %if.then123
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	b	.LBB6_67
.LBB6_55:                               # %if.else335
	ld.w	$a0, $t1, 388
	addi.d	$t0, $t3, 1
	b	.LBB6_58
.LBB6_56:                               # %if.else267
	ld.w	$a0, $t1, 384
.LBB6_57:                               # %if.end345
	addi.d	$t0, $t2, 1
.LBB6_58:                               # %if.end345
	st.w	$t0, $a4, 4
.LBB6_59:                               # %if.end345
	st.w	$a0, $a4, 0
	move	$t2, $a2
	bnez	$a0, .LBB6_67
	b	.LBB6_64
.LBB6_60:                               # %if.else
	ld.w	$a0, $t1, 364
	ld.w	$t1, $t1, 380
	st.w	$a0, $a4, 4
	st.w	$t1, $a4, 0
	beqz	$t1, .LBB6_63
# %bb.61:                               # %if.then27
	ori	$a7, $zero, 408
	mul.d	$a7, $a0, $a7
	add.d	$a7, $t0, $a7
	ld.w	$a7, $a7, 356
	beqz	$a7, .LBB6_67
# %bb.62:                               # %if.else35
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	add.w	$a0, $a6, $a2
	srai.d	$a2, $a0, 1
	b	.LBB6_67
.LBB6_63:
	addi.d	$t2, $zero, -1
.LBB6_64:                               # %lor.lhs.false
	ldptr.w	$a0, $a7, 5628
	move	$a2, $t2
	bnez	$a0, .LBB6_67
	b	.LBB6_68
.LBB6_65:                               # %if.else238
	addi.d	$a0, $a0, -1
.LBB6_66:                               # %if.then290
	st.w	$a0, $a4, 4
	ori	$a0, $zero, 1
	st.w	$a0, $a4, 0
.LBB6_67:                               # %if.then350
	addi.d	$a0, $a6, -1
	addi.d	$a5, $a5, -1
	and	$a1, $a5, $a1
	st.w	$a1, $a4, 8
	and	$a1, $a2, $a0
	ld.w	$a0, $a4, 4
	pcalau12i	$a2, %pc_hi20(get_mb_block_pos)
	ld.d	$a5, $a2, %pc_lo12(get_mb_block_pos)
	st.w	$a1, $a4, 12
	addi.d	$a1, $a4, 16
	addi.d	$a2, $a4, 20
	move	$s0, $a4
	move	$s1, $a3
	jirl	$ra, $a5, 0
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s1, $a0, 3
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1852
	ldx.w	$a2, $a0, $a2
	ld.w	$a3, $s0, 16
	mul.d	$a2, $a3, $a2
	st.w	$a2, $s0, 16
	ori	$a1, $a1, 1856
	ldx.w	$a0, $a0, $a1
	ld.w	$a1, $s0, 20
	ld.w	$a3, $s0, 8
	ld.w	$a4, $s0, 12
	mul.d	$a0, $a1, $a0
	add.d	$a1, $a3, $a2
	st.w	$a1, $s0, 16
	add.d	$a0, $a4, $a0
	st.w	$a0, $s0, 20
.LBB6_68:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_69:                               # %if.else162
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	slli.d	$a0, $a2, 1
	sub.d	$a2, $a0, $a6
	b	.LBB6_67
.LBB6_70:                               # %if.else102
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	bstrpick.d	$a2, $a2, 31, 1
	b	.LBB6_67
.LBB6_71:                               # %if.else191
	addi.d	$a0, $a0, 1
	st.w	$a0, $a4, 4
	slli.d	$a0, $a2, 1
	addi.d	$a0, $a0, 1
	sub.d	$a2, $a0, $a6
	b	.LBB6_67
.Lfunc_end6:
	.size	getAffNeighbour, .Lfunc_end6-getAffNeighbour
                                        # -- End function
	.globl	getLuma4x4Neighbour             # -- Begin function getLuma4x4Neighbour
	.p2align	5
	.type	getLuma4x4Neighbour,@function
getLuma4x4Neighbour:                    # @getLuma4x4Neighbour
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(getNeighbour)
	ld.d	$a5, $a4, %pc_lo12(getNeighbour)
	move	$fp, $a3
	move	$a3, $zero
	move	$a4, $fp
	jirl	$ra, $a5, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB7_2
# %bb.1:                                # %if.then
	vld	$vr0, $fp, 8
	vsrai.w	$vr0, $vr0, 2
	vst	$vr0, $fp, 8
.LBB7_2:                                # %if.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	getLuma4x4Neighbour, .Lfunc_end7-getLuma4x4Neighbour
                                        # -- End function
	.globl	getChroma4x4Neighbour           # -- Begin function getChroma4x4Neighbour
	.p2align	5
	.type	getChroma4x4Neighbour,@function
getChroma4x4Neighbour:                  # @getChroma4x4Neighbour
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(getNeighbour)
	ld.d	$a5, $a4, %pc_lo12(getNeighbour)
	move	$fp, $a3
	ori	$a3, $zero, 1
	move	$a4, $fp
	jirl	$ra, $a5, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB8_2
# %bb.1:                                # %if.then
	vld	$vr0, $fp, 8
	vsrai.w	$vr0, $vr0, 2
	vst	$vr0, $fp, 8
.LBB8_2:                                # %if.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	getChroma4x4Neighbour, .Lfunc_end8-getChroma4x4Neighbour
                                        # -- End function
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
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
