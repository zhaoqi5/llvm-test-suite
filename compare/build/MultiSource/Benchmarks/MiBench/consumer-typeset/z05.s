	.file	"z05.c"
	.text
	.globl	ReadPrependDef                  # -- Begin function ReadPrependDef
	.p2align	5
	.type	ReadPrependDef,@function
ReadPrependDef:                         # @ReadPrependDef
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 102
	st.d	$a0, $sp, 0
	bne	$a1, $a2, .LBB0_3
# %bb.1:                                # %if.end
	addi.d	$a0, $sp, 0
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	ori	$a1, $zero, 2
	addi.d	$a6, $a0, 32
	bgeu	$a2, $a1, .LBB0_4
# %bb.2:                                # %if.end41
	addi.d	$a0, $a0, 64
	addi.d	$a2, $fp, -114
	sltui	$a2, $a2, 1
	sub.d	$a4, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a3, $zero, 6
	move	$a2, $a6
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	b	.LBB0_5
.LBB0_3:                                # %if.then
	addi.d	$a4, $a0, 32
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a5, $a1, %pc_lo12(.L.str.1)
	move	$fp, $a0
	ori	$a0, $zero, 5
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $fp, 32
	st.d	$fp, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $fp, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $fp, 0
	ld.w	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
	b	.LBB0_5
.LBB0_4:                                # %if.then37
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a2, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a5, $a1, %pc_lo12(.L.str.1)
	move	$fp, $a0
	ori	$a0, $zero, 5
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	move	$a4, $a6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	ReadPrependDef, .Lfunc_end0-ReadPrependDef
                                        # -- End function
	.globl	ReadDatabaseDef                 # -- Begin function ReadDatabaseDef
	.p2align	5
	.type	ReadDatabaseDef,@function
ReadDatabaseDef:                        # @ReadDatabaseDef
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s6, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s5, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s5, $a1
	beqz	$s0, .LBB1_2
# %bb.1:                                # %if.else7
	alsl.d	$a0, $a0, $s5, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB1_3
.LBB1_2:                                # %if.then5
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB1_3:                                # %if.end13
	ori	$a0, $zero, 17
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s1, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$fp, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s7, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a0, %got_pc_lo12(zz_tmp)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB1_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.bu	$a0, $a0, 32
	st.d	$s2, $sp, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_8
# %bb.5:                                # %while.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a4, $s2, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB1_13
# %bb.6:                                # %land.rhs
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.bu	$a0, $s2, 64
	ori	$a1, $zero, 64
	bne	$a0, $a1, .LBB1_19
# %bb.7:                                # %if.else145
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a5, $s2, 64
	ori	$a0, $zero, 5
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s2, 33
	add.d	$a0, $s6, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s5, $a1
	st.d	$s2, $s7, 0
	st.w	$a0, $s4, 0
	st.d	$a1, $s2, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s5, $a0
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_8:                                # %if.then45
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB1_10
# %bb.9:                                # %if.else59
                                        #   in Loop: Header=BB1_4 Depth=1
	st.d	$a0, $s7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB1_11
.LBB1_10:                               # %if.then57
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %cond.end110
                                        #   in Loop: Header=BB1_4 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	st.d	$a0, $fp, 0
	st.d	$s0, $s7, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s2, $s7, 0
	beqz	$a0, .LBB1_4
# %bb.12:                               # %cond.false119
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB1_4
.LBB1_13:                               # %while.cond
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_19
# %bb.14:                               # %if.end217
	ld.d	$a0, $s0, 8
	bne	$a0, $s0, .LBB1_16
# %bb.15:                               # %if.then223
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %if.end226
	addi.d	$a0, $sp, 32
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	addi.d	$s2, $s1, 32
	bgeu	$a0, $a1, .LBB1_20
# %bb.17:                               # %if.end244
	addi.d	$a0, $s1, 64
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_23
# %bb.18:                               # %if.then248
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a6, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 47
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_19:                               # %if.then184
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a6, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s2, 33
	add.d	$a0, $s6, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s5, $a1
	st.d	$s2, $s7, 0
	st.w	$a0, $s4, 0
	st.d	$a1, $s2, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s5, $a0
	b	.LBB1_22
.LBB1_20:                               # %if.then240
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_21:                               # %cleanup
	move	$a0, $s1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %cleanup
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB1_23:                               # %if.end252
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB1_22
# %bb.24:                               # %if.then258
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, -116
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(InMemoryDbIndexes)
	ld.d	$a1, $a1, %got_pc_lo12(InMemoryDbIndexes)
	ld.w	$a4, $a1, 0
	ori	$a1, $zero, 4
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(DbLoad)
	jirl	$ra, $ra, 0
	b	.LBB1_22
.Lfunc_end1:
	.size	ReadDatabaseDef, .Lfunc_end1-ReadDatabaseDef
                                        # -- End function
	.globl	ReadDefinitions                 # -- Begin function ReadDefinitions
	.p2align	5
	.type	ReadDefinitions,@function
ReadDefinitions:                        # @ReadDefinitions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	move	$s8, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 88
	ori	$s6, $zero, 143
	ori	$s4, $zero, 2
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s2, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s0, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3071
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB2_5
.LBB2_1:                                # %if.then40
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ReadPrependDef)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %while.cond.backedge.sink.split
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
.LBB2_3:                                # %while.cond.backedge.sink.split
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
.LBB2_4:                                # %while.cond.backedge.sink.split
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88
.LBB2_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_150 Depth 2
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_42 Depth 3
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_103 Depth 2
                                        #     Child Loop BB2_130 Depth 2
                                        #     Child Loop BB2_211 Depth 2
                                        #       Child Loop BB2_212 Depth 3
                                        #     Child Loop BB2_141 Depth 2
                                        #     Child Loop BB2_205 Depth 2
                                        #     Child Loop BB2_31 Depth 2
	ld.bu	$a1, $a0, 32
	addi.d	$fp, $a0, 64
	bne	$s8, $s6, .LBB2_9
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $a1, -114
	bltu	$a0, $s4, .LBB2_1
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $a1, -116
	bgeu	$a0, $s4, .LBB2_12
# %bb.8:                                # %if.then78
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ReadDatabaseDef)
	jirl	$ra, $ra, 0
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_9:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 11
	bne	$a1, $a0, .LBB2_235
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_13
# %bb.11:                               # %land.rhs
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_13
	b	.LBB2_235
.LBB2_12:                               # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 11
	bne	$a1, $a0, .LBB2_235
	.p2align	4, , 16
.LBB2_13:                               # %land.lhs.true22
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_22
# %bb.14:                               # %land.lhs.true120
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_20
# %bb.15:                               # %land.lhs.true132
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_20
# %bb.16:                               # %land.lhs.true144
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_20
# %bb.17:                               # %land.lhs.true156
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_20
# %bb.18:                               # %land.lhs.true168
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_20
# %bb.19:                               # %land.lhs.true180
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_235
	.p2align	4, , 16
.LBB2_20:                               # %if.end187
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(BodyParNotAllowed)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s0, $a1
	st.w	$a0, $s2, 0
	beqz	$s3, .LBB2_24
# %bb.21:                               # %if.else201
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$s3, $s1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_22:                               # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s5, 17
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s0, $a1
	st.w	$a0, $s2, 0
	beqz	$fp, .LBB2_29
# %bb.23:                               # %if.else7.i
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$fp, $s1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB2_30
.LBB2_24:                               # %if.then199
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s1, 0
.LBB2_25:                               # %if.end210
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 0
	ld.d	$s4, $sp, 88
	st.d	$s3, $s3, 24
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	ld.bu	$a0, $s4, 32
	ori	$s7, $zero, 1
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_28
# %bb.26:                               # %land.lhs.true229
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$fp, $s4, 64
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_40
# %bb.27:                               # %land.lhs.true529
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_147
.LBB2_28:                               #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB2_59
.LBB2_29:                               # %if.then5.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s1, 0
.LBB2_30:                               # %if.end13.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 17
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	.p2align	4, , 16
.LBB2_31:                               # %while.cond.i
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	st.d	$a0, $sp, 96
	bgeu	$a2, $s4, .LBB2_37
# %bb.32:                               # %while.body.i
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.bu	$a2, $s5, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB2_34
# %bb.33:                               # %if.else49.i
                                        #   in Loop: Header=BB2_31 Depth=2
	st.d	$a1, $s1, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a3, $a2, 0
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %if.then47.i
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s3, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB2_35:                               # %cond.end100.i
                                        #   in Loop: Header=BB2_31 Depth=2
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	st.d	$a1, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a4, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a4, 0
	st.d	$fp, $s1, 0
	ld.d	$a5, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a1, $a4, 0
	ld.d	$a5, $s1, 0
	ld.d	$a6, $a1, 0
	ld.d	$a7, $a2, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a1, 0
	ld.d	$a5, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a5, $a7, 8
	st.d	$a1, $a4, 0
	st.d	$a0, $s1, 0
	beqz	$a1, .LBB2_31
# %bb.36:                               # %cond.false109.i
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a3, $a0, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_37:                               # %while.cond.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a2, $zero, 102
	bne	$a1, $a2, .LBB2_39
# %bb.38:                               # %if.end172.i
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $sp, 96
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LanguageDefine)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_39:                               # %if.then141.i
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $a0, 32
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a2, $a1, %pc_lo12(.L.str.48)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a5, $a1, %pc_lo12(.L.str.7)
	move	$fp, $a0
	ori	$a0, $zero, 5
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $fp, 0
	b	.LBB2_3
.LBB2_40:                               # %if.then235
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s4, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s4, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s4, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	move	$s5, $zero
	.p2align	4, , 16
.LBB2_41:                               # %while.cond267
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_42 Depth 3
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	ori	$s4, $zero, 2
.LBB2_42:                               # %while.cond267
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	addi.d	$fp, $a0, 32
	bne	$a1, $s4, .LBB2_51
# %bb.43:                               # %if.then336
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a0, $a0, 80
	ld.bu	$a1, $a0, 32
	beq	$a1, $s6, .LBB2_45
# %bb.44:                               # %if.else452
                                        #   in Loop: Header=BB2_42 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 26
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	b	.LBB2_42
.LBB2_45:                               # %if.then342
                                        #   in Loop: Header=BB2_42 Depth=3
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	ld.d	$a1, $sp, 88
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$fp, $a1, 80
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB2_47
# %bb.46:                               # %if.else362
                                        #   in Loop: Header=BB2_42 Depth=3
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB2_48
.LBB2_47:                               # %if.then360
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_48:                               # %cond.end417
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a2, $s5, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$s3, $s1, 0
	ld.d	$a4, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $s1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $sp, 88
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$a2, $s1, 0
	beqz	$a2, .LBB2_42
# %bb.49:                               # %cond.end417
                                        #   in Loop: Header=BB2_42 Depth=3
	beqz	$a0, .LBB2_42
# %bb.50:                               # %cond.false426
                                        #   in Loop: Header=BB2_42 Depth=3
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_51:                               # %while.cond267
                                        #   in Loop: Header=BB2_41 Depth=2
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_57
# %bb.52:                               # %land.lhs.true285
                                        #   in Loop: Header=BB2_41 Depth=2
	addi.d	$s4, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_57
# %bb.53:                               # %land.lhs.true297
                                        #   in Loop: Header=BB2_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_57
# %bb.54:                               # %land.lhs.true309
                                        #   in Loop: Header=BB2_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_57
# %bb.55:                               # %land.rhs321
                                        #   in Loop: Header=BB2_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_57
# %bb.56:                               # %if.else486
                                        #   in Loop: Header=BB2_41 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 27
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	b	.LBB2_41
.LBB2_57:                               # %if.end821.loopexit
                                        #   in Loop: Header=BB2_5 Depth=1
	sltui	$s7, $s5, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB2_58:                               # %if.end821
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
.LBB2_59:                               # %if.end821
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s5, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s5, $s0, $a1
	st.w	$a0, $s2, 0
	ori	$s6, $zero, 2
	beqz	$s5, .LBB2_61
# %bb.60:                               # %if.else835
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$s5, $s1, 0
	ld.d	$a1, $s5, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB2_62
.LBB2_61:                               # %if.then833
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$a0, $s1, 0
.LBB2_62:                               # %if.end844
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$s4, $zero, 143
	ori	$a0, $zero, 17
	st.b	$a0, $s5, 32
	st.d	$s5, $s5, 0
	ld.d	$fp, $sp, 88
	st.d	$s5, $s5, 24
	st.d	$s5, $s5, 16
	st.d	$s5, $s5, 8
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_64
# %bb.63:                               # %land.lhs.true864
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $fp, 64
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_69
.LBB2_64:                               # %if.end1071
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s6, $sp, 88
	ld.bu	$a0, $s6, 32
	addi.d	$fp, $s6, 64
	bne	$s8, $s4, .LBB2_71
.LBB2_65:                               # %land.lhs.true1075
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$s4, $zero, 2
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_227
# %bb.66:                               # %land.lhs.true1081
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_68
# %bb.67:                               # %land.lhs.true1093
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_227
.LBB2_68:                               #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $zero
	b	.LBB2_87
.LBB2_69:                               # %if.then870
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	st.d	$a0, $sp, 88
	ori	$a3, $zero, 1
	bgeu	$a3, $a2, .LBB2_75
.LBB2_70:                               # %while.end1070
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 88
	ld.bu	$a0, $s6, 32
	addi.d	$fp, $s6, 64
	beq	$s8, $s4, .LBB2_65
.LBB2_71:                               # %if.end1102
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 145
	bne	$s8, $a1, .LBB2_86
# %bb.72:                               # %land.lhs.true1106
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$s4, $zero, 2
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_229
# %bb.73:                               # %land.lhs.true1112
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	beqz	$a0, .LBB2_87
	b	.LBB2_229
	.p2align	4, , 16
.LBB2_74:                               # %cond.end1067
                                        #   in Loop: Header=BB2_75 Depth=2
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	st.d	$a0, $sp, 88
	bgeu	$a2, $s6, .LBB2_70
.LBB2_75:                               # %land.lhs.true914
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_80
# %bb.76:                               # %land.lhs.true920
                                        #   in Loop: Header=BB2_75 Depth=2
	addi.d	$fp, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_70
# %bb.77:                               # %land.lhs.true932
                                        #   in Loop: Header=BB2_75 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_70
# %bb.78:                               # %land.lhs.true944
                                        #   in Loop: Header=BB2_75 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_70
# %bb.79:                               # %land.rhs956
                                        #   in Loop: Header=BB2_75 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_70
.LBB2_80:                               # %while.body965
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB2_82
# %bb.81:                               # %if.else979
                                        #   in Loop: Header=BB2_75 Depth=2
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_82:                               # %if.then977
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_83:                               # %cond.end1034
                                        #   in Loop: Header=BB2_75 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$s5, $s1, 0
	ld.d	$a4, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $s1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $sp, 88
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$a2, $s1, 0
	beqz	$a2, .LBB2_74
# %bb.84:                               # %cond.end1034
                                        #   in Loop: Header=BB2_75 Depth=2
	beqz	$a0, .LBB2_74
# %bb.85:                               # %cond.false1043
                                        #   in Loop: Header=BB2_75 Depth=2
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	b	.LBB2_74
.LBB2_86:                               # %if.end1121
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s8, $zero
	ori	$s4, $zero, 2
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_88
	.p2align	4, , 16
.LBB2_87:                               # %land.lhs.true1127
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_135
.LBB2_88:                               # %if.else1144
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88
	ori	$fp, $zero, 1
	beqz	$s8, .LBB2_92
# %bb.89:                               # %land.lhs.true1179
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_92
# %bb.90:                               # %land.lhs.true1185
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s6, $a0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_170
# %bb.91:                               #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s6
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	addi.d	$a4, $a0, 32
	bltu	$a1, $s4, .LBB2_93
	b	.LBB2_228
.LBB2_92:                               #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	addi.d	$a4, $a0, 32
	bgeu	$a1, $s4, .LBB2_228
.LBB2_93:                               # %if.end1239
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $a0, 64
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a1, $s8
	move	$a2, $a4
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$a7, $s8
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB2_95
# %bb.94:                               # %if.then1246
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.b	$a0, $s6, 43
	ori	$a0, $a0, 1
	st.b	$a0, $s6, 43
.LBB2_95:                               # %if.end1247
                                        #   in Loop: Header=BB2_5 Depth=1
	bnez	$s7, .LBB2_97
# %bb.96:                               # %if.then1248
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.b	$a0, $s6, 43
	ori	$a0, $a0, 64
	st.b	$a0, $s6, 43
.LBB2_97:                               # %if.end1253
                                        #   in Loop: Header=BB2_5 Depth=1
	bnez	$fp, .LBB2_99
# %bb.98:                               # %if.then1255
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.h	$a0, $a1, 122
	addi.d	$a0, $a0, 1
	st.h	$a0, $a1, 122
	ld.b	$a0, $s6, 126
	ori	$a0, $a0, 64
	st.b	$a0, $s6, 126
.LBB2_99:                               # %if.end1259
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -11
	st.d	$s8, $sp, 88
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB2_121
# %bb.100:                              # %land.lhs.true1303.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s7, $s8, 32
	b	.LBB2_103
	.p2align	4, , 16
.LBB2_101:                              # %land.rhs1441
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
.LBB2_102:                              # %while.body1450
                                        #   in Loop: Header=BB2_103 Depth=2
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(InsertAlternativeName)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	st.d	$s8, $sp, 88
	addi.d	$a1, $a0, -11
	addi.d	$s7, $s8, 32
	bgeu	$a1, $s4, .LBB2_121
.LBB2_103:                              # %land.lhs.true1303
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$fp, $s8, 64
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_102
# %bb.104:                              # %land.lhs.true1309
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.105:                              # %land.lhs.true1321
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.106:                              # %land.lhs.true1333
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.107:                              # %land.lhs.true1345
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.108:                              # %land.lhs.true1357
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.109:                              # %land.lhs.true1369
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.110:                              # %land.lhs.true1381
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.111:                              # %land.lhs.true1393
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.112:                              # %land.lhs.true1405
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.113:                              # %land.lhs.true1417
                                        #   in Loop: Header=BB2_103 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_116
# %bb.114:                              # %land.lhs.true1429
                                        #   in Loop: Header=BB2_103 Depth=2
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB2_101
# %bb.115:                              # %land.lhs.true1429.tail
                                        #   in Loop: Header=BB2_103 Depth=2
	ld.bu	$a0, $s8, 65
	bnez	$a0, .LBB2_101
.LBB2_116:                              # %land.lhs.true1491
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_121
# %bb.117:                              # %if.then1497
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.h	$a0, $s6, 41
	ori	$a0, $a0, 128
	st.h	$a0, $s6, 41
	ld.bu	$a0, $s7, 0
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s8, 33
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s8, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s8, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	st.d	$s8, $sp, 88
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_120
# %bb.118:                              # %land.lhs.true1538
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$fp, $s8, 64
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_121
# %bb.119:                              # %land.lhs.true1550
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_121
.LBB2_120:                              # %if.then1556
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $s8, 32
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a2, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 34
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88
	.p2align	4, , 16
.LBB2_121:                              # %if.end1560
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s8, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_125
# %bb.122:                              # %land.lhs.true1566
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s8, 64
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_124
# %bb.123:                              # %if.end1608
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s6, 43
	andi	$a0, $a0, 223
	st.b	$a0, $s6, 43
	ld.bu	$a0, $s8, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s8, 33
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s8, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s8, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	st.d	$s8, $sp, 88
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_125
.LBB2_124:                              # %land.lhs.true1614
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s8, 64
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_165
.LBB2_125:                              #   in Loop: Header=BB2_5 Depth=1
	move	$s7, $zero
.LBB2_126:                              # %if.end1667
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s8, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_187
# %bb.127:                              # %land.lhs.true1673
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s8, 64
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_175
# %bb.128:                              # %if.then1679
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s8, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s8, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s8, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_171
# %bb.129:                              # %land.rhs1717.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$fp, $zero
	ori	$s8, $zero, 9
	.p2align	4, , 16
.LBB2_130:                              # %land.rhs1717
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 64
	addi.d	$a2, $a1, -48
	bltu	$s8, $a2, .LBB2_132
# %bb.131:                              # %while.body1731
                                        #   in Loop: Header=BB2_130 Depth=2
	ld.bu	$a2, $a0, 33
	slli.d	$a3, $fp, 3
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $s0, $a4
	alsl.d	$a3, $fp, $a3, 1
	st.d	$a0, $s1, 0
	st.w	$a2, $s2, 0
	st.d	$a4, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a2, $s1, 0
	add.d	$a1, $a3, $a1
	addi.w	$fp, $a1, -48
	slli.d	$a0, $a0, 3
	stx.d	$a2, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	ori	$a2, $zero, 11
	beq	$a1, $a2, .LBB2_130
.LBB2_132:                              # %while.end1766
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $a0, 32
	bge	$s8, $fp, .LBB2_172
# %bb.133:                              # %if.else1772
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a0, $zero, 101
	bltu	$fp, $a0, .LBB2_174
# %bb.134:                              # %if.then1775
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 38
	ori	$a3, $zero, 2
	ori	$a5, $zero, 100
	ori	$fp, $zero, 100
	b	.LBB2_173
.LBB2_135:                              # %if.then1133
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s5, 8
	beq	$a0, $s5, .LBB2_137
# %bb.136:                              # %if.then1139
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 32
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_137:                              # %if.end1142
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	addi.d	$a4, $s5, 32
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $s4, .LBB2_143
# %bb.138:                              # %if.end.i
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s5, 64
	ori	$a1, $zero, 142
	ori	$a5, $zero, 1
	st.d	$zero, $sp, 0
	move	$a2, $a4
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a7, $fp
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_140
# %bb.139:                              # %if.then34.i
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.b	$a0, $s6, 43
	ori	$a0, $a0, 1
	st.b	$a0, $s6, 43
.LBB2_140:                              # %if.end35.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB2_141:                              # %while.cond.i161
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s5, 33
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s5, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s5, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a1, $a0, -11
	addi.d	$a4, $s5, 32
	bgeu	$a1, $s4, .LBB2_144
# %bb.142:                              # %while.body.i164
                                        #   in Loop: Header=BB2_141 Depth=2
	addi.d	$a0, $s5, 64
	move	$a1, $s6
	move	$a2, $a4
	pcaddu18i	$ra, %call36(InsertAlternativeName)
	jirl	$ra, $ra, 0
	b	.LBB2_141
.LBB2_143:                              # %if.then.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a2, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 24
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	b	.LBB2_169
.LBB2_144:                              # %while.cond.i161
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB2_168
# %bb.145:                              # %if.end119.i
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ReadTokenList)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s5, 33
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s5, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s5, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	ld.d	$a0, $s6, 56
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB2_180
# %bb.146:                              # %cond.false158.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB2_181
.LBB2_147:                              # %if.then535
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s4, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s4, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s4, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s4, $zero, 2
	b	.LBB2_150
	.p2align	4, , 16
.LBB2_148:                              # %if.then625
                                        #   in Loop: Header=BB2_150 Depth=2
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a0, 96
	beqz	$a1, .LBB2_156
# %bb.149:                              # %if.then629
                                        #   in Loop: Header=BB2_150 Depth=2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a6, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 48
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_150:                              # %while.cond567
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	addi.d	$fp, $a0, 32
	beq	$a1, $s4, .LBB2_148
# %bb.151:                              # %while.cond567
                                        #   in Loop: Header=BB2_150 Depth=2
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_59
# %bb.152:                              # %land.lhs.true585
                                        #   in Loop: Header=BB2_150 Depth=2
	addi.d	$s5, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_58
# %bb.153:                              # %land.lhs.true597
                                        #   in Loop: Header=BB2_150 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_58
# %bb.154:                              # %land.rhs609
                                        #   in Loop: Header=BB2_150 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_58
# %bb.155:                              # %if.else782
                                        #   in Loop: Header=BB2_150 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 29
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB2_158
.LBB2_156:                              # %if.else634
                                        #   in Loop: Header=BB2_150 Depth=2
	ld.bu	$a1, $a0, 32
	beq	$a1, $s6, .LBB2_159
# %bb.157:                              # %if.else747
                                        #   in Loop: Header=BB2_150 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 28
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
.LBB2_158:                              # %while.cond567
                                        #   in Loop: Header=BB2_150 Depth=2
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	b	.LBB2_150
.LBB2_159:                              # %if.then641
                                        #   in Loop: Header=BB2_150 Depth=2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s5, 0
	ld.d	$a1, $sp, 88
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a1, $a1, 80
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB2_161
# %bb.160:                              # %if.else657
                                        #   in Loop: Header=BB2_150 Depth=2
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB2_162
.LBB2_161:                              # %if.then655
                                        #   in Loop: Header=BB2_150 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_162:                              # %cond.end712
                                        #   in Loop: Header=BB2_150 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	st.d	$s3, $s1, 0
	ld.d	$a4, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $s1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a1, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $sp, 88
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$a2, $s1, 0
	beqz	$a2, .LBB2_150
# %bb.163:                              # %cond.end712
                                        #   in Loop: Header=BB2_150 Depth=2
	beqz	$a0, .LBB2_150
# %bb.164:                              # %cond.false721
                                        #   in Loop: Header=BB2_150 Depth=2
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a0, 16
	st.d	$a3, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	b	.LBB2_150
.LBB2_165:                              # %if.then1620
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	ori	$a2, $zero, 102
	bne	$a1, $a2, .LBB2_231
# %bb.166:                              # %if.end1660
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $sp, 88
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88
	bnez	$s8, .LBB2_126
# %bb.167:                              # %if.then1664
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$a0, $sp, 88
	b	.LBB2_126
.LBB2_168:                              # %if.then116.i
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a2, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a6, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 25
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_169:                              # %if.end2298
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$s6, $zero
	st.d	$s5, $sp, 88
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $s3, 8
	bne	$fp, $s3, .LBB2_205
	b	.LBB2_222
.LBB2_170:                              # %if.then1191
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s6, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s6, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s6, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	st.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -11
	addi.d	$a4, $a0, 32
	bltu	$a1, $s4, .LBB2_93
	b	.LBB2_228
.LBB2_171:                              # %while.end1766.thread
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $a0, 32
.LBB2_172:                              # %if.then1769
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 37
	ori	$a3, $zero, 2
	ori	$a5, $zero, 10
	ori	$fp, $zero, 10
.LBB2_173:                              # %if.end1782
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_174:                              # %if.end1782
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$s8, $sp, 88
	st.b	$fp, $s6, 40
	ld.bu	$a0, $s8, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_187
.LBB2_175:                              # %land.lhs.true1788
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s8, 64
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_184
# %bb.176:                              # %if.then1794
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s8, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s8, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s8, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	st.d	$fp, $sp, 88
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_179
# %bb.177:                              # %land.lhs.true1831
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s8, $fp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_182
# %bb.178:                              # %land.lhs.true1848
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_183
.LBB2_179:                              # %if.then1854
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 39
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
	b	.LBB2_183
.LBB2_180:                              #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $zero
.LBB2_181:                              # %cond.end180.i
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$a1, $s6, 56
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	ld.hu	$a0, $s6, 41
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.h	$a0, $s6, 41
	st.d	$zero, $sp, 88
	ld.d	$fp, $s3, 8
	bne	$fp, $s3, .LBB2_205
	b	.LBB2_222
.LBB2_182:                              # %if.then1837
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.hu	$a0, $s6, 41
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4079
	and	$a0, $a0, $a1
	st.h	$a0, $s6, 41
.LBB2_183:                              # %if.end1890
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$fp, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.bu	$a0, $a0, 32
	st.d	$s8, $sp, 88
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_187
.LBB2_184:                              # %land.lhs.true1896
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $s8, 64
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_187
# %bb.185:                              # %if.then1902
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $s8, 33
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s0, $a1
	st.d	$s8, $s1, 0
	st.w	$a0, $s2, 0
	st.d	$a1, $s8, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	addi.d	$a4, $a0, 32
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_232
# %bb.186:                              # %if.end1942
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $a0, 64
	ori	$a1, $zero, 144
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a2, $a4
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s6
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88
	.p2align	4, , 16
.LBB2_187:                              # %if.end1978
                                        #   in Loop: Header=BB2_5 Depth=1
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 145
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ReadDefinitions)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_192
# %bb.188:                              # %land.lhs.true1984
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s8, $fp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_190
# %bb.189:                              # %land.lhs.true1996
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_192
.LBB2_190:                              # %land.end2014
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s6, 41
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 8
	lu12i.w	$a2, 15
	ori	$a2, $a2, 3839
	and	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $s6, 41
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $fp, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 88
	addi.d	$a4, $a0, 32
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB2_230
# %bb.191:                              # %if.end2058
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $a0, 64
	ori	$a1, $zero, 146
	ori	$a3, $zero, 100
	st.d	$zero, $sp, 0
	move	$a2, $a4
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s6
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $fp, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a0, $s1, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $sp, 88
.LBB2_192:                              # %if.end2094
                                        #   in Loop: Header=BB2_5 Depth=1
	beqz	$s7, .LBB2_194
# %bb.193:                              # %if.then2097
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a2, $s7, 32
	st.d	$s7, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 143
	ori	$a3, $zero, 100
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s6
	pcaddu18i	$ra, %call36(InsertSym)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
.LBB2_194:                              # %if.end2100
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 104
	beq	$a0, $a1, .LBB2_201
# %bb.195:                              # %if.end2100
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$a1, $zero, 102
	beq	$a0, $a1, .LBB2_201
# %bb.196:                              # %if.end2100
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s7, $fp, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB2_200
# %bb.197:                              # %land.lhs.true2106
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 64
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB2_199
# %bb.198:                              # %land.lhs.true2106.tail
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 65
	beqz	$a0, .LBB2_225
.LBB2_199:                              # %land.lhs.true2151
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$a0, $fp, 64
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_224
.LBB2_200:                              # %if.then2202
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 42
	ori	$a3, $zero, 1
	move	$a4, $s7
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 88
.LBB2_201:                              # %if.end2208
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 104
	bne	$a0, $a1, .LBB2_203
.LBB2_202:                              # %if.then2214
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$s6, $fp, 80
.LBB2_203:                              # %if.end2216
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(BodyParAllowed)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 1
	move	$a1, $s6
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 56
	ld.d	$s8, $s5, 8
	bne	$s8, $s5, .LBB2_211
.LBB2_204:                              # %for.end2296
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $s3, 8
	beq	$fp, $s3, .LBB2_222
	.p2align	4, , 16
.LBB2_205:                              # %for.body2305
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 8
	bne	$fp, $s3, .LBB2_205
# %bb.206:                              # %for.end2310
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $s3, 8
	beq	$a0, $s3, .LBB2_222
# %bb.207:                              # %for.end2310
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_222
# %bb.208:                              # %if.else2321
                                        #   in Loop: Header=BB2_5 Depth=1
	st.d	$s3, $s6, 96
	b	.LBB2_223
	.p2align	4, , 16
.LBB2_209:                              # %if.then2248
                                        #   in Loop: Header=BB2_211 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a2, $a0, %pc_lo12(.L.str.45)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 43
	ori	$a3, $zero, 2
	move	$a4, $s7
	move	$a5, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_210:                              # %for.inc2292
                                        #   in Loop: Header=BB2_211 Depth=2
	ld.d	$s8, $s8, 8
	beq	$s8, $s5, .LBB2_204
.LBB2_211:                              # %for.cond2226.preheader
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_212 Depth 3
	move	$a0, $s8
	.p2align	4, , 16
.LBB2_212:                              # %for.cond2226
                                        #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_212
# %bb.213:                              # %for.end
                                        #   in Loop: Header=BB2_211 Depth=2
	addi.d	$s7, $a0, 32
	addi.d	$fp, $a0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(SearchSym)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_209
# %bb.214:                              # %lor.lhs.false2245
                                        #   in Loop: Header=BB2_211 Depth=2
	ld.d	$a1, $a0, 48
	bne	$a1, $s6, .LBB2_209
# %bb.215:                              # %if.else2254
                                        #   in Loop: Header=BB2_211 Depth=2
	ld.hu	$a1, $s6, 41
	andi	$a1, $a1, 256
	beqz	$a1, .LBB2_218
# %bb.216:                              # %land.lhs.true2260
                                        #   in Loop: Header=BB2_211 Depth=2
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 146
	bne	$a1, $a2, .LBB2_218
# %bb.217:                              # %if.then2266
                                        #   in Loop: Header=BB2_211 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 44
	b	.LBB2_221
.LBB2_218:                              # %if.else2271
                                        #   in Loop: Header=BB2_211 Depth=2
	ld.bu	$a1, $a0, 43
	andi	$a2, $a1, 1
	bnez	$a2, .LBB2_220
# %bb.219:                              # %if.else2283
                                        #   in Loop: Header=BB2_211 Depth=2
	addi.d	$a1, $a1, 1
	st.b	$a1, $a0, 43
	b	.LBB2_210
.LBB2_220:                              # %if.then2278
                                        #   in Loop: Header=BB2_211 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a2, $a0, %pc_lo12(.L.str.47)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 45
.LBB2_221:                              # %for.inc2292
                                        #   in Loop: Header=BB2_211 Depth=2
	ori	$a3, $zero, 2
	move	$a4, $s7
	move	$a5, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_210
	.p2align	4, , 16
.LBB2_222:                              # %if.then2319
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_223:                              # %if.end2323
                                        #   in Loop: Header=BB2_5 Depth=1
	ori	$s6, $zero, 143
	pcaddu18i	$ra, %call36(BodyParAllowed)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	bnez	$a0, .LBB2_5
	b	.LBB2_4
.LBB2_224:                              # %if.then2157
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a5, $a0, 0
	ori	$a0, $zero, 104
	ori	$a4, $zero, 1
	b	.LBB2_226
.LBB2_225:                              # %if.then2112
                                        #   in Loop: Header=BB2_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a5, $a0, 0
	ori	$a0, $zero, 102
	ori	$a4, $zero, 3
.LBB2_226:                              # %if.end2208
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a1, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s0, $a3
	st.d	$a1, $s1, 0
	st.w	$a2, $s2, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s2, 0
	ld.d	$a2, $s1, 0
	move	$fp, $a0
	slli.d	$a0, $a1, 3
	stx.d	$a2, $s0, $a0
	st.d	$fp, $sp, 88
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 104
	beq	$a0, $a1, .LBB2_202
	b	.LBB2_203
.LBB2_227:                              # %if.then1099
	addi.d	$a4, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a6, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 30
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_235
.LBB2_228:                              # %if.then1236
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 33
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_234
.LBB2_229:                              # %if.then1118
	addi.d	$a4, $s6, 32
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 31
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB2_235
.LBB2_230:                              # %if.then2055
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 41
	b	.LBB2_233
.LBB2_231:                              # %if.then1657
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a2, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 36
	b	.LBB2_233
.LBB2_232:                              # %if.then1939
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a5, $a0, %pc_lo12(.L.str.34)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 40
.LBB2_233:                              # %cleanup
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_234:                              # %cleanup
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
.LBB2_235:                              # %cleanup
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	ReadDefinitions, .Lfunc_end2-ReadDefinitions
                                        # -- End function
	.p2align	5                               # -- Begin function ReadTokenList
	.type	ReadTokenList,@function
ReadTokenList:                          # @ReadTokenList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s5, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $s5, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $s6, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	beqz	$a0, .LBB3_3
# %bb.1:                                # %cond.false
	move	$a2, $a0
	beqz	$a1, .LBB3_4
# %bb.2:                                # %cond.false3
	ld.d	$a2, $a0, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_3:                                # %cond.end21
	move	$a2, $a1
.LBB3_4:                                # %cond.end21
	st.d	$a2, $s0, 56
	ori	$s8, $zero, 115
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$fp, $a1, %pc_lo12(.LJTI3_0)
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$s7, $a1, %got_pc_lo12(zz_tmp)
	ori	$s4, $zero, 2
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_5:                                # %cond.false114
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_6:                                # %cond.end138
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_7:                                # %cond.end138
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
.LBB3_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_65 Depth 2
                                        #       Child Loop BB3_75 Depth 3
                                        #         Child Loop BB3_76 Depth 4
                                        #       Child Loop BB3_83 Depth 3
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -2
	addi.d	$s2, $a0, 32
	bltu	$s8, $a2, .LBB3_50
# %bb.9:                                # %for.cond
                                        #   in Loop: Header=BB3_8 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $fp, $a2
	add.d	$a2, $fp, $a2
	jr	$a2
.LBB3_10:                               # %sw.bb104
                                        #   in Loop: Header=BB3_8 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_6
# %bb.11:                               # %cond.false110
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	bnez	$a1, .LBB3_5
	b	.LBB3_7
.LBB3_12:                               # %sw.bb141
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $a0, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a2, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 12
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_15
# %bb.13:                               # %cond.false150
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_16
# %bb.14:                               # %cond.false154
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_15:                               # %cond.end178
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_16:                               # %cond.end178
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_17:                               # %sw.bb67
                                        #   in Loop: Header=BB3_8 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_20
# %bb.18:                               # %cond.false73
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_21
# %bb.19:                               # %cond.false77
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_20:                               # %cond.end101
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_21:                               # %cond.end101
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_22:                               # %sw.bb221
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $a0, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a2, $a0, %pc_lo12(.L.str.54)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_25
# %bb.23:                               # %cond.false231
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_26
# %bb.24:                               # %cond.false235
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_25:                               # %cond.end259
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_26:                               # %cond.end259
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_27:                               # %sw.bb181
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ReadTokenList)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_30
# %bb.28:                               # %cond.false187
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_31
# %bb.29:                               # %cond.false191
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_30:                               # %cond.end215
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_31:                               # %cond.end215
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_32:                               # %sw.bb357
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$s2, $a0, 80
	ori	$a1, $zero, 1
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_35
# %bb.33:                               # %cond.false364
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_36
# %bb.34:                               # %cond.false368
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_35:                               # %cond.end392
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_36:                               # %cond.end392
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	move	$s1, $a0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 32
	andi	$a2, $a1, 254
	ori	$a3, $zero, 6
	bne	$a2, $a3, .LBB3_51
# %bb.37:                               # %if.then405
                                        #   in Loop: Header=BB3_8 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_40
# %bb.38:                               # %cond.false411
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_41
# %bb.39:                               # %cond.false415
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_40:                               # %cond.end439
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_41:                               # %cond.end439
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_42:                               # %sw.bb218
                                        #   in Loop: Header=BB3_8 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a2, $a1, %pc_lo12(.L.str.53)
	move	$s1, $a0
	ori	$a0, $zero, 5
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB3_8
.LBB3_43:                               # %sw.bb
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.bu	$a1, $a0, 64
	ori	$a2, $zero, 64
	bne	$a1, $a2, .LBB3_45
# %bb.44:                               # %if.then
                                        #   in Loop: Header=BB3_8 Depth=1
	addi.d	$a5, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_45:                               # %if.end
                                        #   in Loop: Header=BB3_8 Depth=1
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_48
# %bb.46:                               # %cond.false36
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_49
# %bb.47:                               # %cond.false40
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_48:                               # %cond.end64
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_49:                               # %cond.end64
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
.LBB3_50:                               # %sw.default
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	ori	$a0, $zero, 5
	ori	$a1, $zero, 23
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB3_8
.LBB3_51:                               # %while.cond.preheader
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a0, $s1
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	beq	$a1, $s4, .LBB3_65
.LBB3_52:                               # %while.end
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.hu	$a1, $s2, 41
	andi	$a1, $a1, 256
	beqz	$a1, .LBB3_8
# %bb.53:                               # %if.then595
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -102
	addi.d	$s3, $a0, 32
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB3_88
# %bb.54:                               # %if.then595
                                        #   in Loop: Header=BB3_8 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_1)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_1)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB3_55:                               # %if.then607
                                        #   in Loop: Header=BB3_8 Depth=1
	ori	$a2, $zero, 1
	move	$s1, $a0
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 146
	move	$a0, $s2
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.bu	$a1, $s3, 0
	ori	$a2, $zero, 104
	bne	$a1, $a2, .LBB3_57
# %bb.56:                               # %if.then614
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$s2, $a0, 80
.LBB3_57:                               # %if.end616
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ReadTokenList)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_60
# %bb.58:                               # %cond.false622
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a0
	beqz	$a1, .LBB3_61
# %bb.59:                               # %cond.false626
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_60:                               # %cond.end650
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$a2, $a1
.LBB3_61:                               # %cond.end650
                                        #   in Loop: Header=BB3_8 Depth=1
	st.d	$a2, $s0, 56
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_62:                               # %cond.false568
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_63:                               # %cond.end592
                                        #   in Loop: Header=BB3_65 Depth=2
	move	$a2, $a1
.LBB3_64:                               # %cond.end592
                                        #   in Loop: Header=BB3_65 Depth=2
	st.d	$a2, $s0, 56
	move	$s1, $a0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.bu	$a1, $s1, 32
	bne	$a1, $s4, .LBB3_52
.LBB3_65:                               # %land.lhs.true448
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_75 Depth 3
                                        #         Child Loop BB3_76 Depth 4
                                        #       Child Loop BB3_83 Depth 3
	ld.d	$a1, $a0, 80
	ld.d	$a2, $a1, 48
	bne	$a2, $s2, .LBB3_52
# %bb.66:                               # %land.rhs
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.bu	$a1, $a1, 32
	ori	$a2, $zero, 145
	bne	$a1, $a2, .LBB3_52
# %bb.67:                               # %while.body
                                        #   in Loop: Header=BB3_65 Depth=2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 56
	move	$s3, $a0
	st.d	$a2, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_71
# %bb.68:                               # %cond.false463
                                        #   in Loop: Header=BB3_65 Depth=2
	move	$a0, $s3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a2, .LBB3_70
# %bb.69:                               # %cond.false467
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.d	$a0, $s3, 16
	ld.d	$a3, $a2, 16
	st.d	$a0, $s7, 0
	st.d	$a3, $s3, 16
	st.d	$s3, $a3, 24
	st.d	$a0, $a2, 16
	st.d	$a2, $a0, 24
	move	$a0, $a2
.LBB3_70:                               # %cond.end491
                                        #   in Loop: Header=BB3_65 Depth=2
	st.d	$a0, $s0, 56
	ld.bu	$a0, $s3, 32
	ori	$a2, $zero, 102
	beq	$a0, $a2, .LBB3_72
	b	.LBB3_86
	.p2align	4, , 16
.LBB3_71:                               #   in Loop: Header=BB3_65 Depth=2
	move	$a0, $a2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $s0, 56
	ld.bu	$a0, $s3, 32
	ori	$a2, $zero, 102
	bne	$a0, $a2, .LBB3_86
.LBB3_72:                               # %if.end520
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.d	$a0, $a1, 80
	ld.d	$s2, $a0, 96
	beqz	$s2, .LBB3_79
# %bb.73:                               # %for.cond528.preheader
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.d	$s4, $s2, 8
	beq	$s4, $s2, .LBB3_80
# %bb.74:                               # %for.cond534.preheader.preheader
                                        #   in Loop: Header=BB3_65 Depth=2
	move	$s1, $zero
	.p2align	4, , 16
.LBB3_75:                               # %for.cond534.preheader
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_76 Depth 4
	move	$a0, $s4
	.p2align	4, , 16
.LBB3_76:                               # %for.cond534
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_65 Depth=2
                                        #       Parent Loop BB3_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB3_76
# %bb.77:                               # %for.end
                                        #   in Loop: Header=BB3_75 Depth=3
	ld.d	$a0, $a0, 80
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 8
	addi.w	$s1, $s1, 1
	bne	$s4, $s2, .LBB3_75
# %bb.78:                               # %if.end550.loopexit
                                        #   in Loop: Header=BB3_65 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 80
	b	.LBB3_81
	.p2align	4, , 16
.LBB3_79:                               #   in Loop: Header=BB3_65 Depth=2
	move	$s1, $zero
	b	.LBB3_82
	.p2align	4, , 16
.LBB3_80:                               #   in Loop: Header=BB3_65 Depth=2
	move	$s1, $zero
.LBB3_81:                               # %if.end550
                                        #   in Loop: Header=BB3_65 Depth=2
	ori	$s4, $zero, 2
.LBB3_82:                               # %if.end550
                                        #   in Loop: Header=BB3_65 Depth=2
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(ReadTokenList)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	beqz	$s1, .LBB3_84
	.p2align	4, , 16
.LBB3_83:                               # %for.body555
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcaddu18i	$ra, %call36(PopScope)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB3_83
.LBB3_84:                               # %for.end558
                                        #   in Loop: Header=BB3_65 Depth=2
	ori	$a1, $zero, 1
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(PushScope)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_63
# %bb.85:                               # %cond.false564
                                        #   in Loop: Header=BB3_65 Depth=2
	move	$a2, $a0
	bnez	$a1, .LBB3_62
	b	.LBB3_64
.LBB3_86:                               # %cond.end491
                                        #   in Loop: Header=BB3_8 Depth=1
	ori	$a2, $zero, 103
	beq	$a0, $a2, .LBB3_89
# %bb.87:                               # %if.end515
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $a1, 80
	addi.d	$s4, $a1, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a2, $a0, %pc_lo12(.L.str.60)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 21
	ori	$a3, $zero, 2
	move	$a4, $s4
	ori	$s4, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	b	.LBB3_52
.LBB3_88:                               # %if.then665
                                        #   in Loop: Header=BB3_8 Depth=1
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a2, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a6, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 22
	ori	$a3, $zero, 2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB3_8
.LBB3_89:                               # %if.then505
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 102
	beq	$a0, $a1, .LBB3_92
# %bb.90:                               # %if.then511
	addi.d	$a4, $s3, 32
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a5, $a0, %pc_lo12(.L.str.56)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 20
	b	.LBB3_106
.LBB3_91:                               # %sw.bb262
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB3_102
.LBB3_92:                               # %cleanup
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB3_93:                               # %sw.bb272
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 104
	bne	$a0, $a1, .LBB3_103
# %bb.94:                               # %if.else
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	st.d	$a1, $s5, 0
	st.d	$a0, $s6, 0
	beqz	$a0, .LBB3_97
# %bb.95:                               # %cond.false286
	move	$a2, $a0
	beqz	$a1, .LBB3_98
# %bb.96:                               # %cond.false290
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $s7, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_97:                               # %cond.end314
	move	$a2, $a1
.LBB3_98:                               # %cond.end314
	st.d	$a2, $s0, 56
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	addi.d	$a4, $a0, 32
	beq	$a1, $a2, .LBB3_108
# %bb.99:                               # %cond.end314
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB3_105
# %bb.100:                              # %land.lhs.true
	ld.bu	$a1, $a0, 64
	ori	$a2, $zero, 64
	bne	$a1, $a2, .LBB3_105
# %bb.101:                              # %if.then333
	addi.d	$a5, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 17
	b	.LBB3_106
.LBB3_102:                              # %if.then268
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a5, $a0, %pc_lo12(.L.str.56)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 15
	b	.LBB3_104
.LBB3_103:                              # %if.then278
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a5, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 16
.LBB3_104:                              # %if.then268
	ori	$a3, $zero, 2
	move	$a4, $s2
	b	.LBB3_107
.LBB3_105:                              # %if.else338
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a2, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a5, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 18
.LBB3_106:                              # %if.then333
	ori	$a3, $zero, 2
.LBB3_107:                              # %if.then333
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(Error)
	jr	$t8
.LBB3_108:                              # %if.else342
	ld.d	$a1, $fp, 80
	ld.d	$a2, $a0, 80
	beq	$a1, $a2, .LBB3_92
# %bb.109:                              # %if.then347
	move	$s0, $a0
	move	$a0, $a1
	move	$fp, $a4
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 80
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	st.d	$a0, $sp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a6, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 5
	ori	$a1, $zero, 19
	ori	$a3, $zero, 2
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB3_92
.Lfunc_end3:
	.size	ReadTokenList, .Lfunc_end3-ReadTokenList
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_32-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_43-.LJTI3_0
	.word	.LBB3_17-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_27-.LJTI3_0
	.word	.LBB3_91-.LJTI3_0
	.word	.LBB3_22-.LJTI3_0
	.word	.LBB3_93-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_42-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_50-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
	.word	.LBB3_12-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_55-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
	.word	.LBB3_55-.LJTI3_1
	.word	.LBB3_8-.LJTI3_1
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"left brace expected here in %s declaration"
	.size	.L.str, 43

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"@PrependGraphic"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"name of %s file expected here"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.space	1
	.size	.L.str.3, 1

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"unknown or misspelt symbol %s"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"symbol name or %s expected here (%s declaration)"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"{"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"@Database"
	.size	.L.str.8, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"symbol names missing in %s declaration"
	.size	.L.str.9, 39

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	".ld"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s suffix should be omitted in %s clause"
	.size	.L.str.11, 41

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"named"
	.size	.L.str.12, 6

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"import"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"langdef"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"def"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"macro"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"extend"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"export"
	.size	.L.str.18, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"import name expected here"
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"import %s not in scope"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s has %s clause, so cannot be extended"
	.size	.L.str.21, 40

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s symbol name expected here"
	.size	.L.str.22, 29

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"extend symbol %s not in scope"
	.size	.L.str.23, 30

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"keyword %s or %s expected here"
	.size	.L.str.24, 31

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"keyword %s expected here"
	.size	.L.str.25, 25

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"ignoring export list of macro"
	.size	.L.str.26, 30

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"compulsory"
	.size	.L.str.27, 11

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"symbol name expected here"
	.size	.L.str.28, 26

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"force"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"into"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"horizontally"
	.size	.L.str.31, 13

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"precedence"
	.size	.L.str.32, 11

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"associativity"
	.size	.L.str.33, 14

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"left"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"right"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"body"
	.size	.L.str.36, 5

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"@Begin"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%s expected here"
	.size	.L.str.38, 17

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"precedence is too low (%d substituted)"
	.size	.L.str.39, 39

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"precedence is too high (%d substituted)"
	.size	.L.str.40, 40

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"associativity altered to %s"
	.size	.L.str.41, 28

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"cannot find %s parameter name"
	.size	.L.str.42, 30

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"@Target"
	.size	.L.str.43, 8

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"opening left brace or @Begin of %s expected"
	.size	.L.str.44, 44

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"exported symbol %s is not defined in %s"
	.size	.L.str.45, 40

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"body parameter %s may not be exported"
	.size	.L.str.46, 38

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"symbol %s exported twice"
	.size	.L.str.47, 25

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"expected opening %s of langdef here"
	.size	.L.str.48, 36

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%s ignored (name is missing)"
	.size	.L.str.49, 29

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%s ignored (opening %s is missing)"
	.size	.L.str.50, 35

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"symbol %s unknown or misspelt"
	.size	.L.str.51, 30

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"symbol %s not allowed in macro"
	.size	.L.str.52, 31

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"unexpected end of input"
	.size	.L.str.53, 24

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"%s not expected here"
	.size	.L.str.54, 21

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"unmatched %s in macro"
	.size	.L.str.55, 22

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"}"
	.size	.L.str.56, 2

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"@End"
	.size	.L.str.57, 5

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"symbol name expected after %s"
	.size	.L.str.58, 30

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"%s %s does not match %s %s"
	.size	.L.str.59, 27

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"%s must follow named parameter %s"
	.size	.L.str.60, 34

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"right parameter of %s must begin with %s"
	.size	.L.str.61, 41

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"ReadTokenList: %s"
	.size	.L.str.62, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
