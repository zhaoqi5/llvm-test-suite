	.file	"cubestr.c"
	.text
	.globl	cube_setup                      # -- Begin function cube_setup
	.p2align	5
	.type	cube_setup,@function
cube_setup:                             # @cube_setup
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
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s4, $a0, %got_pc_lo12(cube)
	ld.w	$s7, $s4, 8
	bltz	$s7, .LBB0_2
# %bb.1:                                # %entry
	ld.w	$s6, $s4, 4
	bge	$s6, $s7, .LBB0_3
.LBB0_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, 4
	ld.w	$s7, $s4, 8
.LBB0_3:                                # %if.end
	sub.w	$a0, $s6, $s7
	st.w	$a0, $s4, 120
	slt	$a0, $zero, $a0
	addi.d	$a1, $s6, -1
	addi.w	$s5, $zero, -1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $s4, 124
	st.w	$zero, $s4, 0
	slli.d	$s3, $s6, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s4, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s4, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s4, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $s4, 48
	blt	$s6, $a1, .LBB0_9
# %bb.4:                                # %for.body.lr.ph
	ld.d	$a1, $s4, 32
	move	$fp, $zero
	move	$a2, $zero
	ori	$a3, $zero, 2
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %if.end18
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$fp, $s0, 0
	srli.d	$a4, $fp, 5
	addi.d	$a4, $a4, 1
	st.w	$a4, $s2, 0
	ld.w	$a4, $a1, 0
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.d	$a4, $a4, $a5
	add.w	$fp, $a4, $fp
	st.w	$fp, $s4, 0
	addi.w	$a4, $fp, -1
	st.w	$a4, $s1, 0
	srli.d	$a4, $a4, 5
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 4
	addi.d	$s0, $s0, 4
	bge	$a2, $s6, .LBB0_8
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bge	$a2, $s7, .LBB0_5
# %bb.7:                                # %if.then17
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$a3, $a1, 0
	ld.w	$s7, $s4, 8
	ld.w	$fp, $s4, 0
	ld.w	$s6, $s4, 4
	b	.LBB0_5
.LBB0_8:                                # %for.end.loopexit
	slli.d	$s3, $s6, 2
	b	.LBB0_10
.LBB0_9:
	move	$fp, $zero
.LBB0_10:                               # %for.end
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 72
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 112
	ori	$s0, $zero, 8
	ori	$s2, $zero, 33
	lu12i.w	$s1, 131071
	ori	$a0, $zero, 8
	blt	$fp, $s2, .LBB0_12
# %bb.11:                               # %cond.false54
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_12:                               # %cond.end59
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s4, 0
	st.d	$a0, $s4, 56
	blt	$fp, $s2, .LBB0_14
# %bb.13:                               # %cond.false68
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$s0, $a0, 8
.LBB0_14:                               # %cond.end73
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	ori	$s0, $zero, 1
	st.d	$a0, $s4, 64
	blt	$a1, $s0, .LBB0_40
# %bb.15:                               # %for.body82.preheader
	move	$s2, $zero
	ori	$s3, $zero, 33
	ori	$s6, $zero, 8
	ori	$s7, $s1, 4092
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	move	$a6, $zero
.LBB0_17:                               # %for.inc157
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a0, $s4, 112
	stx.w	$a6, $a0, $a1
	ld.w	$a0, $s4, 4
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB0_40
.LBB0_18:                               # %for.body82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	ld.w	$fp, $s4, 0
	ori	$a0, $zero, 8
	blt	$fp, $s3, .LBB0_20
# %bb.19:                               # %cond.false86
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a0, $fp, -1
	srli.d	$a0, $a0, 3
	and	$a0, $a0, $s7
	addi.d	$a0, $a0, 8
.LBB0_20:                               # %cond.end91
                                        #   in Loop: Header=BB0_18 Depth=1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 72
	slli.d	$a2, $s2, 3
	stx.d	$a0, $a1, $a2
	ld.d	$a3, $s4, 16
	ld.d	$a2, $s4, 24
	slli.d	$a1, $s2, 2
	ldx.w	$a3, $a3, $a1
	ldx.w	$a4, $a2, $a1
	blt	$a4, $a3, .LBB0_23
# %bb.21:                               # %for.body106.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$a2, $s2, $a2, 2
	.p2align	4, , 16
.LBB0_22:                               # %for.body106
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a3
	srai.d	$a3, $a3, 5
	alsl.d	$a3, $a3, $a0, 2
	ld.w	$a5, $a3, 4
	sll.w	$a6, $s0, $a4
	or	$a5, $a5, $a6
	st.w	$a5, $a3, 4
	ld.w	$a5, $a2, 0
	addi.w	$a3, $a4, 1
	blt	$a4, $a5, .LBB0_22
.LBB0_23:                               # %for.end113
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.w	$a2, $s4, 8
	bge	$s2, $a2, .LBB0_32
# %bb.24:                               # %if.then116
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a2, $s4, 56
	ld.wu	$a3, $a2, 0
	andi	$a3, $a3, 1023
	sltu	$a5, $zero, $a3
	sub.d	$a4, $a3, $a5
	addi.d	$a4, $a4, 1
	bltu	$a4, $s6, .LBB0_30
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$t0, $a5, $a2, 2
	alsl.d	$a6, $a3, $a0, 2
	addi.d	$t1, $a6, 4
	alsl.d	$a7, $a3, $a2, 2
	bgeu	$t0, $t1, .LBB0_27
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t0, $a7, 4
	alsl.d	$a5, $a5, $a0, 2
	bltu	$a5, $t0, .LBB0_30
.LBB0_27:                               # %vector.ph
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a6, $a6, -28
	addi.d	$a7, $a7, -28
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	xvld	$xr1, $a6, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB0_18 Depth=1
	beq	$a4, $a5, .LBB0_16
	.p2align	4, , 16
.LBB0_30:                               # %do.body.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_31:                               # %do.body
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a5, $a0, 0
	or	$a3, $a5, $a3
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -4
	bltu	$s0, $a4, .LBB0_31
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_32:                               # %if.else
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.d	$a2, $s4, 64
	ld.wu	$a3, $a2, 0
	andi	$a3, $a3, 1023
	sltu	$a5, $zero, $a3
	sub.d	$a4, $a3, $a5
	addi.d	$a4, $a4, 1
	bltu	$a4, $s6, .LBB0_38
# %bb.33:                               # %vector.memcheck77
                                        #   in Loop: Header=BB0_18 Depth=1
	alsl.d	$t0, $a5, $a2, 2
	alsl.d	$a6, $a3, $a0, 2
	addi.d	$t1, $a6, 4
	alsl.d	$a7, $a3, $a2, 2
	bgeu	$t0, $t1, .LBB0_35
# %bb.34:                               # %vector.memcheck77
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t0, $a7, 4
	alsl.d	$a5, $a5, $a0, 2
	bltu	$a5, $t0, .LBB0_38
.LBB0_35:                               # %vector.ph91
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a6, $a6, -28
	addi.d	$a7, $a7, -28
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_36:                               # %vector.body94
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	xvld	$xr1, $a6, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a7, 0
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB0_36
# %bb.37:                               # %middle.block103
                                        #   in Loop: Header=BB0_18 Depth=1
	ori	$a6, $zero, 1
	beq	$a4, $a5, .LBB0_17
	.p2align	4, , 16
.LBB0_38:                               # %do.body141.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a4, $a3, 1
	alsl.d	$a0, $a3, $a0, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB0_39:                               # %do.body141
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	ld.w	$a5, $a0, 0
	or	$a3, $a5, $a3
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, -4
	ori	$a6, $zero, 1
	addi.d	$a2, $a2, -4
	bltu	$a6, $a4, .LBB0_39
	b	.LBB0_17
.LBB0_40:                               # %for.end159
	ld.w	$a0, $s4, 8
	beqz	$a0, .LBB0_42
# %bb.41:                               # %if.else163
	ld.d	$a1, $s4, 48
	alsl.d	$a0, $a0, $a1, 2
	ld.w	$a0, $a0, -4
	ld.d	$a1, $s4, 56
	st.w	$a0, $s4, 108
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1365
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 104
	b	.LBB0_43
.LBB0_42:                               # %if.then162
	lu32i.d	$s5, 0
	st.w	$s5, $s4, 108
.LBB0_43:                               # %if.end170
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 0
	st.d	$a0, $s4, 80
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_45
# %bb.44:                               # %cond.false179
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_45:                               # %cond.end184
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 0
	blt	$s0, $s2, .LBB0_47
# %bb.46:                               # %cond.false179.1
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_47:                               # %cond.end184.1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 8
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_49
# %bb.48:                               # %cond.false179.2
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_49:                               # %cond.end184.2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 16
	blt	$s0, $s2, .LBB0_51
# %bb.50:                               # %cond.false179.3
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_51:                               # %cond.end184.3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 24
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_53
# %bb.52:                               # %cond.false179.4
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_53:                               # %cond.end184.4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 32
	blt	$s0, $s2, .LBB0_55
# %bb.54:                               # %cond.false179.5
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_55:                               # %cond.end184.5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 40
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_57
# %bb.56:                               # %cond.false179.6
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_57:                               # %cond.end184.6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 48
	blt	$s0, $s2, .LBB0_59
# %bb.58:                               # %cond.false179.7
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_59:                               # %cond.end184.7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 56
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_61
# %bb.60:                               # %cond.false179.8
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_61:                               # %cond.end184.8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 64
	blt	$s0, $s2, .LBB0_63
# %bb.62:                               # %cond.false179.9
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_63:                               # %cond.end184.9
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 80
	ld.w	$s0, $s4, 0
	st.d	$a0, $a1, 72
	ori	$fp, $zero, 8
	ori	$s2, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s2, .LBB0_65
# %bb.64:                               # %cond.false198
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_65:                               # %cond.end203
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s4, 0
	st.d	$a0, $s4, 88
	blt	$s0, $s2, .LBB0_67
# %bb.66:                               # %cond.false213
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	ori	$a1, $s1, 4092
	and	$a0, $a0, $a1
	addi.d	$fp, $a0, 8
.LBB0_67:                               # %cond.end218
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	st.d	$a0, $s4, 96
	slli.d	$a0, $a1, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$s0, $a1, %got_pc_lo12(cdata)
	ld.w	$a1, $s4, 4
	st.d	$a0, $s0, 0
	slli.d	$fp, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 24
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
.Lfunc_end0:
	.size	cube_setup, .Lfunc_end0-cube_setup
                                        # -- End function
	.globl	setdown_cube                    # -- Begin function setdown_cube
	.p2align	5
	.type	setdown_cube,@function
setdown_cube:                           # @setdown_cube
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$fp, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
.LBB1_2:                                # %if.end
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB1_4:                                # %if.end3
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB1_6
# %bb.5:                                # %if.then5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 40
.LBB1_6:                                # %if.end6
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.then8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
.LBB1_8:                                # %if.end9
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB1_10
# %bb.9:                                # %if.then11
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 112
.LBB1_10:                               # %if.end12
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_12
# %bb.11:                               # %if.then14
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 56
.LBB1_12:                               # %if.end15
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB1_14
# %bb.13:                               # %if.then17
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 64
.LBB1_14:                               # %if.end18
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB1_16
# %bb.15:                               # %if.then20
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 88
.LBB1_16:                               # %if.end21
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB1_18
# %bb.17:                               # %if.then23
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 96
.LBB1_18:                               # %if.end24
	ld.w	$a2, $fp, 4
	ld.d	$a0, $fp, 72
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_23
# %bb.19:                               # %for.body.preheader
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %for.inc
                                        #   in Loop: Header=BB1_21 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a2, .LBB1_24
.LBB1_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a0, $s0
	beqz	$a1, .LBB1_20
# %bb.22:                               # %if.then26
                                        #   in Loop: Header=BB1_21 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 72
	ld.w	$a2, $fp, 4
	stx.d	$zero, $a0, $s0
	b	.LBB1_20
.LBB1_23:                               # %for.end
	beqz	$a0, .LBB1_25
.LBB1_24:                               # %if.then33
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
.LBB1_25:                               # %if.end34
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB1_27
# %bb.26:                               # %if.then41
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 0
.LBB1_27:                               # %for.inc47
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB1_29
# %bb.28:                               # %if.then41.1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 8
.LBB1_29:                               # %for.inc47.1
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB1_31
# %bb.30:                               # %if.then41.2
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 16
.LBB1_31:                               # %for.inc47.2
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB1_33
# %bb.32:                               # %if.then41.3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 24
.LBB1_33:                               # %for.inc47.3
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB1_35
# %bb.34:                               # %if.then41.4
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 32
.LBB1_35:                               # %for.inc47.4
	ld.d	$a1, $a0, 40
	beqz	$a1, .LBB1_37
# %bb.36:                               # %if.then41.5
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 40
.LBB1_37:                               # %for.inc47.5
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB1_39
# %bb.38:                               # %if.then41.6
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 48
.LBB1_39:                               # %for.inc47.6
	ld.d	$a1, $a0, 56
	beqz	$a1, .LBB1_41
# %bb.40:                               # %if.then41.7
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 56
.LBB1_41:                               # %for.inc47.7
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB1_43
# %bb.42:                               # %if.then41.8
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 64
.LBB1_43:                               # %for.inc47.8
	ld.d	$a1, $a0, 72
	beqz	$a1, .LBB1_45
# %bb.44:                               # %if.then41.9
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	st.d	$zero, $a0, 72
.LBB1_45:                               # %if.end52
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s0, $a0, %got_pc_lo12(cdata)
	ld.d	$a0, $s0, 0
	st.d	$zero, $fp, 80
	beqz	$a0, .LBB1_47
# %bb.46:                               # %if.then54
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
.LBB1_47:                               # %if.end55
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB1_49
# %bb.48:                               # %if.then57
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 8
.LBB1_49:                               # %if.end58
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB1_51
# %bb.50:                               # %if.then60
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 16
.LBB1_51:                               # %if.end61
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB1_53
# %bb.52:                               # %if.then63
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_53:                               # %if.end64
	st.d	$zero, $fp, 112
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 40
	xvst	$xr0, $fp, 72
	xvst	$xr0, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	setdown_cube, .Lfunc_end1-setdown_cube
                                        # -- End function
	.globl	save_cube_struct                # -- Begin function save_cube_struct
	.p2align	5
	.type	save_cube_struct,@function
save_cube_struct:                       # @save_cube_struct
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(temp_cube_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cube_save)
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$fp, $a1, %got_pc_lo12(cube)
	ori	$a2, $zero, 128
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s0, $a0, %got_pc_lo12(cdata)
	vld	$vr0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(temp_cdata_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cdata_save)
	xvld	$xr1, $s0, 16
	vst	$vr0, $a0, 0
	xvst	$xr1, $a0, 16
	addi.d	$a0, $fp, 16
	ori	$a2, $zero, 88
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $s0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	save_cube_struct, .Lfunc_end2-save_cube_struct
                                        # -- End function
	.globl	restore_cube_struct             # -- Begin function restore_cube_struct
	.p2align	5
	.type	restore_cube_struct,@function
restore_cube_struct:                    # @restore_cube_struct
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	pcalau12i	$a1, %got_pc_hi20(temp_cube_save)
	ld.d	$a1, $a1, %got_pc_lo12(temp_cube_save)
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(temp_cdata_save)
	ld.d	$a0, $a0, %got_pc_lo12(temp_cdata_save)
	vld	$vr0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$a1, $a1, %got_pc_lo12(cdata)
	xvld	$xr1, $a0, 16
	vst	$vr0, $a1, 0
	xvst	$xr1, $a1, 16
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	restore_cube_struct, .Lfunc_end3-restore_cube_struct
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cube size is silly, error in .i/.o or .mv"
	.size	.L.str, 42

	.section	".note.GNU-stack","",@progbits
	.addrsig
