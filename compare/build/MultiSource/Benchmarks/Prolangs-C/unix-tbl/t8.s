	.file	"t8.c"
	.text
	.globl	putline                         # -- Begin function putline
	.p2align	5
	.type	putline,@function
putline:                                # @putline
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(watchout)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(watchout)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_5
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	pcalau12i	$a1, %got_pc_hi20(dboxflg)
	ld.d	$a1, $a1, %got_pc_lo12(dboxflg)
	ld.w	$a2, $a0, 0
	ld.w	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(once)
	st.w	$zero, $a1, %pc_lo12(once)
	bnez	$a2, .LBB0_4
# %bb.2:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(boxflg)
	ld.d	$a1, $a1, %got_pc_lo12(boxflg)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_4
# %bb.3:                                # %if.then
	beqz	$a0, .LBB0_5
.LBB0_4:                                # %if.then5
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 45
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 61
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(fullwide)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %if.end7
	pcalau12i	$a0, %got_pc_hi20(instead)
	ld.d	$s4, $a0, %got_pc_lo12(instead)
	slli.d	$a0, $fp, 3
	ldx.d	$a0, $s4, $a0
	st.d	$fp, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a1, $fp, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
                                        # implicit-def: $r24
	beqz	$a0, .LBB0_10
.LBB0_6:                                # %if.end51
	pcalau12i	$a0, %got_pc_hi20(linestop)
	ld.d	$a0, $a0, %got_pc_lo12(linestop)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $s4, 3
	beqz	$a1, .LBB0_8
# %bb.7:                                # %if.then55
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	addi.w	$a2, $a1, 96
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %if.end59
	move	$a0, $fp
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	beqz	$a1, .LBB0_24
# %bb.9:                                # %if.then64
	move	$a0, $a1
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB0_10:                               # %land.lhs.true9
	pcalau12i	$a0, %got_pc_hi20(fullbot)
	ld.d	$a0, $a0, %got_pc_lo12(fullbot)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
                                        # implicit-def: $r24
	bnez	$a0, .LBB0_6
# %bb.11:                               # %land.lhs.true9
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s5, $a0, %got_pc_lo12(ncol)
	ld.w	$a0, $s5, 0
	ori	$a1, $zero, 1
                                        # implicit-def: $r24
	blt	$a0, $a1, .LBB0_6
# %bb.12:                               # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$s7, $a0, %got_pc_lo12(table)
	move	$s8, $zero
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s6, $a0, $s7, 3
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$s0, $a0, %got_pc_lo12(nlin)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
                                        # implicit-def: $r24
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               # %if.end43
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.w	$a0, $s3, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_23
	.p2align	4, , 16
.LBB0_14:                               # %for.inc49
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$s8, $s8, 1
	bge	$s8, $a0, .LBB0_6
.LBB0_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	ld.d	$a0, $s6, 0
	slli.d	$fp, $s8, 4
	ldx.d	$s3, $a0, $fp
	beqz	$s3, .LBB0_14
# %bb.16:                               # %if.end21
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.17:                               # %for.cond24.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$s1, $a1
	bge	$a1, $a0, .LBB0_21
# %bb.18:                               # %for.body26.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_19:                               # %for.body26
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s7, $a0
	ldx.d	$s3, $a0, $fp
	move	$a0, $s3
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_21
# %bb.20:                               # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(next)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$s1, $a0
	blt	$a0, $a1, .LBB0_19
.LBB0_21:                               # %for.end
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.w	$a0, $s3, -1
	ori	$a1, $zero, 126
	bltu	$a1, $a0, .LBB0_14
# %bb.22:                               # %if.then40
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_14
.LBB0_23:                               # %if.end47
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(watchout)
	b	.LBB0_14
.LBB0_24:                               # %if.end68
	pcalau12i	$a1, %got_pc_hi20(fullbot)
	ld.d	$a2, $a1, %got_pc_lo12(fullbot)
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	ori	$a3, $zero, 61
	beq	$a1, $a3, .LBB0_34
# %bb.25:                               # %if.end68
	ori	$a3, $zero, 45
	beq	$a1, $a3, .LBB0_34
# %bb.26:                               # %if.end68
	bnez	$a1, .LBB0_158
# %bb.27:                               # %for.cond76.preheader
	pcalau12i	$a1, %got_pc_hi20(ncol)
	ld.d	$s8, $a1, %got_pc_lo12(ncol)
	ld.w	$a1, $s8, 0
	ori	$fp, $zero, 1
	addi.w	$a3, $zero, -1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 192                   # 8-byte Folded Spill
	blt	$a1, $fp, .LBB0_52
# %bb.28:                               # %for.body78.lr.ph
	pcalau12i	$a3, %got_pc_hi20(table)
	ld.d	$a4, $a3, %got_pc_lo12(table)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s3, $a3, $a2, 2
	alsl.d	$s6, $a3, $a4, 3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	move	$s0, $zero
	move	$s4, $zero
	move	$fp, $zero
	bge	$a2, $a0, .LBB0_35
# %bb.29:                               # %for.body78.us.preheader
	alsl.d	$s5, $a0, $a4, 3
	ori	$s7, $zero, 1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %if.end96.us
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a2, $s7, $a0
	ld.w	$a1, $s8, 0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a2
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 16
	bge	$s4, $a1, .LBB0_40
.LBB0_31:                               # %for.body78.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB0_30
# %bb.32:                               # %land.lhs.true82.us
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_30
# %bb.33:                               # %if.then86.us
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	b	.LBB0_30
.LBB0_34:                               # %sw.bb
	move	$a0, $fp
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	pcaddu18i	$t8, %call36(fullwide)
	jr	$t8
.LBB0_35:                               # %for.body78.preheader
	ori	$s5, $zero, 1
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %if.end96
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 16
	bge	$s4, $a1, .LBB0_40
.LBB0_37:                               # %for.body78
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB0_36
# %bb.38:                               # %land.lhs.true82
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.w	$a0, $s3, 0
	bnez	$a0, .LBB0_36
# %bb.39:                               # %if.then86
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ld.w	$a1, $s8, 0
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a2
	b	.LBB0_36
.LBB0_40:                               # %for.end111
	beqz	$fp, .LBB0_42
# %bb.41:                               # %if.then113
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$fp, $a0, %got_pc_lo12(tabout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
.LBB0_42:                               # %if.end116
	ori	$fp, $zero, 1
	blt	$a1, $fp, .LBB0_52
# %bb.43:                               # %for.body119.lr.ph
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	move	$fp, $zero
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s0, $a1, $a0, 2
	ori	$s2, $zero, 97
	pcalau12i	$a0, %got_pc_hi20(font)
	ld.d	$s3, $a0, %got_pc_lo12(font)
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s4, $a0, %got_pc_lo12(tabout)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB0_46
.LBB0_44:                               # %if.else
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_45:                               # %for.inc154
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s8, $s8, 1
	addi.w	$s2, $s2, 1
	addi.d	$fp, $fp, 16
	addi.d	$s3, $s3, 2
	bge	$s8, $a0, .LBB0_51
.LBB0_46:                               # %for.body119
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ldx.d	$s5, $a0, $fp
	beqz	$s5, .LBB0_45
# %bb.47:                               # %if.end127
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.w	$a0, $s0, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.w	$a0, $s3, $a0
	or	$s7, $s7, $a0
	addi.w	$a0, $s5, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_45
# %bb.48:                               # %if.end137
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_44
# %bb.49:                               # %land.lhs.true140
                                        #   in Loop: Header=BB0_46 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_44
# %bb.50:                               # %if.then148
                                        #   in Loop: Header=BB0_46 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_45
.LBB0_51:                               # %for.end156.loopexit
	sltui	$fp, $s7, 1
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
.LBB0_52:                               # %for.end156
	pcalau12i	$a0, %got_pc_hi20(allflg)
	ld.d	$a0, $a0, %got_pc_lo12(allflg)
	ld.w	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(once)
	beqz	$a0, .LBB0_55
# %bb.53:                               # %for.end156
	ld.w	$a0, $s0, %pc_lo12(once)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_55
# %bb.54:                               # %if.then160
	ori	$a1, $zero, 45
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fullwide)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %if.end161
	ori	$a0, $zero, 1
	st.w	$a0, $s0, %pc_lo12(once)
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(runtabs)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(allh)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pr1403)
	ld.d	$s2, $a1, %got_pc_lo12(pr1403)
	beqz	$a0, .LBB0_58
# %bb.56:                               # %if.end161
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB0_58
# %bb.57:                               # %if.then166
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 36
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 18
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_58:                               # %if.end169
	bnez	$fp, .LBB0_60
# %bb.59:                               # %if.then171
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_60:                               # %if.end173
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s7, $a0, %got_pc_lo12(tabout)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	blt	$a0, $fp, .LBB0_144
# %bb.61:                               # %for.body178.lr.ph
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$s2, $a0, %got_pc_lo12(table)
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a1, $a0, %got_pc_lo12(stynum)
	move	$fp, $zero
	move	$a0, $s6
	move	$s6, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	addi.w	$a2, $s0, 1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a2, $a0, $s2, 3
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$a0, $a0, %got_pc_lo12(nlin)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(rightl)
	ld.d	$a0, $a0, %got_pc_lo12(rightl)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(font)
	ld.d	$a0, $a0, %got_pc_lo12(font)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(csize)
	ld.d	$a0, $a0, %got_pc_lo12(csize)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_65
.LBB0_62:                               # %if.then343
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(ifline)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s3
.LBB0_63:                               # %for.inc478
                                        #   in Loop: Header=BB0_65 Depth=1
	pcaddu18i	$ra, %call36(makeline)
	jirl	$ra, $ra, 0
.LBB0_64:                               # %for.inc478
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 0
	addi.d	$s6, $s6, 1
	bge	$fp, $a0, .LBB0_143
.LBB0_65:                               # %for.body178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(watchout)
	move	$s3, $fp
	bnez	$a0, .LBB0_69
# %bb.66:                               # %for.body178
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_69
# %bb.67:                               # %land.lhs.true183
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a2, $sp, 212
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(left)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_69
# %bb.68:                               # %if.then186
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(tohcol)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 212
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(drawvert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB0_69:                               # %if.end188
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$fp, $s3, 1
	beqz	$a0, .LBB0_71
# %bb.70:                               # %land.lhs.true190
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.wu	$a0, $s8, 0
	beq	$fp, $a0, .LBB0_64
.LBB0_71:                               # %if.end194
                                        #   in Loop: Header=BB0_65 Depth=1
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	slli.d	$s7, $s3, 4
	move	$s5, $s0
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	bltz	$a0, .LBB0_75
# %bb.72:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	move	$s5, $s0
	beqz	$a0, .LBB0_75
	.p2align	4, , 16
.LBB0_73:                               # %for.body205
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	bge	$fp, $a0, .LBB0_75
# %bb.74:                               # %land.rhs
                                        #   in Loop: Header=BB0_73 Depth=2
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_73
	.p2align	4, , 16
.LBB0_75:                               # %for.end208
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	slli.d	$s4, $s3, 2
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB0_80
# %bb.76:                               # %if.then211
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a1, $a0, -97
	sltui	$a2, $a1, 1
	addi.w	$a1, $s6, 60
	addi.w	$a3, $s3, 40
	masknez	$a4, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a4
	ori	$a4, $zero, 110
	bne	$a0, $a4, .LBB0_79
# %bb.77:                               # %land.lhs.true218
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $s3, $a0, 4
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_79
# %bb.78:                               # %land.lhs.true224
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(lused)
	ld.d	$a0, $a0, %got_pc_lo12(lused)
	ldx.w	$a0, $a0, $s4
	sltui	$a0, $a0, 1
	masknez	$a2, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a2, $a0, $a2
.LBB0_79:                               # %if.end230
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_80:                               # %if.end232
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s0, $a2, $a1
	ldx.d	$a0, $a0, $s7
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $s0, 6
	alsl.d	$a0, $s0, $a0, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$fp, $a1, $a0
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	ldx.bu	$s4, $fp, $s4
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, -45
	ori	$a2, $zero, 69
	bltu	$a2, $a1, .LBB0_119
# %bb.81:                               # %if.end232
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a5, $zero
	move	$s5, $zero
	slli.d	$a2, $s0, 5
	alsl.d	$a2, $s0, $a2, 3
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a1, $a3, $a1
	alsl.d	$s8, $s3, $a2, 1
	alsl.d	$a2, $s3, $fp, 2
	sltui	$a4, $s4, 1
	add.d	$a1, $a3, $a1
	masknez	$a3, $a2, $a4
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	jr	$a1
.LBB0_82:                               # %sw.bb308
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(real)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_141
.LBB0_83:                               # %if.end320
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	b	.LBB0_63
.LBB0_84:                               # %sw.bb257
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	alsl.d	$a1, $s3, $a1, 4
	ld.d	$s5, $a1, 8
	beqz	$s5, .LBB0_95
# %bb.85:                               # %if.then264
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a1, %got_pc_hi20(lused)
	ld.d	$a1, $a1, %got_pc_lo12(lused)
	ldx.w	$a1, $a1, $s4
	beqz	$a1, .LBB0_96
# %bb.86:                               # %if.then268
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$fp, $a3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bltz	$a0, .LBB0_92
# %bb.87:                               # %if.then272
                                        #   in Loop: Header=BB0_65 Depth=1
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s2, $a0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_92
# %bb.88:                               # %if.then272
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_92
# %bb.89:                               # %if.then283
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	addi.w	$s4, $s3, 97
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_91
# %bb.90:                               # %if.then287
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %if.end290
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a1, $s0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 39
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB0_92:                               # %if.end295
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(F1)
	ld.d	$s0, $a0, %got_pc_lo12(F1)
	pcalau12i	$a0, %got_pc_hi20(F2)
	ld.d	$a1, $a0, %got_pc_lo12(F2)
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	ld.w	$a2, $s0, 0
	ld.w	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(puttext)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a3, $fp
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $s3, $a0, 4
	ld.d	$a1, $a0, 8
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_97
.LBB0_93:                               # %sw.bb307
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a5, $zero
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(used)
	ld.d	$a0, $a0, %got_pc_lo12(used)
	ldx.w	$a0, $a0, $s4
	bnez	$a0, .LBB0_102
	b	.LBB0_108
.LBB0_94:                               # %sw.bb306
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$s5, $zero
	ori	$a5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(used)
	ld.d	$a0, $a0, %got_pc_lo12(used)
	ldx.w	$a0, $a0, $s4
	bnez	$a0, .LBB0_102
	b	.LBB0_108
.LBB0_95:                               #   in Loop: Header=BB0_65 Depth=1
	ori	$a1, $zero, 1
	sltu	$s5, $zero, $s5
	ori	$a2, $zero, 110
	bne	$a0, $a2, .LBB0_98
	b	.LBB0_99
.LBB0_96:                               #   in Loop: Header=BB0_65 Depth=1
	move	$a1, $s5
.LBB0_97:                               # %if.end298
                                        #   in Loop: Header=BB0_65 Depth=1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	sltui	$a1, $a1, 1
	sltu	$s5, $zero, $s5
	ori	$a2, $zero, 110
	beq	$a0, $a2, .LBB0_99
.LBB0_98:                               # %sw.epilog321
                                        #   in Loop: Header=BB0_65 Depth=1
	ori	$a2, $zero, 97
	bne	$a0, $a2, .LBB0_107
.LBB0_99:                               # %land.lhs.true327
                                        #   in Loop: Header=BB0_65 Depth=1
	beqz	$a1, .LBB0_105
# %bb.100:                              #   in Loop: Header=BB0_65 Depth=1
	move	$a5, $zero
	.p2align	4, , 16
.LBB0_101:                              # %cond.false
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(used)
	ld.d	$a0, $a0, %got_pc_lo12(used)
	ldx.w	$a0, $a0, $s4
	beqz	$a0, .LBB0_108
.LBB0_102:                              # %if.then340
                                        #   in Loop: Header=BB0_65 Depth=1
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s8
	pcaddu18i	$ra, %call36(ifline)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_62
# %bb.103:                              # %if.end345
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(filler)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_121
# %bb.104:                              # %if.then348
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a2, $s8, 2
	addi.w	$a1, $s3, 80
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_64
.LBB0_105:                              # %cond.true
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(rused)
	ld.d	$a0, $a0, %got_pc_lo12(rused)
	ldx.w	$a0, $a0, $s4
	beqz	$a0, .LBB0_108
# %bb.106:                              #   in Loop: Header=BB0_65 Depth=1
	move	$a5, $zero
	b	.LBB0_102
.LBB0_107:                              #   in Loop: Header=BB0_65 Depth=1
	move	$a5, $zero
	pcalau12i	$a0, %got_pc_hi20(used)
	ld.d	$a0, $a0, %got_pc_lo12(used)
	ldx.w	$a0, $a0, $s4
	bnez	$a0, .LBB0_102
.LBB0_108:                              #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s0, $s1, 0
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	bltz	$s0, .LBB0_135
.LBB0_109:                              # %if.then407
                                        #   in Loop: Header=BB0_65 Depth=1
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s2, $a0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_120
# %bb.110:                              # %if.then415
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$s4, $s3, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$fp, $a1, 0
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB0_115
# %bb.111:                              # %land.lhs.true419
                                        #   in Loop: Header=BB0_65 Depth=1
	alsl.d	$a0, $s0, $s2, 3
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 4
	ldx.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_115
# %bb.112:                              # %land.lhs.true428
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %pc_hi20(topat)
	addi.d	$a1, $a0, %pc_lo12(topat)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a0
	slli.d	$a0, $s4, 2
	ldx.w	$a1, $a1, $a0
	bne	$a2, $a1, .LBB0_115
# %bb.113:                              # %land.lhs.true436
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(ctop)
	ld.d	$a2, $a2, %got_pc_lo12(ctop)
	slli.d	$a3, $a1, 6
	alsl.d	$a1, $a1, $a3, 4
	add.d	$a1, $a2, $a1
	ldx.w	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	bne	$fp, $a0, .LBB0_115
# %bb.114:                              # %land.rhs448
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a2, $sp, 212
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(left)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_142
.LBB0_115:                              # %if.then456
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $s7, 0
	addi.w	$s4, $s3, 97
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_117
# %bb.116:                              # %if.then460
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_117:                              # %if.end463
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a1, $s7, 0
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 1
	ori	$a0, $zero, 39
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bge	$fp, $a0, .LBB0_136
.LBB0_118:                              #   in Loop: Header=BB0_65 Depth=1
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
.LBB0_119:                              # %for.inc478
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_140
.LBB0_120:                              #   in Loop: Header=BB0_65 Depth=1
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	b	.LBB0_135
.LBB0_121:                              # %if.end351
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(ctop)
	ld.d	$a2, $a2, %got_pc_lo12(ctop)
	slli.d	$a3, $a1, 6
	alsl.d	$a1, $a1, $a3, 4
	add.d	$a1, $a2, $a1
	ldx.w	$s8, $a1, $s4
	move	$s1, $a0
	bltz	$a0, .LBB0_127
# %bb.122:                              # %if.then363
                                        #   in Loop: Header=BB0_65 Depth=1
	slli.d	$a0, $s1, 3
	ldx.d	$a0, $s2, $a0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_128
# %bb.123:                              # %if.then363
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_128
# %bb.124:                              # %if.then374
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 0
	addi.w	$s0, $s3, 97
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB0_126
# %bb.125:                              # %if.then378
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_126:                              # %if.end381
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 39
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB0_128:                              # %if.end386
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(F1)
	ld.d	$fp, $a0, %got_pc_lo12(F1)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB0_130
# %bb.129:                              # %if.then390
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(F2)
	ld.d	$a0, $a0, %got_pc_lo12(F2)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB0_130:                              # %if.end392
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	bnez	$a0, .LBB0_132
# %bb.131:                              # %if.else396
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $s0
	move	$a1, $s4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puttext)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB0_132:                              # %if.end397
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_134
# %bb.133:                              # %if.then400
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(F2)
	ld.d	$a0, $a0, %got_pc_lo12(F2)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB0_134:                              # %if.end402
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.w	$a0, $fp, 0
	sltui	$a2, $s8, 1
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s1, 0
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	bgez	$s0, .LBB0_109
.LBB0_135:                              #   in Loop: Header=BB0_65 Depth=1
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	blt	$fp, $a0, .LBB0_118
.LBB0_136:                              # %if.end469
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.w	$a0, $s8, 0
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB0_138
# %bb.137:                              # %if.then475
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	b	.LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_65 Depth=1
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
.LBB0_139:                              # %for.inc478
                                        #   in Loop: Header=BB0_65 Depth=1
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
.LBB0_140:                              # %for.inc478
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_64
.LBB0_141:                              # %if.then316
                                        #   in Loop: Header=BB0_65 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	pcalau12i	$a1, %got_pc_hi20(ifile)
	pcalau12i	$a2, %got_pc_hi20(iline)
	ld.d	$a2, $a2, %got_pc_lo12(iline)
	ld.d	$a1, $a1, %got_pc_lo12(ifile)
	ld.d	$a0, $a0, 0
	ld.w	$a3, $a2, 0
	ld.d	$a2, $a1, 0
	addi.w	$a3, $a3, -1
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_83
.LBB0_142:                              #   in Loop: Header=BB0_65 Depth=1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bge	$fp, $a0, .LBB0_136
	b	.LBB0_118
.LBB0_143:                              # %for.end480.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sltu	$fp, $zero, $a0
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	b	.LBB0_145
.LBB0_144:
	move	$fp, $zero
.LBB0_145:                              # %for.end480
	ld.d	$a1, $s7, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(allh)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_148
# %bb.146:                              # %for.end480
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB0_148
# %bb.147:                              # %if.then486
	ld.d	$a0, $s7, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 36
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_148:                              # %if.end488
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(watchout)
	beqz	$a0, .LBB0_150
# %bb.149:                              # %if.then490
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(funnies)
	jirl	$ra, $ra, 0
.LBB0_150:                              # %if.end491
	ld.w	$a0, $s8, 0
	slt	$a0, $zero, $a0
	and	$a0, $fp, $a0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_158
# %bb.151:                              # %for.body497.lr.ph
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$fp, $a0, %got_pc_lo12(table)
	move	$s2, $zero
	move	$s3, $zero
	alsl.d	$s4, $s6, $fp, 3
	ori	$s0, $zero, 97
	pcalau12i	$a0, %pc_hi20(topat)
	addi.d	$s5, $a0, %pc_lo12(topat)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s1, $a0, %pc_lo12(.L.str.23)
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_152:                              # %if.then520
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.d	$a0, $s7, 0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$s6, $s5, 0
.LBB0_153:                              # %for.inc526
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$s3, $s3, 1
	addi.w	$s0, $s0, 1
	addi.d	$s2, $s2, 16
	addi.d	$s5, $s5, 4
	bge	$s3, $a0, .LBB0_158
.LBB0_154:                              # %for.body497
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_153
# %bb.155:                              # %land.lhs.true505
                                        #   in Loop: Header=BB0_154 Depth=1
	beqz	$s6, .LBB0_152
# %bb.156:                              # %lor.lhs.false508
                                        #   in Loop: Header=BB0_154 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_152
# %bb.157:                              # %lor.lhs.false512
                                        #   in Loop: Header=BB0_154 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_153
	b	.LBB0_152
.LBB0_158:                              # %cleanup
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end0:
	.size	putline, .Lfunc_end0-putline
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_82-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_82-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_84-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_101-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_93-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_84-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_94-.LJTI0_0
                                        # -- End function
	.text
	.globl	puttext                         # -- Begin function puttext
	.p2align	5
	.type	puttext,@function
puttext:                                # @puttext
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_11
# %bb.1:                                # %if.then
	beqz	$s0, .LBB1_4
# %bb.2:                                # %land.lhs.true.i
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.bu	$a1, $s0, 1
	ld.d	$a0, $a0, 0
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$a2, $a2, %pc_lo12(.L.str.45)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.46)
	addi.d	$a3, $a3, %pc_lo12(.L.str.46)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %putfont.exit
	beqz	$fp, .LBB1_7
# %bb.5:                                # %land.lhs.true.i5
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_7
# %bb.6:                                # %if.then.i7
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %putsize.exit
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s2, $a0, %got_pc_lo12(tabout)
	ld.d	$a1, $s2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_9
# %bb.8:                                # %if.then3
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_9:                                # %if.end
	beqz	$fp, .LBB1_11
# %bb.10:                               # %if.then7
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB1_11:                               # %if.end9
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	puttext, .Lfunc_end1-puttext
                                        # -- End function
	.globl	funnies                         # -- Begin function funnies
	.p2align	5
	.type	funnies,@function
funnies:                                # @funnies
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
	pcalau12i	$a2, %got_pc_hi20(tabout)
	ld.d	$s4, $a2, %got_pc_lo12(tabout)
	ld.d	$a3, $s4, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s8, $a0, %got_pc_lo12(ncol)
	ld.w	$a0, $s8, 0
	blt	$a0, $fp, .LBB2_26
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(table)
	ld.d	$a2, $a0, %got_pc_lo12(table)
	pcalau12i	$a0, %got_pc_hi20(stynum)
	ld.d	$a0, $a0, %got_pc_lo12(stynum)
	move	$s1, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$s2, $a1, $a2, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s7, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(font)
	ld.d	$a0, $a0, %got_pc_lo12(font)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ctop)
	ld.d	$a0, $a0, %got_pc_lo12(ctop)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
                                        # implicit-def: $r28
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %if.end75
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 32
	ori	$a3, $zero, 31
	ori	$a4, $zero, 31
	ori	$a5, $zero, 32
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB2_3:                                # %for.inc78
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB2_26
.LBB2_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	ld.d	$a0, $s2, 0
	slli.d	$s6, $s1, 4
	ldx.d	$a0, $a0, $s6
	addi.w	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB2_4 Depth=1
	beqz	$s0, .LBB2_3
# %bb.6:                                # %if.end7
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$fp, $s8
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 37
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_10
# %bb.7:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_8:                                # %land.rhs
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s2, 0
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(ctype)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s8, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB2_10
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blt	$s7, $a0, .LBB2_8
.LBB2_10:                               # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $s5, 0
	addi.d	$a0, $a0, -97
	ori	$a1, $zero, 17
	bltu	$a1, $a0, .LBB2_17
# %bb.11:                               # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_12:                               # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s2, $s4, 0
	addi.w	$a1, $s1, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ctspan)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.w	$a3, $a0, 79
	addi.w	$a2, $s1, 40
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s2
	move	$a4, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_13:                               # %sw.bb26
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	addi.w	$a2, $s1, 60
	b	.LBB2_15
.LBB2_14:                               # %sw.bb23
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	addi.w	$a2, $s1, 40
.LBB2_15:                               # %sw.epilog
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_16:                               # %sw.bb29
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	addi.w	$a2, $s1, 80
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_17:                               # %sw.epilog
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 37
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s1, 1
	ldx.bu	$a1, $a0, $a1
	alsl.d	$s2, $s1, $a0, 1
	beqz	$a1, .LBB2_19
# %bb.18:                               # %if.then.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a1, $s2, 1
	ld.d	$a0, $s4, 0
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$a2, $a2, %pc_lo12(.L.str.45)
	masknez	$a2, $a2, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_19:                               # %putfont.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s3
	pcaddu18i	$ra, %call36(prev)
	jirl	$ra, $ra, 0
	move	$s8, $fp
	ori	$fp, $zero, 1
	blt	$s3, $fp, .LBB2_24
# %bb.20:                               # %putfont.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	bltz	$a0, .LBB2_24
# %bb.21:                               # %land.lhs.true44
                                        #   in Loop: Header=BB2_4 Depth=1
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.d	$a0, $a0, $s6
	pcaddu18i	$ra, %call36(vspen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_24
# %bb.22:                               # %if.then52
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	addi.w	$s3, $s1, 97
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s1, 2
	ldx.w	$a0, $a0, $a1
	bnez	$a0, .LBB2_24
# %bb.23:                               # %if.then63
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 38
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 38
	ori	$a3, $zero, 38
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_24:                               # %if.end68
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 37
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.b	$a0, $s2, 0
	blt	$a0, $fp, .LBB2_2
# %bb.25:                               # %if.then74
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a2, $a1, %pc_lo12(.L.str.40)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_26:                               # %for.end79
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	blt	$a0, $fp, .LBB2_37
# %bb.27:                               # %for.body84.lr.ph
	pcalau12i	$a0, %got_pc_hi20(nlin)
	ld.d	$s3, $a0, %got_pc_lo12(nlin)
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s5, $a1, 1
	bge	$s5, $a0, .LBB2_37
# %bb.28:                               # %for.body84.preheader
	move	$s0, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$s1, $a0, %pc_lo12(.L.str.44)
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_29:                               # %if.end98
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tohcol)
	jirl	$ra, $ra, 0
	ld.w	$a3, $sp, 148
	addi.w	$s6, $s6, 2
	move	$a0, $s2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(drawvert)
	jirl	$ra, $ra, 0
.LBB2_30:                               # %for.inc101
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.w	$a0, $s8, 0
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB2_35
.LBB2_31:                               # %for.body84
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	bge	$s5, $a0, .LBB2_30
# %bb.32:                               # %land.lhs.true88
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a2, $sp, 148
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(left)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_30
# %bb.33:                               # %if.then92
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$s2, $a0
	bnez	$s6, .LBB2_29
# %bb.34:                               # %if.then96
                                        #   in Loop: Header=BB2_31 Depth=1
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_29
.LBB2_35:                               # %for.end103
	beqz	$s6, .LBB2_37
# %bb.36:                               # %if.then105
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB2_37:                               # %if.end107
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
.Lfunc_end2:
	.size	funnies, .Lfunc_end2-funnies
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_13-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_14-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_12-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_17-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
                                        # -- End function
	.text
	.globl	putfont                         # -- Begin function putfont
	.p2align	5
	.type	putfont,@function
putfont:                                # @putfont
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_3
# %bb.1:                                # %land.lhs.true
	move	$a2, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.bu	$a1, $a2, 1
	ld.d	$a0, $a0, 0
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(.L.str.45)
	addi.d	$a3, $a3, %pc_lo12(.L.str.45)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %pc_hi20(.L.str.46)
	addi.d	$a4, $a4, %pc_lo12(.L.str.46)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB3_3:                                # %if.end
	ret
.Lfunc_end3:
	.size	putfont, .Lfunc_end3-putfont
                                        # -- End function
	.globl	putsize                         # -- Begin function putsize
	.p2align	5
	.type	putsize,@function
putsize:                                # @putsize
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_3
# %bb.1:                                # %land.lhs.true
	move	$a2, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB4_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB4_3:                                # %if.end
	ret
.Lfunc_end4:
	.size	putsize, .Lfunc_end4-putsize
                                        # -- End function
	.type	watchout,@object                # @watchout
	.bss
	.globl	watchout
	.p2align	2, 0x0
watchout:
	.word	0                               # 0x0
	.size	watchout, 4

	.type	once,@object                    # @once
	.globl	once
	.p2align	2, 0x0
once:
	.word	0                               # 0x0
	.size	once, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".ne \\n(%c|u+\\n(.Vu\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".mk #%c\n"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".nr #^ \\n(\\*(#du\n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".nr #- \\n(#^\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	".if (\\n(%c|+\\n(^%c-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(^%c-\\n(#--1v)\n"
	.size	.L.str.4, 63

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	".if (\\n(%c|+\\n(#^-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(#^-\\n(#--1v)\n"
	.size	.L.str.5, 61

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	".nr %d \\n(.v\n"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	".vs \\n(.vu-\\n(.sp\n"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	".nr %2d \\n(.f\n"
	.size	.L.str.8, 15

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	".nr 35 1m\n"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\\&"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\\h'|\\n(%du'"
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\\v'-(\\n(\\*(#du-\\n(^%cu"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"-((\\n(#-u-\\n(^%cu)/2u)"
	.size	.L.str.13, 23

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%c%c"
	.size	.L.str.15, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%s: line %d: Data ignored on table line %d\n"
	.size	.L.str.17, 44

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\\l'|\\n(%du\\&%s'"
	.size	.L.str.18, 16

	.type	topat,@object                   # @topat
	.bss
	.globl	topat
	.p2align	2, 0x0
topat:
	.space	80
	.size	topat, 80

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"\\v'(\\n(\\*(#du-\\n(^%cu"
	.size	.L.str.19, 22

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n.sp-1\n\\&"
	.size	.L.str.20, 10

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	".vs \\n(%du\n"
	.size	.L.str.22, 12

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	".nr ^%c \\n(#^u\n"
	.size	.L.str.23, 16

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\\f\\n(%2d"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"0"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	".mk ##\n"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".nr %d \\n(##\n"
	.size	.L.str.28, 14

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	".sp |\\n(##u-1v\n"
	.size	.L.str.29, 16

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	".nr %d "
	.size	.L.str.30, 8

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"(\\n(%du+\\n(%du-\\n(%c-u)/2u\n"
	.size	.L.str.31, 28

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\\n(%du\n"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\\n(%du-\\n(%c-u\n"
	.size	.L.str.33, 16

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".in +\\n(%du\n"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".sp |\\n(^%cu\n"
	.size	.L.str.35, 14

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	".nr %d \\n(#-u-\\n(^%c-\\n(%c|+1v\n"
	.size	.L.str.36, 32

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	".if \\n(%d>0 .sp \\n(%du/2u\n"
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	".%c+\n"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	".in -\\n(%du\n"
	.size	.L.str.39, 13

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"P"
	.size	.L.str.40, 2

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	".mk %d\n"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	".if \\n(%d>\\n(%d .nr %d \\n(%d\n"
	.size	.L.str.42, 30

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	".sp |\\n(%du\n"
	.size	.L.str.43, 13

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	".sp -1\n"
	.size	.L.str.44, 8

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"\\f(%.2s"
	.size	.L.str.45, 8

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"\\f%.2s"
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\\s%s"
	.size	.L.str.47, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym font
	.addrsig_sym csize
