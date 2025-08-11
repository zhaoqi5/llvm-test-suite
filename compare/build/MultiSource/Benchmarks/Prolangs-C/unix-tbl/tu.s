	.file	"tu.c"
	.text
	.globl	makeline                        # -- Begin function makeline
	.p2align	5
	.type	makeline,@function
makeline:                               # @makeline
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.1:                                # %if.end
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$a0, $a0, %got_pc_lo12(table)
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s0, 4
	ldx.d	$a0, $a0, $a1
	ld.bu	$s4, $a0, 0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB0_5
# %bb.2:                                # %if.end
	ori	$a0, $zero, 92
	beq	$s4, $a0, .LBB0_5
# %bb.3:                                # %land.lhs.true8
	addi.w	$a1, $s0, -1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_9
.LBB0_4:                                # %cleanup
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
.LBB0_5:                                # %if.end13
	ori	$a0, $zero, 92
	bne	$s4, $a0, .LBB0_9
# %bb.6:                                # %for.cond25.preheader
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s2, $a0, %got_pc_lo12(ncol)
	addi.w	$a1, $s0, 1
	ori	$s5, $zero, 115
	.p2align	4, , 16
.LBB0_7:                                # %for.cond25
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	move	$s3, $a1
	bge	$a1, $a0, .LBB0_14
# %bb.8:                                # %land.rhs28
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s3, 1
	beq	$a0, $s5, .LBB0_7
	b	.LBB0_14
.LBB0_9:                                # %for.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s5, $a0, %got_pc_lo12(ncol)
	ld.w	$a0, $s5, 0
	move	$s3, $s0
	bge	$s0, $a0, .LBB0_14
# %bb.10:                               # %land.rhs.preheader
	ori	$s6, $zero, 115
	move	$s3, $s0
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
	ld.w	$a0, $s5, 0
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB0_14
.LBB0_12:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB0_11
# %bb.13:                               # %lor.rhs
                                        #   in Loop: Header=BB0_12 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB0_11
.LBB0_14:                               # %if.end37
	addi.d	$a0, $s4, -92
	sltui	$a5, $a0, 1
	addi.w	$a2, $s3, -1
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	move	$a4, $zero
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
	pcaddu18i	$t8, %call36(drawline)
	jr	$t8
.Lfunc_end0:
	.size	makeline, .Lfunc_end0-makeline
                                        # -- End function
	.globl	drawline                        # -- Begin function drawline
	.p2align	5
	.type	drawline,@function
drawline:                               # @drawline
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
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	move	$s7, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$a0, $zero, 4
	ori	$s2, $zero, 1
	beq	$a3, $a0, .LBB1_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 45
	ori	$s2, $zero, 1
	beq	$a3, $a0, .LBB1_4
# %bb.2:                                # %entry
	ori	$a0, $zero, 61
	bne	$a3, $a0, .LBB1_85
# %bb.3:                                # %sw.bb1
	pcalau12i	$a0, %got_pc_hi20(pr1403)
	ld.d	$a0, $a0, %got_pc_lo12(pr1403)
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	addi.d	$s2, $a0, 1
.LBB1_4:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s3, $a0, %got_pc_lo12(ncol)
	bnez	$a4, .LBB1_8
# %bb.5:                                # %if.end
	ld.w	$a0, $s3, 0
	sub.w	$a1, $s7, $s0
	bge	$a1, $a0, .LBB1_8
# %bb.6:                                # %lor.end
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(allh)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_8
# %bb.7:                                # %if.then7
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s1, $zero
.LBB1_8:                                # %if.end9
	addi.w	$a0, $s0, 40
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	beq	$s2, $a1, .LBB1_10
# %bb.9:                                # %if.then13.peel
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	sub.d	$a2, $a1, $s2
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end16.peel
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_16
# %bb.11:                               # %if.else69.peel
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
.LBB1_12:                               # %if.end72.peel
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s4, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $s4, 0
	addi.w	$s5, $s7, 80
	addi.w	$a1, $s7, 41
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(linsize)
	ld.d	$s6, $a0, %got_pc_lo12(linsize)
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_14
# %bb.13:                               # %if.then75.peel
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %if.end77.peel
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_19
# %bb.15:                               # %if.then79.peel
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_24
	b	.LBB1_25
.LBB1_16:                               # %if.then18.peel
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tohcol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	addi.w	$a0, $a0, -1
	bne	$s2, $a1, .LBB1_21
# %bb.17:                               # %if.then35.peel
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_30
# %bb.18:                               # %switch.lookup54
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.drawline.1)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.drawline.1)
	ldx.d	$fp, $a1, $a0
	ld.bu	$a0, $fp, 0
	bnez	$a0, .LBB1_31
	b	.LBB1_32
.LBB1_19:                               # %if.else82.peel
	pcalau12i	$a0, %got_pc_hi20(pr1403)
	ld.d	$a0, $a0, %got_pc_lo12(pr1403)
	ld.w	$a0, $a0, 0
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	masknez	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a3, $a0, %pc_lo12(.L.str.14)
	ld.w	$a4, $s3, 0
	ld.d	$a0, $s4, 0
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.w	$a5, $a1, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bge	$a1, $a4, .LBB1_23
# %bb.20:                               # %if.else92.peel
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$a2, $s5
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_24
	b	.LBB1_25
.LBB1_21:                               # %if.then20.peel
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_34
# %bb.22:                               # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.drawline)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.drawline)
	ldx.d	$fp, $a1, $a0
	ld.bu	$a0, $fp, 0
	bnez	$a0, .LBB1_35
	b	.LBB1_36
.LBB1_23:                               # %if.then90.peel
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_25
.LBB1_24:                               # %if.then100.peel
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_25:                               # %if.end102.peel
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$s2, $fp, .LBB1_84
# %bb.26:                               # %if.end16.peel58
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 2
	ori	$fp, $zero, 2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_28
# %bb.27:                               # %if.else69.peel60
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_50
.LBB1_28:                               # %if.then20.peel62
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tohcol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -2
	bgeu	$a1, $fp, .LBB1_41
# %bb.29:                               # %sw.bb25.peel
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$fp, $a0, %pc_lo12(.L.str.6)
	b	.LBB1_43
.LBB1_30:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_32
.LBB1_31:                               # %if.then42.peel
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %if.then61.peel
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB1_39
# %bb.33:                               # %if.then61.peel
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_40
	b	.LBB1_87
.LBB1_34:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_36
.LBB1_35:                               # %if.then31.peel
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %if.then48.peel
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_40
# %bb.37:                               # %if.then48.peel
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_40
# %bb.38:                               # %if.then48.peel
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_87
.LBB1_39:                               # %sw.bb64.peel
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB1_12
.LBB1_40:                               # %sw.bb51.peel
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB1_12
.LBB1_41:                               # %if.then20.peel62
	ori	$a1, $zero, 1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB1_43
# %bb.42:                               # %sw.bb22.peel
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$fp, $a0, %pc_lo12(.L.str.7)
.LBB1_43:                               # %sw.epilog29.peel63
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_45
# %bb.44:                               # %if.then31.peel66
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_45:                               # %if.then48.peel68
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -2
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_47
# %bb.46:                               # %sw.bb54.peel70
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB1_49
.LBB1_47:                               # %if.then48.peel68
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_50
# %bb.48:                               # %sw.bb51.peel71
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB1_49:                               # %if.end72.peel72
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB1_50:                               # %if.end72.peel72
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_52
# %bb.51:                               # %if.then75.peel77
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %if.end77.peel79
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_54
# %bb.53:                               # %if.then79.peel80
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_57
	b	.LBB1_58
.LBB1_54:                               # %if.else82.peel82
	pcalau12i	$a0, %got_pc_hi20(pr1403)
	ld.d	$a0, $a0, %got_pc_lo12(pr1403)
	ld.w	$a0, $a0, 0
	sltui	$a1, $a0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	masknez	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a3, $a0, %pc_lo12(.L.str.14)
	ld.w	$a4, $s3, 0
	ld.d	$a0, $s4, 0
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.w	$a5, $a1, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bge	$a1, $a4, .LBB1_56
# %bb.55:                               # %if.else92.peel88
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$a2, $s5
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_57
	b	.LBB1_58
.LBB1_56:                               # %if.then90.peel86
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_58
.LBB1_57:                               # %if.then100.peel92
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 33
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_58:                               # %if.end102.peel94
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s2, $a0, .LBB1_82
# %bb.59:                               # %if.end16.preheader
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$fp, $s2, -2
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 1
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s8, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$s2, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %got_pc_hi20(pr1403)
	ld.d	$a0, $a0, %got_pc_lo12(pr1403)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s7, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_60:                               # %if.end102
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	beqz	$fp, .LBB1_81
.LBB1_61:                               # %if.end16
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_63
# %bb.62:                               # %if.else69
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_73
	.p2align	4, , 16
.LBB1_63:                               # %if.then20
                                        #   in Loop: Header=BB1_61 Depth=1
	move	$s1, $s3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(tohcol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_65
# %bb.64:                               # %sw.bb22
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_67
.LBB1_65:                               # %if.then20
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB1_67
# %bb.66:                               # %sw.bb28
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB1_67:                               # %sw.epilog29
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.bu	$a0, $a1, 0
	move	$s3, $s1
	move	$s1, $a1
	beqz	$a0, .LBB1_69
# %bb.68:                               # %if.then31
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_69:                               # %if.then48
                                        #   in Loop: Header=BB1_61 Depth=1
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(interv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB1_71
# %bb.70:                               # %sw.bb51
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_73
.LBB1_71:                               # %if.then48
                                        #   in Loop: Header=BB1_61 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB1_73
# %bb.72:                               # %sw.bb57
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_73:                               # %if.end72
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 33
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_75
# %bb.74:                               # %if.then75
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 33
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_75:                               # %if.end77
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_77
# %bb.76:                               # %if.then79
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_80
	b	.LBB1_60
	.p2align	4, , 16
.LBB1_77:                               # %if.else82
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$a1, $a0, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a0, $a1
	ld.w	$a3, $s3, 0
	ld.d	$a0, $s4, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	addi.w	$a5, $a1, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	bge	$a1, $a3, .LBB1_79
# %bb.78:                               # %if.else92
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB1_80
	b	.LBB1_60
.LBB1_79:                               # %if.then90
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $a5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB1_60
	.p2align	4, , 16
.LBB1_80:                               # %if.then100
                                        #   in Loop: Header=BB1_61 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 33
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_60
.LBB1_81:
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB1_82:                               # %for.end
	sub.d	$a1, $a0, $s2
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB1_84
# %bb.83:                               # %if.then105
	ld.d	$a0, $s4, 0
	nor	$a2, $a1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_84:                               # %if.end108
	beqz	$s1, .LBB1_86
.LBB1_85:                               # %cleanup
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
.LBB1_86:                               # %if.then110
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB1_87:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB1_12
.Lfunc_end1:
	.size	drawline, .Lfunc_end1-drawline
                                        # -- End function
	.globl	fullwide                        # -- Begin function fullwide
	.p2align	5
	.type	fullwide,@function
fullwide:                               # @fullwide
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
	pcalau12i	$a2, %got_pc_hi20(pr1403)
	ld.d	$a2, $a2, %got_pc_lo12(pr1403)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a0
	bnez	$a2, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 36
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s4, $a0, %got_pc_lo12(ncol)
	ld.w	$a1, $s4, 0
	ori	$s5, $zero, 1
	blt	$a1, $s5, .LBB2_26
# %bb.3:                                # %while.cond1.preheader.lr.ph
	move	$s2, $zero
	addi.w	$s6, $s0, -1
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$a0, $a0, %got_pc_lo12(instead)
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	bstrpick.d	$a3, $s6, 31, 0
	addi.d	$s7, $a3, 1
	alsl.d	$s8, $a3, $a0, 3
	alsl.d	$s3, $a3, $a2, 2
	addi.w	$fp, $zero, -1
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %if.end18
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$s2, $a1, .LBB2_26
.LBB2_5:                                # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_17 Depth 3
	bge	$s0, $s5, .LBB2_10
# %bb.6:                                # %while.end.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$s2, $a1, .LBB2_25
# %bb.7:                                # %for.body.lr.ph.split
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.w	$a0, $s2, 1
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a0, $a2, $a0
	move	$s1, $s2
	move	$s2, $a0
	bge	$s1, $a1, .LBB2_4
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_10 Depth=2
	move	$a0, $fp
.LBB2_9:                                # %prev.exit.us
                                        #   in Loop: Header=BB2_10 Depth=2
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(vspand)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s1, 1
	beqz	$a0, .LBB2_14
.LBB2_10:                               # %land.rhs.preheader.i.us
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
	move	$s1, $s2
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s7
	move	$a0, $s6
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_11:                               # %while.body.i.us
                                        #   in Loop: Header=BB2_12 Depth=3
	addi.w	$a0, $a0, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -4
	blez	$a3, .LBB2_8
.LBB2_12:                               # %land.rhs.i.us
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	bnez	$a4, .LBB2_11
# %bb.13:                               # %lor.rhs.i.us
                                        #   in Loop: Header=BB2_12 Depth=3
	ld.d	$a4, $a2, 0
	bnez	$a4, .LBB2_11
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_14:                               # %while.end
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a1, $s4, 0
	move	$s2, $s1
	bge	$s1, $a1, .LBB2_22
	.p2align	4, , 16
.LBB2_15:                               # %for.body.us
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_17 Depth 3
	move	$a1, $s3
	move	$a2, $s8
	move	$a3, $s7
	move	$a0, $s6
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_16:                               # %while.body.i24.us
                                        #   in Loop: Header=BB2_17 Depth=3
	addi.w	$a0, $a0, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -4
	blez	$a3, .LBB2_19
.LBB2_17:                               # %land.rhs.i20.us
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	bnez	$a4, .LBB2_16
# %bb.18:                               # %lor.rhs.i27.us
                                        #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a4, $a2, 0
	bnez	$a4, .LBB2_16
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               #   in Loop: Header=BB2_15 Depth=2
	move	$a0, $fp
.LBB2_20:                               # %prev.exit31.us
                                        #   in Loop: Header=BB2_15 Depth=2
	ori	$a2, $zero, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(vspand)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	bnez	$a0, .LBB2_23
# %bb.21:                               # %for.inc.us
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.w	$s2, $s2, 1
	blt	$s2, $a1, .LBB2_15
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_5 Depth=1
	move	$s2, $s1
.LBB2_23:                               # %for.end
                                        #   in Loop: Header=BB2_5 Depth=1
	bge	$s1, $a1, .LBB2_4
.LBB2_24:                               # %if.then16
                                        #   in Loop: Header=BB2_5 Depth=1
	slt	$a0, $s2, $a1
	sub.w	$a2, $s2, $a0
	ori	$a4, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $zero
	pcaddu18i	$ra, %call36(drawline)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	b	.LBB2_4
.LBB2_25:                               #   in Loop: Header=BB2_5 Depth=1
	move	$s1, $s2
	bge	$s1, $a1, .LBB2_4
	b	.LBB2_24
.LBB2_26:                               # %while.end19
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$fp, $a0, %got_pc_lo12(tabout)
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_28
# %bb.27:                               # %if.end24
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
.LBB2_28:                               # %if.then22
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 36
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end2:
	.size	fullwide, .Lfunc_end2-fullwide
                                        # -- End function
	.globl	prev                            # -- Begin function prev
	.p2align	5
	.type	prev,@function
prev:                                   # @prev
# %bb.0:                                # %entry
	move	$a1, $a0
	ori	$a2, $zero, 1
	addi.w	$a0, $a0, -1
	blt	$a1, $a2, .LBB3_5
# %bb.1:                                # %land.rhs.preheader
	pcalau12i	$a1, %got_pc_hi20(instead)
	ld.d	$a2, $a1, %got_pc_lo12(instead)
	pcalau12i	$a1, %got_pc_hi20(fullbot)
	ld.d	$a3, $a1, %got_pc_lo12(fullbot)
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a4, $a4, $a3, 2
	addi.w	$a3, $zero, -1
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a4, -4
	blez	$a1, .LBB3_6
.LBB3_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a4, 0
	bnez	$a5, .LBB3_2
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a5, $a2, 0
	bnez	$a5, .LBB3_2
.LBB3_5:                                # %while.end
	ret
.LBB3_6:
	move	$a0, $a3
	ret
.Lfunc_end3:
	.size	prev, .Lfunc_end3-prev
                                        # -- End function
	.globl	getstop                         # -- Begin function getstop
	.p2align	5
	.type	getstop,@function
getstop:                                # @getstop
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
	pcalau12i	$a0, %got_pc_hi20(linestop)
	ld.d	$fp, $a0, %got_pc_lo12(linestop)
	ori	$a2, $zero, 800
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$s2, $a0, %got_pc_lo12(nlin)
	ld.w	$a0, $s2, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_11
# %bb.1:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(ncol)
	ld.d	$s3, $a1, %got_pc_lo12(ncol)
	ld.w	$a1, $s3, 0
	blt	$a1, $a2, .LBB4_11
# %bb.2:                                # %for.cond4.preheader.preheader
	move	$s0, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_3:                                # %for.inc17.loopexit
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a0, $s2, 0
.LBB4_4:                                # %for.inc17
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_11
.LBB4_5:                                # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	blt	$a1, $s4, .LBB4_4
# %bb.6:                                # %for.body6.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$s1, $zero
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.inc14
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.w	$a1, $s3, 0
	addi.w	$s1, $s1, 1
	bge	$s1, $a1, .LBB4_3
.LBB4_8:                                # %for.body6
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(left)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_7
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_8 Depth=2
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $fp, $a1
	bnez	$a1, .LBB4_7
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB4_8 Depth=2
	alsl.d	$a0, $a0, $fp, 2
	addi.d	$s5, $s5, 1
	st.w	$s5, $a0, 0
	b	.LBB4_7
.LBB4_11:                               # %for.end19
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_14
# %bb.12:                               # %for.end19
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB4_14
# %bb.13:                               # %for.end19
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_15
.LBB4_14:                               # %if.then23
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
.LBB4_15:                               # %if.end24
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
.Lfunc_end4:
	.size	getstop, .Lfunc_end4-getstop
                                        # -- End function
	.globl	left                            # -- Begin function left
	.p2align	5
	.type	left,@function
left:                                   # @left
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
	pcalau12i	$a3, %got_pc_hi20(nlin)
	ld.d	$s5, $a3, %got_pc_lo12(nlin)
	move	$s8, $a2
	st.w	$zero, $a2, 0
	ld.w	$a2, $s5, 0
	move	$s0, $a1
	move	$s1, $a0
	addi.w	$a0, $a2, -1
	slt	$a1, $s1, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 115
	bne	$a0, $fp, .LBB5_4
# %bb.1:                                # %for.cond.i.preheader
	move	$s3, $s0
	.p2align	4, , 16
.LBB5_2:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	beq	$a0, $fp, .LBB5_2
# %bb.3:                                # %for.end.i
	addi.w	$a1, $s3, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_25
.LBB5_4:                                # %if.end9.i
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$s6, $a0, %got_pc_lo12(stynum)
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $s6, $a0
	pcalau12i	$a1, %got_pc_hi20(lefline)
	ld.d	$s7, $a1, %got_pc_lo12(lefline)
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s7, $a0
	slli.d	$a1, $s0, 2
	ldx.w	$s4, $a0, $a1
	bgtz	$s4, .LBB5_10
# %bb.5:                                # %if.end16.i
	bnez	$s0, .LBB5_7
# %bb.6:                                # %if.end16.i
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a0, $a0, 0
	ori	$s4, $zero, 2
	bnez	$a0, .LBB5_10
.LBB5_7:                                # %if.end19.i
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a0, $a0, 0
	ori	$s4, $zero, 1
	bnez	$a0, .LBB5_10
# %bb.8:                                # %lefdata.exit
	addi.d	$s2, $zero, -1
	bnez	$s0, .LBB5_61
# %bb.9:                                # %lefdata.exit
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB5_61
.LBB5_10:                               # %if.end
	ld.w	$a1, $s5, 0
	addi.w	$a0, $s1, 1
	bge	$a0, $a1, .LBB5_26
# %bb.11:                               # %while.body.i.preheader
	pcalau12i	$a2, %got_pc_hi20(fullbot)
	ld.d	$a2, $a2, %got_pc_lo12(fullbot)
	pcalau12i	$a3, %got_pc_hi20(instead)
	ld.d	$a3, $a3, %got_pc_lo12(instead)
	slli.d	$a4, $a0, 2
	ldx.w	$a5, $a2, $a4
	addi.w	$a4, $a0, 1
	bnez	$a5, .LBB5_14
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %while.body.i.backedge
                                        #   in Loop: Header=BB5_14 Depth=1
	move	$a0, $a4
	slli.d	$a4, $a0, 2
	ldx.w	$a5, $a2, $a4
	addi.w	$a4, $a0, 1
	bnez	$a5, .LBB5_14
.LBB5_13:                               # %land.lhs.true.i
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $a3, $a5
	beqz	$a5, .LBB5_15
.LBB5_14:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	blt	$a4, $a1, .LBB5_12
.LBB5_15:                               # %next.exit
	addi.w	$a1, $a1, -1
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s2, $a0, $a1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 115
	bne	$a0, $fp, .LBB5_19
# %bb.16:                               # %for.cond.i53.preheader
	move	$s3, $s0
	.p2align	4, , 16
.LBB5_17:                               # %for.cond.i53
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	beq	$a0, $fp, .LBB5_17
# %bb.18:                               # %for.end.i58
	addi.w	$a1, $s3, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_26
.LBB5_19:                               # %if.end9.i34
	slli.d	$a0, $s2, 2
	ldx.w	$a0, $s6, $a0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s7, $a0
	slli.d	$a1, $s0, 2
	ldx.w	$a0, $a0, $a1
	bgtz	$a0, .LBB5_24
# %bb.20:                               # %if.end16.i42
	bnez	$s0, .LBB5_22
# %bb.21:                               # %if.end16.i42
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 2
	bnez	$a1, .LBB5_24
.LBB5_22:                               # %if.end19.i46
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB5_24
# %bb.23:                               # %if.end22.i49
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	sltui	$a1, $s0, 1
	sltu	$a0, $zero, $a0
	and	$a0, $a1, $a0
.LBB5_24:                               # %lefdata.exit61
	bne	$a0, $s4, .LBB5_26
.LBB5_25:
	addi.d	$s2, $zero, -1
	b	.LBB5_61
.LBB5_26:                               # %if.end8
	bltz	$s1, .LBB5_51
# %bb.27:                               # %land.rhs.lr.ph
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $s0, $s7, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$s8, $a0, %got_pc_lo12(instead)
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$s2, $a0, %got_pc_lo12(fullbot)
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$fp, $zero, 115
	addi.w	$s7, $zero, -1
	sltui	$a0, $s0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
.LBB5_28:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_30 Depth 2
                                        #     Child Loop BB5_41 Depth 2
	ld.w	$a0, $s5, 0
	move	$s3, $s1
	addi.w	$a0, $a0, -1
	slt	$a1, $s1, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB5_32
# %bb.29:                               # %for.cond.i85.preheader
                                        #   in Loop: Header=BB5_28 Depth=1
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	move	$s5, $s4
	move	$s4, $s6
	move	$s6, $s8
	move	$s8, $s2
	move	$s2, $s0
	.p2align	4, , 16
.LBB5_30:                               # %for.cond.i85
                                        #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, -1
	beq	$a0, $fp, .LBB5_30
# %bb.31:                               # %for.end.i90
                                        #   in Loop: Header=BB5_28 Depth=1
	addi.w	$a1, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	move	$s2, $s8
	move	$s8, $s6
	move	$s6, $s4
	move	$s4, $s5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_62
.LBB5_32:                               # %if.end9.i66
                                        #   in Loop: Header=BB5_28 Depth=1
	slli.d	$a0, $s1, 2
	ldx.w	$a0, $s6, $a0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	bgtz	$a0, .LBB5_37
# %bb.33:                               # %if.end16.i74
                                        #   in Loop: Header=BB5_28 Depth=1
	bnez	$s0, .LBB5_35
# %bb.34:                               # %if.end16.i74
                                        #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 2
	bnez	$a1, .LBB5_37
.LBB5_35:                               # %if.end19.i78
                                        #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB5_37
# %bb.36:                               # %if.end22.i81
                                        #   in Loop: Header=BB5_28 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	.p2align	4, , 16
.LBB5_37:                               # %lefdata.exit93
                                        #   in Loop: Header=BB5_28 Depth=1
	bne	$a0, $s4, .LBB5_62
# %bb.38:                               # %while.body
                                        #   in Loop: Header=BB5_28 Depth=1
	beqz	$s3, .LBB5_63
# %bb.39:                               # %land.rhs.preheader.i
                                        #   in Loop: Header=BB5_28 Depth=1
	addi.w	$s1, $s3, -1
	bstrpick.d	$a2, $s1, 31, 0
	alsl.d	$a0, $a2, $s8, 3
	alsl.d	$a1, $a2, $s2, 2
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_40:                               # %while.body.i96
                                        #   in Loop: Header=BB5_41 Depth=2
	addi.d	$a2, $a3, -1
	addi.w	$s1, $s1, -1
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, -4
	blez	$a3, .LBB5_44
.LBB5_41:                               # %land.rhs.i
                                        #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	move	$a3, $a2
	bnez	$a4, .LBB5_40
# %bb.42:                               # %lor.rhs.i
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.d	$a2, $a0, 0
	bnez	$a2, .LBB5_40
# %bb.43:                               # %prev.exit
                                        #   in Loop: Header=BB5_28 Depth=1
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	blt	$s7, $a3, .LBB5_28
	b	.LBB5_45
.LBB5_44:
	move	$s1, $s7
.LBB5_45:                               # %while.end
	addi.w	$a1, $s3, 0
	ori	$a2, $zero, 1
	addi.w	$a0, $s3, -1
	blt	$a1, $a2, .LBB5_50
.LBB5_46:                               # %land.rhs.preheader.i103
	bstrpick.d	$a3, $a0, 31, 0
	alsl.d	$a1, $a3, $s8, 3
	addi.d	$a2, $a3, 1
	alsl.d	$a3, $a3, $s2, 2
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_47:                               # %while.body.i108
                                        #   in Loop: Header=BB5_48 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	blez	$a2, .LBB5_53
.LBB5_48:                               # %land.rhs.i104
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	bnez	$a4, .LBB5_47
# %bb.49:                               # %lor.rhs.i111
                                        #   in Loop: Header=BB5_48 Depth=1
	ld.d	$a4, $a1, 0
	bnez	$a4, .LBB5_47
.LBB5_50:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_52
.LBB5_51:
                                        # implicit-def: $r26
                                        # implicit-def: $r4
.LBB5_52:                               # %prev.exit115
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s2, $s3, $a0
	move	$s7, $s1
	addi.w	$s0, $s7, 1
	addi.w	$s1, $s2, 0
	st.w	$s4, $s8, 0
	bge	$s0, $s1, .LBB5_61
	b	.LBB5_55
.LBB5_53:
	move	$s2, $zero
	move	$s7, $s1
.LBB5_54:                               # %prev.exit115.thread166
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s0, $s7, 1
	addi.w	$s1, $s2, 0
	st.w	$s4, $s8, 0
	bge	$s0, $s1, .LBB5_61
.LBB5_55:                               # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$a0, $a0, %got_pc_lo12(instead)
	alsl.d	$a0, $s7, $a0, 3
	addi.d	$s3, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$fp, $a0, %pc_lo12(.L.str.22)
	move	$s4, $s0
	b	.LBB5_57
	.p2align	4, , 16
.LBB5_56:                               # %for.inc
                                        #   in Loop: Header=BB5_57 Depth=1
	addi.w	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	beq	$s1, $s4, .LBB5_59
.LBB5_57:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB5_56
# %bb.58:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_57 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_56
	b	.LBB5_61
.LBB5_59:                               # %for.body28.preheader
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$a0, $a0, %got_pc_lo12(fullbot)
	alsl.d	$a0, $s7, $a0, 2
	addi.d	$a0, $a0, 4
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_60:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	sltui	$a2, $a2, 1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$s2, $a2, $a3
	addi.d	$a1, $a1, 1
	addi.w	$a2, $s2, 0
	addi.d	$a0, $a0, 4
	addi.d	$s0, $s0, 1
	blt	$a1, $a2, .LBB5_60
.LBB5_61:                               # %cleanup
	addi.w	$a0, $s2, 0
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
.LBB5_62:
	move	$s1, $s3
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a1, $s3, 0
	ori	$a2, $zero, 1
	addi.w	$a0, $s3, -1
	bge	$a1, $a2, .LBB5_46
	b	.LBB5_50
.LBB5_63:
	move	$s2, $zero
	b	.LBB5_54
.Lfunc_end5:
	.size	left, .Lfunc_end5-left
                                        # -- End function
	.globl	lefdata                         # -- Begin function lefdata
	.p2align	5
	.type	lefdata,@function
lefdata:                                # @lefdata
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(nlin)
	ld.d	$a2, $a2, %got_pc_lo12(nlin)
	ld.w	$a2, $a2, 0
	move	$fp, $a1
	addi.w	$a1, $a2, -1
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s0, $a0, $a1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 115
	bne	$a0, $s2, .LBB6_4
# %bb.1:                                # %for.cond.preheader
	move	$s1, $fp
	.p2align	4, , 16
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	beq	$a0, $s2, .LBB6_2
# %bb.3:                                # %for.end
	addi.w	$a1, $s1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(thish)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_9
.LBB6_4:                                # %if.end9
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	slli.d	$a1, $s0, 2
	ldx.w	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(lefline)
	ld.d	$a1, $a1, %got_pc_lo12(lefline)
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	bgtz	$a0, .LBB6_10
# %bb.5:                                # %if.end16
	bnez	$fp, .LBB6_7
# %bb.6:                                # %if.end16
	pcalau12i	$a0, %got_pc_hi20(dboxflg)
	ld.d	$a0, $a0, %got_pc_lo12(dboxflg)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 2
	bnez	$a1, .LBB6_10
.LBB6_7:                                # %if.end19
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB6_10
# %bb.8:                                # %if.end22
	pcalau12i	$a0, %got_pc_hi20(boxflg)
	ld.d	$a0, $a0, %got_pc_lo12(boxflg)
	ld.w	$a0, $a0, 0
	sltui	$a1, $fp, 1
	sltu	$a0, $zero, $a0
	and	$a0, $a1, $a0
	b	.LBB6_10
.LBB6_9:
	move	$a0, $zero
.LBB6_10:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	lefdata, .Lfunc_end6-lefdata
                                        # -- End function
	.globl	next                            # -- Begin function next
	.p2align	5
	.type	next,@function
next:                                   # @next
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(nlin)
	ld.d	$a1, $a1, %got_pc_lo12(nlin)
	ld.w	$a1, $a1, 0
	addi.w	$a4, $a0, 1
	bge	$a4, $a1, .LBB7_5
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$a2, $a0, %got_pc_lo12(fullbot)
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$a3, $a0, %got_pc_lo12(instead)
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	bge	$a4, $a1, .LBB7_5
.LBB7_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a2, $a4
	addi.w	$a4, $a0, 1
	bnez	$a5, .LBB7_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	slli.d	$a5, $a0, 3
	ldx.d	$a5, $a3, $a5
	bnez	$a5, .LBB7_2
.LBB7_5:                                # %while.end
	ret
.Lfunc_end7:
	.size	next, .Lfunc_end7-next
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".nr %d \\n(.v\n.vs \\n(.vu-\\n(.sp\n"
	.size	.L.str, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".vs \\n(%du\n"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\\v'-.5m'"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\\v'%dp'"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"1p"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"-1p"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\\h'%s'"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"+1p"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\\h'|\\n(%du'"
	.size	.L.str.10, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\\s\\n(%d"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\\v'-\\n(%dp/6u'"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\\l'|\\n(%du'"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\\(ul"
	.size	.L.str.14, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\\(ru"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\\l'|\\n(TWu%s%s'"
	.size	.L.str.17, 16

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\\l'(|\\n(%du+|\\n(%du)/2u%s%s'"
	.size	.L.str.18, 29

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\\v'\\n(%dp/6u'"
	.size	.L.str.19, 14

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\\s0"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\\v'+.5m'"
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	".TH"
	.size	.L.str.22, 4

	.type	.Lswitch.table.drawline,@object # @switch.table.drawline
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.drawline:
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.6
	.size	.Lswitch.table.drawline, 24

	.type	.Lswitch.table.drawline.1,@object # @switch.table.drawline.1
	.p2align	3, 0x0
.Lswitch.table.drawline.1:
	.dword	.L.str.7
	.dword	.L.str.7
	.dword	.L.str.6
	.size	.Lswitch.table.drawline.1, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
