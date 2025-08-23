	.file	"shell.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1552
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	move	$s0, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(Argv0)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $a0, %pc_lo12(Argv0)
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 124
	st.h	$a0, $sp, 176
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a1, $a0, %pc_lo12(mainPrompt)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a1, $a0, %pc_lo12(continuePrompt)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(isatty)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(stdin_is_interactive)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(stdin_is_interactive)
	pcalau12i	$a0, %pc_hi20(interrupt_handler)
	addi.d	$a1, $a0, %pc_lo12(interrupt_handler)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(signal)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	ori	$a0, $zero, 3
	blt	$s0, $a0, .LBB0_9
# %bb.1:                                # %for.body.preheader
	addi.w	$s7, $s0, -1
	ori	$s6, $zero, 1
	ori	$s8, $zero, 45
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then28
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s6, $s6, 1
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $s7, .LBB0_10
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s6, 3
	ldx.d	$s5, $fp, $a0
	ld.bu	$a0, $s5, 0
	bne	$a0, $s8, .LBB0_10
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_3
# %bb.8:                                # %if.then34
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s6, $s6, 1
	slli.d	$a0, $s6, 3
	ldx.d	$s2, $fp, $a0
	b	.LBB0_3
.LBB0_9:
	ori	$s6, $zero, 1
.LBB0_10:                               # %for.end
	bge	$s6, $s0, .LBB0_12
# %bb.11:                               # %if.then43
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $fp, $a0
	addi.w	$s6, $s6, 1
	b	.LBB0_13
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_13:                               # %if.end49
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1432
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	bge	$s6, $s0, .LBB0_15
# %bb.14:                               # %if.then52
	slli.d	$a1, $s6, 3
	ldx.d	$s1, $fp, $a1
	b	.LBB0_16
.LBB0_15:
	move	$s1, $zero
.LBB0_16:                               # %if.end56
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_19
# %bb.17:                               # %if.end62
	beqz	$s2, .LBB0_20
.LBB0_18:
	move	$s3, $zero
	b	.LBB0_26
.LBB0_19:                               # %if.then61
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB0_18
.LBB0_20:                               # %if.then.i
	pcaddu18i	$ra, %call36(getuid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpwuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.21:                               # %if.end.i.i
	ld.d	$s2, $a0, 32
	bnez	$s2, .LBB0_23
.LBB0_22:                               # %if.end4.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB0_64
.LBB0_23:                               # %if.then6.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s4, $a0, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_64
# %bb.24:                               # %if.end.i
	move	$s3, $a0
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s4, $a0, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_92
# %bb.25:                               # %if.end11.i
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s4
	move	$a1, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s3, $s2
.LBB0_26:                               # %if.end13.i
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.27:                               # %if.then15.i
	move	$s4, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB0_29
# %bb.28:                               # %if.then17.i
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %if.end19.i
	addi.d	$a0, $sp, 128
	move	$a1, $s4
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %if.end22.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	blt	$s0, $a0, .LBB0_65
.LBB0_31:                               # %land.rhs.lr.ph
	ori	$s3, $zero, 45
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s4, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s5, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s6, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s7, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bail_on_error)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_32:                               # %if.then86
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.d	$s8, $s8, 1
.LBB0_33:                               # %for.inc207
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	bge	$s8, $s0, .LBB0_65
.LBB0_34:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $fp, $a0
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB0_65
# %bb.35:                               # %for.body72
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.bu	$a1, $a0, 1
	addi.d	$a2, $a0, 1
	addi.d	$a1, $a1, -45
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_32
# %bb.36:                               # %if.else88
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_51
# %bb.37:                               # %if.else93
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
# %bb.38:                               # %if.else99
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_53
# %bb.39:                               # %if.else105
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_54
# %bb.40:                               # %if.else111
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_55
# %bb.41:                               # %if.else117
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_56
# %bb.42:                               # %if.else128
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_57
# %bb.43:                               # %if.else138
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
# %bb.44:                               # %if.else143
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_60
# %bb.45:                               # %if.else149
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_61
# %bb.46:                               # %if.else154
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
# %bb.47:                               # %if.else159
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_87
# %bb.48:                               # %if.else166
                                        #   in Loop: Header=BB0_34 Depth=1
	move	$a0, $s2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_63
# %bb.49:                               # %if.else171
                                        #   in Loop: Header=BB0_34 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_88
# %bb.50:                               # %if.then175
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(stdin_is_interactive)
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_51:                               # %if.then92
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_52:                               # %if.then97
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_53:                               # %if.then103
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$zero, $sp, 152
	b	.LBB0_33
.LBB0_54:                               # %if.then109
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	b	.LBB0_33
.LBB0_55:                               # %if.then115
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 152
	ori	$a0, $zero, 44
	st.h	$a0, $sp, 176
	b	.LBB0_33
.LBB0_56:                               # %if.then121
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	slli.d	$a0, $s8, 3
	ldx.d	$a4, $fp, $a0
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	addi.d	$a1, $sp, 176
	b	.LBB0_58
.LBB0_57:                               # %if.then132
                                        #   in Loop: Header=BB0_34 Depth=1
	addi.w	$s8, $s8, 1
	slli.d	$a0, $s8, 3
	ldx.d	$a4, $fp, $a0
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	addi.d	$a1, $sp, 996
.LBB0_58:                               # %for.inc207
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_33
.LBB0_59:                               # %if.then142
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 160
	b	.LBB0_33
.LBB0_60:                               # %if.then147
                                        #   in Loop: Header=BB0_34 Depth=1
	st.w	$zero, $sp, 160
	b	.LBB0_33
.LBB0_61:                               # %if.then153
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 136
	b	.LBB0_33
.LBB0_62:                               # %if.then158
                                        #   in Loop: Header=BB0_34 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(bail_on_error)
	b	.LBB0_33
.LBB0_63:                               # %if.then170
                                        #   in Loop: Header=BB0_34 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(stdin_is_interactive)
	b	.LBB0_33
.LBB0_64:                               # %if.then2.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bge	$s0, $a0, .LBB0_31
.LBB0_65:                               # %for.end209
	beqz	$s1, .LBB0_70
# %bb.66:                               # %if.then210
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB0_91
# %bb.67:                               # %if.else217
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	pcalau12i	$a1, %pc_hi20(callback)
	addi.d	$a2, $a1, %pc_lo12(callback)
	addi.d	$a3, $sp, 128
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$a4, $sp, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	beqz	$a0, .LBB0_81
# %bb.68:                               # %if.else217
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB0_81
# %bb.69:                               # %if.then225
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %if.else229
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB0_77
# %bb.71:                               # %if.then231
	pcaddu18i	$ra, %call36(sqlite3_libversion)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getuid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getpwuid)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_73
# %bb.72:                               # %if.end.i71
	ld.d	$fp, $a0, 32
	bnez	$fp, .LBB0_74
.LBB0_73:                               # %if.end4.i
	pcalau12i	$a0, %pc_hi20(.L.str.160)
	addi.d	$a0, $a0, %pc_lo12(.L.str.160)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB0_78
.LBB0_74:                               # %if.then6.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$s1, $a0, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_78
# %bb.75:                               # %land.lhs.true236
	move	$s0, $a0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$fp, $a0, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_79
# %bb.76:                               # %if.then248
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_80
.LBB0_77:                               # %if.else250
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a1, $a0, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB0_81
.LBB0_78:
	move	$s0, $zero
.LBB0_79:                               # %if.end245.thread
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB0_80:                               # %if.end249
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_81:                               # %if.end253
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB0_83
# %bb.82:                               # %if.then.i76
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 168
.LBB0_83:                               # %set_table_name.exit
	pcalau12i	$s1, %pc_hi20(db)
	ld.d	$a0, $s1, %pc_lo12(db)
	beqz	$a0, .LBB0_85
# %bb.84:                               # %if.then255
	pcaddu18i	$ra, %call36(sqlite3_close)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_86
.LBB0_85:                               # %cleanup264
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1568
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
.LBB0_86:                               # %if.then259
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_85
.LBB0_87:                               # %if.then163
	pcaddu18i	$ra, %call36(sqlite3_libversion)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB0_85
.LBB0_88:                               # %if.else176
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
# %bb.89:                               # %lor.lhs.false180
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_93
# %bb.90:                               # %if.else185
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 33
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_85
.LBB0_91:                               # %if.then215
	addi.d	$a1, $sp, 128
	move	$a0, $s1
	pcaddu18i	$ra, %call36(do_meta_command)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_92:                               # %if.then9.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_93:                               # %if.then184
	pcaddu18i	$ra, %call36(usage)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.p2align	5                               # -- Begin function interrupt_handler
	.type	interrupt_handler,@function
interrupt_handler:                      # @interrupt_handler
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(seenInterrupt)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(seenInterrupt)
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then
	pcaddu18i	$t8, %call36(sqlite3_interrupt)
	jr	$t8
.LBB1_2:                                # %if.end
	ret
.Lfunc_end1:
	.size	interrupt_handler, .Lfunc_end1-interrupt_handler
                                        # -- End function
	.p2align	5                               # -- Begin function open_db
	.type	open_db,@function
open_db:                                # @open_db
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_2
# %bb.1:                                # %if.then
	ldptr.d	$a0, $fp, 5400
	move	$a1, $fp
	pcaddu18i	$ra, %call36(sqlite3_open)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$s1, %pc_hi20(db)
	st.d	$a0, $s1, %pc_lo12(db)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	pcalau12i	$a2, %pc_hi20(shellstaticFunc)
	addi.d	$a5, $a2, %pc_lo12(shellstaticFunc)
	ori	$a3, $zero, 1
	move	$a2, $zero
	move	$a4, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(sqlite3_create_function)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errcode)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
.LBB2_2:                                # %if.end10
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_3:                                # %if.then6
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	ldptr.d	$fp, $fp, 5400
	ld.d	$a0, $s1, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	open_db, .Lfunc_end2-open_db
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function usage
	.type	usage,@function
usage:                                  # @usage
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(Argv0)
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcalau12i	$a2, %pc_hi20(zOptions)
	addi.d	$a2, $a2, %pc_lo12(zOptions)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	usage, .Lfunc_end3-usage
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function do_meta_command
.LCPI4_0:
	.word	4                               # 0x4
	.word	13                              # 0xd
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	13                              # 0xd
	.word	2                               # 0x2
	.word	13                              # 0xd
	.text
	.p2align	5
	.type	do_meta_command,@function
do_meta_command:                        # @do_meta_command
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1936
	move	$s0, $a0
	ld.bu	$a0, $a0, 1
	beqz	$a0, .LBB4_217
# %bb.1:                                # %while.cond3.preheader.lr.ph
	move	$fp, $a1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$t6, $zero
	move	$s3, $zero
	addi.d	$a1, $s0, 1
	ori	$t4, $zero, 1
	lu12i.w	$s8, 2
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	ori	$a3, $zero, 34
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1432
	add.d	$a4, $sp, $a4
	ori	$a5, $zero, 92
	ori	$a6, $zero, 110
	ori	$a7, $zero, 114
	ori	$t0, $zero, 116
	ori	$t1, $zero, 48
	ori	$t2, $zero, 49
	ori	$t3, $zero, 39
	.p2align	4, , 16
.LBB4_2:                                # %while.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_40 Depth 2
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_21 Depth 2
	move	$t5, $t6
	ld.d	$s2, $a0, 0
	addi.d	$t6, $t4, -1
	slli.d	$t7, $t4, 32
	addi.w	$s5, $t4, 1
	add.d	$s6, $a1, $t4
	move	$s1, $t4
	.p2align	4, , 16
.LBB4_3:                                # %while.cond3
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $s0, $t6
	ld.bu	$t8, $t4, 1
	slli.d	$t4, $t8, 1
	ldx.hu	$s7, $s2, $t4
	move	$t4, $s5
	move	$s4, $s6
	addi.w	$s1, $s1, 1
	and	$s7, $s7, $s8
	addi.d	$t6, $t6, 1
	add.d	$t7, $t7, $a2
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, 1
	bnez	$s7, .LBB4_3
# %bb.4:                                # %while.end
                                        #   in Loop: Header=BB4_2 Depth=1
	beq	$t8, $a3, .LBB4_11
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB4_2 Depth=1
	beq	$t8, $t3, .LBB4_11
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB4_2 Depth=1
	beqz	$t8, .LBB4_59
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB4_2 Depth=1
	ori	$s5, $zero, 0
	lu32i.d	$s5, -1
	add.d	$t7, $t7, $s5
	srai.d	$t7, $t7, 32
	ldx.bu	$s5, $s0, $t7
	add.d	$t7, $s0, $t6
	slli.d	$s6, $t5, 3
	stx.d	$t7, $s6, $a4
	beqz	$s5, .LBB4_36
	.p2align	4, , 16
.LBB4_8:                                # %land.rhs78
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s1, $s5, 1
	ldx.hu	$s1, $s2, $s1
	and	$s1, $s1, $s8
	bnez	$s1, .LBB4_54
# %bb.9:                                # %while.body89
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.bu	$s5, $s4, 0
	addi.d	$s4, $s4, 1
	addi.w	$t4, $t4, 1
	bnez	$s5, .LBB4_8
# %bb.10:                               # %if.end99.loopexit
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $t4, -1
	bnez	$t8, .LBB4_37
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_11:                               # %if.then27
                                        #   in Loop: Header=BB4_2 Depth=1
	srai.d	$t6, $t7, 32
	add.d	$t6, $s0, $t6
	slli.d	$t7, $t5, 3
	stx.d	$t6, $t7, $a4
	add.d	$t7, $s0, $t4
	.p2align	4, , 16
.LBB4_12:                               # %while.cond37
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s2, $t7, 0
	addi.d	$t7, $t7, 1
	addi.w	$t4, $t4, 1
	beqz	$s2, .LBB4_14
# %bb.13:                               # %while.cond37
                                        #   in Loop: Header=BB4_12 Depth=2
	bne	$s2, $t8, .LBB4_12
.LBB4_14:                               # %while.end51
                                        #   in Loop: Header=BB4_2 Depth=1
	bne	$s2, $t8, .LBB4_16
# %bb.15:                               # %if.then57
                                        #   in Loop: Header=BB4_2 Depth=1
	st.b	$zero, $t7, -1
	beq	$t8, $a3, .LBB4_17
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $t4, -1
	bne	$t8, $a3, .LBB4_57
.LBB4_17:                               # %if.then64
                                        #   in Loop: Header=BB4_2 Depth=1
	ld.bu	$s4, $t6, 0
	beqz	$s4, .LBB4_35
# %bb.18:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	move	$t7, $zero
	move	$s2, $zero
	add.d	$t8, $s0, $s1
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_19:                               #   in Loop: Header=BB4_21 Depth=2
	andi	$s1, $s4, 255
.LBB4_20:                               # %if.end68.i
                                        #   in Loop: Header=BB4_21 Depth=2
	stx.b	$s1, $t8, $t7
	addi.w	$s2, $s2, 1
	ldx.bu	$s4, $t6, $s2
	addi.d	$t7, $t7, 1
	beqz	$s4, .LBB4_34
.LBB4_21:                               # %for.body.i
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$s4, $a5, .LBB4_19
# %bb.22:                               # %if.then.i
                                        #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s4, $s2, 1
	ldx.b	$s1, $t6, $s4
	andi	$s5, $s1, 255
	beq	$s5, $a6, .LBB4_27
# %bb.23:                               # %if.then.i
                                        #   in Loop: Header=BB4_21 Depth=2
	beq	$s5, $a7, .LBB4_26
# %bb.24:                               # %if.then.i
                                        #   in Loop: Header=BB4_21 Depth=2
	bne	$s5, $t0, .LBB4_28
# %bb.25:                               # %if.then12.i
                                        #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 9
	move	$s2, $s4
	b	.LBB4_20
.LBB4_26:                               # %if.then16.i
                                        #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 13
	move	$s2, $s4
	b	.LBB4_20
.LBB4_27:                               #   in Loop: Header=BB4_21 Depth=2
	ori	$s1, $zero, 10
	move	$s2, $s4
	b	.LBB4_20
.LBB4_28:                               # %if.else17.i
                                        #   in Loop: Header=BB4_21 Depth=2
	andi	$s5, $s5, 248
	bne	$s5, $t1, .LBB4_32
# %bb.29:                               # %if.then22.i
                                        #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s5, $s2, 2
	ldx.bu	$s6, $t6, $s5
	andi	$s7, $s6, 248
	addi.d	$s1, $s1, -48
	bne	$s7, $t1, .LBB4_32
# %bb.30:                               # %if.then35.i
                                        #   in Loop: Header=BB4_21 Depth=2
	addi.w	$s2, $s2, 3
	ldx.bu	$s4, $t6, $s2
	alsl.d	$s1, $s1, $s6, 3
	andi	$s6, $s4, 248
	addi.d	$s1, $s1, -48
	bne	$s6, $t1, .LBB4_33
# %bb.31:                               # %if.then55.i
                                        #   in Loop: Header=BB4_21 Depth=2
	alsl.d	$s1, $s1, $s4, 3
	addi.d	$s1, $s1, -48
	b	.LBB4_20
.LBB4_32:                               #   in Loop: Header=BB4_21 Depth=2
	move	$s2, $s4
	b	.LBB4_20
.LBB4_33:                               #   in Loop: Header=BB4_21 Depth=2
	move	$s2, $s5
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_34:                               # %for.end.loopexit.i
                                        #   in Loop: Header=BB4_2 Depth=1
	bstrpick.d	$t7, $t7, 31, 0
	stx.b	$zero, $t6, $t7
	b	.LBB4_57
.LBB4_35:                               #   in Loop: Header=BB4_2 Depth=1
	stx.b	$zero, $t6, $zero
	b	.LBB4_57
.LBB4_36:                               #   in Loop: Header=BB4_2 Depth=1
	addi.w	$t4, $s1, -1
	beqz	$t8, .LBB4_55
.LBB4_37:                               # %for.body.i398.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_38:                               #   in Loop: Header=BB4_40 Depth=2
	andi	$t8, $t8, 255
.LBB4_39:                               # %if.end68.i403
                                        #   in Loop: Header=BB4_40 Depth=2
	stx.b	$t8, $t7, $s1
	add.d	$t8, $t7, $s2
	ld.bu	$t8, $t8, 1
	addi.w	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	beqz	$t8, .LBB4_53
.LBB4_40:                               # %for.body.i398
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$t8, $a5, .LBB4_38
# %bb.41:                               # %if.then.i416
                                        #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s4, $s2, 1
	add.d	$t8, $s0, $s4
	ldx.b	$t8, $t8, $t6
	andi	$s5, $t8, 255
	beq	$s5, $a6, .LBB4_46
# %bb.42:                               # %if.then.i416
                                        #   in Loop: Header=BB4_40 Depth=2
	beq	$s5, $a7, .LBB4_45
# %bb.43:                               # %if.then.i416
                                        #   in Loop: Header=BB4_40 Depth=2
	bne	$s5, $t0, .LBB4_47
# %bb.44:                               # %if.then12.i422
                                        #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 9
	move	$s2, $s4
	b	.LBB4_39
.LBB4_45:                               # %if.then16.i421
                                        #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 13
	move	$s2, $s4
	b	.LBB4_39
.LBB4_46:                               #   in Loop: Header=BB4_40 Depth=2
	ori	$t8, $zero, 10
	move	$s2, $s4
	b	.LBB4_39
.LBB4_47:                               # %if.else17.i423
                                        #   in Loop: Header=BB4_40 Depth=2
	andi	$s5, $s5, 248
	bne	$s5, $t1, .LBB4_51
# %bb.48:                               # %if.then22.i425
                                        #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s5, $s2, 2
	add.d	$s6, $s0, $s5
	ldx.bu	$s6, $s6, $t6
	andi	$s7, $s6, 248
	addi.d	$t8, $t8, -48
	bne	$s7, $t1, .LBB4_51
# %bb.49:                               # %if.then35.i431
                                        #   in Loop: Header=BB4_40 Depth=2
	addi.w	$s2, $s2, 3
	add.d	$s4, $s0, $s2
	ldx.bu	$s4, $s4, $t6
	alsl.d	$t8, $t8, $s6, 3
	andi	$s6, $s4, 248
	addi.d	$t8, $t8, -48
	bne	$s6, $t1, .LBB4_52
# %bb.50:                               # %if.then55.i440
                                        #   in Loop: Header=BB4_40 Depth=2
	alsl.d	$t8, $t8, $s4, 3
	addi.d	$t8, $t8, -48
	b	.LBB4_39
.LBB4_51:                               #   in Loop: Header=BB4_40 Depth=2
	move	$s2, $s4
	b	.LBB4_39
.LBB4_52:                               #   in Loop: Header=BB4_40 Depth=2
	move	$s2, $s5
	b	.LBB4_39
	.p2align	4, , 16
.LBB4_53:                               # %for.end.loopexit.i413
                                        #   in Loop: Header=BB4_2 Depth=1
	bstrpick.d	$t7, $s1, 31, 0
	b	.LBB4_56
.LBB4_54:                               # %if.then95
                                        #   in Loop: Header=BB4_2 Depth=1
	st.b	$zero, $s4, -1
	ldx.bu	$t8, $s0, $t6
	bnez	$t8, .LBB4_37
.LBB4_55:                               #   in Loop: Header=BB4_2 Depth=1
	move	$t7, $zero
.LBB4_56:                               # %resolve_backslashes.exit445
                                        #   in Loop: Header=BB4_2 Depth=1
	add.d	$t7, $s0, $t7
	stx.b	$zero, $t7, $t6
.LBB4_57:                               # %if.end103
                                        #   in Loop: Header=BB4_2 Depth=1
	ldx.bu	$t6, $s0, $t4
	addi.w	$s3, $s3, 1
	beqz	$t6, .LBB4_60
# %bb.58:                               # %if.end103
                                        #   in Loop: Header=BB4_2 Depth=1
	addi.d	$t6, $t5, 1
	bltu	$t5, $t2, .LBB4_2
	b	.LBB4_60
.LBB4_59:                               # %while.end104
	move	$s3, $t5
	beqz	$t5, .LBB4_217
.LBB4_60:                               # %if.end108
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1432
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$s4, $s0, 0
	ori	$a1, $zero, 98
	addi.w	$s1, $a0, 0
	bne	$s4, $a1, .LBB4_72
# %bb.61:                               # %if.end108
	ori	$a1, $zero, 2
	blt	$s1, $a1, .LBB4_72
# %bb.62:                               # %land.lhs.true119
	bstrpick.d	$a2, $a0, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.63:                               # %land.lhs.true119
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_215
# %bb.64:                               # %if.then128
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$fp, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $fp, 0
	move	$s0, $a0
	beqz	$s1, .LBB4_70
# %bb.65:                               # %for.body.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB4_66:                               # %for.body.i446
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB4_66
# %bb.67:                               # %sub_0.i
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_70
# %bb.68:                               # %sub_1.i
	ld.bu	$a0, $fp, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_70
# %bb.69:                               # %for.end.tail.i
	ld.bu	$a0, $fp, 2
	beqz	$a0, .LBB4_114
.LBB4_70:                               # %if.else.i
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_71:                               # %booleanValue.exit
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(bail_on_error)
	st.w	$a1, $a2, %pc_lo12(bail_on_error)
	b	.LBB4_218
.LBB4_72:                               # %if.else131
	ori	$a1, $zero, 100
	bne	$s4, $a1, .LBB4_77
# %bb.73:                               # %if.else131
	ori	$a2, $zero, 2
	blt	$s1, $a2, .LBB4_77
# %bb.74:                               # %land.lhs.true137
	move	$s2, $a0
	bstrpick.d	$a2, $a0, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_78
# %bb.75:                               # %if.then143
	st.d	$zero, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 152
	st.w	$a0, $sp, 144
	ori	$a0, $zero, 3
	lu32i.d	$a0, 15
	st.d	$a0, $sp, 188
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 58
	st.w	$a1, $sp, 196
	st.w	$zero, $sp, 132
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	beqz	$a2, .LBB4_217
.LBB4_76:                               # %if.then151
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_77:                               # %if.else154
	move	$s2, $a0
	bne	$s4, $a1, .LBB4_86
.LBB4_78:                               # %land.lhs.true157
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_98
# %bb.79:
	move	$a2, $zero
.LBB4_80:                               # %if.else1058
	move	$a1, $s2
.LBB4_81:                               # %if.else1058
	beqz	$a2, .LBB4_109
# %bb.82:                               # %if.else1058
	ori	$a0, $zero, 5
	blt	$s1, $a0, .LBB4_109
# %bb.83:                               # %land.lhs.true1064
	bstrpick.d	$s2, $a1, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_106
# %bb.84:                               # %land.lhs.true1064
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_106
# %bb.85:                               # %if.then1073
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sqlite3_busy_timeout)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_86:                               # %if.else199
	addi.d	$a0, $s4, -101
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB4_148
# %bb.87:                               # %if.else199
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI4_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_88:                               # %land.lhs.true202
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_183
# %bb.89:                               # %land.lhs.true202
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_183
# %bb.90:                               # %if.then211
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s0, 0
	move	$s1, $a0
	beqz	$s2, .LBB4_96
# %bb.91:                               # %for.body.lr.ph.i456
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_92:                               # %for.body.i458
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s2
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s2, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s2, .LBB4_92
# %bb.93:                               # %sub_0.i467
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_96
# %bb.94:                               # %sub_1.i474
	ld.bu	$a0, $s0, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_96
# %bb.95:                               # %for.end.tail.i476
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB4_229
.LBB4_96:                               # %if.else.i469
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_97:                               # %booleanValue.exit477
	move	$a0, $zero
	st.w	$a1, $fp, 8
	b	.LBB4_218
.LBB4_98:                               # %if.then163
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	st.w	$zero, $fp, 28
	bne	$a0, $s0, .LBB4_100
# %bb.99:                               # %if.then168
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(run_schema_dump_query)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$a2, $a2, %pc_lo12(.L.str.47)
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	b	.LBB4_102
.LBB4_100:                              # %for.body.preheader
	bstrpick.d	$a0, $s3, 31, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$s2, $sp, $a1
	addi.d	$s3, $a0, -1
	pcalau12i	$s4, %pc_hi20(zShellStatic)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$s0, $a0, %pc_lo12(.L.str.48)
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s1, $a0, %pc_lo12(.L.str.49)
	.p2align	4, , 16
.LBB4_101:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	st.d	$a0, $s4, %pc_lo12(zShellStatic)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(run_schema_dump_query)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, %pc_lo12(zShellStatic)
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB4_101
.LBB4_102:                              # %if.end184
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB4_104
# %bb.103:                              # %if.then187
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 28
.LBB4_104:                              # %if.else195
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 8
.LBB4_105:                              # %cleanup1152
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_106:                              # %land.lhs.true1084
	pcalau12i	$a0, %pc_hi20(.L.str.117)
	addi.d	$a1, $a0, %pc_lo12(.L.str.117)
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_109
# %bb.107:                              # %land.lhs.true1084
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_109
# %bb.108:                              # %if.then1093
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(booleanValue)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(enableTimer)
	st.w	$a1, $a2, %pc_lo12(enableTimer)
	b	.LBB4_218
.LBB4_109:                              # %if.else1096
	ori	$a0, $zero, 119
	bne	$s4, $a0, .LBB4_215
# %bb.110:                              # %land.lhs.true1099
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.111:                              # %for.cond1107.preheader
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_217
# %bb.112:                              # %for.body1115.lr.ph
	addi.d	$fp, $fp, 68
	bstrpick.d	$a0, $s3, 31, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1440
	add.d	$s0, $sp, $a1
	addi.d	$s1, $a0, -1
	.p2align	4, , 16
.LBB4_113:                              # %for.body1115
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	st.w	$a1, $fp, 0
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB4_113
	b	.LBB4_218
.LBB4_114:
	ori	$a1, $zero, 1
	b	.LBB4_71
.LBB4_115:                              # %land.lhs.true332
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_180
# %bb.116:                              # %land.lhs.true332
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB4_180
# %bb.117:                              # %if.then341
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$s5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s6, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bstrpick.d	$a0, $a0, 31, 0
	beqz	$a0, .LBB4_228
# %bb.118:                              # %if.end354
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(sqlite3_mprintf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_217
# %bb.119:                              # %if.end359
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 120
	move	$a0, $a1
	move	$a1, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB4_255
# %bb.120:                              # %if.end370
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_column_count)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB4_217
# %bb.121:                              # %if.end375
	addi.w	$s0, $s0, 20
	alsl.w	$a0, $s2, $s0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_217
# %bb.122:                              # %if.end382
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a2, $a0, %pc_lo12(.L.str.61)
	move	$a0, $s0
	move	$a1, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	move	$s5, $s2
	blt	$s2, $a2, .LBB4_235
# %bb.123:                              # %for.body390.preheader
	addi.w	$a4, $a0, 0
	ori	$a1, $zero, 1
	bne	$s5, $a2, .LBB4_230
# %bb.124:
	move	$a0, $a4
	b	.LBB4_233
.LBB4_125:                              # %land.lhs.true682
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.126:                              # %land.lhs.true682
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.127:                              # %if.then691
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	beq	$a0, $a1, .LBB4_129
# %bb.128:                              # %if.then695
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB4_129:                              # %if.end698
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_192
# %bb.130:                              # %if.else707
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB4_226
# %bb.131:                              # %if.else718
	addi.d	$a1, $fp, 1300
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a2, $a0, %pc_lo12(.L.str.88)
	lu12i.w	$a0, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_132:                              # %land.lhs.true299
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_134
# %bb.133:                              # %lor.lhs.false305
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_213
.LBB4_134:                              # %land.lhs.true311
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_213
# %bb.135:                              # %if.then314
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ori	$a2, $zero, 10
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $s0, 0
	move	$s1, $a0
	beqz	$s2, .LBB4_141
# %bb.136:                              # %for.body.lr.ph.i481
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_137:                              # %for.body.i483
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s2
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s2, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s2, .LBB4_137
# %bb.138:                              # %sub_0.i492
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB4_141
# %bb.139:                              # %sub_1.i499
	ld.bu	$a0, $s0, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB4_141
# %bb.140:                              # %for.end.tail.i501
	ld.bu	$a0, $s0, 2
	beqz	$a0, .LBB4_220
.LBB4_141:                              # %if.else.i494
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB4_142:                              # %booleanValue.exit502
	move	$a0, $zero
	st.w	$a1, $fp, 32
	b	.LBB4_218
.LBB4_143:                              # %land.lhs.true728
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.144:                              # %land.lhs.true728
	bstrpick.d	$a0, $s3, 30, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.145:                              # %if.then743
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a0, $a0, %pc_lo12(mainPrompt)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB4_217
# %bb.146:                              # %if.then749
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a0, $a0, %pc_lo12(continuePrompt)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_147:                              # %land.lhs.true756
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 2
	beqz	$a1, .LBB4_218
	b	.LBB4_215
.LBB4_148:                              # %if.else964
	addi.d	$a0, $s4, -116
	ori	$a1, $zero, 116
	sltui	$a2, $a0, 1
	bne	$s4, $a1, .LBB4_80
# %bb.149:                              # %if.else964
	ori	$a0, $zero, 2
	move	$a1, $s2
	blt	$s1, $a0, .LBB4_81
# %bb.150:                              # %land.lhs.true970
	bstrpick.d	$a2, $a1, 30, 0
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	ori	$a2, $zero, 1
	bnez	$a0, .LBB4_81
# %bb.151:                              # %if.then976
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_206
# %bb.152:                              # %if.then981
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a1, $a1, %pc_lo12(.L.str.111)
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 80
	addi.d	$a5, $sp, 96
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_get_table)
	jirl	$ra, $ra, 0
	b	.LBB4_207
.LBB4_153:                              # %land.lhs.true553
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.154:                              # %land.lhs.true553
	addi.w	$s2, $s3, 0
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_215
# %bb.155:                              # %if.then562
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_179
# %bb.156:                              # %lor.lhs.false571
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a1, $a0, %pc_lo12(.L.str.71)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_179
# %bb.157:                              # %if.else579
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_198
# %bb.158:                              # %lor.lhs.false585
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_198
# %bb.159:                              # %if.else593
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_221
# %bb.160:                              # %if.else601
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_227
# %bb.161:                              # %if.else609
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_254
# %bb.162:                              # %if.else617
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a1, $a0, %pc_lo12(.L.str.77)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_256
# %bb.163:                              # %if.else628
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_271
# %bb.164:                              # %if.else639
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_282
# %bb.165:                              # %if.then645
	ori	$a0, $zero, 5
	ori	$a1, $zero, 3
	st.w	$a0, $fp, 24
	bltu	$s2, $a1, .LBB4_273
# %bb.166:                              # %if.then649
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1448
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	b	.LBB4_274
.LBB4_167:                              # %land.lhs.true666
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.168:                              # %land.lhs.true666
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.169:                              # %if.then675
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	addi.d	$a1, $fp, 868
	b	.LBB4_174
.LBB4_170:                              # %land.lhs.true790
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a1, $a0, %pc_lo12(.L.str.93)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_190
# %bb.171:                              # %land.lhs.true869
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_193
# %bb.172:                              # %land.lhs.true869
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_193
# %bb.173:                              # %if.then878
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a4, $a0, 0
	addi.d	$a1, $fp, 48
.LBB4_174:                              # %cleanup1152
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 20
	ori	$a3, $zero, 19
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_175:                              # %land.lhs.true766
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.176:                              # %land.lhs.true766
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB4_215
# %bb.177:                              # %if.then775
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_219
# %bb.178:                              # %if.else783
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(process_input)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_179:                              # %if.then577
	move	$a0, $zero
	st.w	$zero, $fp, 24
	b	.LBB4_218
.LBB4_180:                              # %land.lhs.true529
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a1, $a0, %pc_lo12(.L.str.67)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.181:                              # %land.lhs.true529
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_215
# %bb.182:                              # %if.then538
	st.d	$zero, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(zShellStatic)
	st.d	$a0, $s0, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	st.w	$zero, $sp, 152
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 144
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 96
	st.d	$zero, $s0, %pc_lo12(zShellStatic)
	beqz	$a2, .LBB4_217
	b	.LBB4_76
.LBB4_183:                              # %land.lhs.true217
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_199
# %bb.184:                              # %land.lhs.true227
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.185:                              # %if.then233
	addi.w	$a0, $s3, 0
	ori	$s0, $zero, 1
	beq	$a0, $s0, .LBB4_187
# %bb.186:                              # %cond.true
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(booleanValue)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB4_210
.LBB4_187:                              # %if.then240
	ld.w	$a0, $fp, 888
	bnez	$a0, .LBB4_189
# %bb.188:                              # %if.then242
	ld.w	$a0, $fp, 24
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 888
	st.w	$a0, $fp, 892
	st.w	$a1, $fp, 896
	addi.d	$a0, $fp, 900
	addi.d	$a1, $fp, 68
	ori	$a2, $zero, 400
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_189:                              # %if.end255
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 32
	addi.d	$a0, $fp, 100
	ori	$a2, $zero, 68
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI4_0)
	move	$a0, $zero
	xvst	$xr0, $fp, 68
	b	.LBB4_218
.LBB4_190:                              # %if.then796
	st.d	$zero, $sp, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a2, $a0, 1312
	addi.d	$a0, $sp, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$zero, $sp, 152
	ori	$a0, $zero, 3
	addi.w	$a1, $s3, 0
	ori	$a2, $zero, 1
	st.w	$a0, $sp, 144
	bne	$a1, $a2, .LBB4_200
# %bb.191:                              # %if.else858
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$a1, $a1, %pc_lo12(.L.str.100)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	b	.LBB4_224
.LBB4_192:                              # %if.then703
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 16
	addi.d	$a1, $fp, 1300
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	lu12i.w	$a0, 1
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_193:                              # %land.lhs.true886
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.194:                              # %if.then892
	ld.w	$a1, $fp, 8
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.L.str.104)
	addi.d	$s1, $a2, %pc_lo12(.L.str.104)
	masknez	$a2, $s1, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.105)
	addi.d	$s2, $a3, %pc_lo12(.L.str.105)
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$s0, $a1, %pc_lo12(.L.str.103)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a2, $a1, %pc_lo12(.L.str.52)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 888
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a2, $a1, %pc_lo12(.L.str.54)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	ld.d	$a0, $fp, 16
	sltui	$a1, $a1, 1
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $s2, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a2, $a1, %pc_lo12(.L.str.56)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a0, $fp, 16
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(modeDescr)
	addi.d	$a2, $a2, %pc_lo12(modeDescr)
	ldx.d	$a3, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a2, $a1, %pc_lo12(.L.str.69)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$s1, $a1, %pc_lo12(.L.str.106)
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a2, $a1, %pc_lo12(.L.str.83)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 868
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 1300
	ld.d	$a0, $fp, 16
	addi.d	$a2, $fp, 1300
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.85)
	addi.d	$a3, $a3, %pc_lo12(.L.str.85)
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.84)
	addi.d	$a2, $a1, %pc_lo12(.L.str.84)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.101)
	addi.d	$a2, $a1, %pc_lo12(.L.str.101)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	addi.d	$a1, $fp, 48
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 68
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$s0, $a0, %pc_lo12(.L.str.109)
	ori	$s2, $zero, 468
.LBB4_195:                              # %land.rhs946
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $fp, $s1
	beqz	$a2, .LBB4_197
# %bb.196:                              # %for.body953
                                        #   in Loop: Header=BB4_195 Depth=1
	ld.d	$a0, $fp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 4
	bne	$s1, $s2, .LBB4_195
.LBB4_197:                              # %for.end961
	ld.d	$a1, $fp, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_198:                              # %if.then591
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_199:
	ori	$a0, $zero, 2
	b	.LBB4_218
.LBB4_200:                              # %for.cond805.preheader
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	ld.bu	$s1, $s0, 0
	beqz	$s1, .LBB4_203
# %bb.201:                              # %for.body810.lr.ph
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 1
.LBB4_202:                              # %for.body810
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB4_202
.LBB4_203:                              # %for.end824
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a1, $a0, %pc_lo12(.L.str.94)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_212
# %bb.204:                              # %if.else837
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a1, $a0, %pc_lo12(.L.str.97)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_222
# %bb.205:                              # %if.else852
	pcalau12i	$s1, %pc_hi20(zShellStatic)
	st.d	$s0, $s1, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$a1, $a1, %pc_lo12(.L.str.99)
	pcalau12i	$a2, %pc_hi20(callback)
	addi.d	$a2, $a2, %pc_lo12(callback)
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, %pc_lo12(zShellStatic)
	b	.LBB4_224
.LBB4_206:                              # %if.else984
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(zShellStatic)
	st.d	$a0, $s0, %pc_lo12(zShellStatic)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 80
	addi.d	$a5, $sp, 96
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_get_table)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, %pc_lo12(zShellStatic)
.LBB4_207:                              # %if.end988
	ld.d	$a2, $sp, 96
	bnez	$a2, .LBB4_257
# %bb.208:                              # %if.end992
	beqz	$a0, .LBB4_258
.LBB4_209:                              # %if.end1057
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_free_table)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_210:                              # %if.else276
	ld.w	$a0, $fp, 888
	beqz	$a0, .LBB4_217
# %bb.211:                              # %if.then280
	ld.w	$a0, $fp, 892
	ld.w	$a1, $fp, 896
	st.w	$zero, $fp, 888
	st.w	$a0, $fp, 24
	st.w	$a1, $fp, 32
	addi.d	$a0, $fp, 68
	addi.d	$a1, $fp, 900
	ori	$a2, $zero, 400
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_212:                              # %if.then829
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	b	.LBB4_223
.LBB4_213:                              # %land.lhs.true321
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_215
# %bb.214:                              # %if.then327
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(zHelp)
	addi.d	$a1, $a1, %pc_lo12(zHelp)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_215:                              # %if.else1126
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a1, $a1, %pc_lo12(.L.str.118)
.LBB4_216:                              # %cleanup1152
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB4_217:                              # %cleanup1152
	move	$a0, $zero
.LBB4_218:                              # %cleanup1152
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1952
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
.LBB4_219:                              # %if.then780
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.92)
	addi.d	$a1, $a1, %pc_lo12(.L.str.92)
	b	.LBB4_216
.LBB4_220:
	ori	$a1, $zero, 1
	b	.LBB4_142
.LBB4_221:                              # %if.then599
	move	$a0, $zero
	ori	$a1, $zero, 2
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_222:                              # %if.then842
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
.LBB4_223:                              # %if.end861
	st.d	$a0, $sp, 96
	st.d	$zero, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	st.d	$a0, $sp, 80
	st.d	$zero, $sp, 88
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 80
	pcaddu18i	$ra, %call36(callback)
	jirl	$ra, $ra, 0
.LBB4_224:                              # %if.end861
	ld.d	$a2, $sp, 112
	beqz	$a2, .LBB4_217
# %bb.225:                              # %if.then863
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_226:                              # %if.then714
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a1, $a1, %pc_lo12(.L.str.87)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $zero
	st.d	$a1, $fp, 16
	b	.LBB4_218
.LBB4_227:                              # %if.then607
	move	$a0, $zero
	ori	$a1, $zero, 4
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_228:                              # %if.then352
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 39
	b	.LBB4_105
.LBB4_229:
	ori	$a1, $zero, 1
	b	.LBB4_97
.LBB4_230:                              # %vector.ph
	addi.w	$a1, $s5, -1
	bstrpick.d	$a2, $a1, 31, 0
	bstrpick.d	$a0, $a2, 31, 1
	slli.d	$a3, $a0, 1
	alsl.d	$a0, $a0, $a4, 2
	ori	$a1, $a1, 1
	add.d	$a4, $a4, $s3
	addi.d	$a4, $a4, 3
	lu12i.w	$a5, 258755
	ori	$a5, $a5, 3884
	move	$a6, $a3
.LBB4_231:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a4, -3
	addi.d	$a6, $a6, -2
	addi.d	$a4, $a4, 4
	bnez	$a6, .LBB4_231
# %bb.232:                              # %middle.block
	beq	$a3, $a2, .LBB4_235
.LBB4_233:                              # %for.body390.preheader670
	sub.d	$a1, $s5, $a1
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3884
.LBB4_234:                              # %for.body390
                                        # =>This Inner Loop Header: Depth=1
	stx.h	$a2, $s3, $a0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB4_234
.LBB4_235:                              # %for.end399
	ld.d	$a1, $fp, 0
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 41
	stx.h	$a2, $s3, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 120
	move	$a0, $a1
	move	$a1, $s3
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB4_275
# %bb.236:                              # %if.end412
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_276
# %bb.237:                              # %if.end419
	slli.d	$a0, $s5, 3
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB4_253
# %bb.238:                              # %if.end428
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	slli.d	$a0, $s4, 32
	addi.w	$s7, $s4, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 31, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $zero, 13
	ori	$s6, $s8, 1025
	addi.w	$s8, $zero, -1
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	b	.LBB4_240
.LBB4_239:                              # %for.end495
                                        #   in Loop: Header=BB4_240 Depth=1
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_reset)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bnez	$s4, .LBB4_279
.LBB4_240:                              # %while.cond431
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_243 Depth 2
                                        #     Child Loop BB4_252 Depth 2
	move	$a0, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_281
# %bb.241:                              # %while.body435
                                        #   in Loop: Header=BB4_240 Depth=1
	move	$s0, $a0
	move	$s2, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	move	$s4, $s0
	b	.LBB4_243
.LBB4_242:                              # %for.inc476
                                        #   in Loop: Header=BB4_243 Depth=2
	addi.d	$s4, $s4, 1
.LBB4_243:                              # %for.cond438
                                        #   Parent Loop BB4_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s4, 0
	bltu	$s3, $a0, .LBB4_245
# %bb.244:                              # %for.cond438
                                        #   in Loop: Header=BB4_243 Depth=2
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	and	$a1, $a1, $s6
	bnez	$a1, .LBB4_249
.LBB4_245:                              # %for.body450
                                        #   in Loop: Header=BB4_243 Depth=2
	ld.bu	$a1, $s1, 0
	bne	$a0, $a1, .LBB4_242
# %bb.246:                              # %land.lhs.true457
                                        #   in Loop: Header=BB4_243 Depth=2
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_242
# %bb.247:                              # %if.then464
                                        #   in Loop: Header=BB4_243 Depth=2
	addi.w	$s2, $s2, 1
	st.b	$zero, $s4, 0
	bge	$s2, $s5, .LBB4_242
# %bb.248:                              # %if.then468
                                        #   in Loop: Header=BB4_243 Depth=2
	add.d	$a0, $s4, $s7
	slli.d	$a1, $s2, 3
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	b	.LBB4_242
.LBB4_249:                              # %for.end477
                                        #   in Loop: Header=BB4_240 Depth=1
	addi.w	$a5, $s2, 1
	st.b	$zero, $s4, 0
	bne	$a5, $s5, .LBB4_278
# %bb.250:                              # %for.cond485.preheader
                                        #   in Loop: Header=BB4_240 Depth=1
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB4_239
# %bb.251:                              # %for.body488.preheader
                                        #   in Loop: Header=BB4_240 Depth=1
	ori	$s4, $zero, 1
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_252:                              # %for.body488
                                        #   Parent Loop BB4_240 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 120
	ld.d	$a2, $s5, 0
	move	$a1, $s4
	move	$a3, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_bind_text)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, -1
	addi.w	$s4, $s4, 1
	bnez	$s2, .LBB4_252
	b	.LBB4_239
.LBB4_253:                              # %if.then426
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_254:                              # %if.then615
	move	$a0, $zero
	ori	$a1, $zero, 6
	st.w	$a1, $fp, 24
	b	.LBB4_218
.LBB4_255:                              # %if.end370.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	b	.LBB4_277
.LBB4_256:                              # %if.then623
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 24
	addi.d	$a1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	b	.LBB4_272
.LBB4_257:                              # %if.then990
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a3, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	move	$fp, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$a0, .LBB4_209
.LBB4_258:                              # %for.cond998.preheader
	ld.w	$s1, $sp, 80
	ori	$s0, $zero, 1
	blt	$s1, $s0, .LBB4_264
# %bb.259:                              # %for.body1001.lr.ph
	ld.d	$a0, $sp, 120
	move	$fp, $zero
	addi.d	$a1, $s1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s2, $a0, 8
	addi.d	$s3, $a1, -1
	b	.LBB4_261
.LBB4_260:                              # %for.inc1016
                                        #   in Loop: Header=BB4_261 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	beqz	$s3, .LBB4_263
.LBB4_261:                              # %for.body1001
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB4_260
# %bb.262:                              # %if.end1007
                                        #   in Loop: Header=BB4_261 Depth=1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $fp
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	b	.LBB4_260
.LBB4_263:                              # %for.end1018
	addi.w	$a0, $fp, 2
	ori	$a1, $zero, 80
	div.wu	$a0, $a1, $a0
	ori	$a1, $zero, 78
	sltu	$a1, $a1, $fp
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	b	.LBB4_265
.LBB4_264:
	move	$fp, $zero
	ori	$a0, $zero, 40
.LBB4_265:                              # %for.end1018.thread
	add.d	$a1, $s1, $a0
	addi.w	$a1, $a1, -1
	div.w	$s1, $a1, $a0
	blt	$s1, $s0, .LBB4_209
# %bb.266:                              # %for.body1030.preheader
	move	$s2, $zero
	slli.d	$s3, $s1, 3
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s6, $a0, %pc_lo12(.L.str.113)
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$s7, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$s0, $a0, %pc_lo12(.L.str.115)
	b	.LBB4_268
.LBB4_267:                              # %for.end1051
                                        #   in Loop: Header=BB4_268 Depth=1
	addi.w	$s2, $s2, 1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s5, $s5, 1
	beq	$s2, $s1, .LBB4_209
.LBB4_268:                              # %for.body1030
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_270 Depth 2
	ld.w	$a0, $sp, 80
	bge	$s2, $a0, .LBB4_267
# %bb.269:                              # %for.body1035.preheader
                                        #   in Loop: Header=BB4_268 Depth=1
	move	$s8, $s5
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB4_270:                              # %for.body1035
                                        #   Parent Loop BB4_268 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 120
	slt	$a1, $s1, $s8
	ldx.d	$a0, $a0, $s4
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	sltui	$a2, $a0, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s6, $a2
	or	$a3, $a2, $a0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 80
	add.w	$s8, $s8, $s1
	add.d	$s4, $s4, $s3
	bge	$a0, $s8, .LBB4_270
	b	.LBB4_267
.LBB4_271:                              # %if.then634
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 24
	addi.d	$a1, $fp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a2, $a0, %pc_lo12(.L.str.79)
.LBB4_272:                              # %cleanup1152
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_273:                              # %if.else651
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
.LBB4_274:                              # %cleanup1152
	move	$a0, $fp
	pcaddu18i	$ra, %call36(set_table_name)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_275:                              # %if.then408
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB4_218
.LBB4_276:                              # %if.then416
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	move	$a2, $s6
.LBB4_277:                              # %cleanup509.thread
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_278:                              # %if.then481
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB4_280
.LBB4_279:                              # %if.then500
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(db)
	ld.d	$a0, $a0, %pc_lo12(db)
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB4_280:                              # %cleanup.thread
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB4_281:                              # %cleanup.thread
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	b	.LBB4_217
.LBB4_282:                              # %if.else653
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a0, $a0, %pc_lo12(.L.str.82)
	ori	$a1, $zero, 65
	b	.LBB4_105
.Lfunc_end4:
	.size	do_meta_command, .Lfunc_end4-do_meta_command
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_88-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_132-.LJTI4_0
	.word	.LBB4_115-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_148-.LJTI4_0
	.word	.LBB4_153-.LJTI4_0
	.word	.LBB4_167-.LJTI4_0
	.word	.LBB4_125-.LJTI4_0
	.word	.LBB4_143-.LJTI4_0
	.word	.LBB4_147-.LJTI4_0
	.word	.LBB4_175-.LJTI4_0
	.word	.LBB4_170-.LJTI4_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function callback
	.type	callback,@function
callback:                               # @callback
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
	move	$s5, $a0
	ld.w	$a0, $a0, 24
	ori	$a4, $zero, 9
	bltu	$a4, $a0, .LBB5_141
# %bb.1:                                # %entry
	move	$s2, $a3
	move	$s6, $a1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	jr	$a0
.LBB5_2:                                # %sw.bb34
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	beqz	$a0, .LBB5_126
.LBB5_3:                                # %if.end136
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	beqz	$s6, .LBB5_141
# %bb.4:                                # %if.end136
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB5_141
# %bb.5:                                # %for.body144.lr.ph
	move	$fp, $zero
	addi.d	$s0, $a1, 468
	addi.d	$s1, $a1, 868
	addi.d	$a0, $a3, -1
	bstrpick.d	$s4, $a0, 31, 0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$s7, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s8, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$s2, $a0, %pc_lo12(.L.str.142)
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_6:                                # %land.lhs.true162
                                        #   in Loop: Header=BB5_8 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a2
.LBB5_7:                                # %if.end174
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	sltui	$a1, $s3, 1
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $s1, $a1
	or	$a4, $a1, $a2
	xor	$a1, $s4, $fp
	sltui	$a1, $a1, 1
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s8, $a1
	or	$a5, $a1, $a2
	addi.w	$a2, $s5, 0
	move	$a1, $s2
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	addi.d	$s6, $s6, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB5_141
.LBB5_8:                                # %for.body144
                                        # =>This Inner Loop Header: Depth=1
	ori	$s5, $zero, 10
	ori	$a0, $zero, 99
	bltu	$a0, $fp, .LBB5_10
# %bb.9:                                # %if.then149
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.w	$s5, $s0, 0
.LBB5_10:                               # %if.end154
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	ld.d	$s3, $s6, 0
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB5_7
# %bb.11:                               # %land.lhs.true158
                                        #   in Loop: Header=BB5_8 Depth=1
	bnez	$s3, .LBB5_6
# %bb.12:                               #   in Loop: Header=BB5_8 Depth=1
	move	$s3, $zero
	b	.LBB5_7
.LBB5_13:                               # %sw.bb195
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	bnez	$a0, .LBB5_18
# %bb.14:                               # %land.lhs.true200
	ld.w	$a0, $s5, 32
	beqz	$a0, .LBB5_18
# %bb.15:                               # %land.lhs.true200
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_18
# %bb.16:                               # %for.body207.lr.ph
	addi.w	$fp, $s6, -1
	addi.d	$s0, $s5, 48
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s1, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.144)
	addi.d	$s3, $a0, %pc_lo12(.L.str.144)
	move	$s4, $s6
	.p2align	4, , 16
.LBB5_17:                               # %for.body207
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a2, $s2, 0
	sltui	$a1, $fp, 1
	masknez	$a3, $s0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	bnez	$s4, .LBB5_17
.LBB5_18:                               # %if.end223
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_141
# %bb.19:                               # %if.end223
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_141
# %bb.20:                               # %for.body231.lr.ph
	move	$fp, $zero
	addi.d	$s0, $s5, 868
	addi.w	$s1, $s6, -1
	addi.d	$s2, $s5, 48
	ori	$s4, $zero, 3
	pcalau12i	$a0, %pc_hi20(.L.str.145)
	addi.d	$s3, $a0, %pc_lo12(.L.str.145)
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_21:                               # %if.then245
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.d	$a1, $s5, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB5_22:                               # %if.end261
                                        #   in Loop: Header=BB5_23 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a1, $s6, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB5_141
.LBB5_23:                               # %for.body231
                                        # =>This Inner Loop Header: Depth=1
	move	$s6, $a1
	ld.d	$a0, $a1, 0
	sltui	$a2, $a0, 1
	ld.d	$a1, $s5, 16
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bltu	$fp, $s1, .LBB5_21
# %bb.24:                               # %if.else250
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.w	$a0, $s5, 24
	ld.d	$a3, $s5, 16
	bne	$a0, $s4, .LBB5_26
# %bb.25:                               # %if.then254
                                        #   in Loop: Header=BB5_23 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_26:                               # %if.else257
                                        #   in Loop: Header=BB5_23 Depth=1
	ori	$a0, $zero, 10
	move	$a1, $a3
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB5_22
.LBB5_27:                               # %sw.bb432
	beqz	$a2, .LBB5_141
# %bb.28:                               # %if.end436
	ld.d	$a0, $s5, 16
	ld.d	$a2, $s5, 40
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a1, $a1, %pc_lo12(.L.str.151)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_138
# %bb.29:                               # %for.body442.preheader
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s7, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s8, $a0, %pc_lo12(.L.str.113)
	pcalau12i	$a0, %pc_hi20(.L.str.152)
	addi.d	$s2, $a0, %pc_lo12(.L.str.152)
	ori	$s1, $zero, 45
	ori	$s3, $zero, 39
	pcalau12i	$a0, %pc_hi20(.L.str.156)
	addi.d	$a0, $a0, %pc_lo12(.L.str.156)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB5_33
.LBB5_30:                               # %if.else36.i
                                        #   in Loop: Header=BB5_33 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
.LBB5_31:                               # %while.end.i248
                                        #   in Loop: Header=BB5_33 Depth=1
	ori	$a0, $zero, 39
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %if.end474
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.d	$s6, $s6, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_138
.LBB5_33:                               # %for.body442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_42 Depth 2
                                        #     Child Loop BB5_51 Depth 2
                                        #     Child Loop BB5_59 Depth 2
                                        #     Child Loop BB5_64 Depth 2
                                        #       Child Loop BB5_65 Depth 3
	slli.d	$a0, $s6, 3
	ldx.d	$s4, $a1, $a0
	sltui	$a0, $s6, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$s5, $a0, $a1
	beqz	$s4, .LBB5_44
# %bb.34:                               # %if.else453
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$fp, $s4, 0
	beq	$fp, $s1, .LBB5_36
# %bb.35:                               # %if.else453
                                        #   in Loop: Header=BB5_33 Depth=1
	move	$s0, $s4
	ori	$a0, $zero, 43
	bne	$fp, $a0, .LBB5_37
.LBB5_36:                               # %if.then.i236
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$fp, $s4, 1
	addi.d	$s0, $s4, 1
.LBB5_37:                               # %if.end.i238
                                        #   in Loop: Header=BB5_33 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $fp
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB5_54
# %bb.38:                               # %while.cond.i.preheader
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a3, $s0, 1
	.p2align	4, , 16
.LBB5_39:                               # %while.cond.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a3
	ld.b	$a2, $a3, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	andi	$a4, $a3, 2048
	addi.d	$a3, $a1, 1
	bnez	$a4, .LBB5_39
# %bb.40:                               # %while.end.i
                                        #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
	ori	$a4, $zero, 46
	bne	$a2, $a4, .LBB5_45
# %bb.41:                               # %if.then24.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.b	$a2, $a3, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 2048
	beqz	$a2, .LBB5_54
	.p2align	4, , 16
.LBB5_42:                               # %while.cond35.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	andi	$a3, $a3, 2048
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_42
# %bb.43:                               #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
	ori	$a3, $a2, 32
	ori	$a4, $zero, 101
	beq	$a3, $a4, .LBB5_46
	b	.LBB5_53
	.p2align	4, , 16
.LBB5_44:                               # %if.then450
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	move	$a1, $s2
	move	$a2, $s5
	b	.LBB5_71
.LBB5_45:                               #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a1, $a3, -1
	ori	$a3, $a2, 32
	ori	$a4, $zero, 101
	bne	$a3, $a4, .LBB5_53
.LBB5_46:                               # %if.then57.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a2, $a1, 1
	beq	$a2, $s1, .LBB5_48
# %bb.47:                               # %if.then57.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ori	$a3, $zero, 43
	bne	$a2, $a3, .LBB5_49
.LBB5_48:                               # %if.then66.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a2, $a1, 2
	addi.d	$a1, $a1, 2
	b	.LBB5_50
.LBB5_49:                               #   in Loop: Header=BB5_33 Depth=1
	addi.d	$a1, $a1, 1
.LBB5_50:                               # %if.end68.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ext.w.b	$a2, $a2
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 2048
	beqz	$a2, .LBB5_54
	.p2align	4, , 16
.LBB5_51:                               # %while.cond78.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	andi	$a3, $a3, 2048
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_51
# %bb.52:                               #   in Loop: Header=BB5_33 Depth=1
	andi	$a2, $a2, 255
.LBB5_53:                               # %isNumber.exit
                                        #   in Loop: Header=BB5_33 Depth=1
	beqz	$a2, .LBB5_72
	.p2align	4, , 16
.LBB5_54:                               # %if.else463
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.bu	$a0, $s5, 0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_56
# %bb.55:                               # %if.then466
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$fp, $s6, $a0, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 0
.LBB5_56:                               # %if.end469
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.d	$s5, $s0, 16
	move	$a0, $zero
	move	$a1, $s4
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_57:                               # %if.then.i244
                                        #   in Loop: Header=BB5_59 Depth=2
	addi.w	$a0, $a0, 1
.LBB5_58:                               # %for.inc.i245
                                        #   in Loop: Header=BB5_59 Depth=2
	addi.d	$a1, $a1, 1
.LBB5_59:                               # %for.cond.i241
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	beq	$a2, $s3, .LBB5_57
# %bb.60:                               # %for.cond.i241
                                        #   in Loop: Header=BB5_59 Depth=2
	bnez	$a2, .LBB5_58
# %bb.61:                               # %for.end.i247
                                        #   in Loop: Header=BB5_33 Depth=1
	beqz	$a0, .LBB5_70
# %bb.62:                               # %if.else.i
                                        #   in Loop: Header=BB5_33 Depth=1
	ori	$a0, $zero, 39
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 0
	bnez	$a0, .LBB5_64
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_63:                               # %if.then26.i
                                        #   in Loop: Header=BB5_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.158)
	addi.d	$a0, $a0, %pc_lo12(.L.str.158)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 1
	addi.d	$s4, $s4, 1
	beqz	$a0, .LBB5_31
.LBB5_64:                               # %for.cond10.preheader.i
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_65 Depth 3
	move	$a2, $zero
	move	$a1, $zero
	beqz	$a0, .LBB5_67
	.p2align	4, , 16
.LBB5_65:                               # %for.cond10.i
                                        #   Parent Loop BB5_33 Depth=1
                                        #     Parent Loop BB5_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a0, $s3, .LBB5_67
# %bb.66:                               # %for.inc21.i
                                        #   in Loop: Header=BB5_65 Depth=3
	add.d	$a0, $s4, $a1
	ld.bu	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB5_65
.LBB5_67:                               # %for.end23.i
                                        #   in Loop: Header=BB5_64 Depth=2
	beqz	$a1, .LBB5_63
# %bb.68:                               # %if.else28.i
                                        #   in Loop: Header=BB5_64 Depth=2
	bne	$a0, $s3, .LBB5_30
# %bb.69:                               # %if.then34.i
                                        #   in Loop: Header=BB5_64 Depth=2
	add.d	$fp, $s4, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.159)
	addi.d	$a1, $a0, %pc_lo12(.L.str.159)
	move	$a0, $s5
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s4, $fp
	ld.bu	$a0, $s4, 1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB5_64
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_70:                               # %if.then7.i
                                        #   in Loop: Header=BB5_33 Depth=1
	move	$a0, $s5
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s4
.LBB5_71:                               # %if.end474
                                        #   in Loop: Header=BB5_33 Depth=1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_32
.LBB5_72:                               # %if.then458
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a1, $a1, %pc_lo12(.L.str.144)
	move	$a2, $s5
	move	$a3, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_32
.LBB5_73:                               # %sw.bb321
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	bnez	$a0, .LBB5_79
# %bb.74:                               # %land.lhs.true326
	ld.w	$a0, $s5, 32
	beqz	$a0, .LBB5_79
# %bb.75:                               # %for.cond330.preheader
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_78
# %bb.76:                               # %for.body333.lr.ph
	addi.d	$s3, $s5, 48
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$fp, $a0, %pc_lo12(.L.str.113)
	move	$s0, $s6
	.p2align	4, , 16
.LBB5_77:                               # %for.body333
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s5, 16
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB5_77
.LBB5_78:                               # %for.end350
	ld.d	$a1, $s5, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB5_79:                               # %if.end353
	beqz	$a2, .LBB5_141
# %bb.80:                               # %for.cond358.preheader
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_102
# %bb.81:                               # %for.body361.lr.ph
	addi.d	$fp, $s5, 868
	addi.d	$s2, $s5, 48
	.p2align	4, , 16
.LBB5_82:                               # %for.body361
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 0
	ld.d	$a0, $s5, 16
	move	$s0, $a2
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(output_c_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$a2, $s0, 8
	bnez	$s6, .LBB5_82
	b	.LBB5_102
.LBB5_83:                               # %sw.bb
	beqz	$a2, .LBB5_141
# %bb.84:                               # %for.cond.preheader
	ori	$s3, $zero, 5
	ori	$fp, $zero, 1
	blt	$s6, $fp, .LBB5_87
# %bb.85:                               # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s0, $a0, %pc_lo12(.L.str.113)
	move	$s1, $s6
	move	$s4, $s2
	.p2align	4, , 16
.LBB5_86:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.d	$s1, $s1, -1
	addi.d	$s4, $s4, 8
	bnez	$s1, .LBB5_86
.LBB5_87:                               # %for.end
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	blt	$a0, $fp, .LBB5_89
# %bb.88:                               # %if.then11
	ld.d	$a1, $s5, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB5_89:                               # %if.end13
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$s6, $a0, .LBB5_141
# %bb.90:                               # %for.body17.lr.ph
	addi.d	$fp, $s5, 868
	pcalau12i	$a0, %pc_hi20(.L.str.141)
	addi.d	$s4, $a0, %pc_lo12(.L.str.141)
	.p2align	4, , 16
.LBB5_91:                               # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 0
	ld.d	$a0, $s5, 16
	ld.d	$a3, $s2, 0
	move	$s0, $a2
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a4, $a2, $a1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 8
	bnez	$s6, .LBB5_91
	b	.LBB5_141
.LBB5_92:                               # %sw.bb383
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	bnez	$a0, .LBB5_98
# %bb.93:                               # %land.lhs.true388
	ld.w	$a0, $s5, 32
	beqz	$a0, .LBB5_98
# %bb.94:                               # %for.cond392.preheader
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_97
# %bb.95:                               # %for.body395.lr.ph
	move	$fp, $zero
	addi.w	$s0, $s6, -1
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s1, $a0, %pc_lo12(.L.str.113)
	.p2align	4, , 16
.LBB5_96:                               # %for.body395
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a1, $a1, $a0
	sltu	$a2, $fp, $s0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(output_csv)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	bne	$s6, $fp, .LBB5_96
.LBB5_97:                               # %for.end410
	ld.d	$a1, $s5, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB5_98:                               # %if.end413
	beqz	$a2, .LBB5_141
# %bb.99:                               # %for.cond418.preheader
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB5_102
# %bb.100:                              # %for.body421.lr.ph
	move	$fp, $zero
	addi.w	$s0, $s6, -1
	.p2align	4, , 16
.LBB5_101:                              # %for.body421
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 0
	move	$s1, $a2
	sltu	$a2, $fp, $s0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(output_csv)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$a2, $s1, 8
	bne	$s6, $fp, .LBB5_101
.LBB5_102:                              # %for.end380
	ld.d	$a1, $s5, 16
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB5_141
.LBB5_103:                              # %sw.bb265
	ld.w	$a0, $s5, 12
	addi.d	$a1, $a0, 1
	st.w	$a1, $s5, 12
	bnez	$a0, .LBB5_109
# %bb.104:                              # %land.lhs.true270
	ld.w	$a0, $s5, 32
	beqz	$a0, .LBB5_109
# %bb.105:                              # %if.then273
	ld.d	$a3, $s5, 16
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blt	$s6, $fp, .LBB5_108
# %bb.106:                              # %for.body279.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.147)
	addi.d	$s3, $a0, %pc_lo12(.L.str.147)
	move	$fp, $s6
	.p2align	4, , 16
.LBB5_107:                              # %for.body279
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 16
	ld.d	$a2, $s2, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB5_107
.LBB5_108:                              # %for.end286
	ld.d	$a3, $s5, 16
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB5_109:                              # %if.end289
	beqz	$a2, .LBB5_141
# %bb.110:                              # %if.end293
	ld.d	$a3, $s5, 16
	pcalau12i	$a0, %pc_hi20(.L.str.146)
	addi.d	$a0, $a0, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	blt	$s6, $s2, .LBB5_139
# %bb.111:                              # %for.body299.lr.ph
	move	$s3, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 868
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.149)
	addi.d	$a0, $a0, %pc_lo12(.L.str.149)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.150)
	addi.d	$a0, $a0, %pc_lo12(.L.str.150)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s1, $zero, 60
	ori	$a0, $zero, 1
	lu32i.d	$a0, 64
	lu52i.d	$fp, $a0, 256
	pcalau12i	$a0, %pc_hi20(.L.str.155)
	addi.d	$s4, $a0, %pc_lo12(.L.str.155)
	pcalau12i	$a0, %pc_hi20(.L.str.154)
	addi.d	$s5, $a0, %pc_lo12(.L.str.154)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s6, $a0, %pc_lo12(.L.str.10)
	b	.LBB5_114
	.p2align	4, , 16
.LBB5_112:                              # %output_html_string.exit.loopexit
                                        #   in Loop: Header=BB5_114 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $a0, 16
.LBB5_113:                              # %output_html_string.exit
                                        #   in Loop: Header=BB5_114 Depth=1
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB5_139
.LBB5_114:                              # %for.body299
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_117 Depth 2
                                        #       Child Loop BB5_119 Depth 3
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $s0, 16
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a1, $a2, $a1
	or	$s8, $a1, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$s7, $s0, 16
	bnez	$a0, .LBB5_117
	b	.LBB5_113
	.p2align	4, , 16
.LBB5_115:                              # %if.then25.i
                                        #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a0, $s4
.LBB5_116:                              # %if.end29.i
                                        #   in Loop: Header=BB5_117 Depth=2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	add.d	$a1, $s8, $s0
	ld.bu	$a0, $a1, 1
	addi.d	$s8, $a1, 1
	beqz	$a0, .LBB5_112
.LBB5_117:                              # %for.cond.preheader.i
                                        #   Parent Loop BB5_114 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_119 Depth 3
	move	$a2, $zero
	move	$s0, $zero
	b	.LBB5_119
	.p2align	4, , 16
.LBB5_118:                              # %for.inc.i
                                        #   in Loop: Header=BB5_119 Depth=3
	add.d	$a0, $s8, $s0
	ld.bu	$a0, $a0, 1
	addi.d	$s0, $s0, 1
	addi.w	$a2, $a2, 1
.LBB5_119:                              # %for.cond.i
                                        #   Parent Loop BB5_114 Depth=1
                                        #     Parent Loop BB5_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$s1, $a0, .LBB5_118
# %bb.120:                              # %for.cond.i
                                        #   in Loop: Header=BB5_119 Depth=3
	sll.d	$a1, $s2, $a0
	and	$a1, $a1, $fp
	beqz	$a1, .LBB5_118
# %bb.121:                              # %for.end.i
                                        #   in Loop: Header=BB5_117 Depth=2
	beqz	$s0, .LBB5_123
# %bb.122:                              # %if.then.i
                                        #   in Loop: Header=BB5_117 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a3, $s8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ldx.bu	$a0, $s8, $s0
.LBB5_123:                              # %if.end.i
                                        #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 38
	beq	$a0, $a1, .LBB5_115
# %bb.124:                              # %if.end.i
                                        #   in Loop: Header=BB5_117 Depth=2
	bne	$a0, $s1, .LBB5_112
# %bb.125:                              # %if.then18.i
                                        #   in Loop: Header=BB5_117 Depth=2
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s5
	b	.LBB5_116
.LBB5_126:                              # %for.cond40.preheader
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB5_141
# %bb.127:                              # %for.body43.lr.ph
	move	$fp, $zero
	addi.d	$a0, $a1, 868
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s1, $a1, 468
	addi.d	$a0, $a2, -1
	bstrpick.d	$s4, $a0, 31, 0
	ori	$s7, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$s8, $a0, %pc_lo12(.L.str.113)
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$s5, $a0, %pc_lo12(.L.str.114)
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$s6, $a0, %pc_lo12(.L.str.107)
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$a0, $a0, %pc_lo12(.L.str.142)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_128:                              # %if.end105
                                        #   in Loop: Header=BB5_129 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $fp, .LBB5_142
.LBB5_129:                              # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	bltu	$s7, $fp, .LBB5_131
# %bb.130:                              # %if.end51
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.w	$a2, $s1, -400
	bgtz	$a2, .LBB5_135
.LBB5_131:                              # %if.then54
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a0, $s2, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_133
# %bb.132:                              # %land.lhs.true
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $s3, 0
	bnez	$a1, .LBB5_134
.LBB5_133:                              # %cond.false77
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
.LBB5_134:                              # %if.end88
                                        #   in Loop: Header=BB5_129 Depth=1
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	ori	$a2, $zero, 10
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a2, $a0, $a1
	bltu	$s7, $fp, .LBB5_136
.LBB5_135:                              # %if.then92
                                        #   in Loop: Header=BB5_129 Depth=1
	st.w	$a2, $s1, 0
.LBB5_136:                              # %if.end95
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	beqz	$a0, .LBB5_128
# %bb.137:                              # %if.then97
                                        #   in Loop: Header=BB5_129 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a4, $s2, 0
	xor	$a1, $s4, $fp
	sltui	$a1, $a1, 1
	masknez	$a3, $s5, $a1
	maskeqz	$a1, $s6, $a1
	or	$a5, $a1, $a3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB5_128
.LBB5_138:                              # %for.end477
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.153)
	addi.d	$a0, $a0, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 3
	b	.LBB5_140
.LBB5_139:                              # %for.end318
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.148)
	addi.d	$a0, $a0, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 6
.LBB5_140:                              # %sw.epilog
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB5_141:                              # %sw.epilog
	move	$a0, $zero
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
.LBB5_142:                              # %for.end108
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB5_3
# %bb.143:                              # %for.body115.lr.ph
	move	$fp, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s0, $a0, 468
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$s1, $a0, 31, 0
	ori	$s7, $zero, 99
	pcalau12i	$a0, %pc_hi20(.L.str.142)
	addi.d	$s2, $a0, %pc_lo12(.L.str.142)
	pcalau12i	$a0, %pc_hi20(.L.str.143)
	addi.d	$s3, $a0, %pc_lo12(.L.str.143)
	b	.LBB5_145
	.p2align	4, , 16
.LBB5_144:                              # %if.end125
                                        #   in Loop: Header=BB5_145 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	xor	$a1, $s4, $fp
	sltui	$a1, $a1, 1
	masknez	$a3, $s5, $a1
	maskeqz	$a1, $s6, $a1
	or	$a5, $a1, $a3
	move	$a1, $s2
	move	$a3, $a2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	beq	$s1, $fp, .LBB5_3
.LBB5_145:                              # %for.body115
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 10
	bltu	$s7, $fp, .LBB5_144
# %bb.146:                              # %if.then120
                                        #   in Loop: Header=BB5_145 Depth=1
	ld.w	$a2, $s0, 0
	b	.LBB5_144
.Lfunc_end5:
	.size	callback, .Lfunc_end5-callback
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_83-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_13-.LJTI5_0
	.word	.LBB5_103-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_73-.LJTI5_0
	.word	.LBB5_92-.LJTI5_0
	.word	.LBB5_141-.LJTI5_0
	.word	.LBB5_2-.LJTI5_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function process_input
.LCPI6_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.p2align	5
	.type	process_input,@function
process_input:                          # @process_input
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s2, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $zero
	move	$a2, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(bail_on_error)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(stdin_is_interactive)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(mainPrompt)
	addi.d	$a0, $a0, %pc_lo12(mainPrompt)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(continuePrompt)
	addi.d	$a0, $a0, %pc_lo12(continuePrompt)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(seenInterrupt)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$s0, 2
	ori	$s7, $zero, 10
	ori	$fp, $zero, 47
	ori	$s8, $zero, 42
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB6_1:                                # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_47 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_58 Depth 3
                                        #     Child Loop BB6_65 Depth 2
                                        #       Child Loop BB6_72 Depth 3
                                        #       Child Loop BB6_76 Depth 3
                                        #     Child Loop BB6_96 Depth 2
                                        #     Child Loop BB6_83 Depth 2
	move	$s5, $a2
	.p2align	4, , 16
.LBB6_2:                                # %while.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
	beqz	$s3, .LBB6_6
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bail_on_error)
	beqz	$a0, .LBB6_6
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB6_2 Depth=2
	bnez	$s2, .LBB6_111
# %bb.5:                                # %lor.rhs
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB6_111
.LBB6_6:                                # %while.body
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB6_8
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $zero
	move	$a1, $s2
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB6_12
	b	.LBB6_110
	.p2align	4, , 16
.LBB6_8:                                # %if.end.i
                                        #   in Loop: Header=BB6_2 Depth=2
	beqz	$s1, .LBB6_10
# %bb.9:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a1, $s1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_11
.LBB6_10:                               # %if.else.i
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB6_11:                               # %if.end3.i
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(local_getline)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB6_110
.LBB6_12:                               # %if.end
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(seenInterrupt)
	beqz	$a0, .LBB6_15
# %bb.13:                               # %if.then6
                                        #   in Loop: Header=BB6_2 Depth=2
	bnez	$s2, .LBB6_111
# %bb.14:                               # %if.end9
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(seenInterrupt)
.LBB6_15:                               # %if.end10
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB6_17
# %bb.16:                               # %if.then12
                                        #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %if.end14
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	beqz	$s1, .LBB6_19
# %bb.18:                               # %lor.lhs.false16
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB6_35
.LBB6_19:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$s6, $s4, 0
	beqz	$s6, .LBB6_2
# %bb.20:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB6_2 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a2, $s6
	move	$a1, $s4
	ori	$a4, $zero, 45
	b	.LBB6_22
	.p2align	4, , 16
.LBB6_21:                               # %for.inc.i
                                        #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB6_2
.LBB6_22:                               # %for.body.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_29 Depth 4
                                        #         Child Loop BB6_33 Depth 4
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $s0
	bnez	$a3, .LBB6_21
# %bb.23:                               # %if.end.i74
                                        #   in Loop: Header=BB6_22 Depth=3
	beq	$a2, $a4, .LBB6_31
# %bb.24:                               # %if.end.i74
                                        #   in Loop: Header=BB6_22 Depth=3
	bne	$a2, $fp, .LBB6_36
# %bb.25:                               # %land.lhs.true.i75
                                        #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	bne	$a2, $s8, .LBB6_36
# %bb.26:                               # %if.then9.i
                                        #   in Loop: Header=BB6_22 Depth=3
	addi.d	$a1, $a1, 3
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_27:                               # %lor.rhs.i
                                        #   in Loop: Header=BB6_29 Depth=4
	ld.bu	$a2, $a1, 0
	beq	$a2, $fp, .LBB6_21
.LBB6_28:                               # %while.body.i
                                        #   in Loop: Header=BB6_29 Depth=4
	addi.d	$a1, $a1, 1
.LBB6_29:                               # %while.cond.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        #       Parent Loop BB6_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$a2, $a1, -1
	beq	$a2, $s8, .LBB6_27
# %bb.30:                               # %while.cond.i
                                        #   in Loop: Header=BB6_29 Depth=4
	bnez	$a2, .LBB6_28
	b	.LBB6_36
	.p2align	4, , 16
.LBB6_31:                               # %land.lhs.true29.i
                                        #   in Loop: Header=BB6_22 Depth=3
	ld.bu	$a2, $a1, 1
	bne	$a2, $a4, .LBB6_36
# %bb.32:                               # %if.then34.i
                                        #   in Loop: Header=BB6_22 Depth=3
	addi.d	$a1, $a1, 2
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB6_2
	.p2align	4, , 16
.LBB6_33:                               # %while.cond36.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        #       Parent Loop BB6_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a2, $s7, .LBB6_21
# %bb.34:                               # %while.body44.i
                                        #   in Loop: Header=BB6_33 Depth=4
	addi.d	$a1, $a1, 1
	ld.bu	$a2, $a1, 0
	bnez	$a2, .LBB6_33
	b	.LBB6_2
.LBB6_35:                               # %land.lhs.true24.loopexit215
                                        #   in Loop: Header=BB6_2 Depth=2
	ld.bu	$s6, $s4, 0
	.p2align	4, , 16
.LBB6_36:                               # %land.lhs.true24
                                        #   in Loop: Header=BB6_2 Depth=2
	ori	$a0, $zero, 46
	bne	$s6, $a0, .LBB6_41
# %bb.37:                               # %land.lhs.true24
                                        #   in Loop: Header=BB6_2 Depth=2
	addi.w	$a0, $s5, 0
	bnez	$a0, .LBB6_41
# %bb.38:                               # %if.then32
                                        #   in Loop: Header=BB6_2 Depth=2
	move	$a0, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(do_meta_command)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB6_2
# %bb.39:                               # %if.then32
                                        #   in Loop: Header=BB6_2 Depth=2
	ori	$a0, $zero, 2
	beq	$s5, $a0, .LBB6_111
# %bb.40:                               # %if.then38
                                        #   in Loop: Header=BB6_2 Depth=2
	move	$s5, $zero
	addi.w	$s3, $s3, 1
	b	.LBB6_2
.LBB6_41:                               # %land.lhs.true24.split
                                        #   in Loop: Header=BB6_1 Depth=1
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $s5, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a5, $a0, 0
	move	$a2, $s0
	move	$s0, $s4
	.p2align	4, , 16
.LBB6_42:                               # %while.cond.i77
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$s3, $s0, 0
	andi	$a0, $s3, 255
	slli.d	$a1, $a0, 1
	ldx.hu	$a1, $a5, $a1
	and	$a1, $a1, $a2
	addi.d	$s0, $s0, 1
	bnez	$a1, .LBB6_42
# %bb.43:                               # %while.end.i
                                        #   in Loop: Header=BB6_1 Depth=1
	ori	$a4, $zero, 45
	bne	$a0, $fp, .LBB6_60
# %bb.44:                               # %land.lhs.true.i84
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB6_78
# %bb.45:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s0
	b	.LBB6_47
.LBB6_46:                               # %for.inc.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB6_78
.LBB6_47:                               # %for.body.i.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_58 Depth 3
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a5, $a2
	lu12i.w	$a3, 2
	and	$a2, $a2, $a3
	bnez	$a2, .LBB6_46
# %bb.48:                               # %if.end.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	beq	$a1, $a4, .LBB6_56
# %bb.49:                               # %if.end.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	bne	$a1, $fp, .LBB6_60
# %bb.50:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s8, .LBB6_60
# %bb.51:                               # %if.then9.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	addi.d	$a0, $a0, 3
	b	.LBB6_54
	.p2align	4, , 16
.LBB6_52:                               # %lor.rhs.i.i
                                        #   in Loop: Header=BB6_54 Depth=3
	ld.bu	$a1, $a0, 0
	beq	$a1, $fp, .LBB6_46
.LBB6_53:                               # %while.body.i.i
                                        #   in Loop: Header=BB6_54 Depth=3
	addi.d	$a0, $a0, 1
.LBB6_54:                               # %while.cond.i.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a1, $a0, -1
	beq	$a1, $s8, .LBB6_52
# %bb.55:                               # %while.cond.i.i
                                        #   in Loop: Header=BB6_54 Depth=3
	bnez	$a1, .LBB6_53
	b	.LBB6_60
.LBB6_56:                               # %land.lhs.true29.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $a4, .LBB6_60
# %bb.57:                               # %if.then34.i.i
                                        #   in Loop: Header=BB6_47 Depth=2
	addi.d	$a0, $a0, 2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB6_78
	.p2align	4, , 16
.LBB6_58:                               # %while.cond36.i.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s7, .LBB6_46
# %bb.59:                               # %while.body44.i.i
                                        #   in Loop: Header=BB6_58 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB6_58
	b	.LBB6_78
.LBB6_60:                               # %if.end.i82
                                        #   in Loop: Header=BB6_1 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ori	$a4, $zero, 45
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$a1, $a0, $a1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ori	$a2, $zero, 103
	bne	$a1, $a2, .LBB6_79
# %bb.61:                               # %land.lhs.true15.i
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.b	$a1, $s0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB6_79
# %bb.62:                               # %land.lhs.true25.i
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.bu	$a1, $s0, 1
	beqz	$a1, .LBB6_78
# %bb.63:                               # %for.body.i10.i.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addi.d	$a0, $s0, 1
	b	.LBB6_65
.LBB6_64:                               # %for.inc.i15.i
                                        #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB6_78
.LBB6_65:                               # %for.body.i10.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_72 Depth 3
                                        #       Child Loop BB6_76 Depth 3
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a5, $a2
	lu12i.w	$a3, 2
	and	$a2, $a2, $a3
	bnez	$a2, .LBB6_64
# %bb.66:                               # %if.end.i20.i
                                        #   in Loop: Header=BB6_65 Depth=2
	beq	$a1, $a4, .LBB6_74
# %bb.67:                               # %if.end.i20.i
                                        #   in Loop: Header=BB6_65 Depth=2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $fp, .LBB6_79
# %bb.68:                               # %land.lhs.true.i30.i
                                        #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	bne	$a1, $s8, .LBB6_79
# %bb.69:                               # %if.then9.i33.i
                                        #   in Loop: Header=BB6_65 Depth=2
	addi.d	$a0, $a0, 3
	b	.LBB6_72
.LBB6_70:                               # %lor.rhs.i37.i
                                        #   in Loop: Header=BB6_72 Depth=3
	ld.bu	$a1, $a0, 0
	beq	$a1, $fp, .LBB6_64
.LBB6_71:                               # %while.body.i40.i
                                        #   in Loop: Header=BB6_72 Depth=3
	addi.d	$a0, $a0, 1
.LBB6_72:                               # %while.cond.i35.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a1, $a0, -1
	beq	$a1, $s8, .LBB6_70
# %bb.73:                               # %while.cond.i35.i
                                        #   in Loop: Header=BB6_72 Depth=3
	bnez	$a1, .LBB6_71
	b	.LBB6_79
.LBB6_74:                               # %land.lhs.true29.i21.i
                                        #   in Loop: Header=BB6_65 Depth=2
	ld.bu	$a1, $a0, 1
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $a4, .LBB6_79
# %bb.75:                               # %if.then34.i24.i
                                        #   in Loop: Header=BB6_65 Depth=2
	addi.d	$a0, $a0, 2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB6_78
.LBB6_76:                               # %while.cond36.i26.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$a1, $s7, .LBB6_64
# %bb.77:                               # %while.body44.i28.i
                                        #   in Loop: Header=BB6_76 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB6_76
.LBB6_78:                               # %if.end46.thread
                                        #   in Loop: Header=BB6_1 Depth=1
	ori	$s6, $zero, 59
	st.h	$s6, $s4, 0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	lu12i.w	$s0, 2
	bnez	$s1, .LBB6_80
	b	.LBB6_95
.LBB6_79:                               # %if.end46
                                        #   in Loop: Header=BB6_1 Depth=1
	lu12i.w	$s0, 2
	beqz	$s1, .LBB6_94
.LBB6_80:                               # %if.else82
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.d	$a0, $s5, $a0
	addi.w	$a1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_131
# %bb.81:                               # %if.end93
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $a0
	addi.w	$s0, $s5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	stx.b	$s7, $s1, $a0
	add.d	$a0, $s1, $s0
	slli.d	$a1, $s6, 32
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	srai.d	$a2, $a1, 32
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a2, $s0, $s6
	lu12i.w	$s0, 2
	sub.w	$a0, $a2, $s5
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_1
.LBB6_82:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s5, $a2
	ori	$a2, $zero, 59
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_83:                               # %for.body.i86
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a1, $s1, $a3
	beq	$a1, $a2, .LBB6_86
# %bb.84:                               # %for.cond.i
                                        #   in Loop: Header=BB6_83 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB6_83
# %bb.85:                               #   in Loop: Header=BB6_1 Depth=1
	move	$a2, $s5
	b	.LBB6_1
.LBB6_86:                               # %land.lhs.true109
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sqlite3_complete)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	beqz	$a0, .LBB6_1
# %bb.87:                               # %if.then112
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$zero, $a0, 12
	pcaddu18i	$ra, %call36(open_db)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(enableTimer)
	ld.w	$a0, $s0, %pc_lo12(enableTimer)
	beqz	$a0, .LBB6_89
# %bb.88:                               # %if.then.i89
                                        #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(sBegin)
	addi.d	$a1, $a0, %pc_lo12(sBegin)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
.LBB6_89:                               # %beginTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	pcalau12i	$a1, %pc_hi20(callback)
	addi.d	$a2, $a1, %pc_lo12(callback)
	addi.d	$a4, $sp, 136
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(enableTimer)
	move	$s5, $a0
	beqz	$a1, .LBB6_91
# %bb.90:                               # %if.then.i93
                                        #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(sBegin)
	addi.d	$s0, $a0, %pc_lo12(sBegin)
	addi.d	$a1, $sp, 144
	move	$a0, $zero
	pcaddu18i	$ra, %call36(getrusage)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	vld	$vr1, $sp, 144
	vsub.d	$vr0, $vr1, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	vpickve2gr.d	$a1, $vr0, 1
	add.d	$a0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI6_0)
	vld	$vr1, $s0, 16
	vld	$vr2, $sp, 160
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa0
	vsub.d	$vr1, $vr2, $vr1
	vpickve2gr.d	$a0, $vr1, 0
	mul.d	$a0, $a0, $a2
	vpickve2gr.d	$a1, $vr1, 1
	add.d	$a0, $a1, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa3
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.167)
	addi.d	$a0, $a0, %pc_lo12(.L.str.167)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_91:                               # %endTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	bnez	$s5, .LBB6_101
# %bb.92:                               # %endTimer.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 136
	bnez	$a0, .LBB6_101
# %bb.93:                               #   in Loop: Header=BB6_1 Depth=1
	lu12i.w	$s0, 2
	b	.LBB6_109
.LBB6_94:                               # %for.cond.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $zero
	move	$a2, $s5
	beqz	$s6, .LBB6_1
.LBB6_95:                               # %land.rhs53.lr.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB6_96:                               # %land.rhs53
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $s6, 1
	ldx.hu	$a2, $a0, $a2
	and	$a2, $a2, $s0
	beqz	$a2, .LBB6_99
# %bb.97:                               # %for.cond
                                        #   in Loop: Header=BB6_96 Depth=2
	ldx.bu	$s6, $s4, $a1
	addi.d	$a1, $a1, 1
	bnez	$s6, .LBB6_96
# %bb.98:                               #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $zero
	move	$a2, $s5
	b	.LBB6_1
.LBB6_99:                               # %if.then69
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 32
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	move	$s6, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_132
# %bb.100:                              # %if.end78
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$s1, $a0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $a2, $s5
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB6_82
	b	.LBB6_1
.LBB6_101:                              # %if.then117
                                        #   in Loop: Header=BB6_1 Depth=1
	lu12i.w	$s0, 2
	bnez	$s2, .LBB6_104
# %bb.102:                              # %if.then117
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(stdin_is_interactive)
	beqz	$a0, .LBB6_104
# %bb.103:                              # %if.else124
                                        #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.164)
	addi.d	$a2, $a0, %pc_lo12(.L.str.164)
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	b	.LBB6_105
.LBB6_104:                              # %if.then122
                                        #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.163)
	addi.d	$a2, $a0, %pc_lo12(.L.str.163)
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 144
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
.LBB6_105:                              # %if.end127
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a2, $sp, 136
	beqz	$a2, .LBB6_107
# %bb.106:                              # %if.then130
                                        #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136
	b	.LBB6_108
.LBB6_107:                              # %if.else133
                                        #   in Loop: Header=BB6_1 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(sqlite3_errmsg)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.165)
	addi.d	$a0, $a0, %pc_lo12(.L.str.165)
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_108:                              # %if.end138
                                        #   in Loop: Header=BB6_1 Depth=1
	addi.w	$s3, $s3, 1
.LBB6_109:                              # %if.end140
                                        #   in Loop: Header=BB6_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$a2, $zero
	b	.LBB6_1
.LBB6_110:
	move	$s4, $zero
.LBB6_111:                              # %while.end
	beqz	$s1, .LBB6_130
# %bb.112:                              # %if.then143
	ld.bu	$fp, $s1, 0
	beqz	$fp, .LBB6_129
# %bb.113:                              # %for.body.lr.ph.i97
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 45
	ori	$a2, $zero, 10
	ori	$a3, $zero, 47
	ori	$a4, $zero, 42
	move	$a5, $s1
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_114:                              # %for.inc.i104
                                        #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$fp, $a5, 1
	addi.d	$a5, $a5, 1
	beqz	$fp, .LBB6_129
.LBB6_115:                              # %for.body.i99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_122 Depth 2
                                        #     Child Loop BB6_126 Depth 2
	slli.d	$a6, $fp, 1
	ldx.hu	$a6, $a0, $a6
	and	$a6, $a6, $s0
	bnez	$a6, .LBB6_114
# %bb.116:                              # %if.end.i109
                                        #   in Loop: Header=BB6_115 Depth=1
	beq	$fp, $a1, .LBB6_124
# %bb.117:                              # %if.end.i109
                                        #   in Loop: Header=BB6_115 Depth=1
	bne	$fp, $a3, .LBB6_128
# %bb.118:                              # %land.lhs.true.i119
                                        #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$a6, $a5, 1
	bne	$a6, $a4, .LBB6_128
# %bb.119:                              # %if.then9.i122
                                        #   in Loop: Header=BB6_115 Depth=1
	addi.d	$a5, $a5, 3
	b	.LBB6_122
	.p2align	4, , 16
.LBB6_120:                              # %lor.rhs.i126
                                        #   in Loop: Header=BB6_122 Depth=2
	ld.bu	$a6, $a5, 0
	beq	$a6, $a3, .LBB6_114
.LBB6_121:                              # %while.body.i129
                                        #   in Loop: Header=BB6_122 Depth=2
	addi.d	$a5, $a5, 1
.LBB6_122:                              # %while.cond.i124
                                        #   Parent Loop BB6_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a5, -1
	beq	$a6, $a4, .LBB6_120
# %bb.123:                              # %while.cond.i124
                                        #   in Loop: Header=BB6_122 Depth=2
	bnez	$a6, .LBB6_121
	b	.LBB6_128
	.p2align	4, , 16
.LBB6_124:                              # %land.lhs.true29.i110
                                        #   in Loop: Header=BB6_115 Depth=1
	ld.bu	$a6, $a5, 1
	bne	$a6, $a1, .LBB6_128
# %bb.125:                              # %if.then34.i113
                                        #   in Loop: Header=BB6_115 Depth=1
	addi.d	$a5, $a5, 2
	ld.bu	$a6, $a5, 0
	beqz	$a6, .LBB6_129
	.p2align	4, , 16
.LBB6_126:                              # %while.cond36.i115
                                        #   Parent Loop BB6_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a6, $a2, .LBB6_114
# %bb.127:                              # %while.body44.i117
                                        #   in Loop: Header=BB6_126 Depth=2
	addi.d	$a5, $a5, 1
	ld.bu	$a6, $a5, 0
	bnez	$a6, .LBB6_126
	b	.LBB6_129
.LBB6_128:                              # %if.then146
	pcalau12i	$a0, %pc_hi20(.L.str.166)
	addi.d	$a0, $a0, %pc_lo12(.L.str.166)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB6_129:                              # %if.end148
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_130:                              # %if.end149
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB6_131:                              # %if.then91
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Argv0)
	ld.d	$a2, $a1, %pc_lo12(Argv0)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_132:                              # %if.then76
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.162)
	addi.d	$a0, $a0, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	process_input, .Lfunc_end6-process_input
                                        # -- End function
	.p2align	5                               # -- Begin function set_table_name
	.type	set_table_name,@function
set_table_name:                         # @set_table_name
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 40
	move	$fp, $a1
	beqz	$a0, .LBB7_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 40
.LBB7_2:                                # %if.end
	beqz	$fp, .LBB7_18
# %bb.3:                                # %if.end4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$a3, $a1, -95
	sltu	$a3, $zero, $a3
	andi	$a2, $a2, 1024
	sltui	$a2, $a2, 1
	and	$s1, $a3, $a2
	move	$a2, $zero
	beqz	$a1, .LBB7_6
# %bb.4:                                # %for.body.preheader
	addi.d	$a3, $fp, 1
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a1, 1
	ldx.hu	$a5, $a0, $a5
	andi	$a5, $a5, 8
	sltui	$a5, $a5, 1
	addi.d	$a6, $a1, -95
	sltu	$a6, $zero, $a6
	addi.d	$a1, $a1, -39
	sltui	$a1, $a1, 1
	and	$a7, $a1, $a5
	masknez	$a1, $s1, $a5
	maskeqz	$a5, $a4, $a5
	or	$a1, $a5, $a1
	maskeqz	$a5, $a1, $a6
	masknez	$a6, $s1, $a6
	ld.bu	$a1, $a3, 0
	or	$s1, $a5, $a6
	add.d	$a2, $a2, $a7
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB7_5
.LBB7_6:                                # %for.end
	sltui	$a0, $s1, 1
	addi.d	$a1, $a2, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 40
	beqz	$a0, .LBB7_19
# %bb.7:                                # %if.end49
	beqz	$s1, .LBB7_13
# %bb.8:                                # %if.then51
	ori	$a1, $zero, 39
	st.b	$a1, $a0, 0
	ori	$a4, $zero, 1
	ld.bu	$a5, $fp, 0
	beqz	$a5, .LBB7_14
.LBB7_9:                                # %for.body60.preheader
	addi.d	$a2, $fp, 1
	ori	$a3, $zero, 39
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %for.inc76
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a5, $a2, 0
	addi.d	$a2, $a2, 1
	move	$a4, $a1
	beqz	$a5, .LBB7_15
.LBB7_11:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a4, 1
	stx.b	$a5, $a0, $a4
	bne	$a5, $a3, .LBB7_10
# %bb.12:                               # %if.then71
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a4, $a4, 2
	stx.b	$a3, $a0, $a1
	move	$a1, $a4
	b	.LBB7_10
.LBB7_13:
	move	$a4, $zero
	ld.bu	$a5, $fp, 0
	bnez	$a5, .LBB7_9
.LBB7_14:
	move	$a1, $a4
.LBB7_15:                               # %for.end78
	beqz	$s1, .LBB7_17
# %bb.16:                               # %if.then80
	addi.w	$a2, $a1, 1
	ori	$a3, $zero, 39
	stx.b	$a3, $a0, $a1
	move	$a1, $a2
.LBB7_17:                               # %if.end84
	stx.b	$zero, $a0, $a1
.LBB7_18:                               # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_19:                               # %if.then47
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.168)
	addi.d	$a0, $a0, %pc_lo12(.L.str.168)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	set_table_name, .Lfunc_end7-set_table_name
                                        # -- End function
	.p2align	5                               # -- Begin function shellstaticFunc
	.type	shellstaticFunc,@function
shellstaticFunc:                        # @shellstaticFunc
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(zShellStatic)
	ld.d	$a1, $a1, %pc_lo12(zShellStatic)
	addi.w	$a2, $zero, -1
	move	$a3, $zero
	pcaddu18i	$t8, %call36(sqlite3_result_text)
	jr	$t8
.Lfunc_end8:
	.size	shellstaticFunc, .Lfunc_end8-shellstaticFunc
                                        # -- End function
	.p2align	5                               # -- Begin function booleanValue
	.type	booleanValue,@function
booleanValue:                           # @booleanValue
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $fp, 0
	move	$s0, $a0
	beqz	$s1, .LBB9_6
# %bb.1:                                # %for.body.lr.ph
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 1
	.p2align	4, , 16
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	ext.w.b	$a3, $s1
	slli.d	$a3, $a3, 2
	ldx.b	$a2, $a2, $a3
	ld.bu	$s1, $a1, 0
	st.b	$a2, $a1, -1
	addi.d	$a1, $a1, 1
	bnez	$s1, .LBB9_2
# %bb.3:                                # %sub_0
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB9_6
# %bb.4:                                # %sub_1
	ld.bu	$a0, $fp, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB9_6
# %bb.5:                                # %for.end.tail
	ld.bu	$a0, $fp, 2
	beqz	$a0, .LBB9_8
.LBB9_6:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.119)
	addi.d	$a1, $a0, %pc_lo12(.L.str.119)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB9_7:                                # %if.end15
	addi.w	$a0, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_8:
	ori	$a0, $zero, 1
	b	.LBB9_7
.Lfunc_end9:
	.size	booleanValue, .Lfunc_end9-booleanValue
                                        # -- End function
	.p2align	5                               # -- Begin function run_schema_dump_query
	.type	run_schema_dump_query,@function
run_schema_dump_query:                  # @run_schema_dump_query
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	pcalau12i	$a1, %pc_hi20(dump_callback)
	addi.d	$a2, $a1, %pc_lo12(dump_callback)
	move	$a1, $s0
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB10_3
# %bb.1:                                # %if.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 100
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_3
# %bb.2:                                # %if.end8
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a2, $a0, %pc_lo12(.L.str.120)
	ori	$a0, $zero, 8
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sqlite3_snprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(dump_callback)
	addi.d	$a2, $a1, %pc_lo12(dump_callback)
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_exec)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB10_3:                               # %cleanup14
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	run_schema_dump_query, .Lfunc_end10-run_schema_dump_query
                                        # -- End function
	.p2align	5                               # -- Begin function run_table_dump_query
	.type	run_table_dump_query,@function
run_table_dump_query:                   # @run_table_dump_query
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $a2
	move	$fp, $a0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 8
	move	$a0, $a1
	move	$a1, $a4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
# %bb.1:                                # %entry
	ld.d	$a1, $sp, 8
	beqz	$a1, .LBB11_6
# %bb.2:                                # %if.end
	move	$a0, $a1
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 100
	bne	$a0, $s1, .LBB11_5
# %bb.3:                                # %while.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.129)
	addi.d	$s0, $a0, %pc_lo12(.L.str.129)
	.p2align	4, , 16
.LBB11_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(sqlite3_column_text)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB11_4
.LBB11_5:                               # %while.end
	ld.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
.LBB11_6:                               # %cleanup
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	run_table_dump_query, .Lfunc_end11-run_table_dump_query
                                        # -- End function
	.p2align	5                               # -- Begin function local_getline
	.type	local_getline,@function
local_getline:                          # @local_getline
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
	move	$fp, $a1
	beqz	$a0, .LBB12_3
# %bb.1:                                # %land.lhs.true
	move	$a1, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB12_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB12_3:                               # %if.end
	ori	$a0, $zero, 100
	ori	$s4, $zero, 100
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_15
# %bb.4:                                # %while.body.preheader
	move	$s0, $a0
	move	$s1, $zero
	ori	$s5, $zero, 10
	ori	$s2, $zero, 100
	.p2align	4, , 16
.LBB12_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s1, 100
	bge	$s2, $a0, .LBB12_7
# %bb.6:                                # %if.then11
                                        #   in Loop: Header=BB12_5 Depth=1
	alsl.w	$s2, $s2, $s4, 1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB12_15
.LBB12_7:                               # %if.end19
                                        #   in Loop: Header=BB12_5 Depth=1
	add.d	$s3, $s0, $s1
	sub.w	$a1, $s2, $s1
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_11
# %bb.8:                                # %while.cond31.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.w	$s1, $s1, $a0
	blez	$s1, .LBB12_5
# %bb.9:                                # %land.lhs.true38
                                        #   in Loop: Header=BB12_5 Depth=1
	add.d	$a0, $s0, $s1
	ld.bu	$a1, $a0, -1
	bne	$a1, $s5, .LBB12_5
# %bb.10:                               # %while.end49.loopexit
	st.b	$zero, $a0, -1
	b	.LBB12_13
.LBB12_11:                              # %if.then23
	beqz	$s1, .LBB12_14
# %bb.12:                               # %if.end27
	st.b	$zero, $s3, 0
	addi.w	$s1, $s1, 1
.LBB12_13:                              # %while.end49
	move	$a0, $s0
	move	$a1, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(realloc)
	jr	$t8
.LBB12_14:                              # %if.then26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %cleanup
	move	$a0, $zero
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
.Lfunc_end12:
	.size	local_getline, .Lfunc_end12-local_getline
                                        # -- End function
	.p2align	5                               # -- Begin function output_c_string
	.type	output_c_string,@function
output_c_string:                        # @output_c_string
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
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 34
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 13
	ori	$s4, $zero, 92
	lu12i.w	$s5, 4
	pcalau12i	$a0, %pc_hi20(.L.str.140)
	addi.d	$s1, $a0, %pc_lo12(.L.str.140)
	pcalau12i	$a0, %pc_hi20(.LJTI13_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI13_0)
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s3, $a0, .LBB13_3
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_1:                               # %if.then8
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 116
.LBB13_2:                               # %while.cond
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bltu	$s3, $a0, .LBB13_6
.LBB13_3:                               # %while.cond
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s6, $a1
	add.d	$a1, $s6, $a1
	jr	$a1
.LBB13_4:                               # %if.then14
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 110
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_5:                               # %if.then20
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 114
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_6:                               # %while.cond
	bne	$a0, $s4, .LBB13_8
# %bb.7:                                # %if.then
	ori	$a0, $zero, 92
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 92
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_8:                               # %if.else23
	ext.w.b	$s2, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $s5
	bnez	$a0, .LBB13_10
# %bb.9:                                # %if.then26
	andi	$a2, $s2, 255
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	bgeu	$s3, $a0, .LBB13_3
	b	.LBB13_6
.LBB13_10:                              # %if.else29
	move	$a0, $s2
	b	.LBB13_2
.LBB13_11:                              # %while.end
	ori	$a0, $zero, 34
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end13:
	.size	output_c_string, .Lfunc_end13-output_c_string
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_11-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_1-.LJTI13_0
	.word	.LBB13_4-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
	.word	.LBB13_5-.LJTI13_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function dump_callback
	.type	dump_callback,@function
dump_callback:                          # @dump_callback
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
	move	$fp, $a0
	ori	$a3, $zero, 3
	ori	$a0, $zero, 1
	bne	$a1, $a3, .LBB14_109
# %bb.1:                                # %if.end
	ld.d	$s0, $a2, 0
	ld.d	$s1, $a2, 8
	ld.d	$s2, $a2, 16
	pcalau12i	$a0, %pc_hi20(.L.str.121)
	addi.d	$a1, $a0, %pc_lo12(.L.str.121)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_6
# %bb.2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.123)
	addi.d	$a1, $a0, %pc_lo12(.L.str.123)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_7
# %bb.3:                                # %if.else11
	pcalau12i	$a0, %pc_hi20(.L.str.125)
	addi.d	$a1, $a0, %pc_lo12(.L.str.125)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_10
# %bb.4:                                # %if.else15
	pcalau12i	$a0, %pc_hi20(.L.str.126)
	addi.d	$a1, $a0, %pc_lo12(.L.str.126)
	ori	$a2, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_17
# %bb.5:                                # %if.else27
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.129)
	addi.d	$a1, $a1, %pc_lo12(.L.str.129)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB14_9
.LBB14_6:                               # %if.then4
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.122)
	addi.d	$a0, $a0, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 29
	b	.LBB14_8
.LBB14_7:                               # %if.then8
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.124)
	addi.d	$a0, $a0, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 23
.LBB14_8:                               # %if.end33
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB14_9:                               # %if.end33
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a1, $a0, %pc_lo12(.L.str.81)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_11
.LBB14_10:                              # %cleanup
	move	$a0, $zero
	b	.LBB14_109
.LBB14_11:                              # %if.then36
	st.d	$zero, $sp, 64
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_13
# %bb.12:                               # %cond.true.i
	pcalau12i	$a0, %pc_hi20(.L.str.130)
	addi.d	$a0, $a0, %pc_lo12(.L.str.130)
	ld.h	$a1, $a0, 16
	vld	$vr0, $a0, 0
	st.h	$a1, $s1, 16
	vst	$vr0, $s1, 0
	st.b	$zero, $s1, 18
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_14
.LBB14_13:                              # %appendText.exit.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $zero
.LBB14_14:                              # %cond.end.i
	addi.w	$s4, $s2, 0
	add.d	$a0, $s2, $s3
	ori	$a2, $zero, 1
	addi.w	$a1, $a0, 3
	blt	$s4, $a2, .LBB14_25
# %bb.15:                               # %for.body.preheader.i
	bstrpick.d	$a0, $s2, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB14_20
# %bb.16:
	move	$a2, $zero
	b	.LBB14_23
.LBB14_17:                              # %if.then18
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB14_19
# %bb.18:                               # %if.then19
	ld.d	$a3, $fp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.127)
	addi.d	$a0, $a0, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 27
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s1, $fp, 28
.LBB14_19:                              # %if.end23
	pcalau12i	$a0, %pc_hi20(.L.str.128)
	addi.d	$a0, $a0, %pc_lo12(.L.str.128)
	move	$a1, $s0
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(sqlite3_mprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	move	$a0, $a2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sqlite3_free)
	jirl	$ra, $ra, 0
	b	.LBB14_10
.LBB14_20:                              # %vector.ph
	bstrpick.d	$a2, $s2, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a1, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB14_21:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB14_21
# %bb.22:                               # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $a2, .LBB14_25
.LBB14_23:                              # %for.body.i.preheader
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB14_24:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB14_24
.LBB14_25:                              # %if.end13.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_33
# %bb.26:                               # %if.then20.i
	addi.w	$a3, $s3, 0
	add.d	$a1, $a0, $a3
	addi.d	$a2, $a1, 1
	ori	$a1, $zero, 34
	ori	$a4, $zero, 1
	stx.b	$a1, $a0, $a3
	blt	$s4, $a4, .LBB14_31
# %bb.27:                               # %for.body26.preheader.i
	bstrpick.d	$a3, $s2, 30, 0
	move	$a4, $s0
	b	.LBB14_29
	.p2align	4, , 16
.LBB14_28:                              # %if.then36.i
                                        #   in Loop: Header=BB14_29 Depth=1
	addi.d	$a5, $a2, 2
	st.b	$a1, $a2, 1
	move	$a2, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	beqz	$a3, .LBB14_31
.LBB14_29:                              # %for.body26.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	st.b	$a5, $a2, 0
	beq	$a5, $a1, .LBB14_28
# %bb.30:                               #   in Loop: Header=BB14_29 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB14_29
.LBB14_31:                              # %appendText.exit53
	st.h	$a1, $a2, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	addi.w	$s1, $s2, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_34
.LBB14_32:                              # %if.then42
	addi.w	$a2, $s2, 0
	lu12i.w	$a1, 3
	ori	$a3, $a1, 2857
	ld.d	$a1, $fp, 0
	stx.h	$a3, $a0, $a2
	add.d	$a2, $a0, $s1
	st.b	$zero, $a2, -1
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 64
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s2
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB14_35
	b	.LBB14_108
.LBB14_33:
	move	$s2, $zero
	addi.w	$s1, $s2, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_32
.LBB14_34:                              # %appendText.exit71.thread
	ld.d	$a0, $fp, 0
	addi.w	$a2, $zero, -1
	addi.d	$a3, $sp, 64
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(sqlite3_prepare)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$s1, .LBB14_108
.LBB14_35:                              # %if.end43
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB14_108
# %bb.36:                               # %if.end47
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_38
# %bb.37:                               # %if.else.i81
	pcalau12i	$a0, %pc_hi20(.L.str.132)
	addi.d	$a0, $a0, %pc_lo12(.L.str.132)
	ld.b	$a1, $a0, 24
	ld.d	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.b	$a1, $s1, 24
	st.d	$a2, $s1, 16
	vst	$vr0, $s1, 0
	st.b	$zero, $s1, 25
.LBB14_38:                              # %appendText.exit88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.w	$s4, $a0, 0
	ori	$a1, $zero, 1
	addi.w	$a0, $a0, 3
	blt	$s4, $a1, .LBB14_46
# %bb.39:                               # %for.body.preheader.i123
	bstrpick.d	$a1, $s3, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB14_41
# %bb.40:
	move	$a2, $zero
	b	.LBB14_44
.LBB14_41:                              # %vector.ph452
	bstrpick.d	$a2, $s3, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a0, 0
	addi.d	$a0, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB14_42:                              # %vector.body455
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, -4
	ld.w	$a5, $a0, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a0, $a0, 8
	bnez	$a3, .LBB14_42
# %bb.43:                               # %middle.block462
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	beq	$a1, $a2, .LBB14_46
.LBB14_44:                              # %for.body.i125.preheader
	sub.d	$a1, $a1, $a2
	add.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB14_45:                              # %for.body.i125
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.w	$a0, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB14_45
.LBB14_46:                              # %if.end13.i96
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_71
# %bb.47:                               # %if.then20.i101
	move	$s2, $a0
	ori	$a0, $zero, 34
	st.b	$a0, $s2, 0
	blez	$s4, .LBB14_54
# %bb.48:                               # %for.body26.preheader.i109
	bstrpick.d	$a2, $s3, 30, 0
	addi.d	$a1, $s2, 1
	move	$a3, $s0
	b	.LBB14_50
	.p2align	4, , 16
.LBB14_49:                              # %if.then36.i121
                                        #   in Loop: Header=BB14_50 Depth=1
	addi.d	$a4, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	beqz	$a2, .LBB14_52
.LBB14_50:                              # %for.body26.i111
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	st.b	$a4, $a1, 0
	beq	$a4, $a0, .LBB14_49
# %bb.51:                               #   in Loop: Header=BB14_50 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB14_50
.LBB14_52:                              # %appendText.exit134
	ori	$a0, $zero, 34
	st.h	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s1, .LBB14_55
.LBB14_53:                              # %cond.true.i138
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_56
.LBB14_54:                              # %appendText.exit134.thread402
	st.h	$a0, $s2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$s1, .LBB14_53
.LBB14_55:
	move	$s4, $zero
.LBB14_56:                              # %cond.end.i140
	addi.w	$s5, $s3, 0
	add.d	$a0, $s3, $s4
	ori	$a2, $zero, 1
	addi.w	$a1, $a0, 3
	blt	$s5, $a2, .LBB14_64
# %bb.57:                               # %for.body.preheader.i172
	bstrpick.d	$a0, $s3, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB14_59
# %bb.58:
	move	$a2, $zero
	b	.LBB14_62
.LBB14_59:                              # %vector.ph469
	bstrpick.d	$a2, $s3, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a1, $s2, 4
	vrepli.b	$vr2, 39
	vrepli.w	$vr3, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB14_60:                              # %vector.body472
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB14_60
# %bb.61:                               # %middle.block479
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $a2, .LBB14_64
.LBB14_62:                              # %for.body.i174.preheader
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s2, $a2
	.p2align	4, , 16
.LBB14_63:                              # %for.body.i174
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$a3, $a3, -39
	sltui	$a3, $a3, 1
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB14_63
.LBB14_64:                              # %if.end13.i145
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_73
# %bb.65:                               # %if.then20.i150
	move	$s1, $a0
	addi.w	$a2, $s4, 0
	add.d	$a0, $a0, $a2
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 39
	ori	$a3, $zero, 1
	stx.b	$a0, $s1, $a2
	blt	$s5, $a3, .LBB14_70
# %bb.66:                               # %for.body26.preheader.i158
	bstrpick.d	$a2, $s3, 30, 0
	b	.LBB14_68
	.p2align	4, , 16
.LBB14_67:                              # %if.then36.i170
                                        #   in Loop: Header=BB14_68 Depth=1
	addi.d	$a3, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB14_70
.LBB14_68:                              # %for.body26.i160
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s2, 0
	st.b	$a3, $a1, 0
	beq	$a3, $a0, .LBB14_67
# %bb.69:                               #   in Loop: Header=BB14_68 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$s2, $s2, 1
	bnez	$a2, .LBB14_68
.LBB14_70:                              # %for.end41.i154
	st.h	$a0, $a1, 0
.LBB14_71:                              # %if.end53
	beqz	$s1, .LBB14_73
# %bb.72:                               # %cond.true.i187
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_74
.LBB14_73:
	move	$s1, $zero
	move	$s3, $zero
.LBB14_74:                              # %cond.end.i189
	addi.w	$s4, $s3, 19
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_76
# %bb.75:                               # %if.else.i196
	pcalau12i	$a0, %pc_hi20(.L.str.133)
	addi.d	$a0, $a0, %pc_lo12(.L.str.133)
	vld	$vr0, $a0, 0
	ld.h	$a0, $a0, 16
	addi.w	$a1, $s3, 0
	add.d	$a2, $s2, $a1
	vstx	$vr0, $s2, $a1
	st.h	$a0, $a2, 16
	add.d	$a0, $s2, $s4
	st.b	$zero, $a0, -1
.LBB14_76:                              # %appendText.exit203
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 100
	bne	$a0, $s5, .LBB14_105
# %bb.77:                               # %while.body.preheader
	ori	$s6, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr0, 34
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$s8, $zero, 34
	.p2align	4, , 16
.LBB14_78:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_88 Depth 2
                                        #     Child Loop BB14_91 Depth 2
                                        #     Child Loop BB14_96 Depth 2
	ld.d	$a0, $sp, 64
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(sqlite3_column_text)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB14_80
# %bb.79:                               # %cond.true.i207
                                        #   in Loop: Header=BB14_78 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_81
	.p2align	4, , 16
.LBB14_80:                              #   in Loop: Header=BB14_78 Depth=1
	move	$s3, $zero
.LBB14_81:                              # %cond.end.i209
                                        #   in Loop: Header=BB14_78 Depth=1
	addi.w	$s4, $s3, 7
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_83
# %bb.82:                               # %cond.true.i227
                                        #   in Loop: Header=BB14_78 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.134)
	addi.d	$a0, $a0, %pc_lo12(.L.str.134)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	addi.w	$a2, $s3, 0
	add.d	$a3, $s2, $a2
	stx.w	$a1, $s2, $a2
	st.h	$a0, $a3, 4
	add.d	$a0, $s2, $s4
	st.b	$zero, $a0, -1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB14_84
	.p2align	4, , 16
.LBB14_83:                              # %appendText.exit223.thread
                                        #   in Loop: Header=BB14_78 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s4, $zero
.LBB14_84:                              # %cond.end.i229
                                        #   in Loop: Header=BB14_78 Depth=1
	addi.w	$s7, $s3, 0
	add.d	$a0, $s3, $s4
	addi.w	$a1, $a0, 3
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	vld	$vr5, $sp, 32                   # 16-byte Folded Reload
	blt	$s7, $s6, .LBB14_92
# %bb.85:                               # %for.body.preheader.i261
                                        #   in Loop: Header=BB14_78 Depth=1
	bstrpick.d	$a0, $s3, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB14_87
# %bb.86:                               #   in Loop: Header=BB14_78 Depth=1
	move	$a2, $zero
	b	.LBB14_90
	.p2align	4, , 16
.LBB14_87:                              # %vector.ph486
                                        #   in Loop: Header=BB14_78 Depth=1
	bstrpick.d	$a2, $s3, 30, 3
	slli.d	$a2, $a2, 3
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	vinsgr2vr.w	$vr0, $a1, 0
	addi.d	$a1, $s1, 4
	move	$a3, $a2
	.p2align	4, , 16
.LBB14_88:                              # %vector.body489
                                        #   Parent Loop BB14_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 0
	vseq.b	$vr2, $vr2, $vr4
	vilvl.b	$vr2, $vr2, $vr2
	vilvl.h	$vr2, $vr2, $vr2
	vand.v	$vr2, $vr2, $vr5
	vseq.b	$vr3, $vr3, $vr4
	vilvl.b	$vr3, $vr3, $vr3
	vilvl.h	$vr3, $vr3, $vr3
	vand.v	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB14_88
# %bb.89:                               # %middle.block496
                                        #   in Loop: Header=BB14_78 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $a2, .LBB14_92
.LBB14_90:                              # %for.body.i263.preheader
                                        #   in Loop: Header=BB14_78 Depth=1
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB14_91:                              # %for.body.i263
                                        #   Parent Loop BB14_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a2, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB14_91
.LBB14_92:                              # %if.end13.i234
                                        #   in Loop: Header=BB14_78 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_99
# %bb.93:                               # %if.then20.i239
                                        #   in Loop: Header=BB14_78 Depth=1
	addi.w	$a0, $s4, 0
	add.d	$a1, $s2, $a0
	addi.d	$a1, $a1, 1
	stx.b	$s8, $s2, $a0
	blt	$s7, $s6, .LBB14_98
# %bb.94:                               # %for.body26.preheader.i247
                                        #   in Loop: Header=BB14_78 Depth=1
	bstrpick.d	$a0, $s3, 30, 0
	b	.LBB14_96
	.p2align	4, , 16
.LBB14_95:                              # %if.then36.i259
                                        #   in Loop: Header=BB14_96 Depth=2
	addi.d	$a2, $a1, 2
	st.b	$s8, $a1, 1
	move	$a1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	beqz	$a0, .LBB14_98
.LBB14_96:                              # %for.body26.i249
                                        #   Parent Loop BB14_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s1, 0
	st.b	$a2, $a1, 0
	beq	$a2, $s8, .LBB14_95
# %bb.97:                               #   in Loop: Header=BB14_96 Depth=2
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, -1
	addi.d	$s1, $s1, 1
	bnez	$a0, .LBB14_96
.LBB14_98:                              # %appendText.exit272
                                        #   in Loop: Header=BB14_78 Depth=1
	ld.d	$a0, $sp, 64
	st.h	$s8, $a1, 0
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beq	$s3, $s5, .LBB14_100
	b	.LBB14_102
	.p2align	4, , 16
.LBB14_99:                              # %appendText.exit272.thread
                                        #   in Loop: Header=BB14_78 Depth=1
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_step)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	bne	$a0, $s5, .LBB14_102
.LBB14_100:                             # %cond.end.i278
                                        #   in Loop: Header=BB14_78 Depth=1
	addi.w	$s3, $s1, 13
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB14_78
# %bb.101:                              # %if.else.i285
                                        #   in Loop: Header=BB14_78 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.135)
	addi.d	$a0, $a0, %pc_lo12(.L.str.135)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	addi.w	$a2, $s1, 0
	add.d	$a3, $s2, $a2
	stx.d	$a1, $s2, $a2
	st.w	$a0, $a3, 8
	add.d	$a0, $s2, $s3
	st.b	$zero, $a0, -1
	b	.LBB14_78
.LBB14_102:                             # %cond.end.i298
	addi.w	$s3, $s1, 3
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_104
# %bb.103:                              # %if.else.i305
	move	$s2, $a0
	addi.w	$a0, $s1, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 41
	stx.h	$a1, $s2, $a0
	add.d	$a0, $s2, $s3
	st.b	$zero, $a0, -1
	b	.LBB14_105
.LBB14_104:
	move	$s2, $zero
.LBB14_105:                             # %while.end
	ld.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(sqlite3_finalize)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_110
# %bb.106:                              # %if.then69
	beqz	$s2, .LBB14_108
# %bb.107:                              # %if.then71
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB14_108:                             # %cleanup93.critedge
	ori	$a0, $zero, 1
.LBB14_109:                             # %cleanup93
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
.LBB14_110:                             # %if.end73
	beqz	$s2, .LBB14_112
# %bb.111:                              # %cond.true.i316
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_113
.LBB14_112:
	move	$s3, $zero
.LBB14_113:                             # %cond.end.i318
	addi.w	$s4, $s3, 14
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_115
# %bb.114:                              # %cond.true.i336
	pcalau12i	$a0, %pc_hi20(.L.str.137)
	addi.d	$a0, $a0, %pc_lo12(.L.str.137)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.w	$a2, $s3, 0
	add.d	$a3, $s1, $a2
	stx.d	$a1, $s1, $a2
	st.d	$a0, $a3, 5
	add.d	$a0, $s1, $s4
	st.b	$zero, $a0, -1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB14_116
.LBB14_115:                             # %appendText.exit332.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $zero
.LBB14_116:                             # %cond.end.i338
	addi.w	$s4, $s2, 0
	add.d	$a0, $s2, $s3
	ori	$a2, $zero, 1
	addi.w	$a1, $a0, 3
	blt	$s4, $a2, .LBB14_124
# %bb.117:                              # %for.body.preheader.i370
	bstrpick.d	$a0, $s2, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB14_119
# %bb.118:
	move	$a2, $zero
	b	.LBB14_122
.LBB14_119:                             # %vector.ph503
	bstrpick.d	$a2, $s2, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a1, $s0, 4
	vrepli.b	$vr2, 34
	vrepli.w	$vr3, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB14_120:                             # %vector.body506
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB14_120
# %bb.121:                              # %middle.block513
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $a2, .LBB14_124
.LBB14_122:                             # %for.body.i372.preheader
	sub.d	$a0, $a0, $a2
	add.d	$a2, $s0, $a2
	.p2align	4, , 16
.LBB14_123:                             # %for.body.i372
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$a3, $a3, -34
	sltui	$a3, $a3, 1
	add.w	$a1, $a1, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB14_123
.LBB14_124:                             # %if.end13.i343
	move	$a0, $s1
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB14_131
# %bb.125:                              # %if.then20.i348
	addi.w	$a2, $s3, 0
	add.d	$a0, $s1, $a2
	addi.d	$a1, $a0, 1
	ori	$a0, $zero, 34
	ori	$a3, $zero, 1
	stx.b	$a0, $s1, $a2
	blt	$s4, $a3, .LBB14_130
# %bb.126:                              # %for.body26.preheader.i356
	bstrpick.d	$a2, $s2, 30, 0
	b	.LBB14_128
.LBB14_127:                             # %if.then36.i368
                                        #   in Loop: Header=BB14_128 Depth=1
	addi.d	$a3, $a1, 2
	st.b	$a0, $a1, 1
	move	$a1, $a3
	addi.d	$a2, $a2, -1
	addi.d	$s0, $s0, 1
	beqz	$a2, .LBB14_130
.LBB14_128:                             # %for.body26.i358
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s0, 0
	st.b	$a3, $a1, 0
	beq	$a3, $a0, .LBB14_127
# %bb.129:                              #   in Loop: Header=BB14_128 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$s0, $s0, 1
	bnez	$a2, .LBB14_128
.LBB14_130:                             # %for.end41.i352
	st.h	$a0, $a1, 0
.LBB14_131:                             # %appendText.exit381
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB14_133
# %bb.132:                              # %if.then80
	pcalau12i	$a0, %pc_hi20(.L.str.138)
	addi.d	$a1, $a0, %pc_lo12(.L.str.138)
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(appendText)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(run_table_dump_query)
	jirl	$ra, $ra, 0
.LBB14_133:                             # %if.end85
	beqz	$s1, .LBB14_10
# %bb.134:                              # %if.then87
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB14_10
.Lfunc_end14:
	.size	dump_callback, .Lfunc_end14-dump_callback
                                        # -- End function
	.p2align	5                               # -- Begin function appendText
	.type	appendText,@function
appendText:                             # @appendText
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s2, .LBB15_5
# %bb.1:                                # %cond.true
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$a0, $s3, $s1
	beqz	$s0, .LBB15_6
.LBB15_2:                               # %if.then
	addi.w	$s4, $s1, 0
	ori	$a2, $zero, 1
	addi.w	$a1, $a0, 3
	blt	$s4, $a2, .LBB15_13
# %bb.3:                                # %for.body.preheader
	bstrpick.d	$a0, $s1, 30, 0
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB15_8
# %bb.4:
	move	$a2, $zero
	b	.LBB15_11
.LBB15_5:
	move	$s3, $zero
	add.d	$a0, $s3, $s1
	bnez	$s0, .LBB15_2
.LBB15_6:                               # %if.end13.thread
	addi.w	$s0, $a0, 1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_20
# %bb.7:                                # %if.else
	addi.w	$a1, $s3, 0
	add.d	$a1, $a0, $a1
	addi.w	$a2, $s1, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	add.d	$a1, $s1, $s0
	st.b	$zero, $a1, -1
	b	.LBB15_21
.LBB15_8:                               # %vector.ph
	bstrpick.d	$a2, $s1, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.b	$vr2, $s0, 0
	vinsgr2vr.b	$vr2, $s0, 1
	vinsgr2vr.b	$vr2, $s0, 2
	vinsgr2vr.b	$vr2, $s0, 3
	addi.d	$a1, $fp, 4
	vrepli.w	$vr3, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB15_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -4
	ld.w	$a5, $a1, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vinsgr2vr.w	$vr5, $a5, 0
	vseq.b	$vr4, $vr4, $vr2
	vilvl.b	$vr4, $vr4, $vr4
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr3
	vseq.b	$vr5, $vr5, $vr2
	vilvl.b	$vr5, $vr5, $vr5
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr3
	vadd.w	$vr1, $vr1, $vr4
	vadd.w	$vr0, $vr0, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB15_9
# %bb.10:                               # %middle.block
	vadd.w	$vr0, $vr0, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a0, $a2, .LBB15_13
.LBB15_11:                              # %for.body.preheader59
	add.d	$a3, $fp, $a2
	sub.d	$a0, $a0, $a2
	andi	$a2, $s0, 255
	.p2align	4, , 16
.LBB15_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	xor	$a4, $a4, $a2
	sltui	$a4, $a4, 1
	add.w	$a1, $a1, $a4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB15_12
.LBB15_13:                              # %if.end13
	move	$a0, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_20
# %bb.14:                               # %if.then20
	addi.w	$a2, $s3, 0
	add.d	$a1, $a0, $a2
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 1
	stx.b	$s0, $a0, $a2
	blt	$s4, $a3, .LBB15_19
# %bb.15:                               # %for.body26.preheader
	bstrpick.d	$a2, $s1, 30, 0
	andi	$a3, $s0, 255
	b	.LBB15_17
	.p2align	4, , 16
.LBB15_16:                              # %if.then36
                                        #   in Loop: Header=BB15_17 Depth=1
	addi.d	$a4, $a1, 2
	st.b	$s0, $a1, 1
	move	$a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	beqz	$a2, .LBB15_19
.LBB15_17:                              # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $fp, 0
	st.b	$a4, $a1, 0
	beq	$a4, $a3, .LBB15_16
# %bb.18:                               #   in Loop: Header=BB15_17 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB15_17
.LBB15_19:                              # %for.end41
	st.b	$s0, $a1, 0
	st.b	$zero, $a1, 1
	b	.LBB15_21
.LBB15_20:
	move	$a0, $zero
.LBB15_21:                              # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	appendText, .Lfunc_end15-appendText
                                        # -- End function
	.p2align	5                               # -- Begin function output_csv
	.type	output_csv,@function
output_csv:                             # @output_csv
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
	move	$fp, $a0
	ld.d	$s2, $a0, 16
	move	$s1, $a2
	addi.d	$s0, $a0, 48
	beqz	$a1, .LBB16_8
# %bb.1:                                # %if.else
	move	$s3, $a1
	ld.bu	$s5, $a1, 0
	beqz	$s5, .LBB16_15
# %bb.2:                                # %for.body.lr.ph
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	ori	$s6, $zero, 1
	bne	$a1, $s6, .LBB16_10
# %bb.3:                                # %for.body.us.preheader
	addi.d	$a0, $s3, 1
	pcalau12i	$a1, %pc_hi20(needCsvQuote)
	addi.d	$a1, $a1, %pc_lo12(needCsvQuote)
	.p2align	4, , 16
.LBB16_4:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a1, $s5
	bnez	$a2, .LBB16_15
# %bb.5:                                # %lor.lhs.false.us
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.bu	$a2, $s0, 0
	beq	$s5, $a2, .LBB16_15
# %bb.6:                                # %for.inc.us
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.bu	$s5, $a0, 0
	addi.d	$a0, $a0, 1
	bnez	$s5, .LBB16_4
.LBB16_7:                               # %if.else53
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB16_21
	b	.LBB16_9
.LBB16_8:                               # %if.then
	addi.d	$a0, $fp, 868
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB16_21
.LBB16_9:                               # %if.end63
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
.LBB16_10:                              # %for.body.preheader
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(needCsvQuote)
	addi.d	$s7, $a0, %pc_lo12(needCsvQuote)
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              # %for.inc
                                        #   in Loop: Header=BB16_12 Depth=1
	ldx.bu	$s5, $s3, $s6
	addi.d	$s6, $s6, 1
	beqz	$s5, .LBB16_7
.LBB16_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s7, $s5
	bnez	$a0, .LBB16_15
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB16_12 Depth=1
	ld.bu	$a0, $s0, 0
	bne	$s5, $a0, .LBB16_11
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_12 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_11
.LBB16_15:                              # %if.then30
	ori	$a0, $zero, 34
	ori	$s4, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB16_18
	.p2align	4, , 16
.LBB16_16:                              # %if.then42
                                        #   in Loop: Header=BB16_18 Depth=1
	ori	$a0, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
.LBB16_17:                              # %if.end44
                                        #   in Loop: Header=BB16_18 Depth=1
	ext.w.b	$a0, $a0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 1
.LBB16_18:                              # %for.cond32
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 0
	beq	$a0, $s4, .LBB16_16
# %bb.19:                               # %for.cond32
                                        #   in Loop: Header=BB16_18 Depth=1
	bnez	$a0, .LBB16_17
# %bb.20:                               # %for.end51
	ori	$a0, $zero, 34
	move	$a1, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB16_9
.LBB16_21:                              # %if.then58
	ld.d	$a1, $fp, 16
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(fputs)
	jr	$t8
.Lfunc_end16:
	.size	output_csv, .Lfunc_end16-output_csv
                                        # -- End function
	.type	Argv0,@object                   # @Argv0
	.local	Argv0
	.comm	Argv0,8,8
	.type	stdin_is_interactive,@object    # @stdin_is_interactive
	.data
	.p2align	2, 0x0
stdin_is_interactive:
	.word	1                               # 0x1
	.size	stdin_is_interactive, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-separator"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"-nullvalue"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-init"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	":memory:"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"-html"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"-list"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"-line"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"-column"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"-csv"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	","
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.*s"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"-header"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"-noheader"
	.size	.L.str.12, 10

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"-echo"
	.size	.L.str.13, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"-bail"
	.size	.L.str.14, 6

	.type	bail_on_error,@object           # @bail_on_error
	.local	bail_on_error
	.comm	bail_on_error,4,4
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"-version"
	.size	.L.str.15, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s\n"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"-interactive"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"-batch"
	.size	.L.str.18, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"-help"
	.size	.L.str.19, 6

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"--help"
	.size	.L.str.20, 7

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s: unknown option: %s\n"
	.size	.L.str.21, 24

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Use -help for a list of options.\n"
	.size	.L.str.22, 34

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SQL error: %s\n"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SQLite version %s\nEnter \".help\" for instructions\n"
	.size	.L.str.24, 50

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%s/.sqlite_history"
	.size	.L.str.25, 19

	.type	db,@object                      # @db
	.local	db
	.comm	db,8,8
	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"error closing database: %s\n"
	.size	.L.str.26, 28

	.type	mainPrompt,@object              # @mainPrompt
	.local	mainPrompt
	.comm	mainPrompt,20,1
	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"sqlite> "
	.size	.L.str.28, 9

	.type	continuePrompt,@object          # @continuePrompt
	.local	continuePrompt
	.comm	continuePrompt,20,1
	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"   ...> "
	.size	.L.str.29, 9

	.type	seenInterrupt,@object           # @seenInterrupt
	.local	seenInterrupt
	.comm	seenInterrupt,4,4
	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"shellstatic"
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Unable to open database \"%s\": %s\n"
	.size	.L.str.31, 34

	.type	zShellStatic,@object            # @zShellStatic
	.local	zShellStatic
	.comm	zShellStatic,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s: cannot locate your home directory!\n"
	.size	.L.str.32, 40

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s: out of memory!\n"
	.size	.L.str.33, 20

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%s/.sqliterc"
	.size	.L.str.34, 13

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"rb"
	.size	.L.str.35, 3

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-- Loading resources from %s\n"
	.size	.L.str.36, 30

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Usage: %s [OPTIONS] FILENAME [SQL]\nFILENAME is the name of an SQLite database. A new database is created\nif the file does not previously exist.\n"
	.size	.L.str.37, 145

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"OPTIONS include:\n%s"
	.size	.L.str.38, 20

	.type	zOptions,@object                # @zOptions
	.section	.rodata,"a",@progbits
zOptions:
	.asciz	"   -init filename       read/process named file\n   -echo                print commands before execution\n   -[no]header          turn headers on or off\n   -bail                stop after hitting an error\n   -interactive         force interactive I/O\n   -batch               force batch I/O\n   -column              set output mode to 'column'\n   -csv                 set output mode to 'csv'\n   -html                set output mode to HTML\n   -line                set output mode to 'line'\n   -list                set output mode to 'list'\n   -separator 'x'       set output field separator (|)\n   -nullvalue 'text'    set text string for NULL values\n   -version             show SQLite version\n"
	.size	zOptions, 694

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"bail"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"databases"
	.size	.L.str.41, 10

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"PRAGMA database_list; "
	.size	.L.str.42, 23

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Error: %s\n"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"dump"
	.size	.L.str.44, 5

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"BEGIN TRANSACTION;\n"
	.size	.L.str.45, 20

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SELECT name, type, sql FROM sqlite_master WHERE sql NOT NULL AND type=='table'"
	.size	.L.str.46, 79

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SELECT sql FROM sqlite_master WHERE sql NOT NULL AND type IN ('index','trigger','view')"
	.size	.L.str.47, 88

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SELECT name, type, sql FROM sqlite_master WHERE tbl_name LIKE shellstatic() AND type=='table'  AND sql NOT NULL"
	.size	.L.str.48, 112

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SELECT sql FROM sqlite_master WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name LIKE shellstatic()"
	.size	.L.str.49, 122

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"PRAGMA writable_schema=OFF;\n"
	.size	.L.str.50, 29

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"COMMIT;\n"
	.size	.L.str.51, 9

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"echo"
	.size	.L.str.52, 5

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"exit"
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"explain"
	.size	.L.str.54, 8

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"header"
	.size	.L.str.55, 7

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"headers"
	.size	.L.str.56, 8

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"help"
	.size	.L.str.57, 5

	.type	zHelp,@object                   # @zHelp
	.data
zHelp:
	.asciz	".bail ON|OFF           Stop after hitting an error.  Default OFF\n.databases             List names and files of attached databases\n.dump ?TABLE? ...      Dump the database in an SQL text format\n.echo ON|OFF           Turn command echo on or off\n.exit                  Exit this program\n.explain ON|OFF        Turn output mode suitable for EXPLAIN on or off.\n.header(s) ON|OFF      Turn display of headers on or off\n.help                  Show this message\n.import FILE TABLE     Import data from FILE into TABLE\n.indices TABLE         Show names of all indices on TABLE\n.mode MODE ?TABLE?     Set output mode where MODE is one of:\n                         csv      Comma-separated values\n                         column   Left-aligned columns.  (See .width)\n                         html     HTML <table> code\n                         insert   SQL insert statements for TABLE\n                         line     One value per line\n                         list     Values delimited by .separator string\n                         tabs     Tab-separated values\n                         tcl      TCL list elements\n.nullvalue STRING      Print STRING in place of NULL values\n.output FILENAME       Send output to FILENAME\n.output stdout         Send output to the screen\n.prompt MAIN CONTINUE  Replace the standard prompts\n.quit                  Exit this program\n.read FILENAME         Execute SQL in FILENAME\n.schema ?TABLE?        Show the CREATE statements\n.separator STRING      Change separator used by output mode and .import\n.show                  Show the current values for various settings\n.tables ?PATTERN?      List names of tables matching a LIKE pattern\n.timeout MS            Try opening locked tables for MS milliseconds\n.timer ON|OFF          Turn the CPU timer measurement on or off\n.width NUM NUM ...     Set column widths for \"column\" mode\n"
	.size	zHelp, 1855

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"import"
	.size	.L.str.58, 7

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"non-null separator required for import\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SELECT * FROM '%q'"
	.size	.L.str.60, 19

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"INSERT INTO '%q' VALUES(?"
	.size	.L.str.61, 26

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"cannot open file: %s\n"
	.size	.L.str.62, 22

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"BEGIN"
	.size	.L.str.63, 6

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"COMMIT"
	.size	.L.str.64, 7

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%s line %d: expected %d columns of data but found %d\n"
	.size	.L.str.65, 54

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"ROLLBACK"
	.size	.L.str.66, 9

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"indices"
	.size	.L.str.67, 8

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"SELECT name FROM sqlite_master WHERE type='index' AND tbl_name LIKE shellstatic() UNION ALL SELECT name FROM sqlite_temp_master WHERE type='index' AND tbl_name LIKE shellstatic() ORDER BY 1"
	.size	.L.str.68, 190

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"mode"
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"line"
	.size	.L.str.70, 5

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"lines"
	.size	.L.str.71, 6

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"column"
	.size	.L.str.72, 7

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"columns"
	.size	.L.str.73, 8

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"list"
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"html"
	.size	.L.str.75, 5

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"tcl"
	.size	.L.str.76, 4

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"csv"
	.size	.L.str.77, 4

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"tabs"
	.size	.L.str.78, 5

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"\t"
	.size	.L.str.79, 2

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"insert"
	.size	.L.str.80, 7

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"table"
	.size	.L.str.81, 6

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"mode should be one of: column csv html insert line list tabs tcl\n"
	.size	.L.str.82, 66

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"nullvalue"
	.size	.L.str.83, 10

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"output"
	.size	.L.str.84, 7

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"stdout"
	.size	.L.str.85, 7

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"wb"
	.size	.L.str.86, 3

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"can't write to \"%s\"\n"
	.size	.L.str.87, 21

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"%s"
	.size	.L.str.88, 3

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"prompt"
	.size	.L.str.89, 7

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"quit"
	.size	.L.str.90, 5

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"read"
	.size	.L.str.91, 5

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"can't open \"%s\"\n"
	.size	.L.str.92, 17

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"schema"
	.size	.L.str.93, 7

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"sqlite_master"
	.size	.L.str.94, 14

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"CREATE TABLE sqlite_master (\n  type text,\n  name text,\n  tbl_name text,\n  rootpage integer,\n  sql text\n)"
	.size	.L.str.95, 105

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"sql"
	.size	.L.str.96, 4

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"sqlite_temp_master"
	.size	.L.str.97, 19

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"CREATE TEMP TABLE sqlite_temp_master (\n  type text,\n  name text,\n  tbl_name text,\n  rootpage integer,\n  sql text\n)"
	.size	.L.str.98, 115

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE tbl_name LIKE shellstatic() AND type!='meta' AND sql NOTNULL ORDER BY substr(type,2,1), name"
	.size	.L.str.99, 192

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE type!='meta' AND sql NOTNULL AND name NOT LIKE 'sqlite_%'ORDER BY substr(type,2,1), name"
	.size	.L.str.100, 188

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"separator"
	.size	.L.str.101, 10

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"show"
	.size	.L.str.102, 5

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"%9.9s: %s\n"
	.size	.L.str.103, 11

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"on"
	.size	.L.str.104, 3

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"off"
	.size	.L.str.105, 4

	.type	modeDescr,@object               # @modeDescr
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
modeDescr:
	.dword	.L.str.70
	.dword	.L.str.72
	.dword	.L.str.74
	.dword	.L.str.139
	.dword	.L.str.75
	.dword	.L.str.80
	.dword	.L.str.76
	.dword	.L.str.77
	.size	modeDescr, 64

	.type	.L.str.106,@object              # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"%9.9s: "
	.size	.L.str.106, 8

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"\n"
	.size	.L.str.107, 2

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"width"
	.size	.L.str.108, 6

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"%d "
	.size	.L.str.109, 4

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"tables"
	.size	.L.str.110, 7

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%'UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') ORDER BY 1"
	.size	.L.str.111, 178

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' ORDER BY 1"
	.size	.L.str.112, 226

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.space	1
	.size	.L.str.113, 1

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"  "
	.size	.L.str.114, 3

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"%s%-*s"
	.size	.L.str.115, 7

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"timeout"
	.size	.L.str.116, 8

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"timer"
	.size	.L.str.117, 6

	.type	enableTimer,@object             # @enableTimer
	.local	enableTimer
	.comm	enableTimer,4,4
	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"unknown command or invalid arguments:  \"%s\". Enter \".help\" for help\n"
	.size	.L.str.118, 69

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"yes"
	.size	.L.str.119, 4

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"%s ORDER BY rowid DESC"
	.size	.L.str.120, 23

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"sqlite_sequence"
	.size	.L.str.121, 16

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"DELETE FROM sqlite_sequence;\n"
	.size	.L.str.122, 30

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"sqlite_stat1"
	.size	.L.str.123, 13

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"ANALYZE sqlite_master;\n"
	.size	.L.str.124, 24

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"sqlite_"
	.size	.L.str.125, 8

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"CREATE VIRTUAL TABLE"
	.size	.L.str.126, 21

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"PRAGMA writable_schema=ON;\n"
	.size	.L.str.127, 28

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');"
	.size	.L.str.128, 92

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"%s;\n"
	.size	.L.str.129, 5

	.type	.L.str.130,@object              # @.str.130
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.130:
	.asciz	"PRAGMA table_info("
	.size	.L.str.130, 19

	.type	.L.str.132,@object              # @.str.132
	.p2align	3, 0x0
.L.str.132:
	.asciz	"SELECT 'INSERT INTO ' || "
	.size	.L.str.132, 26

	.type	.L.str.133,@object              # @.str.133
	.p2align	3, 0x0
.L.str.133:
	.asciz	" || ' VALUES(' || "
	.size	.L.str.133, 19

	.type	.L.str.134,@object              # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"quote("
	.size	.L.str.134, 7

	.type	.L.str.135,@object              # @.str.135
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.135:
	.asciz	") || ',' || "
	.size	.L.str.135, 13

	.type	.L.str.137,@object              # @.str.137
	.p2align	3, 0x0
.L.str.137:
	.asciz	"|| ')' FROM  "
	.size	.L.str.137, 14

	.type	.L.str.138,@object              # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	" ORDER BY rowid DESC"
	.size	.L.str.138, 21

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"semi"
	.size	.L.str.139, 5

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\\%03o"
	.size	.L.str.140, 6

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"%*s = %s\n"
	.size	.L.str.141, 10

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"%-*.*s%s"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"---------------------------------------------------------------------------------------------"
	.size	.L.str.143, 94

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"%s%s"
	.size	.L.str.144, 5

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	";\n"
	.size	.L.str.145, 3

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"<TR>"
	.size	.L.str.146, 5

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"<TH>%s</TH>"
	.size	.L.str.147, 12

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"</TR>\n"
	.size	.L.str.148, 7

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"<TD>"
	.size	.L.str.149, 5

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"</TD>\n"
	.size	.L.str.150, 7

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"INSERT INTO %s VALUES("
	.size	.L.str.151, 23

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"%sNULL"
	.size	.L.str.152, 7

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	");\n"
	.size	.L.str.153, 4

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"&lt;"
	.size	.L.str.154, 5

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"&amp;"
	.size	.L.str.155, 6

	.type	needCsvQuote,@object            # @needCsvQuote
	.section	.rodata,"a",@progbits
needCsvQuote:
	.ascii	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\001\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	needCsvQuote, 256

	.type	.L.str.156,@object              # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"'%s'"
	.size	.L.str.156, 5

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"''"
	.size	.L.str.158, 3

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"%.*s''"
	.size	.L.str.159, 7

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"HOME"
	.size	.L.str.160, 5

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"out of memory\n"
	.size	.L.str.162, 15

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"SQL error near line %d:"
	.size	.L.str.163, 24

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"SQL error:"
	.size	.L.str.164, 11

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"%s %s\n"
	.size	.L.str.165, 7

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"Incomplete SQL: %s\n"
	.size	.L.str.166, 20

	.type	sBegin,@object                  # @sBegin
	.local	sBegin
	.comm	sBegin,144,16
	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"CPU Time: user %f sys %f\n"
	.size	.L.str.167, 26

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"Out of memory!\n"
	.size	.L.str.168, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym interrupt_handler
	.addrsig_sym callback
	.addrsig_sym shellstaticFunc
	.addrsig_sym dump_callback
	.addrsig_sym mainPrompt
	.addrsig_sym continuePrompt
	.addrsig_sym seenInterrupt
	.addrsig_sym zOptions
	.addrsig_sym zHelp
	.addrsig_sym sBegin
