	.file	"bitap.c"
	.text
	.globl	bitap                           # -- Begin function bitap
	.p2align	5
	.type	bitap,@function
bitap:                                  # @bitap
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
	lu12i.w	$a1, 35
	ori	$a1, $a1, 2224
	sub.d	$sp, $sp, $a1
	move	$s1, $a4
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(D_length)
	ld.d	$s5, $a1, %got_pc_lo12(D_length)
	addi.w	$a1, $a0, 0
	st.w	$a0, $s5, 0
	beqz	$a1, .LBB0_6
# %bb.1:                                # %for.body.preheader
	move	$a1, $zero
	ori	$a2, $zero, 94
	ori	$a3, $zero, 10
	ori	$a4, $zero, 36
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	stx.b	$a3, $s0, $a1
	ld.w	$a0, $s5, 0
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a1, $a1, 1
	bstrpick.d	$a5, $a0, 31, 0
	bgeu	$a1, $a5, .LBB0_7
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a5, $s0, $a1
	beq	$a5, $a2, .LBB0_2
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	beq	$a5, $a4, .LBB0_2
	b	.LBB0_3
.LBB0_6:
	move	$a0, $zero
.LBB0_7:                                # %for.end
	pcalau12i	$a1, %got_pc_hi20(REGEX)
	ld.d	$a1, $a1, %got_pc_lo12(REGEX)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_11
# %bb.8:                                # %if.then12
	ori	$a0, $zero, 5
	bge	$s1, $a0, .LBB0_64
# %bb.9:                                # %if.end17
	ori	$a0, $zero, 15
	blt	$a0, $s2, .LBB0_14
# %bb.10:                               # %if.then20
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	lu12i.w	$a3, 35
	ori	$a3, $a3, 2224
	add.d	$sp, $sp, $a3
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
	pcaddu18i	$t8, %call36(re)
	jr	$t8
.LBB0_11:                               # %if.end21
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB0_15
# %bb.12:                               # %if.end21
	pcalau12i	$a2, %got_pc_hi20(JUMP)
	ld.d	$a2, $a2, %got_pc_lo12(JUMP)
	ld.w	$a2, $a2, 0
	bne	$a2, $a1, .LBB0_15
# %bb.13:                               # %if.then26
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	lu12i.w	$a3, 35
	ori	$a3, $a3, 2224
	add.d	$sp, $sp, $a3
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
	pcaddu18i	$t8, %call36(asearch1)
	jr	$t8
.LBB0_14:                               # %if.else
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	lu12i.w	$a3, 35
	ori	$a3, $a3, 2224
	add.d	$sp, $sp, $a3
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
	pcaddu18i	$t8, %call36(re1)
	jr	$t8
.LBB0_15:                               # %if.end27
	blt	$s1, $a1, .LBB0_17
# %bb.16:                               # %if.then30
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	lu12i.w	$a3, 35
	ori	$a3, $a3, 2224
	add.d	$sp, $sp, $a3
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
	pcaddu18i	$t8, %call36(asearch)
	jr	$t8
.LBB0_17:                               # %if.end31
	pcalau12i	$a1, %got_pc_hi20(I)
	ld.d	$a1, $a1, %got_pc_lo12(I)
	ld.w	$a2, $a1, 0
	lu12i.w	$a1, 11
	ori	$a3, $a1, 4095
	addi.d	$a1, $sp, 72
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a1, $a3
	beqz	$a2, .LBB0_19
# %bb.18:                               # %if.end31.if.end35_crit_edge
	pcalau12i	$a2, %got_pc_hi20(Init1)
	ld.d	$a2, $a2, %got_pc_lo12(Init1)
	ld.w	$s7, $a2, 0
	b	.LBB0_20
.LBB0_19:                               # %if.then34
	pcalau12i	$a2, %got_pc_hi20(Init1)
	ld.d	$a2, $a2, %got_pc_lo12(Init1)
	addi.w	$s7, $zero, -1
	move	$a3, $s7
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 0
.LBB0_20:                               # %if.end35
	pcalau12i	$a2, %got_pc_hi20(Init)
	ld.d	$a3, $a2, %got_pc_lo12(Init)
	pcalau12i	$a2, %got_pc_hi20(D_endpos)
	ld.d	$a2, $a2, %got_pc_lo12(D_endpos)
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s6, $a3, 0
	ld.w	$a5, $a2, 0
	ori	$a2, $zero, 10
	addi.w	$a3, $a0, 0
	ori	$a4, $zero, 2
	st.b	$a2, $a1, 0
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $a5
	bltu	$a3, $a4, .LBB0_23
# %bb.21:                               # %for.body41.preheader
	addi.d	$a0, $a0, -1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_22:                               # %for.body41
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a2, 1
	addi.w	$a0, $a0, -1
	or	$a2, $a3, $a2
	bnez	$a0, .LBB0_22
.LBB0_23:                               # %for.end44
	move	$s2, $zero
	move	$s1, $zero
	nor	$a0, $a2, $zero
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s8, $a1, 1
	lu12i.w	$s3, 12
	pcalau12i	$a0, %got_pc_hi20(Mask)
	ld.d	$a0, $a0, %got_pc_lo12(Mask)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_25
.LBB0_24:                               # %if.end194
                                        #   in Loop: Header=BB0_25 Depth=1
	sub.d	$a0, $s8, $s4
	add.d	$a1, $a7, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	sub.w	$s3, $s2, $s4
	ori	$s2, $zero, 1
.LBB0_25:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_45 Depth 2
	move	$s4, $zero
	.p2align	4, , 16
.LBB0_26:                               # %while.body.i
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s8, $s4
	move	$a0, $fp
	lu12i.w	$a2, 1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	add.w	$s4, $s4, $a0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_28
# %bb.27:                               # %while.body.i
                                        #   in Loop: Header=BB0_26 Depth=2
	lu12i.w	$a0, 12
	blt	$s4, $a0, .LBB0_26
.LBB0_28:                               # %fill_buf.exit
                                        #   in Loop: Header=BB0_25 Depth=1
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB0_63
# %bb.29:                               # %while.body
                                        #   in Loop: Header=BB0_25 Depth=1
	andi	$a0, $s2, 1
	beqz	$a0, .LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_25 Depth=1
	lu12i.w	$a1, 12
	move	$s2, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a7, $sp, 72
	b	.LBB0_39
.LBB0_31:                               # %if.then49
                                        #   in Loop: Header=BB0_25 Depth=1
	pcalau12i	$a0, %got_pc_hi20(DELIMITER)
	ld.d	$a0, $a0, %got_pc_lo12(DELIMITER)
	ld.w	$a0, $a0, 0
	addi.d	$a7, $sp, 72
	beqz	$a0, .LBB0_36
# %bb.32:                               # %for.cond52.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a0, $s5, 0
	move	$a1, $s0
	move	$a2, $s8
	addi.d	$a3, $zero, -1
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB0_38
	.p2align	4, , 16
.LBB0_33:                               # %for.body55
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a1, 0
	ld.bu	$a4, $a2, 0
	bne	$a3, $a4, .LBB0_37
# %bb.34:                               # %for.cond52
                                        #   in Loop: Header=BB0_33 Depth=2
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_25 Depth=1
	addi.d	$a3, $zero, -1
	b	.LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_25 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$s2, $a0
	lu12i.w	$a1, 12
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_39
.LBB0_37:                               #   in Loop: Header=BB0_25 Depth=1
	move	$a3, $zero
.LBB0_38:                               # %for.end69
                                        #   in Loop: Header=BB0_25 Depth=1
	add.d	$s1, $a3, $s1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$s2, $a0
	lu12i.w	$a1, 12
.LBB0_39:                               # %if.end75
                                        #   in Loop: Header=BB0_25 Depth=1
	add.w	$t0, $s4, $a1
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	blt	$a0, $s4, .LBB0_41
# %bb.40:                               # %if.then78
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.w	$a2, $s5, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s8, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	addi.d	$a7, $sp, 72
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.w	$t0, $a1, $a0
	bstrpick.d	$a0, $t0, 31, 0
	stx.b	$zero, $a0, $a7
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB0_41:                               # %if.end87
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s2, $t0, .LBB0_60
# %bb.42:                               # %while.body91.lr.ph
                                        #   in Loop: Header=BB0_25 Depth=1
	add.w	$t1, $s4, $a0
	addi.d	$s4, $s2, 1
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_43:                               # %if.end181
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(TRUNCATE)
	ld.d	$a1, $a1, %got_pc_lo12(TRUNCATE)
	ld.wu	$a2, $a3, 0
	sub.d	$a0, $s4, $a0
	addi.w	$s3, $a0, 1
	st.w	$zero, $a1, 0
	and	$a0, $a2, $s7
	srli.d	$a1, $a2, 1
	and	$a1, $a1, $s2
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$s6, $a0, $a1
.LBB0_44:                               # %if.end188
                                        #   in Loop: Header=BB0_45 Depth=2
	addi.w	$a0, $s4, 1
	addi.w	$s4, $s4, 2
	bgeu	$a0, $t0, .LBB0_60
.LBB0_45:                               # %while.body91
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s4, -1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.b	$a0, $a0, $a7
	slli.d	$a0, $a0, 2
	ldx.wu	$s2, $a5, $a0
	and	$a0, $s6, $s7
	bstrpick.d	$a1, $s6, 31, 1
	and	$a1, $s2, $a1
	or	$a0, $a1, $a0
	and	$a1, $a0, $a4
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB0_53
# %bb.46:                               # %if.then101
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a1, %got_pc_hi20(AND)
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.d	$a1, $a1, %got_pc_lo12(AND)
	ld.w	$a2, $a2, 0
	ld.w	$a1, $a1, 0
	addi.w	$s1, $s1, 1
	and	$a0, $a2, $a0
	addi.w	$a0, $a0, 0
	ori	$a6, $zero, 1
	bne	$a1, $a6, .LBB0_48
# %bb.47:                               # %if.then101
                                        #   in Loop: Header=BB0_45 Depth=2
	beq	$a0, $a2, .LBB0_49
.LBB0_48:                               # %lor.lhs.false109
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	sltui	$a1, $a1, 1
	sltu	$a0, $zero, $a0
	and	$a0, $a1, $a0
	beq	$a2, $a0, .LBB0_52
.LBB0_49:                               # %if.then115
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_62
# %bb.50:                               # %if.end120
                                        #   in Loop: Header=BB0_45 Depth=2
	bge	$s3, $t1, .LBB0_52
# %bb.51:                               # %if.then126
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $s5, 0
	nor	$a0, $a0, $zero
	add.w	$a2, $a0, $s4
	addi.d	$a0, $sp, 72
	move	$a1, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a7, $sp, 72
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
.LBB0_52:                               # %if.end129
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(TRUNCATE)
	ld.d	$a1, $a1, %got_pc_lo12(TRUNCATE)
	ld.wu	$a2, $a3, 0
	sub.w	$s3, $s4, $a0
	st.w	$zero, $a1, 0
	and	$a0, $a2, $s7
	srli.d	$a1, $a2, 1
	and	$a1, $a1, $s2
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
.LBB0_53:                               # %if.end136
                                        #   in Loop: Header=BB0_45 Depth=2
	bstrpick.d	$a1, $s4, 31, 0
	ldx.b	$a1, $a1, $a7
	slli.d	$a1, $a1, 2
	ldx.wu	$s2, $a5, $a1
	and	$a1, $a0, $s7
	bstrpick.d	$a0, $a0, 31, 1
	and	$a0, $s2, $a0
	or	$s6, $a0, $a1
	and	$a0, $s6, $a4
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_44
# %bb.54:                               # %if.then148
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a0, %got_pc_hi20(AND)
	pcalau12i	$a1, %got_pc_hi20(endposition)
	ld.d	$a1, $a1, %got_pc_lo12(endposition)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	ld.w	$a2, $a1, 0
	ld.w	$a0, $a0, 0
	addi.w	$s1, $s1, 1
	and	$a1, $a2, $s6
	addi.w	$a1, $a1, 0
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB0_56
# %bb.55:                               # %if.then148
                                        #   in Loop: Header=BB0_45 Depth=2
	beq	$a1, $a2, .LBB0_57
.LBB0_56:                               # %lor.lhs.false156
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	beq	$a2, $a0, .LBB0_43
.LBB0_57:                               # %if.then166
                                        #   in Loop: Header=BB0_45 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_62
# %bb.58:                               # %if.end171
                                        #   in Loop: Header=BB0_45 Depth=2
	bge	$s3, $t1, .LBB0_43
# %bb.59:                               # %if.then178
                                        #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a0, $s5, 0
	sub.w	$a2, $s4, $a0
	addi.d	$a0, $sp, 72
	move	$a1, $s3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a7, $sp, 72
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_43
.LBB0_60:                               # %while.end
                                        #   in Loop: Header=BB0_25 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.w	$s4, $a0, $s3
	lu12i.w	$s2, 12
	ori	$a0, $s2, 1
	blt	$s4, $a0, .LBB0_24
# %bb.61:                               # %if.then193
                                        #   in Loop: Header=BB0_25 Depth=1
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	move	$s4, $s2
	b	.LBB0_24
.LBB0_62:                               # %if.then117
	pcalau12i	$a0, %got_pc_hi20(num_of_matched)
	ld.d	$a0, $a0, %got_pc_lo12(num_of_matched)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(CurrentFileName)
	ld.d	$a0, $a0, %got_pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %cleanup
	lu12i.w	$a0, 35
	ori	$a0, $a0, 2224
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
.LBB0_64:                               # %if.then15
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Progname)
	ld.d	$a2, $a1, %got_pc_lo12(Progname)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	bitap, .Lfunc_end0-bitap
                                        # -- End function
	.globl	fill_buf                        # -- Begin function fill_buf
	.p2align	5
	.type	fill_buf,@function
fill_buf:                               # @fill_buf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$s4, $zero, 1
	blt	$a2, $s4, .LBB1_4
# %bb.1:                                # %while.body.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	lu12i.w	$s3, 1
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s0, $s2
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	add.w	$s2, $s2, $a0
	blt	$a1, $s4, .LBB1_5
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	blt	$s2, $fp, .LBB1_2
	b	.LBB1_5
.LBB1_4:
	move	$s2, $zero
.LBB1_5:                                # %while.end
	move	$a0, $s2
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	fill_buf, .Lfunc_end1-fill_buf
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: the maximum number of erorrs allowed for full regular expression is 4\n"
	.size	.L.str, 75

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Progname
	.addrsig_sym CurrentFileName
