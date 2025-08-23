	.file	"Main.cpp"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z5Main2iPPKc
.LCPI0_0:
	.word	55                              # 0x37
	.word	122                             # 0x7a
	.word	67                              # 0x43
	.word	111                             # 0x6f
	.word	110                             # 0x6e
	.word	46                              # 0x2e
	.word	115                             # 0x73
	.word	102                             # 0x66
	.text
	.globl	_Z5Main2iPPKc
	.p2align	5
	.type	_Z5Main2iPPKc,@function
_Z5Main2iPPKc:                          # @_Z5Main2iPPKc
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1248
	.cfi_def_cfa_offset 1248
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 1136
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 1152
	pcalau12i	$a2, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$s8, $a2, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$s8, $sp, 1128
.Ltmp0:                                 # EH_LABEL
	addi.d	$a2, $sp, 1128
	pcaddu18i	$ra, %call36(_Z18mySplitCommandLineiPPKcR13CObjectVectorI11CStringBaseIwEE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.w	$a0, $sp, 1140
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_4
# %bb.2:                                # %if.then
.Ltmp408:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZL20ShowCopyrightAndHelpR13CStdOutStreamb)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.3:
	move	$s2, $zero
	b	.LBB0_347
.LBB0_4:                                # %if.end
	slti	$a2, $a0, 1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$fp, $a2, $a3
	blt	$a0, $a1, .LBB0_9
# %bb.5:                                # %for.body.lr.ph.i
	ld.d	$a0, $sp, 1144
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB0_9
# %bb.6:                                # %delete.notnull.i
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %_ZN11CStringBaseIwED2Ev.exit.i
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %for.cond.cleanup.i
.Ltmp2:                                 # EH_LABEL
	addi.d	$a0, $sp, 1128
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.10:                               # %invoke.cont3
.Ltmp4:                                 # EH_LABEL
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN26CArchiveCommandLineOptionsC2Ev)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.11:                               # %invoke.cont5
.Ltmp7:                                 # EH_LABEL
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN25CArchiveCommandLineParserC1Ev)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.12:                               # %invoke.cont7
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 1128
	addi.d	$a2, $sp, 536
	pcaddu18i	$ra, %call36(_ZN25CArchiveCommandLineParser6Parse1ERK13CObjectVectorI11CStringBaseIwEER26CArchiveCommandLineOptions)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.13:                               # %invoke.cont9
	ld.bu	$a1, $sp, 536
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_16
# %bb.14:                               # %if.then10
.Ltmp405:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZL20ShowCopyrightAndHelpR13CStdOutStreamb)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.15:
	move	$s2, $zero
	b	.LBB0_346
.LBB0_16:                               # %if.end12
	ld.bu	$a1, $sp, 537
	bne	$a1, $a0, .LBB0_18
# %bb.17:                               # %if.then14
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(SetLargePageSize)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
.LBB0_18:                               # %if.end16
	ld.bu	$a0, $sp, 542
	pcalau12i	$a1, %got_pc_hi20(g_StdOut)
	ld.d	$a1, $a1, %got_pc_lo12(g_StdOut)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(g_StdErr)
	ld.d	$a2, $a2, %got_pc_lo12(g_StdErr)
	pcalau12i	$a3, %got_pc_hi20(g_StdStream)
	ld.d	$a3, $a3, %got_pc_lo12(g_StdStream)
	ld.bu	$a4, $sp, 543
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	ori	$a0, $zero, 1
	st.d	$s0, $a3, 0
	bne	$a4, $a0, .LBB0_20
# %bb.19:                               # %if.then19
.Ltmp14:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZL20ShowCopyrightAndHelpR13CStdOutStreamb)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
.LBB0_20:                               # %if.end22
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 536
	pcaddu18i	$ra, %call36(_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.21:                               # %invoke.cont23
.Ltmp19:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.22:                               # %invoke.cont28
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV7CCodecs+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CCodecs+16)
	st.d	$a0, $s6, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s6, 24
	ori	$a0, $zero, 8
	st.d	$a0, $s6, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CArcInfoExE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CArcInfoExE+16)
	st.d	$a0, $s6, 16
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 8
.Ltmp22:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN7CCodecs4LoadEv)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.23:                               # %invoke.cont32
	bnez	$a0, .LBB0_349
# %bb.24:                               # %if.end38
	addi.d	$s2, $sp, 584
.Ltmp27:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK15CArchiveCommand18IsFromExtractGroupEv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.25:                               # %invoke.cont40
	move	$s1, $a0
	ld.w	$a0, $s6, 28
	bnez	$a0, .LBB0_29
# %bb.26:                               # %land.lhs.true
	ld.w	$a0, $sp, 584
	addi.d	$a0, $a0, -6
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB0_351
# %bb.27:                               # %lor.lhs.false48
.Ltmp29:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK15CArchiveCommand17IsFromUpdateGroupEv)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.28:                               # %invoke.cont50
	bnez	$a0, .LBB0_351
.LBB0_29:                               # %if.end54
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 464
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$fp, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$fp, $sp, 456
	addi.d	$a1, $sp, 1080
.Ltmp31:                                # EH_LABEL
	addi.d	$a2, $sp, 456
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwER13CRecordVectorIiE)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.30:                               # %invoke.cont58
	beqz	$a0, .LBB0_350
# %bb.31:                               # %if.end62
	ld.w	$a0, $sp, 584
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB0_123
# %bb.32:                               # %if.end62
	ori	$a1, $zero, 8
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB0_129
# %bb.33:                               # %if.then66
.Ltmp51:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.34:                               # %invoke.cont67
.Ltmp53:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.35:                               # %invoke.cont69
.Ltmp55:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.36:                               # %for.cond.preheader
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $s6, 28
	ori	$s3, $zero, 1
	blt	$a0, $s3, .LBB0_136
# %bb.37:                               # %invoke.cont80.lr.ph
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 0
	ori	$s8, $zero, 0
	lu32i.d	$s8, 1
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.w	$a0, $s6, 28
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB0_136
.LBB0_39:                               # %invoke.cont80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_67 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_114 Depth 2
	ld.d	$a0, $s6, 32
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a1, $fp, 3
	ldx.d	$s1, $a0, $a1
.Ltmp57:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.40:                               # %invoke.cont82
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp59:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.41:                               # %invoke.cont84
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 67
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.Ltmp61:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.42:                               # %invoke.cont88
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.bu	$a0, $s1, 96
	ori	$a1, $zero, 32
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 75
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.Ltmp63:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.43:                               # %invoke.cont92
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp65:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.44:                               # %invoke.cont94
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a1, $s1, 24
	ld.w	$fp, $s1, 32
.Ltmp67:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.45:                               # %call2.i.noexc
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a0, $zero, 5
	blt	$a0, $fp, .LBB0_49
# %bb.46:                               # %for.body.i204.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.w	$fp, $fp, -6
	.p2align	4, , 16
.LBB0_47:                               # %for.body.i204
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp69:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.48:                               # %call3.i.noexc
                                        #   in Loop: Header=BB0_47 Depth=2
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$fp, $a0, 1
	and	$a0, $fp, $s8
	beqz	$a0, .LBB0_47
.LBB0_49:                               # %invoke.cont96
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp72:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.50:                               # %invoke.cont97
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 160
.Ltmp75:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.51:                               # %_ZN11CStringBaseIwEC2Ev.exit
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$s2, $a0
	st.w	$zero, $a0, 0
	ld.w	$a0, $s1, 52
	st.d	$s2, $sp, 152
	ori	$s0, $zero, 1
	move	$s4, $zero
	blt	$a0, $s3, .LBB0_106
# %bb.52:                               # %invoke.cont109.lr.ph
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$s6, $zero
	ori	$s5, $zero, 4
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_53:                               #   in Loop: Header=BB0_55 Depth=2
	move	$s5, $fp
.LBB0_54:                               # %invoke.cont124
                                        #   in Loop: Header=BB0_55 Depth=2
	ld.d	$s2, $sp, 152
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 32
	stx.w	$a1, $s2, $a0
	addi.w	$s4, $s3, 1
	st.w	$s4, $sp, 160
	slli.d	$a0, $s4, 2
	stx.w	$zero, $s2, $a0
	ld.w	$a0, $s1, 52
	addi.d	$s6, $s6, 1
	bge	$s6, $a0, .LBB0_106
.LBB0_55:                               # %invoke.cont109
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_67 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	ld.d	$a0, $s1, 56
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	ld.w	$a0, $s7, 8
	nor	$a1, $s4, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB0_57
# %bb.56:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a3, $a3, $a0
	sub.d	$a0, $a0, $a1
	masknez	$a1, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	add.w	$a0, $a0, $s5
	addi.w	$fp, $a0, 1
	bne	$fp, $s5, .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_55 Depth=2
	move	$fp, $s5
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_58:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_55 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp78:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.59:                               # %call.i.i.i.noexc
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB0_65
# %bb.60:                               # %for.cond.preheader.i.i.i
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB0_75
# %bb.61:                               # %iter.check777
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$a0, $zero
	ori	$a1, $zero, 4
	bltu	$s4, $a1, .LBB0_73
# %bb.62:                               # %iter.check777
                                        #   in Loop: Header=BB0_55 Depth=2
	sub.d	$a1, $s3, $s2
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB0_73
# %bb.63:                               # %vector.main.loop.iter.check779
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$a0, $zero, 16
	bgeu	$s4, $a0, .LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_55 Depth=2
	move	$a0, $zero
	b	.LBB0_70
.LBB0_65:                               #   in Loop: Header=BB0_55 Depth=2
	ori	$s0, $zero, 1
	b	.LBB0_76
.LBB0_66:                               # %vector.ph780
                                        #   in Loop: Header=BB0_55 Depth=2
	bstrpick.d	$a0, $s4, 30, 4
	slli.d	$a0, $a0, 4
	addi.d	$a1, $s3, 32
	addi.d	$a2, $s2, 32
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_67:                               # %vector.body783
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_67
# %bb.68:                               # %middle.block788
                                        #   in Loop: Header=BB0_55 Depth=2
	beq	$a0, $s4, .LBB0_75
# %bb.69:                               # %vec.epilog.iter.check793
                                        #   in Loop: Header=BB0_55 Depth=2
	andi	$a1, $s4, 12
	beqz	$a1, .LBB0_73
.LBB0_70:                               # %vec.epilog.ph792
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$a3, $a0
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$a0, $a0, 2
	sub.d	$a1, $a3, $a0
	alsl.d	$a2, $a3, $s3, 2
	alsl.d	$a3, $a3, $s2, 2
	.p2align	4, , 16
.LBB0_71:                               # %vec.epilog.vector.body798
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_71
# %bb.72:                               # %vec.epilog.middle.block802
                                        #   in Loop: Header=BB0_55 Depth=2
	beq	$a0, $s4, .LBB0_75
.LBB0_73:                               # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB0_55 Depth=2
	sub.d	$a1, $s4, $a0
	alsl.d	$a2, $a0, $s3, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB0_74:                               # %for.body.i.i.i
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_74
.LBB0_75:                               # %delete.notnull.i.i.i
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$s0, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 160
.LBB0_76:                               # %if.end9.i.i.i
                                        #   in Loop: Header=BB0_55 Depth=2
	st.d	$s3, $sp, 152
	slli.d	$a0, $s4, 2
	stx.w	$zero, $s3, $a0
	st.w	$fp, $sp, 164
	move	$s2, $s3
.LBB0_77:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
                                        #   in Loop: Header=BB0_55 Depth=2
	ld.d	$a0, $s7, 0
	alsl.d	$a1, $s4, $s2, 2
	.p2align	4, , 16
.LBB0_78:                               # %while.cond.i.i
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	st.w	$a2, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB0_78
# %bb.79:                               # %invoke.cont111
                                        #   in Loop: Header=BB0_55 Depth=2
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 24
	add.w	$s3, $a0, $s4
	st.w	$s3, $sp, 160
	beqz	$a1, .LBB0_84
# %bb.80:                               # %if.then115
                                        #   in Loop: Header=BB0_55 Depth=2
.Ltmp80:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.81:                               # %invoke.cont116
                                        #   in Loop: Header=BB0_55 Depth=2
.Ltmp82:                                # EH_LABEL
	addi.d	$a1, $s7, 16
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.82:                               # %invoke.cont119
                                        #   in Loop: Header=BB0_55 Depth=2
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	ori	$a1, $zero, 41
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEw)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.83:                               # %if.end123thread-pre-split
                                        #   in Loop: Header=BB0_55 Depth=2
	ld.w	$s3, $sp, 160
	ld.w	$fp, $sp, 164
.LBB0_84:                               # %if.end123
                                        #   in Loop: Header=BB0_55 Depth=2
	nor	$a0, $s3, $zero
	add.w	$a0, $fp, $a0
	bgtz	$a0, .LBB0_53
# %bb.85:                               # %if.end.i.i233
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$a1, $zero, 64
	slt	$a1, $a1, $fp
	bstrpick.d	$a2, $fp, 31, 1
	ori	$a3, $zero, 8
	slt	$a3, $a3, $fp
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 16
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	add.w	$a2, $a1, $a0
	slti	$a2, $a2, 1
	sub.d	$a0, $s0, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	add.w	$a0, $a0, $fp
	addi.w	$s5, $a0, 1
	beq	$s5, $fp, .LBB0_53
# %bb.86:                               # %if.end.i.i.i246
                                        #   in Loop: Header=BB0_55 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.87:                               # %call.i.i.i.noexc267
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$s2, $a0
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB0_93
# %bb.88:                               # %for.cond.preheader.i.i.i252
                                        #   in Loop: Header=BB0_55 Depth=2
	ld.d	$a0, $sp, 152
	ori	$s0, $zero, 1
	blt	$s3, $a1, .LBB0_94
# %bb.89:                               # %iter.check
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$a1, $zero
	ori	$a2, $zero, 4
	bltu	$s3, $a2, .LBB0_102
# %bb.90:                               # %iter.check
                                        #   in Loop: Header=BB0_55 Depth=2
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB0_102
# %bb.91:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_55 Depth=2
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB0_95
# %bb.92:                               #   in Loop: Header=BB0_55 Depth=2
	move	$a1, $zero
	b	.LBB0_99
.LBB0_93:                               #   in Loop: Header=BB0_55 Depth=2
	ori	$s0, $zero, 1
	b	.LBB0_105
.LBB0_94:                               # %for.cond.cleanup.i.i.i255
                                        #   in Loop: Header=BB0_55 Depth=2
	bnez	$a0, .LBB0_104
	b	.LBB0_105
.LBB0_95:                               # %vector.ph
                                        #   in Loop: Header=BB0_55 Depth=2
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_96:                               # %vector.body
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_96
# %bb.97:                               # %middle.block
                                        #   in Loop: Header=BB0_55 Depth=2
	beq	$a1, $s3, .LBB0_104
# %bb.98:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_55 Depth=2
	andi	$a2, $s3, 12
	beqz	$a2, .LBB0_102
.LBB0_99:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_55 Depth=2
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB0_100:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB0_100
# %bb.101:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_55 Depth=2
	beq	$a1, $s3, .LBB0_104
.LBB0_102:                              # %for.body.i.i.i261.preheader
                                        #   in Loop: Header=BB0_55 Depth=2
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB0_103:                              # %for.body.i.i.i261
                                        #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_103
.LBB0_104:                              # %delete.notnull.i.i.i257
                                        #   in Loop: Header=BB0_55 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 160
.LBB0_105:                              # %if.end9.i.i.i249
                                        #   in Loop: Header=BB0_55 Depth=2
	st.d	$s2, $sp, 152
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s5, $sp, 164
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_106:                              # %for.cond.cleanup
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp89:                                # EH_LABEL
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s2
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
	ori	$s3, $zero, 1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
# %bb.107:                              # %call2.i.noexc215
                                        #   in Loop: Header=BB0_39 Depth=1
	ori	$a0, $zero, 13
	blt	$a0, $s4, .LBB0_111
# %bb.108:                              # %for.body.i211.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.w	$fp, $s4, -14
	.p2align	4, , 16
.LBB0_109:                              # %for.body.i211
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp91:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.110:                              # %call3.i.noexc217
                                        #   in Loop: Header=BB0_109 Depth=2
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$fp, $a0, 1
	and	$a0, $fp, $s8
	beqz	$a0, .LBB0_109
.LBB0_111:                              # %invoke.cont127
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp94:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.112:                              # %for.cond130.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $s1, 80
	beqz	$a0, .LBB0_120
# %bb.113:                              # %for.body136.lr.ph
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB0_114:                              # %for.body136
                                        #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 88
	ldx.b	$a0, $a0, $fp
	andi	$s2, $a0, 255
	ori	$a1, $zero, 32
	blt	$a1, $a0, .LBB0_117
# %bb.115:                              # %if.else
                                        #   in Loop: Header=BB0_114 Depth=2
	srli.d	$a0, $s2, 4
	sltui	$a1, $s2, 160
	addi.d	$a2, $a0, 48
	addi.d	$a0, $a0, 55
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
.Ltmp97:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.116:                              # %invoke.cont151
                                        #   in Loop: Header=BB0_114 Depth=2
	andi	$a0, $s2, 15
	sltui	$a1, $a0, 10
	ori	$a2, $zero, 3
	bstrins.d	$s2, $a2, 63, 4
	addi.d	$a0, $a0, 55
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s2, $a1, $a0
.LBB0_117:                              # %invoke.cont151.invoke
                                        #   in Loop: Header=BB0_114 Depth=2
.Ltmp99:                                # EH_LABEL
	ext.w.b	$a1, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.118:                              # %if.end160
                                        #   in Loop: Header=BB0_114 Depth=2
.Ltmp101:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEc)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.119:                              # %invoke.cont161
                                        #   in Loop: Header=BB0_114 Depth=2
	ld.d	$a0, $s1, 80
	addi.d	$fp, $fp, 1
	bltu	$fp, $a0, .LBB0_114
.LBB0_120:                              # %for.cond.cleanup135
                                        #   in Loop: Header=BB0_39 Depth=1
.Ltmp104:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.121:                              # %invoke.cont169
                                        #   in Loop: Header=BB0_39 Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_38
# %bb.122:                              # %delete.notnull.i278
                                        #   in Loop: Header=BB0_39 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_38
.LBB0_123:                              # %if.then189
	ld.d	$a0, $sp, 1112
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.124:                              # %invoke.cont190
	move	$a4, $a0
	ld.d	$a0, $s0, 8
	ld.w	$a1, $sp, 1100
	ld.w	$a2, $sp, 1104
	ld.w	$a3, $sp, 1108
	beqz	$a4, .LBB0_146
# %bb.125:                              # %if.else212
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z12LzmaBenchConP8_IO_FILEjjj)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.126:                              # %invoke.cont220
	move	$s2, $a0
	beqz	$a0, .LBB0_345
# %bb.127:                              # %invoke.cont220
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_366
# %bb.128:                              # %if.then225
	ori	$s2, $zero, 2
.Ltmp39:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
	b	.LBB0_345
.LBB0_129:                              # %if.else239
	addi.d	$a0, $a0, -6
	sltu	$a0, $zero, $a0
	andn	$a0, $a0, $s1
	bnez	$a0, .LBB0_140
# %bb.130:                              # %if.then245
	beqz	$s1, .LBB0_150
# %bb.131:                              # %if.then247
.Ltmp285:                               # EH_LABEL
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.132:                              # %invoke.cont249
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZTV23CExtractCallbackConsole)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTV23CExtractCallbackConsole)
	st.w	$zero, $s1, 16
	addi.d	$a0, $fp, 16
	st.d	$a0, $s1, 0
	addi.d	$a0, $fp, 168
	st.d	$a0, $s1, 8
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s1, 24
.Ltmp288:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.133:                              # %invoke.cont252
	st.d	$a0, $s1, 24
	ld.d	$a1, $fp, 24
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s1, 36
.Ltmp291:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp292:                               # EH_LABEL
# %bb.134:                              # %invoke.cont255
	ld.b	$a0, $sp, 608
	ld.d	$s4, $s1, 24
	st.d	$s0, $s1, 72
	st.b	$a0, $s1, 20
	st.w	$zero, $s1, 32
	st.w	$zero, $s4, 0
	ld.w	$a0, $sp, 624
	ld.w	$s5, $s1, 36
	addi.w	$fp, $a0, 1
	bne	$fp, $s5, .LBB0_159
# %bb.135:
	move	$s3, $s4
	b	.LBB0_261
.LBB0_136:                              # %for.end177
.Ltmp107:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.137:                              # %invoke.cont178
.Ltmp109:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.138:                              # %invoke.cont180
.Ltmp111:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.139:
	move	$s2, $zero
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_345
.LBB0_140:                              # %if.else502
.Ltmp114:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK15CArchiveCommand17IsFromUpdateGroupEv)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.141:                              # %invoke.cont504
	beqz	$a0, .LBB0_352
# %bb.142:                              # %if.then506
	ld.bu	$a0, $sp, 960
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_167
# %bb.143:                              # %if.then506
	ld.w	$a0, $sp, 976
	bnez	$a0, .LBB0_167
# %bb.144:                              # %if.then512
	ld.d	$s2, $sp, 968
	st.w	$zero, $sp, 976
	st.w	$zero, $s2, 0
	ld.w	$s3, $sp, 980
	ori	$a0, $zero, 10
	bne	$s3, $a0, .LBB0_156
# %bb.145:
	move	$s1, $s2
	b	.LBB0_166
.LBB0_146:                              # %if.then193
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z11CrcBenchConP8_IO_FILEjjj)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.147:                              # %invoke.cont197
	move	$s2, $a0
	beqz	$a0, .LBB0_345
# %bb.148:                              # %invoke.cont197
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_369
# %bb.149:                              # %if.then202
	ori	$s2, $zero, 2
.Ltmp46:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
	b	.LBB0_345
.LBB0_150:                              # %invoke.cont469
	ld.d	$a0, $sp, 568
	st.d	$zero, $sp, 152
	ld.bu	$a2, $sp, 541
	ld.d	$a0, $a0, 0
	addi.d	$a4, $sp, 696
	addi.d	$a3, $sp, 664
	ld.bu	$a6, $sp, 543
	ld.bu	$a7, $sp, 632
	addi.d	$a5, $a0, 16
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 616
.Ltmp274:                               # EH_LABEL
	addi.d	$t0, $sp, 152
	st.d	$t0, $sp, 16
	st.d	$a1, $sp, 8
	addi.d	$a1, $sp, 456
	st.d	$a0, $sp, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Z12ListArchivesP7CCodecsRK13CRecordVectorIiEbR13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeEbbRbRS7_Ry)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.151:                              # %invoke.cont477
	ld.d	$a1, $sp, 152
	beqz	$a1, .LBB0_162
# %bb.152:                              # %if.then480
.Ltmp276:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(g_StdOut)
	ld.d	$a0, $a0, %got_pc_lo12(g_StdOut)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.153:                              # %invoke.cont481
.Ltmp278:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.154:                              # %invoke.cont483
	ld.d	$a1, $sp, 152
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.155:                              # %cleanup495
	ori	$s2, $zero, 2
	b	.LBB0_345
.LBB0_156:                              # %if.end.i.i703
.Ltmp119:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.157:                              # %call.i.i705.noexc
	move	$s1, $a0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB0_164
# %bb.158:                              # %delete.notnull.i.i717
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 976
	b	.LBB0_165
.LBB0_159:                              # %if.end.i.i295
	slti	$a0, $a0, -1
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp294:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.160:                              # %call.i.i.noexc
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB0_259
# %bb.161:                              # %delete.notnull.i.i302
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	b	.LBB0_260
.LBB0_162:                              # %if.end487
	beqz	$a0, .LBB0_344
# %bb.163:                              # %if.then489
	move	$fp, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$fp, $a0, 0
.Ltmp282:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
	b	.LBB0_370
.LBB0_164:
	move	$a0, $zero
.LBB0_165:                              # %if.end9.i.i707
	st.d	$s1, $sp, 968
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	ori	$a0, $zero, 10
	st.w	$a0, $sp, 980
.LBB0_166:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i710
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	xvst	$xr0, $s1, 0
	ori	$a0, $zero, 120
	st.d	$a0, $s1, 32
	ori	$a0, $zero, 9
	st.w	$a0, $sp, 976
.LBB0_167:                              # %if.end516
	pcalau12i	$a0, %got_pc_hi20(_ZTV20COpenCallbackConsole)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV20COpenCallbackConsole)
	addi.d	$s7, $a0, 16
	st.d	$s7, $sp, 416
	st.b	$zero, $sp, 433
.Ltmp122:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.168:                              # %invoke.cont519
	move	$s2, $a0
	ld.w	$a0, $sp, 624
	ld.b	$a1, $sp, 608
	st.d	$s2, $sp, 440
	st.d	$s0, $sp, 424
	sltu	$a2, $zero, $a0
	and	$s3, $a2, $a1
	st.b	$s3, $sp, 432
	ori	$a1, $zero, 0
	lu32i.d	$a1, 4
	st.d	$a1, $sp, 448
	addi.w	$s4, $a0, 1
	ori	$a1, $zero, 4
	st.w	$zero, $s2, 0
	beq	$s4, $a1, .LBB0_171
# %bb.169:                              # %if.end.i.i414
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.170:                              # %if.end9.i.i417
	move	$s1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 448
	st.d	$s1, $sp, 440
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s4, $sp, 452
	move	$s2, $s1
.LBB0_171:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i420
	ld.d	$s4, $sp, 616
	move	$a0, $zero
	addi.d	$s1, $sp, 760
	.p2align	4, , 16
.LBB0_172:                              # %while.cond.i.i421
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s4, $a0
	stx.w	$a1, $s2, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_172
# %bb.173:                              # %invoke.cont533
	ld.w	$s5, $sp, 624
	pcalau12i	$a0, %got_pc_hi20(_ZTV22CUpdateCallbackConsole)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV22CUpdateCallbackConsole)
	st.w	$s5, $sp, 448
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 152
	lu12i.w	$a0, 16
	st.d	$a0, $sp, 160
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 168
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184
	st.w	$zero, $sp, 192
	st.b	$zero, $sp, 210
	st.b	$zero, $sp, 225
.Ltmp128:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.174:                              # %invoke.cont536
	st.d	$a0, $sp, 232
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 244
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	ori	$a2, $zero, 8
	st.d	$a2, $sp, 280
	st.d	$s8, $sp, 256
	vst	$vr0, $sp, 296
	st.d	$a1, $sp, 312
	st.d	$fp, $sp, 288
	vst	$vr0, $sp, 328
	st.d	$a2, $sp, 344
	st.d	$s8, $sp, 320
	vst	$vr0, $sp, 360
	ld.b	$a2, $sp, 1096
	st.d	$a1, $sp, 376
	st.d	$fp, $sp, 352
	ld.bu	$a3, $sp, 608
	st.b	$a2, $sp, 224
	st.b	$s3, $sp, 226
	sltui	$a2, $s5, 1
	and	$a2, $a3, $a2
	st.b	$a2, $sp, 248
	st.w	$zero, $sp, 240
	addi.w	$fp, $s5, 1
	st.w	$zero, $a0, 0
	beq	$fp, $a1, .LBB0_177
# %bb.175:                              # %if.end.i.i449
	move	$s3, $a0
	slti	$a0, $s5, -1
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.176:                              # %if.end9.i.i452
	move	$s2, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 240
	ld.d	$s4, $sp, 616
	st.d	$s2, $sp, 232
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$fp, $sp, 244
	move	$a0, $s2
.LBB0_177:                              # %while.cond.i.i456.preheader
	addi.d	$a1, $sp, 256
	addi.d	$s2, $sp, 288
	.p2align	4, , 16
.LBB0_178:                              # %while.cond.i.i456
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s4, 0
	addi.d	$s4, $s4, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB0_178
# %bb.179:                              # %invoke.cont554
	ld.w	$a0, $sp, 624
	ld.b	$a2, $sp, 1008
	st.w	$a0, $sp, 240
	st.b	$a2, $sp, 225
	st.h	$zero, $sp, 208
.Ltmp133:                               # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.180:                              # %.noexc469
.Ltmp135:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.181:                              # %invoke.cont560
	st.d	$s0, $sp, 216
	st.d	$s0, $sp, 200
	st.w	$zero, $sp, 96
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 112
.Ltmp138:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.182:                              # %call.i.i.i.i.noexc
	move	$s2, $a0
	st.d	$a0, $sp, 104
	st.w	$zero, $a0, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 120
.Ltmp141:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.183:                              # %invoke.cont.i.i
	move	$s3, $a0
	st.d	$a0, $sp, 120
	st.w	$zero, $a0, 0
	ori	$fp, $zero, 4
	st.w	$fp, $sp, 132
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
.Ltmp144:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.184:                              # %invoke.cont562
	st.d	$a0, $sp, 136
	st.w	$zero, $a0, 0
	st.w	$fp, $sp, 148
	addi.d	$a3, $sp, 592
.Ltmp147:                               # EH_LABEL
	addi.d	$a2, $sp, 456
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.185:                              # %invoke.cont564
	beqz	$a0, .LBB0_354
# %bb.186:                              # %if.end568
	addi.d	$a1, $sp, 552
.Ltmp152:                               # EH_LABEL
	addi.d	$a3, $sp, 96
	addi.d	$a4, $sp, 416
	addi.d	$a5, $sp, 152
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.187:                              # %invoke.cont572
	move	$s1, $a0
	ld.bu	$a0, $sp, 960
	ori	$fp, $zero, 1
	bne	$a0, $fp, .LBB0_190
# %bb.188:                              # %for.cond578.preheader
	ld.w	$a0, $sp, 812
	blt	$a0, $fp, .LBB0_190
# %bb.189:                              # %for.body584.lr.ph
	ld.bu	$a1, $sp, 1008
	beqz	$a1, .LBB0_251
.LBB0_190:                              # %if.end605
	ld.w	$a0, $sp, 332
	blt	$a0, $fp, .LBB0_214
# %bb.191:                              # %if.then610
.Ltmp161:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.192:                              # %invoke.cont611
.Ltmp163:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.193:                              # %invoke.cont613
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.194:                              # %invoke.cont615
.Ltmp167:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.195:                              # %invoke.cont617
	ld.w	$s2, $sp, 332
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_206
# %bb.196:                              # %for.body628.lr.ph
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$s3, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	addi.d	$s4, $a0, %pc_lo12(.L.str.18)
	ori	$s6, $zero, 0
	lu32i.d	$s6, 4
	b	.LBB0_198
	.p2align	4, , 16
.LBB0_197:                              # %_ZN11CStringBaseIwED2Ev.exit499
                                        #   in Loop: Header=BB0_198 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s2, .LBB0_206
.LBB0_198:                              # %for.body628
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 0
.Ltmp170:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.199:                              # %invoke.cont635
                                        #   in Loop: Header=BB0_198 Depth=1
.Ltmp172:                               # EH_LABEL
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.200:                              # %invoke.cont637
                                        #   in Loop: Header=BB0_198 Depth=1
	ld.d	$a0, $sp, 368
	slli.d	$a1, $fp, 2
	ldx.w	$s5, $a0, $a1
	st.d	$s6, $sp, 408
.Ltmp175:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.201:                              # %call.i.i.i.i.noexc494
                                        #   in Loop: Header=BB0_198 Depth=1
	st.d	$a0, $sp, 400
	st.w	$zero, $a0, 0
.Ltmp178:                               # EH_LABEL
	addi.d	$a1, $sp, 400
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.202:                              # %invoke.cont643
                                        #   in Loop: Header=BB0_198 Depth=1
	ld.d	$a1, $sp, 400
.Ltmp181:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.203:                              # %invoke.cont647
                                        #   in Loop: Header=BB0_198 Depth=1
.Ltmp183:                               # EH_LABEL
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.204:                              # %invoke.cont649
                                        #   in Loop: Header=BB0_198 Depth=1
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_197
# %bb.205:                              # %delete.notnull.i498
                                        #   in Loop: Header=BB0_198 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_197
.LBB0_206:                              # %for.cond.cleanup627
.Ltmp186:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.207:                              # %invoke.cont658
.Ltmp188:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.208:                              # %invoke.cont660
.Ltmp190:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.209:                              # %invoke.cont662
.Ltmp192:                               # EH_LABEL
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEi)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.210:                              # %invoke.cont664
.Ltmp194:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.211:                              # %invoke.cont666
	ori	$a0, $zero, 2
	blt	$s2, $a0, .LBB0_213
# %bb.212:                              # %if.then669
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
.LBB0_213:                              # %if.end672
	ori	$s2, $zero, 1
.Ltmp198:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
	b	.LBB0_215
.LBB0_214:
	move	$s2, $zero
.LBB0_215:                              # %if.end676
	bnez	$s1, .LBB0_355
# %bb.216:                              # %if.end739
	ld.w	$s1, $sp, 268
	beqz	$s1, .LBB0_240
# %bb.217:                              # %if.else756
.Ltmp231:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.218:                              # %invoke.cont757
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.219:                              # %invoke.cont759
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.220:                              # %invoke.cont761
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.221:                              # %for.cond766.preheader
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB0_232
# %bb.222:                              # %for.body769.lr.ph
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$s2, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	addi.d	$s3, $a0, %pc_lo12(.L.str.18)
	ori	$s5, $zero, 0
	lu32i.d	$s5, 4
	b	.LBB0_224
	.p2align	4, , 16
.LBB0_223:                              # %_ZN11CStringBaseIwED2Ev.exit544
                                        #   in Loop: Header=BB0_224 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s1, .LBB0_232
.LBB0_224:                              # %for.body769
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 272
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a0, 0
.Ltmp239:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.225:                              # %invoke.cont776
                                        #   in Loop: Header=BB0_224 Depth=1
.Ltmp241:                               # EH_LABEL
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.226:                              # %invoke.cont778
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.d	$a0, $sp, 304
	slli.d	$a1, $fp, 2
	ldx.w	$s4, $a0, $a1
	st.d	$s5, $sp, 408
.Ltmp244:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.227:                              # %call.i.i.i.i.noexc538
                                        #   in Loop: Header=BB0_224 Depth=1
	st.d	$a0, $sp, 400
	st.w	$zero, $a0, 0
.Ltmp247:                               # EH_LABEL
	addi.d	$a1, $sp, 400
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.228:                              # %invoke.cont784
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.d	$a1, $sp, 400
.Ltmp250:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.229:                              # %invoke.cont788
                                        #   in Loop: Header=BB0_224 Depth=1
.Ltmp252:                               # EH_LABEL
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.230:                              # %invoke.cont790
                                        #   in Loop: Header=BB0_224 Depth=1
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_223
# %bb.231:                              # %delete.notnull.i543
                                        #   in Loop: Header=BB0_224 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_223
.LBB0_232:                              # %for.cond.cleanup768
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.233:                              # %invoke.cont799
.Ltmp257:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.234:                              # %invoke.cont801
.Ltmp259:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.235:                              # %invoke.cont803
.Ltmp261:                               # EH_LABEL
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEi)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.236:                              # %invoke.cont805
.Ltmp263:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.237:                              # %invoke.cont807
	ori	$a0, $zero, 2
	blt	$s1, $a0, .LBB0_239
# %bb.238:                              # %if.then810
.Ltmp265:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
.LBB0_239:                              # %if.end813
	ori	$s2, $zero, 1
.Ltmp267:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
	b	.LBB0_243
.LBB0_240:                              # %if.then745
	ld.w	$a0, $sp, 332
	bnez	$a0, .LBB0_243
# %bb.241:                              # %if.then750
.Ltmp269:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.242:                              # %invoke.cont751
.Ltmp271:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
.LBB0_243:                              # %if.end816
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB0_245
# %bb.244:                              # %delete.notnull.i.i549
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_245:                              # %_ZN11CStringBaseIwED2Ev.exit.i550
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB0_247
# %bb.246:                              # %delete.notnull.i2.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_247:                              # %_ZN11CStringBaseIwED2Ev.exit3.i
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB0_249
# %bb.248:                              # %delete.notnull.i5.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_249:                              # %_ZN10CErrorInfoD2Ev.exit
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN22CUpdateCallbackConsoleD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	st.d	$s7, $sp, 416
	beqz	$a0, .LBB0_345
# %bb.250:                              # %delete.notnull.i.i553
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_345
.LBB0_251:                              # %for.body584.preheader
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB0_254
.LBB0_252:                              # %_ZN11CStringBaseIwED2Ev.exit480
                                        #   in Loop: Header=BB0_254 Depth=1
	ld.w	$a0, $sp, 812
.LBB0_253:                              # %if.end598
                                        #   in Loop: Header=BB0_254 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB0_190
.LBB0_254:                              # %for.body584
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $sp, 1008
	bnez	$a1, .LBB0_253
# %bb.255:                              # %if.then591
                                        #   in Loop: Header=BB0_254 Depth=1
	ld.d	$a0, $sp, 816
	ldx.d	$a0, $a0, $s2
	addi.d	$a1, $a0, 16
.Ltmp155:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.256:                              # %invoke.cont593
                                        #   in Loop: Header=BB0_254 Depth=1
.Ltmp158:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_Z12myAddExeFlagRK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.257:                              # %invoke.cont595
                                        #   in Loop: Header=BB0_254 Depth=1
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_252
# %bb.258:                              # %delete.notnull.i479
                                        #   in Loop: Header=BB0_254 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_252
.LBB0_259:
	move	$a0, $zero
.LBB0_260:                              # %if.end9.i.i
	st.d	$s3, $s1, 24
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$fp, $s1, 36
.LBB0_261:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$s6, $sp, 616
	move	$a0, $zero
	.p2align	4, , 16
.LBB0_262:                              # %while.cond.i.i296
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s3, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_262
# %bb.263:                              # %invoke.cont260
	ld.w	$fp, $sp, 624
	pcalau12i	$a0, %got_pc_hi20(_ZTV20COpenCallbackConsole)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV20COpenCallbackConsole)
	st.w	$fp, $s1, 32
	xvrepli.b	$xr0, 0
	xvst	$xr0, $s1, 40
	addi.d	$s5, $a0, 16
	st.d	$s5, $sp, 416
	st.b	$zero, $sp, 433
.Ltmp297:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.264:                              # %invoke.cont264
	move	$s3, $a0
	ld.b	$a0, $sp, 608
	st.d	$s3, $sp, 440
	st.d	$s0, $sp, 424
	st.b	$a0, $sp, 432
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 448
	addi.w	$s7, $fp, 1
	ori	$a0, $zero, 4
	st.w	$zero, $s3, 0
	beq	$s7, $a0, .LBB0_267
# %bb.265:                              # %if.end.i.i314
	slti	$a0, $fp, -1
	slli.d	$a1, $s7, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp300:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.266:                              # %if.end9.i.i317
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 448
	ld.d	$s6, $sp, 616
	st.d	$s4, $sp, 440
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s7, $sp, 452
	move	$s3, $s4
.LBB0_267:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i320
	move	$a0, $zero
	addi.d	$fp, $s1, 40
	.p2align	4, , 16
.LBB0_268:                              # %while.cond.i.i321
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s3, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_268
# %bb.269:                              # %invoke.cont273
	ld.w	$a0, $sp, 624
	st.w	$a0, $sp, 448
	st.b	$zero, $sp, 156
	st.w	$zero, $sp, 152
	st.d	$zero, $sp, 160
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 168
.Ltmp303:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.270:                              # %invoke.cont276
	st.d	$a0, $sp, 168
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 180
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 208
	ld.h	$a0, $sp, 541
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a1, $sp, 184
	st.h	$a0, $sp, 152
.Ltmp306:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNK15CArchiveCommand11GetPathModeEv)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.271:                              # %invoke.cont286
	ld.w	$a1, $sp, 584
	st.w	$a0, $sp, 160
	addi.d	$a0, $a1, -3
	ld.w	$a1, $sp, 656
	sltui	$a0, $a0, 1
	ld.d	$s2, $sp, 168
	st.b	$a0, $sp, 155
	st.w	$a1, $sp, 164
	st.w	$zero, $sp, 176
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 648
	ld.w	$s6, $sp, 180
	addi.w	$s4, $a0, 1
	bne	$s4, $s6, .LBB0_273
# %bb.272:
	move	$s3, $s2
	b	.LBB0_278
.LBB0_273:                              # %if.end.i.i344
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp308:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.274:                              # %call.i.i.noexc359
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB0_276
# %bb.275:                              # %delete.notnull.i.i357
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 176
	b	.LBB0_277
.LBB0_276:
	move	$a0, $zero
.LBB0_277:                              # %if.end9.i.i347
	st.d	$s3, $sp, 168
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s4, $sp, 180
.LBB0_278:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i350
	ld.d	$a0, $sp, 640
	addi.d	$s2, $sp, 184
	.p2align	4, , 16
.LBB0_279:                              # %while.cond.i.i351
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s3, 4
	st.w	$a1, $s3, 0
	move	$s3, $a2
	bnez	$a1, .LBB0_279
# %bb.280:                              # %invoke.cont294
	ld.w	$a0, $sp, 648
	ld.b	$a1, $sp, 544
	ld.b	$a2, $sp, 633
	st.w	$a0, $sp, 176
	st.b	$a1, $sp, 154
	st.b	$a2, $sp, 156
.Ltmp310:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.281:                              # %.noexc
	ld.w	$s3, $sp, 740
	ld.w	$a0, $sp, 196
	add.w	$a1, $a0, $s3
.Ltmp312:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.282:                              # %.noexc363
	ori	$a0, $zero, 1
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB0_286
# %bb.283:                              # %for.body.lr.ph.i.i
	move	$s4, $zero
	slli.d	$s3, $s3, 3
	.p2align	4, , 16
.LBB0_284:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 744
	ldx.d	$a1, $a0, $s4
.Ltmp315:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CPropertyE3AddERKS0_)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.285:                              # %call4.i.i.noexc
                                        #   in Loop: Header=BB0_284 Depth=1
	addi.d	$s4, $s4, 8
	bne	$s3, $s4, .LBB0_284
.LBB0_286:                              # %invoke.cont302
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 408
.Ltmp318:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.287:                              # %invoke.cont308
	ld.d	$a1, $sp, 568
	st.d	$a0, $sp, 400
	st.w	$zero, $a0, 0
	ld.d	$a0, $a1, 0
	addi.d	$a3, $sp, 696
	addi.d	$a2, $sp, 664
	addi.d	$a4, $a0, 16
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 456
	addi.d	$a5, $sp, 152
	addi.d	$a6, $sp, 416
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a7, $s1
	pcaddu18i	$ra, %call36(_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.288:                              # %invoke.cont310
	move	$s2, $a0
	ld.w	$a0, $sp, 408
	beqz	$a0, .LBB0_293
# %bb.289:                              # %if.then314
.Ltmp323:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.290:                              # %invoke.cont315
.Ltmp325:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.291:                              # %invoke.cont317
	ld.d	$a1, $sp, 400
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.292:                              # %invoke.cont321
	sltui	$a0, $s2, 1
	masknez	$a1, $s2, $a0
	lu12i.w	$a2, -524284
	ori	$a2, $a2, 5
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
.LBB0_293:                              # %if.end326
.Ltmp329:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.294:                              # %invoke.cont327
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_298
# %bb.295:                              # %if.then330
.Ltmp331:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.296:                              # %invoke.cont331
	ld.d	$a1, $fp, 0
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.297:                              # %invoke.cont334
.Ltmp335:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
.LBB0_298:                              # %if.end338
	ld.d	$a0, $s1, 48
	bnez	$a0, .LBB0_300
# %bb.299:                              # %lor.lhs.false340
	ld.d	$a0, $s1, 56
	beqz	$a0, .LBB0_316
.LBB0_300:                              # %if.then342
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_310
# %bb.301:                              # %if.then345
.Ltmp337:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a0, %got_pc_lo12(_Z4endlR13CStdOutStream)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.302:                              # %invoke.cont346
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB0_306
# %bb.303:                              # %if.then350
.Ltmp339:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.304:                              # %invoke.cont351
	ld.d	$a1, $s1, 48
.Ltmp341:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.305:                              # %invoke.cont354
.Ltmp343:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
.LBB0_306:                              # %if.end358
	ld.d	$a0, $s1, 56
	beqz	$a0, .LBB0_310
# %bb.307:                              # %if.then361
.Ltmp345:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.308:                              # %invoke.cont362
	ld.d	$a1, $s1, 56
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.309:                              # %invoke.cont365
.Ltmp349:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
.LBB0_310:                              # %if.end370
	bnez	$s2, .LBB0_367
# %bb.311:                              # %cleanup845.critedge
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_313
# %bb.312:                              # %delete.notnull.i562
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_313:                              # %_ZN11CStringBaseIwED2Ev.exit563
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN15CExtractOptionsD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	st.d	$s5, $sp, 416
	beqz	$a0, .LBB0_315
# %bb.314:                              # %delete.notnull.i.i566
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_315:                              # %if.then.i570
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	ori	$s2, $zero, 2
.Ltmp351:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp352:                               # EH_LABEL
	b	.LBB0_345
.LBB0_316:                              # %if.end378
	bnez	$s2, .LBB0_367
# %bb.317:                              # %if.end385
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB0_322
# %bb.318:                              # %if.then387
.Ltmp356:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.319:                              # %invoke.cont388
	ld.d	$a1, $sp, 120
.Ltmp358:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.320:                              # %invoke.cont391
.Ltmp360:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.321:                              # %invoke.cont391.if.end395_crit_edge
	ld.d	$a0, $sp, 120
	sltu	$a0, $zero, $a0
	b	.LBB0_323
.LBB0_322:
	move	$a0, $zero
.LBB0_323:                              # %if.end395
	ld.d	$a1, $sp, 128
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB0_325
# %bb.324:                              # %if.end395
	beqz	$a0, .LBB0_328
.LBB0_325:                              # %if.then400
.Ltmp362:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.326:                              # %invoke.cont401
	ld.d	$a1, $sp, 128
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.327:                              # %invoke.cont404
.Ltmp366:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
.LBB0_328:                              # %if.end408
.Ltmp368:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp369:                               # EH_LABEL
# %bb.329:                              # %invoke.cont409
	ld.d	$a1, $sp, 104
.Ltmp370:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.330:                              # %invoke.cont411
.Ltmp372:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.331:                              # %invoke.cont413
.Ltmp374:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.332:                              # %invoke.cont415
	ld.d	$a1, $sp, 112
.Ltmp376:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEy)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.333:                              # %invoke.cont417
.Ltmp378:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp379:                               # EH_LABEL
# %bb.334:                              # %invoke.cont419
	ld.bu	$a0, $sp, 633
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_339
# %bb.335:                              # %if.then423
	ld.w	$a0, $sp, 136
.Ltmp381:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	pcaddu18i	$ra, %call36(_Z27ConvertUInt32ToHexWithZerosjPc)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.336:                              # %invoke.cont426
.Ltmp383:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.337:                              # %invoke.cont427
.Ltmp385:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.338:                              # %invoke.cont430
.Ltmp387:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
.LBB0_339:                              # %cleanup436
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_341
# %bb.340:                              # %delete.notnull.i373
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_341:                              # %_ZN11CStringBaseIwED2Ev.exit374
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN15CExtractOptionsD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	st.d	$s5, $sp, 416
	beqz	$a0, .LBB0_343
# %bb.342:                              # %delete.notnull.i.i377
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_343:                              # %if.then.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
.Ltmp393:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp394:                               # EH_LABEL
.LBB0_344:
	move	$s2, $zero
.LBB0_345:                              # %if.then.i577
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp396:                               # EH_LABEL
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp397:                               # EH_LABEL
.LBB0_346:                              # %cleanup861
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN18NCommandLineParser7CParserD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN26CArchiveCommandLineOptionsD2Ev)
	jirl	$ra, $ra, 0
.LBB0_347:                              # %cleanup869
	st.d	$s8, $sp, 1128
.Ltmp411:                               # EH_LABEL
	addi.d	$a0, $sp, 1128
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.348:                              # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	addi.d	$a0, $sp, 1128
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
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
.LBB0_349:                              # %if.then35
	move	$fp, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$fp, $a0, 0
.Ltmp24:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
	b	.LBB0_370
.LBB0_350:                              # %if.then60
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	st.d	$a1, $a0, 0
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
	b	.LBB0_370
.LBB0_351:                              # %if.then52
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	st.d	$a1, $a0, 0
.Ltmp399:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
	b	.LBB0_370
.LBB0_352:                              # %if.else839
.Ltmp116:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZL16PrintHelpAndExitR13CStdOutStream)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.353:                              # %if.then.i577.unreachable
.LBB0_354:                              # %if.then566
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	st.d	$a1, $a0, 0
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
	b	.LBB0_370
.LBB0_355:                              # %if.then678
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 408
.Ltmp201:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.356:                              # %invoke.cont680
	ld.w	$a1, $sp, 144
	st.d	$a0, $sp, 400
	st.w	$zero, $a0, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB0_371
.LBB0_357:                              # %if.end690
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB0_360
# %bb.358:                              # %if.then693
.Ltmp208:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.359:                              # %invoke.cont695
.Ltmp210:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
.LBB0_360:                              # %if.end699
	ld.w	$a0, $sp, 128
	bnez	$a0, .LBB0_373
.LBB0_361:                              # %if.end708
	ld.w	$a1, $sp, 96
	bnez	$a1, .LBB0_375
.LBB0_362:                              # %if.end722
	ld.w	$a0, $sp, 408
	beqz	$a0, .LBB0_365
# %bb.363:                              # %if.then725
.Ltmp224:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.364:                              # %invoke.cont726
	ld.d	$a1, $sp, 400
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKw)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
.LBB0_365:                              # %if.end732
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$s1, $a0, 0
.Ltmp228:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
	b	.LBB0_370
.LBB0_366:                              # %if.end228
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$s2, $a0, 0
.Ltmp41:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
	b	.LBB0_370
.LBB0_367:                              # %if.then380.invoke
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$s2, $a0, 0
.Ltmp354:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.368:                              # %if.then380.cont
.LBB0_369:                              # %if.end205
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.w	$s2, $a0, 0
.Ltmp48:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_ZTI16CSystemException)
	addi.d	$a1, $a1, %pc_lo12(_ZTI16CSystemException)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
.LBB0_370:                              # %unreachable
.LBB0_371:                              # %if.then684
.Ltmp204:                               # EH_LABEL
	addi.d	$a1, $sp, 136
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.372:                              # %invoke.cont686
.Ltmp206:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
	b	.LBB0_357
.LBB0_373:                              # %if.then702
.Ltmp212:                               # EH_LABEL
	addi.d	$a1, $sp, 120
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.374:                              # %invoke.cont704
.Ltmp214:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
	b	.LBB0_361
.LBB0_375:                              # %if.then710
.Ltmp216:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	pcaddu18i	$ra, %call36(_ZN8NWindows6NError16MyFormatMessageWEj)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.376:                              # %invoke.cont714
.Ltmp219:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 384
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.377:                              # %invoke.cont716
	ld.d	$a0, $sp, 384
	beqz	$a0, .LBB0_379
# %bb.378:                              # %delete.notnull.i515
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_379:                              # %_ZN11CStringBaseIwED2Ev.exit516
.Ltmp222:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 400
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_362
.LBB0_380:                              # %lpad715
.Ltmp221:                               # EH_LABEL
	ld.d	$a1, $sp, 384
	move	$s0, $a0
	beqz	$a1, .LBB0_391
# %bb.381:                              # %delete.notnull.i518
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_391
.LBB0_382:                              # %lpad713
.Ltmp218:                               # EH_LABEL
	b	.LBB0_390
.LBB0_383:                              # %terminate.lpad.i
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_384:                              # %lpad425
.Ltmp389:                               # EH_LABEL
	b	.LBB0_421
.LBB0_385:                              # %ehcleanup449.thread
.Ltmp302:                               # EH_LABEL
	b	.LBB0_396
.LBB0_386:                              # %lpad259
.Ltmp296:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB0_432
.LBB0_387:                              # %lpad509
.Ltmp121:                               # EH_LABEL
	b	.LBB0_465
.LBB0_388:                              # %terminate.lpad.i574
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_389:                              # %lpad681
.Ltmp230:                               # EH_LABEL
.LBB0_390:                              # %ehcleanup737
	move	$s0, $a0
.LBB0_391:                              # %ehcleanup737
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_453
# %bb.392:                              # %delete.notnull.i523
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_453
.LBB0_393:                              # %lpad679
.Ltmp203:                               # EH_LABEL
	b	.LBB0_452
.LBB0_394:                              # %lpad304
.Ltmp320:                               # EH_LABEL
	b	.LBB0_429
.LBB0_395:                              # %ehcleanup449.thread686
.Ltmp305:                               # EH_LABEL
.LBB0_396:                              # %delete.notnull.i.i386.sink.split
	move	$s0, $a0
	st.d	$s5, $sp, 416
	b	.LBB0_431
.LBB0_397:                              # %lpad263
.Ltmp299:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB0_432
.LBB0_398:                              # %ehcleanup832.thread
.Ltmp127:                               # EH_LABEL
	b	.LBB0_408
.LBB0_399:                              # %lpad254
.Ltmp293:                               # EH_LABEL
	b	.LBB0_465
.LBB0_400:                              # %lpad251
.Ltmp290:                               # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 80
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_471
.LBB0_401:                              # %lpad248
.Ltmp287:                               # EH_LABEL
	b	.LBB0_465
.LBB0_402:                              # %lpad571
.Ltmp154:                               # EH_LABEL
	b	.LBB0_452
.LBB0_403:                              # %ehcleanup.i.i
.Ltmp146:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 104
	bnez	$s2, .LBB0_405
	b	.LBB0_454
.LBB0_404:                              # %ehcleanup.thread.i.i
.Ltmp143:                               # EH_LABEL
	move	$s0, $a0
.LBB0_405:                              # %delete.notnull.i10.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_454
.LBB0_406:                              # %lpad561
.Ltmp140:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB0_454
.LBB0_407:                              # %ehcleanup832.thread693
.Ltmp130:                               # EH_LABEL
.LBB0_408:                              # %delete.notnull.i.i558.sink.split
	move	$s0, $a0
	st.d	$s7, $sp, 416
	b	.LBB0_455
.LBB0_409:                              # %lpad518
.Ltmp124:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_471
.LBB0_410:                              # %lpad194
.Ltmp50:                                # EH_LABEL
	b	.LBB0_465
.LBB0_411:                              # %lpad468
.Ltmp284:                               # EH_LABEL
	b	.LBB0_465
.LBB0_412:                              # %lpad285.loopexit.split-lp
.Ltmp314:                               # EH_LABEL
	b	.LBB0_429
.LBB0_413:                              # %lpad563
.Ltmp151:                               # EH_LABEL
	b	.LBB0_452
.LBB0_414:                              # %lpad592
.Ltmp157:                               # EH_LABEL
	b	.LBB0_452
.LBB0_415:                              # %lpad594
.Ltmp160:                               # EH_LABEL
	b	.LBB0_449
.LBB0_416:                              # %lpad606
.Ltmp169:                               # EH_LABEL
	b	.LBB0_452
.LBB0_417:                              # %lpad547
.Ltmp137:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB0_454
.LBB0_418:                              # %lpad214
.Ltmp43:                                # EH_LABEL
	b	.LBB0_465
.LBB0_419:                              # %lpad621
.Ltmp200:                               # EH_LABEL
	b	.LBB0_452
.LBB0_420:                              # %lpad307
.Ltmp380:                               # EH_LABEL
.LBB0_421:                              # %ehcleanup437
	move	$s0, $a0
	ld.d	$a0, $sp, 400
	beqz	$a0, .LBB0_430
# %bb.422:                              # %delete.notnull.i382
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_430
.LBB0_423:                              # %lpad74
.Ltmp113:                               # EH_LABEL
	b	.LBB0_465
.LBB0_424:                              # %terminate.lpad.i581
.Ltmp398:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_425:                              # %lpad24
.Ltmp21:                                # EH_LABEL
	b	.LBB0_443
.LBB0_426:                              # %lpad741
.Ltmp273:                               # EH_LABEL
	b	.LBB0_452
.LBB0_427:                              # %lpad20
.Ltmp18:                                # EH_LABEL
	b	.LBB0_443
.LBB0_428:                              # %lpad285.loopexit
.Ltmp317:                               # EH_LABEL
.LBB0_429:                              # %ehcleanup449
	move	$s0, $a0
.LBB0_430:                              # %ehcleanup449
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN15CExtractOptionsD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 440
	st.d	$s5, $sp, 416
	beqz	$s3, .LBB0_432
.LBB0_431:                              # %delete.notnull.i.i386
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_432:                              # %if.then.i390
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
.Ltmp390:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp391:                               # EH_LABEL
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_471
.LBB0_433:                              # %terminate.lpad.i394
.Ltmp392:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_434:                              # %lpad31
.Ltmp26:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_472
.LBB0_435:                              # %lpad6
.Ltmp9:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB0_474
.LBB0_436:                              # %lpad4
.Ltmp6:                                 # EH_LABEL
	b	.LBB0_460
.LBB0_437:                              # %lpad.i.i534
.Ltmp249:                               # EH_LABEL
	b	.LBB0_449
.LBB0_438:                              # %lpad781
.Ltmp246:                               # EH_LABEL
	b	.LBB0_452
.LBB0_439:                              # %lpad.i.i
.Ltmp180:                               # EH_LABEL
	b	.LBB0_449
.LBB0_440:                              # %lpad640
.Ltmp177:                               # EH_LABEL
	b	.LBB0_452
.LBB0_441:                              # %lpad39
.Ltmp401:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB0_472
.LBB0_442:                              # %lpad8
.Ltmp407:                               # EH_LABEL
.LBB0_443:                              # %ehcleanup862
	move	$s0, $a0
	b	.LBB0_473
.LBB0_444:                              # %lpad57
.Ltmp118:                               # EH_LABEL
	b	.LBB0_465
.LBB0_445:                              # %terminate.lpad.i589
.Ltmp413:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_446:                              # %lpad785
.Ltmp254:                               # EH_LABEL
	b	.LBB0_449
.LBB0_447:                              # %lpad771
.Ltmp243:                               # EH_LABEL
	b	.LBB0_452
.LBB0_448:                              # %lpad644
.Ltmp185:                               # EH_LABEL
.LBB0_449:                              # %lpad594
	ld.d	$a1, $sp, 400
	move	$s0, $a0
	beqz	$a1, .LBB0_453
# %bb.450:                              # %delete.notnull.i482
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_453
.LBB0_451:                              # %lpad630
.Ltmp174:                               # EH_LABEL
.LBB0_452:                              # %ehcleanup824
	move	$s0, $a0
.LBB0_453:                              # %ehcleanup824
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN10CErrorInfoD2Ev)
	jirl	$ra, $ra, 0
.LBB0_454:                              # %ehcleanup832
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN22CUpdateCallbackConsoleD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 440
	st.d	$s7, $sp, 416
	beqz	$s2, .LBB0_456
.LBB0_455:                              # %delete.notnull.i.i558
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_456:                              # %ehcleanup836
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_471
.LBB0_457:                              # %lpad168
.Ltmp106:                               # EH_LABEL
	b	.LBB0_468
.LBB0_458:                              # %lpad99
.Ltmp77:                                # EH_LABEL
	b	.LBB0_465
.LBB0_459:                              # %lpad
.Ltmp410:                               # EH_LABEL
.LBB0_460:                              # %ehcleanup870
	move	$s0, $a0
	addi.d	$a0, $sp, 1128
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_461:                              # %lpad126.loopexit.split-lp
.Ltmp96:                                # EH_LABEL
	b	.LBB0_468
.LBB0_462:                              # %lpad79.loopexit.split-lp
.Ltmp74:                                # EH_LABEL
	b	.LBB0_465
.LBB0_463:                              # %lpad126.loopexit
.Ltmp93:                                # EH_LABEL
	b	.LBB0_468
.LBB0_464:                              # %lpad79.loopexit
.Ltmp71:                                # EH_LABEL
.LBB0_465:                              # %ehcleanup846
	move	$s0, $a0
	b	.LBB0_471
.LBB0_466:                              # %lpad108
.Ltmp88:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_469
.LBB0_467:                              # %lpad137
.Ltmp103:                               # EH_LABEL
.LBB0_468:                              # %ehcleanup172
	move	$s0, $a0
.LBB0_469:                              # %ehcleanup172
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB0_471
# %bb.470:                              # %delete.notnull.i280
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_471:                              # %ehcleanup846
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB0_472:                              # %if.then.i583
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp402:                               # EH_LABEL
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp403:                               # EH_LABEL
.LBB0_473:                              # %ehcleanup862
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN18NCommandLineParser7CParserD1Ev)
	jirl	$ra, $ra, 0
.LBB0_474:                              # %ehcleanup864
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZN26CArchiveCommandLineOptionsD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1128
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_475:                              # %terminate.lpad.i587
.Ltmp404:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z5Main2iPPKc, .Lfunc_end0-_Z5Main2iPPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp409-.Ltmp0                #   Call between .Ltmp0 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin0         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin0         # >> Call Site 2 <<
	.uleb128 .Ltmp2-.Ltmp409                #   Call between .Ltmp409 and .Ltmp2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp410-.Lfunc_begin0         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp407-.Lfunc_begin0         #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp17-.Ltmp14                #   Call between .Ltmp14 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp30-.Ltmp27                #   Call between .Ltmp27 and .Ltmp30
	.uleb128 .Ltmp401-.Lfunc_begin0         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp56-.Ltmp31                #   Call between .Ltmp31 and .Ltmp56
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp57                #   Call between .Ltmp57 and .Ltmp68
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin0          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin0          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp87-.Ltmp80                #   Call between .Ltmp80 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp89-.Ltmp87                #   Call between .Ltmp87 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin0          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp102-.Ltmp97               #   Call between .Ltmp97 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp35-.Ltmp105               #   Call between .Ltmp105 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp40-.Ltmp37                #   Call between .Ltmp37 and .Ltmp40
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin0         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin0         #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin0         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp112-.Ltmp107              #   Call between .Ltmp107 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp47-.Ltmp44                #   Call between .Ltmp44 and .Ltmp47
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp281-.Ltmp274              #   Call between .Ltmp274 and .Ltmp281
	.uleb128 .Ltmp284-.Lfunc_begin0         #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin0         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp294-.Ltmp120              #   Call between .Ltmp120 and .Ltmp294
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin0         #     jumps to .Ltmp296
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp282-.Ltmp295              #   Call between .Ltmp295 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin0         #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin0         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin0         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp128-.Ltmp126              #   Call between .Ltmp126 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin0         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp136-.Ltmp133              #   Call between .Ltmp133 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin0         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp151-.Lfunc_begin0         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp168-.Ltmp161              #   Call between .Ltmp161 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin0         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp173-.Ltmp170              #   Call between .Ltmp170 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin0         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp184-.Ltmp181              #   Call between .Ltmp181 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp199-.Ltmp186              #   Call between .Ltmp186 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin0         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp238-.Ltmp231              #   Call between .Ltmp231 and .Ltmp238
	.uleb128 .Ltmp273-.Lfunc_begin0         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp242-.Ltmp239              #   Call between .Ltmp239 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin0         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin0         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin0         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp253-.Ltmp250              #   Call between .Ltmp250 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin0         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp255-.Ltmp253              #   Call between .Ltmp253 and .Ltmp255
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp272-.Ltmp255              #   Call between .Ltmp255 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin0         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp155-.Ltmp272              #   Call between .Ltmp272 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin0         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp297-.Ltmp159              #   Call between .Ltmp159 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin0         #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin0         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp303-.Ltmp301              #   Call between .Ltmp301 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin0         #     jumps to .Ltmp305
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp309-.Ltmp306              #   Call between .Ltmp306 and .Ltmp309
	.uleb128 .Ltmp314-.Lfunc_begin0         #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp313-.Ltmp310              #   Call between .Ltmp310 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin0         #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin0         #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp350-.Ltmp321              #   Call between .Ltmp321 and .Ltmp350
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin0         #     jumps to .Ltmp353
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp356-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Ltmp379-.Ltmp356              #   Call between .Ltmp356 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp388-.Ltmp381              #   Call between .Ltmp381 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin0         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp393-.Ltmp388              #   Call between .Ltmp388 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin0         #     jumps to .Ltmp395
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp394-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp396-.Ltmp394              #   Call between .Ltmp394 and .Ltmp396
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin0         #     jumps to .Ltmp398
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp411-.Ltmp397              #   Call between .Ltmp397 and .Ltmp411
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin0         #     jumps to .Ltmp413
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp412-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp24-.Ltmp412               #   Call between .Ltmp412 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 91 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 92 <<
	.uleb128 .Ltmp33-.Ltmp25                #   Call between .Ltmp25 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 93 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 94 <<
	.uleb128 .Ltmp399-.Ltmp34               #   Call between .Ltmp34 and .Ltmp399
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin0         # >> Call Site 95 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin0         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 96 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 97 <<
	.uleb128 .Ltmp149-.Ltmp117              #   Call between .Ltmp117 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin0         # >> Call Site 98 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin0         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 99 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin0         # >> Call Site 100 <<
	.uleb128 .Ltmp227-.Ltmp208              #   Call between .Ltmp208 and .Ltmp227
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin0         # >> Call Site 101 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin0         # >> Call Site 102 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin0         # >> Call Site 103 <<
	.uleb128 .Ltmp41-.Ltmp229               #   Call between .Ltmp229 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 104 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 105 <<
	.uleb128 .Ltmp354-.Ltmp42               #   Call between .Ltmp42 and .Ltmp354
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin0         # >> Call Site 106 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin0         # >> Call Site 107 <<
	.uleb128 .Ltmp48-.Ltmp355               #   Call between .Ltmp355 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 108 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin0         # >> Call Site 109 <<
	.uleb128 .Ltmp215-.Ltmp204              #   Call between .Ltmp204 and .Ltmp215
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin0         # >> Call Site 110 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin0         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin0         # >> Call Site 111 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin0         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin0         # >> Call Site 112 <<
	.uleb128 .Ltmp222-.Ltmp220              #   Call between .Ltmp220 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin0         # >> Call Site 113 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin0         # >> Call Site 114 <<
	.uleb128 .Ltmp390-.Ltmp223              #   Call between .Ltmp223 and .Ltmp390
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin0         # >> Call Site 115 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin0         #     jumps to .Ltmp392
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp391-.Lfunc_begin0         # >> Call Site 116 <<
	.uleb128 .Ltmp402-.Ltmp391              #   Call between .Ltmp391 and .Ltmp402
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin0         # >> Call Site 117 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin0         #     jumps to .Ltmp404
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp403-.Lfunc_begin0         # >> Call Site 118 <<
	.uleb128 .Lfunc_end0-.Ltmp403           #   Call between .Ltmp403 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL20ShowCopyrightAndHelpR13CStdOutStreamb
	.type	_ZL20ShowCopyrightAndHelpR13CStdOutStreamb,@function
_ZL20ShowCopyrightAndHelpR13CStdOutStreamb: # @_ZL20ShowCopyrightAndHelpR13CStdOutStreamb
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_Z12my_getlocalev)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_use_utf16_conversion)
	ld.d	$a0, $a0, %got_pc_lo12(global_use_utf16_conversion)
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN8NWindows7NSystem21GetNumberOfProcessorsEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	slt	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	masknez	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(.L.str.32)
	addi.d	$a3, $a3, %pc_lo12(.L.str.32)
	maskeqz	$a0, $a3, $a0
	or	$s1, $a0, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEi)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_2
# %bb.1:                                # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN13CStdOutStreamlsEPKc)
	jr	$t8
.LBB1_2:                                # %if.end19
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	_ZL20ShowCopyrightAndHelpR13CStdOutStreamb, .Lfunc_end1-_ZL20ShowCopyrightAndHelpR13CStdOutStreamb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,@function
_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii: # @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB2_7
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB2_7
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB2_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB2_2
# %bb.6:                                # %delete.notnull.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_7:                                # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end2:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end2-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CArchiveCommandLineOptionsC2Ev,"axG",@progbits,_ZN26CArchiveCommandLineOptionsC2Ev,comdat
	.weak	_ZN26CArchiveCommandLineOptionsC2Ev # -- Begin function _ZN26CArchiveCommandLineOptionsC2Ev
	.p2align	2
	.type	_ZN26CArchiveCommandLineOptionsC2Ev,@function
_ZN26CArchiveCommandLineOptionsC2Ev:    # @_ZN26CArchiveCommandLineOptionsC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	st.h	$zero, $a0, 5
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 24
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	st.d	$a0, $fp, 16
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 56
.Ltmp414:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	st.d	$a0, $fp, 56
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 68
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 80
.Ltmp417:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.2:                                # %invoke.cont3
	st.d	$a0, $fp, 80
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 92
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 104
.Ltmp420:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.3:                                # %invoke.cont11
	st.d	$a0, $fp, 104
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 116
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 136
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 152
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a1, $fp, 128
	vst	$vr0, $fp, 168
	st.d	$a0, $fp, 184
	st.d	$a1, $fp, 160
	vst	$vr0, $fp, 200
	st.d	$a0, $fp, 216
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 192
	addi.d	$s1, $fp, 224
.Ltmp423:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN14CUpdateOptionsC2Ev)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.4:                                # %invoke.cont13
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 544
.Ltmp426:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.5:                                # %invoke.cont15
	move	$s2, $a0
	st.d	$a0, $fp, 544
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 556
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 576
.Ltmp429:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.6:                                # %invoke.cont17
	st.d	$a0, $fp, 576
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 588
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB3_7:                                # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp431:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_8:                                # %lpad14
.Ltmp428:                               # EH_LABEL
	move	$s0, $a0
.LBB3_9:                                # %ehcleanup
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN14CUpdateOptionsD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_11
.LBB3_10:                               # %lpad12
.Ltmp425:                               # EH_LABEL
	move	$s0, $a0
.LBB3_11:                               # %ehcleanup18
	addi.d	$s3, $fp, 104
	addi.d	$s1, $fp, 128
	addi.d	$s2, $fp, 160
	addi.d	$a0, $fp, 192
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CPropertyED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB3_15
# %bb.12:                               # %ehcleanup22
	addi.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB3_17
.LBB3_13:                               # %ehcleanup23
	addi.d	$a0, $fp, 56
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB3_19
.LBB3_14:                               # %ehcleanup24
	addi.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(_ZN9NWildcard7CCensorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %delete.notnull.i27
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_13
	b	.LBB3_17
.LBB3_16:                               # %lpad4
.Ltmp422:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 80
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_13
.LBB3_17:                               # %delete.notnull.i30
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 56
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_14
	b	.LBB3_19
.LBB3_18:                               # %lpad2
.Ltmp419:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 56
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_14
.LBB3_19:                               # %delete.notnull.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(_ZN9NWildcard7CCensorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_20:                               # %lpad
.Ltmp416:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(_ZN9NWildcard7CCensorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN26CArchiveCommandLineOptionsC2Ev, .Lfunc_end3-_ZN26CArchiveCommandLineOptionsC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN26CArchiveCommandLineOptionsC2Ev,"aG",@progbits,_ZN26CArchiveCommandLineOptionsC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp414-.Lfunc_begin1         # >> Call Site 1 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin1         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin1         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin1         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin1         #     jumps to .Ltmp425
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin1         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin1         #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp430           #   Call between .Ltmp430 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLERKS0_,"axG",@progbits,_ZN11CStringBaseIwEpLERKS0_,comdat
	.weak	_ZN11CStringBaseIwEpLERKS0_     # -- Begin function _ZN11CStringBaseIwEpLERKS0_
	.p2align	2
	.type	_ZN11CStringBaseIwEpLERKS0_,@function
_ZN11CStringBaseIwEpLERKS0_:            # @_ZN11CStringBaseIwEpLERKS0_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a1
	ld.w	$s1, $a0, 8
	ld.w	$s4, $a0, 12
	ld.w	$a1, $a1, 8
	nor	$a2, $s1, $zero
	add.w	$a2, $s4, $a2
	bge	$a2, $a1, .LBB4_21
# %bb.1:                                # %if.end.i
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slt	$a4, $a4, $a1
	sub.d	$a1, $a1, $a2
	masknez	$a2, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	add.w	$a1, $a1, $s4
	addi.w	$s2, $a1, 1
	beq	$s2, $s4, .LBB4_21
# %bb.2:                                # %if.end.i.i
	move	$s3, $a0
	slti	$a0, $a1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$s4, $a2, .LBB4_8
# %bb.3:                                # %for.cond.preheader.i.i
	ld.d	$a0, $s3, 0
	blt	$s1, $a2, .LBB4_9
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB4_17
# %bb.5:                                # %iter.check
	sub.d	$a2, $s0, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB4_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s1, $a1, .LBB4_10
# %bb.7:
	move	$a1, $zero
	b	.LBB4_14
.LBB4_8:
	move	$a1, $s3
	b	.LBB4_20
.LBB4_9:                                # %for.cond.cleanup.i.i
	move	$a1, $s3
	bnez	$a0, .LBB4_19
	b	.LBB4_20
.LBB4_10:                               # %vector.ph
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s0, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB4_11
# %bb.12:                               # %middle.block
	beq	$a1, $s1, .LBB4_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a2, $s1, 12
	beqz	$a2, .LBB4_17
.LBB4_14:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s0, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB4_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB4_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a1, $s1, .LBB4_19
.LBB4_17:                               # %for.body.i.i.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $s0, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB4_18:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_18
.LBB4_19:                               # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	ld.w	$s1, $s3, 8
.LBB4_20:                               # %if.end9.i.i
	move	$a0, $a1
	st.d	$s0, $a1, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB4_21:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB4_22:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB4_22
# %bb.23:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $fp, 8
	add.d	$a1, $a1, $s1
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end4:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end4-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEPKw,"axG",@progbits,_ZN11CStringBaseIwEpLEPKw,comdat
	.weak	_ZN11CStringBaseIwEpLEPKw       # -- Begin function _ZN11CStringBaseIwEpLEPKw
	.p2align	2
	.type	_ZN11CStringBaseIwEpLEPKw,@function
_ZN11CStringBaseIwEpLEPKw:              # @_ZN11CStringBaseIwEpLEPKw
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	nor	$a1, $s3, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB5_20
# %bb.1:                                # %if.end.i
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a0, $a3, $a0
	sub.d	$a1, $s1, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB5_20
# %bb.2:                                # %if.end.i.i
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s5, $a1, .LBB5_19
# %bb.3:                                # %for.cond.preheader.i.i
	ld.d	$a0, $fp, 0
	blt	$s3, $a1, .LBB5_8
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s3, $a2, .LBB5_16
# %bb.5:                                # %iter.check
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB5_16
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB5_9
# %bb.7:
	move	$a1, $zero
	b	.LBB5_13
.LBB5_8:                                # %for.cond.cleanup.i.i
	bnez	$a0, .LBB5_18
	b	.LBB5_19
.LBB5_9:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $s2, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB5_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_10
# %bb.11:                               # %middle.block
	beq	$a1, $s3, .LBB5_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a2, $s3, 12
	beqz	$a2, .LBB5_16
.LBB5_13:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $s2, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB5_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_14
# %bb.15:                               # %vec.epilog.middle.block
	beq	$a1, $s3, .LBB5_18
.LBB5_16:                               # %for.body.i.i.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB5_17:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB5_17
.LBB5_18:                               # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB5_19:                               # %if.end9.i.i
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
.LBB5_20:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s3, $a0, 2
	.p2align	4, , 16
.LBB5_21:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB5_21
# %bb.22:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	add.d	$a0, $s3, $s1
	st.w	$a0, $fp, 8
	move	$a0, $fp
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
.Lfunc_end5:
	.size	_ZN11CStringBaseIwEpLEPKw, .Lfunc_end5-_ZN11CStringBaseIwEpLEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEw,"axG",@progbits,_ZN11CStringBaseIwEpLEw,comdat
	.weak	_ZN11CStringBaseIwEpLEw         # -- Begin function _ZN11CStringBaseIwEpLEw
	.p2align	2
	.type	_ZN11CStringBaseIwEpLEw,@function
_ZN11CStringBaseIwEpLEw:                # @_ZN11CStringBaseIwEpLEw
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	ld.w	$s0, $a0, 8
	ld.w	$s4, $a0, 12
	nor	$a2, $s0, $zero
	add.w	$a2, $s4, $a2
	bgtz	$a2, .LBB6_21
# %bb.1:                                # %if.end.i
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slti	$a4, $a4, 1
	ori	$s5, $zero, 1
	sub.d	$a2, $s5, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	add.w	$a2, $a2, $s4
	addi.w	$s1, $a2, 1
	beq	$s1, $s4, .LBB6_21
# %bb.2:                                # %if.end.i.i
	move	$s2, $a1
	move	$s3, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blt	$s4, $s5, .LBB6_8
# %bb.3:                                # %for.cond.preheader.i.i
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB6_9
# %bb.4:                                # %iter.check
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s0, $a2, .LBB6_17
# %bb.5:                                # %iter.check
	sub.d	$a2, $fp, $a0
	ori	$a3, $zero, 63
	bgeu	$a3, $a2, .LBB6_17
# %bb.6:                                # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$s0, $a1, .LBB6_10
# %bb.7:
	move	$a1, $zero
	b	.LBB6_14
.LBB6_8:
	move	$a2, $s3
	move	$a1, $s2
	b	.LBB6_20
.LBB6_9:                                # %for.cond.cleanup.i.i
	move	$a2, $s3
	move	$a1, $s2
	bnez	$a0, .LBB6_19
	b	.LBB6_20
.LBB6_10:                               # %vector.ph
	bstrpick.d	$a1, $s0, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $fp, 32
	addi.d	$a3, $a0, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB6_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB6_11
# %bb.12:                               # %middle.block
	beq	$a1, $s0, .LBB6_19
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a2, $s0, 12
	beqz	$a2, .LBB6_17
.LBB6_14:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s0, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a2, $a4, $a1
	alsl.d	$a3, $a4, $fp, 2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB6_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB6_15
# %bb.16:                               # %vec.epilog.middle.block
	beq	$a1, $s0, .LBB6_19
.LBB6_17:                               # %for.body.i.i.preheader
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $fp, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB6_18:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_18
.LBB6_19:                               # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a2, $s3
	ld.w	$s0, $s3, 8
.LBB6_20:                               # %if.end9.i.i
	move	$a0, $a2
	st.d	$fp, $a2, 0
	slli.d	$a2, $s0, 2
	stx.w	$zero, $fp, $a2
	st.w	$s1, $a0, 12
.LBB6_21:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s0, 2
	stx.w	$a1, $a2, $a3
	addi.w	$a1, $s0, 1
	st.w	$a1, $a0, 8
	slli.d	$a1, $a1, 2
	stx.w	$zero, $a2, $a1
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
.Lfunc_end6:
	.size	_ZN11CStringBaseIwEpLEw, .Lfunc_end6-_ZN11CStringBaseIwEpLEw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15CExtractOptionsD2Ev,"axG",@progbits,_ZN15CExtractOptionsD2Ev,comdat
	.weak	_ZN15CExtractOptionsD2Ev        # -- Begin function _ZN15CExtractOptionsD2Ev
	.p2align	2
	.type	_ZN15CExtractOptionsD2Ev,@function
_ZN15CExtractOptionsD2Ev:               # @_ZN15CExtractOptionsD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	addi.d	$s0, $a0, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 32
.Ltmp432:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CPropertyED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB7_3
# %bb.2:                                # %delete.notnull.i
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB7_3:                                # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_4:                                # %terminate.lpad.i
.Ltmp434:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN15CExtractOptionsD2Ev, .Lfunc_end7-_ZN15CExtractOptionsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN15CExtractOptionsD2Ev,"aG",@progbits,_ZN15CExtractOptionsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp432-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin2         #     jumps to .Ltmp434
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp433-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp433           #   Call between .Ltmp433 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK12CArchivePath12GetFinalPathEv,"axG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.weak	_ZNK12CArchivePath12GetFinalPathEv # -- Begin function _ZNK12CArchivePath12GetFinalPathEv
	.p2align	2
	.type	_ZNK12CArchivePath12GetFinalPathEv,@function
_ZNK12CArchivePath12GetFinalPathEv:     # @_ZNK12CArchivePath12GetFinalPathEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a1
	ld.w	$s0, $a1, 24
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s2, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s2, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB8_2
# %bb.1:
	move	$a0, $zero
	b	.LBB8_3
.LBB8_2:                                # %if.end9.i.i.i.i
	addi.w	$a0, $s2, 0
	slti	$a1, $s0, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB8_3:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
	ld.d	$a2, $s1, 16
	addi.d	$a1, $s1, 32
	.p2align	4, , 16
.LBB8_4:                                # %while.cond.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB8_4
# %bb.5:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
	st.w	$s0, $fp, 8
.Ltmp435:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.6:                                # %_ZNK12CArchivePath17GetPathWithoutExtEv.exit
	ld.w	$a0, $s1, 56
	beqz	$a0, .LBB8_16
# %bb.7:                                # %if.then
.Ltmp438:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.8:                                # %if.end9.i.i.i
	move	$s0, $a0
	ori	$a0, $zero, 46
	st.d	$a0, $s0, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
.Ltmp441:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp442:                               # EH_LABEL
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	move	$a2, $zero
	addi.d	$a1, $s1, 48
	st.d	$a0, $sp, 40
	st.w	$zero, $a0, 0
	ori	$a3, $zero, 2
	st.w	$a3, $sp, 52
	.p2align	4, , 16
.LBB8_10:                               # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s0, $a2
	stx.w	$a3, $a0, $a2
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB8_10
# %bb.11:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 48
.Ltmp444:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.12:                               # %invoke.cont7
.Ltmp447:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.13:                               # %invoke.cont9
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB8_15
# %bb.14:                               # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_15:                               # %_ZN11CStringBaseIwED2Ev.exit9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_16:                               # %nrvo.skipdtor
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB8_17:                               # %lpad8
.Ltmp449:                               # EH_LABEL
	b	.LBB8_19
.LBB8_18:                               # %lpad.i
.Ltmp446:                               # EH_LABEL
.LBB8_19:                               # %lpad8
	ld.d	$a1, $sp, 40
	move	$s1, $a0
	beqz	$a1, .LBB8_22
# %bb.20:                               # %delete.notnull.i11
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB8_22
.LBB8_21:                               # %lpad6
.Ltmp443:                               # EH_LABEL
	move	$s1, $a0
.LBB8_22:                               # %_ZN11CStringBaseIwED2Ev.exit15
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB8_24
.LBB8_23:                               # %lpad3
.Ltmp440:                               # EH_LABEL
	move	$s1, $a0
.LBB8_24:                               # %ehcleanup11
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB8_27
	b	.LBB8_28
.LBB8_25:                               # %lpad.i.i
.Ltmp437:                               # EH_LABEL
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	beqz	$a1, .LBB8_28
# %bb.26:                               # %delete.notnull.i.i.i
	move	$a0, $a1
.LBB8_27:                               # %common.resume
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_28:                               # %common.resume
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZNK12CArchivePath12GetFinalPathEv, .Lfunc_end8-_ZNK12CArchivePath12GetFinalPathEv
	.cfi_endproc
	.section	.gcc_except_table._ZNK12CArchivePath12GetFinalPathEv,"aG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp435-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp435
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin3         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin3         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin3         #     jumps to .Ltmp443
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin3         #     jumps to .Ltmp446
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin3         #     jumps to .Ltmp449
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Lfunc_end8-.Ltmp448           #   Call between .Ltmp448 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows6NError16MyFormatMessageWEj,"axG",@progbits,_ZN8NWindows6NError16MyFormatMessageWEj,comdat
	.weak	_ZN8NWindows6NError16MyFormatMessageWEj # -- Begin function _ZN8NWindows6NError16MyFormatMessageWEj
	.p2align	5
	.type	_ZN8NWindows6NError16MyFormatMessageWEj,@function
_ZN8NWindows6NError16MyFormatMessageWEj: # @_ZN8NWindows6NError16MyFormatMessageWEj
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
.Ltmp450:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.1:                                # %_ZN8NWindows6NError15MyFormatMessageEj.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:                                # %lpad.i
.Ltmp452:                               # EH_LABEL
	ld.d	$a1, $fp, 0
	move	$fp, $a0
	beqz	$a1, .LBB9_4
# %bb.3:                                # %delete.notnull.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %_ZN11CStringBaseIwED2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN8NWindows6NError16MyFormatMessageWEj, .Lfunc_end9-_ZN8NWindows6NError16MyFormatMessageWEj
	.cfi_endproc
	.section	.gcc_except_table._ZN8NWindows6NError16MyFormatMessageWEj,"aG",@progbits,_ZN8NWindows6NError16MyFormatMessageWEj,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp450-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp450
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin4         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp451           #   Call between .Ltmp451 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10CErrorInfoD2Ev,"axG",@progbits,_ZN10CErrorInfoD2Ev,comdat
	.weak	_ZN10CErrorInfoD2Ev             # -- Begin function _ZN10CErrorInfoD2Ev
	.p2align	2
	.type	_ZN10CErrorInfoD2Ev,@function
_ZN10CErrorInfoD2Ev:                    # @_ZN10CErrorInfoD2Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB10_2
# %bb.1:                                # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB10_4
# %bb.3:                                # %delete.notnull.i2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_4:                               # %_ZN11CStringBaseIwED2Ev.exit3
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB10_6
# %bb.5:                                # %delete.notnull.i5
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB10_6:                               # %_ZN11CStringBaseIwED2Ev.exit6
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	_ZN10CErrorInfoD2Ev, .Lfunc_end10-_ZN10CErrorInfoD2Ev
                                        # -- End function
	.section	.text._ZN22CUpdateCallbackConsoleD2Ev,"axG",@progbits,_ZN22CUpdateCallbackConsoleD2Ev,comdat
	.weak	_ZN22CUpdateCallbackConsoleD2Ev # -- Begin function _ZN22CUpdateCallbackConsoleD2Ev
	.p2align	2
	.type	_ZN22CUpdateCallbackConsoleD2Ev,@function
_ZN22CUpdateCallbackConsoleD2Ev:        # @_ZN22CUpdateCallbackConsoleD2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	pcalau12i	$a1, %got_pc_hi20(_ZTV22CUpdateCallbackConsole)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV22CUpdateCallbackConsole)
	move	$fp, $a0
	addi.d	$a0, $a1, 16
	st.d	$a0, $fp, 0
.Ltmp453:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN22CUpdateCallbackConsole8FinilizeEv)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	addi.d	$a0, $fp, 200
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 168
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$s1, $fp, 168
.Ltmp456:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 104
	st.d	$s1, $fp, 104
.Ltmp459:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB11_5
# %bb.4:                                # %delete.notnull.i
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB11_5:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_6:                               # %terminate.lpad.i1
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_7:                               # %terminate.lpad.i
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_8:                               # %terminate.lpad
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN22CUpdateCallbackConsoleD2Ev, .Lfunc_end11-_ZN22CUpdateCallbackConsoleD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22CUpdateCallbackConsoleD2Ev,"aG",@progbits,_ZN22CUpdateCallbackConsoleD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp453-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin5         #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp454-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp456-.Ltmp454              #   Call between .Ltmp454 and .Ltmp456
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin5         #     jumps to .Ltmp458
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp457-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp459-.Ltmp457              #   Call between .Ltmp457 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin5         #     jumps to .Ltmp461
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp460-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Lfunc_end11-.Ltmp460          #   Call between .Ltmp460 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZL16PrintHelpAndExitR13CStdOutStream
	.type	_ZL16PrintHelpAndExitR13CStdOutStream,@function
_ZL16PrintHelpAndExitR13CStdOutStream:  # @_ZL16PrintHelpAndExitR13CStdOutStream
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZL16PrintHelpAndExitR13CStdOutStream, .Lfunc_end12-_ZL16PrintHelpAndExitR13CStdOutStream
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CArchiveCommandLineOptionsD2Ev,"axG",@progbits,_ZN26CArchiveCommandLineOptionsD2Ev,comdat
	.weak	_ZN26CArchiveCommandLineOptionsD2Ev # -- Begin function _ZN26CArchiveCommandLineOptionsD2Ev
	.p2align	2
	.type	_ZN26CArchiveCommandLineOptionsD2Ev,@function
_ZN26CArchiveCommandLineOptionsD2Ev:    # @_ZN26CArchiveCommandLineOptionsD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 576
	beqz	$a0, .LBB13_2
# %bb.1:                                # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 544
	beqz	$a0, .LBB13_4
# %bb.3:                                # %delete.notnull.i2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %_ZN11CStringBaseIwED2Ev.exit3
	addi.d	$a0, $fp, 224
	pcaddu18i	$ra, %call36(_ZN14CUpdateOptionsD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 192
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 192
.Ltmp462:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.5:                                # %_ZN13CObjectVectorI9CPropertyED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 160
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$s1, $fp, 160
.Ltmp465:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.6:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 128
	st.d	$s1, $fp, 128
.Ltmp468:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.7:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB13_9
# %bb.8:                                # %delete.notnull.i8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_9:                               # %_ZN11CStringBaseIwED2Ev.exit9
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB13_11
# %bb.10:                               # %delete.notnull.i11
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_11:                              # %_ZN11CStringBaseIwED2Ev.exit12
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB13_13
# %bb.12:                               # %delete.notnull.i14
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB13_13:                              # %_ZN11CStringBaseIwED2Ev.exit15
	addi.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	st.d	$a0, $fp, 16
.Ltmp471:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.14:                               # %_ZN9NWildcard7CCensorD2Ev.exit
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB13_15:                              # %terminate.lpad.i.i
.Ltmp473:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_16:                              # %terminate.lpad.i5
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_17:                              # %terminate.lpad.i4
.Ltmp467:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_18:                              # %terminate.lpad.i
.Ltmp464:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN26CArchiveCommandLineOptionsD2Ev, .Lfunc_end13-_ZN26CArchiveCommandLineOptionsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN26CArchiveCommandLineOptionsD2Ev,"aG",@progbits,_ZN26CArchiveCommandLineOptionsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp462-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp462
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin6         #     jumps to .Ltmp464
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp463-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp465-.Ltmp463              #   Call between .Ltmp463 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin6         #     jumps to .Ltmp467
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp466-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp468-.Ltmp466              #   Call between .Ltmp466 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin6         #     jumps to .Ltmp470
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp469-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp471-.Ltmp469              #   Call between .Ltmp469 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin6         #     jumps to .Ltmp473
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp472-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Lfunc_end13-.Ltmp472          #   Call between .Ltmp472 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp474:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB14_2:                               # %terminate.lpad
.Ltmp476:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end14-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp474-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp476-.Lfunc_begin7         #     jumps to .Ltmp476
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp475-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Lfunc_end14-.Ltmp475          #   Call between .Ltmp475 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN14CUpdateOptionsC2Ev,"axG",@progbits,_ZN14CUpdateOptionsC2Ev,comdat
	.weak	_ZN14CUpdateOptionsC2Ev         # -- Begin function _ZN14CUpdateOptionsC2Ev
	.p2align	2
	.type	_ZN14CUpdateOptionsC2Ev,@function
_ZN14CUpdateOptionsC2Ev:                # @_ZN14CUpdateOptionsC2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %invoke.cont
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 32
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a1, $fp, 8
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 48
	st.d	$a0, $fp, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	st.d	$a0, $fp, 40
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 72
	addi.d	$s0, $fp, 80
.Ltmp477:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12CArchivePathC2Ev)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.1:                                # %invoke.cont3
	st.b	$zero, $fp, 200
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 208
.Ltmp480:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.2:                                # %invoke.cont5
	st.d	$a0, $fp, 208
	st.w	$zero, $a0, 0
	ori	$s1, $zero, 4
	st.w	$s1, $fp, 220
	st.h	$zero, $fp, 224
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 232
.Ltmp483:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.3:                                # %invoke.cont7
	move	$s2, $a0
	st.d	$a0, $fp, 232
	st.w	$zero, $a0, 0
	st.w	$s1, $fp, 244
	st.h	$zero, $fp, 248
	st.b	$zero, $fp, 250
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 256
.Ltmp486:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.4:                                # %invoke.cont9
	move	$s3, $a0
	addi.d	$s2, $fp, 232
	st.d	$a0, $fp, 256
	st.w	$zero, $a0, 0
	ori	$s1, $zero, 4
	st.w	$s1, $fp, 268
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 272
.Ltmp489:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.5:                                # %invoke.cont11
	st.d	$a0, $fp, 272
	st.w	$zero, $a0, 0
	st.w	$s1, $fp, 284
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 296
	ori	$a0, $zero, 8
	st.d	$a0, $fp, 312
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $fp, 288
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB15_6:                               # %ehcleanup14
.Ltmp491:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB15_8
	b	.LBB15_10
.LBB15_7:                               # %ehcleanup14.thread
.Ltmp488:                               # EH_LABEL
	move	$s1, $a0
.LBB15_8:                               # %delete.notnull.i17
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_10
.LBB15_9:                               # %lpad6
.Ltmp485:                               # EH_LABEL
	move	$s1, $a0
.LBB15_10:                              # %ehcleanup15
	addi.d	$a0, $fp, 208
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB15_13
# %bb.11:                               # %delete.notnull.i20
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_13
.LBB15_12:                              # %lpad4
.Ltmp482:                               # EH_LABEL
	move	$s1, $a0
.LBB15_13:                              # %ehcleanup16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12CArchivePathD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB15_15
.LBB15_14:                              # %lpad2
.Ltmp479:                               # EH_LABEL
	move	$s1, $a0
.LBB15_15:                              # %ehcleanup17
	addi.d	$a0, $fp, 40
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN22CCompressionMethodModeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN14CUpdateOptionsC2Ev, .Lfunc_end15-_ZN14CUpdateOptionsC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN14CUpdateOptionsC2Ev,"aG",@progbits,_ZN14CUpdateOptionsC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp477-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin8         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin8         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin8         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin8         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin8         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Lfunc_end15-.Ltmp490          #   Call between .Ltmp490 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN14CUpdateOptionsD2Ev,"axG",@progbits,_ZN14CUpdateOptionsD2Ev,comdat
	.weak	_ZN14CUpdateOptionsD2Ev         # -- Begin function _ZN14CUpdateOptionsD2Ev
	.p2align	2
	.type	_ZN14CUpdateOptionsD2Ev,@function
_ZN14CUpdateOptionsD2Ev:                # @_ZN14CUpdateOptionsD2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	addi.d	$a0, $a0, 288
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 272
	beqz	$a0, .LBB16_2
# %bb.1:                                # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 256
	beqz	$a0, .LBB16_4
# %bb.3:                                # %delete.notnull.i2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_ZN11CStringBaseIwED2Ev.exit3
	ld.d	$a0, $fp, 232
	beqz	$a0, .LBB16_6
# %bb.5:                                # %delete.notnull.i5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZN11CStringBaseIwED2Ev.exit6
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB16_8
# %bb.7:                                # %delete.notnull.i8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZN11CStringBaseIwED2Ev.exit9
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB16_10
# %bb.9:                                # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %_ZN11CStringBaseIwED2Ev.exit.i
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB16_12
# %bb.11:                               # %delete.notnull.i2.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_12:                              # %_ZN11CStringBaseIwED2Ev.exit3.i
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB16_14
# %bb.13:                               # %delete.notnull.i5.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_14:                              # %_ZN11CStringBaseIwED2Ev.exit6.i
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB16_16
# %bb.15:                               # %delete.notnull.i8.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_16:                              # %_ZN11CStringBaseIwED2Ev.exit9.i
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB16_18
# %bb.17:                               # %delete.notnull.i11.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_18:                              # %_ZN11CStringBaseIwED2Ev.exit12.i
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB16_20
# %bb.19:                               # %delete.notnull.i14.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_20:                              # %_ZN11CStringBaseIwED2Ev.exit15.i
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB16_22
# %bb.21:                               # %delete.notnull.i17.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB16_22:                              # %_ZN12CArchivePathD2Ev.exit
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	st.d	$a0, $fp, 40
.Ltmp492:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.23:                               # %_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 8
.Ltmp495:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.24:                               # %_ZN22CCompressionMethodModeD2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB16_25:                              # %terminate.lpad.i.i
.Ltmp497:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_26:                              # %terminate.lpad.i
.Ltmp494:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN14CUpdateOptionsD2Ev, .Lfunc_end16-_ZN14CUpdateOptionsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN14CUpdateOptionsD2Ev,"aG",@progbits,_ZN14CUpdateOptionsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp492-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp492
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin9         #     jumps to .Ltmp494
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp493-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp495-.Ltmp493              #   Call between .Ltmp493 and .Ltmp495
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin9         #     jumps to .Ltmp497
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp496-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Lfunc_end16-.Ltmp496          #   Call between .Ltmp496 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CPropertyED2Ev,"axG",@progbits,_ZN13CObjectVectorI9CPropertyED2Ev,comdat
	.weak	_ZN13CObjectVectorI9CPropertyED2Ev # -- Begin function _ZN13CObjectVectorI9CPropertyED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI9CPropertyED2Ev,@function
_ZN13CObjectVectorI9CPropertyED2Ev:     # @_ZN13CObjectVectorI9CPropertyED2Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 0
.Ltmp498:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB17_2:                               # %terminate.lpad
.Ltmp500:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN13CObjectVectorI9CPropertyED2Ev, .Lfunc_end17-_ZN13CObjectVectorI9CPropertyED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CPropertyED2Ev,"aG",@progbits,_ZN13CObjectVectorI9CPropertyED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp498-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin10        #     jumps to .Ltmp500
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp499-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp499          #   Call between .Ltmp499 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NWildcard7CCensorD2Ev,"axG",@progbits,_ZN9NWildcard7CCensorD2Ev,comdat
	.weak	_ZN9NWildcard7CCensorD2Ev       # -- Begin function _ZN9NWildcard7CCensorD2Ev
	.p2align	2
	.type	_ZN9NWildcard7CCensorD2Ev,@function
_ZN9NWildcard7CCensorD2Ev:              # @_ZN9NWildcard7CCensorD2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	st.d	$a0, $fp, 0
.Ltmp501:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB18_2:                               # %terminate.lpad.i
.Ltmp503:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN9NWildcard7CCensorD2Ev, .Lfunc_end18-_ZN9NWildcard7CCensorD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NWildcard7CCensorD2Ev,"aG",@progbits,_ZN9NWildcard7CCensorD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp501-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin11        #     jumps to .Ltmp503
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp502-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end18-.Ltmp502          #   Call between .Ltmp502 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CPairEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard5CPairEED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev,@function
_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev: # @_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	st.d	$a0, $fp, 0
.Ltmp504:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB19_2:                               # %terminate.lpad
.Ltmp506:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev, .Lfunc_end19-_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard5CPairEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp504-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin12        #     jumps to .Ltmp506
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp505-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Lfunc_end19-.Ltmp505          #   Call between .Ltmp505 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CPairEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard5CPairEED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev,@function
_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev: # @_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CPairEE+16)
	st.d	$a0, $fp, 0
.Ltmp507:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB20_2:                               # %terminate.lpad.i
.Ltmp509:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev, .Lfunc_end20-_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard5CPairEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp507-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin13        #     jumps to .Ltmp509
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp508-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp508          #   Call between .Ltmp508 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii,@function
_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii: # @_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB21_7
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               # %_ZN9NWildcard5CPairD2Ev.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	ori	$a1, $zero, 136
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_3:                               # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB21_7
.LBB21_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB21_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(_ZN9NWildcard11CCensorNodeD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB21_2
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB21_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB21_2
.LBB21_7:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end21:
	.size	_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii, .Lfunc_end21-_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	__clang_call_terminate, .Lfunc_end22-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN9NWildcard11CCensorNodeD2Ev,"axG",@progbits,_ZN9NWildcard11CCensorNodeD2Ev,comdat
	.weak	_ZN9NWildcard11CCensorNodeD2Ev  # -- Begin function _ZN9NWildcard11CCensorNodeD2Ev
	.p2align	2
	.type	_ZN9NWildcard11CCensorNodeD2Ev,@function
_ZN9NWildcard11CCensorNodeD2Ev:         # @_ZN9NWildcard11CCensorNodeD2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$s0, $a0, 88
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	addi.d	$s1, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	st.d	$s1, $fp, 88
.Ltmp510:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 56
	st.d	$s1, $fp, 56
.Ltmp513:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev.exit2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 24
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	st.d	$a0, $fp, 24
.Ltmp516:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB23_5
# %bb.4:                                # %delete.notnull.i
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB23_5:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB23_6:                               # %terminate.lpad.i3
.Ltmp518:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_7:                               # %terminate.lpad.i1
.Ltmp515:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_8:                               # %terminate.lpad.i
.Ltmp512:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN9NWildcard11CCensorNodeD2Ev, .Lfunc_end23-_ZN9NWildcard11CCensorNodeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NWildcard11CCensorNodeD2Ev,"aG",@progbits,_ZN9NWildcard11CCensorNodeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp510-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp511-.Ltmp510              #   Call between .Ltmp510 and .Ltmp511
	.uleb128 .Ltmp512-.Lfunc_begin14        #     jumps to .Ltmp512
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp511-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp513-.Ltmp511              #   Call between .Ltmp511 and .Ltmp513
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin14        #     jumps to .Ltmp515
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp514-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp516-.Ltmp514              #   Call between .Ltmp514 and .Ltmp516
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.uleb128 .Ltmp518-.Lfunc_begin14        #     jumps to .Ltmp518
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp517-.Lfunc_begin14        # >> Call Site 6 <<
	.uleb128 .Lfunc_end23-.Ltmp517          #   Call between .Ltmp517 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CItemEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard5CItemEED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev,@function
_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev: # @_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp519:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB24_2:                               # %terminate.lpad
.Ltmp521:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev, .Lfunc_end24-_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard5CItemEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp519-.Lfunc_begin15        # >> Call Site 1 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin15        #     jumps to .Ltmp521
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp520-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Lfunc_end24-.Ltmp520          #   Call between .Ltmp520 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev,@function
_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev: # @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	st.d	$a0, $fp, 0
.Ltmp522:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB25_2:                               # %terminate.lpad
.Ltmp524:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev, .Lfunc_end25-_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp522-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin16        #     jumps to .Ltmp524
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp523-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Lfunc_end25-.Ltmp523          #   Call between .Ltmp523 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CItemEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard5CItemEED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev,@function
_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev: # @_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard5CItemEE+16)
	st.d	$a0, $fp, 0
.Ltmp525:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB26_2:                               # %terminate.lpad.i
.Ltmp527:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev, .Lfunc_end26-_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard5CItemEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp525-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin17        #     jumps to .Ltmp527
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp526-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp526          #   Call between .Ltmp526 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii,@function
_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii: # @_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB27_6
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$s5, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	b	.LBB27_3
	.p2align	4, , 16
.LBB27_2:                               # %for.inc
                                        #   in Loop: Header=BB27_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB27_6
.LBB27_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB27_2
# %bb.4:                                # %delete.notnull
                                        #   in Loop: Header=BB27_3 Depth=1
	st.d	$s5, $s2, 0
.Ltmp528:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.5:                                # %_ZN9NWildcard5CItemD2Ev.exit
                                        #   in Loop: Header=BB27_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB27_2
.LBB27_6:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB27_7:                               # %terminate.lpad.i.i
.Ltmp530:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii, .Lfunc_end27-_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp528-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin18        #     jumps to .Ltmp530
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp529-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end27-.Ltmp529          #   Call between .Ltmp529 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev # -- Begin function _ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev,@function
_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev: # @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE+16)
	st.d	$a0, $fp, 0
.Ltmp531:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB28_2:                               # %terminate.lpad.i
.Ltmp533:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev, .Lfunc_end28-_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp531-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin19        #     jumps to .Ltmp533
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp532-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end28-.Ltmp532          #   Call between .Ltmp532 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii,@function
_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii: # @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB29_5
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               # %for.inc
                                        #   in Loop: Header=BB29_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB29_5
.LBB29_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB29_2
# %bb.4:                                # %delete.notnull
                                        #   in Loop: Header=BB29_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9NWildcard11CCensorNodeD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 120
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB29_2
.LBB29_5:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end29:
	.size	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii, .Lfunc_end29-_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CPropertyED0Ev,"axG",@progbits,_ZN13CObjectVectorI9CPropertyED0Ev,comdat
	.weak	_ZN13CObjectVectorI9CPropertyED0Ev # -- Begin function _ZN13CObjectVectorI9CPropertyED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI9CPropertyED0Ev,@function
_ZN13CObjectVectorI9CPropertyED0Ev:     # @_ZN13CObjectVectorI9CPropertyED0Ev
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a0, $fp, 0
.Ltmp534:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CPropertyED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB30_2:                               # %terminate.lpad.i
.Ltmp536:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN13CObjectVectorI9CPropertyED0Ev, .Lfunc_end30-_ZN13CObjectVectorI9CPropertyED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CPropertyED0Ev,"aG",@progbits,_ZN13CObjectVectorI9CPropertyED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp534-.Lfunc_begin20        # >> Call Site 1 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin20        #     jumps to .Ltmp536
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp535-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Lfunc_end30-.Ltmp535          #   Call between .Ltmp535 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CPropertyE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI9CPropertyE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI9CPropertyE6DeleteEii # -- Begin function _ZN13CObjectVectorI9CPropertyE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI9CPropertyE6DeleteEii,@function
_ZN13CObjectVectorI9CPropertyE6DeleteEii: # @_ZN13CObjectVectorI9CPropertyE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB31_9
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_2:                               # %_ZN9CPropertyD2Ev.exit
                                        #   in Loop: Header=BB31_4 Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_3:                               # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB31_9
.LBB31_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB31_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB31_7
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB31_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB31_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB31_2
# %bb.8:                                # %delete.notnull.i2.i
                                        #   in Loop: Header=BB31_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB31_2
.LBB31_9:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end31:
	.size	_ZN13CObjectVectorI9CPropertyE6DeleteEii, .Lfunc_end31-_ZN13CObjectVectorI9CPropertyE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12CArchivePathC2Ev,"axG",@progbits,_ZN12CArchivePathC2Ev,comdat
	.weak	_ZN12CArchivePathC2Ev           # -- Begin function _ZN12CArchivePathC2Ev
	.p2align	2
	.type	_ZN12CArchivePathC2Ev,@function
_ZN12CArchivePathC2Ev:                  # @_ZN12CArchivePathC2Ev
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 16
.Ltmp537:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 28
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 32
.Ltmp540:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.2:                                # %invoke.cont3
	st.d	$a0, $fp, 32
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 44
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 48
.Ltmp543:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.3:                                # %invoke.cont5
	st.d	$a0, $fp, 48
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 60
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 64
.Ltmp546:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.4:                                # %invoke.cont7
	move	$s1, $a0
	st.d	$a0, $fp, 64
	st.w	$zero, $a0, 0
	ori	$s0, $zero, 4
	st.w	$s0, $fp, 76
	st.b	$zero, $fp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 88
.Ltmp549:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.5:                                # %invoke.cont9
	move	$s2, $a0
	addi.d	$s1, $fp, 64
	st.d	$a0, $fp, 88
	st.w	$zero, $a0, 0
	st.w	$s0, $fp, 100
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $fp, 104
.Ltmp552:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.6:                                # %invoke.cont11
	st.d	$a0, $fp, 104
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 116
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB32_7:                               # %ehcleanup
.Ltmp554:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB32_14
# %bb.8:                                # %ehcleanup12
	addi.d	$a0, $fp, 48
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB32_16
.LBB32_9:                               # %ehcleanup13
	addi.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB32_18
.LBB32_10:                              # %ehcleanup14
	addi.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB32_20
.LBB32_11:                              # %ehcleanup15
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB32_22
.LBB32_12:                              # %_ZN11CStringBaseIwED2Ev.exit43
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB32_13:                              # %ehcleanup.thread
.Ltmp551:                               # EH_LABEL
	move	$s0, $a0
.LBB32_14:                              # %delete.notnull.i30
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 48
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_9
	b	.LBB32_16
.LBB32_15:                              # %lpad6
.Ltmp548:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 48
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_9
.LBB32_16:                              # %delete.notnull.i33
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_10
	b	.LBB32_18
.LBB32_17:                              # %lpad4
.Ltmp545:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_10
.LBB32_18:                              # %delete.notnull.i36
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_11
	b	.LBB32_20
.LBB32_19:                              # %lpad2
.Ltmp542:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB32_11
.LBB32_20:                              # %delete.notnull.i39
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB32_12
	b	.LBB32_22
.LBB32_21:                              # %lpad
.Ltmp539:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB32_12
.LBB32_22:                              # %delete.notnull.i42
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN12CArchivePathC2Ev, .Lfunc_end32-_ZN12CArchivePathC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchivePathC2Ev,"aG",@progbits,_ZN12CArchivePathC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp537-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp537
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin21        #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin21        #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin21        # >> Call Site 4 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin21        #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin21        # >> Call Site 5 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin21        #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin21        # >> Call Site 6 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin21        #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin21        # >> Call Site 7 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin21        #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin21        # >> Call Site 8 <<
	.uleb128 .Lfunc_end32-.Ltmp553          #   Call between .Ltmp553 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CArchivePathD2Ev,"axG",@progbits,_ZN12CArchivePathD2Ev,comdat
	.weak	_ZN12CArchivePathD2Ev           # -- Begin function _ZN12CArchivePathD2Ev
	.p2align	2
	.type	_ZN12CArchivePathD2Ev,@function
_ZN12CArchivePathD2Ev:                  # @_ZN12CArchivePathD2Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	beqz	$a0, .LBB33_2
# %bb.1:                                # %delete.notnull.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB33_4
# %bb.3:                                # %delete.notnull.i2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_4:                               # %_ZN11CStringBaseIwED2Ev.exit3
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB33_6
# %bb.5:                                # %delete.notnull.i5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_6:                               # %_ZN11CStringBaseIwED2Ev.exit6
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB33_8
# %bb.7:                                # %delete.notnull.i8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_8:                               # %_ZN11CStringBaseIwED2Ev.exit9
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB33_10
# %bb.9:                                # %delete.notnull.i11
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_10:                              # %_ZN11CStringBaseIwED2Ev.exit12
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB33_12
# %bb.11:                               # %delete.notnull.i14
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_12:                              # %_ZN11CStringBaseIwED2Ev.exit15
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB33_14
# %bb.13:                               # %delete.notnull.i17
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB33_14:                              # %_ZN11CStringBaseIwED2Ev.exit18
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end33:
	.size	_ZN12CArchivePathD2Ev, .Lfunc_end33-_ZN12CArchivePathD2Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev,"axG",@progbits,_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev,comdat
	.weak	_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev # -- Begin function _ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev,@function
_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev: # @_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	st.d	$a0, $fp, 0
.Ltmp555:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB34_2:                               # %terminate.lpad
.Ltmp557:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end34:
	.size	_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev, .Lfunc_end34-_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev,"aG",@progbits,_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp555-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin22        #     jumps to .Ltmp557
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp556-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end34-.Ltmp556          #   Call between .Ltmp556 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN22CCompressionMethodModeD2Ev,"axG",@progbits,_ZN22CCompressionMethodModeD2Ev,comdat
	.weak	_ZN22CCompressionMethodModeD2Ev # -- Begin function _ZN22CCompressionMethodModeD2Ev
	.p2align	2
	.type	_ZN22CCompressionMethodModeD2Ev,@function
_ZN22CCompressionMethodModeD2Ev:        # @_ZN22CCompressionMethodModeD2Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$fp, $a0, 8
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI9CPropertyE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI9CPropertyE+16)
	st.d	$a1, $a0, 8
.Ltmp558:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI9CPropertyED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB35_2:                               # %terminate.lpad.i
.Ltmp560:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN22CCompressionMethodModeD2Ev, .Lfunc_end35-_ZN22CCompressionMethodModeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN22CCompressionMethodModeD2Ev,"aG",@progbits,_ZN22CCompressionMethodModeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp558-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin23        #     jumps to .Ltmp560
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp559-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp559          #   Call between .Ltmp559 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev,"axG",@progbits,_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev,comdat
	.weak	_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev # -- Begin function _ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev,@function
_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev: # @_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI21CUpdateArchiveCommandE+16)
	st.d	$a0, $fp, 0
.Ltmp561:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB36_2:                               # %terminate.lpad.i
.Ltmp563:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev, .Lfunc_end36-_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev,"aG",@progbits,_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp561-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin24        #     jumps to .Ltmp563
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp562-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp562          #   Call between .Ltmp562 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii # -- Begin function _ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii,@function
_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii: # @_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB37_5
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_2:                               # %for.inc
                                        #   in Loop: Header=BB37_3 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB37_5
.LBB37_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB37_2
# %bb.4:                                # %delete.notnull
                                        #   in Loop: Header=BB37_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN21CUpdateArchiveCommandD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB37_2
.LBB37_5:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end37:
	.size	_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii, .Lfunc_end37-_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN21CUpdateArchiveCommandD2Ev,"axG",@progbits,_ZN21CUpdateArchiveCommandD2Ev,comdat
	.weak	_ZN21CUpdateArchiveCommandD2Ev  # -- Begin function _ZN21CUpdateArchiveCommandD2Ev
	.p2align	2
	.type	_ZN21CUpdateArchiveCommandD2Ev,@function
_ZN21CUpdateArchiveCommandD2Ev:         # @_ZN21CUpdateArchiveCommandD2Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	beqz	$a0, .LBB38_2
# %bb.1:                                # %delete.notnull.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_2:                               # %_ZN11CStringBaseIwED2Ev.exit.i
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB38_4
# %bb.3:                                # %delete.notnull.i2.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_4:                               # %_ZN11CStringBaseIwED2Ev.exit3.i
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB38_6
# %bb.5:                                # %delete.notnull.i5.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_6:                               # %_ZN11CStringBaseIwED2Ev.exit6.i
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB38_8
# %bb.7:                                # %delete.notnull.i8.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_8:                               # %_ZN11CStringBaseIwED2Ev.exit9.i
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB38_10
# %bb.9:                                # %delete.notnull.i11.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_10:                              # %_ZN11CStringBaseIwED2Ev.exit12.i
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB38_12
# %bb.11:                               # %delete.notnull.i14.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_12:                              # %_ZN11CStringBaseIwED2Ev.exit15.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB38_14
# %bb.13:                               # %delete.notnull.i17.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB38_14:                              # %_ZN12CArchivePathD2Ev.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB38_16
# %bb.15:                               # %delete.notnull.i
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB38_16:                              # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end38:
	.size	_ZN21CUpdateArchiveCommandD2Ev, .Lfunc_end38-_ZN21CUpdateArchiveCommandD2Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIyED0Ev,"axG",@progbits,_ZN13CRecordVectorIyED0Ev,comdat
	.weak	_ZN13CRecordVectorIyED0Ev       # -- Begin function _ZN13CRecordVectorIyED0Ev
	.p2align	2
	.type	_ZN13CRecordVectorIyED0Ev,@function
_ZN13CRecordVectorIyED0Ev:              # @_ZN13CRecordVectorIyED0Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end39:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end39-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7CCodecs14QueryInterfaceERK4GUIDPPv
.LCPI40_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	192                             # 0xc0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	70                              # 0x46
	.section	.text._ZN7CCodecs14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN7CCodecs14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN7CCodecs14QueryInterfaceERK4GUIDPPv
	.p2align	2
	.type	_ZN7CCodecs14QueryInterfaceERK4GUIDPPv,@function
_ZN7CCodecs14QueryInterfaceERK4GUIDPPv: # @_ZN7CCodecs14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:                                # %entry
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI40_0)
	vld	$vr1, $a1, %pc_lo12(.LCPI40_0)
	vseq.b	$vr0, $vr0, $vr1
	vxori.b	$vr0, $vr0, 255
	vmskltz.b	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	beqz	$a1, .LBB40_2
# %bb.1:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	ret
.LBB40_2:                               # %if.then
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end40:
	.size	_ZN7CCodecs14QueryInterfaceERK4GUIDPPv, .Lfunc_end40-_ZN7CCodecs14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7CCodecs6AddRefEv,"axG",@progbits,_ZN7CCodecs6AddRefEv,comdat
	.weak	_ZN7CCodecs6AddRefEv            # -- Begin function _ZN7CCodecs6AddRefEv
	.p2align	2
	.type	_ZN7CCodecs6AddRefEv,@function
_ZN7CCodecs6AddRefEv:                   # @_ZN7CCodecs6AddRefEv
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end41:
	.size	_ZN7CCodecs6AddRefEv, .Lfunc_end41-_ZN7CCodecs6AddRefEv
                                        # -- End function
	.section	.text._ZN7CCodecs7ReleaseEv,"axG",@progbits,_ZN7CCodecs7ReleaseEv,comdat
	.weak	_ZN7CCodecs7ReleaseEv           # -- Begin function _ZN7CCodecs7ReleaseEv
	.p2align	2
	.type	_ZN7CCodecs7ReleaseEv,@function
_ZN7CCodecs7ReleaseEv:                  # @_ZN7CCodecs7ReleaseEv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB42_2
# %bb.1:                                # %delete.notnull
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB42_2:                               # %return
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end42:
	.size	_ZN7CCodecs7ReleaseEv, .Lfunc_end42-_ZN7CCodecs7ReleaseEv
                                        # -- End function
	.section	.text._ZN7CCodecsD2Ev,"axG",@progbits,_ZN7CCodecsD2Ev,comdat
	.weak	_ZN7CCodecsD2Ev                 # -- Begin function _ZN7CCodecsD2Ev
	.p2align	2
	.type	_ZN7CCodecsD2Ev,@function
_ZN7CCodecsD2Ev:                        # @_ZN7CCodecsD2Ev
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(_ZTV7CCodecs+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV7CCodecs+16)
	st.d	$a1, $a0, 0
	addi.d	$fp, $a0, 16
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI10CArcInfoExE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV13CObjectVectorI10CArcInfoExE+16)
	st.d	$a1, $a0, 16
.Ltmp564:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp565:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI10CArcInfoExED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB43_2:                               # %terminate.lpad.i
.Ltmp566:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN7CCodecsD2Ev, .Lfunc_end43-_ZN7CCodecsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7CCodecsD2Ev,"aG",@progbits,_ZN7CCodecsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp564-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin25        #     jumps to .Ltmp566
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp565-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Lfunc_end43-.Ltmp565          #   Call between .Ltmp565 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CCodecsD0Ev,"axG",@progbits,_ZN7CCodecsD0Ev,comdat
	.weak	_ZN7CCodecsD0Ev                 # -- Begin function _ZN7CCodecsD0Ev
	.p2align	2
	.type	_ZN7CCodecsD0Ev,@function
_ZN7CCodecsD0Ev:                        # @_ZN7CCodecsD0Ev
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV7CCodecs+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7CCodecs+16)
	st.d	$a0, $fp, 0
	addi.d	$s0, $fp, 16
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CArcInfoExE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CArcInfoExE+16)
	st.d	$a0, $fp, 16
.Ltmp567:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.1:                                # %_ZN7CCodecsD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB44_2:                               # %terminate.lpad.i.i
.Ltmp569:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN7CCodecsD0Ev, .Lfunc_end44-_ZN7CCodecsD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7CCodecsD0Ev,"aG",@progbits,_ZN7CCodecsD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp567-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin26        #     jumps to .Ltmp569
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp568-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end44-.Ltmp568          #   Call between .Ltmp568 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CArcInfoExED2Ev,"axG",@progbits,_ZN13CObjectVectorI10CArcInfoExED2Ev,comdat
	.weak	_ZN13CObjectVectorI10CArcInfoExED2Ev # -- Begin function _ZN13CObjectVectorI10CArcInfoExED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI10CArcInfoExED2Ev,@function
_ZN13CObjectVectorI10CArcInfoExED2Ev:   # @_ZN13CObjectVectorI10CArcInfoExED2Ev
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CArcInfoExE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CArcInfoExE+16)
	st.d	$a0, $fp, 0
.Ltmp570:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB45_2:                               # %terminate.lpad
.Ltmp572:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN13CObjectVectorI10CArcInfoExED2Ev, .Lfunc_end45-_ZN13CObjectVectorI10CArcInfoExED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI10CArcInfoExED2Ev,"aG",@progbits,_ZN13CObjectVectorI10CArcInfoExED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp570-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin27        #     jumps to .Ltmp572
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp571-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Lfunc_end45-.Ltmp571          #   Call between .Ltmp571 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CArcInfoExED0Ev,"axG",@progbits,_ZN13CObjectVectorI10CArcInfoExED0Ev,comdat
	.weak	_ZN13CObjectVectorI10CArcInfoExED0Ev # -- Begin function _ZN13CObjectVectorI10CArcInfoExED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI10CArcInfoExED0Ev,@function
_ZN13CObjectVectorI10CArcInfoExED0Ev:   # @_ZN13CObjectVectorI10CArcInfoExED0Ev
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception28
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI10CArcInfoExE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI10CArcInfoExE+16)
	st.d	$a0, $fp, 0
.Ltmp573:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI10CArcInfoExED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB46_2:                               # %terminate.lpad.i
.Ltmp575:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end46:
	.size	_ZN13CObjectVectorI10CArcInfoExED0Ev, .Lfunc_end46-_ZN13CObjectVectorI10CArcInfoExED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI10CArcInfoExED0Ev,"aG",@progbits,_ZN13CObjectVectorI10CArcInfoExED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table46:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp573-.Lfunc_begin28        # >> Call Site 1 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin28        #     jumps to .Ltmp575
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp574-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Lfunc_end46-.Ltmp574          #   Call between .Ltmp574 and .Lfunc_end46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase23:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI10CArcInfoExE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI10CArcInfoExE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI10CArcInfoExE6DeleteEii # -- Begin function _ZN13CObjectVectorI10CArcInfoExE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI10CArcInfoExE6DeleteEii,@function
_ZN13CObjectVectorI10CArcInfoExE6DeleteEii: # @_ZN13CObjectVectorI10CArcInfoExE6DeleteEii
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception29
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB47_10
# %bb.1:                                # %for.body.lr.ph
	move	$s4, $zero
	slli.d	$s5, $s0, 3
	pcalau12i	$a0, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV7CBufferIhE+16)
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	b	.LBB47_4
	.p2align	4, , 16
.LBB47_2:                               # %_ZN10CArcInfoExD2Ev.exit
                                        #   in Loop: Header=BB47_4 Depth=1
	ori	$a1, $zero, 104
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB47_3:                               # %for.inc
                                        #   in Loop: Header=BB47_4 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	bgeu	$s4, $s1, .LBB47_10
.LBB47_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s5
	beqz	$s2, .LBB47_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB47_4 Depth=1
	ld.d	$a0, $s2, 88
	st.d	$s6, $s2, 72
	beqz	$a0, .LBB47_7
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB47_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB47_7:                               # %_ZN7CBufferIhED2Ev.exit.i
                                        #   in Loop: Header=BB47_4 Depth=1
	addi.d	$s3, $s2, 40
	st.d	$s7, $s2, 40
.Ltmp576:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.8:                                # %_ZN13CObjectVectorI11CArcExtInfoED2Ev.exit.i
                                        #   in Loop: Header=BB47_4 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB47_2
# %bb.9:                                # %delete.notnull.i2.i
                                        #   in Loop: Header=BB47_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB47_2
.LBB47_10:                              # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
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
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB47_11:                              # %terminate.lpad.i.i
.Ltmp578:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN13CObjectVectorI10CArcInfoExE6DeleteEii, .Lfunc_end47-_ZN13CObjectVectorI10CArcInfoExE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI10CArcInfoExE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI10CArcInfoExE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Lfunc_begin29-.Lfunc_begin29  # >> Call Site 1 <<
	.uleb128 .Ltmp576-.Lfunc_begin29        #   Call between .Lfunc_begin29 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin29        #     jumps to .Ltmp578
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp577-.Lfunc_begin29        # >> Call Site 3 <<
	.uleb128 .Lfunc_end47-.Ltmp577          #   Call between .Ltmp577 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase24:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CBufferIhED2Ev,"axG",@progbits,_ZN7CBufferIhED2Ev,comdat
	.weak	_ZN7CBufferIhED2Ev              # -- Begin function _ZN7CBufferIhED2Ev
	.p2align	2
	.type	_ZN7CBufferIhED2Ev,@function
_ZN7CBufferIhED2Ev:                     # @_ZN7CBufferIhED2Ev
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.d	$a0, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB48_2
# %bb.1:                                # %delete.notnull
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB48_2:                               # %delete.end
	ret
.Lfunc_end48:
	.size	_ZN7CBufferIhED2Ev, .Lfunc_end48-_ZN7CBufferIhED2Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CArcExtInfoED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CArcExtInfoED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CArcExtInfoED2Ev # -- Begin function _ZN13CObjectVectorI11CArcExtInfoED2Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CArcExtInfoED2Ev,@function
_ZN13CObjectVectorI11CArcExtInfoED2Ev:  # @_ZN13CObjectVectorI11CArcExtInfoED2Ev
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception30
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	st.d	$a0, $fp, 0
.Ltmp579:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB49_2:                               # %terminate.lpad
.Ltmp581:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end49:
	.size	_ZN13CObjectVectorI11CArcExtInfoED2Ev, .Lfunc_end49-_ZN13CObjectVectorI11CArcExtInfoED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CArcExtInfoED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CArcExtInfoED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table49:
.Lexception30:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp579-.Lfunc_begin30        # >> Call Site 1 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin30        #     jumps to .Ltmp581
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp580-.Lfunc_begin30        # >> Call Site 2 <<
	.uleb128 .Lfunc_end49-.Ltmp580          #   Call between .Ltmp580 and .Lfunc_end49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end30:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase25:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7CBufferIhED0Ev,"axG",@progbits,_ZN7CBufferIhED0Ev,comdat
	.weak	_ZN7CBufferIhED0Ev              # -- Begin function _ZN7CBufferIhED0Ev
	.p2align	2
	.type	_ZN7CBufferIhED0Ev,@function
_ZN7CBufferIhED0Ev:                     # @_ZN7CBufferIhED0Ev
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 16
	pcalau12i	$a2, %pc_hi20(_ZTV7CBufferIhE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV7CBufferIhE+16)
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB50_2
# %bb.1:                                # %delete.notnull.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB50_2:                               # %_ZN7CBufferIhED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end50:
	.size	_ZN7CBufferIhED0Ev, .Lfunc_end50-_ZN7CBufferIhED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CArcExtInfoED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CArcExtInfoED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CArcExtInfoED0Ev # -- Begin function _ZN13CObjectVectorI11CArcExtInfoED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CArcExtInfoED0Ev,@function
_ZN13CObjectVectorI11CArcExtInfoED0Ev:  # @_ZN13CObjectVectorI11CArcExtInfoED0Ev
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception31
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CArcExtInfoE+16)
	st.d	$a0, $fp, 0
.Ltmp582:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI11CArcExtInfoED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB51_2:                               # %terminate.lpad.i
.Ltmp584:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN13CObjectVectorI11CArcExtInfoED0Ev, .Lfunc_end51-_ZN13CObjectVectorI11CArcExtInfoED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CArcExtInfoED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CArcExtInfoED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception31:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp582-.Lfunc_begin31        # >> Call Site 1 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin31        #     jumps to .Ltmp584
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp583-.Lfunc_begin31        # >> Call Site 2 <<
	.uleb128 .Lfunc_end51-.Ltmp583          #   Call between .Ltmp583 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end31:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase26:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CArcExtInfoE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CArcExtInfoE6DeleteEii
	.p2align	2
	.type	_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii,@function
_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii: # @_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB52_9
# %bb.1:                                # %for.body.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB52_4
	.p2align	4, , 16
.LBB52_2:                               # %_ZN11CArcExtInfoD2Ev.exit
                                        #   in Loop: Header=BB52_4 Depth=1
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB52_3:                               # %for.inc
                                        #   in Loop: Header=BB52_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB52_9
.LBB52_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB52_3
# %bb.5:                                # %delete.notnull
                                        #   in Loop: Header=BB52_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB52_7
# %bb.6:                                # %delete.notnull.i.i
                                        #   in Loop: Header=BB52_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB52_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB52_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB52_2
# %bb.8:                                # %delete.notnull.i2.i
                                        #   in Loop: Header=BB52_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB52_2
.LBB52_9:                               # %for.cond.cleanup
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end52:
	.size	_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii, .Lfunc_end52-_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE
	.type	_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE,@function
_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE: # @_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(_Z4endlR13CStdOutStream)
	ld.d	$a1, $a1, %got_pc_lo12(_Z4endlR13CStdOutStream)
	pcaddu18i	$ra, %call36(_ZN13CStdOutStreamlsEPFRS_S0_E)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	st.w	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(_ZTIN9NExitCode5EEnumE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIN9NExitCode5EEnumE)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Lfunc_end53:
	.size	_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE, .Lfunc_end53-_ZL28ShowMessageAndThrowExceptionR13CStdOutStreamPKcN9NExitCode5EEnumE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	2
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception32
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp585:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB54_2:                               # %terminate.lpad.i
.Ltmp587:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end54:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end54-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table54:
.Lexception32:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp585-.Lfunc_begin32        # >> Call Site 1 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin32        #     jumps to .Ltmp587
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp586-.Lfunc_begin32        # >> Call Site 2 <<
	.uleb128 .Lfunc_end54-.Ltmp586          #   Call between .Ltmp586 and .Lfunc_end54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end32:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase27:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIiED0Ev,"axG",@progbits,_ZN13CRecordVectorIiED0Ev,comdat
	.weak	_ZN13CRecordVectorIiED0Ev       # -- Begin function _ZN13CRecordVectorIiED0Ev
	.p2align	2
	.type	_ZN13CRecordVectorIiED0Ev,@function
_ZN13CRecordVectorIiED0Ev:              # @_ZN13CRecordVectorIiED0Ev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end55:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end55-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"axG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.weak	_ZN13CObjectVectorI9CPropertyE3AddERKS0_ # -- Begin function _ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.p2align	2
	.type	_ZN13CObjectVectorI9CPropertyE3AddERKS0_,@function
_ZN13CObjectVectorI9CPropertyE3AddERKS0_: # @_ZN13CObjectVectorI9CPropertyE3AddERKS0_
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception33
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s1, 8
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s4, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s4, $a0
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB56_2
# %bb.1:
	move	$s2, $zero
	b	.LBB56_4
.LBB56_2:                               # %if.end9.i.i.i
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$a0, $s4, 0
	slti	$a1, $s3, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp588:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.3:                                # %call.i.i.i.noexc
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s4, $fp, 12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB56_4:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB56_5:                               # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB56_5
# %bb.6:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ld.w	$s4, $s1, 24
	st.w	$s3, $fp, 8
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s3, $a0, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	and	$a0, $s3, $a0
	vst	$vr0, $fp, 16
	beqz	$a0, .LBB56_8
# %bb.7:
	move	$a0, $zero
	b	.LBB56_10
.LBB56_8:                               # %if.end9.i.i5.i
	addi.w	$a0, $s3, 0
	slti	$a1, $s4, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp591:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.9:                                # %call.i.i8.noexc.i
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 28
.LBB56_10:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i9.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB56_11:                              # %while.cond.i.i10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB56_11
# %bb.12:                               # %invoke.cont
	st.w	$s4, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB56_13:                              # %lpad.i
.Ltmp593:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s2, .LBB56_16
# %bb.14:                               # %delete.notnull.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB56_16
.LBB56_15:                              # %lpad
.Ltmp590:                               # EH_LABEL
	move	$s0, $a0
.LBB56_16:                              # %lpad.body
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	_ZN13CObjectVectorI9CPropertyE3AddERKS0_, .Lfunc_end56-_ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"aG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception33:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Lfunc_begin33-.Lfunc_begin33  # >> Call Site 1 <<
	.uleb128 .Ltmp588-.Lfunc_begin33        #   Call between .Lfunc_begin33 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin33        # >> Call Site 2 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin33        #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin33        # >> Call Site 3 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin33        #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin33        # >> Call Site 4 <<
	.uleb128 .Lfunc_end56-.Ltmp592          #   Call between .Ltmp592 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end33:
	.p2align	2, 0x0
                                        # -- End function
	.type	IID_IUnknown,@object            # @IID_IUnknown
	.section	.rodata,"a",@progbits
	.globl	IID_IUnknown
	.p2align	2, 0x0
IID_IUnknown:
	.word	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.ascii	"\300\000\000\000\000\000\000F"
	.size	IID_IUnknown, 16

	.type	IID_IProgress,@object           # @IID_IProgress
	.globl	IID_IProgress
	.p2align	2, 0x0
IID_IProgress:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\000\000\005\000"
	.size	IID_IProgress, 16

	.type	IID_ISequentialInStream,@object # @IID_ISequentialInStream
	.globl	IID_ISequentialInStream
	.p2align	2, 0x0
IID_ISequentialInStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\001\000"
	.size	IID_ISequentialInStream, 16

	.type	IID_ISequentialOutStream,@object # @IID_ISequentialOutStream
	.globl	IID_ISequentialOutStream
	.p2align	2, 0x0
IID_ISequentialOutStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\002\000"
	.size	IID_ISequentialOutStream, 16

	.type	IID_IInStream,@object           # @IID_IInStream
	.globl	IID_IInStream
	.p2align	2, 0x0
IID_IInStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\003\000"
	.size	IID_IInStream, 16

	.type	IID_IOutStream,@object          # @IID_IOutStream
	.globl	IID_IOutStream
	.p2align	2, 0x0
IID_IOutStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\004\000"
	.size	IID_IOutStream, 16

	.type	IID_IStreamGetSize,@object      # @IID_IStreamGetSize
	.globl	IID_IStreamGetSize
	.p2align	2, 0x0
IID_IStreamGetSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\006\000"
	.size	IID_IStreamGetSize, 16

	.type	IID_IOutStreamFlush,@object     # @IID_IOutStreamFlush
	.globl	IID_IOutStreamFlush
	.p2align	2, 0x0
IID_IOutStreamFlush:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\003\000\007\000"
	.size	IID_IOutStreamFlush, 16

	.type	IID_IArchiveOpenCallback,@object # @IID_IArchiveOpenCallback
	.globl	IID_IArchiveOpenCallback
	.p2align	2, 0x0
IID_IArchiveOpenCallback:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000\020\000"
	.size	IID_IArchiveOpenCallback, 16

	.type	IID_IArchiveExtractCallback,@object # @IID_IArchiveExtractCallback
	.globl	IID_IArchiveExtractCallback
	.p2align	2, 0x0
IID_IArchiveExtractCallback:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000 \000"
	.size	IID_IArchiveExtractCallback, 16

	.type	IID_IArchiveOpenVolumeCallback,@object # @IID_IArchiveOpenVolumeCallback
	.globl	IID_IArchiveOpenVolumeCallback
	.p2align	2, 0x0
IID_IArchiveOpenVolumeCallback:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\0000\000"
	.size	IID_IArchiveOpenVolumeCallback, 16

	.type	IID_IInArchiveGetStream,@object # @IID_IInArchiveGetStream
	.globl	IID_IInArchiveGetStream
	.p2align	2, 0x0
IID_IInArchiveGetStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000@\000"
	.size	IID_IInArchiveGetStream, 16

	.type	IID_IArchiveOpenSetSubArchiveName,@object # @IID_IArchiveOpenSetSubArchiveName
	.globl	IID_IArchiveOpenSetSubArchiveName
	.p2align	2, 0x0
IID_IArchiveOpenSetSubArchiveName:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000P\000"
	.size	IID_IArchiveOpenSetSubArchiveName, 16

	.type	IID_IInArchive,@object          # @IID_IInArchive
	.globl	IID_IInArchive
	.p2align	2, 0x0
IID_IInArchive:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000`\000"
	.size	IID_IInArchive, 16

	.type	IID_IArchiveOpenSeq,@object     # @IID_IArchiveOpenSeq
	.globl	IID_IArchiveOpenSeq
	.p2align	2, 0x0
IID_IArchiveOpenSeq:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000a\000"
	.size	IID_IArchiveOpenSeq, 16

	.type	IID_IArchiveUpdateCallback,@object # @IID_IArchiveUpdateCallback
	.globl	IID_IArchiveUpdateCallback
	.p2align	2, 0x0
IID_IArchiveUpdateCallback:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000\200\000"
	.size	IID_IArchiveUpdateCallback, 16

	.type	IID_IArchiveUpdateCallback2,@object # @IID_IArchiveUpdateCallback2
	.globl	IID_IArchiveUpdateCallback2
	.p2align	2, 0x0
IID_IArchiveUpdateCallback2:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000\202\000"
	.size	IID_IArchiveUpdateCallback2, 16

	.type	IID_IOutArchive,@object         # @IID_IOutArchive
	.globl	IID_IOutArchive
	.p2align	2, 0x0
IID_IOutArchive:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000\240\000"
	.size	IID_IOutArchive, 16

	.type	IID_ISetProperties,@object      # @IID_ISetProperties
	.globl	IID_ISetProperties
	.p2align	2, 0x0
IID_ISetProperties:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\006\000\003\000"
	.size	IID_ISetProperties, 16

	.type	IID_ICryptoGetTextPassword,@object # @IID_ICryptoGetTextPassword
	.globl	IID_ICryptoGetTextPassword
	.p2align	2, 0x0
IID_ICryptoGetTextPassword:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\005\000\020\000"
	.size	IID_ICryptoGetTextPassword, 16

	.type	IID_ICryptoGetTextPassword2,@object # @IID_ICryptoGetTextPassword2
	.globl	IID_ICryptoGetTextPassword2
	.p2align	2, 0x0
IID_ICryptoGetTextPassword2:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\005\000\021\000"
	.size	IID_ICryptoGetTextPassword2, 16

	.type	IID_ICompressProgressInfo,@object # @IID_ICompressProgressInfo
	.globl	IID_ICompressProgressInfo
	.p2align	2, 0x0
IID_ICompressProgressInfo:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\004\000"
	.size	IID_ICompressProgressInfo, 16

	.type	IID_ICompressCoder,@object      # @IID_ICompressCoder
	.globl	IID_ICompressCoder
	.p2align	2, 0x0
IID_ICompressCoder:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\005\000"
	.size	IID_ICompressCoder, 16

	.type	IID_ICompressCoder2,@object     # @IID_ICompressCoder2
	.globl	IID_ICompressCoder2
	.p2align	2, 0x0
IID_ICompressCoder2:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\030\000"
	.size	IID_ICompressCoder2, 16

	.type	IID_ICompressSetCoderProperties,@object # @IID_ICompressSetCoderProperties
	.globl	IID_ICompressSetCoderProperties
	.p2align	2, 0x0
IID_ICompressSetCoderProperties:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000 \000"
	.size	IID_ICompressSetCoderProperties, 16

	.type	IID_ICompressSetDecoderProperties2,@object # @IID_ICompressSetDecoderProperties2
	.globl	IID_ICompressSetDecoderProperties2
	.p2align	2, 0x0
IID_ICompressSetDecoderProperties2:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\"\000"
	.size	IID_ICompressSetDecoderProperties2, 16

	.type	IID_ICompressWriteCoderProperties,@object # @IID_ICompressWriteCoderProperties
	.globl	IID_ICompressWriteCoderProperties
	.p2align	2, 0x0
IID_ICompressWriteCoderProperties:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000#\000"
	.size	IID_ICompressWriteCoderProperties, 16

	.type	IID_ICompressGetInStreamProcessedSize,@object # @IID_ICompressGetInStreamProcessedSize
	.globl	IID_ICompressGetInStreamProcessedSize
	.p2align	2, 0x0
IID_ICompressGetInStreamProcessedSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000$\000"
	.size	IID_ICompressGetInStreamProcessedSize, 16

	.type	IID_ICompressSetCoderMt,@object # @IID_ICompressSetCoderMt
	.globl	IID_ICompressSetCoderMt
	.p2align	2, 0x0
IID_ICompressSetCoderMt:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000%\000"
	.size	IID_ICompressSetCoderMt, 16

	.type	IID_ICompressGetSubStreamSize,@object # @IID_ICompressGetSubStreamSize
	.globl	IID_ICompressGetSubStreamSize
	.p2align	2, 0x0
IID_ICompressGetSubStreamSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0000\000"
	.size	IID_ICompressGetSubStreamSize, 16

	.type	IID_ICompressSetInStream,@object # @IID_ICompressSetInStream
	.globl	IID_ICompressSetInStream
	.p2align	2, 0x0
IID_ICompressSetInStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0001\000"
	.size	IID_ICompressSetInStream, 16

	.type	IID_ICompressSetOutStream,@object # @IID_ICompressSetOutStream
	.globl	IID_ICompressSetOutStream
	.p2align	2, 0x0
IID_ICompressSetOutStream:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0002\000"
	.size	IID_ICompressSetOutStream, 16

	.type	IID_ICompressSetInStreamSize,@object # @IID_ICompressSetInStreamSize
	.globl	IID_ICompressSetInStreamSize
	.p2align	2, 0x0
IID_ICompressSetInStreamSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0003\000"
	.size	IID_ICompressSetInStreamSize, 16

	.type	IID_ICompressSetOutStreamSize,@object # @IID_ICompressSetOutStreamSize
	.globl	IID_ICompressSetOutStreamSize
	.p2align	2, 0x0
IID_ICompressSetOutStreamSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0004\000"
	.size	IID_ICompressSetOutStreamSize, 16

	.type	IID_ICompressSetBufSize,@object # @IID_ICompressSetBufSize
	.globl	IID_ICompressSetBufSize
	.p2align	2, 0x0
IID_ICompressSetBufSize:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\0005\000"
	.size	IID_ICompressSetBufSize, 16

	.type	IID_ICompressFilter,@object     # @IID_ICompressFilter
	.globl	IID_ICompressFilter
	.p2align	2, 0x0
IID_ICompressFilter:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000@\000"
	.size	IID_ICompressFilter, 16

	.type	IID_ICompressCodecsInfo,@object # @IID_ICompressCodecsInfo
	.globl	IID_ICompressCodecsInfo
	.p2align	2, 0x0
IID_ICompressCodecsInfo:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000`\000"
	.size	IID_ICompressCodecsInfo, 16

	.type	IID_ISetCompressCodecsInfo,@object # @IID_ISetCompressCodecsInfo
	.globl	IID_ISetCompressCodecsInfo
	.p2align	2, 0x0
IID_ISetCompressCodecsInfo:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000a\000"
	.size	IID_ISetCompressCodecsInfo, 16

	.type	IID_ICryptoProperties,@object   # @IID_ICryptoProperties
	.globl	IID_ICryptoProperties
	.p2align	2, 0x0
IID_ICryptoProperties:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\200\000"
	.size	IID_ICryptoProperties, 16

	.type	IID_ICryptoResetInitVector,@object # @IID_ICryptoResetInitVector
	.globl	IID_ICryptoResetInitVector
	.p2align	2, 0x0
IID_ICryptoResetInitVector:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\214\000"
	.size	IID_ICryptoResetInitVector, 16

	.type	IID_ICryptoSetPassword,@object  # @IID_ICryptoSetPassword
	.globl	IID_ICryptoSetPassword
	.p2align	2, 0x0
IID_ICryptoSetPassword:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\220\000"
	.size	IID_ICryptoSetPassword, 16

	.type	IID_ICryptoSetCRC,@object       # @IID_ICryptoSetCRC
	.globl	IID_ICryptoSetCRC
	.p2align	2, 0x0
IID_ICryptoSetCRC:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\004\000\240\000"
	.size	IID_ICryptoSetCRC, 16

	.type	IID_IFolderArchiveExtractCallback,@object # @IID_IFolderArchiveExtractCallback
	.globl	IID_IFolderArchiveExtractCallback
	.p2align	2, 0x0
IID_IFolderArchiveExtractCallback:
	.word	588713833                       # 0x23170f69
	.half	16577                           # 0x40c1
	.half	10122                           # 0x278a
	.asciz	"\000\000\000\001\000\007\000"
	.size	IID_IFolderArchiveExtractCallback, 16

	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Formats:"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"  "
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.2:
	.word	32                              # 0x20
	.word	40                              # 0x28
	.word	0                               # 0x0
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Codecs:"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.4:
	.word	67                              # 0x43
	.word	82                              # 0x52
	.word	67                              # 0x43
	.word	0                               # 0x0
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"\nCRC Error\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nDecoding Error\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Error: "
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Archives: "
	.size	.L.str.8, 11

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Archive Errors: "
	.size	.L.str.9, 17

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Sub items Errors: "
	.size	.L.str.10, 19

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Folders: "
	.size	.L.str.11, 10

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Files: "
	.size	.L.str.12, 8

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Size:       "
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Compressed: "
	.size	.L.str.14, 13

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"CRC: "
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Errors: "
	.size	.L.str.16, 9

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"WARNINGS for files:"
	.size	.L.str.17, 20

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	" : "
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"----------------"
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"WARNING: Cannot find "
	.size	.L.str.20, 22

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	" file"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"s"
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.23:
	.word	10                              # 0xa
	.word	0                               # 0x0
	.size	.L.str.23, 8

	.type	.L.str.24,@object               # @.str.24
	.p2align	2, 0x0
.L.str.24:
	.word	10                              # 0xa
	.word	69                              # 0x45
	.word	114                             # 0x72
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	58                              # 0x3a
	.word	10                              # 0xa
	.word	0                               # 0x0
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"WARNING: Cannot open "
	.size	.L.str.25, 22

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" (locale="
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	",Utf16="
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"on"
	.size	.L.str.28, 3

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"off"
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	",HugeFiles="
	.size	.L.str.30, 12

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"on,"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" CPUs)\n"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	" CPU)\n"
	.size	.L.str.33, 7

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\n7-Zip (A) 9.20  Copyright (c) 1999-2010 Igor Pavlov  2010-11-18\np7zip Version 9.20"
	.size	.L.str.34, 84

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"\nUsage: 7za <command> [<switches>...] <archive_name> [<file_names>...]\n       [<@listfiles...>]\n\n<Commands>\n  a: Add files to archive\n  b: Benchmark\n  d: Delete files from archive\n  e: Extract files from archive (without using directory names)\n  l: List contents of archive\n  t: Test integrity of archive\n  u: Update files to archive\n  x: eXtract files with full paths\n<Switches>\n  -ai[r[-|0]]{@listfile|!wildcard}: Include archives\n  -ax[r[-|0]]{@listfile|!wildcard}: eXclude archives\n  -bd: Disable percentage indicator\n  -i[r[-|0]]{@listfile|!wildcard}: Include filenames\n  -m{Parameters}: set compression Method\n  -o{Directory}: set Output directory\n  -p{Password}: set Password\n  -r[-|0]: Recurse subdirectories\n  -scs{UTF-8 | WIN | DOS}: set charset for list files\n  -sfx[{name}]: Create SFX archive\n  -si[{name}]: read data from stdin\n  -slt: show technical information for l (List) command\n  -so: write data to stdout\n  -ssc[-]: set sensitive case mode\n  -t{Type}: Set type of archive\n  -u[-][p#][q#][r#][x#][y#][z#][!newArchiveName]: Update options\n  -v{Size}[b|k|m|g]: Create volumes\n  -w[{path}]: assign Work directory. Empty path means a temporary directory\n  -x[r[-|0]]]{@listfile|!wildcard}: eXclude filenames\n  -y: assume Yes on all queries\n"
	.size	.L.str.35, 1257

	.type	_ZTV13CObjectVectorIN9NWildcard5CPairEE,@object # @_ZTV13CObjectVectorIN9NWildcard5CPairEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN9NWildcard5CPairEE,"awG",@progbits,_ZTV13CObjectVectorIN9NWildcard5CPairEE,comdat
	.weak	_ZTV13CObjectVectorIN9NWildcard5CPairEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN9NWildcard5CPairEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN9NWildcard5CPairEE
	.dword	_ZN13CObjectVectorIN9NWildcard5CPairEED2Ev
	.dword	_ZN13CObjectVectorIN9NWildcard5CPairEED0Ev
	.dword	_ZN13CObjectVectorIN9NWildcard5CPairEE6DeleteEii
	.size	_ZTV13CObjectVectorIN9NWildcard5CPairEE, 40

	.type	_ZTI13CObjectVectorIN9NWildcard5CPairEE,@object # @_ZTI13CObjectVectorIN9NWildcard5CPairEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN9NWildcard5CPairEE,"awG",@progbits,_ZTI13CObjectVectorIN9NWildcard5CPairEE,comdat
	.weak	_ZTI13CObjectVectorIN9NWildcard5CPairEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN9NWildcard5CPairEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN9NWildcard5CPairEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN9NWildcard5CPairEE, 24

	.type	_ZTS13CObjectVectorIN9NWildcard5CPairEE,@object # @_ZTS13CObjectVectorIN9NWildcard5CPairEE
	.section	.rodata._ZTS13CObjectVectorIN9NWildcard5CPairEE,"aG",@progbits,_ZTS13CObjectVectorIN9NWildcard5CPairEE,comdat
	.weak	_ZTS13CObjectVectorIN9NWildcard5CPairEE
_ZTS13CObjectVectorIN9NWildcard5CPairEE:
	.asciz	"13CObjectVectorIN9NWildcard5CPairEE"
	.size	_ZTS13CObjectVectorIN9NWildcard5CPairEE, 36

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.type	_ZTV13CObjectVectorIN9NWildcard5CItemEE,@object # @_ZTV13CObjectVectorIN9NWildcard5CItemEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN9NWildcard5CItemEE,"awG",@progbits,_ZTV13CObjectVectorIN9NWildcard5CItemEE,comdat
	.weak	_ZTV13CObjectVectorIN9NWildcard5CItemEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN9NWildcard5CItemEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN9NWildcard5CItemEE
	.dword	_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev
	.dword	_ZN13CObjectVectorIN9NWildcard5CItemEED0Ev
	.dword	_ZN13CObjectVectorIN9NWildcard5CItemEE6DeleteEii
	.size	_ZTV13CObjectVectorIN9NWildcard5CItemEE, 40

	.type	_ZTI13CObjectVectorIN9NWildcard5CItemEE,@object # @_ZTI13CObjectVectorIN9NWildcard5CItemEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN9NWildcard5CItemEE,"awG",@progbits,_ZTI13CObjectVectorIN9NWildcard5CItemEE,comdat
	.weak	_ZTI13CObjectVectorIN9NWildcard5CItemEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN9NWildcard5CItemEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN9NWildcard5CItemEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN9NWildcard5CItemEE, 24

	.type	_ZTS13CObjectVectorIN9NWildcard5CItemEE,@object # @_ZTS13CObjectVectorIN9NWildcard5CItemEE
	.section	.rodata._ZTS13CObjectVectorIN9NWildcard5CItemEE,"aG",@progbits,_ZTS13CObjectVectorIN9NWildcard5CItemEE,comdat
	.weak	_ZTS13CObjectVectorIN9NWildcard5CItemEE
_ZTS13CObjectVectorIN9NWildcard5CItemEE:
	.asciz	"13CObjectVectorIN9NWildcard5CItemEE"
	.size	_ZTS13CObjectVectorIN9NWildcard5CItemEE, 36

	.type	_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE,@object # @_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE,"awG",@progbits,_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE,comdat
	.weak	_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE
	.dword	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev
	.dword	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED0Ev
	.dword	_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE6DeleteEii
	.size	_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE, 40

	.type	_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE,@object # @_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE,"awG",@progbits,_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE,comdat
	.weak	_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE, 24

	.type	_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE,@object # @_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE
	.section	.rodata._ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE,"aG",@progbits,_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE,comdat
	.weak	_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE
_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE:
	.asciz	"13CObjectVectorIN9NWildcard11CCensorNodeEE"
	.size	_ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE, 43

	.type	_ZTV13CObjectVectorI9CPropertyE,@object # @_ZTV13CObjectVectorI9CPropertyE
	.section	.data.rel.ro._ZTV13CObjectVectorI9CPropertyE,"awG",@progbits,_ZTV13CObjectVectorI9CPropertyE,comdat
	.weak	_ZTV13CObjectVectorI9CPropertyE
	.p2align	3, 0x0
_ZTV13CObjectVectorI9CPropertyE:
	.dword	0
	.dword	_ZTI13CObjectVectorI9CPropertyE
	.dword	_ZN13CObjectVectorI9CPropertyED2Ev
	.dword	_ZN13CObjectVectorI9CPropertyED0Ev
	.dword	_ZN13CObjectVectorI9CPropertyE6DeleteEii
	.size	_ZTV13CObjectVectorI9CPropertyE, 40

	.type	_ZTI13CObjectVectorI9CPropertyE,@object # @_ZTI13CObjectVectorI9CPropertyE
	.section	.data.rel.ro._ZTI13CObjectVectorI9CPropertyE,"awG",@progbits,_ZTI13CObjectVectorI9CPropertyE,comdat
	.weak	_ZTI13CObjectVectorI9CPropertyE
	.p2align	3, 0x0
_ZTI13CObjectVectorI9CPropertyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI9CPropertyE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI9CPropertyE, 24

	.type	_ZTS13CObjectVectorI9CPropertyE,@object # @_ZTS13CObjectVectorI9CPropertyE
	.section	.rodata._ZTS13CObjectVectorI9CPropertyE,"aG",@progbits,_ZTS13CObjectVectorI9CPropertyE,comdat
	.weak	_ZTS13CObjectVectorI9CPropertyE
_ZTS13CObjectVectorI9CPropertyE:
	.asciz	"13CObjectVectorI9CPropertyE"
	.size	_ZTS13CObjectVectorI9CPropertyE, 28

	.type	_ZTV13CObjectVectorI21CUpdateArchiveCommandE,@object # @_ZTV13CObjectVectorI21CUpdateArchiveCommandE
	.section	.data.rel.ro._ZTV13CObjectVectorI21CUpdateArchiveCommandE,"awG",@progbits,_ZTV13CObjectVectorI21CUpdateArchiveCommandE,comdat
	.weak	_ZTV13CObjectVectorI21CUpdateArchiveCommandE
	.p2align	3, 0x0
_ZTV13CObjectVectorI21CUpdateArchiveCommandE:
	.dword	0
	.dword	_ZTI13CObjectVectorI21CUpdateArchiveCommandE
	.dword	_ZN13CObjectVectorI21CUpdateArchiveCommandED2Ev
	.dword	_ZN13CObjectVectorI21CUpdateArchiveCommandED0Ev
	.dword	_ZN13CObjectVectorI21CUpdateArchiveCommandE6DeleteEii
	.size	_ZTV13CObjectVectorI21CUpdateArchiveCommandE, 40

	.type	_ZTI13CObjectVectorI21CUpdateArchiveCommandE,@object # @_ZTI13CObjectVectorI21CUpdateArchiveCommandE
	.section	.data.rel.ro._ZTI13CObjectVectorI21CUpdateArchiveCommandE,"awG",@progbits,_ZTI13CObjectVectorI21CUpdateArchiveCommandE,comdat
	.weak	_ZTI13CObjectVectorI21CUpdateArchiveCommandE
	.p2align	3, 0x0
_ZTI13CObjectVectorI21CUpdateArchiveCommandE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI21CUpdateArchiveCommandE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI21CUpdateArchiveCommandE, 24

	.type	_ZTS13CObjectVectorI21CUpdateArchiveCommandE,@object # @_ZTS13CObjectVectorI21CUpdateArchiveCommandE
	.section	.rodata._ZTS13CObjectVectorI21CUpdateArchiveCommandE,"aG",@progbits,_ZTS13CObjectVectorI21CUpdateArchiveCommandE,comdat
	.weak	_ZTS13CObjectVectorI21CUpdateArchiveCommandE
_ZTS13CObjectVectorI21CUpdateArchiveCommandE:
	.asciz	"13CObjectVectorI21CUpdateArchiveCommandE"
	.size	_ZTS13CObjectVectorI21CUpdateArchiveCommandE, 41

	.type	_ZTV13CRecordVectorIyE,@object  # @_ZTV13CRecordVectorIyE
	.section	.data.rel.ro._ZTV13CRecordVectorIyE,"awG",@progbits,_ZTV13CRecordVectorIyE,comdat
	.weak	_ZTV13CRecordVectorIyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIyE, 40

	.type	_ZTI13CRecordVectorIyE,@object  # @_ZTI13CRecordVectorIyE
	.section	.data.rel.ro._ZTI13CRecordVectorIyE,"awG",@progbits,_ZTI13CRecordVectorIyE,comdat
	.weak	_ZTI13CRecordVectorIyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIyE, 24

	.type	_ZTS13CRecordVectorIyE,@object  # @_ZTS13CRecordVectorIyE
	.section	.rodata._ZTS13CRecordVectorIyE,"aG",@progbits,_ZTS13CRecordVectorIyE,comdat
	.weak	_ZTS13CRecordVectorIyE
_ZTS13CRecordVectorIyE:
	.asciz	"13CRecordVectorIyE"
	.size	_ZTS13CRecordVectorIyE, 19

	.type	_ZTV7CCodecs,@object            # @_ZTV7CCodecs
	.section	.data.rel.ro._ZTV7CCodecs,"awG",@progbits,_ZTV7CCodecs,comdat
	.weak	_ZTV7CCodecs
	.p2align	3, 0x0
_ZTV7CCodecs:
	.dword	0
	.dword	_ZTI7CCodecs
	.dword	_ZN7CCodecs14QueryInterfaceERK4GUIDPPv
	.dword	_ZN7CCodecs6AddRefEv
	.dword	_ZN7CCodecs7ReleaseEv
	.dword	_ZN7CCodecsD2Ev
	.dword	_ZN7CCodecsD0Ev
	.size	_ZTV7CCodecs, 56

	.type	_ZTI7CCodecs,@object            # @_ZTI7CCodecs
	.section	.data.rel.ro._ZTI7CCodecs,"awG",@progbits,_ZTI7CCodecs,comdat
	.weak	_ZTI7CCodecs
	.p2align	3, 0x0
_ZTI7CCodecs:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS7CCodecs
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI8IUnknown
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI7CCodecs, 56

	.type	_ZTS7CCodecs,@object            # @_ZTS7CCodecs
	.section	.rodata._ZTS7CCodecs,"aG",@progbits,_ZTS7CCodecs,comdat
	.weak	_ZTS7CCodecs
_ZTS7CCodecs:
	.asciz	"7CCodecs"
	.size	_ZTS7CCodecs, 9

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.type	_ZTV13CObjectVectorI10CArcInfoExE,@object # @_ZTV13CObjectVectorI10CArcInfoExE
	.section	.data.rel.ro._ZTV13CObjectVectorI10CArcInfoExE,"awG",@progbits,_ZTV13CObjectVectorI10CArcInfoExE,comdat
	.weak	_ZTV13CObjectVectorI10CArcInfoExE
	.p2align	3, 0x0
_ZTV13CObjectVectorI10CArcInfoExE:
	.dword	0
	.dword	_ZTI13CObjectVectorI10CArcInfoExE
	.dword	_ZN13CObjectVectorI10CArcInfoExED2Ev
	.dword	_ZN13CObjectVectorI10CArcInfoExED0Ev
	.dword	_ZN13CObjectVectorI10CArcInfoExE6DeleteEii
	.size	_ZTV13CObjectVectorI10CArcInfoExE, 40

	.type	_ZTI13CObjectVectorI10CArcInfoExE,@object # @_ZTI13CObjectVectorI10CArcInfoExE
	.section	.data.rel.ro._ZTI13CObjectVectorI10CArcInfoExE,"awG",@progbits,_ZTI13CObjectVectorI10CArcInfoExE,comdat
	.weak	_ZTI13CObjectVectorI10CArcInfoExE
	.p2align	3, 0x0
_ZTI13CObjectVectorI10CArcInfoExE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI10CArcInfoExE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI10CArcInfoExE, 24

	.type	_ZTS13CObjectVectorI10CArcInfoExE,@object # @_ZTS13CObjectVectorI10CArcInfoExE
	.section	.rodata._ZTS13CObjectVectorI10CArcInfoExE,"aG",@progbits,_ZTS13CObjectVectorI10CArcInfoExE,comdat
	.weak	_ZTS13CObjectVectorI10CArcInfoExE
_ZTS13CObjectVectorI10CArcInfoExE:
	.asciz	"13CObjectVectorI10CArcInfoExE"
	.size	_ZTS13CObjectVectorI10CArcInfoExE, 30

	.type	_ZTV7CBufferIhE,@object         # @_ZTV7CBufferIhE
	.section	.data.rel.ro._ZTV7CBufferIhE,"awG",@progbits,_ZTV7CBufferIhE,comdat
	.weak	_ZTV7CBufferIhE
	.p2align	3, 0x0
_ZTV7CBufferIhE:
	.dword	0
	.dword	_ZTI7CBufferIhE
	.dword	_ZN7CBufferIhED2Ev
	.dword	_ZN7CBufferIhED0Ev
	.size	_ZTV7CBufferIhE, 32

	.type	_ZTI7CBufferIhE,@object         # @_ZTI7CBufferIhE
	.section	.data.rel.ro._ZTI7CBufferIhE,"awG",@progbits,_ZTI7CBufferIhE,comdat
	.weak	_ZTI7CBufferIhE
	.p2align	3, 0x0
_ZTI7CBufferIhE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS7CBufferIhE
	.size	_ZTI7CBufferIhE, 16

	.type	_ZTS7CBufferIhE,@object         # @_ZTS7CBufferIhE
	.section	.rodata._ZTS7CBufferIhE,"aG",@progbits,_ZTS7CBufferIhE,comdat
	.weak	_ZTS7CBufferIhE
_ZTS7CBufferIhE:
	.asciz	"7CBufferIhE"
	.size	_ZTS7CBufferIhE, 12

	.type	_ZTV13CObjectVectorI11CArcExtInfoE,@object # @_ZTV13CObjectVectorI11CArcExtInfoE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CArcExtInfoE,"awG",@progbits,_ZTV13CObjectVectorI11CArcExtInfoE,comdat
	.weak	_ZTV13CObjectVectorI11CArcExtInfoE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CArcExtInfoE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CArcExtInfoE
	.dword	_ZN13CObjectVectorI11CArcExtInfoED2Ev
	.dword	_ZN13CObjectVectorI11CArcExtInfoED0Ev
	.dword	_ZN13CObjectVectorI11CArcExtInfoE6DeleteEii
	.size	_ZTV13CObjectVectorI11CArcExtInfoE, 40

	.type	_ZTI13CObjectVectorI11CArcExtInfoE,@object # @_ZTI13CObjectVectorI11CArcExtInfoE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CArcExtInfoE,"awG",@progbits,_ZTI13CObjectVectorI11CArcExtInfoE,comdat
	.weak	_ZTI13CObjectVectorI11CArcExtInfoE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CArcExtInfoE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CArcExtInfoE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CArcExtInfoE, 24

	.type	_ZTS13CObjectVectorI11CArcExtInfoE,@object # @_ZTS13CObjectVectorI11CArcExtInfoE
	.section	.rodata._ZTS13CObjectVectorI11CArcExtInfoE,"aG",@progbits,_ZTS13CObjectVectorI11CArcExtInfoE,comdat
	.weak	_ZTS13CObjectVectorI11CArcExtInfoE
_ZTS13CObjectVectorI11CArcExtInfoE:
	.asciz	"13CObjectVectorI11CArcExtInfoE"
	.size	_ZTS13CObjectVectorI11CArcExtInfoE, 31

	.type	.L.str.36,@object               # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"7-Zip cannot find the code that works with archives."
	.size	.L.str.36, 53

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Unsupported archive type"
	.size	.L.str.37, 25

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Everything is Ok"
	.size	.L.str.39, 17

	.type	_ZTIN9NExitCode5EEnumE,@object  # @_ZTIN9NExitCode5EEnumE
	.section	.data.rel.ro._ZTIN9NExitCode5EEnumE,"awG",@progbits,_ZTIN9NExitCode5EEnumE,comdat
	.weak	_ZTIN9NExitCode5EEnumE
	.p2align	3, 0x0
_ZTIN9NExitCode5EEnumE:
	.dword	_ZTVN10__cxxabiv116__enum_type_infoE+16
	.dword	_ZTSN9NExitCode5EEnumE
	.size	_ZTIN9NExitCode5EEnumE, 16

	.type	_ZTSN9NExitCode5EEnumE,@object  # @_ZTSN9NExitCode5EEnumE
	.section	.rodata._ZTSN9NExitCode5EEnumE,"aG",@progbits,_ZTSN9NExitCode5EEnumE,comdat
	.weak	_ZTSN9NExitCode5EEnumE
_ZTSN9NExitCode5EEnumE:
	.asciz	"N9NExitCode5EEnumE"
	.size	_ZTSN9NExitCode5EEnumE, 19

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Incorrect command line"
	.size	.L.str.40, 23

	.type	_ZTV13CObjectVectorI11CStringBaseIwEE,@object # @_ZTV13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTV13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTV13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CStringBaseIwEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CStringBaseIwEE
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.size	_ZTV13CObjectVectorI11CStringBaseIwEE, 40

	.type	_ZTI13CObjectVectorI11CStringBaseIwEE,@object # @_ZTI13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTI13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTI13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CStringBaseIwEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CStringBaseIwEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CStringBaseIwEE, 24

	.type	_ZTS13CObjectVectorI11CStringBaseIwEE,@object # @_ZTS13CObjectVectorI11CStringBaseIwEE
	.section	.rodata._ZTS13CObjectVectorI11CStringBaseIwEE,"aG",@progbits,_ZTS13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTS13CObjectVectorI11CStringBaseIwEE
_ZTS13CObjectVectorI11CStringBaseIwEE:
	.asciz	"13CObjectVectorI11CStringBaseIwEE"
	.size	_ZTS13CObjectVectorI11CStringBaseIwEE, 34

	.type	_ZTV13CRecordVectorIiE,@object  # @_ZTV13CRecordVectorIiE
	.section	.data.rel.ro._ZTV13CRecordVectorIiE,"awG",@progbits,_ZTV13CRecordVectorIiE,comdat
	.weak	_ZTV13CRecordVectorIiE
	.p2align	3, 0x0
_ZTV13CRecordVectorIiE:
	.dword	0
	.dword	_ZTI13CRecordVectorIiE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIiED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIiE, 40

	.type	_ZTI13CRecordVectorIiE,@object  # @_ZTI13CRecordVectorIiE
	.section	.data.rel.ro._ZTI13CRecordVectorIiE,"awG",@progbits,_ZTI13CRecordVectorIiE,comdat
	.weak	_ZTI13CRecordVectorIiE
	.p2align	3, 0x0
_ZTI13CRecordVectorIiE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIiE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIiE, 24

	.type	_ZTS13CRecordVectorIiE,@object  # @_ZTS13CRecordVectorIiE
	.section	.rodata._ZTS13CRecordVectorIiE,"aG",@progbits,_ZTS13CRecordVectorIiE,comdat
	.weak	_ZTS13CRecordVectorIiE
_ZTS13CRecordVectorIiE:
	.asciz	"13CRecordVectorIiE"
	.size	_ZTS13CRecordVectorIiE, 19

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z4endlR13CStdOutStream
	.addrsig_sym _Unwind_Resume
	.addrsig_sym g_StdOut
	.addrsig_sym g_StdErr
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZTI13CObjectVectorIN9NWildcard5CPairEE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13CObjectVectorIN9NWildcard5CPairEE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorIN9NWildcard5CItemEE
	.addrsig_sym _ZTS13CObjectVectorIN9NWildcard5CItemEE
	.addrsig_sym _ZTI13CObjectVectorIN9NWildcard11CCensorNodeEE
	.addrsig_sym _ZTS13CObjectVectorIN9NWildcard11CCensorNodeEE
	.addrsig_sym _ZTI13CObjectVectorI9CPropertyE
	.addrsig_sym _ZTS13CObjectVectorI9CPropertyE
	.addrsig_sym _ZTI13CObjectVectorI21CUpdateArchiveCommandE
	.addrsig_sym _ZTS13CObjectVectorI21CUpdateArchiveCommandE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTI7CCodecs
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS7CCodecs
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTI13CObjectVectorI10CArcInfoExE
	.addrsig_sym _ZTS13CObjectVectorI10CArcInfoExE
	.addrsig_sym _ZTI7CBufferIhE
	.addrsig_sym _ZTS7CBufferIhE
	.addrsig_sym _ZTI13CObjectVectorI11CArcExtInfoE
	.addrsig_sym _ZTS13CObjectVectorI11CArcExtInfoE
	.addrsig_sym _ZTIN9NExitCode5EEnumE
	.addrsig_sym _ZTVN10__cxxabiv116__enum_type_infoE
	.addrsig_sym _ZTSN9NExitCode5EEnumE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
