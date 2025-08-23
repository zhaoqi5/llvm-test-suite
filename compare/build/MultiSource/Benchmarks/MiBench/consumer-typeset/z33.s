	.file	"z33.c"
	.text
	.globl	DbCreate                        # -- Begin function DbCreate
	.p2align	5
	.type	DbCreate,@function
DbCreate:                               # @DbCreate
# %bb.0:                                # %entry
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB0_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a5, $a1, %pc_lo12(.L.str.1)
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB0_2:                                # %if.end
	st.b	$zero, $a0, 42
	st.d	$zero, $a0, 48
	ret
.Lfunc_end0:
	.size	DbCreate, .Lfunc_end0-DbCreate
                                        # -- End function
	.globl	DbInsert                        # -- Begin function DbInsert
	.p2align	5
	.type	DbInsert,@function
DbInsert:                               # @DbInsert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	move	$s2, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$t0, $zero, 2
	move	$s4, $a7
	move	$s5, $a6
	move	$fp, $a5
	move	$s6, $a4
	move	$s8, $a3
	move	$s3, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	bgeu	$a0, $t0, .LBB1_10
# %bb.1:                                # %if.end
	ld.bu	$a0, $s8, 0
	beqz	$a0, .LBB1_11
.LBB1_2:                                # %if.end12
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB1_12
.LBB1_3:                                # %if.end19
	ld.bu	$a0, $s2, 42
	ld.d	$fp, $sp, 664
	beqz	$a0, .LBB1_5
.LBB1_4:                                # %if.then20
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %if.end22
	beqz	$fp, .LBB1_20
# %bb.6:                                # %if.then24
	pcalau12i	$fp, %pc_hi20(DbCheckTableInit)
	ld.bu	$a0, $fp, %pc_lo12(DbCheckTableInit)
	beqz	$a0, .LBB1_13
# %bb.7:                                # %if.then24.if.end28_crit_edge
	pcalau12i	$a0, %pc_hi20(DbCheckTable)
	ld.d	$s7, $a0, %pc_lo12(DbCheckTable)
	ld.bu	$a0, $s8, 0
	beqz	$a0, .LBB1_16
.LBB1_8:                                # %while.body.i.preheader
	addi.d	$a2, $s8, 1
	move	$a1, $s3
	.p2align	4, , 16
.LBB1_9:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a1, $a0
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB1_9
	b	.LBB1_17
.LBB1_10:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, 0
	bnez	$a0, .LBB1_2
.LBB1_11:                               # %if.then10
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.bu	$a0, $fp, 0
	bnez	$a0, .LBB1_3
.LBB1_12:                               # %if.then17
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 42
	ld.d	$fp, $sp, 664
	bnez	$a0, .LBB1_4
	b	.LBB1_5
.LBB1_13:                               # %if.then26
	ori	$a0, $zero, 864
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	bnez	$a0, .LBB1_15
# %bb.14:                               # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %dtab_new.exit
	ori	$a0, $zero, 107
	st.w	$a0, $s7, 0
	addi.d	$a0, $s7, 4
	ori	$a2, $zero, 860
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(DbCheckTable)
	st.d	$s7, $a0, %pc_lo12(DbCheckTable)
	ori	$a0, $zero, 1
	st.b	$a0, $fp, %pc_lo12(DbCheckTableInit)
	ld.bu	$a0, $s8, 0
	bnez	$a0, .LBB1_8
.LBB1_16:
	move	$a1, $s3
.LBB1_17:                               # %while.end.i
	ld.w	$a0, $s7, 0
	mod.du	$a0, $a1, $a0
	alsl.d	$a0, $a0, $s7, 3
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB1_19
# %bb.18:                               # %for.cond.preheader.i
	ld.d	$s0, $fp, 8
	bne	$s0, $fp, .LBB1_37
.LBB1_19:                               # %if.then32
	ori	$a0, $zero, 11
	move	$a1, $s8
	move	$a2, $s6
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 48
	pcalau12i	$a1, %pc_hi20(DbCheckTable)
	addi.d	$a1, $a1, %pc_lo12(DbCheckTable)
	pcaddu18i	$ra, %call36(dtab_insert)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %if.end48
	ld.d	$a0, $s2, 48
	bnez	$a0, .LBB1_24
# %bb.21:                               # %if.then52
	addi.d	$s6, $s2, 64
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -508
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB1_23
# %bb.22:                               # %if.then56
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a6, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %if.end60
	addi.d	$a0, $sp, 56
	addi.d	$fp, $sp, 56
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.w	$a2, $a1, 0
	ld.b	$a1, $a1, 4
	add.d	$a3, $fp, $a0
	stx.w	$a2, $a0, $fp
	st.b	$a1, $a3, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 48
	beqz	$a0, .LBB1_58
.LBB1_24:                               # %if.end78
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	beqz	$s5, .LBB1_59
.LBB1_25:                               # %if.then82
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 56
	addi.d	$fp, $sp, 56
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $fp
	st.b	$zero, $a0, -3
	ld.d	$s8, $s2, 8
	beq	$s8, $s2, .LBB1_60
.LBB1_26:                               # %for.cond99.preheader.preheader
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$s4, $zero, 17
	ori	$s0, $zero, 140
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s5, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s6, $a0, %pc_lo12(.L.str.14)
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %for.inc141
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$s8, $s8, 8
	beq	$s8, $s2, .LBB1_43
.LBB1_28:                               # %for.cond99.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	move	$s7, $s8
	.p2align	4, , 16
.LBB1_29:                               # %for.cond99
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB1_29
# %bb.30:                               # %for.cond99
                                        #   in Loop: Header=BB1_28 Depth=1
	beq	$a0, $s4, .LBB1_33
# %bb.31:                               # %for.cond99
                                        #   in Loop: Header=BB1_28 Depth=1
	beq	$a0, $s0, .LBB1_33
# %bb.32:                               # %if.then120
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$a4, $s1, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $zero
	move	$a5, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 32
.LBB1_33:                               # %if.end122
                                        #   in Loop: Header=BB1_28 Depth=1
	bne	$a0, $s0, .LBB1_27
# %bb.34:                               # %if.end129
                                        #   in Loop: Header=BB1_28 Depth=1
	ld.d	$a0, $s7, 64
	ld.bu	$s7, $s8, 33
	beq	$a0, $s3, .LBB1_55
# %bb.35:                               # %if.end133
                                        #   in Loop: Header=BB1_28 Depth=1
	slt	$a0, $s7, $fp
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_36:                               # %for.inc22.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s0, $s0, 8
	beq	$s0, $fp, .LBB1_19
.LBB1_37:                               # %for.cond8.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_38 Depth 2
	move	$s1, $s0
	.p2align	4, , 16
.LBB1_38:                               # %for.cond8.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB1_38
# %bb.39:                               # %for.end.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $s1, 48
	bne	$s3, $a0, .LBB1_36
# %bb.40:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a1, $s1, 64
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_36
# %bb.41:                               # %if.else
	ld.hu	$fp, $s1, 34
	move	$a0, $s3
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$fp, .LBB1_61
# %bb.42:                               # %if.then38
	addi.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	move	$a4, $s6
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_20
.LBB1_43:                               # %if.then148.loopexit
	addi.d	$s7, $fp, 1
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 88
	bnez	$a0, .LBB1_45
.LBB1_44:                               # %if.then151
	move	$a0, $s3
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
.LBB1_45:                               # %if.end152
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB1_47
# %bb.46:                               # %if.else165
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB1_48
.LBB1_47:                               # %if.then163
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_48:                               # %if.end174
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$s2, $a2, 0
	beqz	$s2, .LBB1_50
# %bb.49:                               # %cond.false194
	ld.d	$a4, $s2, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a6, $a0, 0
	ld.d	$a5, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a5, 8
.LBB1_50:                               # %cond.end216
	ld.d	$a3, $s3, 88
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB1_53
# %bb.51:                               # %cond.end216
	beqz	$a0, .LBB1_53
# %bb.52:                               # %cond.false226
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_53:                               # %cond.end250
	ld.d	$s8, $s2, 0
	st.b	$s7, $s8, 33
	st.b	$zero, $s8, 34
	ld.d	$fp, $sp, 656
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_56
.LBB1_54:                               # %if.then262
	ld.h	$a0, $s3, 41
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2048
	or	$a0, $a0, $a1
	st.h	$a0, $s3, 41
	ori	$a0, $zero, 1
	st.b	$a0, $s8, 34
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s3, $a0, %pc_lo12(.L.str.17)
	b	.LBB1_57
.LBB1_55:
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 656
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_54
.LBB1_56:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s3, $a0, %pc_lo12(.L.str.12)
.LBB1_57:                               # %if.end269
	pcalau12i	$a1, %pc_hi20(DbInsert.extra_seq)
	ld.w	$a0, $a1, %pc_lo12(DbInsert.extra_seq)
	ld.d	$s2, $s2, 48
	addi.w	$a0, $a0, 1
	st.w	$a0, $a1, %pc_lo12(DbInsert.extra_seq)
	pcaddu18i	$ra, %call36(StringFiveInt)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 8
	andi	$a3, $s7, 255
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	st.d	$fp, $sp, 0
	move	$a0, $s2
	move	$a2, $s3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	move	$a7, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB1_58:                               # %if.then73
	addi.d	$a4, $s2, 32
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	addi.d	$a5, $sp, 56
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	bnez	$s5, .LBB1_25
.LBB1_59:                               # %if.else90
	ori	$a0, $zero, 46
	st.h	$a0, $sp, 56
	ld.d	$s8, $s2, 8
	bne	$s8, $s2, .LBB1_26
.LBB1_60:
	ori	$s7, $zero, 1
	ld.d	$a0, $s3, 88
	bnez	$a0, .LBB1_45
	b	.LBB1_44
.LBB1_61:                               # %if.else43
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	move	$a4, $s6
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_20
.Lfunc_end1:
	.size	DbInsert, .Lfunc_end1-DbInsert
                                        # -- End function
	.p2align	5                               # -- Begin function dtab_insert
	.type	dtab_insert,@function
dtab_insert:                            # @dtab_insert
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
	move	$s8, $a1
	ld.d	$s1, $a1, 0
	ld.w	$s4, $s1, 0
	ld.w	$a1, $s1, 4
	addi.w	$a2, $s4, -1
	move	$fp, $a0
	bne	$a1, $a2, .LBB2_18
# %bb.1:                                # %if.then
	slli.w	$s5, $s4, 1
	slli.d	$s3, $s5, 3
	addi.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB2_3
# %bb.2:                                # %if.then.i36
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %if.end.i33
	st.w	$s5, $s2, 0
	ori	$s0, $zero, 1
	st.w	$zero, $s2, 4
	blt	$s4, $s0, .LBB2_5
# %bb.4:                                # %for.body.lr.ph.i
	addi.d	$a0, $s2, 8
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_5:                                # %dtab_new.exit
	ld.w	$a0, $s1, 0
	st.d	$s2, $sp, 16
	blt	$a0, $s0, .LBB2_17
# %bb.6:                                # %for.body.i.lr.ph
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s5, $zero
	addi.d	$s6, $s1, 8
	ori	$s7, $zero, 17
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$s3, $a1, %pc_lo12(.L.str.57)
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_7:                                # %for.end30.i
                                        #   in Loop: Header=BB2_9 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
.LBB2_8:                                # %for.inc33.i
                                        #   in Loop: Header=BB2_9 Depth=1
	addi.d	$s5, $s5, 1
	bge	$s5, $a0, .LBB2_16
.LBB2_9:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_14 Depth 3
	slli.d	$a1, $s5, 3
	ldx.d	$s4, $s6, $a1
	beqz	$s4, .LBB2_8
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.bu	$a0, $s4, 32
	beq	$a0, $s7, .LBB2_12
# %bb.11:                               # %if.then7.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$s0, $s4, 8
	beq	$s0, $s4, .LBB2_7
	.p2align	4, , 16
.LBB2_13:                               # %for.cond16.i.preheader
                                        #   Parent Loop BB2_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_14 Depth 3
	move	$a0, $s0
	.p2align	4, , 16
.LBB2_14:                               # %for.cond16.i
                                        #   Parent Loop BB2_9 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_14
# %bb.15:                               # %for.end.i
                                        #   in Loop: Header=BB2_13 Depth=2
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(dtab_insert)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	bne	$s0, $s4, .LBB2_13
	b	.LBB2_7
.LBB2_16:                               # %dtab_rehash.exit.loopexit
	ld.d	$s2, $sp, 16
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
.LBB2_17:                               # %dtab_rehash.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	st.d	$s2, $s8, 0
	move	$s1, $s2
.LBB2_18:                               # %if.end
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 4
	ld.bu	$a1, $fp, 64
	ld.d	$a0, $fp, 48
	beqz	$a1, .LBB2_21
# %bb.19:                               # %while.body.preheader
	addi.d	$a2, $fp, 65
	.p2align	4, , 16
.LBB2_20:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB2_20
.LBB2_21:                               # %while.end
	ld.w	$a1, $s1, 0
	mod.du	$s4, $a0, $a1
	alsl.d	$a0, $s4, $s1, 3
	ld.d	$s5, $a0, 8
	bnez	$s5, .LBB2_26
# %bb.22:                               # %if.then7
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 17
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB2_24
# %bb.23:                               # %if.else19
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB2_25
.LBB2_24:                               # %if.then17
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB2_25:                               # %if.end26
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s8, 0
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a0, $a1, 8
	ld.d	$a0, $s8, 0
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$s5, $a0, 8
.LBB2_26:                               # %if.end40
	ld.d	$s6, $s5, 8
	beq	$s6, $s5, .LBB2_34
# %bb.27:                               # %for.cond51.preheader.preheader
	addi.d	$s1, $fp, 64
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s3, $a0, %pc_lo12(.L.str.56)
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               # %for.inc75
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$s6, $s6, 8
	beq	$s6, $s5, .LBB2_34
.LBB2_29:                               # %for.cond51.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_30 Depth 2
	move	$a0, $s6
	.p2align	4, , 16
.LBB2_30:                               # %for.cond51
                                        #   Parent Loop BB2_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_30
# %bb.31:                               # %for.end
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$a1, $fp, 48
	ld.d	$a2, $a0, 48
	bne	$a1, $a2, .LBB2_28
# %bb.32:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_29 Depth=1
	addi.d	$a1, $a0, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_28
# %bb.33:                               # %if.then72
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s2
	move	$a3, $zero
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_28
.LBB2_34:                               # %for.end79
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB2_36
# %bb.35:                               # %if.else93
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB2_37
.LBB2_36:                               # %if.then91
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB2_37:                               # %if.end102
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a3, $s8, 0
	alsl.d	$a3, $s4, $a3, 3
	ld.d	$a4, $a3, 8
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB2_39
# %bb.38:                               # %cond.false124
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
.LBB2_39:                               # %cond.end146
	st.d	$a0, $a1, 0
	st.d	$fp, $a3, 0
	beqz	$a0, .LBB2_41
# %bb.40:                               # %cond.false155
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_41:                               # %cond.end179
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
.Lfunc_end2:
	.size	dtab_insert, .Lfunc_end2-dtab_insert
                                        # -- End function
	.globl	DbConvert                       # -- Begin function DbConvert
	.p2align	5
	.type	DbConvert,@function
DbConvert:                              # @DbConvert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1168
	st.d	$ra, $sp, 1160                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1080                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 42
	move	$s0, $a1
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %if.end
	addi.d	$s1, $fp, 64
	addi.d	$a0, $sp, 46
	addi.d	$s2, $sp, 46
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 46
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1686
	ori	$a1, $a1, 3118
	stx.w	$a1, $a0, $s2
	addi.d	$a0, $sp, 558
	addi.d	$s2, $sp, 558
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 558
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.w	$a2, $a1, 0
	ld.b	$a1, $a1, 4
	ld.d	$a4, $fp, 48
	add.d	$a3, $s2, $a0
	stx.w	$a2, $a0, $s2
	st.b	$a1, $a3, 4
	beqz	$a4, .LBB3_14
# %bb.3:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a3, $a0, %pc_lo12(.L.str.22)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 8
	beq	$s7, $fp, .LBB3_24
# %bb.4:                                # %for.cond17.preheader.lr.ph
	beqz	$s0, .LBB3_15
# %bb.5:
	ori	$s4, $zero, 17
	ori	$s2, $zero, 140
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s3, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s8, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s1, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.inc54
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$s7, $s7, 8
	beq	$s7, $fp, .LBB3_24
.LBB3_7:                                # %for.cond17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	move	$s6, $s7
	.p2align	4, , 16
.LBB3_8:                                # %for.cond17
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB3_8
# %bb.9:                                # %for.cond17
                                        #   in Loop: Header=BB3_7 Depth=1
	beq	$a0, $s4, .LBB3_12
# %bb.10:                               # %for.cond17
                                        #   in Loop: Header=BB3_7 Depth=1
	beq	$a0, $s2, .LBB3_12
# %bb.11:                               # %if.then34
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 32
.LBB3_12:                               # %if.end36
                                        #   in Loop: Header=BB3_7 Depth=1
	bne	$a0, $s2, .LBB3_6
# %bb.13:                               # %if.end43
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.bu	$a0, $s7, 34
	ld.d	$s4, $fp, 48
	sltui	$a1, $a0, 1
	ld.bu	$s5, $s7, 33
	ld.d	$a0, $s6, 64
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s8, $a1
	or	$s6, $a1, $a2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(FullSymName)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $s4
	ori	$s4, $zero, 17
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_14:                               # %if.else
	addi.d	$a0, $sp, 46
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_15:                               # %for.cond17.preheader.us.preheader
	ori	$s6, $zero, 17
	ori	$s8, $zero, 140
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s1, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s2, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               # %for.inc54.us
                                        #   in Loop: Header=BB3_17 Depth=1
	ld.d	$s7, $s7, 8
	beq	$s7, $fp, .LBB3_24
.LBB3_17:                               # %for.cond17.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	move	$s5, $s7
	.p2align	4, , 16
.LBB3_18:                               # %for.cond17.us
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s5, 16
	ld.bu	$a0, $s5, 32
	beqz	$a0, .LBB3_18
# %bb.19:                               # %for.cond17.us
                                        #   in Loop: Header=BB3_17 Depth=1
	beq	$a0, $s6, .LBB3_22
# %bb.20:                               # %for.cond17.us
                                        #   in Loop: Header=BB3_17 Depth=1
	beq	$a0, $s8, .LBB3_22
# %bb.21:                               # %if.then34.us
                                        #   in Loop: Header=BB3_17 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 32
.LBB3_22:                               # %if.end36.us
                                        #   in Loop: Header=BB3_17 Depth=1
	bne	$a0, $s8, .LBB3_16
# %bb.23:                               # %if.end43.us
                                        #   in Loop: Header=BB3_17 Depth=1
	ld.bu	$a0, $s7, 34
	ld.d	$s3, $fp, 48
	sltui	$a1, $a0, 1
	ld.bu	$s4, $s7, 33
	ld.d	$a0, $s5, 64
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $s2, $a1
	or	$s5, $a1, $a2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB3_16
.LBB3_24:                               # %for.end58
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 558
	addi.d	$a1, $sp, 46
	pcaddu18i	$ra, %call36(SortFile)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %if.end65
	addi.d	$a0, $sp, 558
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a7, $fp, 24
	st.d	$fp, $a0, 0
	beq	$a7, $fp, .LBB3_32
# %bb.26:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_27:                               # %cond.end134
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.bu	$t0, $a7, 32
	addi.d	$t1, $t0, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $a7, 33
	add.d	$t0, $a3, $t0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	ld.bu	$t0, $t0, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	st.d	$a7, $a2, 0
	st.w	$t0, $a4, 0
	st.d	$t1, $a7, 0
	ld.w	$a7, $a4, 0
	ld.d	$t0, $a2, 0
	ld.d	$fp, $a0, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a5, $a7
	ld.d	$a7, $fp, 24
	beq	$a7, $fp, .LBB3_32
.LBB3_28:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 24
	st.d	$a7, $a1, 0
	beq	$t0, $a7, .LBB3_30
# %bb.29:                               # %cond.false82
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$t1, $a7, 16
	st.d	$t0, $a6, 0
	st.d	$t1, $t0, 16
	st.d	$t0, $t1, 24
	st.d	$a7, $a7, 24
	st.d	$a7, $a7, 16
.LBB3_30:                               # %cond.end104
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$t0, $a7, 8
	st.d	$a7, $a2, 0
	beq	$t0, $a7, .LBB3_27
# %bb.31:                               # %cond.false112
                                        #   in Loop: Header=BB3_28 Depth=1
	st.d	$t0, $a6, 0
	ld.d	$a7, $a7, 0
	st.d	$a7, $t0, 0
	ld.d	$t0, $a2, 0
	ld.d	$a7, $a6, 0
	ld.d	$t1, $t0, 0
	st.d	$a7, $t1, 8
	st.d	$t0, $t0, 0
	ld.d	$a7, $a1, 0
	st.d	$t0, $t0, 8
	b	.LBB3_27
.LBB3_32:                               # %while.cond164.preheader
	ld.d	$a7, $fp, 8
	beq	$a7, $fp, .LBB3_39
# %bb.33:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %cond.end232
                                        #   in Loop: Header=BB3_35 Depth=1
	ld.bu	$t0, $a7, 32
	addi.d	$t1, $t0, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $a7, 33
	add.d	$t0, $a3, $t0
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $t2, $t1
	or	$t0, $t1, $t0
	ld.bu	$t0, $t0, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	st.d	$a7, $a2, 0
	st.w	$t0, $a4, 0
	st.d	$t1, $a7, 0
	ld.w	$a7, $a4, 0
	ld.d	$t0, $a2, 0
	ld.d	$fp, $a0, 0
	slli.d	$a7, $a7, 3
	stx.d	$t0, $a5, $a7
	ld.d	$a7, $fp, 8
	beq	$a7, $fp, .LBB3_39
.LBB3_35:                               # %while.body170
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 24
	st.d	$a7, $a1, 0
	beq	$t0, $a7, .LBB3_37
# %bb.36:                               # %cond.false180
                                        #   in Loop: Header=BB3_35 Depth=1
	ld.d	$t1, $a7, 16
	st.d	$t0, $a6, 0
	st.d	$t1, $t0, 16
	st.d	$t0, $t1, 24
	st.d	$a7, $a7, 24
	st.d	$a7, $a7, 16
.LBB3_37:                               # %cond.end202
                                        #   in Loop: Header=BB3_35 Depth=1
	ld.d	$t0, $a7, 8
	st.d	$a7, $a2, 0
	beq	$t0, $a7, .LBB3_34
# %bb.38:                               # %cond.false210
                                        #   in Loop: Header=BB3_35 Depth=1
	st.d	$t0, $a6, 0
	ld.d	$a7, $a7, 0
	st.d	$a7, $t0, 0
	ld.d	$t0, $a2, 0
	ld.d	$a7, $a6, 0
	ld.d	$t1, $t0, 0
	st.d	$a7, $t1, 8
	st.d	$t0, $t0, 0
	ld.d	$a7, $a1, 0
	st.d	$t0, $t0, 8
	b	.LBB3_34
.LBB3_39:                               # %while.end264
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.bu	$a1, $fp, 32
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $fp, 33
	add.d	$a1, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a4, $a3
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$a2, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	slli.d	$a4, $a1, 3
	ldx.d	$a4, $a2, $a4
	st.d	$fp, $a0, 0
	st.w	$a1, $a3, 0
	st.d	$a4, $fp, 0
	ld.w	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	ld.d	$s8, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1160                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1168
	ret
.Lfunc_end3:
	.size	DbConvert, .Lfunc_end3-DbConvert
                                        # -- End function
	.globl	DbClose                         # -- Begin function DbClose
	.p2align	5
	.type	DbClose,@function
DbClose:                                # @DbClose
# %bb.0:                                # %entry
	beqz	$a0, .LBB4_2
# %bb.1:                                # %land.lhs.true
	ld.bu	$a1, $a0, 43
	beqz	$a1, .LBB4_3
.LBB4_2:                                # %if.end
	ret
.LBB4_3:                                # %land.lhs.true1
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB4_2
# %bb.4:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 48
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	DbClose, .Lfunc_end4-DbClose
                                        # -- End function
	.globl	DbLoad                          # -- Begin function DbLoad
	.p2align	5
	.type	DbLoad,@function
DbLoad:                                 # @DbLoad
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1248
	st.d	$ra, $sp, 1240                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1160                  # 8-byte Folded Spill
	move	$s4, $a4
	move	$fp, $a3
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$s1, $a0, 64
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a3, $zero, 4
	move	$a0, $s1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$a4, $s0
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.1:                                # %if.then
	move	$s3, $a0
	addi.d	$a0, $sp, 636
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_3
# %bb.2:                                # %lor.lhs.false
	addi.d	$a0, $sp, 639
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_53
.LBB5_3:                                # %if.then6
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %if.end9
	beqz	$s2, .LBB5_52
# %bb.5:                                # %if.then12
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 3
	move	$a0, $s1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(LexPush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	move	$s7, $zero
	pcalau12i	$a1, %got_pc_hi20(StartSym)
	ld.d	$a1, $a1, %got_pc_lo12(StartSym)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$s8, $zero, 2
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$s5, $zero, 10
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$s0, $a1, %pc_lo12(.L.str.17)
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                # %DbCreate.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	st.b	$zero, $s4, 42
	st.d	$zero, $s4, 48
.LBB5_7:                                # %if.end200
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a2, $s2, 80
	bstrpick.d	$a0, $s3, 19, 0
	addi.d	$a4, $s1, 32
	addi.d	$a3, $s1, 64
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a5, $s0
	move	$a6, $zero
	move	$a7, $s7
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexNextTokenPos)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #     Child Loop BB5_27 Depth 2
                                        #       Child Loop BB5_28 Depth 3
                                        #     Child Loop BB5_32 Depth 2
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 1152
	ori	$a2, $zero, 102
	bne	$a1, $a2, .LBB5_39
# %bb.9:                                # %while.body
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.wu	$s3, $a0, 36
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 1152
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 1152
	move	$s2, $a0
	addi.d	$s6, $a0, 32
	bnez	$a1, .LBB5_11
# %bb.10:                               # %lor.lhs.false25
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $s2, 32
	beq	$a0, $s8, .LBB5_12
.LBB5_11:                               # %if.then31
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %if.end35
                                        #   in Loop: Header=BB5_8 Depth=1
	beqz	$fp, .LBB5_21
# %bb.13:                               # %for.cond.preheader
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $fp, 8
	bne	$a0, $fp, .LBB5_16
.LBB5_14:                               # %if.then77
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $s2, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a6, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 7
	ori	$a3, $zero, 1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	bne	$a1, $s2, .LBB5_27
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_15:                               # %for.inc70
                                        #   in Loop: Header=BB5_16 Depth=2
	ld.d	$a0, $a0, 8
	beq	$a0, $fp, .LBB5_14
.LBB5_16:                               # %for.cond49.preheader
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
	move	$a1, $a0
	.p2align	4, , 16
.LBB5_17:                               # %for.cond49
                                        #   Parent Loop BB5_8 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB5_17
# %bb.18:                               # %for.cond49
                                        #   in Loop: Header=BB5_16 Depth=2
	bne	$a2, $s8, .LBB5_15
# %bb.19:                               # %land.lhs.true64
                                        #   in Loop: Header=BB5_16 Depth=2
	ld.d	$a1, $a1, 80
	ld.d	$a2, $s2, 80
	bne	$a1, $a2, .LBB5_15
	.p2align	4, , 16
# %bb.20:                               # %if.end83
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a1, $s2, 8
	bne	$a1, $s2, .LBB5_27
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_21:                               # %if.then38
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 8
	bne	$a1, $s2, .LBB5_27
	.p2align	4, , 16
.LBB5_22:                               # %if.then149
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $s2, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	ori	$a0, $zero, 33
	ori	$a1, $zero, 8
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB5_23:                               # %if.end154
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	bgeu	$a0, $s8, .LBB5_33
# %bb.24:                               # %if.end170
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.bu	$a0, $s1, 64
	beqz	$a0, .LBB5_34
.LBB5_25:                               # %if.end179
                                        #   in Loop: Header=BB5_8 Depth=1
	bnez	$s4, .LBB5_7
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_26:                               # %for.inc142
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.d	$a1, $a1, 8
	beq	$a1, $s2, .LBB5_22
.LBB5_27:                               # %for.cond94.preheader
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_28 Depth 3
	move	$a2, $a1
	.p2align	4, , 16
.LBB5_28:                               # %for.cond94
                                        #   Parent Loop BB5_8 Depth=1
                                        #     Parent Loop BB5_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $a2, 16
	ld.bu	$a0, $a2, 32
	beqz	$a0, .LBB5_28
# %bb.29:                               # %for.cond94
                                        #   in Loop: Header=BB5_27 Depth=2
	bne	$a0, $s5, .LBB5_26
# %bb.30:                               # %land.lhs.true111
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.d	$a0, $a2, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_26
# %bb.31:                               # %land.lhs.true116
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.d	$a0, $a2, 8
	beq	$a0, $a2, .LBB5_26
	.p2align	4, , 16
.LBB5_32:                               # %for.cond129
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_32
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_33:                               # %if.then167
                                        #   in Loop: Header=BB5_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 9
	ori	$a3, $zero, 1
	move	$a4, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 64
	bnez	$a0, .LBB5_25
.LBB5_34:                               # %if.then176
                                        #   in Loop: Header=BB5_8 Depth=1
	ori	$a0, $zero, 33
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB5_7
.LBB5_35:                               # %if.then182
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 636
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 636
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, -3
	bgtz	$s4, .LBB5_37
# %bb.36:                               # %if.then191
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %if.end193
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$a0, $sp, 636
	stx.b	$zero, $s4, $a0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 636
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	bltu	$a0, $s8, .LBB5_6
# %bb.38:                               # %if.then.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_6
.LBB5_39:                               # %while.cond
	ori	$a2, $zero, 105
	beq	$a1, $a2, .LBB5_41
# %bb.40:                               # %if.then217
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a5, $a0, %pc_lo12(.L.str.38)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %if.end220
	pcaddu18i	$ra, %call36(LexPop)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	bnez	$s4, .LBB5_47
# %bb.42:                               # %if.then223
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 636
	addi.d	$s0, $sp, 636
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 636
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, -3
	bgtz	$s1, .LBB5_44
# %bb.43:                               # %if.then233
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a5, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_44:                               # %if.end235
	stx.b	$zero, $s1, $s0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 636
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB5_46
# %bb.45:                               # %if.then.i147
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_46:                               # %DbCreate.exit151
	st.b	$zero, $s4, 42
	st.d	$zero, $s4, 48
.LBB5_47:                               # %if.end243
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(DbConvert)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB5_50
# %bb.48:                               # %lor.lhs.false247
	addi.d	$a0, $sp, 636
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_50
# %bb.49:                               # %lor.lhs.false252
	addi.d	$a0, $sp, 639
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_51
.LBB5_50:                               # %if.then256
	addi.d	$s0, $s4, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_51:                               # %if.end261
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_53
.LBB5_52:
	move	$s3, $zero
.LBB5_53:                               # %if.end261
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 636
	addi.d	$s0, $sp, 636
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 636
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, -3
	bgtz	$s1, .LBB5_55
# %bb.54:                               # %if.then271
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a5, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_55:                               # %if.end273
	stx.b	$zero, $s1, $s0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 636
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 42
	st.b	$s4, $s2, 43
	beqz	$fp, .LBB5_63
# %bb.56:                               # %if.then285
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB5_58
# %bb.57:                               # %if.then291
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a5, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %if.end293
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB5_60
# %bb.59:                               # %if.else306
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB5_61
.LBB5_60:                               # %if.then304
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_61:                               # %cond.end357
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$fp, $a4, 0
	beqz	$a0, .LBB5_63
# %bb.62:                               # %cond.false366
	ld.d	$a2, $fp, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB5_63:                               # %if.end392
	beqz	$s3, .LBB5_103
# %bb.64:                               # %if.end397
	addi.d	$a0, $sp, 636
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_102
# %bb.65:                               # %while.body403.lr.ph
	ld.bu	$a1, $sp, 636
	ori	$a0, $zero, 48
	move	$a2, $zero
	bne	$a1, $a0, .LBB5_100
# %bb.66:                               # %while.body403.lr.ph
	ld.bu	$a1, $sp, 637
	bne	$a1, $a0, .LBB5_100
# %bb.67:                               # %if.end414.preheader
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$s5, $a0, %pc_lo12(.L.str.43)
	addi.d	$s8, $sp, 636
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s6, $a0, %pc_lo12(.L.str.46)
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2048
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 2
	ori	$a1, $zero, 1
.LBB5_68:                               # %if.end414
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_69 Depth 2
                                        #     Child Loop BB5_73 Depth 2
                                        #       Child Loop BB5_75 Depth 3
                                        #     Child Loop BB5_79 Depth 2
                                        #     Child Loop BB5_82 Depth 2
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 636
	move	$a1, $s5
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	addi.d	$a0, $sp, 636
	addi.d	$a2, $sp, 1148
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 9
	ori	$a0, $zero, 9
	ldx.bu	$a1, $a0, $s8
	andi	$a1, $a1, 223
	beqz	$a1, .LBB5_70
	.p2align	4, , 16
.LBB5_69:                               # %for.inc435
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a0, 1
	addi.w	$s0, $s0, 1
	ldx.bu	$a1, $a0, $s8
	andi	$a1, $a1, 223
	bnez	$a1, .LBB5_69
.LBB5_70:                               # %for.end437
                                        #   in Loop: Header=BB5_68 Depth=1
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	beqz	$fp, .LBB5_78
# %bb.71:                               # %if.else479
                                        #   in Loop: Header=BB5_68 Depth=1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s8, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	addi.d	$a2, $sp, 124
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	b	.LBB5_73
	.p2align	4, , 16
.LBB5_72:                               # %if.end514
                                        #   in Loop: Header=BB5_73 Depth=2
	ld.d	$a0, $s4, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 124
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_84
.LBB5_73:                               # %for.cond488
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_75 Depth 3
	ld.d	$s0, $s0, 8
	beq	$s0, $fp, .LBB5_104
# %bb.74:                               # %for.cond495.preheader
                                        #   in Loop: Header=BB5_73 Depth=2
	move	$s4, $s0
	.p2align	4, , 16
.LBB5_75:                               # %for.cond495
                                        #   Parent Loop BB5_68 Depth=1
                                        #     Parent Loop BB5_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB5_75
# %bb.76:                               # %for.cond495
                                        #   in Loop: Header=BB5_73 Depth=2
	beq	$a0, $s1, .LBB5_72
# %bb.77:                               # %if.then512
                                        #   in Loop: Header=BB5_73 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a5, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB5_72
.LBB5_78:                               # %if.then440
                                        #   in Loop: Header=BB5_68 Depth=1
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 0
	move	$s5, $zero
	ori	$s4, $zero, 1
	ldx.bu	$a0, $s0, $s8
	beqz	$a0, .LBB5_81
	.p2align	4, , 16
.LBB5_79:                               # %while.cond441
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB5_81
# %bb.80:                               # %while.body454
                                        #   in Loop: Header=BB5_79 Depth=2
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	add.d	$a0, $s8, $s0
	addi.d	$a2, $sp, 124
	move	$a1, $s6
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 124
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.d	$a0, $sp, 124
	pcaddu18i	$ra, %call36(SearchSym)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $sp, 124
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s0, $s0, $a0
	addi.w	$s4, $s4, 1
	addi.d	$s5, $s5, 1
	ldx.bu	$a0, $s0, $s8
	bnez	$a0, .LBB5_79
.LBB5_81:                               # %while.end471
                                        #   in Loop: Header=BB5_68 Depth=1
	ori	$a0, $zero, 1
	beq	$s4, $a0, .LBB5_83
	.p2align	4, , 16
.LBB5_82:                               # %for.body475
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	addi.w	$s5, $s5, -1
	bnez	$s5, .LBB5_82
.LBB5_83:                               #   in Loop: Header=BB5_68 Depth=1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bnez	$s7, .LBB5_85
	b	.LBB5_104
.LBB5_84:                               # %if.then521
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$s7, $s4, 80
	beqz	$s7, .LBB5_104
.LBB5_85:                               # %if.end529
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$s7, $a0, .LBB5_104
# %bb.86:                               # %if.then535
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $s7, 88
	bnez	$a0, .LBB5_88
# %bb.87:                               # %if.then538
                                        #   in Loop: Header=BB5_68 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
.LBB5_88:                               # %if.end539
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB5_90
# %bb.89:                               # %if.else553
                                        #   in Loop: Header=BB5_68 Depth=1
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB5_91
.LBB5_90:                               # %if.then551
                                        #   in Loop: Header=BB5_68 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB5_91:                               # %if.end562
                                        #   in Loop: Header=BB5_68 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	ld.d	$a5, $s2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a0, $a3, 0
	st.d	$a0, $a7, 8
	ld.d	$a0, $a2, 0
	ld.d	$a2, $s7, 88
	st.d	$a0, $a3, 0
	st.d	$a2, $a4, 0
	beqz	$a2, .LBB5_94
# %bb.92:                               # %if.end562
                                        #   in Loop: Header=BB5_68 Depth=1
	beqz	$a0, .LBB5_94
# %bb.93:                               # %cond.false618
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
.LBB5_94:                               # %cond.end642
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $s2, 0
	ld.b	$a1, $sp, 1148
	st.b	$a1, $a0, 33
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.b	$a1, $a0, 34
	beqz	$a1, .LBB5_96
# %bb.95:                               # %if.then650
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.h	$a0, $s7, 41
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	st.h	$a0, $s7, 41
.LBB5_96:                               # %if.end667
                                        #   in Loop: Header=BB5_68 Depth=1
	addi.d	$a0, $sp, 636
	ori	$a1, $zero, 512
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_105
# %bb.97:                               # %while.body403
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.bu	$a0, $sp, 636
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ori	$a2, $zero, 48
	bne	$a0, $a2, .LBB5_99
# %bb.98:                               # %while.body403
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.bu	$a0, $sp, 637
	beq	$a0, $a2, .LBB5_68
.LBB5_99:                               # %while.end670.thread.loopexit
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
.LBB5_100:                              # %while.end670.thread
	ld.bu	$a0, $s2, 43
	beqz	$a0, .LBB5_106
# %bb.101:                              # %if.else679
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a2, $sp, 636
	addi.d	$a3, $sp, 120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(ReadLines)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 120
	st.d	$a0, $s2, 48
	st.h	$a1, $s2, 40
	pcaddu18i	$ra, %call36(SortLines)
	jirl	$ra, $ra, 0
	b	.LBB5_107
.LBB5_102:
	move	$a2, $zero
	ld.bu	$a0, $s2, 43
	beqz	$a0, .LBB5_106
.LBB5_103:                              # %if.then395
	st.d	$zero, $s2, 48
	b	.LBB5_107
.LBB5_104:                              # %if.else659
	addi.d	$fp, $s2, 32
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a2, $a0, %pc_lo12(.L.str.48)
	ori	$a0, $zero, 33
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	move	$a4, $fp
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	st.b	$zero, $s2, 43
	st.d	$zero, $s2, 48
	b	.LBB5_107
.LBB5_105:                              # %while.end670.loopexit
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.bu	$a0, $s2, 43
	bnez	$a0, .LBB5_103
.LBB5_106:                              # %if.else691
	st.d	$s3, $s2, 48
	st.h	$a2, $s2, 40
.LBB5_107:                              # %cleanup
	move	$a0, $s2
	ld.d	$s8, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1240                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1248
	ret
.Lfunc_end5:
	.size	DbLoad, .Lfunc_end5-DbLoad
                                        # -- End function
	.globl	DbRetrieve                      # -- Begin function DbRetrieve
	.p2align	5
	.type	DbRetrieve,@function
DbRetrieve:                             # @DbRetrieve
# %bb.0:                                # %entry
	move	$t0, $a0
	ld.bu	$a0, $a0, 42
	beqz	$a0, .LBB6_13
# %bb.1:                                # %lor.lhs.false
	ld.d	$a0, $t0, 48
	beqz	$a0, .LBB6_13
# %bb.2:                                # %for.cond.preheader
	addi.d	$sp, $sp, -1712
	st.d	$ra, $sp, 1704                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1696                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1688                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1680                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1672                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1656                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1624                  # 8-byte Folded Spill
	move	$s8, $a7
	move	$s7, $a5
	move	$s1, $a3
	move	$s6, $a2
	ld.d	$s3, $t0, 8
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beq	$s3, $t0, .LBB6_18
# %bb.3:                                # %for.cond4.preheader.preheader
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $s7
	move	$s7, $zero
	ori	$s8, $zero, 17
	ori	$s4, $zero, 140
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s5, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$fp, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s1, $a0, %pc_lo12(.L.str.14)
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %for.inc42
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$s3, $s3, 8
	beq	$s3, $t0, .LBB6_14
.LBB6_5:                                # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	move	$s2, $s3
	.p2align	4, , 16
.LBB6_6:                                # %for.cond4
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB6_6
# %bb.7:                                # %for.cond4
                                        #   in Loop: Header=BB6_5 Depth=1
	beq	$a0, $s8, .LBB6_10
# %bb.8:                                # %for.cond4
                                        #   in Loop: Header=BB6_5 Depth=1
	beq	$a0, $s4, .LBB6_10
# %bb.9:                                # %if.then22
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a4, $s5, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $fp
	move	$a3, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $s2, 32
.LBB6_10:                               # %if.end23
                                        #   in Loop: Header=BB6_5 Depth=1
	bne	$a0, $s4, .LBB6_4
# %bb.11:                               # %if.end30
                                        #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a0, $s2, 64
	ld.bu	$s2, $s3, 33
	beq	$a0, $s6, .LBB6_26
# %bb.12:                               # %if.end34
                                        #   in Loop: Header=BB6_5 Depth=1
	slt	$a0, $s2, $s7
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s7, $a0
	or	$s7, $a0, $a1
	b	.LBB6_4
.LBB6_13:
	move	$a0, $zero
	ret
.LBB6_14:                               # %if.then49.loopexit
	addi.d	$s2, $s7, 1
	move	$s7, $s0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 88
	bnez	$a0, .LBB6_16
.LBB6_15:                               # %if.then52
	move	$a0, $s6
	pcaddu18i	$ra, %call36(CrossInit)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
.LBB6_16:                               # %if.end53
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB6_19
# %bb.17:                               # %if.else65
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB6_20
.LBB6_18:
	move	$s3, $a1
	ori	$s2, $zero, 1
	ld.d	$a0, $s6, 88
	bnez	$a0, .LBB6_16
	b	.LBB6_15
.LBB6_19:                               # %if.then63
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
.LBB6_20:                               # %if.end74
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$t0, $a2, 0
	beqz	$t0, .LBB6_22
# %bb.21:                               # %cond.false94
	ld.d	$a4, $t0, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $t0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a6, $a0, 0
	ld.d	$a5, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a5, 8
.LBB6_22:                               # %cond.end116
	ld.d	$a3, $s6, 88
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB6_25
# %bb.23:                               # %cond.end116
	beqz	$a0, .LBB6_25
# %bb.24:                               # %cond.false126
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB6_25:                               # %cond.end150
	ld.d	$a0, $t0, 0
	st.b	$s2, $a0, 33
	st.b	$zero, $a0, 34
	move	$fp, $t0
	b	.LBB6_27
.LBB6_26:
	move	$s7, $s0
	move	$fp, $t0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB6_27:                               # %if.end157
	sltui	$a0, $s3, 1
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	andi	$a3, $s2, 255
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	addi.d	$a0, $sp, 88
	move	$a4, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 43
	ld.d	$s4, $fp, 48
	beqz	$a0, .LBB6_31
# %bb.28:                               # %if.then165
	ld.hu	$a0, $fp, 40
	beqz	$a0, .LBB6_60
# %bb.29:                               # %if.then165
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_51
# %bb.30:
	move	$fp, $zero
	b	.LBB6_59
.LBB6_31:                               # %if.else181
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ori	$a2, $zero, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 48
	ld.hu	$s3, $fp, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	addi.w	$s8, $a0, -1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	bge	$s3, $a1, .LBB6_48
# %bb.32:                               # %while.body.i44.preheader
	ori	$s6, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s7, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s5, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	pcalau12i	$a1, %got_pc_hi20(UseCollate)
	ld.d	$a1, $a1, %got_pc_lo12(UseCollate)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB6_34
	.p2align	4, , 16
.LBB6_33:                               # %if.then33.i
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.w	$s8, $fp, -1
	addi.w	$a0, $s3, 0
	blt	$s8, $a0, .LBB6_48
.LBB6_34:                               # %while.body.i44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_35 Depth 2
	add.d	$a0, $s8, $s3
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$fp, $a0, 1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB6_35:                               # %do.body.i
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$fp, $fp, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB6_35
# %bb.36:                               # %do.end.i
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.w	$a0, $s8, 1
	addi.w	$s2, $s3, 0
	bne	$a0, $fp, .LBB6_38
# %bb.37:                               # %if.then.i
                                        #   in Loop: Header=BB6_34 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	move	$fp, $s3
.LBB6_38:                               # %if.end.i48
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.d	$a0, $sp, 600
	ori	$a1, $zero, 512
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	addi.w	$s0, $fp, 0
	move	$s1, $a0
	bge	$s0, $s2, .LBB6_43
# %bb.39:                               # %if.then14.i
                                        #   in Loop: Header=BB6_34 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s1, -1
	blt	$s0, $s2, .LBB6_44
.LBB6_40:                               # %if.then19.i
                                        #   in Loop: Header=BB6_34 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	blt	$s8, $s2, .LBB6_45
.LBB6_41:                               # %if.end26.i
                                        #   in Loop: Header=BB6_34 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB6_46
.LBB6_42:                               # %cond.true.i51
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 600
	pcaddu18i	$ra, %call36(strcollcmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB6_47
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_43:                               # %if.end16.i
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.w	$s2, $s1, -1
	bge	$s0, $s2, .LBB6_40
.LBB6_44:                               # %if.end21.i
                                        #   in Loop: Header=BB6_34 Depth=1
	bge	$s8, $s2, .LBB6_41
.LBB6_45:                               # %if.then24.i
                                        #   in Loop: Header=BB6_34 Depth=1
	ld.d	$a4, $s7, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_42
.LBB6_46:                               # %cond.false.i56
                                        #   in Loop: Header=BB6_34 Depth=1
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 600
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB6_33
.LBB6_47:                               #   in Loop: Header=BB6_34 Depth=1
	move	$s3, $s1
	addi.w	$a0, $s3, 0
	bge	$s8, $a0, .LBB6_34
.LBB6_48:                               # %while.end.i54
	addi.w	$a1, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB6_60
# %bb.49:                               # %SearchFile.exit
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 600
	ori	$a1, $zero, 512
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	addi.d	$a0, $sp, 600
	addi.d	$a2, $sp, 1112
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 1112
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_60
# %bb.50:                               # %if.end197
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 600
	addi.d	$a5, $sp, 88
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB6_63
.LBB6_51:                               # %while.body.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(UseCollate)
	ld.d	$s2, $a1, %got_pc_lo12(UseCollate)
	ld.w	$a1, $s2, 0
	addi.d	$s1, $a0, -2
	move	$fp, $zero
	beqz	$a1, .LBB6_53
# %bb.52:                               # %while.body.i.preheader
	ori	$s3, $zero, 1
	ori	$a2, $zero, 1
	b	.LBB6_55
	.p2align	4, , 16
.LBB6_53:                               # %while.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s0, $a0, 1
	slli.d	$a0, $s0, 3
	ldx.d	$a1, $s4, $a0
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	slti	$a0, $a0, 1
	addi.d	$a1, $s0, -1
	addi.w	$a2, $s0, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a3, $fp, $a0
	or	$fp, $a3, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a1, $a0
	addi.w	$s1, $a0, 0
	bge	$s1, $fp, .LBB6_53
	b	.LBB6_59
	.p2align	4, , 16
.LBB6_54:                               # %if.then7.i
                                        #   in Loop: Header=BB6_55 Depth=1
	addi.d	$s1, $s5, -1
	addi.w	$a0, $fp, 0
	addi.w	$a1, $s1, 0
	blt	$a1, $a0, .LBB6_59
.LBB6_55:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$s5, $a0, 1
	slli.d	$a0, $s5, 3
	ldx.d	$a1, $s4, $a0
	addi.d	$a0, $sp, 88
	beqz	$a2, .LBB6_57
# %bb.56:                               # %cond.true.i
                                        #   in Loop: Header=BB6_55 Depth=1
	pcaddu18i	$ra, %call36(strcollcmp)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	bge	$a0, $s3, .LBB6_58
	b	.LBB6_54
	.p2align	4, , 16
.LBB6_57:                               # %cond.false.i
                                        #   in Loop: Header=BB6_55 Depth=1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	blez	$a0, .LBB6_54
.LBB6_58:                               # %if.else.i
                                        #   in Loop: Header=BB6_55 Depth=1
	addi.d	$fp, $s5, 1
	addi.w	$a0, $fp, 0
	addi.w	$a1, $s1, 0
	bge	$a1, $a0, .LBB6_55
.LBB6_59:                               # %while.end.i
	addi.w	$a0, $fp, 0
	slli.d	$s1, $a0, 3
	ldx.d	$a0, $s4, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	addi.d	$a2, $sp, 1112
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 1112
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_62
.LBB6_60:                               # %SearchLines.exit.thread
	move	$a0, $zero
.LBB6_61:
	ld.d	$s8, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1672                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1680                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1688                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1696                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1704                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1712
	ret
.LBB6_62:                               # %if.end173
	ld.d	$a0, $a1, 48
	ldx.d	$a0, $a0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	addi.d	$a5, $sp, 88
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	move	$a4, $s8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $fp, 1
.LBB6_63:                               # %if.end203
	ld.d	$a1, $sp, 1712
	ld.hu	$a2, $sp, 88
	ori	$a3, $zero, 46
	st.d	$a0, $a1, 0
	bne	$a2, $a3, .LBB6_65
# %bb.64:                               # %if.then208
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a0, 64
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB6_65:                               # %if.end212
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(FileNum)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.h	$a0, $s7, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB6_61
# %bb.66:                               # %if.then218
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 88
	ori	$a3, $zero, 3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	st.h	$a1, $s7, 0
	b	.LBB6_61
.Lfunc_end6:
	.size	DbRetrieve, .Lfunc_end6-DbRetrieve
                                        # -- End function
	.globl	DbRetrieveNext                  # -- Begin function DbRetrieveNext
	.p2align	5
	.type	DbRetrieveNext,@function
DbRetrieveNext:                         # @DbRetrieveNext
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
	move	$s0, $a0
	ld.bu	$a0, $a0, 42
	move	$s2, $a7
	move	$s3, $a6
	move	$s1, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$fp, $a2
	move	$s6, $a1
	beqz	$a0, .LBB7_2
# %bb.1:                                # %if.end
	ld.d	$a0, $s0, 48
	bnez	$a0, .LBB7_3
	b	.LBB7_19
.LBB7_2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a5, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB7_19
.LBB7_3:                                # %if.end2
	ld.d	$s7, $sp, 1136
	ld.bu	$a2, $s0, 43
	ld.d	$a1, $s7, 0
	beqz	$a2, .LBB7_15
# %bb.4:                                # %if.then5
	ld.hu	$a2, $s0, 40
	bge	$a1, $a2, .LBB7_19
# %bb.5:                                # %if.end10
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	sltui	$a1, $a1, 1
	st.w	$a1, $s6, 0
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	addi.d	$a2, $sp, 20
	addi.d	$a7, $sp, 24
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	addi.d	$a0, $a0, 1
	ld.hu	$a1, $sp, 24
	ori	$a2, $zero, 46
	st.d	$a0, $s7, 0
	bne	$a1, $a2, .LBB7_7
.LBB7_6:                                # %if.then49
	addi.d	$a1, $s0, 64
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %if.end53
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(FileNum)
	jirl	$ra, $ra, 0
	st.h	$a0, $s1, 0
	beqz	$a0, .LBB7_20
# %bb.8:                                # %if.end62
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB7_21
.LBB7_9:                                # %for.cond68.preheader.lr.ph
	ld.w	$a1, $sp, 20
	ori	$a2, $zero, 140
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %for.inc87
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $a0, 8
	beq	$a0, $s0, .LBB7_22
.LBB7_11:                               # %for.cond68.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	move	$s1, $a0
	.p2align	4, , 16
.LBB7_12:                               # %for.cond68
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a3, $s1, 32
	beqz	$a3, .LBB7_12
# %bb.13:                               # %for.cond68
                                        #   in Loop: Header=BB7_11 Depth=1
	bne	$a3, $a2, .LBB7_10
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a3, $a0, 33
	bne	$a1, $a3, .LBB7_10
	b	.LBB7_24
.LBB7_15:                               # %if.else
	bnez	$a1, .LBB7_17
# %bb.16:                               # %cond.true
	ld.hu	$a1, $s0, 40
.LBB7_17:                               # %cond.end
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 48
	addi.d	$a0, $sp, 536
	ori	$a1, $zero, 512
	addi.d	$s8, $sp, 536
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_19
# %bb.18:                               # %if.end32
	ld.bu	$a0, $sp, 536
	addi.d	$a0, $a0, -48
	sltui	$a0, $a0, 1
	st.w	$a0, $s6, 0
	add.d	$a0, $s8, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	addi.d	$a2, $sp, 20
	addi.d	$a7, $sp, 24
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 24
	ori	$a2, $zero, 46
	st.d	$a0, $s7, 0
	bne	$a1, $a2, .LBB7_7
	b	.LBB7_6
.LBB7_19:
	move	$a0, $zero
	b	.LBB7_25
.LBB7_20:                               # %if.then59
	addi.d	$a2, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 24
	ori	$a3, $zero, 3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	st.h	$a0, $s1, 0
	ld.d	$a0, $s0, 8
	bne	$a0, $s0, .LBB7_9
.LBB7_21:
                                        # implicit-def: $r24
.LBB7_22:                               # %if.end96
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a5, $a0, %pc_lo12(.L.str.53)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 140
	beq	$a0, $a1, .LBB7_24
# %bb.23:                               # %if.then102
	ld.d	$a4, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a5, $a0, %pc_lo12(.L.str.54)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_24:                               # %if.end104
	ld.d	$a0, $s1, 64
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
.LBB7_25:                               # %cleanup
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.Lfunc_end7:
	.size	DbRetrieveNext, .Lfunc_end7-DbRetrieveNext
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"DbCreate: !is_word(type(x))"
	.size	.L.str.1, 28

	.type	DbInsert.extra_seq,@object      # @DbInsert.extra_seq
	.local	DbInsert.extra_seq
	.comm	DbInsert.extra_seq,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"DbInsert: db!"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DbInsert: null tag!"
	.size	.L.str.3, 20

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"DbInsert: null seq!"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"DbInsert: insert into reading database"
	.size	.L.str.5, 39

	.type	DbCheckTableInit,@object        # @DbCheckTableInit
	.local	DbCheckTableInit
	.comm	DbCheckTableInit,1,4
	.type	DbCheckTable,@object            # @DbCheckTable
	.local	DbCheckTable
	.comm	DbCheckTable,8,8
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"cross reference %s&&%s used previously, at%s"
	.size	.L.str.6, 45

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"cross reference %s&&%s used previously"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"database file name %s%s is too long"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	".lix"
	.size	.L.str.9, 5

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"w"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"cannot write to database file %s"
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.space	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"."
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SymToNum: yy!"
	.size	.L.str.14, 14

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s%d&%s\t%s\t%s\t%ld\t%d\t%s\n"
	.size	.L.str.16, 25

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"0"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"DbConvert: reading database"
	.size	.L.str.18, 28

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	".li"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"00 %s %s\n"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.21, 40

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"database index file"
	.size	.L.str.22, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"DbConvert: y!"
	.size	.L.str.23, 14

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%s %d %s\n"
	.size	.L.str.24, 10

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"00target"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"00symbol"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" "
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".ld"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"syntax error in database file %s"
	.size	.L.str.29, 33

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"DbLoad: create && symbs == nilobj!"
	.size	.L.str.30, 35

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"%s found in database but not declared in %s line"
	.size	.L.str.31, 49

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"@Database"
	.size	.L.str.32, 10

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"database symbol %s has no tag"
	.size	.L.str.33, 30

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"database symbol tag is not a simple word"
	.size	.L.str.34, 41

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"database symbol tag is an empty word"
	.size	.L.str.35, 37

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"DbLoad: FileName(dfnum) (1)!"
	.size	.L.str.36, 29

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%s or end of file expected here"
	.size	.L.str.37, 32

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"{"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"DbLoad: FileName(dfnum) (2)!"
	.size	.L.str.39, 29

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"cannot open database file %s"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"DbLoad: FileName(index_fnum)!"
	.size	.L.str.41, 30

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"DbLoad: type(symbs)!"
	.size	.L.str.42, 21

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"00target "
	.size	.L.str.43, 10

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"00target %d"
	.size	.L.str.44, 12

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"00symbol %d"
	.size	.L.str.45, 12

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%s"
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"DbLoad: type(y) != CLOSURE!"
	.size	.L.str.47, 28

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"undefined symbol in database file %s (line %d)"
	.size	.L.str.48, 47

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%s%d&%s"
	.size	.L.str.49, 8

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%*[^\t]\t%[^\t]\t%*[^\t]\t%ld\t%d\t%[^\n]"
	.size	.L.str.50, 33

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"DbRetrieveNext: not reading"
	.size	.L.str.51, 28

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"%d&%[^\t]\t%[^\t]\t%*[^\t]\t%ld\t%d\t%[^\n]"
	.size	.L.str.52, 35

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"NumToSym: no sym"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"NumToSym: y!"
	.size	.L.str.54, 13

	.type	OldCrossDb,@object              # @OldCrossDb
	.bss
	.globl	OldCrossDb
	.p2align	3, 0x0
OldCrossDb:
	.dword	0
	.size	OldCrossDb, 8

	.type	NewCrossDb,@object              # @NewCrossDb
	.globl	NewCrossDb
	.p2align	3, 0x0
NewCrossDb:
	.dword	0
	.size	NewCrossDb, 8

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"run out of memory enlarging dbcheck table"
	.size	.L.str.55, 42

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Dbcheck: entry inserted twice"
	.size	.L.str.56, 30

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"dtab_rehash: ACAT!"
	.size	.L.str.57, 19

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"%[^\t]"
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"SearchFile: l > mid!"
	.size	.L.str.59, 21

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SearchFile: mid >= mid_end!"
	.size	.L.str.60, 28

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SearchFile: mid_end > r!"
	.size	.L.str.61, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DbCheckTable
