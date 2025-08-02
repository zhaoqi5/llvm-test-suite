	.file	"alias.c"
	.text
	.globl	alias                           # -- Begin function alias
	.p2align	5
	.type	alias,@function
alias:                                  # @alias
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
	addi.d	$sp, $sp, -832
	move	$s8, $a0
	ld.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	st.d	$zero, $sp, 1712
	blt	$fp, $a0, .LBB0_7
# %bb.1:                                # %for.body.preheader
	move	$s0, $a1
	move	$s6, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.else.i
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$s6, $s1, 8
	st.d	$zero, $s1, 16
	move	$s6, $s1
.LBB0_3:                                # %add_horz.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	beqz	$fp, .LBB0_8
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s0, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_3
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	bnez	$a0, .LBB0_2
# %bb.6:                                # %if.then6.i
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_7:
	move	$s6, $zero
.LBB0_8:                                # %while.cond.preheader
	pcalau12i	$s5, %pc_hi20(nargc)
	ld.w	$a1, $s5, %pc_lo12(nargc)
	ori	$a0, $zero, 499
	st.d	$s6, $sp, 1736
	blt	$a0, $a1, .LBB0_83
# %bb.9:                                # %land.rhs.lr.ph
	beqz	$s6, .LBB0_83
# %bb.10:                               # %while.body.preheader
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(nargv)
	addi.d	$a0, $a0, %pc_lo12(nargv)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s1, $zero, 500
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_15
.LBB0_11:                               # %for.end87.thread
                                        #   in Loop: Header=BB0_15 Depth=1
	st.d	$s7, $sp, 1736
.LBB0_12:                               #   in Loop: Header=BB0_15 Depth=1
	ori	$s1, $zero, 500
.LBB0_13:                               # %while.cond.backedgethread-pre-split
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$a1, $s5, %pc_lo12(nargc)
	bge	$a1, $s1, .LBB0_83
.LBB0_14:                               # %land.rhsthread-pre-split
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s6, $sp, 1736
	beqz	$s6, .LBB0_83
.LBB0_15:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_44 Depth 2
	ld.d	$s7, $s6, 8
	ld.d	$a0, $s6, 0
	st.d	$s7, $sp, 1736
	ori	$a2, $zero, 9
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncmpic)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s6, 0
	beqz	$a0, .LBB0_22
# %bb.16:                               # %if.end32
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a0, $zero, 2264
	add.d	$a1, $sp, $a0
	addi.d	$a2, $sp, 1752
	move	$a0, $a3
	pcaddu18i	$ra, %call36(islocal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_71
# %bb.17:                               # %if.end40
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $sp, 1752
	ld.d	$a0, $s6, 0
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	addi.d	$a2, $sp, 1752
	add.d	$s2, $a2, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(v_search.loaded)
	ld.bu	$a0, $fp, %pc_lo12(v_search.loaded)
	bnez	$a0, .LBB0_19
# %bb.18:                               # %if.then.i72
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %got_pc_hi20(aliasfile)
	ld.d	$a0, $a0, %got_pc_lo12(aliasfile)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(aliases)
	addi.d	$a0, $a0, %pc_lo12(aliases)
	pcaddu18i	$ra, %call36(load_alias)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(v_search.loaded)
.LBB0_19:                               # %if.end.i
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %pc_hi20(aliases+16)
	ld.d	$fp, $a0, %pc_lo12(aliases+16)
	beqz	$fp, .LBB0_47
	.p2align	4, , 16
.LBB0_20:                               # %for.body.i73
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_26
# %bb.21:                               # %for.inc.i
                                        #   in Loop: Header=BB0_20 Depth=2
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB0_20
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_22:                               # %if.then
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $a3, 9
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB0_13
# %bb.23:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$s2, $a3, 9
	addi.d	$fp, $sp, 1704
	.p2align	4, , 16
.LBB0_24:                               # %for.cond.i
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 8
	beqz	$fp, .LBB0_37
# %bb.25:                               # %for.body.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $fp, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_24
	b	.LBB0_13
.LBB0_26:                               # %if.then53
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB0_11
# %bb.27:                               # %for.body58.outer.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$s8, $zero, 1
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               # %if.else.i99
                                        #   in Loop: Header=BB0_30 Depth=2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$s7, $s3, 8
	st.d	$zero, $s3, 16
	move	$s7, $s3
.LBB0_29:                               # %for.inc85
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.d	$s1, $s1, 8
	beqz	$s1, .LBB0_46
.LBB0_30:                               # %for.body58
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	addi.d	$a1, $sp, 552
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(islocal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_32
# %bb.31:                               # %if.then64
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.bu	$a0, $sp, 40
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	addi.d	$a1, $sp, 40
	add.d	$a0, $a1, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_35
.LBB0_32:                               # %if.else
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.d	$s4, $s1, 0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.33:                               # %if.then.i78
                                        #   in Loop: Header=BB0_30 Depth=2
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	bnez	$a0, .LBB0_28
# %bb.34:                               # %if.then6.i89
                                        #   in Loop: Header=BB0_30 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_29
.LBB0_35:                               # %for.inc85.thread
                                        #   in Loop: Header=BB0_30 Depth=2
	ld.d	$s1, $s1, 8
	move	$s8, $zero
	bnez	$s1, .LBB0_30
# %bb.36:                               # %for.end87.thread211
                                        #   in Loop: Header=BB0_15 Depth=1
	st.d	$s7, $sp, 1736
	st.d	$zero, $fp, 8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ori	$s1, $zero, 500
	b	.LBB0_47
.LBB0_37:                               # %if.then12
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_40
# %bb.38:                               # %if.then.i59
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	beqz	$a0, .LBB0_62
# %bb.39:                               # %if.else.i65
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s3, 8
	st.d	$zero, $s3, 16
	st.d	$s3, $sp, 1712
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
.LBB0_40:                               # %add_horz.exit71
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a1, $sp, 1064
	move	$a0, $s2
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_13
.LBB0_41:                               # %land.lhs.true16
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.wu	$a0, $sp, 1080
	lu12i.w	$a1, 15
	and	$a0, $a0, $a1
	lu12i.w	$a1, 8
	bne	$a0, $a1, .LBB0_13
# %bb.42:                               # %land.lhs.true19
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.43:                               # %while.cond24.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	.p2align	4, , 16
.LBB0_44:                               # %while.body27
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 1192
	ori	$a1, $zero, 512
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_63
# %bb.45:                               # %while.body27
                                        #   in Loop: Header=BB0_44 Depth=2
	addi.d	$a0, $sp, 1728
	addi.d	$a1, $sp, 1192
	pcaddu18i	$ra, %call36(recipients)
	jirl	$ra, $ra, 0
	b	.LBB0_44
.LBB0_46:                               # %for.end87
                                        #   in Loop: Header=BB0_15 Depth=1
	st.d	$s7, $sp, 1736
	andi	$a0, $s8, 1
	st.d	$zero, $fp, 8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ori	$s1, $zero, 500
	bnez	$a0, .LBB0_13
	.p2align	4, , 16
.LBB0_47:                               # %if.end97
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(tilde)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_65
# %bb.48:                               # %for.cond.i106.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	addi.d	$fp, $sp, 1704
	.p2align	4, , 16
.LBB0_49:                               # %for.cond.i106
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 8
	beqz	$fp, .LBB0_51
# %bb.50:                               # %for.body.i111
                                        #   in Loop: Header=BB0_49 Depth=2
	ld.d	$a0, $fp, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_49
	b	.LBB0_13
.LBB0_51:                               # %if.end106
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.52:                               # %if.then.i117
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$a0, .LBB0_54
# %bb.53:                               # %if.else.i123
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s4, 8
	st.d	$zero, $s4, 16
	st.d	$s4, $sp, 1712
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_55
.LBB0_54:                               # %if.then6.i128
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %add_horz.exit129
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 1192
	move	$a2, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1192
	addi.d	$a1, $sp, 1064
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_65
# %bb.56:                               # %land.lhs.true113
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.wu	$a0, $sp, 1080
	lu12i.w	$a1, 15
	ori	$a1, $a1, 292
	and	$a0, $a0, $a1
	lu12i.w	$a1, 8
	ori	$a1, $a1, 292
	bne	$a0, $a1, .LBB0_65
# %bb.57:                               # %land.lhs.true123
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 1192
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_65
# %bb.58:                               # %while.cond129.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	addi.d	$a0, $sp, 1192
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_64
# %bb.59:                               # %while.body133.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_60:                               # %while.body133
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 1728
	addi.d	$a1, $sp, 1192
	pcaddu18i	$ra, %call36(recipients)
	jirl	$ra, $ra, 0
	or	$fp, $a0, $fp
	addi.d	$a0, $sp, 1192
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_60
# %bb.61:                               # %while.end136
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_13
	b	.LBB0_65
.LBB0_62:                               # %if.then6.i70
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1064
	move	$a0, $s2
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_41
	b	.LBB0_13
.LBB0_63:                               # %while.end
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_64:                               # %while.end136.thread
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_65:                               # %if.end142
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(res_fname)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_71
# %bb.66:                               # %if.then146
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(alias.t_dom)
	addi.d	$a1, $a0, %pc_lo12(alias.t_dom)
	pcalau12i	$a0, %pc_hi20(alias.t_unam)
	addi.d	$a2, $a0, %pc_lo12(alias.t_unam)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(islocal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_78
# %bb.67:                               # %if.end151
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a0, %pc_hi20(alias.t_unam)
	addi.d	$a0, $a0, %pc_lo12(alias.t_unam)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_71
# %bb.68:                               # %if.then155
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.69:                               # %if.then.i147
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(alias.t_unam)
	addi.d	$a0, $a0, %pc_lo12(alias.t_unam)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_82
# %bb.70:                               # %if.else.i153
                                        #   in Loop: Header=BB0_15 Depth=1
	pcalau12i	$a1, %pc_hi20(alias.t_unam)
	addi.d	$a1, $a1, %pc_lo12(alias.t_unam)
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_71:                               # %aliasing_complete
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s6, 0
	ld.bu	$a1, $a0, 0
	ld.w	$a2, $s5, %pc_lo12(nargc)
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	add.d	$s2, $a0, $a1
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB0_76
# %bb.72:                               # %for.body175.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s1, $zero
	move	$fp, $zero
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_73:                               # %for.body175
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, %pc_lo12(nargc)
	beqz	$a0, .LBB0_75
# %bb.74:                               # %for.inc183
                                        #   in Loop: Header=BB0_73 Depth=2
	addi.d	$s1, $s1, 1
	addi.w	$fp, $fp, 1
	addi.d	$s3, $s3, 8
	blt	$s1, $a2, .LBB0_73
.LBB0_75:                               # %for.end185
                                        #   in Loop: Header=BB0_15 Depth=1
	bne	$fp, $a2, .LBB0_12
	b	.LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_15 Depth=1
	move	$fp, $zero
	bne	$fp, $a2, .LBB0_12
.LBB0_77:                               # %if.then188
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.w	$a1, $a2, 1
	st.w	$a1, $s5, %pc_lo12(nargc)
	slli.d	$a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(nargv)
	addi.d	$a2, $a2, %pc_lo12(nargv)
	stx.d	$s2, $a2, $a0
	ori	$s1, $zero, 500
	blt	$a1, $s1, .LBB0_14
	b	.LBB0_83
.LBB0_78:                               # %if.then150
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.79:                               # %if.then.i132
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_82
# %bb.80:                               # %if.else.i138
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a1, $s3
.LBB0_81:                               # %while.cond.backedgethread-pre-split
                                        #   in Loop: Header=BB0_15 Depth=1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1736
	st.d	$a0, $s2, 8
	st.d	$zero, $s2, 16
	st.d	$s2, $sp, 1736
	b	.LBB0_13
.LBB0_82:                               # %if.then6.i143
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_83:                               # %while.end193
	pcalau12i	$a0, %pc_hi20(nargv)
	addi.d	$a0, $a0, %pc_lo12(nargv)
	st.w	$a1, $s8, 0
	addi.d	$sp, $sp, 832
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
.Lfunc_end0:
	.size	alias, .Lfunc_end0-alias
                                        # -- End function
	.globl	v_search                        # -- Begin function v_search
	.p2align	5
	.type	v_search,@function
v_search:                               # @v_search
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(v_search.loaded)
	ld.bu	$a1, $s0, %pc_lo12(v_search.loaded)
	move	$fp, $a0
	pcalau12i	$s1, %pc_hi20(aliases+16)
	bnez	$a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(aliasfile)
	ld.d	$a0, $a0, %got_pc_lo12(aliasfile)
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(aliases)
	addi.d	$a0, $a0, %pc_lo12(aliases)
	pcaddu18i	$ra, %call36(load_alias)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(v_search.loaded)
.LBB1_2:                                # %if.end
	ld.d	$s0, $s1, %pc_lo12(aliases+16)
	beqz	$s0, .LBB1_5
	.p2align	4, , 16
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_6
# %bb.4:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s0, $s0, 16
	bnez	$s0, .LBB1_3
.LBB1_5:
	move	$s0, $zero
.LBB1_6:                                # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	v_search, .Lfunc_end1-v_search
                                        # -- End function
	.globl	h_search                        # -- Begin function h_search
	.p2align	5
	.type	h_search,@function
h_search:                               # @h_search
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	.p2align	4, , 16
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 8
	beqz	$fp, .LBB2_3
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.d	$a0, $fp, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_1
.LBB2_3:                                # %for.end
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	h_search, .Lfunc_end2-h_search
                                        # -- End function
	.globl	load_alias                      # -- Begin function load_alias
	.p2align	5
	.type	load_alias,@function
load_alias:                             # @load_alias
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1664
	st.d	$ra, $sp, 1656                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1576                  # 8-byte Folded Spill
	move	$a2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_27
# %bb.1:                                # %while.cond.preheader
	move	$s1, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 512
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_22
# %bb.2:                                # %while.body.lr.ph.lr.ph
	ori	$s8, $zero, 35
	ori	$s5, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s4, $zero, 44
	ori	$s7, $zero, 1
	ori	$s2, $zero, 1536
	lu32i.d	$s2, 4097
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB3_5
.LBB3_3:                                # %if.end28
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(load_alias)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_4:                                # %while.cond.backedge
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 512
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_22
.LBB3_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	ld.bu	$s0, $sp, 40
	beq	$s0, $s8, .LBB3_4
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB3_5 Depth=1
	beq	$s0, $s5, .LBB3_4
# %bb.7:                                # %if.end14
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 9
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_16
# %bb.8:                                # %if.end29
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 9
	beq	$s0, $a0, .LBB3_20
# %bb.9:                                # %if.end29
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 32
	beq	$s0, $a0, .LBB3_20
# %bb.10:                               # %while.cond37.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s6, $sp, 41
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_11:                               # %while.body52
                                        #   in Loop: Header=BB3_12 Depth=2
	ld.bu	$s0, $s6, 0
	addi.d	$s6, $s6, 1
.LBB3_12:                               # %while.cond37
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $s0, 255
	bltu	$s4, $a0, .LBB3_11
# %bb.13:                               # %while.cond37
                                        #   in Loop: Header=BB3_12 Depth=2
	sll.d	$a0, $s7, $a0
	and	$a0, $a0, $s2
	beqz	$a0, .LBB3_11
# %bb.14:                               # %while.end
                                        #   in Loop: Header=BB3_5 Depth=1
	st.b	$zero, $s6, -1
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 1064
	addi.d	$a2, $sp, 552
	pcaddu18i	$ra, %call36(islocal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
# %bb.15:                               # %if.end60
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a1, $sp, 552
	move	$a0, $fp
	pcaddu18i	$ra, %call36(add_vert)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_21
	b	.LBB3_29
.LBB3_16:                               # %if.then18
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a1, $zero, 10
	addi.d	$s0, $sp, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_18
# %bb.17:                               # %if.then22
                                        #   in Loop: Header=BB3_5 Depth=1
	st.b	$zero, $a0, 0
.LBB3_18:                               # %if.end23
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_3
# %bb.19:                               # %if.then26
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_20:                               # %if.end72.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s6, $sp, 40
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB3_21:                               # %if.end72
                                        #   in Loop: Header=BB3_5 Depth=1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $s6
	pcaddu18i	$ra, %call36(recipients)
	jirl	$ra, $ra, 0
	b	.LBB3_4
.LBB3_22:                               # %while.end74
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB3_31
# %bb.23:                               # %for.body.preheader
	addi.d	$a1, $fp, 16
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_24:                               # %if.then81
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a0, $a0, 16
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 16
	beqz	$a0, .LBB3_31
.LBB3_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB3_24
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	move	$fp, $a0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 16
	bnez	$a0, .LBB3_25
	b	.LBB3_31
.LBB3_27:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_31
# %bb.28:                               # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1656                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1664
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB3_29:                               # %if.then65
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_31
# %bb.30:                               # %if.then68
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_31:                               # %cleanup
	ld.d	$s8, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1656                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1664
	ret
.Lfunc_end3:
	.size	load_alias, .Lfunc_end3-load_alias
                                        # -- End function
	.globl	recipients                      # -- Begin function recipients
	.p2align	5
	.type	recipients,@function
recipients:                             # @recipients
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_5
# %bb.1:                                # %while.body.i.preheader
	move	$s1, $a0
	.p2align	4, , 16
.LBB4_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s1, 1
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_4
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.d	$s2, $a0, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB4_2
	b	.LBB4_5
.LBB4_4:                                # %if.else.i
	st.b	$zero, $s1, 0
.LBB4_5:                                # %while.cond.preheader
	ori	$a0, $zero, 44
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1536
	lu32i.d	$a3, 4097
	ld.bu	$a1, $s0, 0
	bltu	$a0, $a1, .LBB4_8
	.p2align	4, , 16
.LBB4_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	sll.d	$a4, $a2, $a1
	and	$a4, $a4, $a3
	beqz	$a4, .LBB4_8
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	addi.d	$s0, $s0, 1
	ld.bu	$a1, $s0, 0
	bgeu	$a0, $a1, .LBB4_6
.LBB4_8:                                # %while.cond12.preheader
	move	$s1, $zero
	ori	$s4, $zero, 34
	ori	$s5, $zero, 44
	ori	$s6, $zero, 1
	ori	$s7, $zero, 1536
	lu32i.d	$s7, 4097
	ori	$s8, $zero, 35
	.p2align	4, , 16
.LBB4_9:                                # %while.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_26 Depth 2
	andi	$a2, $a1, 255
	beq	$a2, $s4, .LBB4_16
# %bb.10:                               # %while.cond12
                                        #   in Loop: Header=BB4_9 Depth=1
	beqz	$a2, .LBB4_28
# %bb.11:                               # %while.cond12
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s8, .LBB4_13
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_12:                               # %while.body43
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
.LBB4_13:                               # %while.cond27
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a1, $a1, 255
	bltu	$s5, $a1, .LBB4_12
# %bb.14:                               # %while.cond27
                                        #   in Loop: Header=BB4_13 Depth=2
	sll.d	$a1, $s6, $a1
	and	$a1, $a1, $s7
	beqz	$a1, .LBB4_12
# %bb.15:                               # %if.then50.loopexit
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s2, $s0
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_16:                               # %if.then
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$s2, $s0, 1
	ori	$a1, $zero, 34
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_28
# %bb.17:                               # %if.end46
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.bu	$a1, $a0, 0
	move	$s0, $a0
	beqz	$a1, .LBB4_19
.LBB4_18:                               # %if.then50
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$s0, $a0, 1
	st.b	$zero, $a0, 0
.LBB4_19:                               # %if.end52
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$a1, $sp, 520
	addi.d	$a2, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(islocal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_21
# %bb.20:                               # %lor.lhs.false57
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(strcmpic)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_26
.LBB4_21:                               # %if.then62
                                        #   in Loop: Header=BB4_9 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	beqz	$a0, .LBB4_26
# %bb.22:                               # %if.then.i28
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	beqz	$a0, .LBB4_24
# %bb.23:                               # %if.else.i30
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $s3, 8
	st.d	$zero, $s3, 16
	st.d	$s3, $fp, 8
	b	.LBB4_26
.LBB4_24:                               # %if.then6.i
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_25:                               # %while.body81
                                        #   in Loop: Header=BB4_26 Depth=2
	addi.d	$s0, $s0, 1
.LBB4_26:                               # %while.cond64
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	bltu	$s5, $a1, .LBB4_9
# %bb.27:                               # %while.cond64
                                        #   in Loop: Header=BB4_26 Depth=2
	sll.d	$a0, $s6, $a1
	and	$a0, $a0, $s7
	bnez	$a0, .LBB4_25
	b	.LBB4_9
.LBB4_28:                               # %cleanup
	move	$a0, $s1
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.Lfunc_end4:
	.size	recipients, .Lfunc_end4-recipients
                                        # -- End function
	.globl	strip_comments                  # -- Begin function strip_comments
	.p2align	5
	.type	strip_comments,@function
strip_comments:                         # @strip_comments
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_5
# %bb.1:                                # %while.body.preheader
	move	$fp, $a0
	.p2align	4, , 16
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $fp, 1
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	addi.d	$s0, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB5_2
	b	.LBB5_5
.LBB5_4:                                # %if.else
	st.b	$zero, $fp, 0
.LBB5_5:                                # %while.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	strip_comments, .Lfunc_end5-strip_comments
                                        # -- End function
	.globl	add_vert                        # -- Begin function add_vert
	.p2align	5
	.type	add_vert,@function
add_vert:                               # @add_vert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a1, $zero, 58
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.1:                                # %if.then
	st.b	$zero, $a0, 0
.LBB6_2:                                # %if.end
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_6
# %bb.3:                                # %if.then3
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	beqz	$a0, .LBB6_5
# %bb.4:                                # %if.else
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $s1, 16
	st.d	$zero, $s1, 8
	st.d	$s1, $fp, 16
	b	.LBB6_7
.LBB6_5:                                # %if.then9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %if.end15
	move	$s1, $zero
.LBB6_7:                                # %if.end15
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	add_vert, .Lfunc_end6-add_vert
                                        # -- End function
	.globl	add_horz                        # -- Begin function add_horz
	.p2align	5
	.type	add_horz,@function
add_horz:                               # @add_horz
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_3
# %bb.1:                                # %if.then
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	beqz	$a0, .LBB7_4
# %bb.2:                                # %if.else
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 8
	st.d	$zero, $s0, 16
	st.d	$s0, $fp, 8
.LBB7_3:                                # %if.end11
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_4:                                # %if.then6
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end7:
	.size	add_horz, .Lfunc_end7-add_horz
                                        # -- End function
	.globl	pop                             # -- Begin function pop
	.p2align	5
	.type	pop,@function
pop:                                    # @pop
# %bb.0:                                # %entry
	beqz	$a0, .LBB8_3
# %bb.1:                                # %if.then
	move	$a1, $a0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB8_3
# %bb.2:                                # %if.then2
	ld.d	$a2, $a0, 8
	st.d	$a2, $a1, 8
	ret
.LBB8_3:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	pop, .Lfunc_end8-pop
                                        # -- End function
	.type	nargc,@object                   # @nargc
	.local	nargc
	.comm	nargc,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	":include:"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s/%s"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".forward"
	.size	.L.str.3, 9

	.type	alias.t_dom,@object             # @alias.t_dom
	.local	alias.t_dom
	.comm	alias.t_dom,512,1
	.type	alias.t_unam,@object            # @alias.t_unam
	.local	alias.t_unam
	.comm	alias.t_unam,512,1
	.type	nargv,@object                   # @nargv
	.local	nargv
	.comm	nargv,4000,8
	.type	v_search.loaded,@object         # @v_search.loaded
	.local	v_search.loaded
	.comm	v_search.loaded,1,4
	.type	aliases,@object                 # @aliases
	.data
	.p2align	3, 0x0
aliases:
	.dword	.L.str.7
	.dword	0
	.dword	0
	.size	aliases, 24

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"load_alias open('%s') failed\n"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"load_alias '%s' includes file '%s'\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"load_alias for '%s' failed\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.space	1
	.size	.L.str.7, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym alias.t_dom
	.addrsig_sym alias.t_unam
	.addrsig_sym nargv
	.addrsig_sym aliases
