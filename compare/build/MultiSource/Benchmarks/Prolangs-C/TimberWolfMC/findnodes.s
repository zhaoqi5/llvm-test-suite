	.file	"findnodes.c"
	.text
	.globl	findnodes                       # -- Begin function findnodes
	.p2align	5
	.type	findnodes,@function
findnodes:                              # @findnodes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$a0, $a0, %got_pc_lo12(numRects)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1104
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	pcalau12i	$a2, %got_pc_hi20(Hlist)
	ld.d	$a2, $a2, %got_pc_lo12(Hlist)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	ld.d	$s4, $a2, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beqz	$s4, .LBB0_150
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$s6, $a0, %got_pc_lo12(edgeList)
	pcalau12i	$a0, %got_pc_hi20(Vptrs)
	ld.d	$a0, $a0, %got_pc_lo12(Vptrs)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Vroot)
	ld.d	$a0, $a0, %got_pc_lo12(Vroot)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, -25
	ori	$a0, $a0, 2400
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 20971
	ori	$a0, $a0, 2128
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 10485
	ori	$a0, $a0, 3112
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r31
                                        # implicit-def: $r22
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $fp
	move	$s5, $s8
.LBB0_3:                                # %for.inc594
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s4, $s4, 16
	move	$s8, $s5
	move	$fp, $s3
	beqz	$s4, .LBB0_150
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #       Child Loop BB0_137 Depth 3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s6, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	add.d	$a0, $a1, $a2
	ld.w	$a1, $a0, 20
	bltz	$a1, .LBB0_2
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 8
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s0, $a0, 12
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $s1, $a0
	beqz	$s7, .LBB0_2
# %bb.6:                                # %for.body13.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_7:                                # %for.body13
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_123 Depth 3
                                        #       Child Loop BB0_137 Depth 3
	ld.w	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 20
	bgtz	$a2, .LBB0_10
# %bb.8:                                # %if.end20
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$s2, $a1, 12
	blt	$t3, $s2, .LBB0_2
# %bb.9:                                # %if.end26
                                        #   in Loop: Header=BB0_7 Depth=2
	bge	$s2, $s1, .LBB0_12
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $fp
	move	$s5, $s8
.LBB0_11:                               # %for.inc591
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$s7, $s7, 16
	move	$s8, $s5
	move	$fp, $s3
	bnez	$s7, .LBB0_7
	b	.LBB0_3
.LBB0_12:                               # %if.end29
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a2, $a1, 4
	blt	$s0, $a2, .LBB0_10
# %bb.13:                               # %if.end29
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a3, $a1, 8
	blt	$a3, $s0, .LBB0_10
# %bb.14:                               # %if.end39
                                        #   in Loop: Header=BB0_7 Depth=2
	add.d	$a0, $a0, $t2
	ld.w	$a2, $a0, 24
	ld.w	$a0, $a1, 24
	beqz	$a2, .LBB0_17
# %bb.15:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_20
# %bb.16:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=2
	beq	$a3, $s0, .LBB0_10
	b	.LBB0_20
.LBB0_17:                               # %if.then43
                                        #   in Loop: Header=BB0_7 Depth=2
	beqz	$a0, .LBB0_20
# %bb.18:                               # %if.then43
                                        #   in Loop: Header=BB0_7 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_10
# %bb.19:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bne	$s2, $a0, .LBB0_10
.LBB0_20:                               # %if.end64
                                        #   in Loop: Header=BB0_7 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s3, $a0
	beqz	$a0, .LBB0_36
# %bb.21:                               # %for.body70.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $s6, 0
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $a1, $t2
	addi.d	$a2, $a2, 24
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_24
.LBB0_22:                               # %land.lhs.true109
                                        #   in Loop: Header=BB0_24 Depth=3
	beq	$s1, $t3, .LBB0_33
	.p2align	4, , 16
.LBB0_23:                               # %for.inc588
                                        #   in Loop: Header=BB0_24 Depth=3
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_10
.LBB0_24:                               # %for.body70
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a0, 0
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 20
	bltz	$a4, .LBB0_23
# %bb.25:                               # %if.end77
                                        #   in Loop: Header=BB0_24 Depth=3
	ld.w	$s1, $a3, 12
	blt	$s1, $s2, .LBB0_23
# %bb.26:                               # %if.end83
                                        #   in Loop: Header=BB0_24 Depth=3
	ld.w	$a4, $a3, 4
	blt	$s0, $a4, .LBB0_23
# %bb.27:                               # %if.end83
                                        #   in Loop: Header=BB0_24 Depth=3
	ld.w	$a5, $a3, 8
	blt	$a5, $s0, .LBB0_23
# %bb.28:                               # %if.end94
                                        #   in Loop: Header=BB0_24 Depth=3
	ld.w	$a4, $a2, 0
	ld.w	$a3, $a3, 24
	beqz	$a4, .LBB0_31
# %bb.29:                               # %if.else113
                                        #   in Loop: Header=BB0_24 Depth=3
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB0_34
# %bb.30:                               # %if.else113
                                        #   in Loop: Header=BB0_24 Depth=3
	beq	$a5, $s0, .LBB0_23
	b	.LBB0_34
.LBB0_31:                               # %if.then99
                                        #   in Loop: Header=BB0_24 Depth=3
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB0_22
# %bb.32:                               # %if.then99
                                        #   in Loop: Header=BB0_24 Depth=3
	bnez	$a3, .LBB0_23
	b	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s1, $t3
.LBB0_34:                               # %if.end122
                                        #   in Loop: Header=BB0_7 Depth=2
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(Hptrs)
	ld.d	$a0, $a0, %got_pc_lo12(Hptrs)
	pcalau12i	$a1, %got_pc_hi20(Hroot)
	ld.d	$a1, $a1, %got_pc_lo12(Hroot)
	ld.d	$s3, $a0, 0
	ld.d	$a0, $a1, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s3, $a0
	beqz	$a1, .LBB0_36
# %bb.35:                               # %for.body128.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $s6, 0
	move	$a2, $zero
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_40
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s3, $fp
	move	$s5, $s8
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=2
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_11
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a2, $a7
	.p2align	4, , 16
.LBB0_39:                               # %for.inc
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_10
.LBB0_40:                               # %for.body128
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $a1, 0
	slli.d	$a3, $s3, 5
	alsl.d	$a3, $s3, $a3, 3
	add.d	$a3, $a0, $a3
	ld.w	$a4, $a3, 20
	bgtz	$a4, .LBB0_39
# %bb.41:                               # %if.end135
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t4, $a3, 12
	blt	$t4, $s0, .LBB0_39
# %bb.42:                               # %if.end141
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a6, $a3, 4
	blt	$s1, $a6, .LBB0_39
# %bb.43:                               # %if.end141
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a5, $a3, 8
	blt	$a5, $s2, .LBB0_39
# %bb.44:                               # %if.end152
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$s1, $s2, .LBB0_51
# %bb.45:                               # %if.then154
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s2, .LBB0_54
.LBB0_46:                               # %land.lhs.true175
                                        #   in Loop: Header=BB0_40 Depth=3
	blt	$s2, $a5, .LBB0_97
# %bb.47:                               # %lor.lhs.false177
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_39
# %bb.48:                               # %land.lhs.true179
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a5, $a3, 24
	beqz	$a5, .LBB0_97
# %bb.49:                               # %lor.lhs.false184
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a5, $zero, -1
	blt	$a5, $a4, .LBB0_39
# %bb.50:                               # %land.lhs.true189
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a3, $a3, 28
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	move	$s5, $s3
	blez	$a3, .LBB0_39
	b	.LBB0_98
.LBB0_51:                               # %if.else198
                                        #   in Loop: Header=BB0_40 Depth=3
	beqz	$a2, .LBB0_58
# %bb.52:                               # %if.end265
                                        #   in Loop: Header=BB0_40 Depth=3
	ori	$a7, $zero, 1
	beq	$a2, $a7, .LBB0_75
# %bb.53:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a7, $zero, 2
	ori	$t0, $zero, 1
	bge	$a6, $s2, .LBB0_87
	b	.LBB0_91
.LBB0_54:                               # %lor.lhs.false156
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_39
# %bb.55:                               # %land.lhs.true158
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a6, $a3, 24
	beqz	$a6, .LBB0_46
# %bb.56:                               # %lor.lhs.false163
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a6, $zero, -1
	blt	$a6, $a4, .LBB0_39
# %bb.57:                               # %land.lhs.true168
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 32
	slli.d	$t0, $a7, 5
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $a0, $a7
	ld.w	$a7, $a7, 20
	blt	$a6, $a7, .LBB0_39
	b	.LBB0_46
.LBB0_58:                               # %if.then200
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s2, .LBB0_66
.LBB0_59:                               # %land.lhs.true222
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$s2, $a5, .LBB0_70
.LBB0_60:                               # %if.then231
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s1, .LBB0_72
.LBB0_61:                               # %land.lhs.true240
                                        #   in Loop: Header=BB0_40 Depth=3
	blt	$s1, $a5, .LBB0_97
# %bb.62:                               # %lor.lhs.false242
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s1, .LBB0_74
# %bb.63:                               # %land.lhs.true244
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_97
# %bb.64:                               # %lor.lhs.false249
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a7, $zero, -1
	blt	$a7, $a4, .LBB0_74
# %bb.65:                               # %land.lhs.true254
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 28
	slli.d	$t0, $a7, 5
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $a0, $a7
	ld.w	$a7, $a7, 20
	blez	$a7, .LBB0_74
	b	.LBB0_97
.LBB0_66:                               # %lor.lhs.false202
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_74
# %bb.67:                               # %land.lhs.true204
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_59
# %bb.68:                               # %lor.lhs.false209
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a7, $zero, -1
	blt	$a7, $a4, .LBB0_74
# %bb.69:                               # %land.lhs.true214
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 32
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t0, $a0, $t0
	ld.w	$t0, $t0, 20
	blt	$a7, $t0, .LBB0_74
	b	.LBB0_59
.LBB0_70:                               # %lor.lhs.false224
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_74
# %bb.71:                               # %land.lhs.true226
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	bnez	$a7, .LBB0_74
	b	.LBB0_60
.LBB0_72:                               # %lor.lhs.false233
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s1, .LBB0_74
# %bb.73:                               # %land.lhs.true235
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB0_61
.LBB0_74:                               #   in Loop: Header=BB0_40 Depth=3
	move	$a7, $zero
.LBB0_75:                               # %if.then269
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$a6, $s1, .LBB0_79
.LBB0_76:                               # %land.lhs.true278
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$s1, $a5, .LBB0_81
.LBB0_77:                               # %if.then300
                                        #   in Loop: Header=BB0_40 Depth=3
	bnez	$a2, .LBB0_145
# %bb.78:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a7, $zero, 2
	ori	$t0, $zero, 1
	move	$fp, $s3
	bge	$a6, $s2, .LBB0_87
	b	.LBB0_91
.LBB0_79:                               # %lor.lhs.false271
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s1, .LBB0_84
# %bb.80:                               # %land.lhs.true273
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 24
	bnez	$t0, .LBB0_84
	b	.LBB0_76
.LBB0_81:                               # %lor.lhs.false280
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s1, .LBB0_84
# %bb.82:                               # %land.lhs.true282
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 24
	beqz	$t0, .LBB0_77
# %bb.83:                               # %lor.lhs.false287
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$t0, $zero, -1
	bge	$t0, $a4, .LBB0_96
.LBB0_84:                               # %if.end306
                                        #   in Loop: Header=BB0_40 Depth=3
	beqz	$a2, .LBB0_86
# %bb.85:                               #   in Loop: Header=BB0_40 Depth=3
	ori	$a2, $zero, 1
	b	.LBB0_39
.LBB0_86:                               #   in Loop: Header=BB0_40 Depth=3
	move	$t0, $zero
	blt	$a6, $s2, .LBB0_91
.LBB0_87:                               # %lor.lhs.false312
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a6, $s2, .LBB0_38
# %bb.88:                               # %land.lhs.true314
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a2, $a3, 24
	beqz	$a2, .LBB0_91
# %bb.89:                               # %lor.lhs.false319
                                        #   in Loop: Header=BB0_40 Depth=3
	addi.w	$a2, $zero, -1
	blt	$a2, $a4, .LBB0_38
# %bb.90:                               # %land.lhs.true324
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a4, $a3, 32
	slli.d	$a6, $a4, 5
	alsl.d	$a4, $a4, $a6, 3
	add.d	$a4, $a0, $a4
	ld.w	$a4, $a4, 20
	blt	$a2, $a4, .LBB0_38
.LBB0_91:                               # %land.lhs.true332
                                        #   in Loop: Header=BB0_40 Depth=3
	bge	$s2, $a5, .LBB0_93
# %bb.92:                               # %if.then341
                                        #   in Loop: Header=BB0_40 Depth=3
	ori	$a2, $zero, 1
	move	$s8, $s3
	move	$s5, $s3
	move	$s3, $fp
	beqz	$t0, .LBB0_39
	b	.LBB0_98
.LBB0_93:                               # %lor.lhs.false334
                                        #   in Loop: Header=BB0_40 Depth=3
	bne	$a5, $s2, .LBB0_38
# %bb.94:                               # %land.lhs.true336
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$a2, $a3, 24
	sltui	$a2, $a2, 1
	and	$a3, $a2, $t0
	bnez	$a3, .LBB0_149
# %bb.95:                               #   in Loop: Header=BB0_40 Depth=3
	masknez	$a3, $s8, $a2
	maskeqz	$a4, $s3, $a2
	or	$s8, $a4, $a3
	masknez	$a3, $a7, $a2
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	b	.LBB0_39
.LBB0_96:                               # %land.lhs.true292
                                        #   in Loop: Header=BB0_40 Depth=3
	ld.w	$t0, $a3, 28
	slli.d	$t1, $t0, 5
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t0, $a0, $t0
	ld.w	$t0, $t0, 20
	ori	$t1, $zero, 1
	bge	$t0, $t1, .LBB0_77
	b	.LBB0_84
.LBB0_97:                               #   in Loop: Header=BB0_7 Depth=2
	move	$s5, $s3
.LBB0_98:                               # %if.end354
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a4, $s5, 0
	ori	$a7, $zero, 40
	mul.d	$a1, $a4, $a7
	add.d	$a1, $a0, $a1
	ld.w	$a5, $a1, 12
	addi.w	$s8, $s3, 0
	mul.d	$a2, $s8, $a7
	add.d	$a2, $a0, $a2
	ld.w	$a6, $a2, 12
	slt	$a3, $a5, $a6
	slt	$a5, $a6, $a5
	masknez	$a6, $s8, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $s8, $a3
	or	$a4, $a5, $a4
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a0, $a4
	ld.w	$a5, $a4, 8
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$t4, $sp, 24                    # 8-byte Folded Spill
	blt	$t4, $a4, .LBB0_117
# %bb.99:                               # %land.lhs.true394
                                        #   in Loop: Header=BB0_7 Depth=2
	masknez	$a4, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	ld.w	$a2, $a2, 4
	bge	$a2, $s2, .LBB0_117
# %bb.100:                              # %if.then396
                                        #   in Loop: Header=BB0_7 Depth=2
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 24
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $fp, $a0
	ld.w	$a2, $a1, 0
	ld.d	$a0, $s6, 0
	ori	$a3, $zero, 40
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	ld.w	$a2, $a2, 12
.LBB0_101:                              # %for.cond408
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB0_103
# %bb.102:                              # %for.body410
                                        #   in Loop: Header=BB0_101 Depth=3
	ld.w	$a3, $a1, 0
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 12
	bge	$a2, $a3, .LBB0_101
.LBB0_103:                              # %for.end420
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $a1, 8
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_116
# %bb.104:                              # %for.body423.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_106
.LBB0_105:                              # %for.inc467
                                        #   in Loop: Header=BB0_106 Depth=3
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_116
.LBB0_106:                              # %for.body423
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 20
	bgtz	$a3, .LBB0_105
# %bb.107:                              # %if.end430
                                        #   in Loop: Header=BB0_106 Depth=3
	ld.w	$a3, $a2, 4
	blt	$t4, $a3, .LBB0_105
# %bb.108:                              # %if.end430
                                        #   in Loop: Header=BB0_106 Depth=3
	ld.w	$a4, $a2, 8
	blt	$a4, $t4, .LBB0_105
# %bb.109:                              # %if.end443
                                        #   in Loop: Header=BB0_106 Depth=3
	beqz	$t0, .LBB0_112
# %bb.110:                              # %if.then444
                                        #   in Loop: Header=BB0_106 Depth=3
	bne	$a3, $t4, .LBB0_115
# %bb.111:                              # %if.then444
                                        #   in Loop: Header=BB0_106 Depth=3
	blt	$a3, $a4, .LBB0_105
	b	.LBB0_115
.LBB0_112:                              # %if.else450
                                        #   in Loop: Header=BB0_106 Depth=3
	ld.w	$a5, $a2, 24
	ori	$a7, $zero, 1
	bne	$a5, $a7, .LBB0_115
# %bb.113:                              # %land.lhs.true456
                                        #   in Loop: Header=BB0_106 Depth=3
	beq	$a3, $t4, .LBB0_105
# %bb.114:                              # %land.lhs.true456
                                        #   in Loop: Header=BB0_106 Depth=3
	beq	$a4, $t4, .LBB0_105
.LBB0_115:                              # %if.end462
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$s2, $a2, 12
.LBB0_116:                              #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_118
.LBB0_117:                              #   in Loop: Header=BB0_7 Depth=2
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB0_118:                              # %if.end470
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
	blt	$t4, $a1, .LBB0_134
# %bb.119:                              # %if.end470
                                        #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
	bge	$s1, $a5, .LBB0_134
# %bb.120:                              # %if.then474
                                        #   in Loop: Header=BB0_7 Depth=2
	slli.d	$a1, $s8, 5
	alsl.d	$a1, $s8, $a1, 3
	add.d	$a0, $a0, $a1
	ld.w	$s8, $a0, 24
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s1
	move	$fp, $t4
	pcaddu18i	$ra, %call36(tprop)
	jirl	$ra, $ra, 0
	move	$t4, $fp
	ld.d	$t3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	move	$a7, $s1
	beqz	$a0, .LBB0_134
# %bb.121:                              # %for.body483.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a1, $s6, 0
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_122:                              # %for.inc528
                                        #   in Loop: Header=BB0_123 Depth=3
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_133
.LBB0_123:                              # %for.body483
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	slli.d	$a3, $a2, 5
	alsl.d	$a2, $a2, $a3, 3
	add.d	$a2, $a1, $a2
	ld.w	$a3, $a2, 20
	bltz	$a3, .LBB0_122
# %bb.124:                              # %if.end490
                                        #   in Loop: Header=BB0_123 Depth=3
	ld.w	$a3, $a2, 4
	blt	$t4, $a3, .LBB0_122
# %bb.125:                              # %if.end490
                                        #   in Loop: Header=BB0_123 Depth=3
	ld.w	$a4, $a2, 8
	blt	$a4, $t4, .LBB0_122
# %bb.126:                              # %if.end503
                                        #   in Loop: Header=BB0_123 Depth=3
	beqz	$s8, .LBB0_129
# %bb.127:                              # %if.then505
                                        #   in Loop: Header=BB0_123 Depth=3
	bne	$a3, $t4, .LBB0_132
# %bb.128:                              # %if.then505
                                        #   in Loop: Header=BB0_123 Depth=3
	blt	$a3, $a4, .LBB0_122
	b	.LBB0_132
.LBB0_129:                              # %if.else511
                                        #   in Loop: Header=BB0_123 Depth=3
	ld.w	$a5, $a2, 24
	ori	$a7, $zero, 1
	bne	$a5, $a7, .LBB0_132
# %bb.130:                              # %land.lhs.true517
                                        #   in Loop: Header=BB0_123 Depth=3
	beq	$a3, $t4, .LBB0_122
# %bb.131:                              # %land.lhs.true517
                                        #   in Loop: Header=BB0_123 Depth=3
	beq	$a4, $t4, .LBB0_122
.LBB0_132:                              # %if.end523
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a7, $a2, 12
	b	.LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=2
	move	$a7, $s1
.LBB0_134:                              # %if.end531
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a1, $fp, 0
	ori	$a0, $zero, 1
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_139
# %bb.135:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	addi.d	$a3, $a1, 1
	ori	$a2, $zero, 52
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a0, $a2
	addi.d	$a4, $a2, 20
	move	$a2, $a1
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_136:                              # %for.inc.i
                                        #   in Loop: Header=BB0_137 Depth=3
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -52
	ori	$a5, $zero, 1
	bge	$a5, $a3, .LBB0_143
.LBB0_137:                              # %for.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a4, 0
	blt	$a5, $s2, .LBB0_136
# %bb.138:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_137 Depth=3
	ld.w	$a5, $a4, -4
	blt	$a7, $a5, .LBB0_136
	b	.LBB0_141
.LBB0_139:                              # %for.end.i
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_146
# %bb.140:                              # %for.end.if.else_crit_edge.i
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $s8, 0
	move	$a2, $a1
.LBB0_141:                              # %if.else.i
                                        #   in Loop: Header=BB0_7 Depth=2
	ori	$a3, $zero, 52
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	ld.w	$a3, $a2, 28
	blt	$a3, $s0, .LBB0_143
# %bb.142:                              # %backCheck.exit
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$a2, $a2, 24
	bge	$t4, $a2, .LBB0_11
.LBB0_143:                              # %if.end535
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a2, $a1, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	rotri.w	$a3, $a3, 2
	st.w	$a2, $fp, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_147
# %bb.144:                              # %if.then537
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a1, $a1, 101
	ori	$a2, $zero, 52
	mul.d	$a1, $a1, $a2
	move	$fp, $t4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $fp
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $fp, 0
	st.d	$a0, $s8, 0
	b	.LBB0_147
.LBB0_145:                              #   in Loop: Header=BB0_7 Depth=2
	move	$s5, $s8
	b	.LBB0_98
.LBB0_146:                              # %if.end535.thread
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a0, $s8, 0
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 0
.LBB0_147:                              # %if.end539
                                        #   in Loop: Header=BB0_7 Depth=2
	ori	$a3, $zero, 52
	mul.d	$a1, $a2, $a3
	add.d	$a1, $a0, $a1
	st.w	$s2, $a1, 16
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$a7, $a1, 20
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$s0, $a1, 24
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$t4, $a1, 28
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 32
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 36
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 40
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a3
	ori	$a4, $zero, 52
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 44
	add.d	$a1, $a7, $s2
	ld.w	$a2, $fp, 0
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	mul.d	$a1, $a2, $a4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	stx.w	$a3, $a0, $a1
	add.d	$a1, $t4, $s0
	ld.w	$a2, $fp, 0
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	mul.d	$a1, $a2, $a4
	add.d	$a1, $a0, $a1
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.w	$a3, $a1, 4
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a0, $a1
	st.w	$zero, $a1, 8
	ld.w	$a1, $fp, 0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 12
	ld.w	$a2, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$s8, $a0, %got_pc_lo12(fpdebug)
	ld.w	$a2, $fp, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $s8, 0
	ori	$a3, $zero, 52
	mul.d	$a3, $a2, $a3
	add.d	$a4, $a1, $a3
	ldx.w	$a3, $a1, $a3
	ld.w	$a4, $a4, 4
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.w	$a2, $a1, $s2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a3, $a1, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(doPlacement)
	ld.d	$a0, $a0, %got_pc_lo12(doPlacement)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_37
# %bb.148:                              # %if.then581
                                        #   in Loop: Header=BB0_7 Depth=2
	pcalau12i	$a0, %got_pc_hi20(fpNodes)
	ld.d	$a0, $a0, %got_pc_lo12(fpNodes)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_37
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=2
	move	$s5, $s3
	move	$s3, $fp
	b	.LBB0_98
.LBB0_150:                              # %for.end596
	pcaddu18i	$ra, %call36(rectlink)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$a0, $a0, %got_pc_lo12(LEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(HRlist)
	ld.d	$a1, $a1, %got_pc_lo12(HRlist)
	pcalau12i	$a2, %got_pc_hi20(LEptrs)
	ld.d	$s3, $a2, %got_pc_lo12(LEptrs)
	ld.d	$s4, $a1, 0
	st.d	$a0, $s3, 0
	lu12i.w	$s2, -245
	beqz	$s4, .LBB0_157
# %bb.151:                              # %for.body.preheader.i
	move	$a1, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a2, $s2, 3520
	ori	$s5, $zero, 52
	pcalau12i	$a3, %got_pc_hi20(LEroot)
	ld.d	$fp, $a3, %got_pc_lo12(LEroot)
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_152:                              # %if.end.i
                                        #   in Loop: Header=BB0_154 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s4, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB0_153:                              # %for.inc.i238
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB0_157
.LBB0_154:                              # %for.body.i237
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s4, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 16
	bge	$a2, $s0, .LBB0_153
# %bb.155:                              # %if.then.i
                                        #   in Loop: Header=BB0_154 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s3, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB0_152
# %bb.156:                              # %if.then7.i
                                        #   in Loop: Header=BB0_154 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB0_152
.LBB0_157:                              # %makeRLEtree.exit
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$a0, $a0, %got_pc_lo12(BEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(VRlist)
	ld.d	$a1, $a1, %got_pc_lo12(VRlist)
	pcalau12i	$a2, %got_pc_hi20(BEptrs)
	ld.d	$s3, $a2, %got_pc_lo12(BEptrs)
	ld.d	$s4, $a1, 0
	st.d	$a0, $s3, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	beqz	$s4, .LBB0_164
# %bb.158:                              # %for.body.preheader.i246
	move	$a1, $zero
	ld.d	$a0, $s8, 0
	ori	$a2, $s2, 3520
	ori	$s2, $zero, 52
	pcalau12i	$a3, %got_pc_hi20(BEroot)
	ld.d	$fp, $a3, %got_pc_lo12(BEroot)
	lu12i.w	$a3, -251659
	ori	$s5, $a3, 3113
	lu12i.w	$a3, 20971
	ori	$s6, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s7, $a3, 3112
	b	.LBB0_161
	.p2align	4, , 16
.LBB0_159:                              # %if.end.i264
                                        #   in Loop: Header=BB0_161 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s4, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB0_160:                              # %for.inc.i253
                                        #   in Loop: Header=BB0_161 Depth=1
	ld.d	$s4, $s4, 16
	beqz	$s4, .LBB0_164
.LBB0_161:                              # %for.body.i248
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s4, 0
	mul.d	$a3, $a3, $s2
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 24
	bge	$a2, $s0, .LBB0_160
# %bb.162:                              # %if.then.i259
                                        #   in Loop: Header=BB0_161 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s5
	ld.d	$a0, $s3, 0
	add.d	$a2, $a2, $s6
	rotri.w	$a2, $a2, 2
	bltu	$s7, $a2, .LBB0_159
# %bb.163:                              # %if.then7.i268
                                        #   in Loop: Header=BB0_161 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	b	.LBB0_159
.LBB0_164:                              # %makeRBEtree.exit
	pcalau12i	$a0, %got_pc_hi20(doPlacement)
	ld.d	$a0, $a0, %got_pc_lo12(doPlacement)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_166
# %bb.165:                              # %if.then598
	pcalau12i	$a0, %got_pc_hi20(fpNodes)
	ld.d	$fp, $a0, %got_pc_lo12(fpNodes)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB0_166:                              # %if.end601
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	findnodes, .Lfunc_end0-findnodes
                                        # -- End function
	.globl	backCheck                       # -- Begin function backCheck
	.p2align	5
	.type	backCheck,@function
backCheck:                              # @backCheck
# %bb.0:                                # %entry
	pcalau12i	$a4, %got_pc_hi20(numRects)
	ld.d	$a4, $a4, %got_pc_lo12(numRects)
	ld.w	$a4, $a4, 0
	ori	$a6, $zero, 1
	blt	$a4, $a6, .LBB1_5
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a5, %got_pc_hi20(rectArray)
	ld.d	$a5, $a5, %got_pc_lo12(rectArray)
	ld.d	$a5, $a5, 0
	addi.d	$a7, $a4, 1
	ori	$t0, $zero, 52
	mul.d	$t0, $a4, $t0
	add.d	$t0, $t0, $a5
	addi.d	$t0, $t0, 20
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -52
	bge	$a6, $a7, .LBB1_8
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	blt	$t1, $a0, .LBB1_2
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$t1, $t0, -4
	blt	$a1, $t1, .LBB1_2
	b	.LBB1_7
.LBB1_5:                                # %for.end
	beqz	$a4, .LBB1_8
# %bb.6:                                # %for.end.if.else_crit_edge
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a5, $a0, 0
.LBB1_7:                                # %if.else
	ori	$a0, $zero, 52
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a5, $a0
	ld.w	$a1, $a0, 28
	bge	$a1, $a2, .LBB1_9
.LBB1_8:
	move	$a0, $zero
	ret
.LBB1_9:                                # %lor.lhs.false16
	ld.w	$a0, $a0, 24
	slt	$a0, $a3, $a0
	xori	$a0, $a0, 1
	ret
.Lfunc_end1:
	.size	backCheck, .Lfunc_end1-backCheck
                                        # -- End function
	.globl	rectlink                        # -- Begin function rectlink
	.p2align	5
	.type	rectlink,@function
rectlink:                               # @rectlink
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(HRlist)
	ld.d	$fp, $a0, %got_pc_lo12(HRlist)
	pcalau12i	$a0, %got_pc_hi20(VRlist)
	ld.d	$s1, $a0, %got_pc_lo12(VRlist)
	st.d	$zero, $fp, 0
	st.d	$zero, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB2_7
# %bb.1:                                # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	st.d	$a0, $fp, 0
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	ld.d	$s2, $fp, 0
	st.d	$a0, $s1, 0
	st.w	$a1, $a0, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hRectRoot)
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB2_4
# %bb.2:                                # %if.end8.preheader
	pcalau12i	$a0, %got_pc_hi20(hRectRoot)
	ld.d	$fp, $a0, %got_pc_lo12(hRectRoot)
	.p2align	4, , 16
.LBB2_3:                                # %if.end8
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s0, $a0
	st.w	$a1, $a0, 0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$a0, $s2, 16
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	move	$s2, $s0
	bnez	$a0, .LBB2_3
.LBB2_4:                                # %for.end
	ld.d	$s1, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vRectRoot)
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB2_7
# %bb.5:                                # %if.end17.preheader
	pcalau12i	$a0, %got_pc_hi20(vRectRoot)
	ld.d	$fp, $a0, %got_pc_lo12(vRectRoot)
	.p2align	4, , 16
.LBB2_6:                                # %if.end17
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s0, $a0
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$a0, $s1, 16
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	move	$s1, $s0
	bnez	$a0, .LBB2_6
.LBB2_7:                                # %cleanup
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	rectlink, .Lfunc_end2-rectlink
                                        # -- End function
	.globl	makeRLEtree                     # -- Begin function makeRLEtree
	.p2align	5
	.type	makeRLEtree,@function
makeRLEtree:                            # @makeRLEtree
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
	pcalau12i	$a0, %got_pc_hi20(LEroot)
	ld.d	$a0, $a0, %got_pc_lo12(LEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(HRlist)
	ld.d	$a1, $a1, %got_pc_lo12(HRlist)
	pcalau12i	$a2, %got_pc_hi20(LEptrs)
	ld.d	$s2, $a2, %got_pc_lo12(LEptrs)
	ld.d	$s3, $a1, 0
	st.d	$a0, $s2, 0
	beqz	$s3, .LBB3_7
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s4, $a0, %got_pc_lo12(rectArray)
	move	$a1, $zero
	ld.d	$a0, $s4, 0
	lu12i.w	$a2, -245
	ori	$a2, $a2, 3520
	ori	$s5, $zero, 52
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	pcalau12i	$a4, %got_pc_hi20(LEroot)
	ld.d	$fp, $a4, %got_pc_lo12(LEroot)
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB3_7
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s3, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 16
	bge	$a2, $s0, .LBB3_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s2, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB3_2
# %bb.6:                                # %if.then7
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	b	.LBB3_2
.LBB3_7:                                # %for.end
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
.Lfunc_end3:
	.size	makeRLEtree, .Lfunc_end3-makeRLEtree
                                        # -- End function
	.globl	makeRBEtree                     # -- Begin function makeRBEtree
	.p2align	5
	.type	makeRBEtree,@function
makeRBEtree:                            # @makeRBEtree
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
	pcalau12i	$a0, %got_pc_hi20(BEroot)
	ld.d	$a0, $a0, %got_pc_lo12(BEroot)
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(VRlist)
	ld.d	$a1, $a1, %got_pc_lo12(VRlist)
	pcalau12i	$a2, %got_pc_hi20(BEptrs)
	ld.d	$s2, $a2, %got_pc_lo12(BEptrs)
	ld.d	$s3, $a1, 0
	st.d	$a0, $s2, 0
	beqz	$s3, .LBB4_7
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s4, $a0, %got_pc_lo12(rectArray)
	move	$a1, $zero
	ld.d	$a0, $s4, 0
	lu12i.w	$a2, -245
	ori	$a2, $a2, 3520
	ori	$s5, $zero, 52
	lu12i.w	$a3, -251659
	ori	$s6, $a3, 3113
	lu12i.w	$a3, 20971
	pcalau12i	$a4, %got_pc_hi20(BEroot)
	ld.d	$fp, $a4, %got_pc_lo12(BEroot)
	ori	$s7, $a3, 2128
	lu12i.w	$a3, 10485
	ori	$s8, $a3, 3112
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a1, $s1, 3
	stx.d	$s3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	move	$a1, $s1
	move	$a2, $s0
.LBB4_3:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s3, $s3, 16
	beqz	$s3, .LBB4_7
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s3, 0
	mul.d	$a3, $a3, $s5
	add.d	$a3, $a0, $a3
	ld.w	$s0, $a3, 24
	bge	$a2, $s0, .LBB4_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s1, $a1, 1
	mul.d	$a2, $s1, $s6
	ld.d	$a0, $s2, 0
	add.d	$a2, $a2, $s7
	rotri.w	$a2, $a2, 2
	bltu	$s8, $a2, .LBB4_2
# %bb.6:                                # %if.then7
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$a1, $a1, 3
	addi.d	$a1, $a1, 808
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	b	.LBB4_2
.LBB4_7:                                # %for.end
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
.Lfunc_end4:
	.size	makeRBEtree, .Lfunc_end4-makeRBEtree
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rect Node: %d  at: %d %d "
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"  width:%d  height:%d\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"L NC;\n94 X%d %d %d;\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"E\n"
	.size	.L.str.3, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hRectRoot
	.addrsig_sym vRectRoot
	.addrsig_sym LEroot
	.addrsig_sym BEroot
