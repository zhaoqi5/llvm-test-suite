	.file	"block.c"
	.text
	.globl	intrapred                       # -- Begin function intrapred
	.p2align	5
	.type	intrapred,@function
intrapred:                              # @intrapred
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	move	$s1, $a0
	ldptr.d	$a0, $a0, 5544
	ld.d	$a5, $a5, 0
	lu12i.w	$a6, 77
	slli.d	$a4, $a4, 3
	ldx.d	$a0, $a0, $a4
	ori	$a4, $a6, 1528
	ldx.d	$s2, $a5, $a4
	ld.w	$s6, $s1, 4
	ldx.bu	$s5, $a0, $a3
	pcalau12i	$s3, %pc_hi20(getNeighbour)
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	move	$fp, $a2
	move	$s0, $a1
	addi.w	$s7, $a1, -1
	addi.d	$a4, $sp, 152
	move	$a0, $s6
	move	$a1, $s7
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$s4, $fp, 1
	addi.d	$a4, $sp, 176
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s4
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a2, $fp, 2
	addi.d	$a4, $sp, 200
	move	$a0, $s6
	move	$a1, $s7
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a2, $fp, 3
	addi.d	$a4, $sp, 224
	move	$a0, $s6
	move	$a1, $s7
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$s8, $fp, -1
	addi.d	$a4, $sp, 128
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.w	$a1, $s0, 4
	addi.d	$a4, $sp, 104
	move	$a0, $s6
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s3, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 80
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 104
	beqz	$a0, .LBB0_2
# %bb.1:                                # %land.rhs
	addi.d	$a0, $s0, -4
	sltu	$a0, $zero, $a0
	move	$a1, $fp
	bstrins.d	$a1, $zero, 3, 3
	addi.d	$a1, $a1, -4
	sltu	$a1, $zero, $a1
	or	$a3, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a3, $zero
.LBB0_3:                                # %land.end22
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1148
	st.w	$a3, $sp, 104
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_12
# %bb.4:                                # %for.cond25.preheader
	ld.w	$a0, $sp, 152
	beqz	$a0, .LBB0_14
# %bb.5:                                # %cond.true
	ld.w	$a0, $sp, 156
	ld.d	$a1, $s1, 16
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ld.w	$a1, $sp, 176
	beqz	$a1, .LBB0_15
.LBB0_6:                                # %cond.true.1
	ld.w	$a1, $sp, 180
	ld.d	$a2, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $a2, $a1
	ld.w	$a1, $sp, 200
	beqz	$a1, .LBB0_16
.LBB0_7:                                # %cond.true.2
	ld.w	$a1, $sp, 204
	ld.d	$a4, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a4, $a4, $a1
	ld.w	$a1, $sp, 224
	beqz	$a1, .LBB0_17
.LBB0_8:                                # %cond.true.3
	ld.w	$a1, $sp, 228
	ld.d	$a5, $s1, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	ld.w	$a5, $sp, 128
	and	$a2, $a2, $a0
	beqz	$a5, .LBB0_18
.LBB0_9:                                # %cond.true41
	ld.w	$a0, $sp, 132
	ld.d	$a5, $s1, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a5, $a0
	and	$a2, $a4, $a2
	beqz	$a3, .LBB0_19
.LBB0_10:                               # %cond.true51
	ld.w	$a3, $sp, 108
	ld.d	$a4, $s1, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	ld.w	$a4, $sp, 80
	and	$a1, $a1, $a2
	beqz	$a4, .LBB0_20
.LBB0_11:                               # %cond.true61
	ld.w	$a2, $sp, 84
	ld.d	$a4, $s1, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a4, $a2
	bnez	$a0, .LBB0_13
	b	.LBB0_21
.LBB0_12:                               # %if.else
	ld.w	$a1, $sp, 152
	ld.w	$a0, $sp, 128
	ld.w	$a2, $sp, 80
	beqz	$a0, .LBB0_21
.LBB0_13:                               # %if.then75
	ld.w	$a4, $sp, 148
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a5, $sp, 144
	alsl.d	$a6, $a5, $a4, 1
	slli.d	$a5, $a5, 1
	ldx.hu	$t4, $a4, $a5
	ld.hu	$t8, $a6, 2
	ld.hu	$t7, $a6, 4
	ld.hu	$s8, $a6, 6
	b	.LBB0_22
.LBB0_14:
	move	$a0, $zero
	ld.w	$a1, $sp, 176
	bnez	$a1, .LBB0_6
.LBB0_15:
	move	$a2, $zero
	ld.w	$a1, $sp, 200
	bnez	$a1, .LBB0_7
.LBB0_16:
	move	$a4, $zero
	ld.w	$a1, $sp, 224
	bnez	$a1, .LBB0_8
.LBB0_17:
	move	$a1, $zero
	ld.w	$a5, $sp, 128
	and	$a2, $a2, $a0
	bnez	$a5, .LBB0_9
.LBB0_18:
	move	$a0, $zero
	and	$a2, $a4, $a2
	bnez	$a3, .LBB0_10
.LBB0_19:
	move	$a3, $zero
	ld.w	$a4, $sp, 80
	and	$a1, $a1, $a2
	bnez	$a4, .LBB0_11
.LBB0_20:
	move	$a2, $zero
	bnez	$a0, .LBB0_13
.LBB0_21:                               # %if.else106
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1796
	ldx.h	$s8, $s1, $a4
	move	$t7, $s8
	move	$t8, $s8
	move	$t4, $s8
.LBB0_22:                               # %if.end111
	move	$s6, $s8
	move	$t5, $s8
	move	$t3, $s8
	move	$s3, $s8
	beqz	$a3, .LBB0_24
# %bb.23:                               # %if.then113
	ld.w	$a3, $sp, 124
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a4, $sp, 120
	alsl.d	$a5, $a4, $a3, 1
	slli.d	$a4, $a4, 1
	ldx.hu	$s6, $a3, $a4
	ld.hu	$t5, $a5, 2
	ld.hu	$t3, $a5, 4
	ld.hu	$s3, $a5, 6
.LBB0_24:                               # %if.end152
	beqz	$a1, .LBB0_31
# %bb.25:                               # %if.then154
	ld.w	$a3, $sp, 172
	ld.w	$a4, $sp, 168
	ld.w	$a5, $sp, 196
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a4, 1
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 192
	ldx.d	$a5, $s2, $a5
	ldx.hu	$s7, $a3, $a4
	ld.w	$a3, $sp, 220
	slli.d	$a4, $a6, 1
	ldx.hu	$t1, $a5, $a4
	ld.w	$a4, $sp, 244
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $s2, $a3
	ld.w	$a5, $sp, 216
	slli.d	$a4, $a4, 3
	ld.w	$a6, $sp, 240
	ldx.d	$a4, $s2, $a4
	slli.d	$a5, $a5, 1
	ldx.hu	$a7, $a3, $a5
	slli.d	$a3, $a6, 1
	ldx.hu	$a6, $a4, $a3
	beqz	$a2, .LBB0_32
.LBB0_26:                               # %if.then200
	ld.w	$a3, $sp, 100
	slli.d	$a3, $a3, 3
	ld.w	$a4, $sp, 96
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a3, $a4
	ori	$a3, $zero, 8
	bltu	$a3, $s5, .LBB0_33
.LBB0_27:                               # %if.end212
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$t5, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	addi.w	$ra, $s0, 1
	addi.w	$t3, $s0, 2
	slli.d	$a3, $s5, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_0)
	ldx.w	$a3, $a4, $a3
	addi.w	$t5, $s0, 3
	addi.w	$a5, $s4, 0
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s5, $t0, 0
	add.d	$a3, $a4, $a3
	addi.w	$t6, $t2, 0
	jr	$a3
.LBB0_28:                               # %sw.bb303
	bnez	$a0, .LBB0_30
# %bb.29:                               # %if.then305
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
.LBB0_30:                               # %if.end307
	ld.w	$a0, $sp, 148
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $sp, 144
	addi.d	$a2, $s1, 104
	alsl.d	$a3, $a1, $a0, 1
	slli.d	$a1, $a1, 1
	ldx.h	$a4, $a0, $a1
	slli.d	$a5, $fp, 5
	add.d	$a5, $a2, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	addi.d	$a7, $a6, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	addi.d	$t0, $a6, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	addi.d	$t1, $a6, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a4, $a0, $a1
	slli.d	$a5, $s4, 5
	add.d	$a5, $a2, $a5
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a4, $a0, $a1
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $a2, $a5
	stx.h	$a4, $a5, $a6
	ld.h	$a4, $a3, 2
	stx.h	$a4, $a5, $a7
	ld.h	$a4, $a3, 4
	stx.h	$a4, $a5, $t0
	ld.h	$a4, $a3, 6
	stx.h	$a4, $a5, $t1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $t2, 5
	add.d	$a1, $a2, $a1
	stx.h	$a0, $a1, $a6
	ld.h	$a0, $a3, 2
	stx.h	$a0, $a1, $a7
	ld.h	$a0, $a3, 4
	stx.h	$a0, $a1, $t0
	ld.h	$a2, $a3, 6
	move	$a0, $zero
	stx.h	$a2, $a1, $t1
	b	.LBB0_73
.LBB0_31:                               # %if.else191
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1796
	ldx.h	$s7, $s1, $a3
	move	$t1, $s7
	move	$a7, $s7
	move	$a6, $s7
	bnez	$a2, .LBB0_26
.LBB0_32:                               # %if.else208
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1796
	ldx.h	$a4, $s1, $a3
	ori	$a3, $zero, 8
	bgeu	$a3, $s5, .LBB0_27
.LBB0_33:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_73
.LBB0_34:                               # %sw.bb373
	beqz	$a0, .LBB0_37
# %bb.35:                               # %sw.bb373
	beqz	$a1, .LBB0_37
# %bb.36:                               # %sw.bb373
	bnez	$a2, .LBB0_38
.LBB0_37:                               # %if.then378
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $t7
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $t8
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$t3, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $t4
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $a7
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a6, $s5
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	move	$a7, $s4
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	move	$t4, $s2
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$t8, $s6
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_38:                               # %if.end381
	move	$a0, $zero
	bstrpick.d	$a1, $a6, 15, 0
	bstrpick.d	$a2, $a7, 15, 0
	bstrpick.d	$a3, $t1, 15, 0
	addi.d	$a4, $a3, 2
	add.d	$a1, $a4, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	addi.d	$a5, $s1, 104
	slli.d	$a6, $t6, 5
	add.d	$a6, $a5, $a6
	slli.d	$a7, $s0, 1
	stx.h	$a1, $a6, $a7
	bstrpick.d	$a1, $s7, 15, 0
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	slli.d	$a3, $ra, 1
	stx.h	$a2, $a6, $a3
	slli.d	$t0, $s5, 5
	add.d	$t0, $a5, $t0
	stx.h	$a2, $t0, $a7
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 15, 0
	alsl.d	$a4, $a1, $a4, 1
	add.d	$a4, $a4, $a2
	srli.d	$a4, $a4, 2
	slli.d	$t1, $t3, 1
	stx.h	$a4, $a6, $t1
	stx.h	$a4, $t0, $a3
	ld.d	$t2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 5
	add.d	$t2, $a5, $t2
	stx.h	$a4, $t2, $a7
	bstrpick.d	$a4, $t4, 15, 0
	addi.d	$t3, $a4, 2
	add.d	$a1, $t3, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	slli.d	$t4, $t5, 1
	stx.h	$a1, $a6, $t4
	stx.h	$a1, $t0, $t1
	stx.h	$a1, $t2, $a3
	slli.d	$a6, $fp, 5
	add.d	$a5, $a5, $a6
	stx.h	$a1, $a5, $a7
	bstrpick.d	$a1, $t8, 15, 0
	addi.d	$a6, $a1, 2
	alsl.d	$a4, $a4, $a6, 1
	add.d	$a2, $a4, $a2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t0, $t4
	stx.h	$a2, $t2, $t1
	stx.h	$a2, $a5, $a3
	bstrpick.d	$a2, $t7, 15, 0
	add.d	$a3, $t3, $a2
	alsl.d	$a1, $a1, $a3, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t2, $t4
	stx.h	$a1, $a5, $t1
	bstrpick.d	$a1, $s8, 15, 0
	add.d	$a1, $a6, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $t4
	b	.LBB0_73
.LBB0_39:                               # %sw.bb
	move	$t3, $a6
	beqz	$a0, .LBB0_64
# %bb.40:                               # %sw.bb
	beqz	$a1, .LBB0_64
# %bb.41:                               # %if.then216
	bstrpick.d	$a0, $t4, 15, 0
	bstrpick.d	$a1, $t8, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $s8, 15, 0
	bstrpick.d	$a4, $s7, 15, 0
	bstrpick.d	$a5, $t1, 15, 0
	bstrpick.d	$a6, $a7, 15, 0
	bstrpick.d	$a7, $t3, 15, 0
	add.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 4
	bstrpick.d	$a1, $a0, 31, 3
	b	.LBB0_72
.LBB0_42:                               # %sw.bb545
	bnez	$a0, .LBB0_44
# %bb.43:                               # %if.then547
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s4, $t7
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	move	$s2, $t3
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $ra
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$ra, $s7
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	move	$t3, $s2
	move	$t8, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	move	$t7, $s4
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_44:                               # %if.end550
	move	$a0, $zero
	bstrpick.d	$a1, $t4, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $t8, 15, 0
	addi.d	$a4, $a2, 2
	add.d	$a1, $a4, $a1
	alsl.d	$a1, $a3, $a1, 1
	srli.d	$a1, $a1, 2
	addi.d	$a5, $s1, 104
	slli.d	$a6, $fp, 5
	add.d	$a6, $a5, $a6
	slli.d	$a7, $s0, 1
	stx.h	$a1, $a6, $a7
	bstrpick.d	$a1, $s8, 15, 0
	addi.d	$t0, $a1, 2
	add.d	$a3, $t0, $a3
	alsl.d	$a2, $a2, $a3, 1
	srli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$a3, $a5, $a3
	stx.h	$a2, $a3, $a7
	slli.d	$t1, $ra, 1
	stx.h	$a2, $a6, $t1
	bstrpick.d	$a2, $s6, 15, 0
	alsl.d	$a1, $a1, $a4, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	slli.d	$a4, $s5, 5
	add.d	$a4, $a5, $a4
	stx.h	$a1, $a4, $a7
	stx.h	$a1, $a3, $t1
	slli.d	$t2, $t3, 1
	stx.h	$a1, $a6, $t2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	add.d	$t0, $t0, $a1
	alsl.d	$t0, $a2, $t0, 1
	srli.d	$t0, $t0, 2
	slli.d	$t3, $t6, 5
	add.d	$a5, $a5, $t3
	stx.h	$t0, $a5, $a7
	stx.h	$t0, $a4, $t1
	stx.h	$t0, $a3, $t2
	slli.d	$a7, $t5, 1
	stx.h	$t0, $a6, $a7
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a6, $a6, 15, 0
	add.d	$a2, $a2, $a6
	alsl.d	$a2, $a1, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a5, $t1
	stx.h	$a2, $a4, $t2
	stx.h	$a2, $a3, $a7
	bstrpick.d	$a2, $s3, 15, 0
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a6, $a1, 1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $t2
	stx.h	$a1, $a4, $a7
	alsl.d	$a1, $a2, $a2, 1
	add.d	$a1, $a6, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a5, $a7
	b	.LBB0_73
.LBB0_45:                               # %sw.bb906
	bnez	$a0, .LBB0_47
# %bb.46:                               # %if.then908
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $t7
	move	$s4, $t5
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	move	$s7, $t3
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $ra
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$ra, $s2
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	move	$t3, $s7
	move	$t8, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$t5, $s4
	move	$t7, $s3
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_47:                               # %if.end911
	move	$a0, $zero
	bstrpick.d	$a1, $t4, 15, 0
	bstrpick.d	$a2, $t8, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	slli.d	$a5, $fp, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a3, $a5, $a6
	bstrpick.d	$a3, $t7, 15, 0
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	slli.d	$t0, $s5, 5
	add.d	$t0, $a4, $t0
	stx.h	$a7, $t0, $a6
	slli.d	$t1, $ra, 1
	stx.h	$a7, $a5, $t1
	bstrpick.d	$a7, $s8, 15, 0
	add.d	$t2, $a7, $a3
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	stx.h	$t2, $t0, $t1
	slli.d	$t3, $t3, 1
	stx.h	$t2, $a5, $t3
	bstrpick.d	$t2, $s6, 15, 0
	add.d	$t4, $a7, $t2
	addi.d	$t4, $t4, 1
	srli.d	$t4, $t4, 1
	slli.d	$t5, $t5, 1
	stx.h	$t4, $a5, $t5
	stx.h	$t4, $t0, $t3
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a5, 15, 0
	add.d	$t4, $t2, $a5
	addi.d	$t4, $t4, 1
	srli.d	$t4, $t4, 1
	stx.h	$t4, $t0, $t5
	addi.d	$t0, $a3, 2
	add.d	$a1, $t0, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t4, $t4, 5
	add.d	$t4, $a4, $t4
	stx.h	$a1, $t4, $a6
	addi.d	$a1, $a7, 2
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	srli.d	$a2, $a2, 2
	slli.d	$a3, $t6, 5
	add.d	$a3, $a4, $a3
	stx.h	$a2, $a3, $a6
	stx.h	$a2, $t4, $t1
	alsl.d	$a2, $a7, $t0, 1
	add.d	$a2, $a2, $t2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a3, $t1
	stx.h	$a2, $t4, $t3
	alsl.d	$a1, $t2, $a1, 1
	add.d	$a1, $a1, $a5
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t3
	stx.h	$a1, $t4, $t5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	alsl.d	$a2, $a5, $t2, 1
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t5
	b	.LBB0_73
.LBB0_48:                               # %sw.bb336
	bnez	$a1, .LBB0_50
# %bb.49:                               # %if.then338
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
.LBB0_50:                               # %if.end341
	ld.w	$a0, $sp, 172
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 168
	ldx.d	$a3, $s2, $a0
	addi.d	$a0, $s1, 104
	slli.d	$a4, $a1, 1
	ldx.h	$a5, $a3, $a4
	slli.d	$a1, $fp, 5
	add.d	$a6, $a0, $a1
	slli.d	$a1, $s0, 1
	stx.h	$a5, $a6, $a1
	addi.d	$a2, $a1, 2
	stx.h	$a5, $a6, $a2
	ldx.h	$a5, $a3, $a4
	ld.w	$a4, $sp, 196
	addi.d	$a3, $a1, 4
	stx.h	$a5, $a6, $a3
	slli.d	$a4, $a4, 3
	ld.w	$a7, $sp, 192
	ldx.d	$t0, $s2, $a4
	addi.d	$a4, $a1, 6
	stx.h	$a5, $a6, $a4
	slli.d	$a5, $a7, 1
	ldx.h	$a6, $t0, $a5
	slli.d	$a7, $s4, 5
	add.d	$a7, $a0, $a7
	ld.w	$t1, $sp, 220
	stx.h	$a6, $a7, $a1
	stx.h	$a6, $a7, $a2
	ldx.h	$a5, $t0, $a5
	slli.d	$a6, $t1, 3
	ld.w	$t0, $sp, 216
	ldx.d	$a6, $s2, $a6
	stx.h	$a5, $a7, $a3
	stx.h	$a5, $a7, $a4
	slli.d	$a5, $t0, 1
	ldx.h	$a7, $a6, $a5
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	slli.d	$t0, $t0, 5
	add.d	$t0, $a0, $t0
	ld.w	$t1, $sp, 244
	stx.h	$a7, $t0, $a1
	stx.h	$a7, $t0, $a2
	ldx.h	$a5, $a6, $a5
	slli.d	$a6, $t1, 3
	ld.w	$a7, $sp, 240
	ldx.d	$a6, $s2, $a6
	stx.h	$a5, $t0, $a3
	stx.h	$a5, $t0, $a4
	slli.d	$a5, $a7, 1
	ldx.h	$a7, $a6, $a5
	slli.d	$t0, $t2, 5
	add.d	$t0, $a0, $t0
	stx.h	$a7, $t0, $a1
	stx.h	$a7, $t0, $a2
	ldx.h	$a1, $a6, $a5
	move	$a0, $zero
	stx.h	$a1, $t0, $a3
	stx.h	$a1, $t0, $a4
	b	.LBB0_73
.LBB0_51:                               # %sw.bb712
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_54
# %bb.52:                               # %sw.bb712
	beqz	$a1, .LBB0_54
# %bb.53:                               # %sw.bb712
	bnez	$a2, .LBB0_55
.LBB0_54:                               # %if.then718
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $t7
	move	$s4, $t5
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	move	$s6, $t3
	st.d	$t4, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $ra
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$ra, $s2
	ld.d	$t4, $sp, 16                    # 8-byte Folded Reload
	move	$t3, $s6
	move	$t8, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$t5, $s4
	move	$t7, $s3
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_55:                               # %if.end721
	move	$a0, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a4, $t4, 15, 0
	add.d	$a2, $a4, $a1
	addi.d	$a2, $a2, 1
	srli.d	$a5, $a2, 1
	addi.d	$a6, $s1, 104
	slli.d	$a2, $s5, 5
	add.d	$a3, $a6, $a2
	slli.d	$a7, $ra, 1
	stx.h	$a5, $a3, $a7
	slli.d	$a2, $fp, 5
	add.d	$t0, $a6, $a2
	slli.d	$a2, $s0, 1
	stx.h	$a5, $t0, $a2
	bstrpick.d	$a5, $t8, 15, 0
	add.d	$t1, $a5, $a4
	addi.d	$t1, $t1, 1
	srli.d	$t1, $t1, 1
	slli.d	$t2, $t3, 1
	stx.h	$t1, $a3, $t2
	stx.h	$t1, $t0, $a7
	bstrpick.d	$t1, $t7, 15, 0
	slli.d	$t3, $t5, 1
	bstrpick.d	$t4, $s8, 15, 0
	add.d	$t5, $t1, $t4
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	stx.h	$t5, $t0, $t3
	add.d	$t5, $t1, $a5
	addi.d	$t5, $t5, 1
	srli.d	$t5, $t5, 1
	stx.h	$t5, $t0, $t2
	stx.h	$t5, $a3, $t3
	bstrpick.d	$t0, $s7, 15, 0
	addi.d	$t5, $a4, 2
	slli.d	$t6, $t6, 5
	add.d	$t6, $a6, $t6
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t7, $t7, 5
	add.d	$a6, $a6, $t7
	add.d	$t7, $t5, $t0
	alsl.d	$t7, $a1, $t7, 1
	srli.d	$t7, $t7, 2
	stx.h	$t7, $t6, $a7
	stx.h	$t7, $a6, $a2
	addi.d	$t7, $a5, 2
	alsl.d	$a4, $a4, $t7, 1
	add.d	$a4, $a4, $a1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $t6, $t2
	stx.h	$a4, $a6, $a7
	add.d	$a4, $t5, $t1
	alsl.d	$a4, $a5, $a4, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $t6, $t3
	stx.h	$a4, $a6, $t2
	add.d	$a4, $t7, $t4
	alsl.d	$a4, $t1, $a4, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a6, $t3
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 15, 0
	alsl.d	$a1, $t0, $a1, 1
	add.d	$a1, $a1, $a4
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	alsl.d	$a3, $a4, $t0, 1
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t6, $a2
	b	.LBB0_73
.LBB0_56:                               # %sw.bb1239
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_59
# %bb.57:                               # %sw.bb1239
	beqz	$a1, .LBB0_59
# %bb.58:                               # %sw.bb1239
	bnez	$a2, .LBB0_60
.LBB0_59:                               # %if.then1245
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $t7
	move	$s4, $t5
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	move	$s5, $t8
	move	$s6, $t3
	move	$s8, $t4
	move	$s2, $ra
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$ra, $s2
	move	$t4, $s8
	move	$t3, $s6
	move	$t8, $s5
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$t5, $s4
	move	$t7, $s3
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_60:                               # %if.end1248
	move	$a0, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a2, $s7, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $t3, 1
	stx.h	$a3, $a5, $a6
	slli.d	$a7, $fp, 5
	add.d	$a7, $a4, $a7
	slli.d	$t0, $s0, 1
	stx.h	$a3, $a7, $t0
	bstrpick.d	$a3, $t4, 15, 0
	addi.d	$t1, $a3, 2
	add.d	$t2, $t1, $a2
	alsl.d	$t2, $a1, $t2, 1
	srli.d	$t2, $t2, 2
	slli.d	$t3, $t5, 1
	stx.h	$t2, $a5, $t3
	slli.d	$t4, $ra, 1
	stx.h	$t2, $a7, $t4
	bstrpick.d	$t2, $t8, 15, 0
	add.d	$t5, $a1, $t2
	alsl.d	$a3, $a3, $t5, 1
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	stx.h	$a3, $a7, $a6
	bstrpick.d	$a3, $t7, 15, 0
	add.d	$a3, $t1, $a3
	alsl.d	$a3, $t2, $a3, 1
	srli.d	$a3, $a3, 2
	stx.h	$a3, $a7, $t3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 15, 0
	add.d	$a7, $a2, $a3
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	slli.d	$t1, $s5, 5
	add.d	$t1, $a4, $t1
	stx.h	$a7, $t1, $a6
	stx.h	$a7, $a5, $t0
	addi.d	$a7, $a3, 2
	alsl.d	$t2, $a2, $a7, 1
	add.d	$a1, $t2, $a1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t1, $t3
	stx.h	$a1, $a5, $t4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 15, 0
	add.d	$a5, $a3, $a1
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	slli.d	$t2, $t6, 5
	add.d	$a4, $a4, $t2
	stx.h	$a5, $a4, $a6
	stx.h	$a5, $t1, $t0
	alsl.d	$a2, $a3, $a2, 1
	add.d	$a2, $a2, $a1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a4, $t3
	stx.h	$a2, $t1, $t4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 15, 0
	add.d	$a3, $a1, $a2
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	stx.h	$a3, $a4, $t0
	alsl.d	$a1, $a1, $a7, 1
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a4, $t4
	b	.LBB0_73
.LBB0_61:                               # %sw.bb1092
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	bnez	$a1, .LBB0_63
# %bb.62:                               # %if.then1094
	ld.w	$a1, $s1, 4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	move	$s3, $t5
	move	$s4, $t3
	move	$s6, $ra
	move	$s8, $a7
	move	$s2, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t1, $s2
	move	$a7, $s8
	move	$ra, $s6
	move	$t3, $s4
	move	$t5, $s3
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
.LBB0_63:                               # %if.end1097
	move	$a0, $zero
	bstrpick.d	$a1, $s7, 15, 0
	bstrpick.d	$a2, $t1, 15, 0
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $s1, 104
	slli.d	$a5, $fp, 5
	add.d	$a5, $a4, $a5
	slli.d	$a6, $s0, 1
	stx.h	$a3, $a5, $a6
	bstrpick.d	$a3, $a7, 15, 0
	addi.d	$a7, $a3, 2
	add.d	$a1, $a7, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	slli.d	$t0, $ra, 1
	stx.h	$a1, $a5, $t0
	add.d	$a1, $a2, $a3
	addi.d	$a1, $a1, 1
	srli.d	$a1, $a1, 1
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 5
	add.d	$t1, $a4, $t1
	stx.h	$a1, $t1, $a6
	slli.d	$t2, $t3, 1
	stx.h	$a1, $a5, $t2
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a1, $t4, 15, 0
	add.d	$a2, $a1, $a2
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	slli.d	$t3, $t5, 1
	stx.h	$a2, $a5, $t3
	stx.h	$a2, $t1, $t0
	add.d	$a2, $a3, $a1
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	slli.d	$a3, $s5, 5
	add.d	$a3, $a4, $a3
	stx.h	$a2, $a3, $a6
	stx.h	$a2, $t1, $t2
	add.d	$a2, $a7, $a1
	alsl.d	$a1, $a1, $a2, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t0
	stx.h	$a1, $t1, $t3
	slli.d	$a1, $t6, 5
	add.d	$a1, $a4, $a1
	stx.h	$t4, $a1, $t3
	stx.h	$t4, $a1, $t2
	stx.h	$t4, $a3, $t2
	stx.h	$t4, $a1, $a6
	stx.h	$t4, $a1, $t0
	stx.h	$t4, $a3, $t3
	b	.LBB0_73
.LBB0_64:                               # %if.else241
	bnez	$a0, .LBB0_67
# %bb.65:                               # %if.else241
	beqz	$a1, .LBB0_67
# %bb.66:                               # %if.then245
	bstrpick.d	$a0, $s7, 15, 0
	bstrpick.d	$a1, $t1, 15, 0
	bstrpick.d	$a2, $a7, 15, 0
	bstrpick.d	$a3, $t3, 15, 0
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	b	.LBB0_70
.LBB0_67:                               # %if.else259
	beqz	$a0, .LBB0_71
# %bb.68:                               # %if.else259
	bnez	$a1, .LBB0_71
# %bb.69:                               # %if.then263
	bstrpick.d	$a0, $t4, 15, 0
	bstrpick.d	$a1, $t8, 15, 0
	bstrpick.d	$a2, $t7, 15, 0
	bstrpick.d	$a3, $s8, 15, 0
	add.d	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
.LBB0_70:                               # %if.end281
	addi.d	$a0, $a0, 2
	srli.d	$a1, $a0, 2
	b	.LBB0_72
.LBB0_71:                               # %if.else277
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $s1, $a0
.LBB0_72:                               # %if.end281
	move	$a0, $zero
	addi.d	$a2, $s1, 104
	slli.d	$a3, $fp, 5
	add.d	$a3, $a2, $a3
	slli.d	$a4, $s0, 1
	stx.h	$a1, $a3, $a4
	addi.d	$a5, $a4, 2
	stx.h	$a1, $a3, $a5
	addi.d	$a6, $a4, 4
	stx.h	$a1, $a3, $a6
	addi.d	$a7, $a4, 6
	stx.h	$a1, $a3, $a7
	slli.d	$a3, $s4, 5
	add.d	$a3, $a2, $a3
	stx.h	$a1, $a3, $a4
	stx.h	$a1, $a3, $a5
	stx.h	$a1, $a3, $a6
	stx.h	$a1, $a3, $a7
	slli.d	$a3, $t0, 5
	add.d	$a3, $a2, $a3
	stx.h	$a1, $a3, $a4
	stx.h	$a1, $a3, $a5
	stx.h	$a1, $a3, $a6
	stx.h	$a1, $a3, $a7
	slli.d	$a3, $t2, 5
	add.d	$a2, $a2, $a3
	stx.h	$a1, $a2, $a4
	stx.h	$a1, $a2, $a5
	stx.h	$a1, $a2, $a6
	stx.h	$a1, $a2, $a7
.LBB0_73:                               # %cleanup
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end0:
	.size	intrapred, .Lfunc_end0-intrapred
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_48-.LJTI0_0
	.word	.LBB0_39-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_34-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
	.word	.LBB0_56-.LJTI0_0
	.word	.LBB0_45-.LJTI0_0
	.word	.LBB0_61-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_luma_16x16
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI1_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_2:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
.LCPI1_4:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	8                               # 0x8
	.text
	.globl	intrapred_luma_16x16
	.p2align	5
	.type	intrapred_luma_16x16,@function
intrapred_luma_16x16:                   # @intrapred_luma_16x16
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 448                  # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	move	$fp, $a0
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1528
	ldx.d	$s3, $a2, $a0
	ld.w	$s1, $fp, 4
	pcalau12i	$s4, %pc_hi20(getNeighbour)
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	move	$s0, $a1
	addi.w	$s2, $zero, -1
	addi.d	$a4, $sp, 16
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 40
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 64
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 88
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 112
	ori	$a2, $zero, 3
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 136
	ori	$a2, $zero, 4
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 160
	ori	$a2, $zero, 5
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 184
	ori	$a2, $zero, 6
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 208
	ori	$a2, $zero, 7
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 232
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 256
	ori	$a2, $zero, 9
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 280
	ori	$a2, $zero, 10
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 304
	ori	$a2, $zero, 11
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 328
	ori	$a2, $zero, 12
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 352
	ori	$a2, $zero, 13
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 376
	ori	$a2, $zero, 14
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 400
	ori	$a2, $zero, 15
	move	$a0, $s1
	move	$a1, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s4, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 424
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	ld.w	$a0, $sp, 424
	beqz	$a1, .LBB1_25
# %bb.1:                                # %if.else
	beqz	$a0, .LBB1_27
# %bb.2:                                # %cond.true
	ld.w	$a0, $sp, 428
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 40
	beqz	$a1, .LBB1_28
.LBB1_3:                                # %cond.true17
	ld.w	$a1, $sp, 44
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 64
	beqz	$a2, .LBB1_29
.LBB1_4:                                # %cond.true17.1
	ld.w	$a2, $sp, 68
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 88
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_30
.LBB1_5:                                # %cond.true17.2
	ld.w	$a2, $sp, 92
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 112
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_31
.LBB1_6:                                # %cond.true17.3
	ld.w	$a2, $sp, 116
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 136
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_32
.LBB1_7:                                # %cond.true17.4
	ld.w	$a2, $sp, 140
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 160
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_33
.LBB1_8:                                # %cond.true17.5
	ld.w	$a2, $sp, 164
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 184
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_34
.LBB1_9:                                # %cond.true17.6
	ld.w	$a2, $sp, 188
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 208
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_35
.LBB1_10:                               # %cond.true17.7
	ld.w	$a2, $sp, 212
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 232
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_36
.LBB1_11:                               # %cond.true17.8
	ld.w	$a2, $sp, 236
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 256
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_37
.LBB1_12:                               # %cond.true17.9
	ld.w	$a2, $sp, 260
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 280
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_38
.LBB1_13:                               # %cond.true17.10
	ld.w	$a2, $sp, 284
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 304
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_39
.LBB1_14:                               # %cond.true17.11
	ld.w	$a2, $sp, 308
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 328
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_40
.LBB1_15:                               # %cond.true17.12
	ld.w	$a2, $sp, 332
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 352
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_41
.LBB1_16:                               # %cond.true17.13
	ld.w	$a2, $sp, 356
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 376
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_42
.LBB1_17:                               # %cond.true17.14
	ld.w	$a2, $sp, 380
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 400
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_43
.LBB1_18:                               # %cond.true17.15
	ld.w	$a2, $sp, 404
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $sp, 16
	and	$a1, $a2, $a1
	beqz	$a3, .LBB1_44
.LBB1_19:                               # %cond.true33
	ld.w	$a2, $sp, 20
	ld.d	$a3, $fp, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a3, $a2
	ori	$a3, $zero, 3
	bltu	$a3, $s0, .LBB1_26
.LBB1_20:                               # %if.end
	slli.d	$a3, $s0, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB1_21:                               # %sw.bb
	bnez	$a0, .LBB1_23
# %bb.22:                               # %if.then43
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %if.end44
	ld.w	$a0, $sp, 444
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $s3, $a0
	ld.w	$a3, $sp, 440
	move	$a0, $zero
	addi.d	$a1, $fp, 104
	alsl.d	$a2, $a3, $a2, 1
	ori	$a3, $zero, 512
	.p2align	4, , 16
.LBB1_24:                               # %for.cond48.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a2, 0
	stx.h	$a4, $a1, $a0
	ld.h	$a4, $a2, 2
	add.d	$a5, $a1, $a0
	st.h	$a4, $a5, 2
	ld.h	$a4, $a2, 4
	st.h	$a4, $a5, 4
	ld.h	$a4, $a2, 6
	st.h	$a4, $a5, 6
	ld.h	$a4, $a2, 8
	st.h	$a4, $a5, 8
	ld.h	$a4, $a2, 10
	st.h	$a4, $a5, 10
	ld.h	$a4, $a2, 12
	st.h	$a4, $a5, 12
	ld.h	$a4, $a2, 14
	st.h	$a4, $a5, 14
	ld.h	$a4, $a2, 16
	st.h	$a4, $a5, 16
	ld.h	$a4, $a2, 18
	st.h	$a4, $a5, 18
	ld.h	$a4, $a2, 20
	st.h	$a4, $a5, 20
	ld.h	$a4, $a2, 22
	st.h	$a4, $a5, 22
	ld.h	$a4, $a2, 24
	st.h	$a4, $a5, 24
	ld.h	$a4, $a2, 26
	st.h	$a4, $a5, 26
	ld.h	$a4, $a2, 28
	st.h	$a4, $a5, 28
	ld.h	$a4, $a2, 30
	addi.d	$a0, $a0, 32
	st.h	$a4, $a5, 30
	bne	$a0, $a3, .LBB1_24
	b	.LBB1_58
.LBB1_25:                               # %if.then
	ld.w	$a1, $sp, 40
	ld.w	$a2, $sp, 16
	ori	$a3, $zero, 3
	bgeu	$a3, $s0, .LBB1_20
.LBB1_26:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_94
.LBB1_27:
	move	$a0, $zero
	ld.w	$a1, $sp, 40
	bnez	$a1, .LBB1_3
.LBB1_28:
	move	$a1, $zero
	ld.w	$a2, $sp, 64
	bnez	$a2, .LBB1_4
.LBB1_29:
	move	$a2, $zero
	ld.w	$a3, $sp, 88
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_5
.LBB1_30:
	move	$a2, $zero
	ld.w	$a3, $sp, 112
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_6
.LBB1_31:
	move	$a2, $zero
	ld.w	$a3, $sp, 136
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_7
.LBB1_32:
	move	$a2, $zero
	ld.w	$a3, $sp, 160
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_8
.LBB1_33:
	move	$a2, $zero
	ld.w	$a3, $sp, 184
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_9
.LBB1_34:
	move	$a2, $zero
	ld.w	$a3, $sp, 208
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_10
.LBB1_35:
	move	$a2, $zero
	ld.w	$a3, $sp, 232
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_11
.LBB1_36:
	move	$a2, $zero
	ld.w	$a3, $sp, 256
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_12
.LBB1_37:
	move	$a2, $zero
	ld.w	$a3, $sp, 280
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_13
.LBB1_38:
	move	$a2, $zero
	ld.w	$a3, $sp, 304
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_14
.LBB1_39:
	move	$a2, $zero
	ld.w	$a3, $sp, 328
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_15
.LBB1_40:
	move	$a2, $zero
	ld.w	$a3, $sp, 352
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_16
.LBB1_41:
	move	$a2, $zero
	ld.w	$a3, $sp, 376
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_17
.LBB1_42:
	move	$a2, $zero
	ld.w	$a3, $sp, 400
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_18
.LBB1_43:
	move	$a2, $zero
	ld.w	$a3, $sp, 16
	and	$a1, $a2, $a1
	bnez	$a3, .LBB1_19
.LBB1_44:
	move	$a2, $zero
	ori	$a3, $zero, 3
	bgeu	$a3, $s0, .LBB1_20
	b	.LBB1_26
.LBB1_45:                               # %for.cond99.preheader
	ld.w	$a2, $sp, 444
	ld.w	$a3, $sp, 440
	alsl.d	$a4, $a2, $s3, 3
	beqz	$a1, .LBB1_59
# %bb.46:                               # %for.body101.preheader
	beqz	$a0, .LBB1_62
# %bb.47:                               # %if.then103.1
	ld.d	$a2, $a4, 0
	ld.w	$a5, $sp, 60
	alsl.d	$a6, $a3, $a2, 1
	slli.d	$a7, $a3, 1
	ldx.hu	$a2, $a2, $a7
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s3, $a5
	ld.w	$a7, $sp, 56
	ld.hu	$a6, $a6, 2
	alsl.d	$a5, $a7, $a5, 1
	add.d	$a2, $a2, $a6
	b	.LBB1_63
.LBB1_48:                               # %sw.bb178
	beqz	$a0, .LBB1_51
# %bb.49:                               # %sw.bb178
	beqz	$a2, .LBB1_51
# %bb.50:                               # %sw.bb178
	bnez	$a1, .LBB1_52
.LBB1_51:                               # %if.then183
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %if.end234.7
	ld.w	$a1, $sp, 444
	move	$a0, $zero
	ld.w	$a2, $sp, 36
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s3, $a1
	ld.w	$a3, $sp, 440
	slli.d	$a2, $a2, 3
	ld.w	$a4, $sp, 32
	ldx.d	$a2, $s3, $a2
	alsl.d	$a5, $a3, $a1, 1
	ld.hu	$t4, $a5, 30
	slli.d	$a4, $a4, 1
	ldx.hu	$t6, $a2, $a4
	slli.d	$a2, $a3, 1
	ld.hu	$a3, $a5, 28
	ldx.hu	$a1, $a1, $a2
	sub.d	$a2, $t4, $t6
	ld.hu	$a4, $a5, 26
	ld.hu	$a6, $a5, 2
	sub.d	$a1, $a3, $a1
	slli.d	$a3, $a1, 3
	sub.d	$a1, $a3, $a1
	sub.d	$a3, $a4, $a6
	ori	$t3, $zero, 6
	ld.hu	$a4, $a5, 24
	ld.hu	$a6, $a5, 4
	ld.hu	$a7, $a5, 22
	ld.hu	$t0, $a5, 6
	mul.d	$a3, $a3, $t3
	sub.d	$a4, $a4, $a6
	alsl.d	$a4, $a4, $a4, 2
	sub.d	$a6, $a7, $t0
	ld.hu	$a7, $a5, 20
	ld.hu	$t0, $a5, 8
	ld.hu	$t1, $a5, 18
	ld.hu	$t2, $a5, 10
	ld.hu	$t5, $a5, 16
	ld.hu	$a5, $a5, 12
	sub.d	$a7, $a7, $t0
	alsl.d	$a7, $a7, $a7, 1
	sub.d	$t0, $t1, $t2
	sub.d	$a5, $t5, $a5
	alsl.d	$a5, $t0, $a5, 1
	add.d	$a5, $a7, $a5
	alsl.d	$a5, $a6, $a5, 2
	add.d	$a4, $a4, $a5
	add.d	$a3, $a3, $a4
	add.w	$a1, $a1, $a3
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a1, $a1, $a1, 2
	addi.w	$a1, $a1, 32
	srai.d	$t0, $a1, 6
	slli.d	$a1, $t0, 3
	sub.d	$a2, $a1, $t0
	mul.d	$a3, $t0, $t3
	slli.d	$a5, $t0, 2
	slli.d	$a4, $t0, 1
	ld.w	$t2, $sp, 420
	alsl.d	$a6, $t0, $t0, 1
	sub.d	$t1, $zero, $a6
	alsl.d	$a7, $t0, $t0, 2
	slli.d	$t2, $t2, 3
	ld.w	$t5, $sp, 416
	ldx.d	$t7, $s3, $t2
	sub.d	$t2, $zero, $a7
	ld.w	$t8, $sp, 396
	slli.d	$t5, $t5, 1
	ldx.hu	$t7, $t7, $t5
	ld.w	$t5, $sp, 60
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s3, $t8
	ld.w	$s0, $sp, 392
	slli.d	$t5, $t5, 3
	ld.w	$s1, $sp, 56
	ldx.d	$t5, $s3, $t5
	slli.d	$s0, $s0, 1
	ldx.hu	$t8, $t8, $s0
	slli.d	$s0, $s1, 1
	ldx.hu	$s0, $t5, $s0
	add.d	$t5, $t7, $t4
	ld.w	$s1, $sp, 372
	sub.d	$t4, $t7, $t6
	sub.d	$t6, $t8, $s0
	ld.w	$t7, $sp, 84
	slli.d	$t8, $s1, 3
	ldx.d	$t8, $s3, $t8
	ld.w	$s0, $sp, 368
	slli.d	$t7, $t7, 3
	ld.w	$s1, $sp, 80
	ldx.d	$t7, $s3, $t7
	slli.d	$s0, $s0, 1
	ldx.hu	$t8, $t8, $s0
	slli.d	$s0, $s1, 1
	ldx.hu	$t7, $t7, $s0
	slli.d	$s0, $t6, 3
	sub.d	$t6, $s0, $t6
	ld.w	$s0, $sp, 348
	sub.d	$t7, $t8, $t7
	ld.w	$t8, $sp, 344
	ld.w	$s1, $sp, 108
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s3, $s0
	slli.d	$t8, $t8, 1
	slli.d	$s1, $s1, 3
	ld.w	$s2, $sp, 104
	ldx.d	$s1, $s3, $s1
	ldx.hu	$t8, $s0, $t8
	ld.w	$s0, $sp, 324
	slli.d	$s2, $s2, 1
	ldx.hu	$s1, $s1, $s2
	ld.w	$s2, $sp, 132
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s3, $s0
	ld.w	$s4, $sp, 320
	slli.d	$s2, $s2, 3
	ld.w	$s5, $sp, 128
	ldx.d	$s2, $s3, $s2
	slli.d	$s4, $s4, 1
	ldx.hu	$s0, $s0, $s4
	slli.d	$s4, $s5, 1
	ldx.hu	$s2, $s2, $s4
	mul.d	$t3, $t7, $t3
	sub.d	$t7, $t8, $s1
	ld.w	$t8, $sp, 300
	sub.d	$s0, $s0, $s2
	ld.w	$s1, $sp, 296
	ld.w	$s2, $sp, 156
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $s3, $t8
	slli.d	$s1, $s1, 1
	slli.d	$s2, $s2, 3
	ld.w	$s4, $sp, 152
	ldx.d	$s2, $s3, $s2
	ldx.hu	$t8, $t8, $s1
	ld.w	$s1, $sp, 276
	slli.d	$s4, $s4, 1
	ldx.hu	$s2, $s2, $s4
	ld.w	$s4, $sp, 180
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $s3, $s1
	ld.w	$s5, $sp, 272
	slli.d	$s4, $s4, 3
	ld.w	$s6, $sp, 176
	ldx.d	$s4, $s3, $s4
	slli.d	$s5, $s5, 1
	ldx.hu	$s1, $s1, $s5
	slli.d	$s5, $s6, 1
	ldx.hu	$s4, $s4, $s5
	ld.w	$s5, $sp, 252
	addi.d	$s6, $zero, -6
	sub.d	$t8, $t8, $s2
	sub.d	$s1, $s1, $s4
	slli.d	$s2, $s5, 3
	ld.w	$s4, $sp, 248
	ldx.d	$s2, $s3, $s2
	ld.w	$s5, $sp, 204
	mul.d	$s6, $t0, $s6
	slli.d	$s4, $s4, 1
	ldx.hu	$s2, $s2, $s4
	slli.d	$s4, $s5, 3
	ldx.d	$s3, $s3, $s4
	ld.w	$s4, $sp, 200
	sub.d	$s5, $t0, $a1
	slli.d	$t5, $t5, 4
	addi.d	$t5, $t5, 16
	slli.d	$s4, $s4, 1
	ldx.hu	$s3, $s3, $s4
	lu12i.w	$s4, 1
	ori	$s4, $s4, 1804
	add.d	$s4, $fp, $s4
	alsl.d	$t7, $t7, $t7, 2
	alsl.d	$t8, $t8, $t8, 1
	sub.d	$s2, $s2, $s3
	alsl.d	$s1, $s1, $s2, 1
	add.d	$t8, $t8, $s1
	alsl.d	$t8, $s0, $t8, 2
	add.d	$t7, $t7, $t8
	add.d	$t3, $t3, $t7
	add.w	$t3, $t6, $t3
	alsl.d	$t3, $t4, $t3, 3
	alsl.d	$t3, $t3, $t3, 2
	addi.w	$t3, $t3, 32
	srai.d	$t3, $t3, 6
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr1, $t3
	vldrepl.w	$vr2, $s4, 0
	vreplgr2vr.w	$vr3, $t5
	vreplgr2vr.w	$vr4, $s5
	vreplgr2vr.w	$vr5, $s6
	vreplgr2vr.w	$vr6, $t2
	vreplgr2vr.w	$vr7, $a5
	vreplgr2vr.w	$vr8, $t1
	vreplgr2vr.w	$vr9, $a4
	vreplgr2vr.w	$vr10, $a6
	vreplgr2vr.w	$vr11, $a7
	vreplgr2vr.w	$vr12, $a3
	vreplgr2vr.w	$vr13, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	vld	$vr14, $a2, %pc_lo12(.LCPI1_0)
	pcalau12i	$a2, %pc_hi20(.LCPI1_1)
	vld	$vr15, $a2, %pc_lo12(.LCPI1_1)
	pcalau12i	$a2, %pc_hi20(.LCPI1_2)
	vld	$vr16, $a2, %pc_lo12(.LCPI1_2)
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	vld	$vr17, $a2, %pc_lo12(.LCPI1_3)
	pcalau12i	$a2, %pc_hi20(.LCPI1_4)
	vld	$vr18, $a2, %pc_lo12(.LCPI1_4)
	vreplgr2vr.w	$vr19, $a1
	vrepli.w	$vr20, -7
	ori	$a1, $zero, 512
	.p2align	4, , 16
.LBB1_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr22, $vr14, $vr20
	vori.b	$vr21, $vr3, 0
	vmadd.w	$vr21, $vr22, $vr1
	add.d	$a2, $fp, $a0
	vadd.w	$vr22, $vr21, $vr4
	vsrai.w	$vr22, $vr22, 5
	vmaxi.w	$vr22, $vr22, 0
	vmin.w	$vr22, $vr22, $vr2
	vstelm.h	$vr22, $a2, 136, 2
	vstelm.h	$vr22, $a2, 168, 4
	vstelm.h	$vr22, $a2, 200, 6
	vadd.w	$vr23, $vr21, $vr5
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr24, $vr23, $vr2
	vstelm.h	$vr24, $a2, 138, 2
	vstelm.h	$vr24, $a2, 170, 4
	vstelm.h	$vr24, $a2, 202, 6
	vadd.w	$vr23, $vr21, $vr6
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 140, 2
	vstelm.h	$vr23, $a2, 172, 4
	vstelm.h	$vr23, $a2, 204, 6
	vpackev.h	$vr22, $vr24, $vr22
	vsub.w	$vr24, $vr21, $vr7
	vsrai.w	$vr24, $vr24, 5
	vmaxi.w	$vr24, $vr24, 0
	vmin.w	$vr24, $vr24, $vr2
	vstelm.h	$vr24, $a2, 142, 2
	vstelm.h	$vr24, $a2, 174, 4
	vstelm.h	$vr24, $a2, 206, 6
	vpackev.w	$vr22, $vr23, $vr22
	vori.b	$vr23, $vr15, 0
	vshuf.h	$vr23, $vr24, $vr22
	vadd.w	$vr22, $vr21, $vr8
	vsrai.w	$vr22, $vr22, 5
	vmaxi.w	$vr22, $vr22, 0
	vmin.w	$vr22, $vr22, $vr2
	vstelm.h	$vr22, $a2, 144, 2
	vstelm.h	$vr22, $a2, 176, 4
	vstelm.h	$vr22, $a2, 208, 6
	vsub.w	$vr24, $vr21, $vr9
	vsrai.w	$vr24, $vr24, 5
	vmaxi.w	$vr24, $vr24, 0
	vmin.w	$vr24, $vr24, $vr2
	vstelm.h	$vr24, $a2, 146, 2
	vstelm.h	$vr24, $a2, 178, 4
	vstelm.h	$vr24, $a2, 210, 6
	vpackev.d	$vr22, $vr22, $vr23
	vori.b	$vr23, $vr16, 0
	vshuf.h	$vr23, $vr24, $vr22
	vsub.w	$vr22, $vr21, $vr0
	vsrai.w	$vr22, $vr22, 5
	vmaxi.w	$vr22, $vr22, 0
	vmin.w	$vr22, $vr22, $vr2
	vstelm.h	$vr22, $a2, 148, 2
	vstelm.h	$vr22, $a2, 180, 4
	vstelm.h	$vr22, $a2, 212, 6
	vori.b	$vr24, $vr17, 0
	vshuf.w	$vr24, $vr22, $vr23
	vsrai.w	$vr22, $vr21, 5
	vmaxi.w	$vr22, $vr22, 0
	vmin.w	$vr22, $vr22, $vr2
	vstelm.h	$vr22, $a2, 150, 2
	vstelm.h	$vr22, $a2, 182, 4
	vstelm.h	$vr22, $a2, 214, 6
	vori.b	$vr23, $vr18, 0
	vshuf.h	$vr23, $vr22, $vr24
	vpickve2gr.h	$a3, $vr23, 0
	vinsgr2vr.h	$vr22, $a3, 0
	vpickve2gr.h	$a3, $vr23, 1
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 17
	vpickve2gr.h	$a3, $vr23, 2
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 34
	vpickve2gr.h	$a3, $vr23, 3
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 51
	vpickve2gr.h	$a3, $vr23, 4
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 68
	vpickve2gr.h	$a3, $vr23, 5
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 85
	vpickve2gr.h	$a3, $vr23, 6
	xvreplgr2vr.h	$xr24, $a3
	xvpermi.q	$xr24, $xr22, 18
	xvextrins.h	$xr22, $xr24, 102
	vpickve2gr.h	$a3, $vr23, 7
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 18
	xvextrins.h	$xr22, $xr23, 119
	vadd.w	$vr23, $vr21, $vr0
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 152, 2
	vstelm.h	$vr23, $a2, 184, 4
	vstelm.h	$vr23, $a2, 216, 6
	vpickve2gr.h	$a3, $vr23, 0
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 48
	xvextrins.h	$xr22, $xr23, 0
	vadd.w	$vr23, $vr21, $vr9
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 154, 2
	vstelm.h	$vr23, $a2, 186, 4
	vstelm.h	$vr23, $a2, 218, 6
	vpickve2gr.h	$a3, $vr23, 0
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 48
	xvextrins.h	$xr22, $xr23, 17
	vadd.w	$vr23, $vr21, $vr10
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 156, 2
	vstelm.h	$vr23, $a2, 188, 4
	vstelm.h	$vr23, $a2, 220, 6
	xvinsve0.w	$xr22, $xr23, 5
	vadd.w	$vr23, $vr21, $vr7
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 158, 2
	vstelm.h	$vr23, $a2, 190, 4
	vstelm.h	$vr23, $a2, 222, 6
	vpickve2gr.h	$a3, $vr23, 0
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 48
	xvextrins.h	$xr22, $xr23, 51
	vadd.w	$vr23, $vr21, $vr11
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 160, 2
	vstelm.h	$vr23, $a2, 192, 4
	vstelm.h	$vr23, $a2, 224, 6
	xvinsve0.d	$xr22, $xr23, 3
	vadd.w	$vr23, $vr21, $vr12
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 162, 2
	vstelm.h	$vr23, $a2, 194, 4
	vstelm.h	$vr23, $a2, 226, 6
	vpickve2gr.h	$a3, $vr23, 0
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 48
	xvextrins.h	$xr22, $xr23, 85
	vadd.w	$vr23, $vr21, $vr13
	vsrai.w	$vr23, $vr23, 5
	vmaxi.w	$vr23, $vr23, 0
	vmin.w	$vr23, $vr23, $vr2
	vstelm.h	$vr23, $a2, 164, 2
	vstelm.h	$vr23, $a2, 196, 4
	vstelm.h	$vr23, $a2, 228, 6
	vadd.w	$vr21, $vr21, $vr19
	vsrai.w	$vr21, $vr21, 5
	vmaxi.w	$vr21, $vr21, 0
	vmin.w	$vr21, $vr21, $vr2
	xvinsve0.w	$xr22, $xr23, 7
	vpickve2gr.h	$a3, $vr21, 0
	xvreplgr2vr.h	$xr23, $a3
	xvpermi.q	$xr23, $xr22, 48
	xvextrins.h	$xr22, $xr23, 119
	xvst	$xr22, $a2, 104
	vstelm.h	$vr21, $a2, 166, 2
	vstelm.h	$vr21, $a2, 198, 4
	vstelm.h	$vr21, $a2, 230, 6
	addi.d	$a0, $a0, 128
	vaddi.wu	$vr14, $vr14, 4
	bne	$a0, $a1, .LBB1_53
	b	.LBB1_58
.LBB1_54:                               # %sw.bb65
	bnez	$a1, .LBB1_56
# %bb.55:                               # %if.then67
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_56:                               # %if.end68
	move	$a0, $zero
	addi.d	$a1, $sp, 56
	addi.d	$a2, $fp, 134
	ori	$a3, $zero, 384
	.p2align	4, , 16
.LBB1_57:                               # %for.cond72.preheader
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a0
	ld.w	$a4, $a4, 4
	slli.d	$a4, $a4, 3
	ldx.w	$a5, $a1, $a0
	ldx.d	$a4, $s3, $a4
	slli.d	$a5, $a5, 1
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -30
	st.h	$a6, $a2, -28
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -26
	st.h	$a6, $a2, -24
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -22
	st.h	$a6, $a2, -20
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -18
	st.h	$a6, $a2, -16
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -14
	st.h	$a6, $a2, -12
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -10
	st.h	$a6, $a2, -8
	ldx.h	$a6, $a4, $a5
	st.h	$a6, $a2, -6
	st.h	$a6, $a2, -4
	ldx.h	$a4, $a4, $a5
	st.h	$a4, $a2, -2
	st.h	$a4, $a2, 0
	addi.d	$a0, $a0, 24
	addi.d	$a2, $a2, 32
	bne	$a0, $a3, .LBB1_57
.LBB1_58:
	move	$a0, $zero
	b	.LBB1_94
.LBB1_59:                               # %for.cond99.preheader.split.us
	beqz	$a0, .LBB1_95
# %bb.60:                               # %for.cond99.preheader.split.us.split
	ld.d	$a4, $a4, 0
	alsl.d	$a2, $a3, $a4, 1
	slli.d	$a3, $a3, 1
	ldx.hu	$a4, $a4, $a3
	ld.hu	$a5, $a2, 2
	ld.hu	$a6, $a2, 4
	ld.hu	$a7, $a2, 6
	move	$a3, $zero
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a7
	ld.hu	$a5, $a2, 8
	ld.hu	$a6, $a2, 10
	ld.hu	$a7, $a2, 12
	ld.hu	$t0, $a2, 14
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a7
	add.d	$a4, $a4, $t0
	ld.hu	$a5, $a2, 16
	ld.hu	$a6, $a2, 18
	ld.hu	$a7, $a2, 20
	ld.hu	$t0, $a2, 22
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a7
	add.d	$a4, $a4, $t0
	ld.hu	$a5, $a2, 24
	ld.hu	$a6, $a2, 26
	ld.hu	$a7, $a2, 28
	ld.hu	$a2, $a2, 30
	add.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	add.d	$a4, $a4, $a7
	add.w	$a2, $a4, $a2
	or	$a4, $a0, $a1
	bnez	$a4, .LBB1_92
.LBB1_61:                               # %if.then156
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $fp, $a0
	b	.LBB1_93
.LBB1_62:                               # %if.end112.thread
	ld.w	$a2, $sp, 60
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $s3, $a2
	ld.w	$a6, $sp, 56
	move	$a2, $zero
	alsl.d	$a5, $a6, $a5, 1
.LBB1_63:                               # %if.end112.1
	ld.w	$a6, $sp, 84
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 80
	ldx.d	$a6, $s3, $a6
	ld.hu	$a5, $a5, 0
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_65
# %bb.64:                               # %if.then103.2
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 4
	add.d	$a2, $a2, $a6
.LBB1_65:                               # %if.end112.2
	ld.w	$a6, $sp, 108
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 104
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_67
# %bb.66:                               # %if.then103.3
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 6
	add.d	$a2, $a2, $a6
.LBB1_67:                               # %if.end112.3
	ld.w	$a6, $sp, 132
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 128
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_69
# %bb.68:                               # %if.then103.4
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 8
	add.d	$a2, $a2, $a6
.LBB1_69:                               # %if.end112.4
	ld.w	$a6, $sp, 156
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 152
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_71
# %bb.70:                               # %if.then103.5
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 10
	add.d	$a2, $a2, $a6
.LBB1_71:                               # %if.end112.5
	ld.w	$a6, $sp, 180
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 176
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_73
# %bb.72:                               # %if.then103.6
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 12
	add.d	$a2, $a2, $a6
.LBB1_73:                               # %if.end112.6
	ld.w	$a6, $sp, 204
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 200
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_75
# %bb.74:                               # %if.then103.7
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 14
	add.d	$a2, $a2, $a6
.LBB1_75:                               # %if.end112.7
	ld.w	$a6, $sp, 228
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 224
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_77
# %bb.76:                               # %if.then103.8
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 16
	add.d	$a2, $a2, $a6
.LBB1_77:                               # %if.end112.8
	ld.w	$a6, $sp, 252
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 248
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_79
# %bb.78:                               # %if.then103.9
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 18
	add.d	$a2, $a2, $a6
.LBB1_79:                               # %if.end112.9
	ld.w	$a6, $sp, 276
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 272
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_81
# %bb.80:                               # %if.then103.10
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 20
	add.d	$a2, $a2, $a6
.LBB1_81:                               # %if.end112.10
	ld.w	$a6, $sp, 300
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 296
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_83
# %bb.82:                               # %if.then103.11
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 22
	add.d	$a2, $a2, $a6
.LBB1_83:                               # %if.end112.11
	ld.w	$a6, $sp, 324
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 320
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_85
# %bb.84:                               # %if.then103.12
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 24
	add.d	$a2, $a2, $a6
.LBB1_85:                               # %if.end112.12
	ld.w	$a6, $sp, 348
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 344
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_87
# %bb.86:                               # %if.then103.13
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 26
	add.d	$a2, $a2, $a6
.LBB1_87:                               # %if.end112.13
	ld.w	$a6, $sp, 372
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 368
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_89
# %bb.88:                               # %if.then103.14
	ld.d	$a6, $a4, 0
	alsl.d	$a6, $a3, $a6, 1
	ld.hu	$a6, $a6, 28
	add.d	$a2, $a2, $a6
.LBB1_89:                               # %if.end112.14
	ld.w	$a6, $sp, 396
	slli.d	$a6, $a6, 3
	ld.w	$a7, $sp, 392
	ldx.d	$a6, $s3, $a6
	slli.d	$a7, $a7, 1
	ldx.hu	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	beqz	$a0, .LBB1_91
# %bb.90:                               # %if.then103.15
	ld.d	$a4, $a4, 0
	alsl.d	$a3, $a3, $a4, 1
	ld.hu	$a3, $a3, 30
	add.d	$a2, $a2, $a3
.LBB1_91:                               # %if.end112.15
	ld.w	$a3, $sp, 420
	slli.d	$a3, $a3, 3
	ld.w	$a4, $sp, 416
	ldx.d	$a3, $s3, $a3
	slli.d	$a4, $a4, 1
	ldx.hu	$a3, $a3, $a4
	add.d	$a3, $a5, $a3
	or	$a4, $a0, $a1
	beqz	$a4, .LBB1_61
.LBB1_92:
	sltui	$a4, $a0, 1
	sltu	$a0, $zero, $a0
	sltu	$a1, $zero, $a1
	add.d	$a5, $a3, $a2
	addi.d	$a5, $a5, 16
	bstrpick.d	$a5, $a5, 31, 5
	maskeqz	$a5, $a5, $a1
	maskeqz	$a0, $a5, $a0
	addi.d	$a3, $a3, 8
	srli.d	$a3, $a3, 4
	maskeqz	$a3, $a3, $a1
	masknez	$a5, $a0, $a1
	or	$a3, $a3, $a5
	maskeqz	$a3, $a3, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	addi.d	$a2, $a2, 8
	bstrpick.d	$a2, $a2, 31, 4
	maskeqz	$a3, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a4
	or	$a1, $a3, $a0
.LBB1_93:                               # %if.end157
	move	$a0, $zero
	xvreplgr2vr.h	$xr0, $a1
	xvst	$xr0, $fp, 104
	xvst	$xr0, $fp, 136
	xvst	$xr0, $fp, 168
	xvst	$xr0, $fp, 200
	xvst	$xr0, $fp, 232
	xvst	$xr0, $fp, 264
	xvst	$xr0, $fp, 296
	xvst	$xr0, $fp, 328
	xvst	$xr0, $fp, 360
	xvst	$xr0, $fp, 392
	xvst	$xr0, $fp, 424
	xvst	$xr0, $fp, 456
	xvst	$xr0, $fp, 488
	xvst	$xr0, $fp, 520
	xvst	$xr0, $fp, 552
	xvst	$xr0, $fp, 584
.LBB1_94:                               # %cleanup
	fld.d	$fs0, $sp, 448                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB1_95:
	move	$a3, $zero
	move	$a2, $zero
	or	$a4, $a0, $a1
	bnez	$a4, .LBB1_92
	b	.LBB1_61
.Lfunc_end1:
	.size	intrapred_luma_16x16, .Lfunc_end1-intrapred_luma_16x16
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_45-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function intrapred_chroma
.LCPI2_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI2_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
	.text
	.globl	intrapred_chroma
	.p2align	5
	.type	intrapred_chroma,@function
intrapred_chroma:                       # @intrapred_chroma
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -640
	st.d	$ra, $sp, 632                   # 8-byte Folded Spill
	st.d	$fp, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 616                   # 8-byte Folded Spill
	st.d	$s1, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 592                   # 8-byte Folded Spill
	st.d	$s4, $sp, 584                   # 8-byte Folded Spill
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	st.d	$s6, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 560                   # 8-byte Folded Spill
	st.d	$s8, $sp, 552                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	move	$fp, $a0
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1536
	add.d	$a3, $a2, $a0
	ldx.d	$a0, $a2, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a3, 116
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.wu	$s8, $fp, 4
	ldptr.d	$a0, $fp, 5600
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1840
	ldx.w	$s5, $fp, $a0
	ldptr.w	$s6, $fp, 5932
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s1, $s8, 0
	pcalau12i	$s7, %pc_hi20(getNeighbour)
	bltz	$s5, .LBB2_3
# %bb.1:                                # %for.body.preheader
	addi.d	$a0, $s5, 1
	bstrpick.d	$s0, $a0, 31, 0
	addi.w	$s2, $zero, -1
	addi.d	$s3, $sp, 56
	move	$s4, $s2
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s7, %pc_lo12(getNeighbour)
	ori	$a3, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s4
	move	$a4, $s3
	jirl	$ra, $a5, 0
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 24
	bnez	$s0, .LBB2_2
.LBB2_3:                                # %for.end
	ld.d	$a5, $s7, %pc_lo12(getNeighbour)
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 464
	move	$a0, $s1
	move	$a1, $zero
	jirl	$ra, $a5, 0
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	ld.w	$a0, $sp, 464
	beqz	$a1, .LBB2_6
# %bb.4:                                # %if.else
	beqz	$a0, .LBB2_7
# %bb.5:                                # %cond.true
	ld.w	$a0, $sp, 468
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB2_8
.LBB2_6:                                # %if.then
	ld.w	$a1, $sp, 80
	ld.w	$a3, $sp, 56
	move	$a2, $a1
	b	.LBB2_22
.LBB2_7:
	move	$a0, $zero
.LBB2_8:                                # %cond.end
	bstrpick.d	$a1, $s5, 31, 31
	add.w	$a1, $s5, $a1
	srai.d	$a3, $a1, 1
	ori	$a1, $zero, 1
	ori	$a5, $zero, 2
	bstrpick.d	$a4, $a3, 31, 0
	ori	$a2, $zero, 1
	blt	$s5, $a5, .LBB2_14
# %bb.9:                                # %for.body19.lr.ph
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 84
	move	$a6, $a4
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_10:                               # %cond.true25
                                        #   in Loop: Header=BB2_12 Depth=1
	ld.w	$a7, $a5, 0
	ld.d	$t0, $fp, 16
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $t0, $a7
.LBB2_11:                               # %cond.end34
                                        #   in Loop: Header=BB2_12 Depth=1
	and	$a2, $a7, $a2
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 24
	beqz	$a6, .LBB2_14
.LBB2_12:                               # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -4
	bnez	$a7, .LBB2_10
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	move	$a7, $zero
	b	.LBB2_11
.LBB2_14:                               # %for.cond42.preheader
	blt	$s5, $a1, .LBB2_19
# %bb.15:                               # %for.body44.lr.ph
	slli.d	$a1, $a4, 4
	alsl.d	$a1, $a4, $a1, 3
	addi.d	$a4, $sp, 56
	add.d	$a1, $a1, $a4
	addi.d	$a4, $a1, 28
	ori	$a1, $zero, 1
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               # %cond.true50
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.w	$a5, $a4, 0
	ld.d	$a6, $fp, 16
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a6, $a5
	and	$a1, $a5, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 24
	bge	$a3, $s5, .LBB2_19
.LBB2_17:                               # %for.body44
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, -4
	bnez	$a5, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=1
	move	$a5, $zero
	and	$a1, $a5, $a1
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 24
	blt	$a3, $s5, .LBB2_17
.LBB2_19:                               # %for.end65
	ld.w	$a3, $sp, 56
	beqz	$a3, .LBB2_21
# %bb.20:                               # %cond.true69
	ld.w	$a3, $sp, 60
	ld.d	$a4, $fp, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a4, $a3
	b	.LBB2_22
.LBB2_21:
	move	$a3, $zero
.LBB2_22:                               # %if.end
	ori	$a4, $zero, 408
	mul.d	$a4, $s8, $a4
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	ld.w	$a4, $a4, 352
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_99
# %bb.23:                               # %if.end
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI2_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI2_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB2_24:                               # %for.cond80.preheader
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1828
	ldx.wu	$a4, $fp, $a3
	addi.w	$a3, $a4, 0
	ori	$a5, $zero, 2
	blt	$a3, $a5, .LBB2_191
# %bb.25:                               # %for.cond84.preheader.lr.ph
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	addi.w	$t3, $a5, -1
	srli.d	$a5, $a4, 31
	add.w	$a6, $a4, $a5
	pcalau12i	$a4, %got_pc_hi20(subblk_offset_y)
	ld.d	$a4, $a4, %got_pc_lo12(subblk_offset_y)
	pcalau12i	$a5, %got_pc_hi20(subblk_offset_x)
	ld.d	$a5, $a5, %got_pc_lo12(subblk_offset_x)
	srai.d	$a6, $a6, 1
	slli.d	$a7, $t3, 5
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$t0, $a4, $a7
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	add.d	$t1, $a5, $a7
	lu12i.w	$a4, 1
	ori	$t2, $a4, 1800
	ldx.w	$t2, $fp, $t2
	slli.d	$t3, $t3, 6
	pcalau12i	$t4, %pc_hi20(.L__const.intrapred_chroma.block_pos)
	addi.d	$t4, $t4, %pc_lo12(.L__const.intrapred_chroma.block_pos)
	add.d	$t3, $t4, $t3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t4, $a5, $a4, 3
	ld.w	$t5, $sp, 484
	ld.w	$t6, $sp, 480
	addi.d	$t7, $sp, 488
	ori	$t8, $zero, 3
	ori	$s0, $zero, 4
	addi.d	$s1, $sp, 56
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_26:                               # %for.inc415
                                        #   in Loop: Header=BB2_27 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$t3, $t3, 16
	addi.d	$t7, $t7, 16
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 4
	beq	$a3, $a6, .LBB2_125
.LBB2_27:                               # %for.cond84.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
	move	$s2, $zero
	move	$s3, $t7
	move	$s4, $t3
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_28:                               # %sw.bb259
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a1, .LBB2_43
.LBB2_29:                               # %if.then250
                                        #   in Loop: Header=BB2_34 Depth=2
	slli.d	$a4, $s5, 4
	alsl.d	$a4, $s5, $a4, 3
	add.d	$a4, $a4, $s1
	ld.w	$a5, $a4, 44
	ld.d	$a7, $t4, 0
	ld.w	$s5, $a4, 40
	ld.w	$s6, $a4, 68
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	slli.d	$s5, $s5, 1
	slli.d	$s6, $s6, 3
	ld.w	$s7, $a4, 64
	ldx.d	$s6, $a7, $s6
	ldx.hu	$a5, $a5, $s5
	ld.w	$s5, $a4, 92
	slli.d	$s7, $s7, 1
	ldx.hu	$s6, $s6, $s7
	ld.w	$s7, $a4, 116
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $a7, $s5
	ld.w	$s8, $a4, 88
	slli.d	$s7, $s7, 3
	ld.w	$a4, $a4, 112
	ldx.d	$a7, $a7, $s7
	slli.d	$s7, $s8, 1
	ldx.hu	$s5, $s5, $s7
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a7, $a4
	add.d	$a5, $a5, $s6
.LBB2_30:                               # %for.inc412.sink.split
                                        #   in Loop: Header=BB2_34 Depth=2
	add.d	$a5, $a5, $s5
	add.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 2
.LBB2_31:                               # %for.inc412.sink.split
                                        #   in Loop: Header=BB2_34 Depth=2
	srli.d	$s5, $a4, 2
.LBB2_32:                               # %for.inc412.sink.split
                                        #   in Loop: Header=BB2_34 Depth=2
	st.w	$s5, $s3, 0
.LBB2_33:                               # %for.inc412
                                        #   in Loop: Header=BB2_34 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	beq	$s2, $s0, .LBB2_26
.LBB2_34:                               # %for.body86
                                        #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$s5, $t0, $s2
	ld.w	$s6, $s4, 0
	ldx.bu	$s7, $t1, $s2
	st.w	$t2, $s3, 0
	bltu	$t8, $s6, .LBB2_33
# %bb.35:                               # %for.body86
                                        #   in Loop: Header=BB2_34 Depth=2
	slli.d	$s6, $s6, 2
	pcalau12i	$s8, %pc_hi20(.LJTI2_1)
	addi.d	$s8, $s8, %pc_lo12(.LJTI2_1)
	ldx.w	$s6, $s8, $s6
	add.d	$s6, $s8, $s6
	jr	$s6
.LBB2_36:                               # %sw.bb
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a0, .LBB2_49
# %bb.37:                               # %for.cond113.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$s6, $t4, 0
	slli.d	$s8, $t5, 3
	ldx.d	$s8, $s6, $s8
	alsl.d	$ra, $t6, $s8, 1
	slli.d	$a4, $s7, 1
	ldx.hu	$a4, $ra, $a4
	alsl.d	$s7, $s7, $s8, 1
	alsl.d	$s7, $t6, $s7, 1
	ld.hu	$s8, $s7, 2
	ld.hu	$ra, $s7, 4
	ld.hu	$s7, $s7, 6
	add.d	$a4, $a4, $s8
	add.d	$a4, $a4, $ra
	add.d	$s7, $a4, $s7
	bnez	$a2, .LBB2_51
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_38:                               # %sw.bb329
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a0, .LBB2_45
# %bb.39:                               # %for.cond332.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$s6, $t4, 0
	slli.d	$a4, $t5, 3
	ldx.d	$a4, $s6, $a4
	alsl.d	$a5, $t6, $a4, 1
	slli.d	$a7, $s7, 1
	ldx.hu	$a5, $a5, $a7
	alsl.d	$a4, $s7, $a4, 1
	alsl.d	$a4, $t6, $a4, 1
	ld.hu	$a7, $a4, 2
	ld.hu	$s7, $a4, 4
	ld.hu	$a4, $a4, 6
	add.d	$a5, $a5, $a7
	add.d	$a5, $a5, $s7
	add.d	$s7, $a5, $a4
	bnez	$a1, .LBB2_47
.LBB2_40:                               # %if.then169
                                        #   in Loop: Header=BB2_34 Depth=2
	addi.d	$a4, $s7, 2
	b	.LBB2_31
.LBB2_41:                               # %sw.bb189
                                        #   in Loop: Header=BB2_34 Depth=2
	bnez	$a0, .LBB2_44
# %bb.42:                               # %if.else211
                                        #   in Loop: Header=BB2_34 Depth=2
	bnez	$a2, .LBB2_29
	b	.LBB2_33
.LBB2_43:                               # %if.else285
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a0, .LBB2_33
.LBB2_44:                               # %if.then240
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$a4, $t4, 0
	slli.d	$a5, $t5, 3
	ldx.d	$a4, $a4, $a5
	alsl.d	$a5, $t6, $a4, 1
	slli.d	$a7, $s7, 1
	ldx.hu	$a5, $a5, $a7
	alsl.d	$a4, $s7, $a4, 1
	alsl.d	$a4, $t6, $a4, 1
	ld.hu	$a7, $a4, 2
	ld.hu	$s5, $a4, 4
	ld.hu	$a4, $a4, 6
	add.d	$a5, $a5, $a7
	b	.LBB2_30
.LBB2_45:                               # %if.end351.thread
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a1, .LBB2_33
# %bb.46:                               # %if.end351.thread.for.cond355.preheader_crit_edge
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$s6, $t4, 0
	move	$s7, $zero
.LBB2_47:                               # %for.cond355.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	slli.d	$a4, $s5, 4
	alsl.d	$a4, $s5, $a4, 3
	add.d	$a4, $a4, $s1
	ld.w	$a5, $a4, 44
	ld.w	$a7, $a4, 40
	ld.w	$s5, $a4, 68
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $s6, $a5
	slli.d	$a7, $a7, 1
	slli.d	$s5, $s5, 3
	ld.w	$s8, $a4, 64
	ldx.d	$s5, $s6, $s5
	ldx.hu	$a5, $a5, $a7
	ld.w	$a7, $a4, 92
	slli.d	$s8, $s8, 1
	ldx.hu	$s5, $s5, $s8
	ld.w	$s8, $a4, 116
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $s6, $a7
	ld.w	$ra, $a4, 88
	slli.d	$s8, $s8, 3
	ld.w	$a4, $a4, 112
	ldx.d	$s6, $s6, $s8
	slli.d	$s8, $ra, 1
	ldx.hu	$a7, $a7, $s8
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $s6, $a4
	add.d	$a5, $a5, $s5
	add.d	$a5, $a5, $a7
	add.d	$s5, $a5, $a4
	beqz	$a0, .LBB2_52
.LBB2_48:                               # %if.then160
                                        #   in Loop: Header=BB2_34 Depth=2
	add.d	$a4, $s7, $s5
	addi.d	$a4, $a4, 4
	srli.d	$s5, $a4, 3
	b	.LBB2_32
.LBB2_49:                               # %if.end130.thread
                                        #   in Loop: Header=BB2_34 Depth=2
	beqz	$a2, .LBB2_33
# %bb.50:                               # %if.end130.thread.for.cond134.preheader_crit_edge
                                        #   in Loop: Header=BB2_34 Depth=2
	ld.d	$s6, $t4, 0
	move	$s7, $zero
.LBB2_51:                               # %for.cond134.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	slli.d	$a4, $s5, 4
	alsl.d	$a4, $s5, $a4, 3
	add.d	$a4, $a4, $s1
	ld.w	$s5, $a4, 44
	ld.w	$s8, $a4, 40
	ld.w	$ra, $a4, 68
	slli.d	$s5, $s5, 3
	ldx.d	$s5, $s6, $s5
	slli.d	$s8, $s8, 1
	slli.d	$ra, $ra, 3
	ld.w	$a5, $a4, 64
	ldx.d	$ra, $s6, $ra
	ldx.hu	$s5, $s5, $s8
	ld.w	$s8, $a4, 92
	slli.d	$a5, $a5, 1
	ldx.hu	$a5, $ra, $a5
	ld.w	$ra, $a4, 116
	slli.d	$s8, $s8, 3
	ldx.d	$s8, $s6, $s8
	ld.w	$a7, $a4, 88
	slli.d	$ra, $ra, 3
	ld.w	$a4, $a4, 112
	ldx.d	$s6, $s6, $ra
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $s8, $a7
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $s6, $a4
	add.d	$a5, $s5, $a5
	add.d	$a5, $a5, $a7
	add.d	$s5, $a5, $a4
	bnez	$a0, .LBB2_48
.LBB2_52:                               # %if.then402
                                        #   in Loop: Header=BB2_34 Depth=2
	addi.d	$a4, $s5, 2
	b	.LBB2_31
.LBB2_53:                               # %sw.bb774
	bnez	$a0, .LBB2_55
# %bb.54:                               # %if.then776
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_55:                               # %if.end777
	ori	$a0, $zero, 2
	blt	$s5, $a0, .LBB2_191
# %bb.56:                               # %if.end777
	ori	$a0, $zero, 1
	bge	$a0, $s6, .LBB2_191
# %bb.57:                               # %for.body795.lr.ph.us
	move	$a6, $zero
	bstrpick.d	$a0, $s6, 31, 31
	add.w	$a0, $s6, $a0
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a1, 3
	ld.w	$a1, $sp, 484
	ld.d	$a5, $a2, 0
	ld.w	$a3, $sp, 480
	bstrpick.d	$a7, $s5, 31, 31
	slli.d	$a4, $a1, 3
	ldx.d	$a1, $a5, $a4
	add.w	$a5, $s5, $a7
	srai.d	$a7, $a5, 1
	addi.d	$a5, $fp, 104
	alsl.d	$t0, $a3, $a1, 1
	bstrpick.d	$a1, $a7, 31, 0
	bstrpick.d	$t1, $a7, 29, 1
	slli.d	$t1, $t1, 1
	addi.d	$t2, $fp, 136
	ori	$t3, $zero, 2
	move	$t4, $a5
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_58:                               # %for.cond806.for.inc821_crit_edge.us.us
                                        #   in Loop: Header=BB2_59 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$t2, $t2, 2
	addi.d	$t4, $t4, 2
	beq	$a6, $a0, .LBB2_100
.LBB2_59:                               # %for.body795.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_62 Depth 2
                                        #     Child Loop BB2_65 Depth 2
	slli.d	$t5, $a6, 1
	ldx.hu	$t5, $t0, $t5
	bgeu	$a7, $t3, .LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=1
	move	$t7, $zero
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_61:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_59 Depth=1
	move	$t6, $t1
	move	$t7, $t2
	.p2align	4, , 16
.LBB2_62:                               # %vector.body
                                        #   Parent Loop BB2_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t5, $t7, -32
	st.h	$t5, $t7, 0
	addi.d	$t6, $t6, -2
	addi.d	$t7, $t7, 64
	bnez	$t6, .LBB2_62
# %bb.63:                               # %middle.block
                                        #   in Loop: Header=BB2_59 Depth=1
	move	$t7, $t1
	beq	$t1, $a1, .LBB2_58
.LBB2_64:                               # %for.body811.us.us.preheader
                                        #   in Loop: Header=BB2_59 Depth=1
	slli.d	$t6, $t7, 5
	add.d	$t6, $t4, $t6
	sub.d	$t7, $a1, $t7
	.p2align	4, , 16
.LBB2_65:                               # %for.body811.us.us
                                        #   Parent Loop BB2_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t5, $t6, 0
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB2_65
	b	.LBB2_58
.LBB2_66:                               # %if.then422
	beqz	$a3, .LBB2_70
# %bb.67:                               # %if.then422
	beqz	$a2, .LBB2_70
# %bb.68:                               # %if.then422
	beqz	$a1, .LBB2_70
# %bb.69:                               # %if.then422
	bnez	$a0, .LBB2_71
.LBB2_70:                               # %if.then431
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_71:                               # %if.end432
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 484
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a0
	ld.w	$a5, $sp, 480
	ld.w	$a0, $sp, 76
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a2, $a1
	add.w	$a1, $a5, $s6
	slli.d	$a0, $a0, 3
	ld.w	$a4, $sp, 72
	ldx.d	$a0, $a2, $a0
	alsl.d	$a1, $a1, $a3, 1
	ld.hu	$a1, $a1, -2
	slli.d	$a4, $a4, 1
	ldx.hu	$a6, $a0, $a4
	bstrpick.d	$a0, $s6, 31, 31
	add.w	$a0, $s6, $a0
	srai.d	$a0, $a0, 1
	sub.d	$a4, $a1, $a6
	ori	$a7, $zero, 4
	mul.d	$a4, $a4, $a0
	blt	$s6, $a7, .LBB2_76
# %bb.72:                               # %for.body462.lr.ph
	add.w	$a5, $a5, $a0
	ori	$t0, $zero, 2
	slt	$t1, $t0, $a0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a0, $t1
	or	$t0, $t1, $t0
	addi.d	$t0, $t0, -1
	ori	$t1, $zero, 26
	bstrpick.d	$t0, $t0, 31, 0
	bge	$s6, $t1, .LBB2_127
# %bb.73:
	move	$t1, $zero
.LBB2_74:                               # %for.body462.preheader
	slli.d	$t2, $t1, 1
	alsl.d	$t2, $a5, $t2, 1
	add.d	$t2, $a3, $t2
	sub.d	$a5, $a5, $t1
	addi.w	$a5, $a5, -2
	sub.d	$t0, $t0, $t1
	addi.d	$t1, $t1, 1
	.p2align	4, , 16
.LBB2_75:                               # %for.body462
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$t3, $t2, 0
	slli.d	$t4, $a5, 1
	ldx.hu	$t4, $a3, $t4
	sub.d	$t3, $t3, $t4
	mul.d	$t3, $t3, $t1
	add.d	$a4, $t3, $a4
	addi.d	$t2, $t2, 2
	addi.w	$a5, $a5, -1
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	bnez	$t0, .LBB2_75
.LBB2_76:                               # %for.end494
	slli.d	$a3, $s5, 4
	alsl.d	$a3, $s5, $a3, 3
	addi.d	$a5, $sp, 56
	add.d	$a3, $a5, $a3
	ld.w	$a5, $a3, 20
	slli.d	$a5, $a5, 3
	ld.w	$a3, $a3, 16
	ldx.d	$a5, $a2, $a5
	slli.d	$a3, $a3, 1
	ldx.hu	$a5, $a5, $a3
	bstrpick.d	$a3, $s5, 31, 31
	add.w	$a3, $s5, $a3
	srai.d	$a3, $a3, 1
	sub.d	$a6, $a5, $a6
	mul.d	$a6, $a6, $a3
	blt	$s5, $a7, .LBB2_137
# %bb.77:                               # %for.body527.lr.ph
	addi.d	$t0, $a3, -1
	addi.d	$a7, $a3, 1
	bstrpick.d	$a7, $a7, 31, 0
	ori	$t1, $zero, 1
	slt	$t2, $t1, $t0
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	ori	$t2, $zero, 6
	or	$t0, $t0, $t1
	bge	$s5, $t2, .LBB2_132
# %bb.78:
	move	$t1, $zero
	b	.LBB2_135
.LBB2_79:                               # %sw.bb709
	beqz	$a2, .LBB2_81
# %bb.80:                               # %sw.bb709
	bnez	$a1, .LBB2_82
.LBB2_81:                               # %if.then715
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB2_82:                               # %if.end716
	ori	$a0, $zero, 2
	blt	$s5, $a0, .LBB2_191
# %bb.83:                               # %for.body720.split.us
	blt	$s6, $a0, .LBB2_191
# %bb.84:                               # %for.body734.us.us.preheader
	move	$a3, $zero
	bstrpick.d	$a0, $s5, 31, 31
	add.w	$a0, $s5, $a0
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t1, $a2, $a1, 3
	bstrpick.d	$a1, $s6, 31, 31
	add.w	$a1, $s6, $a1
	srai.d	$a2, $a1, 1
	addi.d	$t2, $fp, 104
	ld.d	$t3, $t1, 0
	bstrpick.d	$t0, $a0, 31, 0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a4, $a2, 29, 5
	slli.d	$a4, $a4, 5
	andi	$a5, $a2, 24
	bstrpick.d	$a6, $a2, 29, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $fp, 136
	sub.d	$t4, $zero, $a6
	addi.d	$t5, $sp, 56
	ori	$t6, $zero, 8
	ori	$t7, $zero, 32
	move	$t8, $t2
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_85:                               # %for.cond750.for.cond729.loopexit_crit_edge.us.us
                                        #   in Loop: Header=BB2_86 Depth=1
	addi.d	$a7, $a7, 32
	addi.d	$t8, $t8, 32
	beq	$a3, $t0, .LBB2_148
.LBB2_86:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_91 Depth 2
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_98 Depth 2
	addi.d	$a3, $a3, 1
	slli.d	$s0, $a3, 4
	alsl.d	$s0, $a3, $s0, 3
	add.d	$s0, $t5, $s0
	ld.w	$s1, $s0, 20
	slli.d	$s1, $s1, 3
	ld.w	$s0, $s0, 16
	ldx.d	$s1, $t3, $s1
	slli.d	$s0, $s0, 1
	ldx.hu	$s0, $s1, $s0
	bgeu	$a2, $t6, .LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_86 Depth=1
	move	$s2, $zero
	b	.LBB2_97
	.p2align	4, , 16
.LBB2_88:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_86 Depth=1
	bgeu	$a2, $t7, .LBB2_90
# %bb.89:                               #   in Loop: Header=BB2_86 Depth=1
	move	$s3, $zero
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_90:                               # %vector.ph686
                                        #   in Loop: Header=BB2_86 Depth=1
	xvreplgr2vr.h	$xr0, $s0
	move	$s1, $a7
	move	$s2, $a4
	.p2align	4, , 16
.LBB2_91:                               # %vector.body689
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s1, -32
	xvst	$xr0, $s1, 0
	addi.d	$s2, $s2, -32
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_91
# %bb.92:                               # %middle.block692
                                        #   in Loop: Header=BB2_86 Depth=1
	beq	$a4, $a1, .LBB2_85
# %bb.93:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_86 Depth=1
	move	$s3, $a4
	move	$s2, $a4
	beqz	$a5, .LBB2_97
.LBB2_94:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_86 Depth=1
	vreplgr2vr.h	$vr0, $s0
	add.d	$s1, $t4, $s3
	alsl.d	$s2, $s3, $t8, 1
	.p2align	4, , 16
.LBB2_95:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB2_95
# %bb.96:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_86 Depth=1
	move	$s2, $a6
	beq	$a6, $a1, .LBB2_85
.LBB2_97:                               # %for.body755.us.us.preheader
                                        #   in Loop: Header=BB2_86 Depth=1
	slli.d	$s1, $s2, 1
	sub.d	$s2, $a1, $s2
	.p2align	4, , 16
.LBB2_98:                               # %for.body755.us.us
                                        #   Parent Loop BB2_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s0, $t8, $s1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 2
	bnez	$s2, .LBB2_98
	b	.LBB2_85
.LBB2_99:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB2_191
.LBB2_100:                              # %for.body795.lr.ph.us.1
	ld.d	$t0, $a2, 0
	slli.d	$a6, $a0, 1
	ldx.d	$t0, $t0, $a4
	ori	$t1, $zero, 1
	slt	$t2, $t1, $a7
	masknez	$t1, $t1, $t2
	maskeqz	$t2, $a7, $t2
	or	$t1, $t2, $t1
	alsl.d	$t2, $a3, $t0, 1
	bstrpick.d	$t0, $t1, 29, 1
	slli.d	$t3, $t0, 1
	alsl.d	$t0, $a0, $fp, 1
	addi.d	$t4, $t0, 136
	addi.d	$t5, $t0, 104
	ori	$t6, $zero, 4
	move	$t7, $a0
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_101:                              # %for.cond806.for.inc821_crit_edge.us.us.1
                                        #   in Loop: Header=BB2_102 Depth=1
	addi.d	$t7, $t7, 1
	addi.d	$t4, $t4, 2
	addi.d	$t5, $t5, 2
	bge	$t7, $a6, .LBB2_109
.LBB2_102:                              # %for.body795.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_108 Depth 2
	slli.d	$t8, $t7, 1
	ldx.hu	$t8, $t2, $t8
	bge	$s5, $t6, .LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_102 Depth=1
	move	$s1, $zero
	b	.LBB2_107
	.p2align	4, , 16
.LBB2_104:                              # %vector.body652.preheader
                                        #   in Loop: Header=BB2_102 Depth=1
	move	$s0, $t3
	move	$s1, $t4
	.p2align	4, , 16
.LBB2_105:                              # %vector.body652
                                        #   Parent Loop BB2_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t8, $s1, -32
	st.h	$t8, $s1, 0
	addi.d	$s0, $s0, -2
	addi.d	$s1, $s1, 64
	bnez	$s0, .LBB2_105
# %bb.106:                              # %middle.block655
                                        #   in Loop: Header=BB2_102 Depth=1
	move	$s1, $t3
	beq	$t3, $t1, .LBB2_101
.LBB2_107:                              # %for.body811.us.us.1.preheader
                                        #   in Loop: Header=BB2_102 Depth=1
	sub.d	$s0, $t1, $s1
	slli.d	$s1, $s1, 5
	add.d	$s1, $t5, $s1
	.p2align	4, , 16
.LBB2_108:                              # %for.body811.us.us.1
                                        #   Parent Loop BB2_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t8, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 32
	bnez	$s0, .LBB2_108
	b	.LBB2_101
.LBB2_109:                              # %for.inc827
	ld.d	$t1, $a2, 0
	ldx.d	$t2, $t1, $a4
	move	$t3, $zero
	slli.d	$t1, $a7, 1
	alsl.d	$t4, $a3, $t2, 1
	addi.d	$t2, $a7, 1
	slt	$t5, $t2, $t1
	masknez	$t2, $t2, $t5
	maskeqz	$t5, $t1, $t5
	or	$t2, $t5, $t2
	nor	$a7, $a7, $zero
	add.w	$a7, $t2, $a7
	bstrpick.d	$t2, $a7, 31, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t5, $t2, 32, 1
	slli.d	$t7, $t5, 1
	alsl.d	$t8, $t5, $a1, 1
	slli.d	$t6, $a1, 5
	add.d	$fp, $t6, $fp
	addi.d	$fp, $fp, 136
	b	.LBB2_111
	.p2align	4, , 16
.LBB2_110:                              # %for.cond806.for.inc821_crit_edge.us.us.1485
                                        #   in Loop: Header=BB2_111 Depth=1
	addi.d	$t3, $t3, 1
	addi.d	$fp, $fp, 2
	addi.d	$a5, $a5, 2
	beq	$t3, $a0, .LBB2_117
.LBB2_111:                              # %for.body795.us.us.1478
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_113 Depth 2
                                        #     Child Loop BB2_116 Depth 2
	slli.d	$s0, $t3, 1
	ldx.hu	$s0, $t4, $s0
	move	$s1, $a1
	beqz	$a7, .LBB2_115
# %bb.112:                              # %vector.body664.preheader
                                        #   in Loop: Header=BB2_111 Depth=1
	move	$s1, $fp
	move	$s2, $t7
	.p2align	4, , 16
.LBB2_113:                              # %vector.body664
                                        #   Parent Loop BB2_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s0, $s1, -32
	st.h	$s0, $s1, 0
	addi.d	$s2, $s2, -2
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_113
# %bb.114:                              # %middle.block667
                                        #   in Loop: Header=BB2_111 Depth=1
	move	$s1, $t8
	beq	$t2, $t7, .LBB2_110
.LBB2_115:                              # %for.body811.us.us.1483.preheader
                                        #   in Loop: Header=BB2_111 Depth=1
	slli.d	$s2, $s1, 5
	add.d	$s2, $a5, $s2
	.p2align	4, , 16
.LBB2_116:                              # %for.body811.us.us.1483
                                        #   Parent Loop BB2_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$s0, $s2, 0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 32
	blt	$s1, $t1, .LBB2_116
	b	.LBB2_110
.LBB2_117:                              # %for.body795.lr.ph.us.1.1
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $a4
	alsl.d	$a2, $a3, $a2, 1
	slli.d	$a3, $t5, 1
	alsl.d	$a4, $t5, $a1, 1
	add.d	$a5, $t0, $t6
	addi.d	$a5, $a5, 136
	addi.d	$t0, $t0, 104
	b	.LBB2_119
	.p2align	4, , 16
.LBB2_118:                              # %for.cond806.for.inc821_crit_edge.us.us.1.1
                                        #   in Loop: Header=BB2_119 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a5, $a5, 2
	addi.d	$t0, $t0, 2
	bge	$a0, $a6, .LBB2_191
.LBB2_119:                              # %for.body795.us.us.1.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_121 Depth 2
                                        #     Child Loop BB2_124 Depth 2
	slli.d	$t3, $a0, 1
	ldx.hu	$t3, $a2, $t3
	move	$t4, $a1
	beqz	$a7, .LBB2_123
# %bb.120:                              # %vector.body675.preheader
                                        #   in Loop: Header=BB2_119 Depth=1
	move	$t4, $a5
	move	$t5, $a3
	.p2align	4, , 16
.LBB2_121:                              # %vector.body675
                                        #   Parent Loop BB2_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t3, $t4, -32
	st.h	$t3, $t4, 0
	addi.d	$t5, $t5, -2
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB2_121
# %bb.122:                              # %middle.block679
                                        #   in Loop: Header=BB2_119 Depth=1
	move	$t4, $a4
	beq	$t2, $a3, .LBB2_118
.LBB2_123:                              # %for.body811.us.us.1.1.preheader
                                        #   in Loop: Header=BB2_119 Depth=1
	slli.d	$t5, $t4, 5
	add.d	$t5, $t0, $t5
	.p2align	4, , 16
.LBB2_124:                              # %for.body811.us.us.1.1
                                        #   Parent Loop BB2_119 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t3, $t5, 0
	addi.w	$t4, $t4, 1
	addi.d	$t5, $t5, 32
	blt	$t4, $t1, .LBB2_124
	b	.LBB2_118
.LBB2_125:                              # %for.cond659.preheader.lr.ph
	addi.d	$a0, $fp, 104
	bstrpick.d	$a1, $a6, 31, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a3, $a2, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 496
	.p2align	4, , 16
.LBB2_126:                              # %for.cond659.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a2, -3
	ld.bu	$a6, $a3, -3
	ld.h	$a7, $a4, -8
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a5, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a5, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a5, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a5, $t2
	addi.d	$t3, $a5, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a5, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a5, $a5, 96
	stx.h	$a7, $a5, $a6
	stx.h	$a7, $a5, $t0
	stx.h	$a7, $a5, $t1
	stx.h	$a7, $a5, $t2
	ld.bu	$a5, $a2, -2
	ld.bu	$a6, $a3, -2
	ld.h	$a7, $a4, -4
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a5, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a5, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a5, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a5, $t2
	addi.d	$t3, $a5, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a5, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a5, $a5, 96
	stx.h	$a7, $a5, $a6
	stx.h	$a7, $a5, $t0
	stx.h	$a7, $a5, $t1
	stx.h	$a7, $a5, $t2
	ld.bu	$a5, $a2, -1
	ld.bu	$a6, $a3, -1
	ld.h	$a7, $a4, 0
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a5, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a5, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a5, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a5, $t2
	addi.d	$t3, $a5, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a5, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a5, $a5, 96
	stx.h	$a7, $a5, $a6
	stx.h	$a7, $a5, $t0
	stx.h	$a7, $a5, $t1
	stx.h	$a7, $a5, $t2
	ld.bu	$a5, $a2, 0
	ld.bu	$a6, $a3, 0
	ld.h	$a7, $a4, 4
	slli.d	$a5, $a5, 5
	add.d	$a5, $a0, $a5
	slli.d	$a6, $a6, 1
	stx.h	$a7, $a5, $a6
	addi.d	$t0, $a6, 2
	stx.h	$a7, $a5, $t0
	addi.d	$t1, $a6, 4
	stx.h	$a7, $a5, $t1
	addi.d	$t2, $a6, 6
	stx.h	$a7, $a5, $t2
	addi.d	$t3, $a5, 32
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$t3, $a5, 64
	stx.h	$a7, $t3, $a6
	stx.h	$a7, $t3, $t0
	stx.h	$a7, $t3, $t1
	stx.h	$a7, $t3, $t2
	addi.d	$a5, $a5, 96
	stx.h	$a7, $a5, $a6
	stx.h	$a7, $a5, $t0
	stx.h	$a7, $a5, $t1
	stx.h	$a7, $a5, $t2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a1, .LBB2_126
	b	.LBB2_191
.LBB2_127:                              # %vector.scevcheck
	addi.w	$t2, $a5, -2
	addi.d	$t3, $t0, -1
	sub.w	$t4, $t2, $t3
	move	$t1, $zero
	blt	$t2, $t4, .LBB2_74
# %bb.128:                              # %vector.scevcheck
	srli.d	$t3, $t3, 32
	bnez	$t3, .LBB2_74
# %bb.129:                              # %vector.ph805
	bstrpick.d	$t1, $t0, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$t1, $t1, 3
	vori.b	$vr1, $vr0, 0
	pcalau12i	$t3, %pc_hi20(.LCPI2_0)
	xvld	$xr2, $t3, %pc_lo12(.LCPI2_0)
	pcalau12i	$t3, %pc_hi20(.LCPI2_1)
	vld	$vr3, $t3, %pc_lo12(.LCPI2_1)
	vinsgr2vr.w	$vr1, $a4, 0
	alsl.d	$a4, $a5, $a3, 1
	addi.d	$a4, $a4, 8
	move	$t3, $t1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB2_130:                              # %vector.body808
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $a4, -8
	ld.d	$t5, $a4, 0
	vinsgr2vr.d	$vr5, $t4, 0
	vinsgr2vr.d	$vr6, $t5, 0
	alsl.d	$t4, $t2, $a3, 1
	ld.d	$t5, $t4, -6
	ld.d	$t4, $t4, -14
	vilvl.h	$vr5, $vr0, $vr5
	vilvl.h	$vr6, $vr0, $vr6
	vinsgr2vr.d	$vr7, $t5, 0
	vinsgr2vr.d	$vr8, $t4, 0
	vori.b	$vr9, $vr3, 0
	vshuf.h	$vr9, $vr0, $vr7
	vori.b	$vr7, $vr3, 0
	vshuf.h	$vr7, $vr0, $vr8
	vsub.w	$vr5, $vr5, $vr9
	vsub.w	$vr6, $vr6, $vr7
	xvpickve2gr.d	$t4, $xr2, 0
	vinsgr2vr.w	$vr7, $t4, 0
	xvpickve2gr.d	$t4, $xr2, 1
	vinsgr2vr.w	$vr7, $t4, 1
	xvpickve2gr.d	$t4, $xr2, 2
	vinsgr2vr.w	$vr7, $t4, 2
	xvpickve2gr.d	$t4, $xr2, 3
	vinsgr2vr.w	$vr7, $t4, 3
	vaddi.wu	$vr8, $vr7, 1
	vaddi.wu	$vr7, $vr7, 5
	vmadd.w	$vr1, $vr5, $vr8
	vmadd.w	$vr4, $vr6, $vr7
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$t3, $t3, -8
	addi.d	$a4, $a4, 16
	addi.w	$t2, $t2, -8
	bnez	$t3, .LBB2_130
# %bb.131:                              # %middle.block816
	vadd.w	$vr0, $vr4, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	bne	$t1, $t0, .LBB2_74
	b	.LBB2_76
.LBB2_132:                              # %vector.ph821
	move	$t2, $zero
	bstrpick.d	$t1, $t0, 30, 1
	slli.d	$t1, $t1, 1
	ori	$t4, $zero, 24
	mul.d	$t3, $a7, $t4
	addi.d	$t5, $sp, 56
	add.d	$t3, $t3, $t5
	addi.d	$t3, $t3, 44
	mul.d	$t4, $a3, $t4
	add.d	$t4, $t4, $t5
	addi.d	$t4, $t4, -32
	ori	$t5, $zero, 2
	move	$t6, $t1
	.p2align	4, , 16
.LBB2_133:                              # %vector.body824
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $t3, -24
	ld.w	$t8, $t3, 0
	slli.d	$t7, $t7, 3
	slli.d	$t8, $t8, 3
	ld.w	$s0, $t3, -28
	ld.w	$s1, $t3, -4
	ldx.d	$t7, $a2, $t7
	ldx.d	$t8, $a2, $t8
	slli.d	$s0, $s0, 1
	slli.d	$s1, $s1, 1
	ld.w	$s2, $t4, 28
	ld.w	$s3, $t4, 4
	ldx.hu	$t7, $t7, $s0
	ldx.hu	$t8, $t8, $s1
	slli.d	$s0, $s2, 3
	slli.d	$s1, $s3, 3
	ld.w	$s2, $t4, 24
	ld.w	$s3, $t4, 0
	ldx.d	$s0, $a2, $s0
	ldx.d	$s1, $a2, $s1
	slli.d	$s2, $s2, 1
	slli.d	$s3, $s3, 1
	ldx.hu	$s0, $s0, $s2
	ldx.hu	$s1, $s1, $s3
	sub.d	$t7, $t7, $s0
	sub.d	$t8, $t8, $s1
	addi.d	$s0, $t5, -1
	mul.d	$t7, $t7, $s0
	mul.d	$t8, $t8, $t5
	add.d	$a6, $t7, $a6
	add.d	$t2, $t8, $t2
	addi.d	$t5, $t5, 2
	addi.d	$t6, $t6, -2
	addi.d	$t3, $t3, 48
	addi.d	$t4, $t4, -48
	bnez	$t6, .LBB2_133
# %bb.134:                              # %middle.block829
	add.d	$a6, $t2, $a6
	beq	$t1, $t0, .LBB2_137
.LBB2_135:                              # %for.body527.preheader
	addi.d	$t2, $t1, 1
	ori	$t4, $zero, 24
	mul.d	$t3, $a3, $t4
	mul.d	$t5, $t1, $t4
	sub.d	$t3, $t3, $t5
	addi.d	$t5, $sp, 56
	add.d	$t3, $t3, $t5
	addi.d	$t3, $t3, -4
	sub.d	$t0, $t0, $t1
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $t4
	add.d	$a7, $a7, $t5
	addi.d	$a7, $a7, 20
	.p2align	4, , 16
.LBB2_136:                              # %for.body527
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	ld.w	$t4, $t3, 0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a2, $t1
	ld.w	$t5, $a7, -4
	slli.d	$t4, $t4, 3
	ld.w	$t6, $t3, -4
	ldx.d	$t4, $a2, $t4
	slli.d	$t5, $t5, 1
	ldx.hu	$t1, $t1, $t5
	slli.d	$t5, $t6, 1
	ldx.hu	$t4, $t4, $t5
	sub.d	$t1, $t1, $t4
	mul.d	$t1, $t1, $t2
	add.d	$a6, $t1, $a6
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, -24
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 24
	bnez	$t0, .LBB2_136
.LBB2_137:                              # %for.end572
	ori	$a2, $zero, 1
	blt	$s5, $a2, .LBB2_191
# %bb.138:                              # %for.cond623.preheader.lr.ph
	blt	$s6, $a2, .LBB2_191
# %bb.139:                              # %for.cond623.preheader.lr.ph.split.us
	move	$a2, $zero
	addi.d	$a7, $s6, -8
	sltui	$a7, $a7, 1
	ori	$t0, $zero, 5
	masknez	$t1, $t0, $a7
	ori	$t2, $zero, 17
	maskeqz	$t3, $t2, $a7
	or	$t1, $t3, $t1
	mul.d	$a4, $a4, $t1
	alsl.w	$a4, $s6, $a4, 1
	ori	$t1, $zero, 6
	sub.d	$a7, $t1, $a7
	sra.w	$a4, $a4, $a7
	addi.d	$a7, $s5, -8
	sltui	$a7, $a7, 1
	masknez	$t0, $t0, $a7
	maskeqz	$t2, $t2, $a7
	or	$t0, $t2, $t0
	mul.d	$a6, $a6, $t0
	alsl.w	$a6, $s5, $a6, 1
	sub.d	$a7, $t1, $a7
	sra.w	$a6, $a6, $a7
	add.d	$a1, $a5, $a1
	slli.d	$t1, $a1, 4
	addi.d	$a1, $t1, 16
	addi.d	$a5, $fp, 104
	lu12i.w	$a7, 1
	ori	$a7, $a7, 1808
	ldx.w	$a7, $fp, $a7
	bstrpick.d	$t0, $s6, 30, 3
	slli.d	$t0, $t0, 3
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $a4
	xvreplgr2vr.w	$xr2, $a7
	ori	$t2, $zero, 1
	sub.d	$t3, $t2, $a3
	mul.d	$t3, $a6, $t3
	add.d	$t1, $t3, $t1
	addi.d	$t1, $t1, 16
	sub.d	$a0, $t2, $a0
	ori	$t2, $zero, 8
	b	.LBB2_141
	.p2align	4, , 16
.LBB2_140:                              # %for.cond623.for.inc647_crit_edge.us
                                        #   in Loop: Header=BB2_141 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a5, 32
	add.d	$t1, $t1, $a6
	beq	$a2, $s5, .LBB2_191
.LBB2_141:                              # %for.cond623.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_144 Depth 2
                                        #     Child Loop BB2_147 Depth 2
	bgeu	$s6, $t2, .LBB2_143
# %bb.142:                              #   in Loop: Header=BB2_141 Depth=1
	move	$t5, $zero
	b	.LBB2_146
	.p2align	4, , 16
.LBB2_143:                              # %vector.ph836
                                        #   in Loop: Header=BB2_141 Depth=1
	sub.d	$t3, $a2, $a3
	addi.d	$t3, $t3, 1
	pcalau12i	$t4, %pc_hi20(.LCPI2_2)
	xvld	$xr3, $t4, %pc_lo12(.LCPI2_2)
	mul.d	$t3, $t3, $a6
	add.d	$t3, $a1, $t3
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a5
	move	$t4, $t0
	.p2align	4, , 16
.LBB2_144:                              # %vector.body847
                                        #   Parent Loop BB2_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvsub.w	$xr5, $xr3, $xr0
	xvaddi.wu	$xr5, $xr5, 1
	xvori.b	$xr6, $xr4, 0
	xvmadd.w	$xr6, $xr5, $xr1
	xvsrai.w	$xr5, $xr6, 5
	xvmaxi.w	$xr5, $xr5, 0
	xvmin.w	$xr5, $xr5, $xr2
	xvpickve2gr.w	$t5, $xr5, 0
	vinsgr2vr.h	$vr6, $t5, 0
	xvpickve2gr.w	$t5, $xr5, 1
	vinsgr2vr.h	$vr6, $t5, 1
	xvpickve2gr.w	$t5, $xr5, 2
	vinsgr2vr.h	$vr6, $t5, 2
	xvpickve2gr.w	$t5, $xr5, 3
	vinsgr2vr.h	$vr6, $t5, 3
	xvpickve2gr.w	$t5, $xr5, 4
	vinsgr2vr.h	$vr6, $t5, 4
	xvpickve2gr.w	$t5, $xr5, 5
	vinsgr2vr.h	$vr6, $t5, 5
	xvpickve2gr.w	$t5, $xr5, 6
	vinsgr2vr.h	$vr6, $t5, 6
	xvpickve2gr.w	$t5, $xr5, 7
	vinsgr2vr.h	$vr6, $t5, 7
	vst	$vr6, $t3, 0
	xvaddi.wu	$xr3, $xr3, 8
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 16
	bnez	$t4, .LBB2_144
# %bb.145:                              # %middle.block852
                                        #   in Loop: Header=BB2_141 Depth=1
	move	$t5, $t0
	beq	$t0, $s6, .LBB2_140
.LBB2_146:                              # %for.body626.us.preheader
                                        #   in Loop: Header=BB2_141 Depth=1
	add.d	$t3, $a0, $t5
	mul.d	$t3, $a4, $t3
	add.w	$t3, $t1, $t3
	slli.d	$t4, $t5, 1
	sub.d	$t5, $s6, $t5
	.p2align	4, , 16
.LBB2_147:                              # %for.body626.us
                                        #   Parent Loop BB2_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$t6, $t3, 5
	srai.d	$t7, $t3, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $a7
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a7, $t7
	or	$t6, $t6, $t7
	stx.h	$t6, $a5, $t4
	add.w	$t3, $t3, $a4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB2_147
	b	.LBB2_140
.LBB2_148:                              # %for.cond729.for.inc768_crit_edge.us
	move	$t6, $zero
	slli.d	$a3, $a2, 1
	ori	$a4, $zero, 1
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$t7, $a5, $a4
	addi.d	$a4, $a2, 1
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	nor	$a5, $a2, $zero
	add.w	$a4, $a4, $a5
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$t4, $a5, 32, 5
	slli.d	$t8, $t4, 5
	add.d	$s0, $t8, $a2
	andi	$a6, $a5, 24
	bstrpick.d	$t5, $a5, 32, 3
	slli.d	$a7, $t5, 3
	alsl.d	$s1, $t5, $a2, 3
	alsl.d	$s2, $a1, $fp, 1
	addi.d	$s2, $s2, 136
	sub.d	$s3, $zero, $a7
	addi.d	$s4, $sp, 56
	ori	$s5, $zero, 7
	ori	$s6, $zero, 31
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_149:                              # %for.cond750.for.cond729.loopexit_crit_edge.us.us.1
                                        #   in Loop: Header=BB2_150 Depth=1
	addi.d	$s2, $s2, 32
	addi.d	$t2, $t2, 32
	beq	$t6, $t7, .LBB2_162
.LBB2_150:                              # %iter.check706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_154 Depth 2
                                        #     Child Loop BB2_158 Depth 2
                                        #     Child Loop BB2_161 Depth 2
	addi.d	$t6, $t6, 1
	slli.d	$s7, $t6, 4
	alsl.d	$s7, $t6, $s7, 3
	add.d	$s7, $s4, $s7
	ld.w	$s8, $s7, 20
	slli.d	$s8, $s8, 3
	ld.w	$s7, $s7, 16
	ldx.d	$s8, $t3, $s8
	slli.d	$s7, $s7, 1
	ldx.hu	$s7, $s8, $s7
	move	$s8, $a2
	bltu	$a4, $s5, .LBB2_160
# %bb.151:                              # %vector.main.loop.iter.check708
                                        #   in Loop: Header=BB2_150 Depth=1
	bgeu	$a4, $s6, .LBB2_153
# %bb.152:                              #   in Loop: Header=BB2_150 Depth=1
	move	$ra, $zero
	b	.LBB2_157
	.p2align	4, , 16
.LBB2_153:                              # %vector.ph709
                                        #   in Loop: Header=BB2_150 Depth=1
	xvreplgr2vr.h	$xr0, $s7
	move	$s8, $s2
	move	$ra, $t8
	.p2align	4, , 16
.LBB2_154:                              # %vector.body714
                                        #   Parent Loop BB2_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s8, -32
	xvst	$xr0, $s8, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, 64
	bnez	$ra, .LBB2_154
# %bb.155:                              # %middle.block717
                                        #   in Loop: Header=BB2_150 Depth=1
	beq	$a5, $t8, .LBB2_149
# %bb.156:                              # %vec.epilog.iter.check722
                                        #   in Loop: Header=BB2_150 Depth=1
	move	$ra, $t8
	move	$s8, $s0
	beqz	$a6, .LBB2_160
.LBB2_157:                              # %vec.epilog.ph721
                                        #   in Loop: Header=BB2_150 Depth=1
	vreplgr2vr.h	$vr0, $s7
	add.d	$s8, $s3, $ra
	add.d	$ra, $a1, $ra
	alsl.d	$ra, $ra, $t2, 1
	.p2align	4, , 16
.LBB2_158:                              # %vec.epilog.vector.body729
                                        #   Parent Loop BB2_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $ra, 0
	addi.d	$s8, $s8, 8
	addi.d	$ra, $ra, 16
	bnez	$s8, .LBB2_158
# %bb.159:                              # %vec.epilog.middle.block733
                                        #   in Loop: Header=BB2_150 Depth=1
	move	$s8, $s1
	beq	$a5, $a7, .LBB2_149
.LBB2_160:                              # %for.body755.us.us.1.preheader
                                        #   in Loop: Header=BB2_150 Depth=1
	slli.d	$ra, $s8, 1
	.p2align	4, , 16
.LBB2_161:                              # %for.body755.us.us.1
                                        #   Parent Loop BB2_150 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s7, $t2, $ra
	addi.w	$s8, $s8, 1
	addi.d	$ra, $ra, 2
	blt	$s8, $a3, .LBB2_161
	b	.LBB2_149
.LBB2_162:                              # %for.inc771
	slli.d	$t2, $a0, 1
	ld.d	$t1, $t1, 0
	bstrpick.d	$t3, $a1, 29, 5
	slli.d	$t3, $t3, 5
	andi	$t6, $a1, 24
	bstrpick.d	$t7, $a1, 29, 3
	slli.d	$t7, $t7, 3
	slli.d	$t0, $t0, 5
	add.d	$t0, $t0, $fp
	addi.d	$t8, $t0, 136
	sub.d	$fp, $zero, $t7
	addi.d	$s0, $t0, 104
	addi.d	$s1, $sp, 56
	ori	$s2, $zero, 8
	ori	$s3, $zero, 32
	move	$s4, $a0
	b	.LBB2_164
	.p2align	4, , 16
.LBB2_163:                              # %for.cond750.for.cond729.loopexit_crit_edge.us.us.1518
                                        #   in Loop: Header=BB2_164 Depth=1
	addi.w	$s5, $s4, 0
	addi.d	$t8, $t8, 32
	addi.d	$s0, $s0, 32
	bge	$s5, $t2, .LBB2_177
.LBB2_164:                              # %iter.check739
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_169 Depth 2
                                        #     Child Loop BB2_173 Depth 2
                                        #     Child Loop BB2_176 Depth 2
	addi.d	$s4, $s4, 1
	slli.d	$s5, $s4, 4
	alsl.d	$s5, $s4, $s5, 3
	add.d	$s5, $s1, $s5
	ld.w	$s6, $s5, 20
	slli.d	$s6, $s6, 3
	ld.w	$s5, $s5, 16
	ldx.d	$s6, $t1, $s6
	slli.d	$s5, $s5, 1
	ldx.hu	$s5, $s6, $s5
	bgeu	$a2, $s2, .LBB2_166
# %bb.165:                              #   in Loop: Header=BB2_164 Depth=1
	move	$s7, $zero
	b	.LBB2_175
	.p2align	4, , 16
.LBB2_166:                              # %vector.main.loop.iter.check741
                                        #   in Loop: Header=BB2_164 Depth=1
	bgeu	$a2, $s3, .LBB2_168
# %bb.167:                              #   in Loop: Header=BB2_164 Depth=1
	move	$s8, $zero
	b	.LBB2_172
	.p2align	4, , 16
.LBB2_168:                              # %vector.ph742
                                        #   in Loop: Header=BB2_164 Depth=1
	xvreplgr2vr.h	$xr0, $s5
	move	$s6, $t8
	move	$s7, $t3
	.p2align	4, , 16
.LBB2_169:                              # %vector.body747
                                        #   Parent Loop BB2_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s6, -32
	xvst	$xr0, $s6, 0
	addi.d	$s7, $s7, -32
	addi.d	$s6, $s6, 64
	bnez	$s7, .LBB2_169
# %bb.170:                              # %middle.block750
                                        #   in Loop: Header=BB2_164 Depth=1
	beq	$t3, $a1, .LBB2_163
# %bb.171:                              # %vec.epilog.iter.check755
                                        #   in Loop: Header=BB2_164 Depth=1
	move	$s8, $t3
	move	$s7, $t3
	beqz	$t6, .LBB2_175
.LBB2_172:                              # %vec.epilog.ph754
                                        #   in Loop: Header=BB2_164 Depth=1
	vreplgr2vr.h	$vr0, $s5
	add.d	$s6, $fp, $s8
	alsl.d	$s7, $s8, $s0, 1
	.p2align	4, , 16
.LBB2_173:                              # %vec.epilog.vector.body762
                                        #   Parent Loop BB2_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s7, 0
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 16
	bnez	$s6, .LBB2_173
# %bb.174:                              # %vec.epilog.middle.block765
                                        #   in Loop: Header=BB2_164 Depth=1
	move	$s7, $t7
	beq	$t7, $a1, .LBB2_163
.LBB2_175:                              # %for.body755.us.us.1516.preheader
                                        #   in Loop: Header=BB2_164 Depth=1
	sub.d	$s6, $a1, $s7
	slli.d	$s7, $s7, 1
	.p2align	4, , 16
.LBB2_176:                              # %for.body755.us.us.1516
                                        #   Parent Loop BB2_164 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s5, $s0, $s7
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 2
	bnez	$s6, .LBB2_176
	b	.LBB2_163
.LBB2_177:                              # %for.cond729.for.inc768_crit_edge.us.1520
	slli.d	$a2, $t4, 5
	add.d	$t3, $a2, $a1
	alsl.d	$t4, $t5, $a1, 3
	alsl.d	$t5, $a1, $t0, 1
	addi.d	$t5, $t5, 136
	move	$t6, $a5
	bstrins.d	$t6, $zero, 2, 0
	sub.d	$t6, $zero, $t6
	addi.d	$t0, $t0, 104
	addi.d	$t7, $sp, 56
	ori	$t8, $zero, 7
	ori	$fp, $zero, 31
	b	.LBB2_179
	.p2align	4, , 16
.LBB2_178:                              # %for.cond750.for.cond729.loopexit_crit_edge.us.us.1.1
                                        #   in Loop: Header=BB2_179 Depth=1
	addi.w	$s0, $a0, 0
	addi.d	$t5, $t5, 32
	addi.d	$t0, $t0, 32
	bge	$s0, $t2, .LBB2_191
.LBB2_179:                              # %iter.check771
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_183 Depth 2
                                        #     Child Loop BB2_187 Depth 2
                                        #     Child Loop BB2_190 Depth 2
	addi.d	$a0, $a0, 1
	slli.d	$s0, $a0, 4
	alsl.d	$s0, $a0, $s0, 3
	add.d	$s0, $t7, $s0
	ld.w	$s1, $s0, 20
	slli.d	$s1, $s1, 3
	ld.w	$s0, $s0, 16
	ldx.d	$s1, $t1, $s1
	slli.d	$s0, $s0, 1
	ldx.hu	$s0, $s1, $s0
	move	$s1, $a1
	bltu	$a4, $t8, .LBB2_189
# %bb.180:                              # %vector.main.loop.iter.check773
                                        #   in Loop: Header=BB2_179 Depth=1
	bgeu	$a4, $fp, .LBB2_182
# %bb.181:                              #   in Loop: Header=BB2_179 Depth=1
	move	$s2, $zero
	b	.LBB2_186
	.p2align	4, , 16
.LBB2_182:                              # %vector.ph774
                                        #   in Loop: Header=BB2_179 Depth=1
	xvreplgr2vr.h	$xr0, $s0
	move	$s1, $t5
	move	$s2, $a2
	.p2align	4, , 16
.LBB2_183:                              # %vector.body779
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s1, -32
	xvst	$xr0, $s1, 0
	addi.d	$s2, $s2, -32
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_183
# %bb.184:                              # %middle.block782
                                        #   in Loop: Header=BB2_179 Depth=1
	beq	$a5, $a2, .LBB2_178
# %bb.185:                              # %vec.epilog.iter.check787
                                        #   in Loop: Header=BB2_179 Depth=1
	move	$s2, $a2
	move	$s1, $t3
	beqz	$a6, .LBB2_189
.LBB2_186:                              # %vec.epilog.ph786
                                        #   in Loop: Header=BB2_179 Depth=1
	vreplgr2vr.h	$vr0, $s0
	add.d	$s1, $t6, $s2
	add.d	$s2, $a1, $s2
	alsl.d	$s2, $s2, $t0, 1
	.p2align	4, , 16
.LBB2_187:                              # %vec.epilog.vector.body794
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB2_187
# %bb.188:                              # %vec.epilog.middle.block798
                                        #   in Loop: Header=BB2_179 Depth=1
	move	$s1, $t4
	beq	$a5, $a7, .LBB2_178
.LBB2_189:                              # %for.body755.us.us.1.1.preheader
                                        #   in Loop: Header=BB2_179 Depth=1
	slli.d	$s2, $s1, 1
	.p2align	4, , 16
.LBB2_190:                              # %for.body755.us.us.1.1
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.h	$s0, $t0, $s2
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 2
	blt	$s1, $a3, .LBB2_190
	b	.LBB2_178
.LBB2_191:                              # %if.end831
	ld.d	$s8, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 616                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 632                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 640
	ret
.Lfunc_end2:
	.size	intrapred_chroma, .Lfunc_end2-intrapred_chroma
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_24-.LJTI2_0
	.word	.LBB2_79-.LJTI2_0
	.word	.LBB2_53-.LJTI2_0
	.word	.LBB2_66-.LJTI2_0
.LJTI2_1:
	.word	.LBB2_36-.LJTI2_1
	.word	.LBB2_41-.LJTI2_1
	.word	.LBB2_28-.LJTI2_1
	.word	.LBB2_38-.LJTI2_1
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function itrans
.LCPI3_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	4294967295                      # 0xffffffff
	.text
	.globl	itrans
	.p2align	5
	.type	itrans,@function
itrans:                                 # @itrans
# %bb.0:                                # %entry
	lu12i.w	$a6, 1
	ori	$a7, $a6, 1788
	ldx.w	$a7, $a0, $a7
	ld.w	$t0, $a0, 28
	sub.w	$a7, $zero, $a7
	bne	$t0, $a7, .LBB3_3
# %bb.1:                                # %land.rhs
	ldptr.w	$a7, $a0, 5920
	sltui	$a5, $a5, 1
	ori	$t0, $a6, 1808
	masknez	$t0, $t0, $a5
	ori	$a6, $a6, 1804
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $t0
	ldx.w	$a5, $a0, $a5
	ori	$a6, $zero, 1
	bne	$a7, $a6, .LBB3_4
# %bb.2:                                # %for.cond174.preheader
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	add.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 6
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a2, 1
	ld.d	$a2, $a1, 104
	add.d	$a3, $a3, $a4
	ori	$a4, $zero, 2408
	vldx	$vr0, $a3, $a4
	vinsgr2vr.d	$vr1, $a2, 0
	vrepli.b	$vr2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr0, $vr1
	vmaxi.w	$vr0, $vr0, 0
	vreplgr2vr.w	$vr1, $a5
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 136
	ori	$a4, $zero, 2424
	vldx	$vr3, $a3, $a4
	vst	$vr0, $a0, 1384
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 168
	ori	$a4, $zero, 2440
	vldx	$vr3, $a3, $a4
	vst	$vr0, $a0, 1448
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a1, 200
	ori	$a2, $zero, 2456
	vldx	$vr3, $a3, $a2
	vst	$vr0, $a0, 1512
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr3, $vr0
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 1576
	ret
.LBB3_3:                                # %land.end
	sltui	$a5, $a5, 1
	ori	$a7, $a6, 1808
	masknez	$a7, $a7, $a5
	ori	$a6, $a6, 1804
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.w	$a5, $a0, $a5
.LBB3_4:                                # %for.cond.preheader
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	add.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 6
	add.d	$a4, $a3, $a4
	ori	$a3, $zero, 2408
	ldx.w	$a3, $a4, $a3
	ori	$a6, $zero, 2416
	ldx.w	$a6, $a4, $a6
	ldptr.w	$a7, $a4, 2412
	ldptr.w	$t0, $a4, 2420
	add.d	$t1, $a6, $a3
	sub.d	$a3, $a3, $a6
	srli.d	$a6, $a7, 1
	sub.d	$a6, $a6, $t0
	srli.d	$t0, $t0, 1
	add.d	$a7, $t0, $a7
	add.d	$t0, $a7, $t1
	st.w	$t0, $a0, 1384
	sub.d	$a7, $t1, $a7
	st.w	$a7, $a0, 1396
	add.d	$a7, $a6, $a3
	st.w	$a7, $a0, 1388
	sub.d	$a3, $a3, $a6
	ori	$a6, $zero, 2424
	ldx.w	$a6, $a4, $a6
	ori	$a7, $zero, 2432
	ldx.w	$a7, $a4, $a7
	st.w	$a3, $a0, 1392
	ldptr.w	$a3, $a4, 2428
	ldptr.w	$t0, $a4, 2436
	add.d	$t1, $a7, $a6
	sub.d	$a6, $a6, $a7
	srli.d	$a7, $a3, 1
	sub.d	$a7, $a7, $t0
	srli.d	$t0, $t0, 1
	add.d	$a3, $t0, $a3
	add.w	$t2, $a3, $t1
	sub.w	$t1, $t1, $a3
	st.w	$t1, $a0, 1460
	add.d	$a3, $a7, $a6
	st.w	$a3, $a0, 1452
	sub.d	$a3, $a6, $a7
	ori	$a6, $zero, 2440
	ldx.w	$a6, $a4, $a6
	ori	$a7, $zero, 2448
	ldx.w	$a7, $a4, $a7
	st.w	$a3, $a0, 1456
	ldptr.w	$a3, $a4, 2444
	ldptr.w	$t0, $a4, 2452
	add.d	$t3, $a7, $a6
	sub.d	$a6, $a6, $a7
	srli.d	$a7, $a3, 1
	sub.d	$a7, $a7, $t0
	srli.d	$t0, $t0, 1
	add.d	$a3, $t0, $a3
	add.d	$t6, $a3, $t3
	sub.d	$a3, $t3, $a3
	st.w	$a3, $a0, 1524
	add.d	$t0, $a7, $a6
	st.w	$t0, $a0, 1516
	sub.d	$t0, $a6, $a7
	ori	$a6, $zero, 2456
	ldx.w	$a6, $a4, $a6
	ori	$a7, $zero, 2464
	ldx.w	$a7, $a4, $a7
	st.w	$t0, $a0, 1520
	ldptr.w	$t3, $a4, 2460
	ldptr.w	$a4, $a4, 2468
	add.d	$t4, $a7, $a6
	sub.d	$a6, $a6, $a7
	srai.d	$a7, $t3, 1
	sub.d	$t5, $a7, $a4
	srai.d	$a4, $a4, 1
	add.d	$a4, $a4, $t3
	add.d	$fp, $a4, $t4
	sub.d	$a7, $t4, $a4
	st.w	$a7, $a0, 1588
	add.d	$t7, $t5, $a6
	sub.d	$t3, $a6, $t5
	st.w	$t3, $a0, 1584
	slli.d	$a2, $a2, 5
	add.d	$a4, $a0, $a2
	alsl.d	$a2, $a1, $a4, 1
	addi.d	$a6, $a4, 136
	addi.d	$a4, $a4, 168
	srai.d	$t4, $t2, 1
	slli.d	$a1, $a1, 1
	ldx.hu	$t5, $a6, $a1
	ldx.hu	$t8, $a4, $a1
	addi.d	$s0, $a1, 2
	ldx.hu	$s1, $a6, $s0
	sub.d	$s2, $t4, $fp
	slli.d	$s3, $t5, 6
	slli.d	$s4, $t8, 6
	slli.d	$s1, $s1, 6
	ldx.hu	$t4, $a4, $s0
	addi.d	$t5, $a1, 4
	ldx.hu	$t8, $a6, $t5
	ldx.hu	$t5, $a4, $t5
	slli.d	$s0, $t4, 6
	vld	$vr0, $a0, 1384
	slli.d	$t8, $t8, 6
	slli.d	$t5, $t5, 6
	srai.d	$t4, $t1, 1
	vpickve2gr.w	$s5, $vr0, 0
	sub.d	$s5, $s5, $t6
	addi.d	$s5, $s5, 32
	add.d	$s6, $s5, $s2
	add.w	$s3, $s6, $s3
	srai.d	$s6, $s3, 6
	srai.d	$s3, $s3, 63
	andn	$s3, $s6, $s3
	slt	$s6, $s3, $a5
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $a5, $s6
	or	$s3, $s3, $s6
	st.w	$s3, $a0, 1448
	sub.d	$s2, $s5, $s2
	add.w	$s2, $s2, $s4
	srai.d	$s3, $s2, 6
	srai.d	$s2, $s2, 63
	andn	$s2, $s3, $s2
	slt	$s3, $s2, $a5
	maskeqz	$s2, $s2, $s3
	ld.d	$s4, $a0, 1452
	masknez	$s3, $a5, $s3
	or	$s2, $s2, $s3
	st.w	$s2, $a0, 1512
	vinsgr2vr.d	$vr1, $s4, 0
	ld.w	$s2, $a0, 1456
	ld.w	$s3, $a0, 1452
	ld.d	$s4, $a0, 1516
	ld.d	$s5, $a0, 1584
	pcalau12i	$s6, %pc_hi20(.LCPI3_0)
	vld	$vr2, $s6, %pc_lo12(.LCPI3_0)
	vinsgr2vr.d	$vr3, $s4, 0
	ld.w	$s4, $a0, 1516
	vinsgr2vr.d	$vr4, $s5, 0
	vinsgr2vr.w	$vr5, $t6, 0
	vori.b	$vr6, $vr2, 0
	vshuf.w	$vr6, $vr3, $vr5
	vinsgr2vr.w	$vr6, $a3, 3
	vadd.w	$vr3, $vr6, $vr0
	vinsgr2vr.w	$vr5, $fp, 0
	vinsgr2vr.w	$vr5, $t7, 1
	vpackev.d	$vr4, $vr4, $vr5
	vsrai.w	$vr4, $vr4, 1
	vinsgr2vr.w	$vr5, $t2, 0
	vshuf.w	$vr2, $vr1, $vr5
	vinsgr2vr.w	$vr2, $t1, 3
	vadd.w	$vr1, $vr4, $vr2
	vrepli.w	$vr2, 32
	vadd.w	$vr2, $vr3, $vr2
	vpickve2gr.w	$t1, $vr0, 1
	sub.d	$t1, $t1, $s4
	srai.d	$t2, $s3, 1
	sub.d	$t2, $t2, $t7
	addi.d	$t1, $t1, 32
	add.d	$t6, $t1, $t2
	add.w	$t6, $t6, $s1
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $a5
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a5, $t7
	or	$t6, $t6, $t7
	st.w	$t6, $a0, 1452
	sub.d	$t1, $t1, $t2
	add.w	$t1, $t1, $s0
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $a5
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a5, $t2
	or	$t1, $t1, $t2
	st.w	$t1, $a0, 1516
	vpickve2gr.w	$t1, $vr0, 2
	sub.d	$t0, $t1, $t0
	srai.d	$t1, $s2, 1
	sub.d	$t1, $t1, $t3
	addi.d	$t0, $t0, 32
	add.d	$t2, $t0, $t1
	add.w	$t2, $t2, $t8
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $a5
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a5, $t3
	or	$t2, $t2, $t3
	st.w	$t2, $a0, 1456
	sub.d	$t0, $t0, $t1
	add.w	$t0, $t0, $t5
	srai.d	$t1, $t0, 6
	srai.d	$t0, $t0, 63
	andn	$t0, $t1, $t0
	slt	$t1, $t0, $a5
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a5, $t1
	or	$t0, $t0, $t1
	st.w	$t0, $a0, 1520
	ld.d	$t0, $a2, 104
	vpickve2gr.w	$t1, $vr0, 3
	sub.d	$a3, $t1, $a3
	sub.d	$a7, $t4, $a7
	vinsgr2vr.d	$vr0, $t0, 0
	vrepli.b	$vr3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vslli.w	$vr0, $vr0, 6
	vadd.w	$vr4, $vr2, $vr1
	vadd.w	$vr0, $vr4, $vr0
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	addi.d	$a1, $a1, 6
	ldx.hu	$a6, $a6, $a1
	vreplgr2vr.w	$vr4, $a5
	vmin.w	$vr0, $vr0, $vr4
	vst	$vr0, $a0, 1384
	slli.d	$a6, $a6, 6
	addi.d	$a3, $a3, 32
	add.d	$t0, $a3, $a7
	add.w	$a6, $t0, $a6
	srai.d	$t0, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $a5
	maskeqz	$a6, $a6, $t0
	ldx.hu	$a1, $a4, $a1
	masknez	$a4, $a5, $t0
	or	$a4, $a6, $a4
	st.w	$a4, $a0, 1460
	slli.d	$a1, $a1, 6
	sub.d	$a3, $a3, $a7
	add.w	$a1, $a3, $a1
	srai.d	$a3, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a3, $a1
	slt	$a3, $a1, $a5
	maskeqz	$a1, $a1, $a3
	ld.d	$a2, $a2, 200
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 1524
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr3, $vr0
	vslli.w	$vr0, $vr0, 6
	vsub.w	$vr1, $vr2, $vr1
	vadd.w	$vr0, $vr1, $vr0
	vsrai.w	$vr0, $vr0, 6
	vmaxi.w	$vr0, $vr0, 0
	vmin.w	$vr0, $vr0, $vr4
	vst	$vr0, $a0, 1576
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	itrans, .Lfunc_end3-itrans
                                        # -- End function
	.globl	AssignQuantParam                # -- Begin function AssignQuantParam
	.p2align	5
	.type	AssignQuantParam,@function
AssignQuantParam:                       # @AssignQuantParam
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 20
	ld.w	$a3, $a1, 36
	pcalau12i	$a0, %pc_hi20(qmatrix)
	addi.d	$a0, $a0, %pc_lo12(qmatrix)
	beqz	$a2, .LBB4_7
# %bb.1:                                # %if.else
	bnez	$a3, .LBB4_8
# %bb.2:
	ori	$a1, $zero, 1
	ld.w	$a3, $fp, 24
	pcalau12i	$a2, %pc_hi20(quant_intra_default)
	addi.d	$a2, $a2, %pc_lo12(quant_intra_default)
	bnez	$a3, .LBB4_27
.LBB4_3:                                # %if.then86
	move	$a3, $a2
	bnez	$a1, .LBB4_28
# %bb.4:                                # %if.then78.1
	ld.w	$a3, $fp, 28
	beqz	$a3, .LBB4_29
.LBB4_5:                                # %if.else102.1
	ld.w	$a3, $fp, 956
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 120
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $fp, 32
	st.d	$a3, $a0, 8
	beqz	$a4, .LBB4_30
.LBB4_6:                                # %if.else102.2
	ld.w	$a3, $fp, 960
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 184
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a2
	b	.LBB4_31
.LBB4_7:                                # %land.lhs.true
	beqz	$a3, .LBB4_45
.LBB4_8:                                # %if.then10
	ld.w	$a3, $a1, 40
	beqz	$a3, .LBB4_22
# %bb.9:                                # %if.else27
	ld.w	$a3, $a1, 968
	addi.d	$a4, $a1, 72
	sltui	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $a1, 44
	st.d	$a3, $a0, 0
	beqz	$a4, .LBB4_11
.LBB4_10:                               # %if.else27.1
	ld.w	$a3, $a1, 972
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 136
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_11:                               # %if.then10.2
	ld.w	$a4, $a1, 48
	st.d	$a3, $a0, 8
	beqz	$a4, .LBB4_13
# %bb.12:                               # %if.else27.2
	ld.w	$a3, $a1, 976
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 200
	pcalau12i	$a5, %pc_hi20(quant_intra_default)
	addi.d	$a5, $a5, %pc_lo12(quant_intra_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_13:                               # %if.then10.3
	ld.w	$a4, $a1, 52
	st.d	$a3, $a0, 16
	beqz	$a4, .LBB4_23
# %bb.14:                               # %if.else27.3
	ld.w	$a3, $a1, 980
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 264
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $a1, 56
	st.d	$a3, $a0, 24
	beqz	$a4, .LBB4_16
.LBB4_15:                               # %if.else27.4
	ld.w	$a3, $a1, 984
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 328
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_16:                               # %if.then10.5
	ld.w	$a4, $a1, 60
	st.d	$a3, $a0, 32
	beqz	$a4, .LBB4_18
# %bb.17:                               # %if.else27.5
	ld.w	$a3, $a1, 988
	sltui	$a3, $a3, 1
	addi.d	$a4, $a1, 392
	pcalau12i	$a5, %pc_hi20(quant_inter_default)
	addi.d	$a5, $a5, %pc_lo12(quant_inter_default)
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_18:                               # %if.else43.6
	ld.w	$a4, $a1, 64
	st.d	$a3, $a0, 40
	beqz	$a4, .LBB4_20
# %bb.19:                               # %lor.lhs.false48.6
	ld.w	$a3, $a1, 992
	beqz	$a3, .LBB4_24
.LBB4_20:                               # %if.then53.6
	pcalau12i	$a3, %pc_hi20(quant8_intra_default)
	addi.d	$a3, $a3, %pc_lo12(quant8_intra_default)
	ld.w	$a4, $a1, 68
	st.d	$a3, $a0, 48
	beqz	$a4, .LBB4_25
.LBB4_21:                               # %lor.lhs.false48.7
	ld.w	$a3, $a1, 996
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 712
	pcalau12i	$a4, %pc_hi20(quant8_inter_default)
	addi.d	$a4, $a4, %pc_lo12(quant8_inter_default)
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	st.d	$a1, $a0, 56
	bnez	$a2, .LBB4_26
	b	.LBB4_49
.LBB4_22:
	pcalau12i	$a3, %pc_hi20(quant_intra_default)
	addi.d	$a3, $a3, %pc_lo12(quant_intra_default)
	ld.w	$a4, $a1, 44
	st.d	$a3, $a0, 0
	bnez	$a4, .LBB4_10
	b	.LBB4_11
.LBB4_23:
	pcalau12i	$a3, %pc_hi20(quant_inter_default)
	addi.d	$a3, $a3, %pc_lo12(quant_inter_default)
	ld.w	$a4, $a1, 56
	st.d	$a3, $a0, 24
	bnez	$a4, .LBB4_15
	b	.LBB4_16
.LBB4_24:
	addi.d	$a3, $a1, 456
	ld.w	$a4, $a1, 68
	st.d	$a3, $a0, 48
	bnez	$a4, .LBB4_21
.LBB4_25:
	pcalau12i	$a1, %pc_hi20(quant8_inter_default)
	addi.d	$a1, $a1, %pc_lo12(quant8_inter_default)
	st.d	$a1, $a0, 56
	beqz	$a2, .LBB4_49
.LBB4_26:
	move	$a1, $zero
	ld.w	$a3, $fp, 24
	pcalau12i	$a2, %pc_hi20(quant_intra_default)
	addi.d	$a2, $a2, %pc_lo12(quant_intra_default)
	beqz	$a3, .LBB4_3
.LBB4_27:                               # %if.else102
	ld.w	$a3, $fp, 952
	addi.d	$a4, $fp, 56
	sltui	$a3, $a3, 1
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
.LBB4_28:                               # %if.then78.1.sink.split
	st.d	$a3, $a0, 0
	ld.w	$a3, $fp, 28
	bnez	$a3, .LBB4_5
.LBB4_29:                               # %if.else95.1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $fp, 32
	st.d	$a3, $a0, 8
	bnez	$a4, .LBB4_6
.LBB4_30:                               # %if.else95.2
	ld.d	$a3, $a0, 8
.LBB4_31:                               # %if.then78.3
	ld.w	$a4, $fp, 36
	pcalau12i	$a2, %pc_hi20(quant_inter_default)
	addi.d	$a2, $a2, %pc_lo12(quant_inter_default)
	st.d	$a3, $a0, 16
	beqz	$a4, .LBB4_33
# %bb.32:                               # %if.else102.3
	ld.w	$a3, $fp, 964
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 248
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	b	.LBB4_34
.LBB4_33:                               # %if.then86.3
	move	$a3, $a2
	beqz	$a1, .LBB4_35
.LBB4_34:                               # %if.then78.4.sink.split
	st.d	$a3, $a0, 24
.LBB4_35:                               # %if.then78.4
	ld.w	$a3, $fp, 40
	beqz	$a3, .LBB4_40
# %bb.36:                               # %if.else102.4
	ld.w	$a3, $fp, 968
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 312
	masknez	$a5, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	ld.w	$a4, $fp, 44
	st.d	$a3, $a0, 32
	beqz	$a4, .LBB4_41
.LBB4_37:                               # %if.else102.5
	ld.w	$a3, $fp, 972
	sltui	$a3, $a3, 1
	addi.d	$a4, $fp, 376
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.w	$a3, $fp, 48
	st.d	$a2, $a0, 40
	beqz	$a3, .LBB4_42
.LBB4_38:                               # %if.else135.6
	ld.w	$a2, $fp, 976
	addi.d	$a3, $fp, 440
	sltui	$a2, $a2, 1
	pcalau12i	$a4, %pc_hi20(quant8_intra_default)
	addi.d	$a4, $a4, %pc_lo12(quant8_intra_default)
	ld.w	$a5, $fp, 52
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	st.d	$a2, $a0, 48
	bnez	$a5, .LBB4_47
# %bb.39:                               # %if.then126.7
	bnez	$a1, .LBB4_44
	b	.LBB4_49
.LBB4_40:                               # %if.else95.4
	ld.d	$a3, $a0, 24
	ld.w	$a4, $fp, 44
	st.d	$a3, $a0, 32
	bnez	$a4, .LBB4_37
.LBB4_41:                               # %if.else95.5
	ld.d	$a2, $a0, 32
	ld.w	$a3, $fp, 48
	st.d	$a2, $a0, 40
	bnez	$a3, .LBB4_38
.LBB4_42:                               # %if.then126.6
	beqz	$a1, .LBB4_46
# %bb.43:                               # %if.else121.7.thread83
	ld.w	$a1, $fp, 52
	pcalau12i	$a2, %pc_hi20(quant8_intra_default)
	addi.d	$a2, $a2, %pc_lo12(quant8_intra_default)
	st.d	$a2, $a0, 48
	bnez	$a1, .LBB4_47
.LBB4_44:
	pcalau12i	$a1, %pc_hi20(quant8_inter_default)
	addi.d	$a1, $a1, %pc_lo12(quant8_inter_default)
	b	.LBB4_48
.LBB4_45:                               # %for.body.preheader
	pcalau12i	$a1, %pc_hi20(quant_org)
	addi.d	$a1, $a1, %pc_lo12(quant_org)
	st.d	$a1, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 16
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 32
	st.d	$a1, $a0, 40
	pcalau12i	$a1, %pc_hi20(quant8_org)
	addi.d	$a1, $a1, %pc_lo12(quant8_org)
	st.d	$a1, $a0, 48
	b	.LBB4_48
.LBB4_46:                               # %if.else121.7.thread
	ld.w	$a1, $fp, 52
	beqz	$a1, .LBB4_49
.LBB4_47:                               # %if.else135.7
	ld.w	$a1, $fp, 980
	sltui	$a1, $a1, 1
	addi.d	$a2, $fp, 696
	pcalau12i	$a3, %pc_hi20(quant8_inter_default)
	addi.d	$a3, $a3, %pc_lo12(quant8_inter_default)
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
.LBB4_48:                               # %if.end161.sink.split
	st.d	$a1, $a0, 56
.LBB4_49:                               # %if.end161
	pcaddu18i	$ra, %call36(CalculateQuantParam)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	beqz	$a0, .LBB4_51
# %bb.50:                               # %if.then163
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(CalculateQuant8Param)
	jr	$t8
.LBB4_51:                               # %if.end164
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	AssignQuantParam, .Lfunc_end4-AssignQuantParam
                                        # -- End function
	.globl	CalculateQuantParam             # -- Begin function CalculateQuantParam
	.p2align	5
	.type	CalculateQuantParam,@function
CalculateQuantParam:                    # @CalculateQuantParam
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(qmatrix)
	addi.d	$a6, $a1, %pc_lo12(qmatrix)
	ld.d	$a1, $a6, 0
	ld.d	$a2, $a6, 8
	ld.d	$a3, $a6, 16
	ld.d	$a4, $a6, 24
	ld.d	$a5, $a6, 32
	ld.d	$a6, $a6, 40
	pcalau12i	$a7, %got_pc_hi20(dequant_coef)
	ld.d	$a7, $a7, %got_pc_lo12(dequant_coef)
	pcalau12i	$t0, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$t0, $t0, %pc_lo12(InvLevelScale4x4Luma_Intra)
	pcalau12i	$t1, %pc_hi20(InvLevelScale4x4Chroma_Intra)
	addi.d	$t1, $t1, %pc_lo12(InvLevelScale4x4Chroma_Intra)
	pcalau12i	$t2, %pc_hi20(InvLevelScale4x4Luma_Inter)
	addi.d	$t2, $t2, %pc_lo12(InvLevelScale4x4Luma_Inter)
	pcalau12i	$t3, %pc_hi20(InvLevelScale4x4Chroma_Inter)
	addi.d	$t3, $t3, %pc_lo12(InvLevelScale4x4Chroma_Inter)
	ori	$t4, $zero, 384
	.p2align	4, , 16
.LBB5_1:                                # %for.cond1.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t8, $a7, $a0
	ld.w	$t5, $a1, 0
	mul.d	$t5, $t5, $t8
	stx.w	$t5, $t0, $a0
	ld.w	$t5, $a2, 0
	mul.d	$t5, $t5, $t8
	stx.w	$t5, $t1, $a0
	ld.w	$t6, $a3, 0
	add.d	$t5, $t1, $a0
	mul.d	$t6, $t6, $t8
	st.w	$t6, $t5, 384
	ld.w	$t6, $a4, 0
	mul.d	$t6, $t6, $t8
	stx.w	$t6, $t2, $a0
	ld.w	$t6, $a5, 0
	mul.d	$t6, $t6, $t8
	stx.w	$t6, $t3, $a0
	ld.w	$fp, $a6, 0
	add.d	$t7, $a7, $a0
	add.d	$t6, $t3, $a0
	mul.d	$t8, $fp, $t8
	st.w	$t8, $t6, 384
	ld.w	$s0, $t7, 4
	ld.w	$fp, $a1, 16
	add.d	$t8, $t0, $a0
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t8, 16
	ld.w	$fp, $a2, 16
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t5, 16
	ld.w	$fp, $a3, 16
	mul.d	$fp, $fp, $s0
	st.w	$fp, $t5, 400
	ld.w	$s1, $a4, 16
	add.d	$fp, $t2, $a0
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 16
	ld.w	$s1, $a5, 16
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 16
	ld.w	$s1, $a6, 16
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 400
	ld.w	$s0, $t7, 8
	ld.w	$s1, $a1, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 32
	ld.w	$s1, $a2, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 32
	ld.w	$s1, $a3, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 416
	ld.w	$s1, $a4, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 32
	ld.w	$s1, $a5, 32
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 32
	ld.w	$s1, $a6, 32
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 416
	ld.w	$s0, $t7, 12
	ld.w	$s1, $a1, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 48
	ld.w	$s1, $a2, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 48
	ld.w	$s1, $a3, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 432
	ld.w	$s1, $a4, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 48
	ld.w	$s1, $a5, 48
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 48
	ld.w	$s1, $a6, 48
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 432
	ld.w	$s0, $t7, 16
	ld.w	$s1, $a1, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 4
	ld.w	$s1, $a2, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 4
	ld.w	$s1, $a3, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 388
	ld.w	$s1, $a4, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 4
	ld.w	$s1, $a5, 4
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 4
	ld.w	$s1, $a6, 4
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 388
	ld.w	$s0, $t7, 20
	ld.w	$s1, $a1, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 20
	ld.w	$s1, $a2, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 20
	ld.w	$s1, $a3, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 404
	ld.w	$s1, $a4, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 20
	ld.w	$s1, $a5, 20
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 20
	ld.w	$s1, $a6, 20
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 404
	ld.w	$s0, $t7, 24
	ld.w	$s1, $a1, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 36
	ld.w	$s1, $a2, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 36
	ld.w	$s1, $a3, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 420
	ld.w	$s1, $a4, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 36
	ld.w	$s1, $a5, 36
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 36
	ld.w	$s1, $a6, 36
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 420
	ld.w	$s0, $t7, 28
	ld.w	$s1, $a1, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 52
	ld.w	$s1, $a2, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 52
	ld.w	$s1, $a3, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 436
	ld.w	$s1, $a4, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 52
	ld.w	$s1, $a5, 52
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 52
	ld.w	$s1, $a6, 52
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 436
	ld.w	$s0, $t7, 32
	ld.w	$s1, $a1, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 8
	ld.w	$s1, $a2, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 8
	ld.w	$s1, $a3, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 392
	ld.w	$s1, $a4, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 8
	ld.w	$s1, $a5, 8
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 8
	ld.w	$s1, $a6, 8
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 392
	ld.w	$s0, $t7, 36
	ld.w	$s1, $a1, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 24
	ld.w	$s1, $a2, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 24
	ld.w	$s1, $a3, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 408
	ld.w	$s1, $a4, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 24
	ld.w	$s1, $a5, 24
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 24
	ld.w	$s1, $a6, 24
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 408
	ld.w	$s0, $t7, 40
	ld.w	$s1, $a1, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 40
	ld.w	$s1, $a2, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 40
	ld.w	$s1, $a3, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 424
	ld.w	$s1, $a4, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 40
	ld.w	$s1, $a5, 40
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 40
	ld.w	$s1, $a6, 40
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 424
	ld.w	$s0, $t7, 44
	ld.w	$s1, $a1, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 56
	ld.w	$s1, $a2, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 56
	ld.w	$s1, $a3, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 440
	ld.w	$s1, $a4, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 56
	ld.w	$s1, $a5, 56
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 56
	ld.w	$s1, $a6, 56
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 440
	ld.w	$s0, $t7, 48
	ld.w	$s1, $a1, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 12
	ld.w	$s1, $a2, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 12
	ld.w	$s1, $a3, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 396
	ld.w	$s1, $a4, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 12
	ld.w	$s1, $a5, 12
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 12
	ld.w	$s1, $a6, 12
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 396
	ld.w	$s0, $t7, 52
	ld.w	$s1, $a1, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 28
	ld.w	$s1, $a2, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 28
	ld.w	$s1, $a3, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 412
	ld.w	$s1, $a4, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 28
	ld.w	$s1, $a5, 28
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 28
	ld.w	$s1, $a6, 28
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 412
	ld.w	$s0, $t7, 56
	ld.w	$s1, $a1, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t8, 44
	ld.w	$s1, $a2, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 44
	ld.w	$s1, $a3, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t5, 428
	ld.w	$s1, $a4, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $fp, 44
	ld.w	$s1, $a5, 44
	mul.d	$s1, $s1, $s0
	st.w	$s1, $t6, 44
	ld.w	$s1, $a6, 44
	mul.d	$s0, $s1, $s0
	st.w	$s0, $t6, 428
	ld.w	$t7, $t7, 60
	ld.w	$s0, $a1, 60
	mul.d	$s0, $s0, $t7
	st.w	$s0, $t8, 60
	ld.w	$t8, $a2, 60
	mul.d	$t8, $t8, $t7
	st.w	$t8, $t5, 60
	ld.w	$t8, $a3, 60
	mul.d	$t8, $t8, $t7
	st.w	$t8, $t5, 444
	ld.w	$t5, $a4, 60
	mul.d	$t5, $t5, $t7
	st.w	$t5, $fp, 60
	ld.w	$t5, $a5, 60
	mul.d	$t5, $t5, $t7
	st.w	$t5, $t6, 60
	ld.w	$t5, $a6, 60
	mul.d	$t5, $t5, $t7
	addi.d	$a0, $a0, 64
	st.w	$t5, $t6, 444
	bne	$a0, $t4, .LBB5_1
# %bb.2:                                # %for.end99
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	CalculateQuantParam, .Lfunc_end5-CalculateQuantParam
                                        # -- End function
	.globl	itrans_2                        # -- Begin function itrans_2
	.p2align	5
	.type	itrans_2,@function
itrans_2:                               # @itrans_2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a0, 28
	lu12i.w	$a7, 1
	ori	$a2, $a7, 1788
	ori	$a1, $zero, 2408
	ldx.w	$a3, $a0, $a1
	ori	$t3, $zero, 3176
	ldx.w	$t0, $a0, $t3
	ori	$a4, $zero, 3944
	ldx.w	$t1, $a0, $a4
	ori	$a1, $a7, 616
	ldx.w	$t2, $a0, $a1
	ldx.w	$a6, $a0, $a2
	add.d	$a2, $t1, $a3
	sub.d	$a3, $a3, $t1
	sub.d	$t1, $t0, $t2
	add.d	$t0, $t2, $t0
	add.d	$t6, $t0, $a2
	stptr.w	$t6, $a0, 2408
	add.d	$t2, $t1, $a3
	stptr.w	$t2, $a0, 3176
	sub.d	$a3, $a3, $t1
	stptr.w	$a3, $a0, 3944
	sub.d	$a3, $a2, $t0
	ori	$a2, $zero, 2472
	ldx.w	$t0, $a0, $a2
	ori	$a2, $zero, 3240
	ldx.w	$t2, $a0, $a2
	ori	$t1, $zero, 4008
	ldx.w	$t4, $a0, $t1
	ori	$a2, $a7, 680
	ldx.w	$t5, $a0, $a2
	stptr.w	$a3, $a0, 4712
	add.d	$a3, $t4, $t0
	sub.d	$t0, $t0, $t4
	sub.d	$t4, $t2, $t5
	add.d	$t2, $t5, $t2
	add.d	$t8, $t2, $a3
	stptr.w	$t8, $a0, 2472
	add.d	$t5, $t4, $t0
	stptr.w	$t5, $a0, 3240
	sub.d	$t0, $t0, $t4
	stptr.w	$t0, $a0, 4008
	sub.d	$t0, $a3, $t2
	ori	$a3, $zero, 2536
	ldx.w	$t4, $a0, $a3
	ori	$a3, $zero, 3304
	ldx.w	$t7, $a0, $a3
	ori	$t2, $zero, 4072
	ldx.w	$fp, $a0, $t2
	ori	$a3, $a7, 744
	ldx.w	$s0, $a0, $a3
	stptr.w	$t0, $a0, 4776
	add.d	$t0, $fp, $t4
	sub.d	$t4, $t4, $fp
	sub.d	$fp, $t7, $s0
	add.d	$s1, $s0, $t7
	add.d	$s0, $s1, $t0
	stptr.w	$s0, $a0, 2536
	add.d	$t7, $fp, $t4
	stptr.w	$t7, $a0, 3304
	sub.d	$t4, $t4, $fp
	stptr.w	$t4, $a0, 4072
	sub.d	$t4, $t0, $s1
	ori	$t0, $zero, 2600
	ldx.w	$fp, $a0, $t0
	ori	$t0, $zero, 3368
	ldx.w	$s1, $a0, $t0
	ori	$t0, $a7, 40
	ldx.w	$s2, $a0, $t0
	ori	$t0, $a7, 808
	ldx.w	$a7, $a0, $t0
	stptr.w	$t4, $a0, 4840
	add.d	$s3, $s2, $fp
	sub.d	$t4, $fp, $s2
	sub.d	$s2, $s1, $a7
	add.d	$a7, $a7, $s1
	add.d	$s1, $a7, $s3
	stptr.w	$s1, $a0, 2600
	add.d	$fp, $s2, $t4
	stptr.w	$fp, $a0, 3368
	sub.d	$t4, $t4, $s2
	stptr.w	$t4, $a0, 4136
	sub.d	$a7, $s3, $a7
	stptr.w	$a7, $a0, 4904
	add.w	$a6, $a6, $a5
	lu12i.w	$a5, 174762
	ori	$a5, $a5, 2731
	mul.d	$a5, $a6, $a5
	srli.d	$a7, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a7
	slli.d	$a7, $a5, 2
	alsl.d	$a7, $a5, $a7, 1
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 6
	pcalau12i	$a7, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a7, $a7, %pc_lo12(InvLevelScale4x4Luma_Intra)
	ldx.w	$s2, $a7, $a6
	add.d	$s3, $s0, $t6
	add.d	$s4, $s1, $t8
	add.d	$s5, $s4, $s3
	mul.d	$s2, $s5, $s2
	sll.w	$s2, $s2, $a5
	addi.w	$s2, $s2, 32
	srli.d	$s2, $s2, 6
	stptr.w	$s2, $a0, 2408
	ldx.w	$s2, $a7, $a6
	sub.d	$t6, $t6, $s0
	sub.d	$t8, $t8, $s1
	add.d	$s0, $t8, $t6
	mul.d	$s0, $s2, $s0
	sll.w	$s0, $s0, $a5
	addi.w	$s0, $s0, 32
	srli.d	$s0, $s0, 6
	stptr.w	$s0, $a0, 2472
	ldx.w	$s0, $a7, $a6
	sub.d	$t6, $t6, $t8
	mul.d	$t6, $s0, $t6
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 2536
	ldx.w	$t6, $a7, $a6
	sub.d	$t8, $s3, $s4
	mul.d	$t6, $t6, $t8
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	ldx.w	$t3, $a0, $t3
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 2600
	ldx.w	$t6, $a7, $a6
	add.d	$t8, $t7, $t3
	add.d	$s0, $fp, $t5
	add.d	$s1, $s0, $t8
	mul.d	$t6, $s1, $t6
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 3176
	ldx.w	$t6, $a7, $a6
	sub.d	$t3, $t3, $t7
	sub.d	$t5, $t5, $fp
	add.d	$t7, $t5, $t3
	mul.d	$t6, $t6, $t7
	sll.w	$t6, $t6, $a5
	addi.w	$t6, $t6, 32
	srli.d	$t6, $t6, 6
	stptr.w	$t6, $a0, 3240
	ldx.w	$t6, $a7, $a6
	sub.d	$t3, $t3, $t5
	mul.d	$t3, $t6, $t3
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	stptr.w	$t3, $a0, 3304
	ldx.w	$t3, $a7, $a6
	sub.d	$t5, $t8, $s0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	ldx.w	$a4, $a0, $a4
	ldx.w	$t2, $a0, $t2
	ldx.w	$t1, $a0, $t1
	stptr.w	$t3, $a0, 3368
	ldx.w	$t3, $a7, $a6
	add.d	$t5, $t2, $a4
	add.d	$t6, $t4, $t1
	add.d	$t7, $t6, $t5
	mul.d	$t3, $t7, $t3
	sll.w	$t3, $t3, $a5
	addi.w	$t3, $t3, 32
	srli.d	$t3, $t3, 6
	stptr.w	$t3, $a0, 3944
	ldx.w	$t3, $a7, $a6
	sub.d	$a4, $a4, $t2
	sub.d	$t1, $t1, $t4
	add.d	$t2, $t1, $a4
	mul.d	$t2, $t3, $t2
	sll.w	$t2, $t2, $a5
	addi.w	$t2, $t2, 32
	srli.d	$t2, $t2, 6
	stptr.w	$t2, $a0, 4008
	ldx.w	$t2, $a7, $a6
	sub.d	$a4, $a4, $t1
	mul.d	$a4, $t2, $a4
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	stptr.w	$a4, $a0, 4072
	ldx.w	$a4, $a7, $a6
	sub.d	$t1, $t5, $t6
	mul.d	$a4, $a4, $t1
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	ldx.w	$a1, $a0, $a1
	ldx.w	$a2, $a0, $a2
	ldx.w	$a3, $a0, $a3
	ldx.w	$t0, $a0, $t0
	stptr.w	$a4, $a0, 4136
	ldx.w	$a4, $a7, $a6
	add.d	$t1, $a3, $a1
	add.d	$t2, $t0, $a2
	add.d	$t3, $t2, $t1
	mul.d	$a4, $t3, $a4
	sll.w	$a4, $a4, $a5
	addi.w	$a4, $a4, 32
	srli.d	$a4, $a4, 6
	stptr.w	$a4, $a0, 4712
	ldx.w	$a4, $a7, $a6
	sub.d	$a1, $a1, $a3
	sub.d	$a2, $a2, $t0
	add.d	$a3, $a2, $a1
	mul.d	$a3, $a4, $a3
	sll.w	$a3, $a3, $a5
	addi.w	$a3, $a3, 32
	srli.d	$a3, $a3, 6
	stptr.w	$a3, $a0, 4776
	ldx.w	$a3, $a7, $a6
	sub.d	$a1, $a1, $a2
	mul.d	$a1, $a3, $a1
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 32
	srli.d	$a1, $a1, 6
	stptr.w	$a1, $a0, 4840
	ldx.w	$a1, $a7, $a6
	sub.d	$a2, $t1, $t2
	mul.d	$a1, $a1, $a2
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 32
	srli.d	$a1, $a1, 6
	stptr.w	$a1, $a0, 4904
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	itrans_2, .Lfunc_end6-itrans_2
                                        # -- End function
	.globl	itrans_sp                       # -- Begin function itrans_sp
	.p2align	5
	.type	itrans_sp,@function
itrans_sp:                              # @itrans_sp
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
	move	$a5, $zero
	move	$a6, $zero
	ld.w	$t0, $a0, 28
	ld.w	$a7, $a0, 32
	slli.d	$a2, $a2, 5
	add.d	$a2, $a0, $a2
	addi.d	$t1, $a2, 104
	slli.d	$a1, $a1, 1
	ldx.hu	$t2, $t1, $a1
	addi.d	$t3, $a1, 2
	ldx.hu	$t4, $t1, $t3
	addi.d	$t5, $a1, 4
	ldx.hu	$t6, $t1, $t5
	addi.d	$t7, $a1, 6
	ldx.hu	$t1, $t1, $t7
	addi.d	$t8, $a2, 136
	ldx.hu	$fp, $t8, $a1
	ldx.hu	$s0, $t8, $t3
	ldx.hu	$s1, $t8, $t5
	ldx.hu	$t8, $t8, $t7
	addi.d	$s2, $a2, 168
	ldx.hu	$s3, $s2, $a1
	ldx.hu	$s4, $s2, $t3
	ldx.hu	$s5, $s2, $t5
	ldx.hu	$s2, $s2, $t7
	addi.d	$a2, $a2, 200
	ldx.hu	$a1, $a2, $a1
	ldx.hu	$s6, $a2, $t3
	ldx.hu	$t5, $a2, $t5
	ldx.hu	$t7, $a2, $t7
	add.d	$a2, $t1, $t2
	sub.d	$t1, $t2, $t1
	add.d	$t2, $t6, $t4
	sub.d	$t4, $t4, $t6
	add.d	$t6, $t2, $a2
	sub.d	$t3, $a2, $t2
	alsl.d	$s7, $t1, $t4, 1
	slli.d	$a2, $t4, 1
	sub.d	$a2, $t1, $a2
	add.d	$t1, $t8, $fp
	sub.d	$t2, $fp, $t8
	add.d	$t4, $s1, $s0
	sub.d	$t8, $s0, $s1
	add.d	$fp, $t4, $t1
	sub.d	$t4, $t1, $t4
	alsl.d	$s0, $t2, $t8, 1
	slli.d	$t1, $t8, 1
	sub.d	$t2, $t2, $t1
	add.d	$t1, $s2, $s3
	sub.d	$t8, $s3, $s2
	add.d	$s1, $s5, $s4
	sub.d	$s2, $s4, $s5
	add.d	$s3, $s1, $t1
	sub.d	$s1, $t1, $s1
	alsl.d	$s4, $t8, $s2, 1
	slli.d	$t1, $s2, 1
	sub.d	$t8, $t8, $t1
	add.d	$t1, $t7, $a1
	sub.d	$a1, $a1, $t7
	add.d	$t7, $t5, $s6
	sub.d	$t5, $s6, $t5
	add.d	$s2, $t7, $t1
	sub.d	$t7, $t1, $t7
	alsl.d	$s5, $a1, $t5, 1
	slli.d	$t1, $t5, 1
	sub.d	$t5, $a1, $t1
	add.d	$a1, $s2, $t6
	sub.d	$t6, $t6, $s2
	add.d	$s2, $s3, $fp
	sub.d	$fp, $fp, $s3
	add.d	$t1, $s2, $a1
	st.w	$t1, $sp, 24
	ld.w	$t1, $a0, 44
	sub.d	$s2, $a1, $s2
	addi.d	$a1, $sp, 72
	st.w	$s2, $sp, 32
	alsl.d	$s2, $t6, $fp, 1
	st.w	$s2, $sp, 28
	slli.d	$fp, $fp, 1
	sub.d	$t6, $t6, $fp
	st.w	$t6, $sp, 36
	add.d	$t6, $s5, $s7
	sub.d	$fp, $s7, $s5
	add.d	$s2, $s4, $s0
	sub.d	$s0, $s0, $s4
	add.d	$s3, $s2, $t6
	st.w	$s3, $sp, 40
	sub.d	$t6, $t6, $s2
	st.w	$t6, $sp, 48
	alsl.d	$t6, $fp, $s0, 1
	st.w	$t6, $sp, 44
	slli.d	$t6, $s0, 1
	sub.d	$t6, $fp, $t6
	st.w	$t6, $sp, 52
	add.d	$t6, $t7, $t3
	sub.d	$t3, $t3, $t7
	add.d	$t7, $s1, $t4
	sub.d	$t4, $t4, $s1
	add.d	$fp, $t7, $t6
	st.w	$fp, $sp, 56
	sub.d	$t6, $t6, $t7
	st.w	$t6, $sp, 64
	alsl.d	$t6, $t3, $t4, 1
	st.w	$t6, $sp, 60
	slli.d	$t4, $t4, 1
	sub.d	$t3, $t3, $t4
	st.w	$t3, $sp, 68
	add.d	$t3, $t5, $a2
	sub.d	$a2, $a2, $t5
	add.d	$t4, $t8, $t2
	sub.d	$t2, $t2, $t8
	add.d	$t5, $t4, $t3
	st.w	$t5, $sp, 72
	sub.d	$t3, $t3, $t4
	st.w	$t3, $sp, 80
	alsl.d	$t3, $a2, $t2, 1
	st.w	$t3, $sp, 76
	slli.d	$t2, $t2, 1
	sub.d	$a2, $a2, $t2
	st.w	$a2, $sp, 84
	lu12i.w	$a2, 174762
	ori	$a2, $a2, 2731
	mul.d	$t2, $t0, $a2
	srli.d	$t3, $t2, 63
	srli.d	$t2, $t2, 32
	add.d	$t2, $t2, $t3
	ori	$t3, $zero, 6
	mul.d	$t4, $t2, $t3
	sub.w	$t4, $t0, $t4
	mul.d	$a2, $a7, $a2
	srli.d	$t0, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $t0
	mul.d	$t0, $a2, $t3
	sub.w	$t5, $a7, $t0
	addi.d	$a7, $a2, 15
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a7
	bstrpick.d	$t3, $t0, 31, 31
	add.w	$t0, $t0, $t3
	srai.d	$t0, $t0, 1
	addi.d	$t1, $t1, -4
	sltui	$t3, $t1, 1
	masknez	$t1, $t2, $t3
	maskeqz	$t2, $a2, $t3
	or	$t1, $t2, $t1
	masknez	$t2, $t4, $t3
	maskeqz	$t3, $t5, $t3
	or	$t2, $t3, $t2
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	slli.d	$a4, $a4, 6
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	add.d	$a4, $a3, $a0
	pcalau12i	$t3, %got_pc_hi20(dequant_coef)
	ld.d	$t4, $t3, %got_pc_lo12(dequant_coef)
	addi.d	$t3, $a4, 2047
	addi.d	$a4, $t3, 361
	slli.d	$t2, $t2, 6
	add.d	$t2, $t4, $t2
	addi.d	$t3, $t3, 373
	slli.d	$t5, $t5, 6
	addi.d	$t5, $t5, 48
	add.d	$t4, $t4, $t5
	pcalau12i	$t6, %pc_hi20(quant_coef)
	addi.d	$t6, $t6, %pc_lo12(quant_coef)
	add.d	$t5, $t6, $t5
	addi.d	$t6, $sp, 24
	ori	$t7, $zero, 4
	ori	$t8, $zero, 16
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_1:                                # %if.then192.3
                                        #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$a3, $a1, $a5
	ldx.w	$s0, $t5, $a5
	srai.d	$s1, $a3, 31
	xor	$s2, $a3, $s1
	sub.d	$s1, $s2, $s1
	mul.d	$s0, $s1, $s0
	add.d	$s0, $s0, $t0
	sra.w	$s0, $s0, $a7
	slti	$a3, $a3, 0
	srai.d	$s1, $s0, 31
	xor	$s0, $s0, $s1
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $zero, $s0
	masknez	$s0, $s0, $a3
	maskeqz	$a3, $s1, $a3
	or	$a3, $a3, $s0
	add.w	$a3, $a3, $fp
	ldx.w	$fp, $t4, $a5
	srai.d	$s0, $a3, 31
	xor	$s1, $a3, $s0
	sub.d	$s0, $s1, $s0
	mul.d	$fp, $s0, $fp
	sll.w	$fp, $fp, $a2
	slti	$a3, $a3, 0
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $zero, $fp
	masknez	$fp, $fp, $a3
	maskeqz	$a3, $s0, $a3
	or	$fp, $a3, $fp
.LBB7_2:                                # %for.inc297.3
                                        #   in Loop: Header=BB7_3 Depth=1
	st.w	$fp, $t3, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	addi.d	$t3, $t3, 16
	beq	$a5, $t8, .LBB7_19
.LBB7_3:                                # %for.cond161.preheader
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$s3, $a6, $a4, 4
	add.d	$s1, $t5, $a5
	ld.w	$fp, $t3, -12
	ldx.w	$s7, $t2, $a5
	add.d	$s0, $t4, $a5
	ld.w	$s4, $a0, 36
	sra.w	$fp, $fp, $t1
	div.w	$s5, $fp, $s7
	add.d	$s2, $a1, $a5
	add.d	$fp, $t2, $a5
	beqz	$s4, .LBB7_5
# %bb.4:                                # %for.cond161.preheader.if.then192_crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	ldx.w	$s6, $a5, $t6
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s8, $a0, 44
	ldx.w	$s6, $a5, $t6
	bne	$s8, $t7, .LBB7_13
.LBB7_6:                                # %for.inc297
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s7, $s1, -48
	srai.d	$s8, $s6, 31
	xor	$ra, $s6, $s8
	sub.d	$s8, $ra, $s8
	mul.d	$s7, $s8, $s7
	add.d	$s7, $s7, $t0
	sra.w	$s7, $s7, $a7
	slti	$s6, $s6, 0
	srai.d	$s8, $s7, 31
	xor	$s7, $s7, $s8
	sub.d	$s7, $s7, $s8
	sub.d	$s8, $zero, $s7
	masknez	$s7, $s7, $s6
	maskeqz	$s6, $s8, $s6
	or	$s6, $s6, $s7
	add.w	$s5, $s6, $s5
	ld.w	$s6, $s0, -48
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	sll.w	$s6, $s6, $a2
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	st.w	$s5, $t3, -12
	ld.w	$s5, $t3, -8
	ld.w	$s7, $fp, 16
	sra.w	$s5, $s5, $t1
	div.w	$s6, $s5, $s7
	st.w	$s6, $t3, -8
	beqz	$s4, .LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s5, $t3, -8
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s5, $s3, 4
	ld.w	$s8, $a0, 44
	bne	$s8, $t7, .LBB7_14
.LBB7_9:                                # %for.inc297.1
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$s7, $s2, -32
	ld.w	$s8, $s1, -32
	srai.d	$ra, $s7, 31
	xor	$a3, $s7, $ra
	sub.d	$a3, $a3, $ra
	mul.d	$a3, $a3, $s8
	add.d	$a3, $a3, $t0
	sra.w	$a3, $a3, $a7
	slti	$s7, $s7, 0
	srai.d	$s8, $a3, 31
	xor	$a3, $a3, $s8
	sub.d	$a3, $a3, $s8
	sub.d	$s8, $zero, $a3
	masknez	$a3, $a3, $s7
	maskeqz	$s7, $s8, $s7
	or	$a3, $s7, $a3
	add.w	$a3, $a3, $s6
	ld.w	$s6, $s0, -32
	srai.d	$s7, $a3, 31
	xor	$s8, $a3, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	sll.w	$s6, $s6, $a2
	slti	$a3, $a3, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	masknez	$s6, $s6, $a3
	maskeqz	$a3, $s7, $a3
	or	$a3, $a3, $s6
	st.w	$a3, $s5, 0
	ld.w	$a3, $t3, -4
	ld.w	$s6, $fp, 32
	sra.w	$a3, $a3, $t1
	div.w	$s5, $a3, $s6
	st.w	$s5, $t3, -4
	beqz	$s4, .LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s3, $t3, -4
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s3, $s3, 8
	ld.w	$a3, $a0, 44
	bne	$a3, $t7, .LBB7_15
	.p2align	4, , 16
.LBB7_12:                               # %if.then192.2
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a3, $s2, -16
	ld.w	$s1, $s1, -16
	srai.d	$s2, $a3, 31
	xor	$s4, $a3, $s2
	sub.d	$s2, $s4, $s2
	mul.d	$s1, $s2, $s1
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $a7
	slti	$a3, $a3, 0
	srai.d	$s2, $s1, 31
	xor	$s1, $s1, $s2
	sub.d	$s1, $s1, $s2
	sub.d	$s2, $zero, $s1
	masknez	$s1, $s1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $s1
	add.w	$a3, $a3, $s5
	ld.w	$s0, $s0, -16
	srai.d	$s1, $a3, 31
	xor	$s2, $a3, $s1
	sub.d	$s1, $s2, $s1
	mul.d	$s0, $s1, $s0
	sll.w	$s0, $s0, $a2
	slti	$a3, $a3, 0
	srai.d	$s1, $s0, 31
	xor	$s0, $s0, $s1
	sub.d	$s0, $s0, $s1
	sub.d	$s1, $zero, $s0
	masknez	$s0, $s0, $a3
	maskeqz	$a3, $s1, $a3
	or	$s0, $a3, $s0
	b	.LBB7_16
.LBB7_13:                               # %for.inc297.thread
                                        #   in Loop: Header=BB7_3 Depth=1
	pcalau12i	$s8, %pc_hi20(A)
	addi.d	$s8, $s8, %pc_lo12(A)
	ldx.w	$s8, $s8, $a5
	mul.d	$s5, $s5, $s7
	mul.d	$s5, $s5, $s8
	sll.w	$s5, $s5, $t1
	srli.d	$s5, $s5, 6
	add.w	$s5, $s5, $s6
	ld.w	$s6, $s1, -48
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a7
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $s0, -48
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	or	$s5, $s5, $s6
	mul.d	$s5, $s5, $s8
	sll.w	$s5, $s5, $a2
	st.w	$s5, $t3, -12
	ld.w	$s6, $t3, -8
	ld.w	$s7, $fp, 16
	addi.d	$s5, $t3, -8
	sra.w	$s6, $s6, $t1
	div.w	$s6, $s6, $s7
	st.w	$s6, $t3, -8
	ld.w	$s8, $a0, 44
	beq	$s8, $t7, .LBB7_9
.LBB7_14:                               # %for.inc297.1.thread
                                        #   in Loop: Header=BB7_3 Depth=1
	pcalau12i	$s3, %pc_hi20(A)
	addi.d	$s3, $s3, %pc_lo12(A)
	add.d	$s3, $s3, $a5
	ld.w	$s3, $s3, 16
	mul.d	$s4, $s6, $s7
	ld.w	$s6, $s2, -32
	mul.d	$s3, $s4, $s3
	sll.w	$s3, $s3, $t1
	srli.d	$s3, $s3, 6
	add.w	$s3, $s3, $s6
	ld.w	$s4, $s1, -32
	srai.d	$s6, $s3, 31
	xor	$s7, $s3, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$s4, $s6, $s4
	add.d	$s4, $s4, $t0
	sra.w	$s4, $s4, $a7
	slti	$s3, $s3, 0
	srai.d	$s6, $s4, 31
	xor	$s4, $s4, $s6
	sub.d	$s4, $s4, $s6
	sub.d	$s6, $zero, $s4
	ld.w	$s7, $s0, -32
	masknez	$s4, $s4, $s3
	maskeqz	$s3, $s6, $s3
	or	$s3, $s3, $s4
	mul.d	$s3, $s3, $s7
	sll.w	$s3, $s3, $a2
	st.w	$s3, $s5, 0
	ld.w	$s4, $t3, -4
	ld.w	$s6, $fp, 32
	addi.d	$s3, $t3, -4
	sra.w	$s4, $s4, $t1
	div.w	$s5, $s4, $s6
	st.w	$s5, $t3, -4
	ld.w	$a3, $a0, 44
	beq	$a3, $t7, .LBB7_12
.LBB7_15:                               # %if.else.2
                                        #   in Loop: Header=BB7_3 Depth=1
	pcalau12i	$a3, %pc_hi20(A)
	addi.d	$a3, $a3, %pc_lo12(A)
	add.d	$a3, $a3, $a5
	ld.w	$a3, $a3, 32
	mul.d	$s4, $s5, $s6
	ld.w	$s2, $s2, -16
	mul.d	$a3, $s4, $a3
	sll.w	$a3, $a3, $t1
	srli.d	$a3, $a3, 6
	add.w	$a3, $a3, $s2
	ld.w	$s1, $s1, -16
	srai.d	$s2, $a3, 31
	xor	$s4, $a3, $s2
	sub.d	$s2, $s4, $s2
	mul.d	$s1, $s2, $s1
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $a7
	slti	$a3, $a3, 0
	srai.d	$s2, $s1, 31
	xor	$s1, $s1, $s2
	sub.d	$s1, $s1, $s2
	sub.d	$s2, $zero, $s1
	ld.w	$s0, $s0, -16
	masknez	$s1, $s1, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $s1
	mul.d	$a3, $a3, $s0
	sll.w	$s0, $a3, $a2
.LBB7_16:                               # %for.inc297.2
                                        #   in Loop: Header=BB7_3 Depth=1
	st.w	$s0, $s3, 0
	ld.w	$a3, $t3, 0
	ld.w	$s0, $fp, 48
	sra.w	$a3, $a3, $t1
	div.w	$fp, $a3, $s0
	st.w	$fp, $t3, 0
	ld.w	$a3, $a0, 36
	bnez	$a3, .LBB7_1
# %bb.17:                               # %lor.lhs.false.3
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a3, $a0, 44
	beq	$a3, $t7, .LBB7_1
# %bb.18:                               # %if.else.3
                                        #   in Loop: Header=BB7_3 Depth=1
	pcalau12i	$a3, %pc_hi20(A)
	addi.d	$a3, $a3, %pc_lo12(A)
	add.d	$a3, $a3, $a5
	ld.w	$a3, $a3, 48
	mul.d	$fp, $fp, $s0
	ldx.w	$s0, $a1, $a5
	mul.d	$a3, $fp, $a3
	sll.w	$a3, $a3, $t1
	srli.d	$a3, $a3, 6
	add.w	$a3, $a3, $s0
	ldx.w	$fp, $t5, $a5
	srai.d	$s0, $a3, 31
	xor	$s1, $a3, $s0
	sub.d	$s0, $s1, $s0
	mul.d	$fp, $s0, $fp
	add.d	$fp, $fp, $t0
	sra.w	$fp, $fp, $a7
	slti	$a3, $a3, 0
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	sub.d	$s0, $zero, $fp
	ldx.w	$s1, $t4, $a5
	masknez	$fp, $fp, $a3
	maskeqz	$a3, $s0, $a3
	or	$a3, $a3, $fp
	mul.d	$a3, $a3, $s1
	sll.w	$fp, $a3, $a2
	b	.LBB7_2
.LBB7_19:                               # %for.cond303.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 2408
	ldx.w	$a2, $a1, $a2
	ori	$a3, $zero, 2416
	ldx.w	$a3, $a1, $a3
	ldptr.w	$a4, $a1, 2412
	ldptr.w	$a5, $a1, 2420
	add.d	$a6, $a3, $a2
	sub.d	$a3, $a2, $a3
	srli.d	$a2, $a4, 1
	sub.d	$a7, $a2, $a5
	srai.d	$a2, $a5, 1
	add.d	$a4, $a2, $a4
	add.d	$a2, $a4, $a6
	st.w	$a2, $a0, 1384
	sub.d	$a4, $a6, $a4
	st.w	$a4, $a0, 1396
	add.d	$a4, $a7, $a3
	st.w	$a4, $a0, 1388
	sub.d	$a3, $a3, $a7
	st.w	$a3, $a0, 1392
	ori	$a3, $zero, 2424
	ldx.w	$a3, $a1, $a3
	ori	$a4, $zero, 2432
	ldx.w	$a4, $a1, $a4
	ldptr.w	$a5, $a1, 2428
	ldptr.w	$a6, $a1, 2436
	add.d	$a7, $a4, $a3
	sub.d	$a3, $a3, $a4
	srai.d	$a4, $a5, 1
	sub.d	$a4, $a4, $a6
	srai.d	$a6, $a6, 1
	add.d	$a5, $a6, $a5
	add.w	$t0, $a5, $a7
	st.w	$t0, $a0, 1448
	sub.d	$a5, $a7, $a5
	st.w	$a5, $a0, 1460
	add.w	$a5, $a4, $a3
	st.w	$a5, $a0, 1452
	sub.d	$a3, $a3, $a4
	st.w	$a3, $a0, 1456
	ori	$a3, $zero, 2440
	ldx.w	$a3, $a1, $a3
	ori	$a4, $zero, 2448
	ldx.w	$a4, $a1, $a4
	ldptr.w	$a6, $a1, 2444
	ldptr.w	$a7, $a1, 2452
	add.d	$t1, $a4, $a3
	sub.d	$a3, $a3, $a4
	srai.d	$a4, $a6, 1
	sub.d	$a4, $a4, $a7
	srai.d	$a7, $a7, 1
	add.d	$a6, $a7, $a6
	add.d	$a7, $a6, $t1
	st.w	$a7, $a0, 1512
	sub.d	$a6, $t1, $a6
	st.w	$a6, $a0, 1524
	add.d	$a6, $a4, $a3
	st.w	$a6, $a0, 1516
	sub.d	$a3, $a3, $a4
	st.w	$a3, $a0, 1520
	ori	$a4, $zero, 2456
	ldx.w	$a4, $a1, $a4
	ori	$t1, $zero, 2464
	ldx.w	$t1, $a1, $t1
	ldptr.w	$t2, $a1, 2460
	ldptr.w	$a1, $a1, 2468
	add.d	$t3, $t1, $a4
	sub.d	$a4, $a4, $t1
	srai.d	$t1, $t2, 1
	sub.d	$t1, $t1, $a1
	srli.d	$a1, $a1, 1
	add.d	$a1, $a1, $t2
	add.w	$t2, $a1, $t3
	sub.w	$a1, $t3, $a1
	st.w	$a1, $a0, 1588
	add.w	$t3, $t1, $a4
	sub.w	$a4, $a4, $t1
	add.d	$t1, $a7, $a2
	sub.d	$a7, $a2, $a7
	srli.d	$a2, $t0, 1
	sub.d	$t4, $a2, $t2
	srli.d	$a2, $t2, 1
	add.d	$t0, $a2, $t0
	ldptr.w	$a2, $a0, 5900
	addi.d	$t1, $t1, 32
	add.w	$t2, $t1, $t0
	srai.d	$t5, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t5, $t2
	slt	$t5, $t2, $a2
	maskeqz	$t2, $t2, $t5
	masknez	$t5, $a2, $t5
	or	$t2, $t2, $t5
	st.w	$t2, $a0, 1384
	sub.w	$t0, $t1, $t0
	srai.d	$t1, $t0, 6
	srai.d	$t0, $t0, 63
	andn	$t0, $t1, $t0
	slt	$t1, $t0, $a2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a2, $t1
	or	$t0, $t0, $t1
	st.w	$t0, $a0, 1576
	addi.d	$a7, $a7, 32
	add.w	$t0, $a7, $t4
	srai.d	$t1, $t0, 6
	srai.d	$t0, $t0, 63
	andn	$t0, $t1, $t0
	slt	$t1, $t0, $a2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a2, $t1
	or	$t0, $t0, $t1
	st.w	$t0, $a0, 1448
	sub.w	$a7, $a7, $t4
	srai.d	$t0, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t0, $a7
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	ld.w	$t1, $a0, 1388
	masknez	$t0, $a2, $t0
	or	$a7, $a7, $t0
	st.w	$a7, $a0, 1512
	add.d	$a7, $a6, $t1
	sub.d	$a6, $t1, $a6
	srli.d	$t0, $a5, 1
	sub.d	$t0, $t0, $t3
	srli.d	$t1, $t3, 1
	add.d	$a5, $t1, $a5
	addi.d	$a7, $a7, 32
	add.w	$t1, $a7, $a5
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	or	$t1, $t1, $t2
	st.w	$t1, $a0, 1388
	sub.w	$a5, $a7, $a5
	srai.d	$a7, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a7, $a5
	slt	$a7, $a5, $a2
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a2, $a7
	or	$a5, $a5, $a7
	st.w	$a5, $a0, 1580
	addi.d	$a5, $a6, 32
	add.w	$a6, $a5, $t0
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$a6, $a6, $a7
	st.w	$a6, $a0, 1452
	sub.w	$a5, $a5, $t0
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a2, $a6
	ld.w	$a7, $a0, 1392
	or	$a5, $a5, $a6
	ld.w	$a6, $a0, 1456
	st.w	$a5, $a0, 1516
	add.d	$a5, $a3, $a7
	sub.d	$a3, $a7, $a3
	srli.d	$a7, $a6, 1
	sub.d	$a7, $a7, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $a6
	addi.d	$a5, $a5, 32
	add.w	$a6, $a5, $a4
	srai.d	$t0, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t0, $a6
	slt	$t0, $a6, $a2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a2, $t0
	or	$a6, $a6, $t0
	st.w	$a6, $a0, 1392
	sub.w	$a4, $a5, $a4
	srai.d	$a5, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a0, 1584
	addi.d	$a3, $a3, 32
	add.w	$a4, $a3, $a7
	srai.d	$a5, $a4, 6
	srai.d	$a4, $a4, 63
	andn	$a4, $a5, $a4
	slt	$a5, $a4, $a2
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $a2, $a5
	or	$a4, $a4, $a5
	st.w	$a4, $a0, 1456
	sub.w	$a3, $a3, $a7
	srai.d	$a4, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $a4, $a3
	slt	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a4
	masknez	$a2, $a2, $a4
	ld.w	$a4, $a0, 1396
	ld.w	$a5, $a0, 1524
	or	$a2, $a3, $a2
	ld.w	$a3, $a0, 1460
	st.w	$a2, $a0, 1520
	add.d	$a2, $a5, $a4
	sub.d	$a4, $a4, $a5
	srli.d	$a5, $a3, 1
	sub.d	$a5, $a5, $a1
	srli.d	$a1, $a1, 1
	add.d	$a1, $a1, $a3
	ldptr.w	$a3, $a0, 5900
	addi.d	$a2, $a2, 32
	add.w	$a6, $a2, $a1
	srai.d	$a7, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $a7, $a6
	slt	$a7, $a6, $a3
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a3, $a7
	or	$a6, $a6, $a7
	st.w	$a6, $a0, 1396
	sub.w	$a1, $a2, $a1
	srai.d	$a2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 1588
	addi.d	$a1, $a4, 32
	add.w	$a2, $a1, $a5
	srai.d	$a4, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $a4, $a2
	slt	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a3, $a4
	or	$a2, $a2, $a4
	st.w	$a2, $a0, 1460
	sub.w	$a1, $a1, $a5
	srai.d	$a2, $a1, 6
	srai.d	$a1, $a1, 63
	andn	$a1, $a2, $a1
	slt	$a2, $a1, $a3
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 1524
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
.Lfunc_end7:
	.size	itrans_sp, .Lfunc_end7-itrans_sp
                                        # -- End function
	.globl	copyblock_sp                    # -- Begin function copyblock_sp
	.p2align	5
	.type	copyblock_sp,@function
copyblock_sp:                           # @copyblock_sp
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
	ld.w	$a5, $a0, 32
	slli.d	$a3, $a2, 5
	add.d	$a3, $a0, $a3
	addi.d	$a4, $a3, 104
	slli.d	$a6, $a1, 1
	ldx.hu	$a7, $a4, $a6
	addi.d	$t0, $a6, 2
	ldx.hu	$t1, $a4, $t0
	addi.d	$t2, $a6, 4
	ldx.hu	$t3, $a4, $t2
	addi.d	$t4, $a6, 6
	ldx.hu	$a4, $a4, $t4
	addi.d	$t5, $a3, 136
	ldx.hu	$t6, $t5, $a6
	ldx.hu	$t7, $t5, $t0
	ldx.hu	$t8, $t5, $t2
	ldx.hu	$t5, $t5, $t4
	addi.d	$fp, $a3, 168
	ldx.hu	$s0, $fp, $a6
	ldx.hu	$s1, $fp, $t0
	ldx.hu	$s2, $fp, $t2
	ldx.hu	$fp, $fp, $t4
	addi.d	$a3, $a3, 200
	ldx.hu	$a6, $a3, $a6
	ldx.hu	$t0, $a3, $t0
	ldx.hu	$t2, $a3, $t2
	ldx.hu	$t4, $a3, $t4
	add.d	$a3, $a4, $a7
	sub.d	$a4, $a7, $a4
	add.d	$a7, $t3, $t1
	sub.d	$t1, $t1, $t3
	add.d	$t3, $a7, $a3
	sub.d	$a7, $a3, $a7
	alsl.d	$s3, $a4, $t1, 1
	slli.d	$a3, $t1, 1
	sub.d	$a3, $a4, $a3
	add.d	$a4, $t5, $t6
	sub.d	$t1, $t6, $t5
	add.d	$t5, $t8, $t7
	sub.d	$t6, $t7, $t8
	add.d	$t7, $t5, $a4
	sub.d	$a4, $a4, $t5
	alsl.d	$t5, $t1, $t6, 1
	slli.d	$t6, $t6, 1
	sub.d	$s5, $t1, $t6
	add.d	$t1, $fp, $s0
	sub.d	$t6, $s0, $fp
	add.d	$t8, $s2, $s1
	sub.d	$fp, $s1, $s2
	add.d	$s0, $t8, $t1
	sub.d	$t8, $t1, $t8
	alsl.d	$t1, $t6, $fp, 1
	slli.d	$fp, $fp, 1
	sub.d	$s6, $t6, $fp
	add.d	$t6, $t4, $a6
	sub.d	$a6, $a6, $t4
	add.d	$t4, $t2, $t0
	sub.d	$t0, $t0, $t2
	add.d	$t2, $t4, $t6
	sub.d	$t6, $t6, $t4
	alsl.d	$fp, $a6, $t0, 1
	slli.d	$t0, $t0, 1
	sub.d	$a6, $a6, $t0
	add.d	$t0, $t2, $t3
	sub.d	$t2, $t3, $t2
	add.d	$t4, $s0, $t7
	sub.d	$t7, $t7, $s0
	add.d	$t3, $t4, $t0
	sub.w	$s2, $t0, $t4
	alsl.d	$s1, $t2, $t7, 1
	slli.d	$t0, $t7, 1
	sub.w	$t4, $t2, $t0
	add.d	$t0, $fp, $s3
	sub.d	$t2, $s3, $fp
	add.d	$t7, $t1, $t5
	sub.d	$t1, $t5, $t1
	add.w	$t5, $t7, $t0
	sub.w	$s0, $t0, $t7
	alsl.d	$fp, $t2, $t1, 1
	slli.d	$t0, $t1, 1
	sub.w	$t1, $t2, $t0
	add.d	$t0, $t6, $a7
	sub.d	$a7, $a7, $t6
	add.d	$t2, $t8, $a4
	sub.d	$a4, $a4, $t8
	add.w	$t6, $t2, $t0
	sub.w	$t8, $t0, $t2
	alsl.d	$s4, $a7, $a4, 1
	slli.d	$a4, $a4, 1
	sub.w	$a7, $a7, $a4
	add.d	$a4, $a6, $a3
	sub.d	$a3, $a3, $a6
	add.d	$a6, $s6, $s5
	sub.d	$t0, $s5, $s6
	add.w	$s5, $a6, $a4
	sub.w	$t7, $a4, $a6
	alsl.d	$s3, $a3, $t0, 1
	slli.d	$a4, $t0, 1
	sub.w	$a4, $a3, $a4
	lu12i.w	$a3, 174762
	ori	$a3, $a3, 2731
	mul.d	$a3, $a5, $a3
	srli.d	$a6, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a6
	slli.d	$a6, $a3, 2
	alsl.d	$a6, $a3, $a6, 1
	sub.w	$a6, $a5, $a6
	addi.d	$a5, $a3, 15
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a5
	bstrpick.d	$t2, $t0, 31, 31
	add.w	$t0, $t0, $t2
	slli.d	$s6, $a6, 6
	pcalau12i	$a6, %pc_hi20(quant_coef)
	addi.d	$a6, $a6, %pc_lo12(quant_coef)
	pcalau12i	$t2, %got_pc_hi20(dequant_coef)
	ld.d	$s7, $t2, %got_pc_lo12(dequant_coef)
	ldx.w	$s8, $a6, $s6
	srai.d	$t0, $t0, 1
	add.d	$t2, $a6, $s6
	add.d	$a6, $s7, $s6
	mul.d	$t3, $t3, $s8
	add.d	$t3, $t3, $t0
	sra.w	$t3, $t3, $a5
	ldx.w	$s6, $s7, $s6
	srai.d	$s7, $t3, 31
	xor	$t3, $t3, $s7
	sub.d	$t3, $t3, $s7
	mul.d	$t3, $t3, $s6
	ld.w	$s6, $t2, 16
	srai.d	$s7, $t5, 31
	xor	$s8, $t5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t5, $t5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 16
	masknez	$s6, $s6, $t5
	maskeqz	$t5, $s7, $t5
	or	$t5, $t5, $s6
	mul.d	$t5, $t5, $s8
	ld.w	$s6, $t2, 32
	srai.d	$s7, $t6, 31
	xor	$s8, $t6, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t6, $t6, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 32
	masknez	$s6, $s6, $t6
	maskeqz	$t6, $s7, $t6
	or	$t6, $t6, $s6
	mul.d	$t6, $t6, $s8
	ld.w	$s6, $t2, 48
	srai.d	$s7, $s5, 31
	xor	$s8, $s5, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$s5, $s5, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	masknez	$s6, $s6, $s5
	maskeqz	$s5, $s7, $s5
	ld.w	$s7, $a6, 48
	addi.w	$s8, $s1, 0
	addi.w	$ra, $fp, 0
	or	$fp, $s5, $s6
	mul.d	$fp, $fp, $s7
	ld.w	$s5, $t2, 4
	srai.d	$s6, $s8, 31
	xor	$s1, $s1, $s6
	sub.d	$s1, $s1, $s6
	mul.d	$s1, $s1, $s5
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $a5
	slti	$s5, $s8, 0
	srai.d	$s6, $s1, 31
	xor	$s1, $s1, $s6
	sub.d	$s1, $s1, $s6
	sub.d	$s6, $zero, $s1
	ld.w	$s7, $a6, 4
	masknez	$s1, $s1, $s5
	maskeqz	$s5, $s6, $s5
	or	$s1, $s5, $s1
	mul.d	$s1, $s1, $s7
	ld.w	$s5, $t2, 20
	srai.d	$s6, $ra, 31
	xor	$s7, $ra, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$s5, $s6, $s5
	add.d	$s5, $s5, $t0
	sra.w	$s5, $s5, $a5
	slti	$s6, $ra, 0
	srai.d	$s7, $s5, 31
	xor	$s5, $s5, $s7
	sub.d	$s5, $s5, $s7
	sub.d	$s7, $zero, $s5
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	ld.w	$s7, $a6, 20
	addi.w	$s8, $s4, 0
	addi.w	$ra, $s3, 0
	or	$s3, $s6, $s5
	mul.d	$s3, $s3, $s7
	ld.w	$s5, $t2, 36
	srai.d	$s6, $s8, 31
	xor	$s4, $s4, $s6
	sub.d	$s4, $s4, $s6
	mul.d	$s4, $s4, $s5
	add.d	$s4, $s4, $t0
	sra.w	$s4, $s4, $a5
	slti	$s5, $s8, 0
	srai.d	$s6, $s4, 31
	xor	$s4, $s4, $s6
	sub.d	$s4, $s4, $s6
	sub.d	$s6, $zero, $s4
	ld.w	$s7, $a6, 36
	masknez	$s4, $s4, $s5
	maskeqz	$s5, $s6, $s5
	or	$s4, $s5, $s4
	mul.d	$s4, $s4, $s7
	ld.w	$s5, $t2, 52
	srai.d	$s6, $ra, 31
	xor	$s7, $ra, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$s5, $s6, $s5
	add.d	$s5, $s5, $t0
	sra.w	$s5, $s5, $a5
	slti	$s6, $ra, 0
	srai.d	$s7, $s5, 31
	xor	$s5, $s5, $s7
	sub.d	$s5, $s5, $s7
	sub.d	$s7, $zero, $s5
	ld.w	$s8, $a6, 52
	masknez	$s5, $s5, $s6
	maskeqz	$s6, $s7, $s6
	or	$s5, $s6, $s5
	mul.d	$s5, $s5, $s8
	ld.w	$s6, $t2, 8
	srai.d	$s7, $s2, 31
	xor	$s8, $s2, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$s2, $s2, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 8
	masknez	$s6, $s6, $s2
	maskeqz	$s2, $s7, $s2
	or	$s2, $s2, $s6
	mul.d	$s2, $s2, $s8
	ld.w	$s6, $t2, 24
	srai.d	$s7, $s0, 31
	xor	$s8, $s0, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$s0, $s0, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 24
	masknez	$s6, $s6, $s0
	maskeqz	$s0, $s7, $s0
	or	$s0, $s0, $s6
	mul.d	$s0, $s0, $s8
	ld.w	$s6, $t2, 40
	srai.d	$s7, $t8, 31
	xor	$s8, $t8, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t8, $t8, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 40
	masknez	$s6, $s6, $t8
	maskeqz	$t8, $s7, $t8
	or	$t8, $t8, $s6
	mul.d	$t8, $t8, $s8
	sll.w	$t8, $t8, $a3
	st.w	$t8, $a0, 1520
	ld.w	$s6, $t2, 56
	srai.d	$s7, $t7, 31
	xor	$s8, $t7, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t7, $t7, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 56
	masknez	$s6, $s6, $t7
	maskeqz	$t7, $s7, $t7
	or	$t7, $t7, $s6
	mul.d	$t7, $t7, $s8
	ld.w	$s6, $t2, 12
	srai.d	$s7, $t4, 31
	xor	$s8, $t4, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t4, $t4, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 12
	masknez	$s6, $s6, $t4
	maskeqz	$t4, $s7, $t4
	or	$t4, $t4, $s6
	mul.d	$t4, $t4, $s8
	ld.w	$s6, $t2, 28
	srai.d	$s7, $t1, 31
	xor	$s8, $t1, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$t1, $t1, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 28
	masknez	$s6, $s6, $t1
	maskeqz	$t1, $s7, $t1
	or	$t1, $t1, $s6
	mul.d	$t1, $t1, $s8
	ld.w	$s6, $t2, 44
	srai.d	$s7, $a7, 31
	xor	$s8, $a7, $s7
	sub.d	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $a5
	slti	$a7, $a7, 0
	srai.d	$s7, $s6, 31
	xor	$s6, $s6, $s7
	sub.d	$s6, $s6, $s7
	sub.d	$s7, $zero, $s6
	ld.w	$s8, $a6, 44
	masknez	$s6, $s6, $a7
	maskeqz	$a7, $s7, $a7
	or	$a7, $a7, $s6
	mul.d	$a7, $a7, $s8
	ld.w	$t2, $t2, 60
	srai.d	$s6, $a4, 31
	xor	$s7, $a4, $s6
	sub.d	$s6, $s7, $s6
	mul.d	$t2, $s6, $t2
	add.d	$t0, $t2, $t0
	sll.w	$t2, $t3, $a3
	sll.w	$t3, $t5, $a3
	sll.w	$t5, $t6, $a3
	sll.w	$t6, $fp, $a3
	sll.w	$fp, $s1, $a3
	sll.w	$s1, $s3, $a3
	sll.w	$s3, $s4, $a3
	sll.w	$s4, $s5, $a3
	sll.w	$s2, $s2, $a3
	sll.w	$s0, $s0, $a3
	sll.w	$t7, $t7, $a3
	sll.w	$s5, $t4, $a3
	sll.w	$t1, $t1, $a3
	sll.w	$s6, $a7, $a3
	sra.w	$a5, $t0, $a5
	slti	$a4, $a4, 0
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.d	$a5, $a5, $a7
	sub.d	$a7, $zero, $a5
	ld.w	$a6, $a6, 60
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a7, $a4
	or	$a4, $a4, $a5
	mul.d	$a4, $a4, $a6
	sll.w	$a5, $a4, $a3
	add.d	$a3, $t5, $t2
	sub.d	$a4, $t2, $t5
	srli.d	$a6, $t3, 1
	sub.d	$a6, $a6, $t6
	srai.d	$a7, $t6, 1
	add.d	$a7, $a7, $t3
	add.d	$t0, $a7, $a3
	sub.d	$a3, $a3, $a7
	st.w	$a3, $a0, 1396
	add.d	$t2, $a6, $a4
	sub.d	$a6, $a4, $a6
	add.d	$a3, $s3, $fp
	sub.d	$a4, $fp, $s3
	srai.d	$a7, $s1, 1
	sub.d	$a7, $a7, $s4
	srli.d	$t3, $s4, 1
	add.d	$t3, $t3, $s1
	add.w	$t5, $t3, $a3
	sub.d	$a3, $a3, $t3
	st.w	$a3, $a0, 1460
	add.w	$t3, $a7, $a4
	sub.w	$a3, $a4, $a7
	add.d	$a4, $t8, $s2
	sub.d	$a7, $s2, $t8
	srai.d	$t4, $s0, 1
	sub.d	$t6, $t4, $t7
	srai.d	$t4, $t7, 1
	add.d	$t4, $t4, $s0
	add.d	$t7, $t4, $a4
	sub.d	$a4, $a4, $t4
	add.d	$t4, $t6, $a7
	sub.d	$a7, $a7, $t6
	add.d	$t6, $s6, $s5
	sub.d	$t8, $s5, $s6
	srli.d	$fp, $t1, 1
	sub.d	$fp, $fp, $a5
	srli.d	$a5, $a5, 1
	add.d	$a5, $a5, $t1
	add.w	$s0, $a5, $t6
	sub.w	$a5, $t6, $a5
	add.w	$t6, $fp, $t8
	sub.w	$t1, $t8, $fp
	add.d	$t8, $t7, $t0
	sub.d	$t7, $t0, $t7
	srli.d	$t0, $t5, 1
	sub.d	$fp, $t0, $s0
	srli.d	$t0, $s0, 1
	add.d	$t5, $t0, $t5
	ldptr.w	$t0, $a0, 5900
	addi.d	$t8, $t8, 32
	add.w	$s0, $t8, $t5
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $t0
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t0, $s1
	or	$s0, $s0, $s1
	st.w	$s0, $a0, 1384
	sub.w	$t5, $t8, $t5
	srai.d	$t8, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t8, $t5
	slt	$t8, $t5, $t0
	maskeqz	$t5, $t5, $t8
	masknez	$t8, $t0, $t8
	or	$t5, $t5, $t8
	st.w	$t5, $a0, 1576
	addi.d	$t5, $t7, 32
	add.w	$t7, $t5, $fp
	srai.d	$t8, $t7, 6
	srai.d	$t7, $t7, 63
	andn	$t7, $t8, $t7
	slt	$t8, $t7, $t0
	maskeqz	$t7, $t7, $t8
	masknez	$t8, $t0, $t8
	or	$t7, $t7, $t8
	st.w	$t7, $a0, 1448
	sub.w	$t5, $t5, $fp
	srai.d	$t7, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t7, $t5
	slt	$t7, $t5, $t0
	maskeqz	$t5, $t5, $t7
	masknez	$t7, $t0, $t7
	or	$t5, $t5, $t7
	st.w	$t5, $a0, 1512
	add.d	$t5, $t4, $t2
	sub.d	$t2, $t2, $t4
	srli.d	$t4, $t3, 1
	sub.d	$t4, $t4, $t6
	srli.d	$t6, $t6, 1
	add.d	$t3, $t6, $t3
	addi.d	$t5, $t5, 32
	add.w	$t6, $t5, $t3
	srai.d	$t7, $t6, 6
	srai.d	$t6, $t6, 63
	andn	$t6, $t7, $t6
	slt	$t7, $t6, $t0
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $t0, $t7
	or	$t6, $t6, $t7
	st.w	$t6, $a0, 1388
	sub.w	$t3, $t5, $t3
	srai.d	$t5, $t3, 6
	srai.d	$t3, $t3, 63
	andn	$t3, $t5, $t3
	slt	$t5, $t3, $t0
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t0, $t5
	or	$t3, $t3, $t5
	st.w	$t3, $a0, 1580
	addi.d	$t2, $t2, 32
	add.w	$t3, $t2, $t4
	srai.d	$t5, $t3, 6
	srai.d	$t3, $t3, 63
	andn	$t3, $t5, $t3
	slt	$t5, $t3, $t0
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $t0, $t5
	or	$t3, $t3, $t5
	st.w	$t3, $a0, 1452
	sub.w	$t2, $t2, $t4
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $t0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t0, $t3
	or	$t2, $t2, $t3
	st.w	$t2, $a0, 1516
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$t2, $a7, $a6
	sub.d	$a7, $a6, $a7
	srli.d	$a6, $a3, 1
	sub.d	$t3, $a6, $t1
	srli.d	$a6, $t1, 1
	add.d	$t1, $a6, $a3
	addi.d	$t2, $t2, 32
	add.w	$a6, $t2, $t1
	srai.d	$t4, $a6, 6
	srai.d	$a6, $a6, 63
	andn	$a6, $t4, $a6
	slt	$t4, $a6, $t0
	maskeqz	$a6, $a6, $t4
	masknez	$t4, $t0, $t4
	or	$a6, $a6, $t4
	sub.w	$t1, $t2, $t1
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $t0, $t2
	or	$t1, $t1, $t2
	st.w	$t1, $a0, 1584
	addi.d	$t1, $a7, 32
	add.w	$a7, $t1, $t3
	srai.d	$t2, $a7, 6
	srai.d	$a7, $a7, 63
	andn	$a7, $t2, $a7
	slt	$t2, $a7, $t0
	maskeqz	$a7, $a7, $t2
	masknez	$t2, $t0, $t2
	or	$a7, $a7, $t2
	sub.w	$t1, $t1, $t3
	srai.d	$t2, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t2, $t1
	slt	$t2, $t1, $t0
	maskeqz	$t1, $t1, $t2
	masknez	$t0, $t0, $t2
	ld.w	$t2, $a0, 1396
	or	$t0, $t1, $t0
	ld.w	$t1, $a0, 1460
	st.w	$t0, $a0, 1520
	add.d	$t3, $a4, $t2
	sub.d	$t4, $t2, $a4
	srli.d	$t0, $t1, 1
	sub.d	$t5, $t0, $a5
	srli.d	$t0, $a5, 1
	add.d	$t2, $t0, $t1
	ldptr.w	$t0, $a0, 5900
	addi.d	$t3, $t3, 32
	add.w	$t1, $t3, $t2
	srai.d	$t6, $t1, 6
	srai.d	$t1, $t1, 63
	andn	$t1, $t6, $t1
	slt	$t6, $t1, $t0
	maskeqz	$t1, $t1, $t6
	masknez	$t6, $t0, $t6
	or	$t1, $t1, $t6
	addi.d	$t6, $t4, 32
	add.w	$t4, $t6, $t5
	srai.d	$t7, $t4, 6
	srai.d	$t4, $t4, 63
	andn	$t4, $t7, $t4
	slt	$t7, $t4, $t0
	maskeqz	$t4, $t4, $t7
	masknez	$t7, $t0, $t7
	or	$t4, $t4, $t7
	sub.w	$t5, $t6, $t5
	srai.d	$t6, $t5, 6
	srai.d	$t5, $t5, 63
	andn	$t5, $t6, $t5
	slt	$t6, $t5, $t0
	pcalau12i	$t7, %got_pc_hi20(dec_picture)
	ld.d	$t7, $t7, %got_pc_lo12(dec_picture)
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $t0, $t6
	or	$t5, $t5, $t6
	ld.d	$t6, $t7, 0
	ld.w	$t7, $a0, 80
	lu12i.w	$t8, 77
	ori	$t8, $t8, 1528
	ldx.d	$t6, $t6, $t8
	add.w	$a2, $a2, $t7
	ld.w	$t7, $a0, 84
	slli.d	$t8, $a2, 3
	ldx.d	$t8, $t6, $t8
	ld.h	$fp, $a0, 1384
	add.w	$a1, $a1, $t7
	slli.d	$t7, $a1, 1
	ld.h	$s0, $a0, 1388
	stx.h	$fp, $t8, $t7
	addi.w	$fp, $a1, 1
	slli.d	$fp, $fp, 1
	stx.h	$s0, $t8, $fp
	addi.w	$s0, $a1, 2
	slli.d	$s0, $s0, 1
	stx.h	$a6, $t8, $s0
	addi.w	$a1, $a1, 3
	addi.w	$s1, $a2, 1
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $t6, $s1
	ld.h	$s2, $a0, 1448
	ld.h	$s3, $a0, 1452
	slli.d	$a1, $a1, 1
	stx.h	$t1, $t8, $a1
	stx.h	$s2, $s1, $t7
	stx.h	$s3, $s1, $fp
	stx.h	$a7, $s1, $s0
	addi.w	$t8, $a2, 2
	slli.d	$t8, $t8, 3
	ldx.d	$t8, $t6, $t8
	ld.h	$s2, $a0, 1512
	ld.h	$s3, $a0, 1516
	ld.h	$s4, $a0, 1520
	stx.h	$t4, $s1, $a1
	stx.h	$s2, $t8, $t7
	stx.h	$s3, $t8, $fp
	stx.h	$s4, $t8, $s0
	addi.w	$a2, $a2, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $t6, $a2
	ld.h	$t6, $a0, 1576
	ld.h	$s1, $a0, 1580
	ld.h	$s2, $a0, 1584
	stx.h	$t5, $t8, $a1
	stx.h	$t6, $a2, $t7
	stx.h	$s1, $a2, $fp
	stx.h	$s2, $a2, $s0
	sub.w	$t2, $t3, $t2
	srai.d	$t3, $t2, 6
	srai.d	$t2, $t2, 63
	andn	$t2, $t3, $t2
	slt	$t3, $t2, $t0
	maskeqz	$t2, $t2, $t3
	masknez	$t0, $t0, $t3
	or	$t0, $t2, $t0
	stx.h	$t0, $a2, $a1
	st.w	$a3, $a0, 1456
	st.w	$a4, $a0, 1524
	st.w	$a5, $a0, 1588
	st.w	$a6, $a0, 1392
	st.w	$a7, $a0, 1456
	st.w	$t1, $a0, 1396
	st.w	$t0, $a0, 1588
	st.w	$t4, $a0, 1460
	st.w	$t5, $a0, 1524
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
.Lfunc_end8:
	.size	copyblock_sp, .Lfunc_end8-copyblock_sp
                                        # -- End function
	.globl	itrans_sp_chroma                # -- Begin function itrans_sp_chroma
	.p2align	5
	.type	itrans_sp_chroma,@function
itrans_sp_chroma:                       # @itrans_sp_chroma
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	ld.w	$a6, $a0, 28
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bltz	$a6, .LBB9_2
# %bb.1:                                # %cond.false8
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.bu	$a6, $a2, $a6
.LBB9_2:                                # %cond.end13
	ld.w	$a7, $a0, 32
	addi.w	$a2, $zero, -1
	bge	$a2, $a7, .LBB9_4
# %bb.3:                                # %cond.end39.thread
	pcalau12i	$a2, %got_pc_hi20(QP_SCALE_CR)
	ld.d	$a2, $a2, %got_pc_lo12(QP_SCALE_CR)
	ldx.b	$a3, $a2, $a7
	andi	$a7, $a3, 255
	ori	$a2, $zero, 171
	mul.d	$a2, $a7, $a2
	srli.d	$a2, $a2, 10
	slli.d	$a4, $a2, 2
	alsl.d	$a4, $a2, $a4, 1
	sub.d	$a3, $a3, $a4
	andi	$a1, $a3, 255
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a3, $a2, 15
	lu12i.w	$a4, 8
	ld.w	$t0, $a0, 44
	sll.w	$a4, $a4, $a2
	srai.d	$a4, $a4, 1
	b	.LBB9_5
.LBB9_4:                                # %cond.end39
	sub.d	$a2, $zero, $a7
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, -349526
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	mul.d	$a2, $a2, $a3
	srli.d	$a3, $a2, 34
	sub.d	$a2, $zero, $a3
	slli.d	$a4, $a3, 2
	alsl.d	$a4, $a3, $a4, 1
	add.w	$a1, $a4, $a7
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a4, $zero, 15
	sub.d	$a3, $a4, $a3
	ori	$a4, $zero, 1
	ld.w	$t0, $a0, 44
	sll.w	$a4, $a4, $a3
	bstrpick.d	$a4, $a4, 31, 1
.LBB9_5:                                # %if.end
	addi.d	$a5, $a0, 44
	addi.d	$t0, $t0, -4
	sltui	$a1, $t0, 1
	masknez	$a6, $a6, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a7, $a7, $a1
	or	$a1, $a7, $a6
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$t2, $a0, 104
	move	$a1, $zero
	ld.hu	$a6, $a0, 106
	st.w	$t2, $sp, 120
	ld.hu	$a7, $a0, 108
	st.w	$a6, $sp, 152
	ld.hu	$a6, $a0, 110
	st.w	$a7, $sp, 184
	ld.hu	$a7, $a0, 112
	st.w	$a6, $sp, 216
	ld.hu	$a6, $a0, 114
	st.w	$a7, $sp, 248
	ld.hu	$a7, $a0, 116
	st.w	$a6, $sp, 280
	ld.hu	$a6, $a0, 118
	st.w	$a7, $sp, 312
	st.w	$a6, $sp, 344
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 104
	ld.hu	$a6, $a0, 136
	ld.hu	$a7, $a0, 138
	ld.hu	$t0, $a0, 140
	ld.hu	$t1, $a0, 142
	st.w	$a6, $sp, 124
	st.w	$a7, $sp, 156
	st.w	$t0, $sp, 188
	st.w	$t1, $sp, 220
	ld.hu	$a6, $a0, 144
	ld.hu	$a7, $a0, 146
	ld.hu	$t0, $a0, 148
	ld.hu	$t1, $a0, 150
	st.w	$a6, $sp, 252
	st.w	$a7, $sp, 284
	st.w	$t0, $sp, 316
	st.w	$t1, $sp, 348
	vst	$vr0, $a0, 136
	ld.hu	$a6, $a0, 168
	ld.hu	$a7, $a0, 170
	ld.hu	$t0, $a0, 172
	ld.hu	$t1, $a0, 174
	st.w	$a6, $sp, 128
	st.w	$a7, $sp, 160
	st.w	$t0, $sp, 192
	st.w	$t1, $sp, 224
	ld.hu	$a6, $a0, 176
	ld.hu	$a7, $a0, 178
	ld.hu	$t0, $a0, 180
	ld.hu	$t1, $a0, 182
	st.w	$a6, $sp, 256
	st.w	$a7, $sp, 288
	st.w	$t0, $sp, 320
	st.w	$t1, $sp, 352
	vst	$vr0, $a0, 168
	ld.hu	$a6, $a0, 200
	ld.hu	$a7, $a0, 202
	ld.hu	$t0, $a0, 204
	ld.hu	$t1, $a0, 206
	st.w	$a6, $sp, 132
	st.w	$a7, $sp, 164
	st.w	$t0, $sp, 196
	st.w	$t1, $sp, 228
	ld.hu	$a6, $a0, 208
	ld.hu	$a7, $a0, 210
	ld.hu	$t0, $a0, 212
	ld.hu	$t1, $a0, 214
	st.w	$a6, $sp, 260
	st.w	$a7, $sp, 292
	st.w	$t0, $sp, 324
	st.w	$t1, $sp, 356
	vst	$vr0, $a0, 200
	ld.hu	$a6, $a0, 232
	ld.hu	$a7, $a0, 234
	ld.hu	$t0, $a0, 236
	ld.hu	$t1, $a0, 238
	st.w	$a6, $sp, 136
	st.w	$a7, $sp, 168
	st.w	$t0, $sp, 200
	st.w	$t1, $sp, 232
	ld.hu	$a6, $a0, 240
	ld.hu	$a7, $a0, 242
	ld.hu	$t0, $a0, 244
	ld.hu	$t1, $a0, 246
	st.w	$a6, $sp, 264
	st.w	$a7, $sp, 296
	st.w	$t0, $sp, 328
	st.w	$t1, $sp, 360
	vst	$vr0, $a0, 232
	ld.hu	$a6, $a0, 264
	ld.hu	$a7, $a0, 266
	ld.hu	$t0, $a0, 268
	ld.hu	$t1, $a0, 270
	st.w	$a6, $sp, 140
	st.w	$a7, $sp, 172
	st.w	$t0, $sp, 204
	st.w	$t1, $sp, 236
	ld.hu	$a6, $a0, 272
	ld.hu	$a7, $a0, 274
	ld.hu	$t0, $a0, 276
	ld.hu	$t1, $a0, 278
	st.w	$a6, $sp, 268
	st.w	$a7, $sp, 300
	st.w	$t0, $sp, 332
	st.w	$t1, $sp, 364
	vst	$vr0, $a0, 264
	ld.hu	$a6, $a0, 296
	ld.hu	$a7, $a0, 298
	ld.hu	$t0, $a0, 300
	ld.hu	$t1, $a0, 302
	st.w	$a6, $sp, 144
	st.w	$a7, $sp, 176
	st.w	$t0, $sp, 208
	st.w	$t1, $sp, 240
	ld.hu	$a6, $a0, 304
	ld.hu	$a7, $a0, 306
	ld.hu	$t0, $a0, 308
	ld.hu	$t1, $a0, 310
	st.w	$a6, $sp, 272
	st.w	$a7, $sp, 304
	st.w	$t0, $sp, 336
	st.w	$t1, $sp, 368
	vst	$vr0, $a0, 296
	ld.hu	$a6, $a0, 328
	ld.hu	$a7, $a0, 330
	ld.hu	$t0, $a0, 332
	ld.hu	$t1, $a0, 334
	st.w	$a6, $sp, 148
	st.w	$a7, $sp, 180
	st.w	$t0, $sp, 212
	st.w	$t1, $sp, 244
	ld.hu	$a6, $a0, 336
	ld.hu	$a7, $a0, 338
	ld.hu	$t0, $a0, 340
	ld.hu	$t1, $a0, 342
	st.w	$a6, $sp, 276
	st.w	$a7, $sp, 308
	st.w	$t0, $sp, 340
	st.w	$t1, $sp, 372
	vst	$vr0, $a0, 328
	ori	$a7, $zero, 1
	addi.d	$s1, $sp, 120
	addi.d	$t0, $sp, 120
	.p2align	4, , 16
.LBB9_6:                                # %for.cond103.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s4, $a1, 2
	addi.d	$fp, $s4, 12
	addi.d	$s3, $sp, 120
	add.d	$a6, $s3, $fp
	addi.d	$s5, $s4, 8
	add.d	$s6, $s3, $s5
	addi.d	$s2, $s4, 4
	ld.w	$a7, $s1, 0
	ld.w	$t0, $s1, 96
	ld.w	$t1, $s1, 32
	ld.w	$t2, $s1, 64
	add.d	$s8, $s3, $s2
	add.w	$t3, $t0, $a7
	sub.d	$a7, $a7, $t0
	add.w	$t0, $t2, $t1
	sub.d	$t2, $t1, $t2
	add.d	$t1, $t0, $t3
	sub.d	$t0, $t3, $t0
	addi.d	$a1, $sp, 184
	stx.w	$t0, $a1, $s4
	alsl.d	$t0, $a7, $t2, 1
	addi.d	$a1, $sp, 152
	stx.w	$t0, $a1, $s4
	slli.d	$t0, $t2, 1
	sub.d	$a7, $a7, $t0
	ldx.w	$t0, $s2, $s3
	ld.w	$t2, $s8, 96
	addi.d	$a1, $sp, 216
	stx.w	$a7, $a1, $s4
	ld.w	$a7, $s8, 32
	ld.w	$t3, $s8, 64
	add.d	$t5, $t2, $t0
	addi.w	$t6, $t5, 0
	sub.w	$t0, $t0, $t2
	add.d	$t2, $t3, $a7
	addi.w	$t7, $t2, 0
	sub.w	$t3, $a7, $t3
	add.d	$t5, $t2, $t5
	sub.d	$a7, $t6, $t7
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$t2, $t0, $t3, 1
	slli.d	$t3, $t3, 1
	sub.d	$t0, $t0, $t3
	ldx.w	$t3, $s5, $s3
	ld.w	$t6, $s6, 96
	stx.w	$t0, $a1, $s2
	ld.w	$t0, $s6, 32
	ld.w	$t7, $s6, 64
	add.d	$ra, $t6, $t3
	addi.w	$t4, $ra, 0
	sub.w	$t6, $t3, $t6
	add.d	$t3, $t7, $t0
	addi.w	$t8, $t3, 0
	sub.w	$t0, $t0, $t7
	add.d	$t7, $t3, $ra
	sub.d	$t3, $t4, $t8
	ldx.w	$t4, $fp, $s3
	move	$a7, $fp
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	ld.w	$t8, $a6, 96
	alsl.d	$ra, $t6, $t0, 1
	slli.d	$t0, $t0, 1
	sub.d	$t0, $t6, $t0
	add.d	$t6, $t8, $t4
	ld.w	$s0, $a6, 32
	ld.w	$fp, $a6, 64
	addi.w	$a6, $t6, 0
	sub.d	$t4, $t4, $t8
	addi.w	$t8, $t4, 0
	add.d	$a1, $fp, $s0
	addi.w	$s7, $a1, 0
	sub.d	$fp, $s0, $fp
	addi.w	$s0, $fp, 0
	add.d	$a6, $s7, $a6
	sub.d	$a1, $t6, $a1
	alsl.d	$t6, $t8, $fp, 1
	slli.d	$t8, $s0, 1
	sub.d	$t4, $t4, $t8
	add.d	$t8, $a6, $t1
	sub.d	$a6, $t1, $a6
	add.d	$t1, $t7, $t5
	sub.d	$t5, $t5, $t7
	add.d	$t7, $t1, $t8
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	st.w	$t7, $fp, 0
	sub.d	$t1, $t8, $t1
	stx.w	$t1, $s5, $s3
	alsl.d	$t1, $a6, $t5, 1
	stx.w	$t1, $s2, $s3
	addi.d	$t8, $sp, 152
	ldx.w	$t1, $t8, $s4
	slli.d	$t5, $t5, 1
	sub.d	$a6, $a6, $t5
	stx.w	$a6, $a7, $s3
	add.d	$a6, $t6, $t1
	sub.d	$t1, $t1, $t6
	add.d	$t5, $ra, $t2
	sub.d	$t2, $t2, $ra
	add.d	$t6, $t5, $a6
	stx.w	$t6, $t8, $s4
	sub.d	$a6, $a6, $t5
	stx.w	$a6, $t8, $s5
	alsl.d	$a6, $t1, $t2, 1
	stx.w	$a6, $t8, $s2
	addi.d	$t6, $sp, 184
	ldx.w	$a6, $t6, $s4
	slli.d	$t2, $t2, 1
	sub.d	$t1, $t1, $t2
	stx.w	$t1, $t8, $a7
	move	$t5, $a7
	add.d	$t1, $a1, $a6
	sub.d	$a1, $a6, $a1
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.d	$a6, $t3, $a7
	sub.d	$a7, $a7, $t3
	add.d	$t2, $a6, $t1
	stx.w	$t2, $t6, $s4
	sub.d	$a6, $t1, $a6
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	stx.w	$a6, $t6, $s5
	alsl.d	$a6, $a1, $a7, 1
	stx.w	$a6, $t6, $s2
	slli.d	$a6, $a7, 1
	addi.d	$t3, $sp, 216
	ldx.w	$a7, $t3, $s4
	sub.d	$a1, $a1, $a6
	ldx.w	$a6, $t3, $s2
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	stx.w	$a1, $t6, $t5
	add.d	$a1, $t4, $a7
	sub.d	$a7, $a7, $t4
	add.d	$t1, $t0, $a6
	sub.d	$a6, $a6, $t0
	add.d	$t0, $t1, $a1
	stx.w	$t0, $t3, $s4
	sub.d	$a1, $a1, $t1
	stx.w	$a1, $t3, $s5
	alsl.d	$a1, $a7, $a6, 1
	stx.w	$a1, $t3, $s2
	slli.d	$a1, $a6, 1
	sub.d	$a1, $a7, $a1
	stx.w	$a1, $t3, $t5
	ld.w	$a1, $s1, 128
	ld.w	$a6, $s1, 224
	ld.w	$a7, $s1, 160
	ld.w	$t0, $s1, 192
	add.d	$t1, $a6, $a1
	sub.d	$a1, $a1, $a6
	add.d	$a6, $t0, $a7
	sub.d	$a7, $a7, $t0
	add.d	$t8, $a6, $t1
	st.d	$t8, $sp, 64                    # 8-byte Folded Spill
	sub.d	$a6, $t1, $a6
	addi.d	$fp, $sp, 312
	stx.w	$a6, $fp, $s4
	alsl.d	$a6, $a1, $a7, 1
	addi.d	$s0, $sp, 280
	stx.w	$a6, $s0, $s4
	slli.d	$a6, $a7, 1
	sub.d	$a1, $a1, $a6
	ld.w	$a6, $s8, 128
	ld.w	$a7, $s8, 224
	ld.w	$t0, $s8, 160
	ld.w	$t1, $s8, 192
	addi.d	$ra, $sp, 344
	stx.w	$a1, $ra, $s4
	add.w	$a1, $a7, $a6
	sub.w	$a7, $a6, $a7
	add.w	$t2, $t1, $t0
	sub.w	$t0, $t0, $t1
	add.d	$s3, $t2, $a1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s8, $a1, $t2
	alsl.d	$s1, $a7, $t0, 1
	slli.d	$a1, $t0, 1
	sub.d	$a1, $a7, $a1
	ld.w	$a7, $s6, 128
	ld.w	$t0, $s6, 224
	ld.w	$t1, $s6, 160
	ld.w	$t2, $s6, 192
	stx.w	$a1, $ra, $s2
	add.w	$a1, $t0, $a7
	sub.w	$t3, $a7, $t0
	add.w	$t0, $t2, $t1
	sub.w	$t1, $t1, $t2
	add.d	$s6, $t0, $a1
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	sub.d	$s5, $a1, $t0
	alsl.d	$a7, $t3, $t1, 1
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $t1, 1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t2, $a6, 128
	ld.w	$t4, $a6, 224
	sub.d	$a1, $t3, $a1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a6, 160
	ld.w	$t3, $a6, 192
	add.d	$t5, $t4, $t2
	sub.d	$t4, $t2, $t4
	addi.w	$t2, $t4, 0
	add.d	$t6, $t3, $a1
	sub.d	$a1, $a1, $t3
	addi.w	$t7, $a1, 0
	add.d	$t3, $t6, $t5
	sub.d	$s7, $t5, $t6
	alsl.d	$a6, $t2, $a1, 1
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $t7, 1
	sub.d	$a1, $t4, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$t6, $t3, $t8
	move	$a1, $s0
	ldx.w	$t2, $s0, $s4
	add.d	$t0, $s6, $s3
	add.d	$t4, $t0, $t6
	addi.d	$s6, $sp, 248
	stx.w	$t4, $s6, $s4
	add.d	$t4, $a6, $t2
	move	$a6, $fp
	ldx.w	$t8, $fp, $s4
	add.d	$fp, $a7, $s1
	move	$s6, $s1
	add.d	$s0, $fp, $t4
	stx.w	$s0, $a1, $s4
	add.d	$s0, $s7, $t8
	add.d	$s1, $s5, $s8
	move	$s3, $s5
	move	$t5, $s8
	move	$t7, $ra
	ldx.w	$a7, $ra, $s4
	ldx.w	$t1, $ra, $s2
	add.d	$ra, $s1, $s0
	stx.w	$ra, $a6, $s4
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	add.d	$ra, $s5, $a7
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a6, $t1
	add.d	$s8, $a1, $ra
	stx.w	$s8, $t7, $s4
	sub.d	$t0, $t6, $t0
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s8, $sp, 248
	stx.w	$t0, $s8, $s4
	sub.d	$t0, $t4, $fp
	addi.d	$t6, $sp, 280
	stx.w	$t0, $t6, $s4
	sub.d	$t0, $s0, $s1
	addi.d	$fp, $sp, 312
	stx.w	$t0, $fp, $s4
	sub.d	$a1, $ra, $a1
	stx.w	$a1, $t7, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $t3
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$t0, $t3, $t0
	alsl.d	$t3, $a1, $t0, 1
	stx.w	$t3, $s8, $s2
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$t2, $t2, $t3
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$t3, $s6, $t3
	alsl.d	$t4, $t2, $t3, 1
	stx.w	$t4, $t6, $s2
	move	$s0, $t6
	sub.d	$t4, $t8, $s7
	sub.d	$t5, $t5, $s3
	alsl.d	$t6, $t4, $t5, 1
	stx.w	$t6, $fp, $s2
	sub.d	$a7, $a7, $s5
	sub.d	$a6, $t1, $a6
	alsl.d	$t1, $a7, $a6, 1
	stx.w	$t1, $t7, $s2
	slli.d	$t0, $t0, 1
	sub.d	$a1, $a1, $t0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	stx.w	$a1, $s8, $t1
	slli.d	$a1, $t3, 1
	addi.d	$t0, $sp, 136
	sub.d	$a1, $t2, $a1
	stx.w	$a1, $s0, $t1
	slli.d	$a1, $t5, 1
	sub.d	$a1, $t4, $a1
	stx.w	$a1, $fp, $t1
	slli.d	$a1, $a6, 1
	sub.d	$a1, $a7, $a1
	stx.w	$a1, $t7, $t1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	andi	$a6, $a1, 1
	ori	$a1, $zero, 4
	move	$s1, $t0
	move	$a7, $zero
	bnez	$a6, .LBB9_6
# %bb.7:                                # %for.end262
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a1, $t0, $a1
	srli.d	$a6, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a7, $a1, $a6
	slli.d	$a1, $a7, 2
	ld.w	$t1, $sp, 120
	ld.w	$t3, $sp, 248
	ld.w	$t4, $sp, 136
	ld.w	$t5, $sp, 264
	alsl.d	$a1, $a7, $a1, 1
	sub.w	$a1, $t0, $a1
	add.d	$a6, $t3, $t1
	add.d	$t6, $t5, $t4
	add.w	$t0, $t6, $a6
	add.d	$t2, $t1, $t4
	add.d	$t7, $t3, $t5
	sub.w	$t2, $t2, $t7
	sub.w	$a6, $a6, $t6
	ld.w	$t6, $a0, 36
	add.d	$t3, $t3, $t4
	sub.d	$t1, $t1, $t3
	add.w	$t3, $t1, $t5
	sltui	$t4, $t6, 1
	addi.d	$t8, $a0, 2047
	addi.d	$s3, $t8, 361
	pcalau12i	$t5, %got_pc_hi20(dequant_coef)
	ld.d	$t6, $t5, %got_pc_lo12(dequant_coef)
	slli.d	$s0, $a4, 1
	addi.d	$t5, $a2, 16
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	slli.d	$t7, $t1, 6
	add.d	$s4, $t6, $t7
	pcalau12i	$fp, %pc_hi20(quant_coef)
	addi.d	$fp, $fp, %pc_lo12(quant_coef)
	add.d	$s1, $fp, $t7
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
	andn	$s2, $t4, $t1
	slli.d	$t4, $a1, 6
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	bnez	$s2, .LBB9_9
# %bb.8:                                # %for.end262.split.us
	ld.w	$s2, $s1, 0
	ld.w	$s1, $s4, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	add.d	$s3, $s3, $a1
	srai.d	$a1, $t0, 31
	xor	$s4, $t0, $a1
	sub.d	$a1, $s4, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s0
	sra.w	$a1, $a1, $t5
	ld.w	$s4, $s3, 256
	slti	$t0, $t0, 0
	srai.d	$s5, $a1, 31
	xor	$a1, $a1, $s5
	sub.d	$a1, $a1, $s5
	sub.d	$s5, $zero, $a1
	masknez	$a1, $a1, $t0
	maskeqz	$t0, $s5, $t0
	or	$a1, $t0, $a1
	add.d	$a1, $a1, $s4
	mul.d	$a1, $a1, $s1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	srai.d	$a1, $a6, 31
	xor	$t0, $a6, $a1
	sub.d	$a1, $t0, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s0
	sra.w	$a1, $a1, $t5
	ld.w	$t0, $s3, 320
	slti	$a6, $a6, 0
	srai.d	$s4, $a1, 31
	xor	$a1, $a1, $s4
	sub.d	$a1, $a1, $s4
	sub.d	$s4, $zero, $a1
	masknez	$a1, $a1, $a6
	maskeqz	$a6, $s4, $a6
	or	$a1, $a6, $a1
	add.d	$a1, $a1, $t0
	mul.d	$a1, $a1, $s1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	srai.d	$a1, $t2, 31
	xor	$a6, $t2, $a1
	sub.d	$a1, $a6, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s0
	sra.w	$a1, $a1, $t5
	ld.w	$a6, $s3, 1024
	slti	$t0, $t2, 0
	srai.d	$t2, $a1, 31
	xor	$a1, $a1, $t2
	sub.d	$a1, $a1, $t2
	sub.d	$t2, $zero, $a1
	masknez	$a1, $a1, $t0
	maskeqz	$t0, $t2, $t0
	or	$a1, $t0, $a1
	add.d	$a1, $a1, $a6
	mul.d	$a1, $a1, $s1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	srai.d	$a1, $t3, 31
	xor	$a6, $t3, $a1
	sub.d	$a1, $a6, $a1
	mul.d	$a1, $a1, $s2
	add.d	$a1, $a1, $s0
	sra.w	$a1, $a1, $t5
	ld.w	$a6, $s3, 1088
	slti	$t0, $t3, 0
	srai.d	$t2, $a1, 31
	xor	$a1, $a1, $t2
	sub.d	$a1, $a1, $t2
	sub.d	$t2, $zero, $a1
	masknez	$a1, $a1, $t0
	maskeqz	$t0, $t2, $t0
	or	$a1, $t0, $a1
	add.d	$a1, $a1, $a6
	mul.d	$a1, $a1, $s1
	b	.LBB9_10
.LBB9_9:                                # %for.end262.split
	ldx.w	$a1, $t6, $t4
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$s2, $t1, $t1, 1
	slli.d	$s2, $s2, 8
	add.d	$s3, $s3, $s2
	ld.w	$s5, $s3, 256
	slli.d	$s2, $a1, 4
	ld.w	$s1, $s1, 0
	mul.d	$a1, $s5, $s2
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 5
	add.w	$a1, $a1, $t0
	srai.d	$t0, $a1, 31
	xor	$s5, $a1, $t0
	sub.d	$t0, $s5, $t0
	mul.d	$t0, $t0, $s1
	add.d	$t0, $t0, $s0
	sra.w	$t0, $t0, $t5
	slti	$a1, $a1, 0
	srai.d	$s5, $t0, 31
	xor	$t0, $t0, $s5
	sub.d	$t0, $t0, $s5
	sub.d	$s5, $zero, $t0
	masknez	$t0, $t0, $a1
	ld.w	$s6, $s3, 320
	maskeqz	$a1, $s5, $a1
	ld.w	$s4, $s4, 0
	or	$a1, $a1, $t0
	mul.d	$t0, $s6, $s2
	sll.w	$t0, $t0, $a7
	srli.d	$t0, $t0, 5
	add.w	$a6, $t0, $a6
	srai.d	$t0, $a6, 31
	xor	$s5, $a6, $t0
	sub.d	$t0, $s5, $t0
	mul.d	$t0, $t0, $s1
	add.d	$t0, $t0, $s0
	sra.w	$t0, $t0, $t5
	slti	$a6, $a6, 0
	srai.d	$s5, $t0, 31
	xor	$t0, $t0, $s5
	sub.d	$t0, $t0, $s5
	sub.d	$s5, $zero, $t0
	masknez	$t0, $t0, $a6
	maskeqz	$a6, $s5, $a6
	ld.w	$s5, $s3, 1024
	mul.d	$a1, $a1, $s4
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a6, $t0
	mul.d	$a1, $a1, $s4
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a1, $s5, $s2
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 5
	add.w	$a1, $a1, $t2
	srai.d	$a6, $a1, 31
	xor	$t0, $a1, $a6
	sub.d	$a6, $t0, $a6
	mul.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s0
	sra.w	$a6, $a6, $t5
	slti	$a1, $a1, 0
	srai.d	$t0, $a6, 31
	xor	$a6, $a6, $t0
	sub.d	$a6, $a6, $t0
	sub.d	$t0, $zero, $a6
	masknez	$a6, $a6, $a1
	ld.w	$t2, $s3, 1088
	maskeqz	$a1, $t0, $a1
	or	$a1, $a1, $a6
	mul.d	$a1, $a1, $s4
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	mul.d	$a1, $t2, $s2
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 5
	add.w	$a1, $a1, $t3
	srai.d	$a6, $a1, 31
	xor	$t0, $a1, $a6
	sub.d	$a6, $t0, $a6
	mul.d	$a6, $a6, $s1
	add.d	$a6, $a6, $s0
	sra.w	$a6, $a6, $t5
	slti	$a1, $a1, 0
	srai.d	$t0, $a6, 31
	xor	$a6, $a6, $t0
	sub.d	$a6, $a6, $t0
	sub.d	$t0, $zero, $a6
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $t0, $a1
	or	$a1, $a1, $a6
	mul.d	$a1, $a1, $s4
.LBB9_10:                               # %for.cond409.preheader
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$a6, $zero
	add.d	$t4, $t6, $t4
	addi.d	$t5, $sp, 128
	addi.d	$a1, $t7, 12
	add.d	$t6, $t6, $a1
	add.d	$t7, $fp, $a1
	addi.d	$t8, $t8, 665
	ori	$s1, $zero, 1
	ori	$fp, $zero, 4
	ori	$s0, $zero, 64
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_11:                               # %for.inc595
                                        #   in Loop: Header=BB9_12 Depth=1
	andi	$a1, $s1, 1
	ori	$a6, $zero, 1
	move	$s1, $zero
	beqz	$a1, .LBB9_33
.LBB9_12:                               # %for.cond413.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #       Child Loop BB9_17 Depth 3
	move	$t0, $zero
	alsl.d	$s2, $a6, $t5, 4
	slli.d	$a1, $a6, 6
	add.d	$s3, $t8, $a1
	ori	$s4, $zero, 1
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_13:                               # %for.inc592
                                        #   in Loop: Header=BB9_14 Depth=2
	andi	$a1, $s4, 1
	ori	$t0, $zero, 1
	move	$s4, $zero
	beqz	$a1, .LBB9_11
.LBB9_14:                               # %for.cond417.preheader
                                        #   Parent Loop BB9_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_17 Depth 3
	move	$s5, $zero
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a1
	slli.d	$a6, $t0, 7
	add.d	$s6, $s2, $a6
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	add.d	$s7, $s3, $a1
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_15:                               # %if.then461.3
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s6, 4
	ldx.w	$t0, $t7, $s5
	srai.d	$t1, $a1, 31
	xor	$t2, $a1, $t1
	sub.d	$t1, $t2, $t1
	mul.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a4
	sra.w	$t0, $t0, $a3
	slti	$a1, $a1, 0
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	sub.d	$t1, $zero, $t0
	masknez	$t0, $t0, $a1
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $t0
	add.d	$a6, $a1, $a6
.LBB9_16:                               # %for.inc586.3
                                        #   in Loop: Header=BB9_17 Depth=3
	ldx.w	$a1, $t6, $s5
	mul.d	$a1, $a6, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s7, 0
	addi.d	$s5, $s5, 16
	addi.d	$s6, $s6, 32
	addi.d	$s7, $s7, 4
	beq	$s5, $s0, .LBB9_13
.LBB9_17:                               # %for.cond421.preheader
                                        #   Parent Loop BB9_12 Depth=1
                                        #     Parent Loop BB9_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $s7, -48
	ldx.w	$t3, $t4, $s5
	sra.w	$a1, $a1, $a7
	div.w	$t0, $a1, $t3
	st.w	$t0, $s7, -48
	ld.w	$a1, $a0, 36
	add.d	$ra, $t7, $s5
	add.d	$s8, $t6, $s5
	beqz	$a1, .LBB9_19
# %bb.18:                               # %for.cond421.preheader.if.then461_crit_edge
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$t2, $ra, -12
	ld.w	$a6, $s8, -12
	b	.LBB9_20
	.p2align	4, , 16
.LBB9_19:                               # %lor.lhs.false457
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	ld.w	$t2, $ra, -12
	ld.w	$a6, $s8, -12
	bne	$a1, $fp, .LBB9_30
.LBB9_20:                               # %if.then461
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s6, -8
	srai.d	$t3, $a1, 31
	xor	$t1, $a1, $t3
	sub.d	$t1, $t1, $t3
	mul.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a4
	sra.w	$t1, $t1, $a3
	slti	$a1, $a1, 0
	srai.d	$t2, $t1, 31
	xor	$t1, $t1, $t2
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $zero, $t1
	masknez	$t1, $t1, $a1
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $t1
	add.d	$a1, $a1, $t0
.LBB9_21:                               # %for.inc586
                                        #   in Loop: Header=BB9_17 Depth=3
	mul.d	$a6, $a1, $a6
	sll.w	$a1, $a6, $a2
	st.w	$a1, $s7, -48
	ld.w	$a1, $s7, -32
	add.d	$a6, $t4, $s5
	ld.w	$t2, $a6, 4
	sra.w	$a1, $a1, $a7
	div.w	$t0, $a1, $t2
	st.w	$t0, $s7, -32
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_23
# %bb.22:                               # %lor.lhs.false457.1
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	bne	$a1, $fp, .LBB9_31
.LBB9_23:                               # %if.then461.1
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s6, -4
	ld.w	$t1, $ra, -8
	srai.d	$t2, $a1, 31
	xor	$t3, $a1, $t2
	sub.d	$t2, $t3, $t2
	mul.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a4
	sra.w	$t1, $t1, $a3
	slti	$a1, $a1, 0
	srai.d	$t2, $t1, 31
	xor	$t1, $t1, $t2
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $zero, $t1
	masknez	$t1, $t1, $a1
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $t1
	add.d	$t0, $a1, $t0
.LBB9_24:                               # %for.inc586.1
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s8, -8
	mul.d	$a1, $t0, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s7, -32
	ld.w	$a1, $s7, -16
	ld.w	$t2, $a6, 8
	sra.w	$a1, $a1, $a7
	div.w	$t0, $a1, $t2
	st.w	$t0, $s7, -16
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_26
# %bb.25:                               # %lor.lhs.false457.2
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	bne	$a1, $fp, .LBB9_32
.LBB9_26:                               # %if.then461.2
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s6, 0
	ld.w	$t1, $ra, -4
	srai.d	$t2, $a1, 31
	xor	$t3, $a1, $t2
	sub.d	$t2, $t3, $t2
	mul.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a4
	sra.w	$t1, $t1, $a3
	slti	$a1, $a1, 0
	srai.d	$t2, $t1, 31
	xor	$t1, $t1, $t2
	sub.d	$t1, $t1, $t2
	sub.d	$t2, $zero, $t1
	masknez	$t1, $t1, $a1
	maskeqz	$a1, $t2, $a1
	or	$a1, $a1, $t1
	add.d	$t0, $a1, $t0
.LBB9_27:                               # %for.inc586.2
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $s8, -4
	mul.d	$a1, $t0, $a1
	sll.w	$a1, $a1, $a2
	st.w	$a1, $s7, -16
	ld.w	$a1, $s7, 0
	ld.w	$t0, $a6, 12
	sra.w	$a1, $a1, $a7
	div.w	$a6, $a1, $t0
	st.w	$a6, $s7, 0
	ld.w	$a1, $a0, 36
	bnez	$a1, .LBB9_15
# %bb.28:                               # %lor.lhs.false457.3
                                        #   in Loop: Header=BB9_17 Depth=3
	ld.w	$a1, $a5, 0
	beq	$a1, $fp, .LBB9_15
# %bb.29:                               # %if.else520.3
                                        #   in Loop: Header=BB9_17 Depth=3
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	add.d	$a1, $a1, $s5
	ld.w	$a1, $a1, 12
	mul.d	$a6, $a6, $t0
	ld.w	$t0, $s6, 4
	mul.d	$a1, $a6, $a1
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $t0
	ldx.w	$a6, $t7, $s5
	srai.d	$t0, $a1, 31
	xor	$t1, $a1, $t0
	sub.d	$t0, $t1, $t0
	mul.d	$a6, $t0, $a6
	add.d	$a6, $a6, $a4
	sra.w	$a6, $a6, $a3
	slti	$a1, $a1, 0
	srai.d	$t0, $a6, 31
	xor	$a6, $a6, $t0
	sub.d	$a6, $a6, $t0
	sub.d	$t0, $zero, $a6
	masknez	$a6, $a6, $a1
	maskeqz	$a1, $t0, $a1
	or	$a6, $a1, $a6
	b	.LBB9_16
.LBB9_30:                               # %if.else520
                                        #   in Loop: Header=BB9_17 Depth=3
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	ldx.w	$a1, $a1, $s5
	mul.d	$t0, $t0, $t3
	ld.w	$t1, $s6, -8
	mul.d	$a1, $t0, $a1
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $t1
	srai.d	$t0, $a1, 31
	xor	$t1, $a1, $t0
	sub.d	$t0, $t1, $t0
	mul.d	$t0, $t0, $t2
	add.d	$t0, $t0, $a4
	sra.w	$t0, $t0, $a3
	slti	$a1, $a1, 0
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	sub.d	$t1, $zero, $t0
	masknez	$t0, $t0, $a1
	maskeqz	$a1, $t1, $a1
	or	$a1, $a1, $t0
	b	.LBB9_21
.LBB9_31:                               # %if.else520.1
                                        #   in Loop: Header=BB9_17 Depth=3
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	add.d	$a1, $a1, $s5
	ld.w	$a1, $a1, 4
	mul.d	$t0, $t0, $t2
	ld.w	$t1, $s6, -4
	mul.d	$a1, $t0, $a1
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $t1
	ld.w	$t0, $ra, -8
	srai.d	$t1, $a1, 31
	xor	$t2, $a1, $t1
	sub.d	$t1, $t2, $t1
	mul.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a4
	sra.w	$t0, $t0, $a3
	slti	$a1, $a1, 0
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	sub.d	$t1, $zero, $t0
	masknez	$t0, $t0, $a1
	maskeqz	$a1, $t1, $a1
	or	$t0, $a1, $t0
	b	.LBB9_24
.LBB9_32:                               # %if.else520.2
                                        #   in Loop: Header=BB9_17 Depth=3
	pcalau12i	$a1, %pc_hi20(A)
	addi.d	$a1, $a1, %pc_lo12(A)
	add.d	$a1, $a1, $s5
	ld.w	$a1, $a1, 8
	mul.d	$t0, $t0, $t2
	ld.w	$t1, $s6, 0
	mul.d	$a1, $t0, $a1
	sll.w	$a1, $a1, $a7
	srli.d	$a1, $a1, 6
	add.w	$a1, $a1, $t1
	ld.w	$t0, $ra, -4
	srai.d	$t1, $a1, 31
	xor	$t2, $a1, $t1
	sub.d	$t1, $t2, $t1
	mul.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a4
	sra.w	$t0, $t0, $a3
	slti	$a1, $a1, 0
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
	sub.d	$t1, $zero, $t0
	masknez	$t0, $t0, $a1
	maskeqz	$a1, $t1, $a1
	or	$t0, $a1, $t0
	b	.LBB9_27
.LBB9_33:                               # %for.end597
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sll.w	$a0, $a0, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sll.w	$a1, $a1, $a2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	sll.w	$a3, $a3, $a2
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	sll.w	$a2, $a4, $a2
	add.d	$a4, $a1, $a0
	add.d	$a5, $a2, $a3
	add.w	$a6, $a5, $a4
	srli.d	$a6, $a6, 1
	ori	$a7, $zero, 768
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	mul.d	$t0, $t2, $a7
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	add.d	$t0, $t3, $t0
	st.w	$a6, $t0, 256
	add.d	$a6, $a0, $a3
	add.d	$t1, $a1, $a2
	sub.w	$a6, $a6, $t1
	srli.d	$a6, $a6, 1
	addi.w	$t1, $t2, 1
	mul.d	$a7, $t1, $a7
	add.d	$a7, $t3, $a7
	st.w	$a6, $a7, 256
	sub.w	$a4, $a4, $a5
	srli.d	$a4, $a4, 1
	st.w	$a4, $t0, 320
	add.d	$a1, $a1, $a3
	sub.d	$a0, $a0, $a1
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 1
	st.w	$a0, $a7, 320
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end9:
	.size	itrans_sp_chroma, .Lfunc_end9-itrans_sp_chroma
                                        # -- End function
	.type	quant_intra_default,@object     # @quant_intra_default
	.data
	.globl	quant_intra_default
	.p2align	2, 0x0
quant_intra_default:
	.word	6                               # 0x6
	.word	13                              # 0xd
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	13                              # 0xd
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	20                              # 0x14
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	37                              # 0x25
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	37                              # 0x25
	.word	42                              # 0x2a
	.size	quant_intra_default, 64

	.type	quant_inter_default,@object     # @quant_inter_default
	.globl	quant_inter_default
	.p2align	2, 0x0
quant_inter_default:
	.word	10                              # 0xa
	.word	14                              # 0xe
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	14                              # 0xe
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	30                              # 0x1e
	.word	24                              # 0x18
	.word	27                              # 0x1b
	.word	30                              # 0x1e
	.word	34                              # 0x22
	.size	quant_inter_default, 64

	.type	quant8_intra_default,@object    # @quant8_intra_default
	.globl	quant8_intra_default
	.p2align	2, 0x0
quant8_intra_default:
	.word	6                               # 0x6
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	27                              # 0x1b
	.word	29                              # 0x1d
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	42                              # 0x2a
	.size	quant8_intra_default, 256

	.type	quant8_inter_default,@object    # @quant8_inter_default
	.globl	quant8_inter_default
	.p2align	2, 0x0
quant8_inter_default:
	.word	9                               # 0x9
	.word	13                              # 0xd
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	22                              # 0x16
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	35                              # 0x23
	.size	quant8_inter_default, 256

	.type	quant_org,@object               # @quant_org
	.globl	quant_org
	.p2align	2, 0x0
quant_org:
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	quant_org, 64

	.type	quant8_org,@object              # @quant8_org
	.globl	quant8_org
	.p2align	2, 0x0
quant8_org:
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	quant8_org, 256

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str, 66

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 77

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 76

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 72

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 71

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 71

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 73

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error: illegal intra_4x4 prediction mode: %d\n"
	.size	.L.str.8, 46

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"invalid 16x16 intra pred Mode VERT_PRED_16"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"invalid 16x16 intra pred Mode HOR_PRED_16"
	.size	.L.str.10, 42

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"invalid 16x16 intra pred Mode PLANE_16"
	.size	.L.str.11, 39

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"illegal 16x16 intra prediction mode input: %d\n"
	.size	.L.str.12, 47

	.type	.L__const.intrapred_chroma.block_pos,@object # @__const.intrapred_chroma.block_pos
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.intrapred_chroma.block_pos:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	.L__const.intrapred_chroma.block_pos, 192

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"unexpected PLANE_8 chroma intra prediction mode"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"unexpected HOR_PRED_8 chroma intra prediction mode"
	.size	.L.str.14, 51

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"unexpected VERT_PRED_8 chroma intra prediction mode"
	.size	.L.str.15, 52

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"illegal chroma intra prediction mode"
	.size	.L.str.16, 37

	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	quant_coef,@object              # @quant_coef
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
quant_coef:
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	13107                           # 0x3333
	.word	8066                            # 0x1f82
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	8066                            # 0x1f82
	.word	5243                            # 0x147b
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	11916                           # 0x2e8c
	.word	7490                            # 0x1d42
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	7490                            # 0x1d42
	.word	4660                            # 0x1234
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	10082                           # 0x2762
	.word	6554                            # 0x199a
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	6554                            # 0x199a
	.word	4194                            # 0x1062
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	9362                            # 0x2492
	.word	5825                            # 0x16c1
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	5825                            # 0x16c1
	.word	3647                            # 0xe3f
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	8192                            # 0x2000
	.word	5243                            # 0x147b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	5243                            # 0x147b
	.word	3355                            # 0xd1b
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	7282                            # 0x1c72
	.word	4559                            # 0x11cf
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.word	4559                            # 0x11cf
	.word	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	A,@object                       # @A
	.p2align	2, 0x0
A:
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.size	A, 64

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
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
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
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym quant_intra_default
	.addrsig_sym quant_inter_default
	.addrsig_sym quant8_intra_default
	.addrsig_sym quant8_inter_default
	.addrsig_sym quant_org
	.addrsig_sym quant8_org
