	.file	"findloc.c"
	.text
	.globl	findLoc                         # -- Begin function findLoc
	.p2align	5
	.type	findLoc,@function
findLoc:                                # @findLoc
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(UCptr)
	ld.d	$a1, $a1, %got_pc_lo12(UCptr)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ori	$a3, $zero, 44
	mul.d	$a0, $a0, $a3
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(netarray)
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, %got_pc_lo12(netarray)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 244140
	beqz	$a1, .LBB0_5
# %bb.1:                                # %for.body.preheader
	ori	$a5, $a2, 2560
	move	$a4, $zero
	move	$a3, $zero
	move	$a6, $a5
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_6
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 24
	beq	$a2, $a0, .LBB0_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a2, $a1, 8
	slt	$a7, $a2, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a2, $a7
	or	$a6, $a7, $a6
	slt	$a7, $a4, $a2
	ld.w	$t0, $a1, 12
	masknez	$a4, $a4, $a7
	maskeqz	$a2, $a2, $a7
	or	$a4, $a2, $a4
	slt	$a2, $t0, $a5
	masknez	$a5, $a5, $a2
	maskeqz	$a2, $t0, $a2
	or	$a5, $a2, $a5
	slt	$a2, $a3, $t0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $t0, $a2
	or	$a3, $a2, $a3
	b	.LBB0_2
.LBB0_5:
	ori	$a6, $a2, 2560
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $a6
.LBB0_6:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(HorV)
	ld.d	$a0, $a0, %got_pc_lo12(HorV)
	pcalau12i	$a1, %got_pc_hi20(lArray)
	ld.d	$a1, $a1, %got_pc_lo12(lArray)
	pcalau12i	$a2, %got_pc_hi20(nPinLocs)
	ld.d	$a7, $a2, %got_pc_lo12(nPinLocs)
	ld.w	$t0, $a0, 0
	ld.d	$a2, $a1, 0
	ld.w	$a0, $a7, 0
	alsl.d	$a1, $a0, $a2, 4
	beqz	$t0, .LBB0_17
# %bb.7:                                # %if.then26
	ld.w	$a6, $a1, 12
	ld.w	$a4, $a2, 28
	bge	$a4, $a6, .LBB0_27
# %bb.8:                                # %if.then32
	bge	$a5, $a6, .LBB0_44
# %bb.9:                                # %if.else
	ori	$a1, $zero, 1
	bge	$a4, $a3, .LBB0_102
# %bb.10:                               # %if.else42
	blt	$a6, $a3, .LBB0_45
# %bb.11:                               # %if.else42
	blt	$a5, $a4, .LBB0_45
# %bb.12:                               # %if.then50
	ori	$a6, $zero, 2
	blt	$a0, $a6, .LBB0_102
# %bb.13:                               # %for.body63.preheader
	add.d	$a1, $a5, $a3
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	sub.w	$a1, $a3, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a5, $a1, $a4
	addi.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a2, 44
	addi.d	$a4, $a1, -2
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB0_14:                               # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	move	$a7, $a5
	sub.w	$a5, $a3, $a6
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a5, $a5, $a6
	bgeu	$a5, $a7, .LBB0_102
# %bb.15:                               # %if.then83
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_14
# %bb.16:
	addi.w	$a0, $a0, 0
	ret
.LBB0_17:                               # %if.else499
	ld.w	$a5, $a1, 8
	ld.w	$a3, $a2, 24
	bge	$a3, $a5, .LBB0_36
# %bb.18:                               # %if.then505
	bge	$a6, $a5, .LBB0_44
# %bb.19:                               # %if.else511
	ori	$a1, $zero, 1
	bge	$a3, $a4, .LBB0_102
# %bb.20:                               # %if.else516
	blt	$a5, $a4, .LBB0_61
# %bb.21:                               # %if.else516
	blt	$a6, $a3, .LBB0_61
# %bb.22:                               # %if.then525
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_102
# %bb.23:                               # %for.body545.preheader
	add.d	$a1, $a4, $a6
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$a4, $a1, 1
	sub.w	$a1, $a4, $a3
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a5, $a1, $a3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a2, 40
	addi.d	$a3, $a1, -2
	ori	$a1, $zero, 1
.LBB0_24:                               # %for.body545
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	move	$a7, $a5
	sub.w	$a5, $a4, $a6
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a5, $a5, $a6
	bgeu	$a5, $a7, .LBB0_102
# %bb.25:                               # %if.then565
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_24
# %bb.26:
	addi.w	$a0, $a0, 0
	ret
.LBB0_27:                               # %if.else260
	ori	$a1, $zero, 1
	bge	$a5, $a4, .LBB0_102
# %bb.28:                               # %if.else265
	bge	$a6, $a3, .LBB0_44
# %bb.29:                               # %if.else271
	blt	$a4, $a3, .LBB0_52
# %bb.30:                               # %if.else271
	blt	$a5, $a6, .LBB0_52
# %bb.31:                               # %if.then280
	ori	$a6, $zero, 2
	blt	$a0, $a6, .LBB0_102
# %bb.32:                               # %for.body300.preheader
	add.d	$a1, $a5, $a3
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	srai.d	$a3, $a1, 1
	sub.w	$a1, $a3, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a5, $a1, $a4
	addi.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a2, 44
	addi.d	$a4, $a1, -2
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB0_33:                               # %for.body300
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	move	$a7, $a5
	sub.w	$a5, $a3, $a6
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a5, $a5, $a6
	bgeu	$a5, $a7, .LBB0_102
# %bb.34:                               # %if.then320
                                        #   in Loop: Header=BB0_33 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_33
# %bb.35:
	addi.w	$a0, $a0, 0
	ret
.LBB0_36:                               # %if.else743
	ori	$a1, $zero, 1
	bge	$a6, $a3, .LBB0_102
# %bb.37:                               # %if.else748
	bge	$a5, $a4, .LBB0_44
# %bb.38:                               # %if.else754
	blt	$a3, $a4, .LBB0_68
# %bb.39:                               # %if.else754
	blt	$a6, $a5, .LBB0_68
# %bb.40:                               # %if.then763
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_102
# %bb.41:                               # %for.body783.preheader
	add.d	$a1, $a4, $a6
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a1, $a1, $a4
	srai.d	$a4, $a1, 1
	sub.w	$a1, $a4, $a3
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a5, $a1, $a3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a2, 40
	addi.d	$a3, $a1, -2
	ori	$a1, $zero, 1
.LBB0_42:                               # %for.body783
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	move	$a7, $a5
	sub.w	$a5, $a4, $a6
	srai.d	$a6, $a5, 31
	xor	$a5, $a5, $a6
	sub.w	$a5, $a5, $a6
	bgeu	$a5, $a7, .LBB0_102
# %bb.43:                               # %if.then803
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB0_42
.LBB0_44:
	addi.w	$a0, $a0, 0
	ret
.LBB0_45:                               # %if.else107
	blt	$a3, $a6, .LBB0_47
# %bb.46:                               # %if.else107
	bge	$a4, $a5, .LBB0_70
.LBB0_47:                               # %land.lhs.true124
	bge	$a4, $a5, .LBB0_78
# %bb.48:                               # %if.then128
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_100
# %bb.49:                               # %for.body146.preheader
	sub.w	$a6, $a5, $a4
	addi.w	$a3, $a0, 1
	bstrpick.d	$a1, $a3, 31, 0
	addi.d	$a2, $a2, 44
	addi.d	$a4, $a1, -2
	ori	$a1, $zero, 2
.LBB0_50:                               # %for.body146
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	move	$t0, $a6
	sub.w	$a6, $a5, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	bgeu	$a6, $t0, .LBB0_100
# %bb.51:                               # %if.then166
                                        #   in Loop: Header=BB0_50 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_50
	b	.LBB0_99
.LBB0_52:                               # %if.else345
	blt	$a3, $a4, .LBB0_54
# %bb.53:                               # %if.else345
	bge	$a6, $a5, .LBB0_70
.LBB0_54:                               # %land.lhs.true361
	bge	$a6, $a5, .LBB0_84
# %bb.55:                               # %if.then366
	ori	$a3, $zero, 2
	blt	$a0, $a3, .LBB0_102
# %bb.56:                               # %for.body384.preheader
	sub.w	$a1, $a5, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a4, $a1, $a4
	addi.w	$a0, $a0, 1
	bstrpick.d	$a6, $a0, 31, 0
	addi.d	$a1, $a2, 44
	addi.d	$a2, $a6, -2
.LBB0_57:                               # %for.body384
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	move	$a7, $a4
	sub.w	$a4, $a5, $a6
	srai.d	$a6, $a4, 31
	xor	$a4, $a4, $a6
	sub.w	$a4, $a4, $a6
	bgeu	$a4, $a7, .LBB0_60
# %bb.58:                               # %if.then404
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_57
# %bb.59:
	move	$a3, $a0
.LBB0_60:                               # %for.end427.loopexit
	bstrpick.d	$a1, $a3, 31, 1
	addi.w	$a0, $a1, 0
	ret
.LBB0_61:                               # %if.else590
	blt	$a4, $a5, .LBB0_63
# %bb.62:                               # %if.else590
	bge	$a3, $a6, .LBB0_70
.LBB0_63:                               # %land.lhs.true607
	bge	$a3, $a6, .LBB0_89
# %bb.64:                               # %if.then611
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_100
# %bb.65:                               # %for.body629.preheader
	sub.w	$a5, $a6, $a3
	addi.w	$a3, $a0, 1
	bstrpick.d	$a1, $a3, 31, 0
	addi.d	$a2, $a2, 40
	addi.d	$a4, $a1, -2
	ori	$a1, $zero, 2
.LBB0_66:                               # %for.body629
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	move	$t0, $a5
	sub.w	$a5, $a6, $a7
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.w	$a5, $a5, $a7
	bgeu	$a5, $t0, .LBB0_100
# %bb.67:                               # %if.then649
                                        #   in Loop: Header=BB0_66 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB0_66
	b	.LBB0_99
.LBB0_68:                               # %if.else828
	blt	$a4, $a3, .LBB0_71
# %bb.69:                               # %if.else828
	blt	$a5, $a6, .LBB0_71
.LBB0_70:                               # %if.then116
	addi.d	$a0, $a0, 1
	b	.LBB0_101
.LBB0_71:                               # %land.lhs.true844
	bge	$a5, $a6, .LBB0_95
# %bb.72:                               # %if.then849
	ori	$a4, $zero, 2
	blt	$a0, $a4, .LBB0_102
# %bb.73:                               # %for.body867.preheader
	sub.w	$a1, $a6, $a3
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a3, $a1, $a3
	addi.w	$a0, $a0, 1
	bstrpick.d	$a5, $a0, 31, 0
	addi.d	$a1, $a2, 40
	addi.d	$a2, $a5, -2
.LBB0_74:                               # %for.body867
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	move	$a7, $a3
	sub.w	$a3, $a6, $a5
	srai.d	$a5, $a3, 31
	xor	$a3, $a3, $a5
	sub.w	$a3, $a3, $a5
	bgeu	$a3, $a7, .LBB0_77
# %bb.75:                               # %if.then887
                                        #   in Loop: Header=BB0_74 Depth=1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_74
# %bb.76:
	move	$a4, $a0
.LBB0_77:                               # %for.end910.loopexit
	bstrpick.d	$a1, $a4, 31, 1
	addi.w	$a0, $a1, 0
	ret
.LBB0_78:                               # %if.else192
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_102
# %bb.79:                               # %for.body210.preheader
	sub.w	$a1, $a3, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a4, $a1, $a4
	addi.w	$a0, $a0, 1
	bstrpick.d	$a6, $a0, 31, 0
	addi.d	$a1, $a2, 44
	addi.d	$a2, $a6, -2
.LBB0_80:                               # %for.body210
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	move	$a7, $a4
	sub.w	$a4, $a3, $a6
	srai.d	$a6, $a4, 31
	xor	$a4, $a4, $a6
	sub.w	$a4, $a4, $a6
	bgeu	$a4, $a7, .LBB0_83
# %bb.81:                               # %if.then230
                                        #   in Loop: Header=BB0_80 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_80
# %bb.82:
	move	$a5, $a0
.LBB0_83:                               # %for.end253.loopexit
	bstrpick.d	$a1, $a5, 31, 1
	addi.w	$a0, $a1, 0
	ret
.LBB0_84:                               # %if.else429
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_100
# %bb.85:                               # %for.body447.preheader
	sub.w	$a1, $a3, $a4
	srai.d	$a4, $a1, 31
	xor	$a1, $a1, $a4
	sub.w	$a6, $a1, $a4
	addi.w	$a4, $a0, 1
	bstrpick.d	$a1, $a4, 31, 0
	addi.d	$a2, $a2, 44
	addi.d	$a5, $a1, -2
	ori	$a1, $zero, 2
.LBB0_86:                               # %for.body447
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	move	$t0, $a6
	sub.w	$a6, $a3, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	bgeu	$a6, $t0, .LBB0_100
# %bb.87:                               # %if.then467
                                        #   in Loop: Header=BB0_86 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB0_86
# %bb.88:
	move	$a1, $a4
	b	.LBB0_100
.LBB0_89:                               # %if.else675
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_102
# %bb.90:                               # %for.body693.preheader
	sub.w	$a1, $a4, $a3
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a3, $a1, $a3
	addi.w	$a0, $a0, 1
	bstrpick.d	$a6, $a0, 31, 0
	addi.d	$a1, $a2, 40
	addi.d	$a2, $a6, -2
.LBB0_91:                               # %for.body693
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	move	$a7, $a3
	sub.w	$a3, $a4, $a6
	srai.d	$a6, $a3, 31
	xor	$a3, $a3, $a6
	sub.w	$a3, $a3, $a6
	bgeu	$a3, $a7, .LBB0_94
# %bb.92:                               # %if.then713
                                        #   in Loop: Header=BB0_91 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB0_91
# %bb.93:
	move	$a5, $a0
.LBB0_94:                               # %for.end736.loopexit
	bstrpick.d	$a1, $a5, 31, 1
	addi.w	$a0, $a1, 0
	ret
.LBB0_95:                               # %if.else912
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB0_100
# %bb.96:                               # %for.body930.preheader
	sub.w	$a1, $a4, $a3
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.w	$a6, $a1, $a3
	addi.w	$a3, $a0, 1
	bstrpick.d	$a1, $a3, 31, 0
	addi.d	$a2, $a2, 40
	addi.d	$a5, $a1, -2
	ori	$a1, $zero, 2
.LBB0_97:                               # %for.body930
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	move	$t0, $a6
	sub.w	$a6, $a4, $a7
	srai.d	$a7, $a6, 31
	xor	$a6, $a6, $a7
	sub.w	$a6, $a6, $a7
	bgeu	$a6, $t0, .LBB0_100
# %bb.98:                               # %if.then950
                                        #   in Loop: Header=BB0_97 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB0_97
.LBB0_99:
	move	$a1, $a3
.LBB0_100:                              # %for.end973
	add.d	$a0, $a1, $a0
.LBB0_101:                              # %if.end982
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 1
.LBB0_102:                              # %if.end982
	addi.w	$a0, $a1, 0
	ret
.Lfunc_end0:
	.size	findLoc, .Lfunc_end0-findLoc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
