	.file	"hash2.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	ori	$a2, $zero, 2
	ori	$fp, $zero, 2000
	bne	$a0, $a2, .LBB0_2
# %bb.1:                                # %cond.true
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB0_2:                                # %cond.end
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr0, $sp, 120
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 112
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:                                # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEEC2Ev.exit
	xvld	$xr0, $sp, 32                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 80
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 100
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:                                # %for.cond.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	lu12i.w	$a0, 2
	ori	$s4, $a0, 1808
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %invoke.cont6
                                        #   in Loop: Header=BB0_6 Depth=1
	st.w	$s0, $s3, 16
	addi.w	$s0, $s0, 1
	beq	$s0, $s4, .LBB0_17
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	addi.d	$a0, $sp, 152
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	move	$s2, $a0
	addi.d	$a1, $a1, 1
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.bu	$a1, $s2, 0
	beqz	$a1, .LBB0_10
# %bb.8:                                # %for.body.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s2, 1
	.p2align	4, , 16
.LBB0_9:                                # %for.body.i.i.i.i.i.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a3, $a1
	ld.bu	$a1, $a2, 0
	alsl.d	$a0, $a0, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_9
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $zero
.LBB0_11:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_.exit.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a1, $sp, 128
	ld.d	$s6, $sp, 120
	sub.d	$a1, $a1, $s6
	srai.d	$a1, $a1, 3
	mod.du	$s7, $a0, $a1
	slli.d	$a0, $s7, 3
	ldx.d	$s5, $s6, $a0
	beqz	$s5, .LBB0_15
# %bb.12:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $s5
	.p2align	4, , 16
.LBB0_13:                               # %for.body.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.14:                               # %for.inc.i.i
                                        #   in Loop: Header=BB0_13 Depth=2
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB0_13
.LBB0_15:                               # %for.end.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
.Ltmp8:                                 # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.16:                               # %call5.i.i.i.i.i.noexc
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s3, $a0
	alsl.d	$a0, $s7, $s6, 3
	st.d	$s2, $s3, 8
	ld.d	$a1, $sp, 144
	st.w	$zero, $s3, 16
	st.d	$s5, $s3, 0
	st.d	$s3, $a0, 0
	addi.d	$a0, $a1, 1
	st.d	$a0, $sp, 144
	b	.LBB0_5
.LBB0_17:                               # %for.cond9.preheader
	addi.w	$a1, $fp, 0
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_95
# %bb.18:                               # %for.body12.lr.ph
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a0, 232
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 224
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               # %for.cond.cleanup23
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB0_95
.LBB0_20:                               # %for.body12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_88 Depth 2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #           Child Loop BB0_34 Depth 5
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
	ld.d	$a1, $sp, 128
	ld.d	$a0, $sp, 120
	beq	$a1, $a0, .LBB0_19
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	sub.d	$a1, $a1, $a0
	srai.d	$a2, $a1, 3
	.p2align	4, , 16
.LBB0_22:                               # %for.body.i.i65
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a0, 0
	bnez	$a1, .LBB0_88
# %bb.23:                               # %for.cond.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_22
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_24:                               # %for.body.preheader.i.i.i.i.i.i
                                        #   in Loop: Header=BB0_88 Depth=2
	slli.d	$s2, $s5, 3
.Ltmp11:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.25:                               # %call5.i.i.i2.i.i24.i.noexc
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s5, $s0, 3
	add.d	$a0, $s0, $s2
	beq	$s3, $s1, .LBB0_37
# %bb.26:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %while.end.i
                                        #   in Loop: Header=BB0_28 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $s6, .LBB0_36
.LBB0_28:                               # %for.body.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_32 Depth 4
                                        #           Child Loop BB0_34 Depth 5
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	beqz	$a3, .LBB0_27
# %bb.29:                               # %while.body.i337.preheader
                                        #   in Loop: Header=BB0_28 Depth=3
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_32 Depth=4
	move	$a6, $zero
.LBB0_31:                               # %invoke.cont11.i
                                        #   in Loop: Header=BB0_32 Depth=4
	ld.d	$a5, $a3, 0
	mod.du	$a6, $a6, $s5
	st.d	$a5, $a4, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a6, $s0, $a5
	st.d	$a6, $a3, 0
	stx.d	$a3, $s0, $a5
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB0_27
.LBB0_32:                               # %while.body.i337
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_34 Depth 5
	ld.d	$a7, $a3, 8
	ld.bu	$a5, $a7, 0
	beqz	$a5, .LBB0_30
# %bb.33:                               # %for.body.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB0_32 Depth=4
	move	$a6, $zero
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB0_34:                               # %for.body.i.i.i.i.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        #         Parent Loop BB0_32 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$a6, $a6, $a6, 2
	add.d	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB0_34
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_88 Depth=2
	move	$s0, $s1
	move	$a0, $s3
	b	.LBB0_39
.LBB0_36:                               # %for.cond.cleanup.thread.i
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a2, $sp, 136
	st.d	$s0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	b	.LBB0_38
.LBB0_37:                               # %for.cond.cleanup.i
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a2, $sp, 136
	st.d	$s0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	beqz	$s3, .LBB0_39
.LBB0_38:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_88 Depth=2
	sub.d	$a1, $a2, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	ld.d	$s0, $sp, 120
.LBB0_39:                               # %.noexc105
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.bu	$a1, $fp, 0
	beqz	$a1, .LBB0_42
# %bb.40:                               # %for.body.i.i.i.i.i.i.i80.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB0_41:                               # %for.body.i.i.i.i.i.i.i80
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$a4, $a1
	ld.bu	$a1, $a3, 0
	alsl.d	$a2, $a2, $a2, 2
	add.d	$a2, $a2, $a4
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB0_41
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
.LBB0_43:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_.exit.i.i88
                                        #   in Loop: Header=BB0_88 Depth=2
	sub.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 3
	mod.du	$s2, $a2, $a0
	slli.d	$a0, $s2, 3
	ldx.d	$s1, $s0, $a0
	beqz	$s1, .LBB0_47
# %bb.44:                               # %for.body.i.i93.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s3, $s1
	.p2align	4, , 16
.LBB0_45:                               # %for.body.i.i93
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_49
# %bb.46:                               # %for.inc.i.i98
                                        #   in Loop: Header=BB0_45 Depth=3
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB0_45
.LBB0_47:                               # %for.end.i.i100
                                        #   in Loop: Header=BB0_88 Depth=2
.Ltmp13:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.48:                               # %call5.i.i.i.i.i.noexc106
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s6, $zero
	alsl.d	$a1, $s2, $s0, 3
	st.d	$fp, $a0, 8
	ld.d	$a2, $sp, 144
	st.w	$zero, $a0, 16
	st.d	$s1, $a0, 0
	st.d	$a0, $a1, 0
	addi.d	$a0, $a2, 1
	st.d	$a0, $sp, 144
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               # %invoke.cont27.loopexit
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.w	$s6, $s3, 16
.LBB0_50:                               # %invoke.cont27
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a0, $sp, 104
	ld.d	$s3, $sp, 88
	ld.d	$s1, $sp, 80
	ld.d	$fp, $s8, 8
	addi.d	$a0, $a0, 1
	sub.d	$a1, $s3, $s1
	srai.d	$s7, $a1, 3
	bgeu	$s7, $a0, .LBB0_66
# %bb.51:                               # %while.body.i.i.i.i.i354.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	ori	$a2, $zero, 29
	pcalau12i	$a1, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	.p2align	4, , 16
.LBB0_52:                               # %while.body.i.i.i.i.i354
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$a3, $a2, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	alsl.d	$a5, $a3, $a1, 3
	sltu	$a4, $a4, $a0
	addi.d	$a5, $a5, 8
	nor	$a6, $a3, $zero
	add.d	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a4
	masknez	$a1, $a1, $a4
	or	$a1, $a3, $a1
	bgtz	$a2, .LBB0_52
# %bb.53:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit.i369
                                        #   in Loop: Header=BB0_88 Depth=2
	pcalau12i	$a0, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a2, $a0, 232
	xor	$a2, $a1, $a2
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	addi.d	$a0, $a0, 224
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	ld.d	$s5, $a0, 0
	bgeu	$s7, $s5, .LBB0_66
# %bb.54:                               # %if.then4.i374
                                        #   in Loop: Header=BB0_88 Depth=2
	srli.d	$a0, $s5, 60
	bnez	$a0, .LBB0_93
# %bb.55:                               # %for.body.preheader.i.i.i.i.i.i376
                                        #   in Loop: Header=BB0_88 Depth=2
	slli.d	$s2, $s5, 3
.Ltmp15:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.56:                               # %call5.i.i.i2.i.i24.i.noexc417
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s5, $s0, 3
	add.d	$a0, $s0, $s2
	beq	$s3, $s1, .LBB0_68
# %bb.57:                               # %for.body.i381.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %while.end.i404
                                        #   in Loop: Header=BB0_59 Depth=3
	addi.d	$a2, $a2, 1
	beq	$a2, $s7, .LBB0_67
.LBB0_59:                               # %for.body.i381
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	beqz	$a3, .LBB0_58
# %bb.60:                               # %while.body.i386.preheader
                                        #   in Loop: Header=BB0_59 Depth=3
	alsl.d	$a4, $a2, $s1, 3
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_61:                               #   in Loop: Header=BB0_63 Depth=4
	move	$a6, $zero
.LBB0_62:                               # %invoke.cont11.i398
                                        #   in Loop: Header=BB0_63 Depth=4
	ld.d	$a5, $a3, 0
	mod.du	$a6, $a6, $s5
	st.d	$a5, $a4, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a6, $s0, $a5
	st.d	$a6, $a3, 0
	stx.d	$a3, $s0, $a5
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB0_58
.LBB0_63:                               # %while.body.i386
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_65 Depth 5
	ld.d	$a7, $a3, 8
	ld.bu	$a5, $a7, 0
	beqz	$a5, .LBB0_61
# %bb.64:                               # %for.body.i.i.i.i.i390.preheader
                                        #   in Loop: Header=BB0_63 Depth=4
	move	$a6, $zero
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB0_65:                               # %for.body.i.i.i.i.i390
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        #         Parent Loop BB0_63 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$a6, $a6, $a6, 2
	add.d	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB0_65
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_88 Depth=2
	move	$s0, $s1
	move	$a0, $s3
	b	.LBB0_70
.LBB0_67:                               # %for.cond.cleanup.thread.i407
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a2, $sp, 96
	st.d	$s0, $sp, 80
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	b	.LBB0_69
.LBB0_68:                               # %for.cond.cleanup.i412
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a2, $sp, 96
	st.d	$s0, $sp, 80
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 96
	beqz	$s3, .LBB0_70
.LBB0_69:                               # %if.then.i.i.i.i409
                                        #   in Loop: Header=BB0_88 Depth=2
	sub.d	$a1, $a2, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	ld.d	$s0, $sp, 80
.LBB0_70:                               # %.noexc145
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.bu	$a1, $fp, 0
	beqz	$a1, .LBB0_73
# %bb.71:                               # %for.body.i.i.i.i.i.i.i120.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
	addi.d	$a3, $fp, 1
	.p2align	4, , 16
.LBB0_72:                               # %for.body.i.i.i.i.i.i.i120
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$a4, $a1
	ld.bu	$a1, $a3, 0
	alsl.d	$a2, $a2, $a2, 2
	add.d	$a2, $a2, $a4
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB0_72
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_88 Depth=2
	move	$a2, $zero
.LBB0_74:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE10_M_bkt_numERKS5_.exit.i.i128
                                        #   in Loop: Header=BB0_88 Depth=2
	sub.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 3
	mod.du	$s3, $a2, $a0
	slli.d	$a0, $s3, 3
	ldx.d	$s2, $s0, $a0
	beqz	$s2, .LBB0_78
# %bb.75:                               # %for.body.i.i133.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s1, $s2
	.p2align	4, , 16
.LBB0_76:                               # %for.body.i.i133
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_80
# %bb.77:                               # %for.inc.i.i138
                                        #   in Loop: Header=BB0_76 Depth=3
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB0_76
.LBB0_78:                               # %for.end.i.i140
                                        #   in Loop: Header=BB0_88 Depth=2
.Ltmp17:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.79:                               # %call5.i.i.i.i.i.noexc146
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$s1, $a0
	move	$a0, $zero
	alsl.d	$a1, $s3, $s0, 3
	st.d	$fp, $s1, 8
	ld.d	$a2, $sp, 104
	st.w	$zero, $s1, 16
	st.d	$s2, $s1, 0
	st.d	$s1, $a1, 0
	addi.d	$a1, $a2, 1
	st.d	$a1, $sp, 104
	ld.d	$a1, $s8, 0
	add.d	$a0, $a0, $s6
	st.w	$a0, $s1, 16
	bnez	$a1, .LBB0_88
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_80:                               # %invoke.cont32.loopexit
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.w	$a0, $s1, 16
	ld.d	$a1, $s8, 0
	add.d	$a0, $a0, $s6
	st.w	$a0, $s1, 16
	bnez	$a1, .LBB0_88
.LBB0_81:                               # %if.then.i
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a2, $s8, 8
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB0_84
# %bb.82:                               # %for.body.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	move	$a0, $zero
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_83:                               # %for.body.i.i.i.i.i.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$a3, $a1
	ld.bu	$a1, $a2, 0
	alsl.d	$a0, $a0, $a0, 2
	add.d	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_83
	b	.LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_88 Depth=2
	move	$a0, $zero
.LBB0_85:                               # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a1, $sp, 128
	ld.d	$a2, $sp, 120
	sub.d	$a1, $a1, $a2
	srai.d	$a3, $a1, 3
	mod.du	$a0, $a0, $a3
	.p2align	4, , 16
.LBB0_86:                               # %land.rhs.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $a0, 1
	bgeu	$a0, $a3, .LBB0_19
# %bb.87:                               # %while.body.i
                                        #   in Loop: Header=BB0_86 Depth=3
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $a2, $a1
	beqz	$a1, .LBB0_86
	.p2align	4, , 16
.LBB0_88:                               # %for.body24
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_32 Depth 4
                                        #           Child Loop BB0_34 Depth 5
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_63 Depth 4
                                        #           Child Loop BB0_65 Depth 5
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
	ld.d	$a0, $sp, 144
	ld.d	$s3, $sp, 128
	ld.d	$s1, $sp, 120
	move	$s8, $a1
	ld.d	$fp, $a1, 8
	addi.d	$a0, $a0, 1
	sub.d	$a1, $s3, $s1
	srai.d	$s6, $a1, 3
	bgeu	$s6, $a0, .LBB0_35
# %bb.89:                               # %while.body.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB0_88 Depth=2
	ori	$a2, $zero, 29
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_90:                               # %while.body.i.i.i.i.i
                                        #   Parent Loop BB0_20 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$a3, $a2, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	alsl.d	$a5, $a3, $a1, 3
	sltu	$a4, $a4, $a0
	addi.d	$a5, $a5, 8
	nor	$a6, $a3, $zero
	add.d	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a4
	masknez	$a1, $a1, $a4
	or	$a1, $a3, $a1
	bgtz	$a2, .LBB0_90
# %bb.91:                               # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit.i
                                        #   in Loop: Header=BB0_88 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$s5, $a0, 0
	bgeu	$s6, $s5, .LBB0_35
# %bb.92:                               # %if.then4.i
                                        #   in Loop: Header=BB0_88 Depth=2
	srli.d	$a0, $s5, 60
	beqz	$a0, .LBB0_24
.LBB0_93:                               # %if.then.i.i.i.invoke
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.94:                               # %if.then.i.i.i.cont
.LBB0_95:                               # %for.cond.cleanup11
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.96:                               # %.noexc59
	ld.d	$a0, $sp, 128
	ld.d	$s0, $sp, 120
	sub.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, 19
	ori	$s3, $a1, 3100
	mod.du	$s4, $s3, $a0
	slli.d	$a0, $s4, 3
	ldx.d	$s2, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s1, $a0, %pc_lo12(.L.str.1)
	beqz	$s2, .LBB0_100
# %bb.97:                               # %for.body.i.i47.preheader
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	move	$s5, $s2
	.p2align	4, , 16
.LBB0_98:                               # %for.body.i.i47
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_102
# %bb.99:                               # %for.inc.i.i52
                                        #   in Loop: Header=BB0_98 Depth=1
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB0_98
.LBB0_100:                              # %for.end.i.i54
.Ltmp25:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.101:                              # %call5.i.i.i.i.i.noexc60
	move	$a1, $zero
	alsl.d	$a2, $s4, $s0, 3
	st.d	$s1, $a0, 8
	ld.d	$a3, $sp, 144
	st.w	$zero, $a0, 16
	st.d	$s2, $a0, 0
	st.d	$a0, $a2, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 144
	b	.LBB0_103
.LBB0_102:                              # %invoke.cont44.loopexit
	ld.w	$a1, $s5, 16
.LBB0_103:                              # %invoke.cont44
.Ltmp27:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.104:                              # %invoke.cont46
.Ltmp29:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.105:                              # %invoke.cont48
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.106:                              # %.noexc190
	ld.d	$a0, $sp, 128
	ld.d	$s5, $sp, 120
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	lu12i.w	$a1, 2470
	ori	$s4, $a1, 1147
	mod.du	$s7, $s4, $a0
	slli.d	$a0, $s7, 3
	ldx.d	$s6, $s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	beqz	$s6, .LBB0_110
# %bb.107:                              # %for.body.i.i178.preheader
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	move	$s8, $s6
	.p2align	4, , 16
.LBB0_108:                              # %for.body.i.i178
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_112
# %bb.109:                              # %for.inc.i.i183
                                        #   in Loop: Header=BB0_108 Depth=1
	ld.d	$s8, $s8, 0
	bnez	$s8, .LBB0_108
.LBB0_110:                              # %for.end.i.i185
.Ltmp34:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.111:                              # %call5.i.i.i.i.i.noexc191
	move	$a1, $zero
	alsl.d	$a2, $s7, $s5, 3
	st.d	$s2, $a0, 8
	ld.d	$a3, $sp, 144
	st.w	$zero, $a0, 16
	st.d	$s6, $a0, 0
	st.d	$a0, $a2, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 144
	b	.LBB0_113
.LBB0_112:                              # %invoke.cont52.loopexit
	ld.w	$a1, $s8, 16
.LBB0_113:                              # %invoke.cont52
.Ltmp36:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.114:                              # %invoke.cont54
.Ltmp38:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.115:                              # %invoke.cont56
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
.Ltmp41:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.116:                              # %.noexc232
	ld.d	$a0, $sp, 88
	ld.d	$s5, $sp, 80
	sub.d	$a0, $a0, $s5
	srai.d	$a0, $a0, 3
	mod.du	$s6, $s3, $a0
	slli.d	$a0, $s6, 3
	ldx.d	$s3, $s5, $a0
	beqz	$s3, .LBB0_120
# %bb.117:                              # %for.body.i.i220.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	move	$s7, $s3
	.p2align	4, , 16
.LBB0_118:                              # %for.body.i.i220
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_122
# %bb.119:                              # %for.inc.i.i225
                                        #   in Loop: Header=BB0_118 Depth=1
	ld.d	$s7, $s7, 0
	bnez	$s7, .LBB0_118
.LBB0_120:                              # %for.end.i.i227
.Ltmp43:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.121:                              # %call5.i.i.i.i.i.noexc233
	move	$a1, $zero
	alsl.d	$a2, $s6, $s5, 3
	st.d	$s1, $a0, 8
	ld.d	$a3, $sp, 104
	st.w	$zero, $a0, 16
	st.d	$s3, $a0, 0
	st.d	$a0, $a2, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 104
	b	.LBB0_123
.LBB0_122:                              # %invoke.cont60.loopexit
	ld.w	$a1, $s7, 16
.LBB0_123:                              # %invoke.cont60
.Ltmp45:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.124:                              # %invoke.cont62
.Ltmp47:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.125:                              # %invoke.cont64
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.126:                              # %.noexc274
	ld.d	$a0, $sp, 88
	ld.d	$s1, $sp, 80
	sub.d	$a0, $a0, $s1
	srai.d	$a0, $a0, 3
	mod.du	$s4, $s4, $a0
	slli.d	$a0, $s4, 3
	ldx.d	$s3, $s1, $a0
	beqz	$s3, .LBB0_130
# %bb.127:                              # %for.body.i.i262.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	move	$s5, $s3
	.p2align	4, , 16
.LBB0_128:                              # %for.body.i.i262
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_132
# %bb.129:                              # %for.inc.i.i267
                                        #   in Loop: Header=BB0_128 Depth=1
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB0_128
.LBB0_130:                              # %for.end.i.i269
.Ltmp52:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.131:                              # %call5.i.i.i.i.i.noexc275
	move	$a1, $zero
	alsl.d	$a2, $s4, $s1, 3
	st.d	$s2, $a0, 8
	ld.d	$a3, $sp, 104
	st.w	$zero, $a0, 16
	st.d	$s3, $a0, 0
	st.d	$a0, $a2, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 104
	b	.LBB0_133
.LBB0_132:                              # %invoke.cont68.loopexit
	ld.w	$a1, $s5, 16
.LBB0_133:                              # %invoke.cont68
.Ltmp54:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.134:                              # %invoke.cont70
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB0_164
# %bb.135:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB0_137
# %bb.136:                              # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB0_139
.LBB0_137:                              # %if.end.i.i.i
.Ltmp56:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.138:                              # %.noexc424
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp58:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp59:                                # EH_LABEL
.LBB0_139:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp60:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.140:                              # %call1.i.noexc
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.141:                              # %invoke.cont72
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB0_162
# %bb.142:                              # %for.cond.preheader.i.i.i
	ld.d	$a1, $sp, 88
	ld.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB0_149
# %bb.143:                              # %for.body.i.i.i.preheader
	move	$fp, $zero
	b	.LBB0_145
	.p2align	4, , 16
.LBB0_144:                              # %while.end.i.i.i
                                        #   in Loop: Header=BB0_145 Depth=1
	addi.d	$fp, $fp, 1
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	stx.d	$zero, $a0, $s0
	bgeu	$fp, $a2, .LBB0_149
.LBB0_145:                              # %for.body.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_147 Depth 2
	slli.d	$s0, $fp, 3
	ldx.d	$a3, $a0, $s0
	beqz	$a3, .LBB0_144
# %bb.146:                              # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB0_145 Depth=1
	move	$a0, $a3
	.p2align	4, , 16
.LBB0_147:                              # %while.body.i.i.i
                                        #   Parent Loop BB0_145 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB0_147
# %bb.148:                              # %while.end.loopexit.i.i.i
                                        #   in Loop: Header=BB0_145 Depth=1
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 88
	b	.LBB0_144
.LBB0_149:                              # %for.cond.cleanup.i.i.i
	st.d	$zero, $sp, 104
	beqz	$a0, .LBB0_151
.LBB0_150:                              # %if.then.i.i.i.i.i288
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_151:                              # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev.exit
	ld.d	$a0, $sp, 144
	beqz	$a0, .LBB0_163
# %bb.152:                              # %for.cond.preheader.i.i.i293
	ld.d	$a1, $sp, 128
	ld.d	$a0, $sp, 120
	beq	$a1, $a0, .LBB0_159
# %bb.153:                              # %for.body.i.i.i300.preheader
	move	$fp, $zero
	b	.LBB0_155
	.p2align	4, , 16
.LBB0_154:                              # %while.end.i.i.i310
                                        #   in Loop: Header=BB0_155 Depth=1
	addi.d	$fp, $fp, 1
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	stx.d	$zero, $a0, $s0
	bgeu	$fp, $a2, .LBB0_159
.LBB0_155:                              # %for.body.i.i.i300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_157 Depth 2
	slli.d	$s0, $fp, 3
	ldx.d	$a3, $a0, $s0
	beqz	$a3, .LBB0_154
# %bb.156:                              # %while.body.i.i.i304.preheader
                                        #   in Loop: Header=BB0_155 Depth=1
	move	$a0, $a3
	.p2align	4, , 16
.LBB0_157:                              # %while.body.i.i.i304
                                        #   Parent Loop BB0_155 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB0_157
# %bb.158:                              # %while.end.loopexit.i.i.i307
                                        #   in Loop: Header=BB0_155 Depth=1
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 128
	b	.LBB0_154
.LBB0_159:                              # %for.cond.cleanup.i.i.i319
	st.d	$zero, $sp, 144
	beqz	$a0, .LBB0_161
.LBB0_160:                              # %if.then.i.i.i.i.i322
	ld.d	$a1, $sp, 136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_161:                              # %_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev.exit329
	move	$a0, $zero
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_162:                              # %entry.invoke.cont_crit_edge.i.i
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB0_150
	b	.LBB0_151
.LBB0_163:                              # %entry.invoke.cont_crit_edge.i.i327
	ld.d	$a0, $sp, 120
	bnez	$a0, .LBB0_160
	b	.LBB0_161
.LBB0_164:                              # %if.then.i.i.i422
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.165:                              # %.noexc423
.LBB0_166:                              # %lpad.i.i14
.Ltmp5:                                 # EH_LABEL
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	beqz	$a2, .LBB0_179
# %bb.167:                              # %if.then.i.i.i.i.i16
	ld.d	$a0, $sp, 96
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_168:                              # %lpad.i.i
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beqz	$a2, .LBB0_170
# %bb.169:                              # %if.then.i.i.i.i.i
	ld.d	$a0, $sp, 136
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_170:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_171:                              # %lpad59
.Ltmp49:                                # EH_LABEL
	b	.LBB0_178
.LBB0_172:                              # %lpad51
.Ltmp40:                                # EH_LABEL
	b	.LBB0_178
.LBB0_173:                              # %lpad43
.Ltmp31:                                # EH_LABEL
	b	.LBB0_178
.LBB0_174:                              # %lpad67
.Ltmp66:                                # EH_LABEL
	b	.LBB0_178
.LBB0_175:                              # %lpad13.loopexit.split-lp
.Ltmp22:                                # EH_LABEL
	b	.LBB0_178
.LBB0_176:                              # %lpad5
.Ltmp10:                                # EH_LABEL
	b	.LBB0_178
.LBB0_177:                              # %lpad13.loopexit
.Ltmp19:                                # EH_LABEL
.LBB0_178:                              # %ehcleanup78
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev)
	jirl	$ra, $ra, 0
.LBB0_179:                              # %ehcleanup79
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp30-.Ltmp25                #   Call between .Ltmp25 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp39-.Ltmp34                #   Call between .Ltmp34 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp48-.Ltmp43                #   Call between .Ltmp43 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp63-.Ltmp52                #   Call between .Ltmp52 and .Ltmp63
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Lfunc_end0-.Ltmp65            #   Call between .Ltmp65 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,"axG",@progbits,_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,comdat
	.weak	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev # -- Begin function _ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
	.p2align	2
	.type	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev,@function
_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev: # @_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB1_10
# %bb.1:                                # %for.cond.preheader.i.i
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 8
	beq	$a1, $a0, .LBB1_8
# %bb.2:                                # %for.body.i.i.preheader
	move	$s0, $zero
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %while.end.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s0, $s0, 1
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	stx.d	$zero, $a0, $s1
	bgeu	$s0, $a2, .LBB1_8
.LBB1_4:                                # %for.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	slli.d	$s1, $s0, 3
	ldx.d	$a3, $a0, $s1
	beqz	$a3, .LBB1_3
# %bb.5:                                # %while.body.i.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $a3
	.p2align	4, , 16
.LBB1_6:                                # %while.body.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	bnez	$s2, .LBB1_6
# %bb.7:                                # %while.end.loopexit.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	b	.LBB1_3
.LBB1_8:                                # %for.cond.cleanup.i.i
	st.d	$zero, $fp, 32
	beqz	$a0, .LBB1_11
.LBB1_9:                                # %if.then.i.i.i.i
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_10:                               # %entry.invoke.cont_crit_edge.i
	ld.d	$a0, $fp, 8
	bnez	$a0, .LBB1_9
.LBB1_11:                               # %_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEED2Ev.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev, .Lfunc_end1-_ZN9__gnu_cxx8hash_mapIPKciNS_4hashIS2_EE5eqstrSaIiEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,"axG",@progbits,_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,comdat
	.weak	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm # -- Begin function _ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
	.p2align	2
	.type	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm,@function
_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm: # @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
	.cfi_startproc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ori	$a2, $zero, 29
	pcalau12i	$a0, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	.p2align	4, , 16
.LBB2_1:                                # %while.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a3, $a2, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	alsl.d	$a5, $a3, $a0, 3
	sltu	$a4, $a4, $a1
	addi.d	$a5, $a5, 8
	nor	$a6, $a3, $zero
	add.d	$a2, $a2, $a6
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a4
	masknez	$a0, $a0, $a4
	or	$a0, $a3, $a0
	bgtz	$a2, .LBB2_1
# %bb.2:                                # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit
	pcalau12i	$a1, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a2, $a1, 232
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	addi.d	$a1, $a1, 224
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ld.d	$s0, $a0, 0
	srli.d	$a0, $s0, 60
	bnez	$a0, .LBB2_10
# %bb.3:                                # %if.end.i
	ld.d	$a0, $fp, 24
	ld.d	$s2, $fp, 8
	ld.d	$a1, $fp, 16
	sub.d	$s3, $a0, $s2
	srai.d	$a0, $s3, 3
	addi.d	$s1, $fp, 8
	bgeu	$a0, $s0, .LBB2_9
# %bb.4:                                # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_M_allocateEm.exit.i
	sub.d	$s4, $a1, $s2
	slli.d	$a0, $s0, 3
	move	$s6, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s6, $s2, .LBB2_6
# %bb.5:                                # %if.then.i.i.i.i
	move	$a0, $s5
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
	beqz	$s2, .LBB2_8
# %bb.7:                                # %if.then.i.i
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m.exit.i
	st.d	$s5, $fp, 8
	add.d	$a1, $s5, $s4
	st.d	$a1, $fp, 16
	alsl.d	$a0, $s0, $s5, 3
	st.d	$a0, $fp, 24
.LBB2_9:                                # %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE7reserveEm.exit
	st.d	$zero, $sp, 16
	addi.d	$a3, $sp, 16
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 32
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
.LBB2_10:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm, .Lfunc_end2-_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE21_M_initialize_bucketsEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,"axG",@progbits,_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,comdat
	.weak	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_ # -- Begin function _ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
	.p2align	2
	.type	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_,@function
_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_: # @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
	.cfi_startproc
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
	beqz	$a2, .LBB3_58
# %bb.1:                                # %if.then
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s4, $a0, 8
	sub.d	$a0, $s5, $s4
	srai.d	$a0, $a0, 3
	bgeu	$a0, $a2, .LBB3_5
# %bb.2:                                # %if.else43
	ld.d	$s2, $s0, 0
	sub.d	$a0, $s4, $s2
	srai.d	$a1, $a0, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s1, .LBB3_66
# %bb.3:                                # %for.body.preheader.i.i.i83
	move	$s3, $a3
	sltu	$a2, $s1, $a1
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s6, $a1, $a0
	sub.d	$s7, $fp, $s2
	slli.d	$a0, $s6, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	move	$s3, $a0
	ori	$a2, $zero, 8
	add.d	$a0, $a0, $s7
	bgeu	$s1, $a2, .LBB3_24
# %bb.4:
	move	$a2, $s1
	b	.LBB3_27
.LBB3_5:                                # %if.then4
	ld.d	$s2, $a3, 0
	sub.d	$a0, $s4, $fp
	srai.d	$a1, $a0, 3
	bgeu	$s1, $a1, .LBB3_21
# %bb.6:                                # %if.then12
	slli.d	$s3, $s1, 3
	sub.d	$a3, $zero, $s3
	sub.d	$a0, $s4, $s3
	beqz	$a3, .LBB3_13
# %bb.7:                                # %for.body.i.i.i.i.preheader
	addi.d	$a1, $s1, -1
	bstrpick.d	$a4, $a1, 60, 0
	ori	$a5, $zero, 7
	move	$a1, $a0
	move	$a2, $s4
	bltu	$a4, $a5, .LBB3_12
# %bb.8:                                # %for.body.i.i.i.i.preheader
	bstrpick.d	$a1, $s1, 60, 3
	slli.d	$a5, $a1, 3
	move	$a1, $a0
	move	$a2, $s4
	beqz	$a5, .LBB3_12
# %bb.9:                                # %vector.ph166
	addi.d	$a4, $a4, 1
	bstrpick.d	$a1, $a4, 61, 3
	slli.d	$a5, $a1, 3
	slli.d	$a2, $a1, 6
	add.d	$a1, $a0, $a2
	add.d	$a2, $s4, $a2
	move	$a6, $a5
	move	$a7, $s4
	.p2align	4, , 16
.LBB3_10:                               # %vector.body169
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a7, $a3
	xvldx	$xr0, $a7, $a3
	xvld	$xr1, $t0, 32
	xvst	$xr0, $a7, 0
	xvst	$xr1, $a7, 32
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 64
	bnez	$a6, .LBB3_10
# %bb.11:                               # %middle.block178
	beq	$a4, $a5, .LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bne	$a1, $s4, .LBB3_12
.LBB3_13:                               # %invoke.cont
	alsl.d	$a1, $s1, $s4, 3
	st.d	$a1, $s0, 8
	sub.d	$a2, $a0, $fp
	srai.d	$a1, $a2, 3
	ori	$a3, $zero, 2
	sub.d	$a0, $s4, $a2
	blt	$a1, $a3, .LBB3_67
# %bb.14:                               # %if.then.i
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %invoke.cont21
	addi.d	$a1, $s3, -8
	ori	$a2, $zero, 56
	move	$a0, $fp
	bltu	$a1, $a2, .LBB3_19
# %bb.16:                               # %vector.ph184
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a0, $fp, $a0
	xvreplgr2vr.d	$xr0, $s2
	addi.d	$a3, $fp, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_17:                               # %vector.body189
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB3_17
# %bb.18:                               # %middle.block194
	beq	$a1, $a2, .LBB3_58
.LBB3_19:                               # %for.body.i.preheader
	alsl.d	$a1, $s1, $fp, 3
	.p2align	4, , 16
.LBB3_20:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s2, $a0, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $a1, .LBB3_20
	b	.LBB3_58
.LBB3_21:                               # %if.else
	sub.d	$a3, $s1, $a1
	move	$a1, $s4
	beqz	$a3, .LBB3_44
# %bb.22:                               # %for.body.i.i.i.preheader
	ori	$a1, $zero, 8
	bgeu	$a3, $a1, .LBB3_40
# %bb.23:
	move	$a2, $a3
	move	$a1, $s4
	b	.LBB3_43
.LBB3_24:                               # %vector.ph199
	move	$a3, $s1
	bstrins.d	$a3, $zero, 2, 0
	andi	$a2, $s1, 7
	alsl.d	$a0, $a3, $a0, 3
	xvreplgr2vr.d	$xr0, $a1
	add.d	$a4, $s7, $s3
	addi.d	$a4, $a4, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_25:                               # %vector.body204
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_25
# %bb.26:                               # %middle.block209
	beq	$s1, $a3, .LBB3_28
	.p2align	4, , 16
.LBB3_27:                               # %for.body.i.i.i85
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.d	$a1, $a0, 0
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_27
.LBB3_28:                               # %invoke.cont58
	move	$a0, $s3
	beq	$s2, $fp, .LBB3_35
# %bb.29:                               # %for.body.i.i.i.i94.preheader
	addi.d	$a2, $s7, -8
	ori	$a3, $zero, 56
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a2, $a3, .LBB3_34
# %bb.30:                               # %for.body.i.i.i.i94.preheader
	sub.d	$a3, $s3, $s2
	ori	$a4, $zero, 64
	move	$a1, $s2
	move	$a0, $s3
	bltu	$a3, $a4, .LBB3_34
# %bb.31:                               # %vector.ph218
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a3, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	add.d	$a0, $s3, $a0
	addi.d	$a4, $s3, 32
	addi.d	$a5, $s2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_32:                               # %vector.body221
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_32
# %bb.33:                               # %middle.block230
	beq	$a2, $a3, .LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %for.body.i.i.i.i94
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB3_34
.LBB3_35:                               # %invoke.cont61
	alsl.d	$s7, $s1, $a0, 3
	beq	$s4, $fp, .LBB3_55
# %bb.36:                               # %for.body.i.i.i.i102.preheader
	sub.d	$a1, $s4, $fp
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 56
	bgeu	$a1, $a2, .LBB3_38
# %bb.37:
	move	$a1, $fp
	b	.LBB3_54
.LBB3_38:                               # %vector.memcheck234
	alsl.d	$a2, $s1, $a0, 3
	sub.d	$a2, $a2, $fp
	ori	$a3, $zero, 64
	bgeu	$a2, $a3, .LBB3_51
# %bb.39:
	move	$a1, $fp
	b	.LBB3_54
.LBB3_40:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	andi	$a2, $a3, 7
	alsl.d	$a1, $a4, $s4, 3
	xvreplgr2vr.d	$xr0, $s2
	addi.d	$a5, $s4, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_41:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_41
# %bb.42:                               # %middle.block
	beq	$a3, $a4, .LBB3_44
	.p2align	4, , 16
.LBB3_43:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	st.d	$s2, $a1, 0
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_43
.LBB3_44:                               # %invoke.cont28
	beq	$s4, $fp, .LBB3_50
# %bb.45:                               # %for.body.i.i.i.i56.preheader
	addi.d	$a3, $a0, -8
	srli.d	$a2, $a3, 3
	ori	$a4, $zero, 56
	addi.d	$a2, $a2, 1
	bltu	$a3, $a4, .LBB3_59
# %bb.46:                               # %for.body.i.i.i.i56.preheader
	sub.d	$a6, $a1, $fp
	ori	$a7, $zero, 64
	move	$a4, $fp
	move	$a5, $a1
	bltu	$a6, $a7, .LBB3_60
# %bb.47:                               # %vector.ph132
	bstrpick.d	$a4, $a2, 61, 3
	slli.d	$a6, $a4, 3
	slli.d	$a5, $a4, 6
	add.d	$a4, $fp, $a5
	add.d	$a5, $a1, $a5
	addi.d	$a7, $a1, 32
	addi.d	$t0, $fp, 32
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_48:                               # %vector.body135
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t0, -32
	xvld	$xr1, $t0, 0
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$a7, $a7, 64
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB3_48
# %bb.49:                               # %middle.block143
	bne	$a2, $a6, .LBB3_60
	b	.LBB3_61
.LBB3_50:                               # %invoke.cont36.thread
	add.d	$a0, $a1, $a0
	st.d	$a0, $s0, 8
	b	.LBB3_58
.LBB3_51:                               # %vector.ph239
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	slli.d	$a4, $s1, 3
	bstrpick.d	$a1, $a2, 61, 3
	slli.d	$a3, $a1, 3
	slli.d	$a5, $a1, 6
	add.d	$a1, $fp, $a5
	add.d	$s7, $s7, $a5
	add.d	$a0, $a4, $a0
	addi.d	$a0, $a0, 32
	addi.d	$a4, $fp, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_52:                               # %vector.body242
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_52
# %bb.53:                               # %middle.block251
	beq	$a2, $a3, .LBB3_55
	.p2align	4, , 16
.LBB3_54:                               # %for.body.i.i.i.i102
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	st.d	$a0, $s7, 0
	addi.d	$a1, $a1, 8
	addi.d	$s7, $s7, 8
	bne	$a1, $s4, .LBB3_54
.LBB3_55:                               # %invoke.cont65
	beqz	$s2, .LBB3_57
# %bb.56:                               # %if.then.i110
	sub.d	$a1, $s5, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_57:                               # %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE13_M_deallocateEPS8_m.exit
	st.d	$s3, $s0, 0
	st.d	$s7, $s0, 8
	alsl.d	$a0, $s6, $s3, 3
	st.d	$a0, $s0, 16
.LBB3_58:                               # %if.end95
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
.LBB3_59:
	move	$a4, $fp
	move	$a5, $a1
	.p2align	4, , 16
.LBB3_60:                               # %for.body.i.i.i.i56
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	st.d	$a6, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	bne	$a4, $s4, .LBB3_60
.LBB3_61:                               # %invoke.cont36
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 56
	st.d	$a0, $s0, 8
	move	$a0, $fp
	bltu	$a3, $a1, .LBB3_65
# %bb.62:                               # %vector.ph149
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a1, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a0, $fp, $a0
	xvreplgr2vr.d	$xr0, $s2
	addi.d	$a3, $fp, 32
	move	$a4, $a1
	.p2align	4, , 16
.LBB3_63:                               # %vector.body154
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB3_63
# %bb.64:                               # %middle.block159
	beq	$a2, $a1, .LBB3_58
	.p2align	4, , 16
.LBB3_65:                               # %for.body.i65
                                        # =>This Inner Loop Header: Depth=1
	st.d	$s2, $a0, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $s4, .LBB3_65
	b	.LBB3_58
.LBB3_66:                               # %if.then.i77
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %if.else.i
	ori	$a1, $zero, 8
	bne	$a2, $a1, .LBB3_15
# %bb.68:                               # %if.then2.i
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB3_15
.Lfunc_end3:
	.size	_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_, .Lfunc_end3-_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeISt4pairIKPKciEEESaIS8_EE14_M_fill_insertENS0_17__normal_iteratorIPS8_SA_EEmRKS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,"axG",@progbits,_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,comdat
	.weak	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm # -- Begin function _ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
	.p2align	2
	.type	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm,@function
_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm: # @_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
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
	ld.d	$s4, $a0, 16
	ld.d	$fp, $a0, 8
	sub.d	$a2, $s4, $fp
	srai.d	$s2, $a2, 3
	bgeu	$s2, $a1, .LBB4_18
# %bb.1:                                # %while.body.i.i.i.i.preheader
	ori	$a3, $zero, 29
	pcalau12i	$a2, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	.p2align	4, , 16
.LBB4_2:                                # %while.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a4, $a3, 1
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a2, $a5
	alsl.d	$a6, $a4, $a2, 3
	sltu	$a5, $a5, $a1
	addi.d	$a6, $a6, 8
	nor	$a7, $a4, $zero
	add.d	$a3, $a3, $a7
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a5
	masknez	$a2, $a2, $a5
	or	$a2, $a4, $a2
	bgtz	$a3, .LBB4_2
# %bb.3:                                # %_ZNK9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE12_M_next_sizeEm.exit
	pcalau12i	$a1, %pc_hi20(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a1, $a1, %pc_lo12(_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE)
	addi.d	$a3, $a1, 232
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	masknez	$a2, $a2, $a3
	addi.d	$a1, $a1, 224
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ld.d	$s3, $a1, 0
	bgeu	$s2, $s3, .LBB4_18
# %bb.4:                                # %if.then4
	move	$s5, $a0
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB4_19
# %bb.5:                                # %for.body.preheader.i.i.i.i.i
	slli.d	$s1, $s3, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s3, $s0, 3
	beq	$s4, $fp, .LBB4_16
# %bb.6:                                # %for.body.preheader
	move	$a2, $zero
	move	$a1, $s5
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %while.end
                                        #   in Loop: Header=BB4_8 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s2, .LBB4_15
.LBB4_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	beqz	$a3, .LBB4_7
# %bb.9:                                # %while.body.preheader
                                        #   in Loop: Header=BB4_8 Depth=1
	alsl.d	$a4, $a2, $fp, 3
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_12 Depth=2
	move	$a6, $zero
.LBB4_11:                               # %invoke.cont11
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $a3, 0
	mod.du	$a6, $a6, $s3
	st.d	$a5, $a4, 0
	slli.d	$a5, $a6, 3
	ldx.d	$a6, $s0, $a5
	st.d	$a6, $a3, 0
	stx.d	$a3, $s0, $a5
	ld.d	$a3, $a4, 0
	beqz	$a3, .LBB4_7
.LBB4_12:                               # %while.body
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	ld.d	$a7, $a3, 8
	ld.bu	$a5, $a7, 0
	beqz	$a5, .LBB4_10
# %bb.13:                               # %for.body.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a6, $zero
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB4_14:                               # %for.body.i.i.i.i
                                        #   Parent Loop BB4_8 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ext.w.b	$t0, $a5
	ld.bu	$a5, $a7, 0
	alsl.d	$a6, $a6, $a6, 2
	add.d	$a6, $a6, $t0
	addi.d	$a7, $a7, 1
	bnez	$a5, .LBB4_14
	b	.LBB4_11
.LBB4_15:                               # %for.cond.cleanup.thread
	ld.d	$a2, $a1, 24
	st.d	$s0, $a1, 8
	st.d	$a0, $a1, 16
	st.d	$a0, $a1, 24
	b	.LBB4_17
.LBB4_16:                               # %for.cond.cleanup
	ld.d	$a2, $s5, 24
	st.d	$s0, $s5, 8
	st.d	$a0, $s5, 16
	st.d	$a0, $s5, 24
	beqz	$fp, .LBB4_18
.LBB4_17:                               # %if.then.i.i.i
	sub.d	$a1, $a2, $fp
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_18:                               # %if.end46
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
.LBB4_19:                               # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm, .Lfunc_end4-_ZN9__gnu_cxx9hashtableISt4pairIKPKciES3_NS_4hashIS3_EESt10_Select1stIS5_E5eqstrSaIiEE6resizeEm
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"foo_%d"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"foo_1"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"foo_9999"
	.size	.L.str.3, 9

	.type	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,@object # @_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
	.section	.rodata._ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,"aG",@progbits,_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE,comdat
	.weak	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
	.p2align	3, 0x0
_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE:
	.dword	5                               # 0x5
	.dword	53                              # 0x35
	.dword	97                              # 0x61
	.dword	193                             # 0xc1
	.dword	389                             # 0x185
	.dword	769                             # 0x301
	.dword	1543                            # 0x607
	.dword	3079                            # 0xc07
	.dword	6151                            # 0x1807
	.dword	12289                           # 0x3001
	.dword	24593                           # 0x6011
	.dword	49157                           # 0xc005
	.dword	98317                           # 0x1800d
	.dword	196613                          # 0x30005
	.dword	393241                          # 0x60019
	.dword	786433                          # 0xc0001
	.dword	1572869                         # 0x180005
	.dword	3145739                         # 0x30000b
	.dword	6291469                         # 0x60000d
	.dword	12582917                        # 0xc00005
	.dword	25165843                        # 0x1800013
	.dword	50331653                        # 0x3000005
	.dword	100663319                       # 0x6000017
	.dword	201326611                       # 0xc000013
	.dword	402653189                       # 0x18000005
	.dword	805306457                       # 0x30000059
	.dword	1610612741                      # 0x60000005
	.dword	3221225473                      # 0xc0000001
	.dword	4294967291                      # 0xfffffffb
	.size	_ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE, 232

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"vector::reserve"
	.size	.L.str.4, 16

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"vector::_M_fill_insert"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.6, 49

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
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZN9__gnu_cxx21_Hashtable_prime_listImE16__stl_prime_listE
