	.file	"LCALSStats.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZNK8LoopStat5printERSo         # -- Begin function _ZNK8LoopStat5printERSo
	.p2align	5
	.type	_ZNK8LoopStat5printERSo,@function
_ZNK8LoopStat5printERSo:                # @_ZNK8LoopStat5printERSo
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB0_79
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB0_3
# %bb.2:                                # %if.then.i2.i.i
	ld.bu	$a0, $s1, 67
	b	.LBB0_4
.LBB0_3:                                # %if.end.i.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.LBB0_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIbEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.5:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_7
# %bb.6:                                # %if.then.i2.i.i140
	ld.bu	$a1, $s1, 67
	b	.LBB0_8
.LBB0_7:                                # %if.end.i.i.i145
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_8:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit150
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	beqz	$s1, .LBB0_79
# %bb.9:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB0_11
# %bb.10:                               # %if.then.i2.i.i160
	ld.bu	$a1, $s1, 67
	b	.LBB0_12
.LBB0_11:                               # %if.end.i.i.i165
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_12:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit170
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	beq	$a0, $a1, .LBB0_74
# %bb.13:                               # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s5, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s1, $zero
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %for.inc104
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	addi.w	$s1, $s1, 1
	bstrpick.d	$s6, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	bgeu	$s6, $a0, .LBB0_74
.LBB0_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_71 Depth 2
	ori	$a2, $zero, 13
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s7, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB0_79
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i197
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB0_18
# %bb.17:                               # %if.then.i2.i.i200
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               # %if.end.i.i.i205
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.LBB0_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit210
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 18
	move	$a0, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 208
	slli.d	$s2, $s6, 2
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i217
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_22
# %bb.21:                               # %if.then.i2.i.i220
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %if.end.i.i.i225
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit230
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 23
	move	$a0, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 232
	ldx.w	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i237
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_26
# %bb.25:                               # %if.then.i2.i.i240
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %if.end.i.i.i245
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_27:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit250
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 21
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	slli.d	$s2, $s6, 3
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.28:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_30
# %bb.29:                               # %if.then.i2.i.i260
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %if.end.i.i.i265
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_31:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit270
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	ldx.d	$a0, $a0, $s2
	beqz	$a0, .LBB0_14
# %bb.32:                               # %for.cond36.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.d	$a0, $s0, 16
	slli.d	$s2, $s6, 4
	alsl.d	$s8, $s6, $s2, 3
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	beq	$a1, $a0, .LBB0_39
# %bb.33:                               # %for.body43.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s7, $zero
	ori	$s3, $zero, 1
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_34:                               # %if.end.i.i.i425
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s4
.LBB0_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit430
                                        #   in Loop: Header=BB0_36 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	bstrpick.d	$s7, $s3, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s3, $s3, 1
	bgeu	$s7, $a0, .LBB0_39
.LBB0_36:                               # %for.body43
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s8
	alsl.d	$a2, $s7, $a0, 4
	slli.d	$a1, $s7, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i417
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_34
# %bb.38:                               # %if.then.i2.i.i420
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.bu	$a1, $s7, 67
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_39:                               # %for.cond.cleanup42
                                        #   in Loop: Header=BB0_15 Depth=1
	ori	$a2, $zero, 12
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i277
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_42
# %bb.41:                               # %if.then.i2.i.i280
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %if.end.i.i.i285
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_43:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit290
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 15
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i297
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_46
# %bb.45:                               # %if.then.i2.i.i300
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_46:                               # %if.end.i.i.i305
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_47:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit310
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 11
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 112
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.48:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i317
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_50
# %bb.49:                               # %if.then.i2.i.i320
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %if.end.i.i.i325
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_51:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit330
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 11
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 136
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i337
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_54
# %bb.53:                               # %if.then.i2.i.i340
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               # %if.end.i.i.i345
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_55:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit350
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 160
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s7, $a1, 240
	beqz	$s7, .LBB0_79
# %bb.56:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i357
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 56
	beqz	$a1, .LBB0_58
# %bb.57:                               # %if.then.i2.i.i360
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s7, 67
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_58:                               # %if.end.i.i.i365
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_59:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit370
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 184
	alsl.d	$a2, $s6, $a0, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.60:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i377
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_62
# %bb.61:                               # %if.then.i2.i.i380
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a1, $s6, 67
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               # %if.end.i.i.i385
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s2, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s2
.LBB0_63:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit390
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB0_79
# %bb.64:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i397
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB0_66
# %bb.65:                               # %if.then.i2.i.i400
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_66:                               # %if.end.i.i.i405
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB0_67:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit410
                                        #   in Loop: Header=BB0_15 Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	beq	$a1, $a0, .LBB0_14
# %bb.68:                               # %for.body92.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s3, $zero
	ori	$s2, $zero, 1
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_69:                               # %if.end.i.i.i445
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s3
.LBB0_70:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit450
                                        #   in Loop: Header=BB0_71 Depth=2
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	add.d	$a1, $a0, $s8
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $s8
	bstrpick.d	$s3, $s2, 31, 0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 4
	addi.w	$s2, $s2, 1
	bgeu	$s3, $a0, .LBB0_14
.LBB0_71:                               # %for.body92
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ldx.d	$a0, $a0, $s8
	alsl.d	$a2, $s3, $a0, 4
	slli.d	$a1, $s3, 4
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s6, $a1, 240
	beqz	$s6, .LBB0_79
# %bb.72:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i437
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 56
	beqz	$a1, .LBB0_69
# %bb.73:                               # %if.then.i2.i.i440
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.bu	$a1, $s6, 67
	b	.LBB0_70
.LBB0_74:                               # %for.cond.cleanup
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB0_79
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i177
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB0_77
# %bb.76:                               # %if.then.i2.i.i180
	ld.bu	$a0, $s0, 67
	b	.LBB0_78
.LBB0_77:                               # %if.end.i.i.i185
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB0_78:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit190
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
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
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB0_79:                               # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZNK8LoopStat5printERSo, .Lfunc_end0-_ZNK8LoopStat5printERSo
	.cfi_endproc
                                        # -- End function
	.globl	_Z19getLoopSuiteRunInfov        # -- Begin function _Z19getLoopSuiteRunInfov
	.p2align	5
	.type	_Z19getLoopSuiteRunInfov,@function
_Z19getLoopSuiteRunInfov:               # @_Z19getLoopSuiteRunInfov
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$a0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ret
.Lfunc_end1:
	.size	_Z19getLoopSuiteRunInfov, .Lfunc_end1-_Z19getLoopSuiteRunInfov
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
.LCPI2_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.p2align	5
	.type	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm,@function
_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm: # @_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	pcalau12i	$s6, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	bnez	$s5, .LBB2_2
# %bb.1:                                # %invoke.cont
	ori	$a0, $zero, 640
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.w	$zero, $s5, 32
	st.d	$zero, $s5, 72
	st.w	$zero, $s5, 80
	st.d	$zero, $s5, 88
	st.w	$zero, $s5, 96
	st.d	$zero, $s5, 144
	st.b	$zero, $s5, 152
	addi.d	$a0, $s5, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $s5, 576
	addi.d	$s7, $s5, 600
	st.w	$zero, $s5, 600
	st.d	$zero, $s5, 608
	st.d	$zero, $s5, 40
	vst	$vr0, $s5, 48
	st.w	$zero, $s5, 64
	vst	$vr0, $s5, 104
	vst	$vr0, $s5, 120
	st.w	$zero, $s5, 136
	ori	$a2, $zero, 408
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s7, $s5, 616
	st.d	$s7, $s5, 624
	st.d	$zero, $s5, 632
	st.d	$s5, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_2:                                # %if.end
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	st.w	$s3, $s4, 32
	st.w	$s1, $s4, 64
	st.w	$s2, $s4, 136
	beqz	$s1, .LBB2_12
# %bb.3:                                # %for.body.preheader
	bstrpick.d	$s1, $s1, 31, 0
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                # %if.else.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.wu	$a2, $s4, 96
	addi.d	$a0, $s4, 72
	pcaddu18i	$ra, %call36(_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB2_5:                                # %_ZNSt6vectorIbSaIbEE9push_backEb.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 1
	beqz	$s1, .LBB2_12
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 88
	ld.d	$a0, $s4, 104
	ld.bu	$a3, $s0, 0
	beq	$a1, $a0, .LBB2_4
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $s4, 96
	addi.w	$a2, $a0, 0
	addi.d	$a4, $a0, 1
	st.w	$a4, $s4, 96
	bne	$a2, $s2, .LBB2_9
# %bb.8:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	st.w	$zero, $s4, 96
	addi.d	$a2, $a1, 8
	st.d	$a2, $s4, 88
.LBB2_9:                                # %_ZNSt13_Bit_iteratorppEi.exit.i
                                        #   in Loop: Header=BB2_6 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	sll.d	$a0, $s3, $a0
	beqz	$a3, .LBB2_11
# %bb.10:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	or	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_11:                               # %if.else.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a2, $a1, 0
	andn	$a0, $a2, $a0
	st.d	$a0, $a1, 0
	b	.LBB2_5
.LBB2_12:                               # %for.cond.cleanup
	bstrpick.d	$a0, $fp, 62, 2
	st.d	$a0, $s4, 552
	slli.d	$a0, $fp, 1
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 552
	st.d	$a0, $s4, 560
	beqz	$a1, .LBB2_15
# %bb.13:                               # %for.body14.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	move	$fp, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB2_14:                               # %for.body14
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(drand48)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$a1, $a0, 560
	ld.d	$a0, $a0, 552
	fadd.d	$fa0, $fa0, $fs0
	fstx.d	$fa0, $a1, $fp
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bltu	$s0, $a0, .LBB2_14
.LBB2_15:                               # %for.cond.cleanup13
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm, .Lfunc_end2-_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm
	.cfi_endproc
                                        # -- End function
	.globl	_Z20freeLoopSuiteRunInfov       # -- Begin function _Z20freeLoopSuiteRunInfov
	.p2align	5
	.type	_Z20freeLoopSuiteRunInfov,@function
_Z20freeLoopSuiteRunInfov:              # @_Z20freeLoopSuiteRunInfov
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_5
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 560
	beqz	$a0, .LBB3_3
# %bb.2:                                # %if.end
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
	beqz	$fp, .LBB3_4
.LBB3_3:                                # %delete.notnull5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16LoopSuiteRunInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB3_4:                                # %delete.end6
	st.d	$zero, $s0, %pc_lo12(_ZL21s_loop_suite_run_info)
.LBB3_5:                                # %if.end7
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_Z20freeLoopSuiteRunInfov, .Lfunc_end3-_Z20freeLoopSuiteRunInfov
                                        # -- End function
	.section	.text._ZN16LoopSuiteRunInfoD2Ev,"axG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.weak	_ZN16LoopSuiteRunInfoD2Ev       # -- Begin function _ZN16LoopSuiteRunInfoD2Ev
	.p2align	5
	.type	_ZN16LoopSuiteRunInfoD2Ev,@function
_ZN16LoopSuiteRunInfoD2Ev:              # @_ZN16LoopSuiteRunInfoD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ld.d	$a0, $a0, 616
	addi.d	$s3, $fp, 600
	addi.d	$s0, $fp, 592
	bne	$a0, $s3, .LBB4_46
.LBB4_1:                                # %for.end
	ld.d	$a1, $fp, 608
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS7_EESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit
	ld.d	$s0, $fp, 528
	ld.d	$s1, $fp, 536
	bne	$s0, $s1, .LBB4_27
# %bb.3:                                # %invoke.cont.i10
	beqz	$s0, .LBB4_5
.LBB4_4:                                # %if.then.i.i.i12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s0, $fp, 504
	ld.d	$s1, $fp, 512
	bne	$s0, $s1, .LBB4_30
# %bb.6:                                # %invoke.cont.i24
	beqz	$s0, .LBB4_8
.LBB4_7:                                # %if.then.i.i.i26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_8:                                # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit27
	ld.d	$s0, $fp, 480
	ld.d	$s1, $fp, 488
	bne	$s0, $s1, .LBB4_33
# %bb.9:                                # %invoke.cont.i39
	beqz	$s0, .LBB4_11
.LBB4_10:                               # %if.then.i.i.i41
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit42
	ld.d	$s0, $fp, 456
	ld.d	$s1, $fp, 464
	bne	$s0, $s1, .LBB4_36
# %bb.12:                               # %invoke.cont.i53
	beqz	$s0, .LBB4_14
.LBB4_13:                               # %if.then.i.i.i55
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_14:                               # %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB4_16
# %bb.15:                               # %if.then.i.i.i58
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	addi.d	$a0, $fp, 152
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 112
	ld.d	$s0, $fp, 120
	bne	$a0, $s0, .LBB4_39
# %bb.17:                               # %invoke.cont.i67
	beqz	$a0, .LBB4_19
.LBB4_18:                               # %if.then.i.i.i69
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $fp, 72
	beqz	$a0, .LBB4_21
# %bb.20:                               # %if.then.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 72
	st.w	$zero, $fp, 80
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 96
	st.d	$zero, $fp, 104
.LBB4_21:                               # %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
	ld.d	$a0, $fp, 40
	ld.d	$s0, $fp, 48
	bne	$a0, $s0, .LBB4_42
# %bb.22:                               # %invoke.cont.i82
	beqz	$a0, .LBB4_24
.LBB4_23:                               # %if.then.i.i.i84
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit88
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB4_58
# %bb.25:                               # %if.then.i.i89
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB4_26:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_27 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_52
.LBB4_27:                               # %for.body.i.i4
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_26
# %bb.28:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_27 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_26
	.p2align	4, , 16
.LBB4_29:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i19
                                        #   in Loop: Header=BB4_30 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_53
.LBB4_30:                               # %for.body.i.i15
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_29
# %bb.31:                               # %if.then.i.i.i.i.i.i18
                                        #   in Loop: Header=BB4_30 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_32:                               # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i34
                                        #   in Loop: Header=BB4_33 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_54
.LBB4_33:                               # %for.body.i.i30
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_32
# %bb.34:                               # %if.then.i.i.i.i.i.i33
                                        #   in Loop: Header=BB4_33 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_35:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_36 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB4_55
.LBB4_36:                               # %for.body.i.i45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_35
# %bb.37:                               # %if.then.i.i.i.i.i.i48
                                        #   in Loop: Header=BB4_36 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_38:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_56
.LBB4_39:                               # %for.body.i.i61
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_38
# %bb.40:                               # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB4_39 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_41:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i77
                                        #   in Loop: Header=BB4_42 Depth=1
	addi.d	$a0, $s1, 16
	beq	$a0, $s0, .LBB4_57
.LBB4_42:                               # %for.body.i.i73
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB4_41
# %bb.43:                               # %if.then.i.i.i.i.i76
                                        #   in Loop: Header=BB4_42 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_44:                               # %_ZNSt6vectorI8LoopStatSaIS0_EED2Ev.exit
                                        #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB4_45:                               # %for.inc
                                        #   in Loop: Header=BB4_46 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB4_1
.LBB4_46:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_48 Depth 2
	ld.d	$s1, $a0, 64
	beqz	$s1, .LBB4_45
# %bb.47:                               # %delete.notnull
                                        #   in Loop: Header=BB4_46 Depth=1
	move	$s4, $a0
	ld.d	$s2, $s1, 0
	ld.d	$s5, $s1, 8
	beq	$s2, $s5, .LBB4_50
	.p2align	4, , 16
.LBB4_48:                               # %for.body.i.i
                                        #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8LoopStatD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 280
	bne	$s2, $s5, .LBB4_48
# %bb.49:                               # %invoke.contthread-pre-split.i
                                        #   in Loop: Header=BB4_46 Depth=1
	ld.d	$s2, $s1, 0
.LBB4_50:                               # %invoke.cont.i
                                        #   in Loop: Header=BB4_46 Depth=1
	beqz	$s2, .LBB4_44
# %bb.51:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB4_46 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB4_44
.LBB4_52:                               # %invoke.contthread-pre-split.i8
	ld.d	$s0, $fp, 528
	bnez	$s0, .LBB4_4
	b	.LBB4_5
.LBB4_53:                               # %invoke.contthread-pre-split.i22
	ld.d	$s0, $fp, 504
	bnez	$s0, .LBB4_7
	b	.LBB4_8
.LBB4_54:                               # %invoke.contthread-pre-split.i37
	ld.d	$s0, $fp, 480
	bnez	$s0, .LBB4_10
	b	.LBB4_11
.LBB4_55:                               # %invoke.contthread-pre-split.i51
	ld.d	$s0, $fp, 456
	bnez	$s0, .LBB4_13
	b	.LBB4_14
.LBB4_56:                               # %invoke.contthread-pre-split.i65
	ld.d	$a0, $fp, 112
	bnez	$a0, .LBB4_18
	b	.LBB4_19
.LBB4_57:                               # %invoke.contthread-pre-split.i80
	ld.d	$a0, $fp, 40
	bnez	$a0, .LBB4_23
	b	.LBB4_24
.LBB4_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
.LBB4_59:                               # %terminate.lpad.i.i
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN16LoopSuiteRunInfoD2Ev, .Lfunc_end4-_ZN16LoopSuiteRunInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN16LoopSuiteRunInfoD2Ev,"aG",@progbits,_ZN16LoopSuiteRunInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end4
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
	.globl	_Z10flushCachev                 # -- Begin function _Z10flushCachev
	.p2align	5
	.type	_Z10flushCachev,@function
_Z10flushCachev:                        # @_Z10flushCachev
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s2, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$fp, $s2, 552
	beqz	$fp, .LBB5_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$s3, $s2, 560
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
	move	$s4, $fp
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s3, 0
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s0, $a1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	bnez	$s4, .LBB5_2
	b	.LBB5_4
.LBB5_3:                                # %entry.for.cond.cleanup_crit_edge
	ld.d	$s0, $s2, 584
	ld.d	$s1, $s2, 576
.LBB5_4:                                # %for.cond.cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__floatunditf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	st.d	$a1, $s2, 584
	st.d	$a0, $s2, 576
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	_Z10flushCachev, .Lfunc_end5-_Z10flushCachev
                                        # -- End function
	.globl	_Z9copyTimerR8LoopStatiRK9LoopTimer # -- Begin function _Z9copyTimerR8LoopStatiRK9LoopTimer
	.p2align	5
	.type	_Z9copyTimerR8LoopStatiRK9LoopTimer,@function
_Z9copyTimerR8LoopStatiRK9LoopTimer:    # @_Z9copyTimerR8LoopStatiRK9LoopTimer
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	ld.bu	$a3, $a2, 16
	beqz	$a3, .LBB6_9
# %bb.1:                                # %if.then
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 0
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(__floatditf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 190536
	lu52i.d	$a3, $a2, 1025
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	slli.d	$a3, $fp, 4
	alsl.d	$a3, $fp, $a3, 3
	add.d	$s2, $a2, $a3
	ld.d	$a2, $s2, 8
	ld.d	$a3, $s2, 16
	beq	$a2, $a3, .LBB6_3
# %bb.2:                                # %if.then.i
	st.d	$a0, $a2, 0
	st.d	$a1, $a2, 8
	addi.d	$a0, $a2, 16
	st.d	$a0, $s2, 8
	b	.LBB6_9
.LBB6_3:                                # %if.else.i
	move	$s5, $a0
	ld.d	$fp, $s2, 0
	sub.d	$s0, $a2, $fp
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_10
# %bb.4:                                # %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
	move	$s4, $a1
	srai.d	$a0, $s0, 4
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.d	$s6, $a0, $s0
	stx.d	$s5, $a0, $s0
	st.d	$s4, $s6, 8
	blez	$s0, .LBB6_6
# %bb.5:                                # %if.then.i.i.i.i.i.i
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit.i.i
	beqz	$fp, .LBB6_8
# %bb.7:                                # %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %_ZNSt6vectorIeSaIeEE17_M_realloc_appendIJRKeEEEvDpOT_.exit.i
	addi.d	$a0, $s6, 16
	st.d	$s1, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s3, $s1, 4
	st.d	$a0, $s2, 16
.LBB6_9:                                # %if.end
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
.LBB6_10:                               # %if.then.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z9copyTimerR8LoopStatiRK9LoopTimer, .Lfunc_end6-_Z9copyTimerR8LoopStatiRK9LoopTimer
	.cfi_endproc
                                        # -- End function
	.globl	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb # -- Begin function _Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.p2align	5
	.type	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb,@function
_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb: # @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
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
	ld.d	$a4, $a1, 8
	ld.d	$a3, $a1, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a0, $a4, $a3
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	beq	$a4, $a3, .LBB7_18
# %bb.1:                                # %for.body.preheader
	move	$a0, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	lu32i.d	$a1, -65537
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 1023
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %if.end77
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_18
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	ori	$a1, $zero, 280
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_2
# %bb.4:                                # %for.cond3.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s0, $a1, $a0
	ld.d	$a0, $s0, 216
	ld.d	$a1, $s0, 208
	beq	$a0, $a1, .LBB7_2
# %bb.5:                                # %for.body8.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a3, $s0, 40
	move	$a2, $zero
	move	$s8, $zero
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_6:                                # %for.cond.cleanup21.thread
                                        #   in Loop: Header=BB7_9 Depth=2
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	move	$a2, $fp
	move	$s7, $a0
	move	$s6, $a1
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	move	$fp, $zero
	move	$s1, $zero
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$s3, $s2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB7_7:                                # %for.cond.cleanup48
                                        #   in Loop: Header=BB7_9 Depth=2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 64
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	stx.d	$s7, $a2, $a6
	ld.d	$a3, $s0, 88
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a2, 4
	st.d	$s6, $a2, 8
	ld.d	$a2, $s0, 112
	alsl.d	$a4, $a5, $a3, 4
	stx.d	$a0, $a3, $a6
	st.d	$a1, $a4, 8
	alsl.d	$a0, $a5, $a2, 4
	ld.d	$a1, $s0, 136
	stx.d	$s2, $a2, $a6
	st.d	$s5, $a0, 8
	ld.d	$a0, $s0, 160
	alsl.d	$a2, $a5, $a1, 4
	stx.d	$s3, $a1, $a6
	st.d	$s4, $a2, 8
	alsl.d	$a1, $a5, $a0, 4
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	stx.d	$a2, $a0, $a6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
.LBB7_8:                                # %for.inc74
                                        #   in Loop: Header=BB7_9 Depth=2
	addi.w	$s8, $s8, 1
	bstrpick.d	$a2, $s8, 31, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB7_2
.LBB7_9:                                # %for.body8
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_13 Depth 3
                                        #       Child Loop BB7_16 Depth 3
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a3, $a0
	beqz	$a0, .LBB7_8
# %bb.10:                               # %if.then12
                                        #   in Loop: Header=BB7_9 Depth=2
	ld.d	$a0, $s0, 16
	slli.d	$a1, $a2, 4
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a2, $a0, $a1
	ld.d	$a2, $a2, 8
	ldx.d	$s3, $a0, $a1
	sub.d	$a0, $a2, $s3
	srai.d	$a1, $a0, 4
	addi.w	$a0, $a1, 0
	beqz	$a0, .LBB7_6
# %bb.11:                               # %for.body22.preheader
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	addi.w	$s6, $zero, -1
	bstrpick.d	$s2, $a1, 31, 0
	move	$s5, $s6
	lu32i.d	$s5, -65537
	lu52i.d	$s7, $s5, 2047
	move	$s8, $s2
	move	$s0, $s3
	move	$s4, $s6
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_12:                               # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=3
	slti	$a0, $s6, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $fp, $a0
	or	$s5, $a2, $a1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s6, $a0, $a1
	slti	$a0, $s7, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a2, $fp, $a0
	or	$s7, $a2, $a1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$s4, $a0, $a1
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 16
	beqz	$s8, .LBB7_15
.LBB7_13:                               # %for.body22
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $s0, 8
	ld.d	$s1, $s0, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	move	$a0, $s6
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $fp
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	move	$a2, $s4
	move	$s4, $s7
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__lttf2)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	blez	$a0, .LBB7_12
# %bb.14:                               # %if.then34
                                        #   in Loop: Header=BB7_13 Depth=3
	move	$a0, $zero
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_15:                               # %for.cond.cleanup21
                                        #   in Loop: Header=BB7_9 Depth=2
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__floatunsitf)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s6, $a1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__gttf2)
	jirl	$ra, $ra, 0
	slt	$s0, $zero, $a0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $fp
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	move	$s1, $zero
	maskeqz	$a1, $a1, $s0
	masknez	$a2, $s8, $s0
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	maskeqz	$a0, $a0, $s0
	masknez	$a1, $s4, $s0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_16:                               # %for.body49
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 8
	move	$a2, $s7
	move	$a3, $s6
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $a1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 16
	bnez	$s2, .LBB7_16
# %bb.17:                               #   in Loop: Header=BB7_9 Depth=2
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$s4, $s5
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB7_7
.LBB7_18:                               # %for.cond.cleanup
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_57
# %bb.19:                               # %if.then82
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.wu	$a0, $s0, 64
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_29
# %bb.20:                               # %invoke.cont
	slli.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 64
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_30
# %bb.21:                               # %for.body.preheader.i.i.i.i.i134
	slli.d	$fp, $a0, 4
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.22:                               # %invoke.cont92
	move	$s8, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	beqz	$a0, .LBB7_31
# %bb.23:                               # %for.body.preheader.i.i.i.i.i150
	slli.d	$fp, $a0, 4
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.24:                               # %invoke.cont98
	move	$s1, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 64
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_58
# %bb.25:                               # %for.body.preheader.i.i.i.i.i168
	slli.d	$fp, $a0, 4
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.26:                               # %invoke.cont104
	move	$s2, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.wu	$s0, $a0, 64
	addi.w	$a0, $s0, 0
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	beqz	$a0, .LBB7_59
# %bb.27:                               # %for.body.preheader.i.i.i.i.i186
	slli.d	$fp, $s0, 4
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.28:                               # %for.body.i.i.i.i.i191.preheader
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_29:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	b	.LBB7_32
.LBB7_30:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s8, $zero
	b	.LBB7_32
.LBB7_31:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s0, $zero
.LBB7_32:                               # %invoke.cont110
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB7_42
.LBB7_33:                               # %for.body117.preheader
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a2, $zero
	b	.LBB7_35
	.p2align	4, , 16
.LBB7_34:                               # %if.end177
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	bstrpick.d	$a0, $a2, 31, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_41
.LBB7_35:                               # %for.body117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $zero, 280
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB7_34
# %bb.36:                               # %for.cond125.preheader
                                        #   in Loop: Header=BB7_35 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $a1, 216
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $a1, 208
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB7_34
# %bb.37:                               # %for.body131.lr.ph
                                        #   in Loop: Header=BB7_35 Depth=1
	move	$s1, $zero
	move	$s8, $zero
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $a1, 40
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_38:                               # %for.inc174
                                        #   in Loop: Header=BB7_39 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s2, $s2, 8
	addi.d	$s8, $s8, 4
	addi.d	$s1, $s1, 16
	addi.w	$s4, $s4, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a0, $a1, .LBB7_34
.LBB7_39:                               # %for.body131
                                        #   Parent Loop BB7_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB7_38
# %bb.40:                               # %if.then136
                                        #   in Loop: Header=BB7_39 Depth=2
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a0, $s7, $s8
	addi.d	$a0, $a0, 1
	stx.w	$a0, $s7, $s8
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	fld.d	$fa0, $s0, 8
	pcaddu18i	$ra, %call36(__extenddftf2)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s1
	ldx.d	$a2, $fp, $s1
	ld.d	$a3, $s6, 8
	move	$a4, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$a5, $a1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 64
	stx.d	$a0, $fp, $s1
	st.d	$a1, $s6, 8
	add.d	$s0, $s3, $s1
	ldx.d	$a0, $s3, $s1
	ld.d	$a1, $s0, 8
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	add.d	$s6, $fp, $s1
	ldx.d	$a2, $fp, $s1
	ld.d	$a3, $s6, 8
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $fp, $s1
	st.d	$a1, $s6, 8
	ldx.d	$a2, $s3, $s1
	ld.d	$a3, $s0, 8
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	add.d	$fp, $s5, $s1
	ldx.d	$a0, $s5, $s1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s6
	ld.d	$s7, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s5, $s1
	st.d	$a1, $fp, 8
	ldx.d	$a0, $s3, $s1
	ld.d	$a1, $s0, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 232
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $s8
	ldx.w	$a2, $a2, $s8
	move	$fp, $a0
	move	$s5, $a1
	mul.w	$a0, $a2, $a3
	pcaddu18i	$ra, %call36(__floatsitf)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	add.d	$fp, $s0, $s1
	ldx.d	$a2, $s0, $s1
	ld.d	$a3, $fp, 8
	move	$a4, $a0
	move	$a5, $a1
	move	$a0, $a2
	move	$a1, $a3
	move	$a2, $a4
	move	$a3, $a5
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s0, $s1
	st.d	$a1, $fp, 8
	b	.LBB7_38
.LBB7_41:                               # %for.cond182.preheader.loopexit
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$s0, $a0, 64
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
.LBB7_42:                               # %for.cond182.preheader
	addi.w	$a0, $s0, 0
	beqz	$a0, .LBB7_47
# %bb.43:                               # %for.body186.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 456
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 480
	slli.d	$a3, $a0, 4
	alsl.d	$s3, $a0, $a3, 3
	ldx.d	$s4, $a1, $s3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$s5, $a2, $s3
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$fp, $a0, 1023
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_44:                               # %if.end228
                                        #   in Loop: Header=BB7_45 Depth=1
	addi.d	$s2, $s2, 1
	ld.wu	$a0, $a1, 64
	addi.d	$s6, $s6, 4
	addi.d	$s4, $s4, 4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 24
	bgeu	$s2, $a0, .LBB7_47
.LBB7_45:                               # %for.body186
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, 0
	st.w	$a0, $s4, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	vldx	$vr0, $a2, $s1
	vstx	$vr0, $s5, $s1
	blez	$a0, .LBB7_44
# %bb.46:                               # %if.then208
                                        #   in Loop: Header=BB7_45 Depth=1
	ld.d	$a0, $a1, 168
	ldx.d	$a1, $a0, $s0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	add.d	$a3, $s8, $s1
	ldx.d	$a2, $s8, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__multf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a3, $a2, $s1
	ldx.d	$a2, $a2, $s1
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 504
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $s1
	ldx.d	$a2, $a1, $s1
	ld.d	$a3, $a0, 8
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 528
	ldx.d	$a2, $a2, $s3
	add.d	$a3, $a2, $s1
	stx.d	$a0, $a2, $s1
	st.d	$a1, $a3, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB7_44
.LBB7_47:                               # %for.cond.cleanup185
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_49
# %bb.48:                               # %if.then.i.i.i228
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_49:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit229
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_51
# %bb.50:                               # %if.then.i.i.i231
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_51:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit232
	beqz	$fp, .LBB7_53
# %bb.52:                               # %if.then.i.i.i234
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit235
	beqz	$s8, .LBB7_55
# %bb.54:                               # %if.then.i.i.i237
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB7_55:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit238
	beqz	$s0, .LBB7_57
# %bb.56:                               # %if.then.i.i.i240
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB7_57:                               # %if.end240
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
.LBB7_58:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB7_59:
	move	$s0, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB7_33
	b	.LBB7_42
.LBB7_60:                               # %if.then.i.i.i
.Ltmp14:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_62
.LBB7_61:                               # %lpad103
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
.LBB7_62:                               # %if.then.i.i.i258
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB7_64
.LBB7_63:                               # %lpad97
.Ltmp8:                                 # EH_LABEL
	move	$fp, $a0
.LBB7_64:                               # %if.then.i.i.i261
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_65:                               # %lpad91
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb, .Lfunc_end7-_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end7-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1408
	.cfi_def_cfa_offset 1408
	st.d	$ra, $sp, 1400                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1384                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1320                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB8_150
# %bb.1:                                # %if.end
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 712
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(_ZL21s_loop_suite_run_info)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 5
	addi.w	$a1, $a0, 0
	beqz	$a1, .LBB8_16
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	move	$s3, $zero
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$s1, $a1, 600
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	.p2align	4, , 16
.LBB8_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 608
	move	$a0, $s1
	beqz	$s4, .LBB8_14
# %bb.4:                                # %while.body.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ld.d	$s2, $a2, 8
	ldx.d	$fp, $a0, $a1
	move	$s5, $s1
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_5:                                # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	sub.d	$a0, $s6, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_6:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s4, .LBB8_9
.LBB8_7:                                # %while.body.i.i.i.i
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s4, 40
	sltu	$a0, $s2, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_5
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_7 Depth=2
	ld.d	$a0, $s4, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_6
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_9:                                # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	move	$a0, $s1
	beq	$s5, $s1, .LBB8_14
# %bb.10:                               # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$s4, $s5, 40
	sltu	$a0, $s4, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_12
# %bb.11:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $s5, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_13
.LBB8_12:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	sub.d	$a0, $s2, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB8_13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.LBB8_14:                               # %invoke.cont
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $a0, 64
.Ltmp15:                                # EH_LABEL
	addi.w	$a0, $s3, 0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bne	$s3, $a0, .LBB8_3
.LBB8_16:                               # %for.cond.cleanup
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $s4, 8
	beqz	$fp, .LBB8_26
# %bb.17:                               # %if.then9
	ld.d	$s3, $s4, 0
	addi.d	$s5, $sp, 792
	st.d	$s5, $sp, 776
	st.d	$zero, $sp, 784
	st.b	$zero, $sp, 792
	addi.d	$a1, $fp, 1
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
# %bb.18:                               # %invoke.cont.i.i
	ld.d	$a0, $sp, 784
	addi.w	$a1, $zero, -2
	lu52i.d	$s6, $a1, 2047
	sub.d	$a0, $s6, $a0
	bltu	$a0, $fp, .LBB8_268
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.20:                               # %invoke.cont1.i.i
	ld.d	$a0, $sp, 784
	beq	$a0, $s6, .LBB8_268
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.22:                               # %invoke.cont11
	ld.d	$a0, $sp, 784
	addi.w	$a1, $zero, -11
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB8_272
# %bb.23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp24:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.24:                               # %call2.i.i.noexc
	addi.d	$a3, $sp, 696
	st.d	$a3, $sp, 680
	ld.d	$a1, $a0, 0
	addi.d	$fp, $a0, 16
	beq	$a1, $fp, .LBB8_27
# %bb.25:                               # %if.else.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 696
	ld.d	$s0, $a0, 8
	st.d	$a1, $sp, 680
	b	.LBB8_28
.LBB8_26:                               # %if.else
.Ltmp276:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
	b	.LBB8_148
.LBB8_27:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s0, $a0, 8
	addi.d	$a2, $s0, 1
	move	$s1, $a0
	move	$a0, $a3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
.LBB8_28:                               # %invoke.cont13
	st.d	$s0, $sp, 688
	st.d	$fp, $a0, 0
	ld.d	$a1, $sp, 776
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s5, .LBB8_30
# %bb.29:                               # %if.then.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 680
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 48
	addi.d	$fp, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.31:                               # %invoke.cont19
	ld.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_41
# %bb.32:                               # %if.then21
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.33:                               # %invoke.cont22
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.34:                               # %invoke.cont24
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.35:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_37
# %bb.36:                               # %if.then.i2.i.i
	ld.bu	$a0, $s3, 67
	b	.LBB8_39
.LBB8_37:                               # %if.end.i.i.i
.Ltmp33:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.38:                               # %.noexc541
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp35:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp36:                                # EH_LABEL
.LBB8_39:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp37:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.40:                               # %call1.i.noexc
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
.LBB8_41:                               # %if.end28
.Ltmp41:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 32
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.42:                               # %invoke.cont29
	ld.d	$a1, $sp, 680
	ld.d	$a2, $sp, 688
.Ltmp43:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.43:                               # %invoke.cont31
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_270
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i551
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_46
# %bb.45:                               # %if.then.i2.i.i554
	ld.bu	$a0, $s3, 67
	b	.LBB8_48
.LBB8_46:                               # %if.end.i.i.i559
.Ltmp45:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.47:                               # %.noexc565
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp47:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp48:                                # EH_LABEL
.LBB8_48:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i556
.Ltmp49:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.49:                               # %call1.i.noexc567
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.50:                               # %invoke.cont33
.Ltmp53:                                # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.51:                               # %for.cond37.preheader
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 36, 5
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	beqz	$a2, .LBB8_146
# %bb.52:                               # %for.body40.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -14
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s7, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	lu12i.w	$a0, 524287
	ori	$s0, $a0, 4095
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB8_54
	.p2align	4, , 16
.LBB8_53:                               # %for.inc45
                                        #   in Loop: Header=BB8_54 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB8_145
.LBB8_54:                               # %for.body40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_89 Depth 2
                                        #     Child Loop BB8_100 Depth 2
                                        #     Child Loop BB8_113 Depth 2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	ld.d	$s1, $s2, 0
	ld.d	$fp, $s4, 0
	ld.d	$s3, $s4, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s3, 1
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.55:                               # %invoke.cont.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s3, .LBB8_248
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.57:                               # %invoke.cont1.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 1296
	beq	$a0, $s6, .LBB8_248
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp59:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.59:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	slli.d	$a0, $s8, 5
	add.d	$s2, $s1, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s2, 8
	sub.d	$a0, $s6, $a0
	bltu	$a0, $a2, .LBB8_254
# %bb.60:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp62:                                # EH_LABEL
	ld.d	$a1, $s2, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.61:                               # %invoke.cont.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$s5, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $s5, 0
	st.d	$a1, $s5, 5
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 784
	st.b	$zero, $sp, 805
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB8_256
# %bb.62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp65:                                # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 13
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.63:                               # %invoke.cont5.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $s5, .LBB8_65
# %bb.64:                               # %if.then.i.i50.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.66:                               # %invoke.cont14.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_76
# %bb.67:                               # %if.then.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp71:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.68:                               # %invoke.cont16.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp73:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.69:                               # %invoke.cont18.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_252
# %bb.70:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_72
# %bb.71:                               # %if.then.i2.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_74
	.p2align	4, , 16
.LBB8_72:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp75:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.73:                               # %.noexc177.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp77:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp78:                                # EH_LABEL
.LBB8_74:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp79:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.75:                               # %call1.i.noexc.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
.LBB8_76:                               # %if.end.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp83:                                # EH_LABEL
	ori	$a2, $zero, 27
	move	$a0, $s7
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.77:                               # %invoke.cont22.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp85:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.78:                               # %invoke.cont24.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_252
# %bb.79:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_81
# %bb.80:                               # %if.then.i2.i.i190.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_83
	.p2align	4, , 16
.LBB8_81:                               # %if.end.i.i.i195.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp87:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.82:                               # %.noexc200.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp90:                                # EH_LABEL
.LBB8_83:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp91:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.84:                               # %call1.i.noexc203.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.85:                               # %invoke.cont26.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.b	$a1, $a0, 2
	ld.h	$a2, $a0, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.b	$a1, $a0, 2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.h	$a2, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.86:                               # %invoke.cont36.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp98:                                # EH_LABEL
	ori	$a2, $zero, 16
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.87:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_91
# %bb.88:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_89:                               # %for.body.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp100:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.90:                               # %for.inc.i
                                        #   in Loop: Header=BB8_89 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_89
.LBB8_91:                               # %for.cond.cleanup.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_250
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i213.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_94
# %bb.93:                               # %if.then.i2.i.i216.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_96
	.p2align	4, , 16
.LBB8_94:                               # %if.end.i.i.i221.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp103:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.95:                               # %.noexc226.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp105:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp106:                               # EH_LABEL
.LBB8_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i218.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp107:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.97:                               # %call1.i.noexc229.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.98:                               # %for.cond48.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_103
# %bb.99:                               # %for.body53.i.preheader
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$s1, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_100:                              # %for.body53.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.101:                              # %invoke.cont55.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a1, $s3, 112
	slli.d	$a2, $s1, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.102:                              # %for.inc61.i
                                        #   in Loop: Header=BB8_100 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s1, $a0, .LBB8_100
.LBB8_103:                              # %for.cond.cleanup52.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_250
# %bb.104:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_106
# %bb.105:                              # %if.then.i2.i.i242.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_108
	.p2align	4, , 16
.LBB8_106:                              # %if.end.i.i.i247.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp116:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.107:                              # %.noexc252.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp118:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp119:                               # EH_LABEL
.LBB8_108:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp120:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.109:                              # %call1.i.noexc255.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.110:                              # %for.cond67.preheader.i
                                        #   in Loop: Header=BB8_54 Depth=1
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s7, $s3, 48
	ld.d	$a4, $s3, 40
	beq	$s7, $a4, .LBB8_140
# %bb.111:                              # %for.body72.lr.ph.i
                                        #   in Loop: Header=BB8_54 Depth=1
	move	$s8, $zero
	move	$s1, $zero
	addi.d	$s6, $s3, 600
	b	.LBB8_113
	.p2align	4, , 16
.LBB8_112:                              # %if.end110.i
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$s1, $s1, 1
	bstrpick.d	$s8, $s1, 31, 0
	sub.d	$a0, $s7, $a4
	srai.d	$a0, $a0, 5
	bgeu	$s8, $a0, .LBB8_140
.LBB8_113:                              # %for.body72.i
                                        #   Parent Loop BB8_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_117 Depth 3
                                        #       Child Loop BB8_129 Depth 3
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s5, $s3, 608
	move	$a0, $s6
	beqz	$s5, .LBB8_124
# %bb.114:                              # %while.body.lr.ph.i.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	move	$s7, $s3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	ld.d	$fp, $a0, 0
	move	$s3, $s6
	move	$s2, $s6
	b	.LBB8_117
	.p2align	4, , 16
.LBB8_115:                              # %if.then.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	sub.d	$a0, $s6, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_116:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	beqz	$s5, .LBB8_119
.LBB8_117:                              # %while.body.i.i.i.i.i
                                        #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s5, 40
	sltu	$a0, $s4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_115
# %bb.118:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB8_117 Depth=3
	ld.d	$a0, $s5, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_116
	b	.LBB8_115
	.p2align	4, , 16
.LBB8_119:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	move	$s6, $s3
	move	$a0, $s3
	move	$s3, $s7
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beq	$s2, $s6, .LBB8_124
# %bb.120:                              # %lor.lhs.false.i.i.i.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$s5, $s2, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_122
# %bb.121:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i81
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $s2, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_123
.LBB8_122:                              # %if.then.i.i.i.i.i.i.i89
                                        #   in Loop: Header=BB8_113 Depth=2
	sub.d	$a0, $s4, $s5
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_123:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i85
                                        #   in Loop: Header=BB8_113 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
.LBB8_124:                              # %invoke.cont74.i
                                        #   in Loop: Header=BB8_113 Depth=2
	slli.d	$a1, $s8, 5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB8_112
# %bb.125:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $s8, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_112
# %bb.126:                              # %if.then81.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
	ori	$s5, $zero, 8
# %bb.127:                              # %for.cond86.preheader.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_132
# %bb.128:                              # %for.body91.lr.ph.i
                                        #   in Loop: Header=BB8_113 Depth=2
	move	$s4, $zero
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB8_129:                              # %for.body91.i
                                        #   Parent Loop BB8_54 Depth=1
                                        #     Parent Loop BB8_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.130:                              # %invoke.cont98.i
                                        #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s5, $a1, 8
	ld.d	$a1, $fp, 64
	alsl.d	$a2, $s4, $a1, 4
	slli.d	$a3, $s4, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.131:                              # %for.inc104.i
                                        #   in Loop: Header=BB8_129 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s4, $s2, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s2, $s2, 1
	bltu	$s4, $a0, .LBB8_129
.LBB8_132:                              # %for.cond.cleanup90.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_244
# %bb.133:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_135
# %bb.134:                              # %if.then.i2.i.i268.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_137
.LBB8_135:                              # %if.end.i.i.i273.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp131:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.136:                              # %.noexc278.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp133:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp134:                               # EH_LABEL
.LBB8_137:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i270.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp135:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.138:                              # %call1.i.noexc281.i
                                        #   in Loop: Header=BB8_113 Depth=2
.Ltmp137:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.139:                              # %call1.i.noexc281.if.end110_crit_edge.i
                                        #   in Loop: Header=BB8_113 Depth=2
	ld.d	$s7, $s3, 48
	ld.d	$a4, $s3, 40
	b	.LBB8_112
	.p2align	4, , 16
.LBB8_140:                              # %for.cond.cleanup71.i
                                        #   in Loop: Header=BB8_54 Depth=1
.Ltmp143:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 792
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
# %bb.141:                              # %invoke.cont116.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_143
# %bb.142:                              # %if.then.i.i147.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i
                                        #   in Loop: Header=BB8_54 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_53
# %bb.144:                              # %if.then.i.i153.i
                                        #   in Loop: Header=BB8_54 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_53
.LBB8_145:                              # %for.cond50.preheader
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB8_151
.LBB8_146:                              # %for.cond.cleanup52
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 168
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	stx.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 416
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_148
# %bb.147:                              # %if.then.i.i99
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_148:                              # %if.end68
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_150
# %bb.149:                              # %if.then.i.i520
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_150:                              # %return
	ld.d	$s8, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1400                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1408
	ret
.LBB8_151:                              # %for.body53.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -13
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s8, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	b	.LBB8_153
	.p2align	4, , 16
.LBB8_152:                              # %for.inc58
                                        #   in Loop: Header=BB8_153 Depth=1
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s7, $a0, .LBB8_146
.LBB8_153:                              # %for.body53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_188 Depth 2
                                        #     Child Loop BB8_199 Depth 2
                                        #     Child Loop BB8_213 Depth 2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	ld.d	$s1, $s2, 0
	ld.d	$fp, $s4, 0
	ld.d	$s3, $s4, 8
	addi.d	$a0, $sp, 1304
	st.d	$a0, $sp, 1288
	st.d	$zero, $sp, 1296
	st.b	$zero, $sp, 1304
	addi.d	$a1, $s3, 1
.Ltmp146:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.154:                              # %invoke.cont.i.i.i120
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	sub.d	$a0, $s6, $a0
	bltu	$a0, $s3, .LBB8_258
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i124
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp148:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	move	$a1, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.156:                              # %invoke.cont1.i.i.i126
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 1296
	beq	$a0, $s6, .LBB8_258
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i.i129
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp150:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.158:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i131
                                        #   in Loop: Header=BB8_153 Depth=1
	slli.d	$a0, $s7, 5
	add.d	$s2, $s1, $a0
	ld.d	$a0, $sp, 1296
	ld.d	$a2, $s2, 8
	sub.d	$a0, $s6, $a0
	bltu	$a0, $a2, .LBB8_266
# %bb.159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i137
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp153:                               # EH_LABEL
	ld.d	$a1, $s2, 0
	addi.d	$a0, $sp, 1288
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.160:                              # %invoke.cont.i147
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$s5, $sp, 776
	ld.d	$a2, $sp, 1296
	st.d	$a0, $s5, 0
	st.w	$a1, $s5, 8
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 784
	st.b	$zero, $sp, 804
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB8_264
# %bb.161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44.i152
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	ori	$a2, $zero, 12
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.162:                              # %invoke.cont5.i160
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	beq	$a0, $s5, .LBB8_164
# %bb.163:                              # %if.then.i.i50.i162
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_164:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	ori	$a2, $zero, 48
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.165:                              # %invoke.cont14.i167
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB8_175
# %bb.166:                              # %if.then.i175
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.167:                              # %invoke.cont16.i180
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp164:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.168:                              # %invoke.cont18.i183
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.169:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i190
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_171
# %bb.170:                              # %if.then.i2.i.i.i193
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_173
	.p2align	4, , 16
.LBB8_171:                              # %if.end.i.i.i.i498
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp166:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.172:                              # %.noexc177.i499
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp168:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp169:                               # EH_LABEL
.LBB8_173:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i195
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp170:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.174:                              # %call1.i.noexc.i198
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp172:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
.LBB8_175:                              # %if.end.i200
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp174:                               # EH_LABEL
	ori	$a2, $zero, 31
	move	$a0, $s8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.176:                              # %invoke.cont22.i202
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a1, $sp, 1288
	ld.d	$a2, $sp, 1296
.Ltmp176:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.177:                              # %invoke.cont24.i205
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB8_262
# %bb.178:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187.i212
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB8_180
# %bb.179:                              # %if.then.i2.i.i190.i215
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $s3, 67
	b	.LBB8_182
	.p2align	4, , 16
.LBB8_180:                              # %if.end.i.i.i195.i491
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp178:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.181:                              # %.noexc200.i492
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp180:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp181:                               # EH_LABEL
.LBB8_182:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i192.i217
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp182:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.183:                              # %call1.i.noexc203.i220
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp184:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.184:                              # %invoke.cont26.i222
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 744
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.h	$a1, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 752
	st.b	$zero, $sp, 763
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
.Ltmp187:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.185:                              # %invoke.cont36.i237
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp189:                               # EH_LABEL
	ori	$a2, $zero, 20
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.186:                              # %for.cond.preheader.i239
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_190
# %bb.187:                              # %for.body.i246.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_188:                              # %for.body.i246
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp191:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.189:                              # %for.inc.i251
                                        #   in Loop: Header=BB8_188 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$a2, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$a2, $a0, .LBB8_188
.LBB8_190:                              # %for.cond.cleanup.i260
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_260
# %bb.191:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i213.i267
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_193
# %bb.192:                              # %if.then.i2.i.i216.i270
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_195
	.p2align	4, , 16
.LBB8_193:                              # %if.end.i.i.i221.i486
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp194:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.194:                              # %.noexc226.i487
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp196:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp197:                               # EH_LABEL
.LBB8_195:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i218.i272
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp198:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.196:                              # %call1.i.noexc229.i275
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.197:                              # %for.cond48.preheader.i277
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	beq	$a0, $a1, .LBB8_202
# %bb.198:                              # %for.body53.i283.preheader
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s1, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB8_199:                              # %for.body53.i283
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp202:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.200:                              # %invoke.cont55.i289
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a1, $s3, 112
	slli.d	$a2, $s1, 5
	add.d	$a3, $a1, $a2
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $a3, 8
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.201:                              # %for.inc61.i294
                                        #   in Loop: Header=BB8_199 Depth=2
	ld.d	$a0, $s3, 120
	ld.d	$a1, $s3, 112
	bstrpick.d	$s1, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.w	$fp, $fp, 1
	bltu	$s1, $a0, .LBB8_199
.LBB8_202:                              # %for.cond.cleanup52.i303
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_260
# %bb.203:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i239.i310
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_205
# %bb.204:                              # %if.then.i2.i.i242.i313
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB8_207
	.p2align	4, , 16
.LBB8_205:                              # %if.end.i.i.i247.i479
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp207:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.206:                              # %.noexc252.i480
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp209:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp210:                               # EH_LABEL
.LBB8_207:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244.i315
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp211:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.208:                              # %call1.i.noexc255.i318
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.209:                              # %for.cond67.preheader.i320
                                        #   in Loop: Header=BB8_153 Depth=1
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s1, $s3, 48
	ld.d	$a4, $s3, 40
	beq	$s1, $a4, .LBB8_239
# %bb.210:                              # %for.body72.lr.ph.i327
                                        #   in Loop: Header=BB8_153 Depth=1
	move	$s8, $zero
	move	$s7, $zero
	addi.d	$s6, $s3, 600
	b	.LBB8_213
	.p2align	4, , 16
.LBB8_211:                              # %call1.i.noexc281.if.end110_crit_edge.i457
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s1, $s3, 48
	ld.d	$a4, $s3, 40
.LBB8_212:                              # %if.end110.i378
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$s7, $s7, 1
	bstrpick.d	$s8, $s7, 31, 0
	sub.d	$a0, $s1, $a4
	srai.d	$a0, $a0, 5
	bgeu	$s8, $a0, .LBB8_239
.LBB8_213:                              # %for.body72.i330
                                        #   Parent Loop BB8_153 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_217 Depth 3
                                        #       Child Loop BB8_229 Depth 3
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s2, $s3, 608
	move	$a0, $s6
	beqz	$s2, .LBB8_224
# %bb.214:                              # %while.body.lr.ph.i.i.i.i.i334
                                        #   in Loop: Header=BB8_213 Depth=2
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $s3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	ld.d	$fp, $a0, 0
	move	$s3, $s6
	move	$s5, $s6
	b	.LBB8_217
	.p2align	4, , 16
.LBB8_215:                              # %if.then.i.i.i.i.i.i.i.i474
                                        #   in Loop: Header=BB8_217 Depth=3
	sub.d	$a0, $s6, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_216:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i347
                                        #   in Loop: Header=BB8_217 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s2, .LBB8_219
.LBB8_217:                              # %while.body.i.i.i.i.i336
                                        #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s2, 40
	sltu	$a0, $s4, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_215
# %bb.218:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i343
                                        #   in Loop: Header=BB8_217 Depth=3
	ld.d	$a0, $s2, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_216
	b	.LBB8_215
	.p2align	4, , 16
.LBB8_219:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i.i355
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s6, $s3
	move	$a0, $s3
	move	$s3, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beq	$s5, $s6, .LBB8_224
# %bb.220:                              # %lor.lhs.false.i.i.i.i357
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$s2, $s5, 40
	sltu	$a0, $s2, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB8_222
# %bb.221:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i362
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $s5, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_223
.LBB8_222:                              # %if.then.i.i.i.i.i.i.i469
                                        #   in Loop: Header=BB8_213 Depth=2
	sub.d	$a0, $s4, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$a0, $a0, $a1
.LBB8_223:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i366
                                        #   in Loop: Header=BB8_213 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
.LBB8_224:                              # %invoke.cont74.i369
                                        #   in Loop: Header=BB8_213 Depth=2
	slli.d	$a1, $s8, 5
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	ld.d	$a2, $a1, 8
	beqz	$a2, .LBB8_212
# %bb.225:                              # %land.lhs.true.i376
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 280
	mul.d	$a3, $s8, $a3
	add.d	$fp, $a0, $a3
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB8_212
# %bb.226:                              # %if.then81.i403
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a1, $a1, 0
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
	ori	$s4, $zero, 6
# %bb.227:                              # %for.cond86.preheader.i408
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_232
# %bb.228:                              # %for.body91.lr.ph.i416
                                        #   in Loop: Header=BB8_213 Depth=2
	move	$s2, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB8_229:                              # %for.body91.i417
                                        #   Parent Loop BB8_153 Depth=1
                                        #     Parent Loop BB8_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $sp, 744
	ld.d	$a2, $sp, 752
.Ltmp217:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.230:                              # %invoke.cont98.i423
                                        #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	st.d	$s4, $a1, 8
	ld.d	$a1, $fp, 184
	alsl.d	$a2, $s2, $a1, 4
	slli.d	$a3, $s2, 4
	ldx.d	$a1, $a1, $a3
	ld.d	$a2, $a2, 8
.Ltmp219:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.231:                              # %for.inc104.i431
                                        #   in Loop: Header=BB8_229 Depth=3
	ld.d	$a0, $fp, 216
	ld.d	$a1, $fp, 208
	bstrpick.d	$s2, $s1, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$s1, $s1, 1
	bltu	$s2, $a0, .LBB8_229
.LBB8_232:                              # %for.cond.cleanup90.i440
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 776
	add.d	$a0, $a1, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_246
# %bb.233:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265.i447
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_235
# %bb.234:                              # %if.then.i2.i.i268.i450
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.bu	$a0, $fp, 67
	b	.LBB8_237
.LBB8_235:                              # %if.end.i.i.i273.i460
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp222:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.236:                              # %.noexc278.i461
                                        #   in Loop: Header=BB8_213 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp224:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp225:                               # EH_LABEL
.LBB8_237:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i270.i452
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp226:                               # EH_LABEL
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.238:                              # %call1.i.noexc281.i455
                                        #   in Loop: Header=BB8_213 Depth=2
.Ltmp228:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
	b	.LBB8_211
	.p2align	4, , 16
.LBB8_239:                              # %for.cond.cleanup71.i387
                                        #   in Loop: Header=BB8_153 Depth=1
.Ltmp234:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 792
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
# %bb.240:                              # %invoke.cont116.i389
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_242
# %bb.241:                              # %if.then.i.i147.i391
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i392
                                        #   in Loop: Header=BB8_153 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $sp, 776
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 776
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $sp, 784
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1024
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_152
# %bb.243:                              # %if.then.i.i153.i398
                                        #   in Loop: Header=BB8_153 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_152
.LBB8_244:                              # %if.then.i.i.i276.i
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.245:                              # %.noexc277.i
.LBB8_246:                              # %if.then.i.i.i276.i465
.Ltmp231:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.247:                              # %.noexc277.i468
.LBB8_248:                              # %if.then.i.i10.invoke.i.i.i
.Ltmp264:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.249:                              # %if.then.i.i10.cont.i.i.i
.LBB8_250:                              # %if.then.i.i.i250.invoke.i
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.251:                              # %if.then.i.i.i250.cont.i
.LBB8_252:                              # %if.then.i.i.i198.invoke.i
.Ltmp255:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.253:                              # %if.then.i.i.i198.cont.i
.LBB8_254:                              # %if.then.i.i.i.i.i
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.255:                              # %.noexc.i
.LBB8_256:                              # %if.then.i.i.i.i45.i
.Ltmp258:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.257:                              # %.noexc46.i
.LBB8_258:                              # %if.then.i.i10.invoke.i.i.i509
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.259:                              # %if.then.i.i10.cont.i.i.i510
.LBB8_260:                              # %if.then.i.i.i250.invoke.i484
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.261:                              # %if.then.i.i.i250.cont.i485
.LBB8_262:                              # %if.then.i.i.i198.invoke.i496
.Ltmp240:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.263:                              # %if.then.i.i.i198.cont.i497
.LBB8_264:                              # %if.then.i.i.i.i45.i505
.Ltmp243:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.265:                              # %.noexc46.i506
.LBB8_266:                              # %if.then.i.i.i.i.i507
.Ltmp246:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.267:                              # %.noexc.i508
.LBB8_268:                              # %if.then.i.i10.invoke.i.i
.Ltmp273:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.269:                              # %if.then.i.i10.cont.i.i
.LBB8_270:                              # %if.then.i.i.i563.invoke
.Ltmp267:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.271:                              # %if.then.i.i.i563.cont
.LBB8_272:                              # %if.then.i.i.i
.Ltmp270:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.273:                              # %.noexc
.LBB8_274:                              # %lpad66
.Ltmp278:                               # EH_LABEL
	b	.LBB8_298
.LBB8_275:                              # %lpad16
.Ltmp28:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_324
.LBB8_276:                              # %lpad12
.Ltmp272:                               # EH_LABEL
	b	.LBB8_278
.LBB8_277:                              # %lpad.i.i
.Ltmp275:                               # EH_LABEL
.LBB8_278:                              # %lpad12
	ld.d	$a1, $sp, 776
	move	$s0, $a0
	beq	$a1, $s5, .LBB8_326
# %bb.279:                              # %ehcleanup.sink.split
	move	$a0, $a1
	b	.LBB8_325
.LBB8_280:                              # %lpad.i139.loopexit.split-lp
.Ltmp248:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_281:                              # %lpad4.i154.loopexit.split-lp
.Ltmp245:                               # EH_LABEL
	b	.LBB8_293
.LBB8_282:                              # %lpad.i139.loopexit
.Ltmp155:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_283:                              # %lpad4.i154.loopexit
.Ltmp158:                               # EH_LABEL
	b	.LBB8_293
.LBB8_284:                              # %lpad11.i164
.Ltmp161:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_285:                              # %lpad18
.Ltmp269:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_323
.LBB8_286:                              # %lpad13.i177.loopexit.split-lp
.Ltmp242:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_287:                              # %lpad35.i229.loopexit.split-lp
.Ltmp239:                               # EH_LABEL
	b	.LBB8_318
.LBB8_288:                              # %lpad.i.i.i113.loopexit.split-lp
.Ltmp251:                               # EH_LABEL
	b	.LBB8_303
.LBB8_289:                              # %lpad4.i.loopexit.split-lp
.Ltmp260:                               # EH_LABEL
	b	.LBB8_293
.LBB8_290:                              # %lpad.i.loopexit.split-lp
.Ltmp263:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_291:                              # %lpad.i.loopexit
.Ltmp64:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_292:                              # %lpad4.i.loopexit
.Ltmp67:                                # EH_LABEL
.LBB8_293:                              # %lpad4.i154
	move	$s0, $a0
	ld.d	$a0, $sp, 776
	addi.d	$a1, $sp, 792
	beq	$a0, $a1, .LBB8_321
# %bb.294:                              # %if.then.i.i60.i156
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB8_321
.LBB8_295:                              # %lpad11.i
.Ltmp70:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_321
.LBB8_296:                              # %lpad.i.i.i113.loopexit
.Ltmp152:                               # EH_LABEL
	b	.LBB8_303
.LBB8_297:                              # %lpad
.Ltmp17:                                # EH_LABEL
.LBB8_298:                              # %ehcleanup69
	move	$s0, $a0
	b	.LBB8_326
.LBB8_299:                              # %lpad13.i.loopexit.split-lp
.Ltmp257:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_300:                              # %lpad35.i.loopexit.split-lp
.Ltmp254:                               # EH_LABEL
	b	.LBB8_318
.LBB8_301:                              # %lpad.i.i.i.loopexit.split-lp
.Ltmp266:                               # EH_LABEL
	b	.LBB8_303
.LBB8_302:                              # %lpad.i.i.i.loopexit
.Ltmp61:                                # EH_LABEL
.LBB8_303:                              # %lpad.i.i.i113
	move	$s0, $a0
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	bne	$a0, $a1, .LBB8_322
	b	.LBB8_323
.LBB8_304:                              # %lpad73.loopexit.split-lp.i466
.Ltmp233:                               # EH_LABEL
	b	.LBB8_318
.LBB8_305:                              # %lpad13.i177.loopexit
.Ltmp186:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_306:                              # %lpad35.i229.loopexit
.Ltmp236:                               # EH_LABEL
	b	.LBB8_318
.LBB8_307:                              # %lpad73.loopexit.split-lp.i
.Ltmp142:                               # EH_LABEL
	b	.LBB8_318
.LBB8_308:                              # %lpad13.i.loopexit
.Ltmp95:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_320
.LBB8_309:                              # %lpad35.i.loopexit
.Ltmp145:                               # EH_LABEL
	b	.LBB8_318
.LBB8_310:                              # %lpad41.i250
.Ltmp193:                               # EH_LABEL
	b	.LBB8_318
.LBB8_311:                              # %lpad73.loopexit.i406
.Ltmp230:                               # EH_LABEL
	b	.LBB8_318
.LBB8_312:                              # %lpad54.i288
.Ltmp206:                               # EH_LABEL
	b	.LBB8_318
.LBB8_313:                              # %lpad41.i
.Ltmp102:                               # EH_LABEL
	b	.LBB8_318
.LBB8_314:                              # %lpad73.loopexit.i
.Ltmp139:                               # EH_LABEL
	b	.LBB8_318
.LBB8_315:                              # %lpad54.i
.Ltmp115:                               # EH_LABEL
	b	.LBB8_318
.LBB8_316:                              # %lpad92.i422
.Ltmp221:                               # EH_LABEL
	b	.LBB8_318
.LBB8_317:                              # %lpad92.i
.Ltmp130:                               # EH_LABEL
.LBB8_318:                              # %ehcleanup118.i
	move	$s0, $a0
	ld.d	$a0, $sp, 744
	addi.d	$a1, $sp, 760
	beq	$a0, $a1, .LBB8_320
# %bb.319:                              # %if.then.i.i159.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_320:                              # %ehcleanup124.i
	addi.d	$a0, $sp, 776
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_321:                              # %ehcleanup126.i
	ld.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1304
	beq	$a0, $a1, .LBB8_323
.LBB8_322:                              # %if.then.i.i165.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_323:                              # %ehcleanup62
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB8_324:                              # %ehcleanup63
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB8_326
.LBB8_325:                              # %if.then.i.i513
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_326:                              # %ehcleanup69
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	beq	$a0, $a1, .LBB8_328
# %bb.327:                              # %if.then.i.i527
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB8_328:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end8-_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin2         #     jumps to .Ltmp278
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp277               #   Call between .Ltmp277 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin2          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp54-.Ltmp29                #   Call between .Ltmp29 and .Ltmp54
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp60-.Ltmp55                #   Call between .Ltmp55 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp66                #   Call between .Ltmp66 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp94-.Ltmp71                #   Call between .Ltmp71 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin2          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp99-.Ltmp96                #   Call between .Ltmp96 and .Ltmp99
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp110-.Ltmp103              #   Call between .Ltmp103 and .Ltmp110
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin2         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp123-.Ltmp116              #   Call between .Ltmp116 and .Ltmp123
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp129-.Ltmp126              #   Call between .Ltmp126 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin2         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp138-.Ltmp131              #   Call between .Ltmp131 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin2         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin2         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp151-.Ltmp146              #   Call between .Ltmp146 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin2         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin2         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin2         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp159-.Ltmp157              #   Call between .Ltmp157 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin2         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp185-.Ltmp162              #   Call between .Ltmp162 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin2         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin2         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp201-.Ltmp194              #   Call between .Ltmp194 and .Ltmp201
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp214-.Ltmp207              #   Call between .Ltmp207 and .Ltmp214
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp220-.Ltmp217              #   Call between .Ltmp217 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Ltmp229-.Ltmp222              #   Call between .Ltmp222 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin2         # >> Call Site 41 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin2         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp140-.Ltmp235              #   Call between .Ltmp235 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin2         # >> Call Site 43 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin2         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin2         # >> Call Site 44 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin2         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 45 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin2         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin2         # >> Call Site 46 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin2         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 47 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin2         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin2         # >> Call Site 48 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin2         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin2         # >> Call Site 49 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin2         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin2         # >> Call Site 50 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin2         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin2         # >> Call Site 51 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin2         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin2         # >> Call Site 52 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin2         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin2         # >> Call Site 53 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin2         #     jumps to .Ltmp245
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin2         # >> Call Site 54 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin2         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin2         # >> Call Site 55 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin2         #     jumps to .Ltmp275
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin2         # >> Call Site 56 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin2         #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin2         # >> Call Site 57 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin2         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin2         # >> Call Site 58 <<
	.uleb128 .Lfunc_end8-.Ltmp271           #   Call between .Ltmp271 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
	.type	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev,@function
_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev: # @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
.Ltmp281:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSi5tellgEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp282:                               # EH_LABEL
# %bb.2:                                # %invoke.cont2
.Ltmp283:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.3:                                # %invoke.cont6
.Ltmp286:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$s0, $sp, 8
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSi5seekgElSt12_Ios_Seekdir)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.4:                                # %invoke.cont7
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$a1, $a0, 232
.Ltmp288:                               # EH_LABEL
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $a2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_)
	jirl	$ra, $ra, 0
.Ltmp289:                               # EH_LABEL
# %bb.5:                                # %invoke.cont10
	addi.d	$s0, $sp, 24
.Ltmp290:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.6:                                # %call.i.noexc
	bnez	$a0, .LBB9_8
# %bb.7:                                # %if.then.i
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
.LBB9_8:                                # %nrvo.skipdtor
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	addi.d	$s1, $sp, 8
	stx.d	$a1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 8
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s1
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB9_9:                                # %lpad1
.Ltmp285:                               # EH_LABEL
	b	.LBB9_11
.LBB9_10:                               # %lpad
.Ltmp294:                               # EH_LABEL
.LBB9_11:                               # %ehcleanup
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	beq	$a0, $s1, .LBB9_13
# %bb.12:                               # %if.then.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB9_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev, .Lfunc_end9-_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp279-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp284-.Ltmp281              #   Call between .Ltmp281 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin3         #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp293-.Ltmp286              #   Call between .Ltmp286 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin3         #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp293           #   Call between .Ltmp293 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -528
	.cfi_def_cfa_offset 528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s7, $sp, 448                   # 8-byte Folded Spill
	st.d	$s8, $sp, 440                   # 8-byte Folded Spill
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
	move	$s0, $a1
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s6, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s5, $a0, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s4, $a0, 0
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 376
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 376
	move	$fp, $a0
	st.d	$a0, $sp, 408
	st.d	$s1, $sp, 424
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 416
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 344
.Ltmp295:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	addi.d	$a1, $sp, 344
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc154
	move	$fp, $a0
	ld.d	$s1, $sp, 344
	st.d	$a0, $sp, 376
	st.d	$s1, $sp, 392
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 384
	stx.b	$zero, $fp, $s1
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 312
.Ltmp298:                               # EH_LABEL
	addi.d	$a0, $sp, 344
	addi.d	$a1, $sp, 312
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc166
	ld.d	$a1, $sp, 312
	st.d	$a0, $sp, 344
	st.d	$a1, $sp, 360
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 352
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 312
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 280
.Ltmp301:                               # EH_LABEL
	addi.d	$a0, $sp, 312
	addi.d	$a1, $sp, 280
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.3:                                # %call2.i5.i.noexc178
	ld.d	$a1, $sp, 280
	st.d	$a0, $sp, 312
	st.d	$a1, $sp, 328
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 320
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $s6, 120
	ld.d	$s1, $s6, 112
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	beq	$fp, $s1, .LBB10_10
# %bb.4:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp304:                               # EH_LABEL
	sub.d	$s2, $fp, $s1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.5:                                # %for.body.i.i.i.i.i.preheader
	move	$a4, $zero
	srai.d	$a1, $s2, 5
	.p2align	4, , 16
.LBB10_6:                               # %for.body.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a4
	addi.d	$a3, $a2, 16
	stx.d	$a3, $a0, $a4
	st.d	$zero, $a2, 8
	st.b	$zero, $a2, 16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 32
	bnez	$a1, .LBB10_6
# %bb.7:                                # %for.body.preheader
	move	$a1, $zero
	srai.d	$fp, $a4, 5
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$s1, $a0, $a4
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB10_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 8
.Ltmp307:                               # EH_LABEL
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB10_8 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a1, $fp, .LBB10_8
	b	.LBB10_11
.LBB10_10:
	move	$s1, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
.LBB10_11:                              # %for.cond.cleanup
.Ltmp310:                               # EH_LABEL
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.12:                               # %invoke.cont30
.Ltmp313:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
# %bb.13:                               # %invoke.cont32
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp315:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.14:                               # %invoke.cont34
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp317:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.15:                               # %invoke.cont36
.Ltmp319:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.16:                               # %invoke.cont38
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_270
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_19
# %bb.18:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB10_21
.LBB10_19:                              # %if.end.i.i.i926
.Ltmp321:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.20:                               # %.noexc930
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp323:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp324:                               # EH_LABEL
.LBB10_21:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp325:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.22:                               # %call1.i.noexc
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.23:                               # %invoke.cont40
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 288
.Ltmp329:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.24:                               # %invoke.cont42
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i940
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_27
# %bb.26:                               # %if.then.i2.i.i943
	ld.bu	$a0, $s3, 67
	b	.LBB10_29
.LBB10_27:                              # %if.end.i.i.i948
.Ltmp331:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.28:                               # %.noexc954
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp333:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp334:                               # EH_LABEL
.LBB10_29:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i945
.Ltmp335:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.30:                               # %call1.i.noexc956
.Ltmp337:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.31:                               # %invoke.cont44
.Ltmp339:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.32:                               # %invoke.cont46
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp341:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.33:                               # %invoke.cont48
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp343:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.34:                               # %invoke.cont50
.Ltmp345:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 19
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.35:                               # %invoke.cont52
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_270
# %bb.36:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i966
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_38
# %bb.37:                               # %if.then.i2.i.i969
	ld.bu	$a0, $s2, 67
	b	.LBB10_40
.LBB10_38:                              # %if.end.i.i.i974
.Ltmp347:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.39:                               # %.noexc980
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp349:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp350:                               # EH_LABEL
.LBB10_40:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i971
.Ltmp351:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.41:                               # %call1.i.noexc982
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.42:                               # %invoke.cont54
.Ltmp355:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.43:                               # %invoke.cont56
.Ltmp357:                               # EH_LABEL
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.44:                               # %invoke.cont58
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.45:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i992
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_47
# %bb.46:                               # %if.then.i2.i.i995
	ld.bu	$a0, $s3, 67
	b	.LBB10_49
.LBB10_47:                              # %if.end.i.i.i1000
.Ltmp359:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.48:                               # %.noexc1006
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp361:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp362:                               # EH_LABEL
.LBB10_49:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i997
.Ltmp363:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.50:                               # %call1.i.noexc1008
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.51:                               # %invoke.cont60
.Ltmp367:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.52:                               # %invoke.cont62
	ld.wu	$a1, $s6, 136
.Ltmp369:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.53:                               # %invoke.cont64
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.54:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1018
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_56
# %bb.55:                               # %if.then.i2.i.i1021
	ld.bu	$a0, $s3, 67
	b	.LBB10_58
.LBB10_56:                              # %if.end.i.i.i1026
.Ltmp371:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.57:                               # %.noexc1032
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp373:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp374:                               # EH_LABEL
.LBB10_58:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1023
.Ltmp375:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.59:                               # %call1.i.noexc1034
.Ltmp377:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.60:                               # %invoke.cont66
.Ltmp379:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.61:                               # %invoke.cont68
	fld.d	$fa0, $s6, 144
.Ltmp381:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.62:                               # %invoke.cont70
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.63:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1044
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_65
# %bb.64:                               # %if.then.i2.i.i1047
	ld.bu	$a0, $s3, 67
	b	.LBB10_67
.LBB10_65:                              # %if.end.i.i.i1052
.Ltmp383:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.66:                               # %.noexc1058
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp385:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp386:                               # EH_LABEL
.LBB10_67:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1049
.Ltmp387:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.68:                               # %call1.i.noexc1060
.Ltmp389:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.69:                               # %invoke.cont72
.Ltmp391:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.70:                               # %for.cond76.preheader
	sub.d	$a0, $s5, $s4
	srai.d	$a1, $a0, 5
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	beqz	$a0, .LBB10_79
# %bb.71:                               # %for.body79.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$fp, $a0, %pc_lo12(.L.str.36)
	move	$s2, $zero
	move	$s3, $zero
	ori	$s5, $zero, 3
	b	.LBB10_73
	.p2align	4, , 16
.LBB10_72:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
                                        #   in Loop: Header=BB10_73 Depth=1
	addi.d	$s2, $s2, 32
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB10_79
.LBB10_73:                              # %for.body79
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 264
	st.d	$a2, $sp, 248
	st.d	$zero, $sp, 256
	addi.d	$s3, $s3, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 5
	st.b	$zero, $sp, 264
	bgeu	$s3, $a1, .LBB10_75
# %bb.74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.b	$a1, $fp, 2
	ld.h	$a2, $fp, 0
	addi.d	$a3, $sp, 264
	st.b	$a1, $a3, 2
	st.h	$a2, $a3, 0
	st.d	$s5, $sp, 256
	st.b	$zero, $sp, 267
.LBB10_75:                              # %if.end
                                        #   in Loop: Header=BB10_73 Depth=1
	add.d	$a2, $a0, $s2
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
.Ltmp393:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.76:                               # %invoke.cont91
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.77:                               # %invoke.cont93
                                        #   in Loop: Header=BB10_73 Depth=1
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_72
# %bb.78:                               # %if.then.i.i294
                                        #   in Loop: Header=BB10_73 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_72
.LBB10_79:                              # %for.cond.cleanup78
.Ltmp398:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp399:                               # EH_LABEL
# %bb.80:                               # %invoke.cont100
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
.Ltmp400:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.81:                               # %invoke.cont102
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB10_270
# %bb.82:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1070
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB10_84
# %bb.83:                               # %if.then.i2.i.i1073
	ld.bu	$a0, $s3, 67
	b	.LBB10_86
.LBB10_84:                              # %if.end.i.i.i1078
.Ltmp402:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.85:                               # %.noexc1084
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp404:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp405:                               # EH_LABEL
.LBB10_86:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1075
.Ltmp406:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.87:                               # %call1.i.noexc1086
.Ltmp408:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.88:                               # %invoke.cont104
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp410:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.89:                               # %invoke.cont106
	ld.d	$a1, $sp, 408
	ld.d	$a2, $sp, 416
.Ltmp412:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.90:                               # %for.cond110.preheader
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 216
.Ltmp414:                               # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 216
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.91:                               # %call2.i5.i.noexc339
	ld.d	$a1, $sp, 216
	st.d	$a0, $sp, 248
	st.d	$a1, $sp, 264
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 248
	st.d	$a1, $sp, 256
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 256
.Ltmp417:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.92:                               # %invoke.cont151
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_274
# %bb.93:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1096
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_95
# %bb.94:                               # %if.then.i2.i.i1099
	ld.bu	$a0, $s2, 67
	b	.LBB10_97
.LBB10_95:                              # %if.end.i.i.i1104
.Ltmp419:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.96:                               # %.noexc1110
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp421:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp422:                               # EH_LABEL
.LBB10_97:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1101
.Ltmp423:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.98:                               # %call1.i.noexc1112
.Ltmp425:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp426:                               # EH_LABEL
# %bb.99:                               # %invoke.cont163
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$s8, $zero, -177
	lu32i.d	$s8, 0
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 248
	ld.d	$a2, $sp, 256
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp427:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.100:                              # %invoke.cont176
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp429:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.101:                              # %invoke.cont189
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp431:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.102:                              # %invoke.cont202
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 18
	st.d	$fp, $a0, 16
.Ltmp433:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.103:                              # %invoke.cont215
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.104:                              # %invoke.cont228
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
.Ltmp437:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.105:                              # %invoke.cont230
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_274
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1137
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_108
# %bb.107:                              # %if.then.i2.i.i1140
	ld.bu	$a0, $s2, 67
	b	.LBB10_110
.LBB10_108:                             # %if.end.i.i.i1145
.Ltmp439:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
# %bb.109:                              # %.noexc1151
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp441:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp442:                               # EH_LABEL
.LBB10_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1142
.Ltmp443:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.111:                              # %call1.i.noexc1153
.Ltmp445:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.112:                              # %invoke.cont232
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp447:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.113:                              # %for.cond237.preheader
	ld.d	$a0, $s6, 48
	ld.d	$fp, $s6, 40
	beq	$a0, $fp, .LBB10_235
# %bb.114:                              # %for.body242.lr.ph
	move	$a1, $s6
	move	$s6, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.d	$a0, $a1, 600
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a0, $a0, 1023
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	b	.LBB10_116
	.p2align	4, , 16
.LBB10_115:                             # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 48
	ld.d	$fp, $a1, 40
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$s6, $a2, 31, 0
	sub.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 5
	bgeu	$s6, $a0, .LBB10_235
.LBB10_116:                             # %for.body242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_120 Depth 2
                                        #     Child Loop BB10_151 Depth 2
                                        #       Child Loop BB10_155 Depth 3
                                        #       Child Loop BB10_167 Depth 3
                                        #       Child Loop BB10_186 Depth 3
	ld.d	$s5, $a1, 608
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$s5, .LBB10_127
# %bb.117:                              # %while.body.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$s2, $a0, 0
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_120
	.p2align	4, , 16
.LBB10_118:                             # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	sub.d	$a0, $s7, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_119:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	beqz	$s5, .LBB10_122
.LBB10_120:                             # %while.body.i.i.i.i
                                        #   Parent Loop BB10_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s5, 40
	sltu	$a0, $s4, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_118
# %bb.121:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_120 Depth=2
	ld.d	$a0, $s5, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_119
	b	.LBB10_118
	.p2align	4, , 16
.LBB10_122:                             # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$s3, $a1, .LBB10_127
# %bb.123:                              # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$s5, $s3, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_125
# %bb.124:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $s3, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_126
.LBB10_125:                             # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	sub.d	$a0, $s4, $s5
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_126:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s3, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_127:                             # %invoke.cont245
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s6, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$s3, $a0, $a1
	ld.d	$a0, $s3, 72
	ld.d	$a1, $s3, 64
	beq	$a0, $a1, .LBB10_132
# %bb.128:                              # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp449:                               # EH_LABEL
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.Ltmp450:                               # EH_LABEL
# %bb.129:                              # %invoke.cont.i468
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $s3, 64
	ld.d	$a0, $s3, 72
	sub.d	$a2, $a0, $a1
	blez	$a2, .LBB10_131
# %bb.130:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_131:                             # %invoke.cont250
                                        #   in Loop: Header=BB10_116 Depth=1
	slli.d	$s2, $s6, 5
	add.d	$a0, $fp, $s2
	ld.d	$a2, $a0, 8
	bnez	$a2, .LBB10_133
	b	.LBB10_233
	.p2align	4, , 16
.LBB10_132:                             #   in Loop: Header=BB10_116 Depth=1
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	slli.d	$s2, $s6, 5
	add.d	$a0, $fp, $s2
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB10_233
.LBB10_133:                             # %land.lhs.true
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB10_233
# %bb.134:                              # %if.then254
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB10_144
# %bb.135:                              # %if.then256
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB10_272
# %bb.136:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1163
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB10_138
# %bb.137:                              # %if.then.i2.i.i1166
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB10_140
.LBB10_138:                             # %if.end.i.i.i1171
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp452:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp453:                               # EH_LABEL
# %bb.139:                              # %.noexc1177
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp454:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp455:                               # EH_LABEL
.LBB10_140:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1168
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp456:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.141:                              # %call1.i.noexc1179
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.142:                              # %invoke.cont258
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a1, $sp, 344
	ld.d	$a2, $sp, 352
.Ltmp460:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.143:                              # %invoke.cont258.invoke.cont263_crit_edge
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $a0, 40
	add.d	$a0, $fp, $s2
	ld.d	$a2, $a0, 8
.LBB10_144:                             # %invoke.cont263
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	and	$a1, $a1, $s8
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
	ldx.d	$a1, $fp, $s2
.Ltmp462:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.145:                              # %invoke.cont267
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp464:                               # EH_LABEL
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.146:                              # %invoke.cont269
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp466:                               # EH_LABEL
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp467:                               # EH_LABEL
# %bb.147:                              # %invoke.cont271
                                        #   in Loop: Header=BB10_116 Depth=1
.Ltmp468:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.148:                              # %for.cond276.preheader
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_233
# %bb.149:                              # %for.body279.preheader
                                        #   in Loop: Header=BB10_116 Depth=1
	move	$a1, $zero
	b	.LBB10_151
	.p2align	4, , 16
.LBB10_150:                             # %if.end500
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_233
.LBB10_151:                             # %for.body279
                                        #   Parent Loop BB10_116 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_155 Depth 3
                                        #       Child Loop BB10_167 Depth 3
                                        #       Child Loop BB10_186 Depth 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 608
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB10_162
# %bb.152:                              # %while.body.lr.ph.i.i.i.i509
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s2, $a1, 8
	ldx.d	$s6, $a0, $a2
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	b	.LBB10_155
	.p2align	4, , 16
.LBB10_153:                             # %if.then.i.i.i.i.i.i.i552
                                        #   in Loop: Header=BB10_155 Depth=3
	sub.d	$a0, $s4, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_154:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i523
                                        #   in Loop: Header=BB10_155 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s3, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s3, $s3, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s3, .LBB10_157
.LBB10_155:                             # %while.body.i.i.i.i512
                                        #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s3, 40
	sltu	$a0, $s2, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_153
# %bb.156:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i519
                                        #   in Loop: Header=BB10_155 Depth=3
	ld.d	$a0, $s3, 32
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_154
	b	.LBB10_153
	.p2align	4, , 16
.LBB10_157:                             # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i531
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	beq	$fp, $a1, .LBB10_162
# %bb.158:                              # %lor.lhs.false.i.i.i533
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$s3, $fp, 40
	sltu	$a0, $s3, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB10_160
# %bb.159:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i538
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_161
.LBB10_160:                             # %if.then.i.i.i.i.i.i547
                                        #   in Loop: Header=BB10_151 Depth=2
	sub.d	$a0, $s2, $s3
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
.LBB10_161:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i542
                                        #   in Loop: Header=BB10_151 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB10_162:                             # %invoke.cont283
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $a1
	beqz	$a1, .LBB10_150
# %bb.163:                              # %if.then289
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_165
# %bb.164:                              # %if.else
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a1, $sp, 312
	ld.d	$a2, $sp, 320
.Ltmp471:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
	b	.LBB10_182
.LBB10_165:                             # %for.cond293.preheader
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB10_175
# %bb.166:                              # %for.body298.lr.ph
                                        #   in Loop: Header=BB10_151 Depth=2
	move	$s3, $zero
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB10_167:                             # %for.body298
                                        #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp473:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.168:                              # %invoke.cont300
                                        #   in Loop: Header=BB10_167 Depth=3
	slli.d	$a0, $s3, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp475:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.169:                              # %invoke.cont304
                                        #   in Loop: Header=BB10_167 Depth=3
.Ltmp477:                               # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.170:                              # %invoke.cont306
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s2, 208
	slli.d	$s3, $s3, 2
	ldx.w	$a1, $a0, $s3
.Ltmp479:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp480:                               # EH_LABEL
# %bb.171:                              # %invoke.cont311
                                        #   in Loop: Header=BB10_167 Depth=3
.Ltmp481:                               # EH_LABEL
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp482:                               # EH_LABEL
# %bb.172:                              # %invoke.cont313
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s2, 232
	ldx.w	$a1, $a0, $s3
.Ltmp483:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.173:                              # %invoke.cont317
                                        #   in Loop: Header=BB10_167 Depth=3
.Ltmp485:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.174:                              # %for.inc321
                                        #   in Loop: Header=BB10_167 Depth=3
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	bstrpick.d	$s3, $fp, 31, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 2
	addi.w	$fp, $fp, 1
	bltu	$s3, $a0, .LBB10_167
.LBB10_175:                             # %for.cond.cleanup297
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB10_268
# %bb.176:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1192
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB10_178
# %bb.177:                              # %if.then.i2.i.i1195
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.bu	$a0, $s6, 67
	b	.LBB10_180
.LBB10_178:                             # %if.end.i.i.i1200
                                        #   in Loop: Header=BB10_151 Depth=2
.Ltmp488:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp489:                               # EH_LABEL
# %bb.179:                              # %.noexc1206
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp490:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp491:                               # EH_LABEL
.LBB10_180:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1197
                                        #   in Loop: Header=BB10_151 Depth=2
.Ltmp492:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.181:                              # %call1.i.noexc1208
                                        #   in Loop: Header=BB10_151 Depth=2
.Ltmp494:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp495:                               # EH_LABEL
.LBB10_182:                             # %if.end329
                                        #   in Loop: Header=BB10_151 Depth=2
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
	beq	$a0, $a1, .LBB10_150
# %bb.183:                              # %for.body337.lr.ph
                                        #   in Loop: Header=BB10_151 Depth=2
	move	$s4, $zero
	ori	$fp, $zero, 1
	b	.LBB10_186
	.p2align	4, , 16
.LBB10_184:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit797
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s2, 216
	ld.d	$a1, $s2, 208
.LBB10_185:                             # %for.inc496
                                        #   in Loop: Header=BB10_186 Depth=3
	bstrpick.d	$s4, $fp, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$fp, $fp, 1
	bgeu	$s4, $a2, .LBB10_150
.LBB10_186:                             # %for.body337
                                        #   Parent Loop BB10_116 Depth=1
                                        #     Parent Loop BB10_151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s2, 40
	slli.d	$a3, $s4, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB10_185
# %bb.187:                              # %if.then341
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s6, $a0, $a2
	ld.d	$s7, $a1, 8
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $sp, 168
	addi.d	$a1, $s7, 1
.Ltmp497:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp498:                               # EH_LABEL
# %bb.188:                              # %invoke.cont.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 160
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s7, .LBB10_258
# %bb.189:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp499:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp500:                               # EH_LABEL
# %bb.190:                              # %invoke.cont1.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB10_258
# %bb.191:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp501:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.192:                              # %invoke.cont347
                                        #   in Loop: Header=BB10_186 Depth=3
	slli.d	$a0, $s4, 5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$a3, $sp, 160
	ld.d	$a2, $a1, 8
	sub.d	$a1, $s3, $a3
	bltu	$a1, $a2, .LBB10_260
# %bb.193:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp504:                               # EH_LABEL
	ldx.d	$a1, $a4, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
# %bb.194:                              # %call.i.i.i.noexc
                                        #   in Loop: Header=BB10_186 Depth=3
	addi.d	$a3, $sp, 200
	st.d	$a3, $sp, 184
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_196
# %bb.195:                              # %if.else.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 200
	ld.d	$s5, $a0, 8
	st.d	$a1, $sp, 184
	b	.LBB10_197
	.p2align	4, , 16
.LBB10_196:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$s5, $a0, 8
	addi.d	$a2, $s5, 1
	move	$s7, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
.LBB10_197:                             # %invoke.cont351
                                        #   in Loop: Header=BB10_186 Depth=3
	st.d	$s5, $sp, 192
	st.d	$s6, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 192
	st.b	$zero, $a0, 16
	beq	$a1, $s3, .LBB10_262
# %bb.198:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp507:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.199:                              # %call2.i.i.noexc
                                        #   in Loop: Header=BB10_186 Depth=3
	addi.d	$a3, $sp, 232
	st.d	$a3, $sp, 216
	ld.d	$a1, $a0, 0
	addi.d	$s6, $a0, 16
	beq	$a1, $s6, .LBB10_201
# %bb.200:                              # %if.else.i.i622
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 232
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 216
	b	.LBB10_202
	.p2align	4, , 16
.LBB10_201:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i628
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s5, $a0
	move	$a0, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB10_202:                             # %invoke.cont353
                                        #   in Loop: Header=BB10_186 Depth=3
	st.d	$s3, $sp, 224
	st.d	$s6, $a0, 0
	ld.d	$a1, $sp, 184
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 200
	beq	$a1, $a0, .LBB10_204
# %bb.203:                              # %if.then.i.i636
                                        #   in Loop: Header=BB10_186 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_204:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB10_206
# %bb.205:                              # %if.then.i.i643
                                        #   in Loop: Header=BB10_186 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_206:                             # %invoke.cont381
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 10
	st.d	$a2, $a1, 8
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
	add.d	$a0, $s0, $a0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a0, 16
.Ltmp510:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.207:                              # %invoke.cont394
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 64
	alsl.d	$a2, $s4, $a0, 4
	slli.d	$s3, $s4, 4
	ldx.d	$a1, $a0, $s3
	ld.d	$a2, $a2, 8
.Ltmp512:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.208:                              # %invoke.cont410
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 112
	alsl.d	$a2, $s4, $a0, 4
	ldx.d	$a1, $a0, $s3
	ld.d	$a2, $a2, 8
.Ltmp514:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp515:                               # EH_LABEL
# %bb.209:                              # %invoke.cont425
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 136
	alsl.d	$a2, $s4, $a0, 4
	ldx.d	$a1, $a0, $s3
	ld.d	$a2, $a2, 8
.Ltmp516:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.210:                              # %invoke.cont440
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
	ld.d	$a0, $s2, 88
	alsl.d	$a2, $s4, $a0, 4
	ldx.d	$a1, $a0, $s3
	ld.d	$a2, $a2, 8
.Ltmp518:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp519:                               # EH_LABEL
# %bb.211:                              # %invoke.cont444
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_214
# %bb.212:                              # %if.then447
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a1, 4
	ldx.d	$s6, $a1, $s3
	ld.d	$s7, $a0, 8
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(__eqtf2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_217
# %bb.213:                              # %if.then451
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s2, 64
	alsl.d	$a1, $s4, $a0, 4
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 8
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__addtf3)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$s7, $a1
	b	.LBB10_218
	.p2align	4, , 16
.LBB10_214:                             # %if.else489
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB10_266
# %bb.215:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1264
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_227
# %bb.216:                              # %if.then.i2.i.i1267
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_229
.LBB10_217:                             #   in Loop: Header=BB10_186 Depth=3
	move	$s6, $zero
	move	$s7, $zero
.LBB10_218:                             # %invoke.cont480
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	move	$s1, $s8
	and	$a2, $a2, $s8
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 6
	st.d	$a2, $a1, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 18
	st.d	$a1, $a0, 16
.Ltmp520:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp521:                               # EH_LABEL
# %bb.219:                              # %invoke.cont482
                                        #   in Loop: Header=BB10_186 Depth=3
	move	$s8, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s8, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB10_264
# %bb.220:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1238
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB10_222
# %bb.221:                              # %if.then.i2.i.i1241
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB10_224
.LBB10_222:                             # %if.end.i.i.i1246
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp522:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.223:                              # %.noexc1252
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp524:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp525:                               # EH_LABEL
.LBB10_224:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1243
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp526:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp527:                               # EH_LABEL
# %bb.225:                              # %call1.i.noexc1254
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp528:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.226:                              # %invoke.cont484
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s2, 184
	alsl.d	$a1, $s4, $a0, 4
	stx.d	$s6, $a0, $s3
	st.d	$s7, $a1, 8
	move	$s8, $s1
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_231
.LBB10_227:                             # %if.end.i.i.i1272
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp534:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.228:                              # %.noexc1278
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp536:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp537:                               # EH_LABEL
.LBB10_229:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1269
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp538:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp539:                               # EH_LABEL
# %bb.230:                              # %call1.i.noexc1280
                                        #   in Loop: Header=BB10_186 Depth=3
.Ltmp540:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
.LBB10_231:                             # %if.end492
                                        #   in Loop: Header=BB10_186 Depth=3
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB10_184
# %bb.232:                              # %if.then.i.i792
                                        #   in Loop: Header=BB10_186 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_184
	.p2align	4, , 16
.LBB10_233:                             # %if.end506
                                        #   in Loop: Header=BB10_116 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB10_115
# %bb.234:                              # %if.then.i.i.i805
                                        #   in Loop: Header=BB10_116 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_115
.LBB10_235:                             # %for.cond.cleanup241
	ld.d	$a1, $sp, 376
	ld.d	$a2, $sp, 384
.Ltmp561:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.236:                              # %invoke.cont514
.Ltmp563:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.237:                              # %invoke.cont516
.Ltmp565:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.238:                              # %invoke.cont518
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_240
# %bb.239:                              # %if.then.i.i813
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_240:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_242
# %bb.241:                              # %if.then.i.i820
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_242:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_247
# %bb.243:                              # %for.body.i.i.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_245
	.p2align	4, , 16
.LBB10_244:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB10_245 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s1, .LBB10_247
.LBB10_245:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_244
# %bb.246:                              # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB10_245 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_244
.LBB10_247:                             # %invoke.cont.i828
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB10_249
# %bb.248:                              # %if.then.i.i.i830
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_249:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_251
# %bb.250:                              # %if.then.i.i832
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_251:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit837
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_253
# %bb.252:                              # %if.then.i.i839
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_253:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit844
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_255
# %bb.254:                              # %if.then.i.i846
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_255:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_257
# %bb.256:                              # %if.then.i.i853
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_257:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858
	ld.d	$s8, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 448                   # 8-byte Folded Reload
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
.LBB10_258:                             # %if.then.i.i10.invoke.i.i
.Ltmp552:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.259:                              # %if.then.i.i10.cont.i.i
.LBB10_260:                             # %if.then.i.i.i.i615
.Ltmp549:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.261:                              # %.noexc616
.LBB10_262:                             # %if.then.i.i.i632
.Ltmp546:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.263:                              # %.noexc633
.LBB10_264:                             # %if.then.i.i.i1250
.Ltmp531:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.265:                              # %.noexc1251
.LBB10_266:                             # %if.then.i.i.i1276
.Ltmp543:                               # EH_LABEL
	addi.d	$fp, $sp, 232
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.267:                              # %.noexc1277
.LBB10_268:                             # %if.then.i.i.i1204
.Ltmp555:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.269:                              # %.noexc1205
.LBB10_270:                             # %if.then.i.i.i1082.invoke
.Ltmp570:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.271:                              # %if.then.i.i.i1082.cont
.LBB10_272:                             # %if.then.i.i.i1175
.Ltmp558:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.273:                              # %.noexc1176
.LBB10_274:                             # %if.then.i.i.i1149.invoke
.Ltmp567:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.275:                              # %if.then.i.i.i1149.cont
.LBB10_276:                             # %lpad15
.Ltmp306:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_324
	b	.LBB10_333
.LBB10_277:                             # %lpad144
.Ltmp416:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_318
	b	.LBB10_321
.LBB10_278:                             # %lpad29
.Ltmp312:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_322
	b	.LBB10_328
.LBB10_279:                             # %lpad11
.Ltmp303:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_325
	b	.LBB10_334
.LBB10_280:                             # %lpad8
.Ltmp300:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_326
	b	.LBB10_335
.LBB10_281:                             # %lpad5
.Ltmp297:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_327
	b	.LBB10_336
.LBB10_282:                             # %lpad257.loopexit.split-lp
.Ltmp560:                               # EH_LABEL
	b	.LBB10_288
.LBB10_283:                             # %lpad249
.Ltmp451:                               # EH_LABEL
	b	.LBB10_285
.LBB10_284:                             # %lpad150
.Ltmp569:                               # EH_LABEL
.LBB10_285:                             # %ehcleanup520
	move	$s0, $a0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_317
	b	.LBB10_320
.LBB10_286:                             # %ehcleanup530.thread
.Ltmp309:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_328
.LBB10_287:                             # %lpad282.loopexit.split-lp
.Ltmp557:                               # EH_LABEL
.LBB10_288:                             # %ehcleanup507
	move	$s0, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_315
.LBB10_289:                             # %lpad257.loopexit
.Ltmp470:                               # EH_LABEL
	b	.LBB10_310
.LBB10_290:                             # %lpad90
.Ltmp397:                               # EH_LABEL
	ld.d	$a1, $sp, 248
	move	$s0, $a0
	addi.d	$a0, $sp, 264
	beq	$a1, $a0, .LBB10_292
# %bb.291:                              # %if.then.i.i301
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_292:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_318
	b	.LBB10_321
.LBB10_293:                             # %lpad31
.Ltmp572:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_318
	b	.LBB10_321
.LBB10_294:                             # %lpad282.loopexit
.Ltmp496:                               # EH_LABEL
	b	.LBB10_310
.LBB10_295:                             # %lpad358.loopexit.split-lp
.Ltmp545:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB10_313
.LBB10_296:                             # %lpad461.loopexit.split-lp
.Ltmp533:                               # EH_LABEL
	b	.LBB10_305
.LBB10_297:                             # %lpad350.loopexit
.Ltmp506:                               # EH_LABEL
	b	.LBB10_307
.LBB10_298:                             # %lpad352.loopexit.split-lp
.Ltmp548:                               # EH_LABEL
	b	.LBB10_301
.LBB10_299:                             # %lpad350.loopexit.split-lp
.Ltmp551:                               # EH_LABEL
	b	.LBB10_307
.LBB10_300:                             # %lpad352.loopexit
.Ltmp509:                               # EH_LABEL
.LBB10_301:                             # %lpad352
	move	$s0, $a0
	addi.d	$a1, $sp, 200
	ld.d	$a0, $sp, 184
	beq	$a0, $a1, .LBB10_308
# %bb.302:                              # %if.then.i.i749
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_308
.LBB10_303:                             # %lpad.i.i.loopexit.split-lp
.Ltmp554:                               # EH_LABEL
	b	.LBB10_307
.LBB10_304:                             # %lpad461.loopexit
.Ltmp530:                               # EH_LABEL
.LBB10_305:                             # %ehcleanup493
	move	$s0, $a0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_312
.LBB10_306:                             # %lpad.i.i.loopexit
.Ltmp503:                               # EH_LABEL
.LBB10_307:                             # %ehcleanup355
	move	$s0, $a0
.LBB10_308:                             # %ehcleanup355
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB10_314
	b	.LBB10_315
.LBB10_309:                             # %lpad299
.Ltmp487:                               # EH_LABEL
.LBB10_310:                             # %ehcleanup507
	move	$s0, $a0
	b	.LBB10_315
.LBB10_311:                             # %lpad358.loopexit
.Ltmp542:                               # EH_LABEL
	move	$s0, $a0
.LBB10_312:                             # %ehcleanup493
	addi.d	$fp, $sp, 232
.LBB10_313:                             # %ehcleanup493
	ld.d	$a0, $sp, 216
	beq	$a0, $fp, .LBB10_315
.LBB10_314:                             # %if.then.i.i799
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB10_315:                             # %ehcleanup507
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_319
# %bb.316:                              # %ehcleanup520
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB10_320
.LBB10_317:                             # %ehcleanup528
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB10_321
.LBB10_318:                             # %ehcleanup530
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_322
	b	.LBB10_328
.LBB10_319:                             # %if.then.i.i.i807
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB10_317
.LBB10_320:                             # %if.then.i.i860
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB10_318
.LBB10_321:                             # %ehcleanup530
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB10_328
.LBB10_322:                             # %invoke.cont.i884
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bnez	$a0, .LBB10_332
# %bb.323:                              # %ehcleanup531
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	bne	$a0, $a1, .LBB10_333
.LBB10_324:                             # %ehcleanup533
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	bne	$a0, $a1, .LBB10_334
.LBB10_325:                             # %ehcleanup535
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	bne	$a0, $a1, .LBB10_335
.LBB10_326:                             # %ehcleanup537
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	bne	$a0, $a1, .LBB10_336
.LBB10_327:                             # %ehcleanup539
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_328:                             # %for.body.i.i875.preheader
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB10_330
	.p2align	4, , 16
.LBB10_329:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i879
                                        #   in Loop: Header=BB10_330 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s1, .LBB10_322
.LBB10_330:                             # %for.body.i.i875
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB10_329
# %bb.331:                              # %if.then.i.i.i.i.i878
                                        #   in Loop: Header=BB10_330 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB10_329
.LBB10_332:                             # %if.then.i.i.i886
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB10_324
.LBB10_333:                             # %if.then.i.i892
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB10_325
.LBB10_334:                             # %if.then.i.i899
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB10_326
.LBB10_335:                             # %if.then.i.i906
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB10_327
.LBB10_336:                             # %if.then.i.i913
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end10-_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp295-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin4         #     jumps to .Ltmp297
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp298-.Ltmp296              #   Call between .Ltmp296 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp299-.Ltmp298              #   Call between .Ltmp298 and .Ltmp299
	.uleb128 .Ltmp300-.Lfunc_begin4         #     jumps to .Ltmp300
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin4         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp306-.Lfunc_begin4         #     jumps to .Ltmp306
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp308-.Ltmp307              #   Call between .Ltmp307 and .Ltmp308
	.uleb128 .Ltmp309-.Lfunc_begin4         #     jumps to .Ltmp309
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp311-.Ltmp310              #   Call between .Ltmp310 and .Ltmp311
	.uleb128 .Ltmp312-.Lfunc_begin4         #     jumps to .Ltmp312
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp392-.Ltmp313              #   Call between .Ltmp313 and .Ltmp392
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp396-.Ltmp393              #   Call between .Ltmp393 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin4         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp398-.Ltmp396              #   Call between .Ltmp396 and .Ltmp398
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp413-.Ltmp398              #   Call between .Ltmp398 and .Ltmp413
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin4         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp448-.Ltmp417              #   Call between .Ltmp417 and .Ltmp448
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin4         #     jumps to .Ltmp451
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp452-.Ltmp450              #   Call between .Ltmp450 and .Ltmp452
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp469-.Ltmp452              #   Call between .Ltmp452 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin4         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp471-.Ltmp469              #   Call between .Ltmp469 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp496-.Lfunc_begin4         #     jumps to .Ltmp496
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp486-.Ltmp473              #   Call between .Ltmp473 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin4         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp495-.Ltmp488              #   Call between .Ltmp488 and .Ltmp495
	.uleb128 .Ltmp496-.Lfunc_begin4         #     jumps to .Ltmp496
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp497-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp502-.Ltmp497              #   Call between .Ltmp497 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin4         #     jumps to .Ltmp503
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin4         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp507-.Ltmp505              #   Call between .Ltmp505 and .Ltmp507
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin4         #     jumps to .Ltmp509
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp510-.Ltmp508              #   Call between .Ltmp508 and .Ltmp510
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp519-.Ltmp510              #   Call between .Ltmp510 and .Ltmp519
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp529-.Ltmp520              #   Call between .Ltmp520 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin4         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp541-.Ltmp534              #   Call between .Ltmp534 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin4         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp561-.Ltmp541              #   Call between .Ltmp541 and .Ltmp561
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp566-.Ltmp561              #   Call between .Ltmp561 and .Ltmp566
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp552-.Ltmp566              #   Call between .Ltmp566 and .Ltmp552
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin4         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin4         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin4         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin4         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin4         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin4         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin4         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin4         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin4         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Lfunc_end10-.Ltmp568          #   Call between .Ltmp568 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB11_38
# %bb.1:                                # %if.end
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB11_11
# %bb.2:                                # %if.then2
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp573:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.3:                                # %invoke.cont.i.i
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB11_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp575:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp576:                               # EH_LABEL
# %bb.5:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB11_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp577:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -13
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB11_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp579:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.9:                                # %call2.i.i.noexc
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB11_12
# %bb.10:                               # %if.else.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB11_13
.LBB11_11:                              # %if.else
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB11_12:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB11_13:                              # %invoke.cont
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB11_15
# %bb.14:                               # %if.then.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp581:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp582:                               # EH_LABEL
# %bb.16:                               # %invoke.cont8
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB11_26
# %bb.17:                               # %if.then10
.Ltmp584:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp585:                               # EH_LABEL
# %bb.18:                               # %invoke.cont11
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp586:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.19:                               # %invoke.cont13
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_22
# %bb.21:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB11_24
.LBB11_22:                              # %if.end.i.i.i
.Ltmp588:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.23:                               # %.noexc51
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp590:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp591:                               # EH_LABEL
.LBB11_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp592:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp593:                               # EH_LABEL
# %bb.25:                               # %call1.i.noexc
.Ltmp594:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
.LBB11_26:                              # %if.end17
.Ltmp596:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 28
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp597:                               # EH_LABEL
# %bb.27:                               # %invoke.cont18
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp598:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp599:                               # EH_LABEL
# %bb.28:                               # %invoke.cont20
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB11_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB11_31
# %bb.30:                               # %if.then.i2.i.i64
	ld.bu	$a0, $s2, 67
	b	.LBB11_33
.LBB11_31:                              # %if.end.i.i.i69
.Ltmp600:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.32:                               # %.noexc75
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp602:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp603:                               # EH_LABEL
.LBB11_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66
.Ltmp604:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp605:                               # EH_LABEL
# %bb.34:                               # %call1.i.noexc77
.Ltmp606:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.35:                               # %invoke.cont22
.Ltmp608:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp609:                               # EH_LABEL
# %bb.36:                               # %invoke.cont24
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_38
# %bb.37:                               # %if.then.i.i36
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_38:                              # %if.end27
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB11_39:                              # %if.then.i.i10.invoke.i.i
.Ltmp616:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp617:                               # EH_LABEL
# %bb.40:                               # %if.then.i.i10.cont.i.i
.LBB11_41:                              # %if.then.i.i.i73.invoke
.Ltmp610:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp611:                               # EH_LABEL
# %bb.42:                               # %if.then.i.i.i73.cont
.LBB11_43:                              # %if.then.i.i.i
.Ltmp613:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp614:                               # EH_LABEL
# %bb.44:                               # %.noexc
.LBB11_45:                              # %lpad5
.Ltmp583:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_51
.LBB11_46:                              # %lpad
.Ltmp615:                               # EH_LABEL
	b	.LBB11_48
.LBB11_47:                              # %lpad.i.i
.Ltmp618:                               # EH_LABEL
.LBB11_48:                              # %lpad.i.i
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB11_53
# %bb.49:                               # %if.then.i.i15.i.i
	move	$a0, $a1
	b	.LBB11_52
.LBB11_50:                              # %lpad7
.Ltmp612:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB11_51:                              # %ehcleanup
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB11_53
.LBB11_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB11_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end11-_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp573-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp578-.Ltmp573              #   Call between .Ltmp573 and .Ltmp578
	.uleb128 .Ltmp618-.Lfunc_begin5         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp615-.Lfunc_begin5         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp581-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp582-.Ltmp581              #   Call between .Ltmp581 and .Ltmp582
	.uleb128 .Ltmp583-.Lfunc_begin5         #     jumps to .Ltmp583
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp584-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp609-.Ltmp584              #   Call between .Ltmp584 and .Ltmp609
	.uleb128 .Ltmp612-.Lfunc_begin5         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp616-.Ltmp609              #   Call between .Ltmp609 and .Ltmp616
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp616-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp617-.Ltmp616              #   Call between .Ltmp616 and .Ltmp617
	.uleb128 .Ltmp618-.Lfunc_begin5         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp611-.Ltmp610              #   Call between .Ltmp610 and .Ltmp611
	.uleb128 .Ltmp612-.Lfunc_begin5         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp613-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp614-.Ltmp613              #   Call between .Ltmp613 and .Ltmp614
	.uleb128 .Ltmp615-.Lfunc_begin5         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Lfunc_end11-.Ltmp614          #   Call between .Ltmp614 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
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
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s8, $a0, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s1, $s3, 8
	ld.d	$s4, $s3, 0
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 392
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 360
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 360
	move	$fp, $a0
	st.d	$a0, $sp, 392
	st.d	$s2, $sp, 408
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 400
	stx.b	$zero, $fp, $s2
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 360
	ori	$a0, $zero, 109
	st.d	$a0, $sp, 328
.Ltmp619:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 328
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp620:                               # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc103
	move	$fp, $a0
	ld.d	$s2, $sp, 328
	st.d	$a0, $sp, 360
	st.d	$s2, $sp, 376
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 109
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 368
	stx.b	$zero, $fp, $s2
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 328
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 296
.Ltmp622:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp623:                               # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc115
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 296
	st.d	$a0, $sp, 328
	st.d	$a1, $sp, 344
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 336
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 296
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 264
.Ltmp625:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 264
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp626:                               # EH_LABEL
# %bb.3:                                # %call2.i5.i.noexc127
	ld.d	$a1, $sp, 264
	st.d	$a0, $sp, 296
	st.d	$a1, $sp, 312
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 304
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $s8, 120
	ld.d	$s3, $s8, 112
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	beq	$fp, $s3, .LBB12_10
# %bb.4:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
.Ltmp628:                               # EH_LABEL
	sub.d	$s2, $fp, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp629:                               # EH_LABEL
# %bb.5:                                # %for.body.i.i.i.i.i.preheader
	move	$a4, $zero
	srai.d	$a1, $s2, 5
	.p2align	4, , 16
.LBB12_6:                               # %for.body.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a4
	addi.d	$a3, $a2, 16
	stx.d	$a3, $a0, $a4
	st.d	$zero, $a2, 8
	st.b	$zero, $a2, 16
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 32
	bnez	$a1, .LBB12_6
# %bb.7:                                # %for.body.preheader
	move	$a1, $zero
	srai.d	$fp, $a4, 5
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$s7, $a0, $a4
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB12_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 112
	slli.d	$a1, $a1, 5
	ldx.d	$a0, $a0, $a1
	ld.b	$a4, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $a0, 8
.Ltmp631:                               # EH_LABEL
	ori	$a3, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc)
	jirl	$ra, $ra, 0
.Ltmp632:                               # EH_LABEL
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB12_8 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	addi.w	$s2, $s2, 1
	bltu	$a1, $fp, .LBB12_8
	b	.LBB12_11
.LBB12_10:
	move	$s7, $zero
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
.LBB12_11:                              # %for.cond.cleanup
.Ltmp634:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp635:                               # EH_LABEL
# %bb.12:                               # %invoke.cont29
.Ltmp637:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp638:                               # EH_LABEL
# %bb.13:                               # %invoke.cont31
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp639:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.14:                               # %invoke.cont33
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp641:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp642:                               # EH_LABEL
# %bb.15:                               # %invoke.cont35
.Ltmp643:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:                               # EH_LABEL
# %bb.16:                               # %invoke.cont37
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_196
# %bb.17:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_19
# %bb.18:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB12_21
.LBB12_19:                              # %if.end.i.i.i
.Ltmp645:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.20:                               # %.noexc643
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp647:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp648:                               # EH_LABEL
.LBB12_21:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp649:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp650:                               # EH_LABEL
# %bb.22:                               # %call1.i.noexc
.Ltmp651:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.23:                               # %invoke.cont39
	ld.d	$a1, $sp, 264
	ld.d	$a2, $sp, 272
.Ltmp653:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp654:                               # EH_LABEL
# %bb.24:                               # %invoke.cont41
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB12_196
# %bb.25:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i653
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB12_27
# %bb.26:                               # %if.then.i2.i.i656
	ld.bu	$a0, $s3, 67
	b	.LBB12_29
.LBB12_27:                              # %if.end.i.i.i661
.Ltmp655:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.28:                               # %.noexc667
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp657:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp658:                               # EH_LABEL
.LBB12_29:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i658
.Ltmp659:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp660:                               # EH_LABEL
# %bb.30:                               # %call1.i.noexc669
.Ltmp661:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp662:                               # EH_LABEL
# %bb.31:                               # %invoke.cont43
.Ltmp663:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.32:                               # %invoke.cont45
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp665:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp666:                               # EH_LABEL
# %bb.33:                               # %invoke.cont47
	ld.d	$a1, $sp, 392
	ld.d	$a2, $sp, 400
.Ltmp667:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp668:                               # EH_LABEL
# %bb.34:                               # %for.cond51.preheader
	addi.d	$a0, $sp, 248
	st.d	$a0, $sp, 232
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 200
.Ltmp669:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.35:                               # %call2.i5.i.noexc194
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 232
	st.d	$a1, $sp, 248
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 232
	st.d	$a1, $sp, 240
	stx.b	$zero, $a0, $a1
	ld.d	$fp, $sp, 240
.Ltmp672:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.36:                               # %invoke.cont80
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_198
# %bb.37:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i679
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_39
# %bb.38:                               # %if.then.i2.i.i682
	ld.bu	$a0, $s2, 67
	b	.LBB12_41
.LBB12_39:                              # %if.end.i.i.i687
.Ltmp674:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp675:                               # EH_LABEL
# %bb.40:                               # %.noexc693
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp676:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp677:                               # EH_LABEL
.LBB12_41:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i684
.Ltmp678:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.42:                               # %call1.i.noexc695
.Ltmp680:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp681:                               # EH_LABEL
# %bb.43:                               # %invoke.cont91
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -177
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	slli.d	$a1, $fp, 32
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	add.d	$a3, $a1, $a2
	ld.d	$a1, $sp, 232
	ld.d	$a2, $sp, 240
	add.d	$a0, $s0, $a0
	srai.d	$a3, $a3, 32
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
.Ltmp682:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp683:                               # EH_LABEL
# %bb.44:                               # %invoke.cont103
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$fp, $zero, 40
	st.d	$fp, $a0, 16
.Ltmp684:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.45:                               # %invoke.cont115
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$fp, $a0, 16
.Ltmp686:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.46:                               # %invoke.cont117
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB12_198
# %bb.47:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i711
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB12_49
# %bb.48:                               # %if.then.i2.i.i714
	ld.bu	$a0, $s2, 67
	b	.LBB12_51
.LBB12_49:                              # %if.end.i.i.i719
.Ltmp688:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp689:                               # EH_LABEL
# %bb.50:                               # %.noexc725
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp690:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp691:                               # EH_LABEL
.LBB12_51:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i716
.Ltmp692:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp693:                               # EH_LABEL
# %bb.52:                               # %call1.i.noexc727
.Ltmp694:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp695:                               # EH_LABEL
# %bb.53:                               # %invoke.cont119
	ld.d	$a1, $sp, 360
	ld.d	$a2, $sp, 368
.Ltmp696:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.54:                               # %for.cond124.preheader
	ld.d	$a0, $s8, 48
	ld.d	$s3, $s8, 40
	beq	$a0, $s3, .LBB12_159
# %bb.55:                               # %for.body129.lr.ph
	move	$s5, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	sub.d	$a0, $s1, $s4
	srai.d	$a1, $a0, 5
	addi.d	$a2, $s8, 600
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 36, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$fp, $a0, 4095
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	b	.LBB12_57
	.p2align	4, , 16
.LBB12_56:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $s8, 48
	ld.d	$s3, $s8, 40
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$s5, $a1, 31, 0
	sub.d	$a0, $a0, $s3
	srai.d	$a0, $a0, 5
	bgeu	$s5, $a0, .LBB12_159
.LBB12_57:                              # %for.body129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_61 Depth 2
                                        #     Child Loop BB12_92 Depth 2
                                        #       Child Loop BB12_96 Depth 3
                                        #       Child Loop BB12_117 Depth 3
	ld.d	$s6, $s8, 608
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$s6, .LBB12_68
# %bb.58:                               # %while.body.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 8
	ld.d	$s2, $a0, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB12_61
	.p2align	4, , 16
.LBB12_59:                              # %if.then.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	sub.d	$a0, $s8, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB12_60:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s6, .LBB12_63
.LBB12_61:                              # %while.body.i.i.i.i
                                        #   Parent Loop BB12_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s6, 40
	sltu	$a0, $s4, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_59
# %bb.62:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_61 Depth=2
	ld.d	$a0, $s6, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_60
	b	.LBB12_59
	.p2align	4, , 16
.LBB12_63:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $a1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	beq	$s1, $a1, .LBB12_68
# %bb.64:                               # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$s6, $s1, 40
	sltu	$a0, $s6, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_66
# %bb.65:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $s1, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_67
.LBB12_66:                              # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	sub.d	$a0, $s4, $s6
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB12_67:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB12_68:                              # %invoke.cont132
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 280
	mul.d	$a1, $s5, $a1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	add.d	$s2, $a0, $a1
	ld.d	$a0, $s2, 264
	ld.d	$a1, $s2, 256
	beq	$a0, $a1, .LBB12_73
# %bb.69:                               # %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp698:                               # EH_LABEL
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.Ltmp699:                               # EH_LABEL
# %bb.70:                               # %invoke.cont.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $s2, 256
	ld.d	$a0, $s2, 264
	sub.d	$a2, $a0, $a1
	blez	$a2, .LBB12_72
# %bb.71:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_72:                              # %invoke.cont137
                                        #   in Loop: Header=BB12_57 Depth=1
	slli.d	$s1, $s5, 5
	add.d	$a0, $s3, $s1
	ld.d	$a2, $a0, 8
	bnez	$a2, .LBB12_74
	b	.LBB12_157
	.p2align	4, , 16
.LBB12_73:                              #   in Loop: Header=BB12_57 Depth=1
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	slli.d	$s1, $s5, 5
	add.d	$a0, $s3, $s1
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB12_157
.LBB12_74:                              # %land.lhs.true
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB12_157
# %bb.75:                               # %if.then
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB12_85
# %bb.76:                               # %if.then142
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB12_194
# %bb.77:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i737
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_79
# %bb.78:                               # %if.then.i2.i.i740
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB12_81
.LBB12_79:                              # %if.end.i.i.i745
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp701:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp702:                               # EH_LABEL
# %bb.80:                               # %.noexc751
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp703:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp704:                               # EH_LABEL
.LBB12_81:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i742
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp705:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.82:                               # %call1.i.noexc753
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp707:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp708:                               # EH_LABEL
# %bb.83:                               # %invoke.cont144
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a1, $sp, 328
	ld.d	$a2, $sp, 336
.Ltmp709:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp710:                               # EH_LABEL
# %bb.84:                               # %invoke.cont144.invoke.cont148_crit_edge
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$s3, $s8, 40
	add.d	$a0, $s3, $s1
	ld.d	$a2, $a0, 8
.LBB12_85:                              # %invoke.cont148
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
	ldx.d	$a1, $s3, $s1
.Ltmp711:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
# %bb.86:                               # %invoke.cont152
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp713:                               # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp714:                               # EH_LABEL
# %bb.87:                               # %invoke.cont154
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp715:                               # EH_LABEL
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp716:                               # EH_LABEL
# %bb.88:                               # %invoke.cont156
                                        #   in Loop: Header=BB12_57 Depth=1
.Ltmp717:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.89:                               # %for.cond161.preheader
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_157
# %bb.90:                               # %for.body164.preheader
                                        #   in Loop: Header=BB12_57 Depth=1
	move	$a1, $zero
	b	.LBB12_92
	.p2align	4, , 16
.LBB12_91:                              # %if.end283
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB12_157
.LBB12_92:                              # %for.body164
                                        #   Parent Loop BB12_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_96 Depth 3
                                        #       Child Loop BB12_117 Depth 3
	ld.d	$s4, $s8, 608
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB12_103
# %bb.93:                               # %while.body.lr.ph.i.i.i.i310
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ld.d	$s2, $a1, 8
	ldx.d	$s5, $a0, $a2
	move	$s1, $s8
	b	.LBB12_96
	.p2align	4, , 16
.LBB12_94:                              # %if.then.i.i.i.i.i.i.i353
                                        #   in Loop: Header=BB12_96 Depth=3
	sub.d	$a0, $s6, $s2
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB12_95:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i324
                                        #   in Loop: Header=BB12_96 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 24
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s4, .LBB12_98
.LBB12_96:                              # %while.body.i.i.i.i313
                                        #   Parent Loop BB12_57 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s6, $s4, 40
	sltu	$a0, $s2, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_94
# %bb.97:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i320
                                        #   in Loop: Header=BB12_96 Depth=3
	ld.d	$a0, $s4, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_95
	b	.LBB12_94
	.p2align	4, , 16
.LBB12_98:                              # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt18_Rb_tree_node_baseSL_RS7_.exit.i.i.i332
                                        #   in Loop: Header=BB12_92 Depth=2
	move	$a0, $s8
	beq	$s1, $s8, .LBB12_103
# %bb.99:                               # %lor.lhs.false.i.i.i334
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$s4, $s1, 40
	sltu	$a0, $s4, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_101
# %bb.100:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i339
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $s1, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_102
.LBB12_101:                             # %if.then.i.i.i.i.i.i348
                                        #   in Loop: Header=BB12_92 Depth=2
	sub.d	$a0, $s2, $s4
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
.LBB12_102:                             # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i343
                                        #   in Loop: Header=BB12_92 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.LBB12_103:                             # %invoke.cont168
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $a0, 64
	ld.d	$s1, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a0, $s1, $a0
	beqz	$a0, .LBB12_91
# %bb.104:                              # %if.then174
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_106
# %bb.105:                              # %if.else
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a1, $sp, 296
	ld.d	$a2, $sp, 304
.Ltmp720:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
	b	.LBB12_113
.LBB12_106:                             # %if.then176
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB12_192
# %bb.107:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i766
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_109
# %bb.108:                              # %if.then.i2.i.i769
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.bu	$a0, $s5, 67
	b	.LBB12_111
.LBB12_109:                             # %if.end.i.i.i774
                                        #   in Loop: Header=BB12_92 Depth=2
.Ltmp722:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp723:                               # EH_LABEL
# %bb.110:                              # %.noexc780
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp724:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp725:                               # EH_LABEL
.LBB12_111:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i771
                                        #   in Loop: Header=BB12_92 Depth=2
.Ltmp726:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp727:                               # EH_LABEL
# %bb.112:                              # %call1.i.noexc782
                                        #   in Loop: Header=BB12_92 Depth=2
.Ltmp728:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp729:                               # EH_LABEL
.LBB12_113:                             # %if.end181
                                        #   in Loop: Header=BB12_92 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s4, $s1, $a0
	ld.d	$a0, $s4, 216
	ld.d	$a1, $s4, 208
	beq	$a0, $a1, .LBB12_91
# %bb.114:                              # %for.body188.lr.ph
                                        #   in Loop: Header=BB12_92 Depth=2
	move	$s1, $zero
	ori	$s8, $zero, 1
	b	.LBB12_117
	.p2align	4, , 16
.LBB12_115:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s4, 216
	ld.d	$a1, $s4, 208
.LBB12_116:                             # %for.inc279
                                        #   in Loop: Header=BB12_117 Depth=3
	bstrpick.d	$s1, $s8, 31, 0
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.w	$s8, $s8, 1
	bgeu	$s1, $a2, .LBB12_91
.LBB12_117:                             # %for.body188
                                        #   Parent Loop BB12_57 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a2, $s4, 40
	slli.d	$a3, $s1, 3
	ldx.d	$a2, $a2, $a3
	beqz	$a2, .LBB12_116
# %bb.118:                              # %if.then192
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	ldx.d	$s5, $a0, $a2
	ld.d	$s6, $a1, 8
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	addi.d	$a1, $s6, 1
.Ltmp731:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp732:                               # EH_LABEL
# %bb.119:                              # %invoke.cont.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 144
	addi.w	$a1, $zero, -2
	lu52i.d	$s2, $a1, 2047
	sub.d	$a0, $s2, $a0
	bltu	$a0, $s6, .LBB12_182
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp733:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.121:                              # %invoke.cont1.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 144
	beq	$a0, $s2, .LBB12_182
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp735:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.123:                              # %invoke.cont198
                                        #   in Loop: Header=BB12_117 Depth=3
	slli.d	$a0, $s1, 5
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a0
	ld.d	$a3, $sp, 144
	ld.d	$a2, $a1, 8
	sub.d	$a1, $s2, $a3
	bltu	$a1, $a2, .LBB12_184
# %bb.124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp738:                               # EH_LABEL
	ldx.d	$a1, $a4, $a0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.125:                              # %call.i.i.i.noexc
                                        #   in Loop: Header=BB12_117 Depth=3
	addi.d	$a3, $sp, 184
	st.d	$a3, $sp, 168
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_127
# %bb.126:                              # %if.else.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 184
	ld.d	$s6, $a0, 8
	st.d	$a1, $sp, 168
	b	.LBB12_128
	.p2align	4, , 16
.LBB12_127:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$s6, $a0, 8
	addi.d	$a2, $s6, 1
	move	$s3, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
.LBB12_128:                             # %invoke.cont202
                                        #   in Loop: Header=BB12_117 Depth=3
	st.d	$s6, $sp, 176
	st.d	$s5, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 176
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB12_186
# %bb.129:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp741:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.130:                              # %call2.i.i.noexc
                                        #   in Loop: Header=BB12_117 Depth=3
	addi.d	$a3, $sp, 216
	st.d	$a3, $sp, 200
	ld.d	$a1, $a0, 0
	addi.d	$s5, $a0, 16
	beq	$a1, $s5, .LBB12_132
# %bb.131:                              # %if.else.i.i396
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 216
	ld.d	$s2, $a0, 8
	st.d	$a1, $sp, 200
	b	.LBB12_133
	.p2align	4, , 16
.LBB12_132:                             # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i402
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$s2, $a0, 8
	addi.d	$a2, $s2, 1
	move	$s6, $a0
	move	$a0, $a3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB12_133:                             # %invoke.cont204
                                        #   in Loop: Header=BB12_117 Depth=3
	st.d	$s2, $sp, 208
	st.d	$s5, $a0, 0
	ld.d	$a1, $sp, 168
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	addi.d	$a0, $sp, 184
	beq	$a1, $a0, .LBB12_135
# %bb.134:                              # %if.then.i.i410
                                        #   in Loop: Header=BB12_117 Depth=3
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_135:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB12_137
# %bb.136:                              # %if.then.i.i415
                                        #   in Loop: Header=BB12_117 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_137:                             # %invoke.cont228
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ori	$a2, $zero, 32
	st.d	$a2, $a1, 8
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 32
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 200
	ld.d	$a2, $sp, 208
	add.d	$a0, $s0, $a0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a0, 16
.Ltmp744:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp745:                               # EH_LABEL
# %bb.138:                              # %invoke.cont240
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 128
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 40
	st.d	$a1, $a0, 16
	ld.d	$a0, $s4, 256
	alsl.d	$a2, $s1, $a0, 4
	slli.d	$s2, $s1, 4
	ldx.d	$a1, $a0, $s2
	ld.d	$a2, $a2, 8
.Ltmp746:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp747:                               # EH_LABEL
# %bb.139:                              # %invoke.cont245
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_144
# %bb.140:                              # %invoke.cont265
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s4, 256
	alsl.d	$a1, $s1, $a0, 4
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $s1, $a2, 4
	ldx.d	$a2, $a2, $s2
	ld.d	$a3, $a3, 8
	pcaddu18i	$ra, %call36(__subtf3)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	ld.d	$a3, $a2, -24
	add.d	$a3, $s0, $a3
	ld.wu	$a4, $a3, 24
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	and	$a4, $a4, $a5
	addi.d	$a4, $a4, 128
	st.w	$a4, $a3, 24
	ld.d	$a2, $a2, -24
	move	$a3, $a0
	add.d	$a0, $s0, $a2
	ori	$a2, $zero, 40
	st.d	$a2, $a0, 16
	bstrpick.d	$a2, $a1, 62, 0
.Ltmp748:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $a3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp749:                               # EH_LABEL
# %bb.141:                              # %invoke.cont267
                                        #   in Loop: Header=BB12_117 Depth=3
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB12_188
# %bb.142:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i803
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB12_147
# %bb.143:                              # %if.then.i2.i.i806
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s6, 67
	b	.LBB12_149
	.p2align	4, , 16
.LBB12_144:                             # %if.else272
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB12_190
# %bb.145:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i829
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB12_151
# %bb.146:                              # %if.then.i2.i.i832
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.bu	$a0, $s5, 67
	b	.LBB12_153
.LBB12_147:                             # %if.end.i.i.i811
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp750:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.148:                              # %.noexc817
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp752:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp753:                               # EH_LABEL
.LBB12_149:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i808
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp754:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp755:                               # EH_LABEL
# %bb.150:                              # %call1.i.noexc819
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp756:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp757:                               # EH_LABEL
	b	.LBB12_155
.LBB12_151:                             # %if.end.i.i.i837
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp762:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp763:                               # EH_LABEL
# %bb.152:                              # %.noexc843
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp764:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp765:                               # EH_LABEL
.LBB12_153:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i834
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp766:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp767:                               # EH_LABEL
# %bb.154:                              # %call1.i.noexc845
                                        #   in Loop: Header=BB12_117 Depth=3
.Ltmp768:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp769:                               # EH_LABEL
.LBB12_155:                             # %if.end275
                                        #   in Loop: Header=BB12_117 Depth=3
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB12_115
# %bb.156:                              # %if.then.i.i506
                                        #   in Loop: Header=BB12_117 Depth=3
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_115
	.p2align	4, , 16
.LBB12_157:                             # %if.end289
                                        #   in Loop: Header=BB12_57 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB12_56
# %bb.158:                              # %if.then.i.i.i519
                                        #   in Loop: Header=BB12_57 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_56
.LBB12_159:                             # %for.cond.cleanup128
	ld.d	$a1, $sp, 360
	ld.d	$a2, $sp, 368
.Ltmp789:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.160:                              # %invoke.cont297
.Ltmp791:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp792:                               # EH_LABEL
# %bb.161:                              # %invoke.cont299
.Ltmp793:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp794:                               # EH_LABEL
# %bb.162:                              # %invoke.cont301
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_164
# %bb.163:                              # %if.then.i.i527
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_164:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_166
# %bb.165:                              # %if.then.i.i534
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_166:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_171
# %bb.167:                              # %for.body.i.i.preheader
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB12_169
	.p2align	4, , 16
.LBB12_168:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB12_169 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_171
.LBB12_169:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_168
# %bb.170:                              # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB12_169 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_168
.LBB12_171:                             # %invoke.cont.i542
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_173
# %bb.172:                              # %if.then.i.i.i544
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_173:                             # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_175
# %bb.174:                              # %if.then.i.i546
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_175:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_177
# %bb.176:                              # %if.then.i.i553
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_177:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_179
# %bb.178:                              # %if.then.i.i560
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_179:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_181
# %bb.180:                              # %if.then.i.i567
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_181:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB12_182:                             # %if.then.i.i10.invoke.i.i
.Ltmp780:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.183:                              # %if.then.i.i10.cont.i.i
.LBB12_184:                             # %if.then.i.i.i.i389
.Ltmp777:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.185:                              # %.noexc390
.LBB12_186:                             # %if.then.i.i.i406
.Ltmp774:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp775:                               # EH_LABEL
# %bb.187:                              # %.noexc407
.LBB12_188:                             # %if.then.i.i.i815
.Ltmp759:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.189:                              # %.noexc816
.LBB12_190:                             # %if.then.i.i.i841
.Ltmp771:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp772:                               # EH_LABEL
# %bb.191:                              # %.noexc842
.LBB12_192:                             # %if.then.i.i.i778
.Ltmp783:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.193:                              # %.noexc779
.LBB12_194:                             # %if.then.i.i.i749
.Ltmp786:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.195:                              # %.noexc750
.LBB12_196:                             # %if.then.i.i.i665.invoke
.Ltmp798:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.197:                              # %if.then.i.i.i665.cont
.LBB12_198:                             # %if.then.i.i.i723.invoke
.Ltmp795:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.199:                              # %if.then.i.i.i723.cont
.LBB12_200:                             # %lpad15
.Ltmp630:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_239
	b	.LBB12_248
.LBB12_201:                             # %lpad76
.Ltmp671:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_233
	b	.LBB12_236
.LBB12_202:                             # %lpad28
.Ltmp636:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_237
	b	.LBB12_243
.LBB12_203:                             # %lpad11
.Ltmp627:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_240
	b	.LBB12_249
.LBB12_204:                             # %lpad8
.Ltmp624:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_241
	b	.LBB12_250
.LBB12_205:                             # %lpad5
.Ltmp621:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_242
	b	.LBB12_251
.LBB12_206:                             # %lpad143.loopexit.split-lp
.Ltmp788:                               # EH_LABEL
	b	.LBB12_215
.LBB12_207:                             # %lpad136
.Ltmp700:                               # EH_LABEL
	b	.LBB12_209
.LBB12_208:                             # %lpad79
.Ltmp797:                               # EH_LABEL
.LBB12_209:                             # %ehcleanup303
	move	$s0, $a0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_232
	b	.LBB12_235
.LBB12_210:                             # %lpad30
.Ltmp800:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_233
	b	.LBB12_236
.LBB12_211:                             # %ehcleanup312.thread
.Ltmp633:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB12_243
.LBB12_212:                             # %lpad167.loopexit.split-lp
.Ltmp785:                               # EH_LABEL
	b	.LBB12_215
.LBB12_213:                             # %lpad143.loopexit
.Ltmp719:                               # EH_LABEL
	b	.LBB12_215
.LBB12_214:                             # %lpad167.loopexit
.Ltmp730:                               # EH_LABEL
.LBB12_215:                             # %ehcleanup290
	move	$s0, $a0
	b	.LBB12_230
.LBB12_216:                             # %lpad207.loopexit.split-lp
.Ltmp773:                               # EH_LABEL
	b	.LBB12_253
.LBB12_217:                             # %lpad254.loopexit.split-lp
.Ltmp761:                               # EH_LABEL
	b	.LBB12_253
.LBB12_218:                             # %lpad203.loopexit
.Ltmp743:                               # EH_LABEL
	b	.LBB12_220
.LBB12_219:                             # %lpad203.loopexit.split-lp
.Ltmp776:                               # EH_LABEL
.LBB12_220:                             # %lpad203
	move	$s0, $a0
	addi.d	$a1, $sp, 184
	ld.d	$a0, $sp, 168
	beq	$a0, $a1, .LBB12_228
# %bb.221:                              # %if.then.i.i489
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_228
.LBB12_222:                             # %lpad201.loopexit.split-lp
.Ltmp779:                               # EH_LABEL
	b	.LBB12_227
.LBB12_223:                             # %lpad201.loopexit
.Ltmp740:                               # EH_LABEL
	b	.LBB12_227
.LBB12_224:                             # %lpad.i.i.loopexit.split-lp
.Ltmp782:                               # EH_LABEL
	b	.LBB12_227
.LBB12_225:                             # %lpad254.loopexit
.Ltmp758:                               # EH_LABEL
	b	.LBB12_253
.LBB12_226:                             # %lpad.i.i.loopexit
.Ltmp737:                               # EH_LABEL
.LBB12_227:                             # %ehcleanup
	move	$s0, $a0
.LBB12_228:                             # %ehcleanup
	ld.d	$a0, $sp, 136
	addi.d	$a1, $sp, 152
	beq	$a0, $a1, .LBB12_230
.LBB12_229:                             # %if.then.i.i513
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB12_230:                             # %ehcleanup290
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB12_234
# %bb.231:                              # %ehcleanup303
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	bne	$a0, $a1, .LBB12_235
.LBB12_232:                             # %ehcleanup310
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	bne	$a0, $a1, .LBB12_236
.LBB12_233:                             # %ehcleanup312
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_237
	b	.LBB12_243
.LBB12_234:                             # %if.then.i.i.i521
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232
	addi.d	$a1, $sp, 248
	beq	$a0, $a1, .LBB12_232
.LBB12_235:                             # %if.then.i.i574
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	addi.d	$a1, $sp, 280
	beq	$a0, $a1, .LBB12_233
.LBB12_236:                             # %ehcleanup312
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB12_243
.LBB12_237:                             # %invoke.cont.i598
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB12_247
# %bb.238:                              # %ehcleanup313
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	bne	$a0, $a1, .LBB12_248
.LBB12_239:                             # %ehcleanup315
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	bne	$a0, $a1, .LBB12_249
.LBB12_240:                             # %ehcleanup317
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	bne	$a0, $a1, .LBB12_250
.LBB12_241:                             # %ehcleanup319
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	bne	$a0, $a1, .LBB12_251
.LBB12_242:                             # %ehcleanup321
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_243:                             # %for.body.i.i589.preheader
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB12_245
	.p2align	4, , 16
.LBB12_244:                             # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i593
                                        #   in Loop: Header=BB12_245 Depth=1
	addi.d	$a1, $fp, 16
	beq	$a1, $s7, .LBB12_237
.LBB12_245:                             # %for.body.i.i589
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 0
	addi.d	$fp, $a1, 16
	beq	$a0, $fp, .LBB12_244
# %bb.246:                              # %if.then.i.i.i.i.i592
                                        #   in Loop: Header=BB12_245 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB12_244
.LBB12_247:                             # %if.then.i.i.i600
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296
	addi.d	$a1, $sp, 312
	beq	$a0, $a1, .LBB12_239
.LBB12_248:                             # %if.then.i.i606
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328
	addi.d	$a1, $sp, 344
	beq	$a0, $a1, .LBB12_240
.LBB12_249:                             # %if.then.i.i613
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360
	addi.d	$a1, $sp, 376
	beq	$a0, $a1, .LBB12_241
.LBB12_250:                             # %if.then.i.i620
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB12_242
.LBB12_251:                             # %if.then.i.i627
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_252:                             # %lpad207.loopexit
.Ltmp770:                               # EH_LABEL
.LBB12_253:                             # %ehcleanup276
	move	$s0, $a0
	addi.d	$a1, $sp, 216
	ld.d	$a0, $sp, 200
	beq	$a0, $a1, .LBB12_230
	b	.LBB12_229
.Lfunc_end12:
	.size	_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end12-_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp619-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp619
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp620-.Ltmp619              #   Call between .Ltmp619 and .Ltmp620
	.uleb128 .Ltmp621-.Lfunc_begin6         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp620-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp622-.Ltmp620              #   Call between .Ltmp620 and .Ltmp622
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp623-.Ltmp622              #   Call between .Ltmp622 and .Ltmp623
	.uleb128 .Ltmp624-.Lfunc_begin6         #     jumps to .Ltmp624
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp626-.Ltmp625              #   Call between .Ltmp625 and .Ltmp626
	.uleb128 .Ltmp627-.Lfunc_begin6         #     jumps to .Ltmp627
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp630-.Lfunc_begin6         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.uleb128 .Ltmp633-.Lfunc_begin6         #     jumps to .Ltmp633
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp635-.Ltmp634              #   Call between .Ltmp634 and .Ltmp635
	.uleb128 .Ltmp636-.Lfunc_begin6         #     jumps to .Ltmp636
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp668-.Ltmp637              #   Call between .Ltmp637 and .Ltmp668
	.uleb128 .Ltmp800-.Lfunc_begin6         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin6         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp697-.Ltmp672              #   Call between .Ltmp672 and .Ltmp697
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp697-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp698-.Ltmp697              #   Call between .Ltmp697 and .Ltmp698
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp698-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp699-.Ltmp698              #   Call between .Ltmp698 and .Ltmp699
	.uleb128 .Ltmp700-.Lfunc_begin6         #     jumps to .Ltmp700
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp701-.Ltmp699              #   Call between .Ltmp699 and .Ltmp701
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp718-.Ltmp701              #   Call between .Ltmp701 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin6         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp718-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp720-.Ltmp718              #   Call between .Ltmp718 and .Ltmp720
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp729-.Ltmp720              #   Call between .Ltmp720 and .Ltmp729
	.uleb128 .Ltmp730-.Lfunc_begin6         #     jumps to .Ltmp730
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp731-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp736-.Ltmp731              #   Call between .Ltmp731 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin6         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp740-.Lfunc_begin6         #     jumps to .Ltmp740
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp741-.Ltmp739              #   Call between .Ltmp739 and .Ltmp741
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp741-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp742-.Ltmp741              #   Call between .Ltmp741 and .Ltmp742
	.uleb128 .Ltmp743-.Lfunc_begin6         #     jumps to .Ltmp743
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp742-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp744-.Ltmp742              #   Call between .Ltmp742 and .Ltmp744
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp747-.Ltmp744              #   Call between .Ltmp744 and .Ltmp747
	.uleb128 .Ltmp770-.Lfunc_begin6         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp747-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp748-.Ltmp747              #   Call between .Ltmp747 and .Ltmp748
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp748-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp757-.Ltmp748              #   Call between .Ltmp748 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin6         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp769-.Ltmp762              #   Call between .Ltmp762 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin6         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp789-.Ltmp769              #   Call between .Ltmp769 and .Ltmp789
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp794-.Ltmp789              #   Call between .Ltmp789 and .Ltmp794
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp794-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp780-.Ltmp794              #   Call between .Ltmp794 and .Ltmp780
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin6         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin6         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin6         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin6         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin6         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin6         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin6         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin6         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin6         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp796-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Lfunc_end12-.Ltmp796          #   Call between .Ltmp796 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_ # -- Begin function _Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.p2align	5
	.type	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_,@function
_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_: # @_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -608
	.cfi_def_cfa_offset 608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a2, $fp, 0
	beq	$a0, $a2, .LBB13_38
# %bb.1:                                # %if.end
	ld.d	$s0, $a1, 8
	beqz	$s0, .LBB13_11
# %bb.2:                                # %if.then2
	ld.d	$s1, $a1, 0
	addi.d	$s2, $sp, 24
	st.d	$s2, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
	addi.d	$a1, $s0, 1
.Ltmp801:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.3:                                # %invoke.cont.i.i
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s0, .LBB13_39
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp803:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp804:                               # EH_LABEL
# %bb.5:                                # %invoke.cont1.i.i
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_39
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
.Ltmp805:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp806:                               # EH_LABEL
# %bb.7:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 16
	addi.w	$a1, $zero, -8
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB13_43
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp807:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp808:                               # EH_LABEL
# %bb.9:                                # %call2.i.i.noexc
	addi.d	$s0, $sp, 536
	st.d	$s0, $sp, 520
	ld.d	$a1, $a0, 0
	addi.d	$s1, $a0, 16
	beq	$a1, $s1, .LBB13_12
# %bb.10:                               # %if.else.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 536
	ld.d	$s3, $a0, 8
	st.d	$a1, $sp, 520
	b	.LBB13_13
.LBB13_11:                              # %if.else
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a1, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jr	$t8
.LBB13_12:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ld.d	$s3, $a0, 8
	addi.d	$a2, $s3, 1
	move	$s4, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB13_13:                              # %invoke.cont
	st.d	$s3, $sp, 528
	st.d	$s1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a1, $s2, .LBB13_15
# %bb.14:                               # %if.then.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 520
.Ltmp809:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 48
	addi.d	$s1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp810:                               # EH_LABEL
# %bb.16:                               # %invoke.cont8
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	beqz	$a0, .LBB13_26
# %bb.17:                               # %if.then10
.Ltmp812:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp813:                               # EH_LABEL
# %bb.18:                               # %invoke.cont11
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp814:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp815:                               # EH_LABEL
# %bb.19:                               # %invoke.cont13
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_22
# %bb.21:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB13_24
.LBB13_22:                              # %if.end.i.i.i
.Ltmp816:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp817:                               # EH_LABEL
# %bb.23:                               # %.noexc51
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp818:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp819:                               # EH_LABEL
.LBB13_24:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp820:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp821:                               # EH_LABEL
# %bb.25:                               # %call1.i.noexc
.Ltmp822:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp823:                               # EH_LABEL
.LBB13_26:                              # %if.end17
.Ltmp824:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp825:                               # EH_LABEL
# %bb.27:                               # %invoke.cont18
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp826:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp827:                               # EH_LABEL
# %bb.28:                               # %invoke.cont20
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB13_41
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB13_31
# %bb.30:                               # %if.then.i2.i.i64
	ld.bu	$a0, $s2, 67
	b	.LBB13_33
.LBB13_31:                              # %if.end.i.i.i69
.Ltmp828:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp829:                               # EH_LABEL
# %bb.32:                               # %.noexc75
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp830:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp831:                               # EH_LABEL
.LBB13_33:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66
.Ltmp832:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp833:                               # EH_LABEL
# %bb.34:                               # %call1.i.noexc77
.Ltmp834:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp835:                               # EH_LABEL
# %bb.35:                               # %invoke.cont22
.Ltmp836:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	addi.d	$s1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo)
	jirl	$ra, $ra, 0
.Ltmp837:                               # EH_LABEL
# %bb.36:                               # %invoke.cont24
	pcalau12i	$a0, %got_pc_hi20(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	stx.d	$a0, $a1, $s1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_38
# %bb.37:                               # %if.then.i.i36
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_38:                              # %if.end27
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.LBB13_39:                              # %if.then.i.i10.invoke.i.i
.Ltmp844:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp845:                               # EH_LABEL
# %bb.40:                               # %if.then.i.i10.cont.i.i
.LBB13_41:                              # %if.then.i.i.i73.invoke
.Ltmp838:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp839:                               # EH_LABEL
# %bb.42:                               # %if.then.i.i.i73.cont
.LBB13_43:                              # %if.then.i.i.i
.Ltmp841:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp842:                               # EH_LABEL
# %bb.44:                               # %.noexc
.LBB13_45:                              # %lpad5
.Ltmp811:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB13_51
.LBB13_46:                              # %lpad
.Ltmp843:                               # EH_LABEL
	b	.LBB13_48
.LBB13_47:                              # %lpad.i.i
.Ltmp846:                               # EH_LABEL
.LBB13_48:                              # %lpad.i.i
	ld.d	$a1, $sp, 8
	move	$fp, $a0
	beq	$a1, $s2, .LBB13_53
# %bb.49:                               # %if.then.i.i15.i.i
	move	$a0, $a1
	b	.LBB13_52
.LBB13_50:                              # %lpad7
.Ltmp840:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB13_51:                              # %ehcleanup
	ld.d	$a0, $sp, 520
	beq	$a0, $s0, .LBB13_53
.LBB13_52:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB13_53:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_, .Lfunc_end13-_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp801-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp806-.Ltmp801              #   Call between .Ltmp801 and .Ltmp806
	.uleb128 .Ltmp846-.Lfunc_begin7         #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp843-.Lfunc_begin7         #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp809-.Ltmp808              #   Call between .Ltmp808 and .Ltmp809
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp810-.Ltmp809              #   Call between .Ltmp809 and .Ltmp810
	.uleb128 .Ltmp811-.Lfunc_begin7         #     jumps to .Ltmp811
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp812-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp837-.Ltmp812              #   Call between .Ltmp812 and .Ltmp837
	.uleb128 .Ltmp840-.Lfunc_begin7         #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp844-.Ltmp837              #   Call between .Ltmp837 and .Ltmp844
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp845-.Ltmp844              #   Call between .Ltmp844 and .Ltmp845
	.uleb128 .Ltmp846-.Lfunc_begin7         #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp839-.Ltmp838              #   Call between .Ltmp838 and .Ltmp839
	.uleb128 .Ltmp840-.Lfunc_begin7         #     jumps to .Ltmp840
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp841-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp842-.Ltmp841              #   Call between .Ltmp841 and .Ltmp842
	.uleb128 .Ltmp843-.Lfunc_begin7         #     jumps to .Ltmp843
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp842-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Lfunc_end13-.Ltmp842          #   Call between .Ltmp842 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.type	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo,@function
_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo: # @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
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
	move	$fp, $a1
	pcalau12i	$a1, %pc_hi20(_ZL21s_loop_suite_run_info)
	ld.d	$s8, $a1, %pc_lo12(_ZL21s_loop_suite_run_info)
	ld.d	$s0, $a0, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 184
	ori	$a0, $zero, 108
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 152
	move	$s1, $a0
	st.d	$a0, $sp, 184
	st.d	$s2, $sp, 200
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 108
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 192
	stx.b	$zero, $s1, $s2
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	ori	$a0, $zero, 56
	st.d	$a0, $sp, 120
.Ltmp847:                               # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp848:                               # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc57
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	vst	$vr0, $a0, 40
	st.d	$a1, $sp, 160
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 120
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 88
.Ltmp850:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp851:                               # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc69
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp853:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp854:                               # EH_LABEL
# %bb.3:                                # %invoke.cont9
.Ltmp856:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp857:                               # EH_LABEL
# %bb.4:                                # %invoke.cont11
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp858:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp859:                               # EH_LABEL
# %bb.5:                                # %invoke.cont13
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp860:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp861:                               # EH_LABEL
# %bb.6:                                # %invoke.cont15
.Ltmp862:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp863:                               # EH_LABEL
# %bb.7:                                # %invoke.cont17
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_10
# %bb.9:                                # %if.then.i2.i.i
	ld.bu	$a0, $s1, 67
	b	.LBB14_12
.LBB14_10:                              # %if.end.i.i.i
.Ltmp864:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.11:                               # %.noexc240
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp866:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp867:                               # EH_LABEL
.LBB14_12:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp868:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp869:                               # EH_LABEL
# %bb.13:                               # %call1.i.noexc
.Ltmp870:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.14:                               # %invoke.cont19
	ld.d	$a1, $sp, 88
	ld.d	$a2, $sp, 96
.Ltmp872:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp873:                               # EH_LABEL
# %bb.15:                               # %invoke.cont21
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB14_99
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i250
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB14_18
# %bb.17:                               # %if.then.i2.i.i253
	ld.bu	$a0, $s2, 67
	b	.LBB14_20
.LBB14_18:                              # %if.end.i.i.i258
.Ltmp874:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp875:                               # EH_LABEL
# %bb.19:                               # %.noexc263
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp876:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp877:                               # EH_LABEL
.LBB14_20:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i255
.Ltmp878:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp879:                               # EH_LABEL
# %bb.21:                               # %call1.i.noexc266
.Ltmp880:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp881:                               # EH_LABEL
# %bb.22:                               # %invoke.cont23
.Ltmp882:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.23:                               # %invoke.cont25
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp884:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp885:                               # EH_LABEL
# %bb.24:                               # %invoke.cont27
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp886:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp887:                               # EH_LABEL
# %bb.25:                               # %invoke.cont29
.Ltmp888:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.26:                               # %invoke.cont31
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB14_99
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i276
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB14_29
# %bb.28:                               # %if.then.i2.i.i279
	ld.bu	$a0, $s1, 67
	b	.LBB14_31
.LBB14_29:                              # %if.end.i.i.i284
.Ltmp890:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp891:                               # EH_LABEL
# %bb.30:                               # %.noexc289
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp892:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp893:                               # EH_LABEL
.LBB14_31:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i281
.Ltmp894:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.32:                               # %call1.i.noexc292
.Ltmp896:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp897:                               # EH_LABEL
# %bb.33:                               # %invoke.cont33
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp898:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp899:                               # EH_LABEL
# %bb.34:                               # %invoke.cont35
	sub.d	$a0, $s0, $s3
	bstrpick.d	$a1, $a0, 36, 5
	slli.d	$a1, $a1, 5
	beqz	$a1, .LBB14_83
# %bb.35:                               # %invoke.cont50.lr.ph
	srai.d	$a0, $a0, 5
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $zero, -177
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB14_37
	.p2align	4, , 16
.LBB14_36:                              # %if.end114
                                        #   in Loop: Header=BB14_37 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$s3, $a0, .LBB14_83
.LBB14_37:                              # %invoke.cont50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_50 Depth 2
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.wu	$a1, $a0, 24
	ld.d	$s0, $s8, 456
	ld.d	$s1, $s8, 480
	ld.d	$s2, $s8, 504
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 32
	st.w	$a1, $a0, 24
.Ltmp900:                               # EH_LABEL
	ori	$a2, $zero, 16
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.38:                               # %invoke.cont52
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp902:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp903:                               # EH_LABEL
# %bb.39:                               # %invoke.cont56
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_97
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i302
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_42
# %bb.41:                               # %if.then.i2.i.i305
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB14_44
	.p2align	4, , 16
.LBB14_42:                              # %if.end.i.i.i310
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp904:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp905:                               # EH_LABEL
# %bb.43:                               # %.noexc315
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp906:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp907:                               # EH_LABEL
.LBB14_44:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i307
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp908:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp909:                               # EH_LABEL
# %bb.45:                               # %call1.i.noexc318
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp910:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp911:                               # EH_LABEL
# %bb.46:                               # %for.cond60.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	beq	$a0, $a1, .LBB14_74
# %bb.47:                               # %for.body65.preheader
                                        #   in Loop: Header=BB14_37 Depth=1
	move	$s4, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	add.d	$s0, $s0, $a0
	add.d	$s1, $s1, $a0
	add.d	$s2, $s2, $a0
	ori	$s3, $zero, 1
	b	.LBB14_50
	.p2align	4, , 16
.LBB14_48:                              # %if.then.for.inc_crit_edge
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
.LBB14_49:                              # %for.inc
                                        #   in Loop: Header=BB14_50 Depth=2
	bstrpick.d	$s4, $s3, 31, 0
	addi.w	$s3, $s3, 1
	bgeu	$s4, $a0, .LBB14_74
.LBB14_50:                              # %for.body65
                                        #   Parent Loop BB14_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp912:                               # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.51:                               # %invoke.cont67
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 112
	slli.d	$a1, $s4, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp914:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp915:                               # EH_LABEL
# %bb.52:                               # %invoke.cont71
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp916:                               # EH_LABEL
	move	$s6, $a0
	ori	$a2, $zero, 19
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp917:                               # EH_LABEL
# %bb.53:                               # %invoke.cont73
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $a0, $a1
.Ltmp918:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.54:                               # %invoke.cont84
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, -24
	add.d	$a1, $fp, $a1
	ld.w	$a2, $a1, 24
	ori	$a2, $a2, 1024
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 32
	st.d	$a1, $a0, 8
.Ltmp920:                               # EH_LABEL
	ori	$a2, $zero, 23
	move	$a0, $fp
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp921:                               # EH_LABEL
# %bb.55:                               # %invoke.cont86
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s1, 0
	alsl.d	$a2, $s4, $a0, 4
	slli.d	$s5, $s4, 4
	ldx.d	$a1, $a0, $s5
	ld.d	$a2, $a2, 8
.Ltmp922:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp923:                               # EH_LABEL
# %bb.56:                               # %invoke.cont90
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_95
# %bb.57:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i330
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_59
# %bb.58:                               # %if.then.i2.i.i333
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 67
	b	.LBB14_61
	.p2align	4, , 16
.LBB14_59:                              # %if.end.i.i.i338
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp924:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp925:                               # EH_LABEL
# %bb.60:                               # %.noexc343
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp926:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp927:                               # EH_LABEL
.LBB14_61:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i335
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp928:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp929:                               # EH_LABEL
# %bb.62:                               # %call1.i.noexc346
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp930:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.63:                               # %invoke.cont92
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp932:                               # EH_LABEL
	ori	$a2, $zero, 17
	move	$a0, $fp
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp933:                               # EH_LABEL
# %bb.64:                               # %invoke.cont94
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s2, 0
	alsl.d	$a2, $s4, $a0, 4
	ldx.d	$a1, $a0, $s5
	ld.d	$a2, $a2, 8
.Ltmp934:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIeEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp935:                               # EH_LABEL
# %bb.65:                               # %invoke.cont98
                                        #   in Loop: Header=BB14_50 Depth=2
	move	$s6, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB14_95
# %bb.66:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i356
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB14_68
# %bb.67:                               # %if.then.i2.i.i359
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.bu	$a0, $s7, 67
	b	.LBB14_70
	.p2align	4, , 16
.LBB14_68:                              # %if.end.i.i.i364
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp936:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.69:                               # %.noexc369
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp938:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp939:                               # EH_LABEL
.LBB14_70:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i361
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp940:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp941:                               # EH_LABEL
# %bb.71:                               # %call1.i.noexc372
                                        #   in Loop: Header=BB14_50 Depth=2
.Ltmp942:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.72:                               # %invoke.cont100
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a0, $s8, 120
	ld.d	$a1, $s8, 112
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	addi.d	$a1, $a0, -1
	bgeu	$s4, $a1, .LBB14_49
# %bb.73:                               # %if.then
                                        #   in Loop: Header=BB14_50 Depth=2
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp944:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp945:                               # EH_LABEL
	b	.LBB14_48
	.p2align	4, , 16
.LBB14_74:                              # %for.cond.cleanup64
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB14_36
# %bb.75:                               # %if.then109
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB14_97
# %bb.76:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i382
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB14_78
# %bb.77:                               # %if.then.i2.i.i385
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB14_80
.LBB14_78:                              # %if.end.i.i.i390
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp950:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp951:                               # EH_LABEL
# %bb.79:                               # %.noexc395
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp952:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp953:                               # EH_LABEL
.LBB14_80:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i387
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp954:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.81:                               # %call1.i.noexc398
                                        #   in Loop: Header=BB14_37 Depth=1
.Ltmp956:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp957:                               # EH_LABEL
# %bb.82:                               # %invoke.cont110
                                        #   in Loop: Header=BB14_37 Depth=1
	ld.d	$a1, $sp, 152
	ld.d	$a2, $sp, 160
.Ltmp958:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp959:                               # EH_LABEL
	b	.LBB14_36
.LBB14_83:                              # %for.cond.cleanup
	ld.d	$a1, $sp, 184
	ld.d	$a2, $sp, 192
.Ltmp964:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp965:                               # EH_LABEL
# %bb.84:                               # %invoke.cont123
.Ltmp966:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.85:                               # %invoke.cont125
.Ltmp968:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp969:                               # EH_LABEL
# %bb.86:                               # %invoke.cont127
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	beq	$a0, $a1, .LBB14_88
# %bb.87:                               # %if.then.i.i191
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_88:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_90
# %bb.89:                               # %if.then.i.i193
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_90:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_92
# %bb.91:                               # %if.then.i.i199
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_92:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_94
# %bb.93:                               # %if.then.i.i205
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB14_94:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
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
.LBB14_95:                              # %if.then.i.i.i341.invoke
.Ltmp947:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp948:                               # EH_LABEL
# %bb.96:                               # %if.then.i.i.i341.cont
.LBB14_97:                              # %if.then.i.i.i313.invoke
.Ltmp961:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp962:                               # EH_LABEL
# %bb.98:                               # %if.then.i.i.i313.cont
.LBB14_99:                              # %if.then.i.i.i287.invoke
.Ltmp971:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp972:                               # EH_LABEL
# %bb.100:                              # %if.then.i.i.i287.cont
.LBB14_101:                             # %lpad8
.Ltmp855:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
	b	.LBB14_116
.LBB14_102:                             # %lpad6
.Ltmp852:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
	b	.LBB14_117
.LBB14_103:                             # %lpad3
.Ltmp849:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
	b	.LBB14_118
.LBB14_104:                             # %lpad122
.Ltmp970:                               # EH_LABEL
	b	.LBB14_110
.LBB14_105:                             # %lpad10
.Ltmp973:                               # EH_LABEL
	b	.LBB14_110
.LBB14_106:                             # %lpad49.loopexit.split-lp
.Ltmp963:                               # EH_LABEL
	b	.LBB14_110
.LBB14_107:                             # %lpad49.loopexit
.Ltmp960:                               # EH_LABEL
	b	.LBB14_110
.LBB14_108:                             # %lpad66.loopexit.split-lp
.Ltmp949:                               # EH_LABEL
	b	.LBB14_110
.LBB14_109:                             # %lpad66.loopexit
.Ltmp946:                               # EH_LABEL
.LBB14_110:                             # %ehcleanup131
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	addi.d	$a1, $sp, 104
	bne	$a0, $a1, .LBB14_115
# %bb.111:                              # %ehcleanup132
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	bne	$a0, $a1, .LBB14_116
.LBB14_112:                             # %ehcleanup134
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	bne	$a0, $a1, .LBB14_117
.LBB14_113:                             # %ehcleanup136
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	bne	$a0, $a1, .LBB14_118
.LBB14_114:                             # %ehcleanup138
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_115:                             # %if.then.i.i211
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB14_112
.LBB14_116:                             # %if.then.i.i217
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB14_113
.LBB14_117:                             # %if.then.i.i223
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB14_114
.LBB14_118:                             # %if.then.i.i229
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo, .Lfunc_end14-_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp847-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp847
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp848-.Ltmp847              #   Call between .Ltmp847 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin8         #     jumps to .Ltmp849
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp851-.Ltmp850              #   Call between .Ltmp850 and .Ltmp851
	.uleb128 .Ltmp852-.Lfunc_begin8         #     jumps to .Ltmp852
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp853-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp854-.Ltmp853              #   Call between .Ltmp853 and .Ltmp854
	.uleb128 .Ltmp855-.Lfunc_begin8         #     jumps to .Ltmp855
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp856-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp899-.Ltmp856              #   Call between .Ltmp856 and .Ltmp899
	.uleb128 .Ltmp973-.Lfunc_begin8         #     jumps to .Ltmp973
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp911-.Ltmp900              #   Call between .Ltmp900 and .Ltmp911
	.uleb128 .Ltmp960-.Lfunc_begin8         #     jumps to .Ltmp960
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp945-.Ltmp912              #   Call between .Ltmp912 and .Ltmp945
	.uleb128 .Ltmp946-.Lfunc_begin8         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp950-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp959-.Ltmp950              #   Call between .Ltmp950 and .Ltmp959
	.uleb128 .Ltmp960-.Lfunc_begin8         #     jumps to .Ltmp960
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp964-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp969-.Ltmp964              #   Call between .Ltmp964 and .Ltmp969
	.uleb128 .Ltmp970-.Lfunc_begin8         #     jumps to .Ltmp970
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp947-.Ltmp969              #   Call between .Ltmp969 and .Ltmp947
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp947-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp948-.Ltmp947              #   Call between .Ltmp947 and .Ltmp948
	.uleb128 .Ltmp949-.Lfunc_begin8         #     jumps to .Ltmp949
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp961-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp962-.Ltmp961              #   Call between .Ltmp961 and .Ltmp962
	.uleb128 .Ltmp963-.Lfunc_begin8         #     jumps to .Ltmp963
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp971-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp972-.Ltmp971              #   Call between .Ltmp971 and .Ltmp972
	.uleb128 .Ltmp973-.Lfunc_begin8         #     jumps to .Ltmp973
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp972-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Lfunc_end14-.Ltmp972          #   Call between .Ltmp972 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
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
.Lfunc_end15:
	.size	__clang_call_terminate, .Lfunc_end15-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN8LoopStatD2Ev,"axG",@progbits,_ZN8LoopStatD2Ev,comdat
	.weak	_ZN8LoopStatD2Ev                # -- Begin function _ZN8LoopStatD2Ev
	.p2align	5
	.type	_ZN8LoopStatD2Ev,@function
_ZN8LoopStatD2Ev:                       # @_ZN8LoopStatD2Ev
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
	move	$fp, $a0
	ld.d	$a0, $a0, 256
	beqz	$a0, .LBB16_2
# %bb.1:                                # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit
	ld.d	$a0, $fp, 232
	beqz	$a0, .LBB16_4
# %bb.3:                                # %if.then.i.i.i2
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB16_6
# %bb.5:                                # %if.then.i.i.i4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit5
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB16_8
# %bb.7:                                # %if.then.i.i.i7
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZNSt6vectorIeSaIeEED2Ev.exit8
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB16_10
# %bb.9:                                # %if.then.i.i.i10
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_10:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit11
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB16_12
# %bb.11:                               # %if.then.i.i.i13
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_12:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit14
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB16_14
# %bb.13:                               # %if.then.i.i.i16
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_14:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit17
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB16_16
# %bb.15:                               # %if.then.i.i.i19
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_16:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit20
	ld.d	$a0, $fp, 64
	beqz	$a0, .LBB16_18
# %bb.17:                               # %if.then.i.i.i22
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_18:                              # %_ZNSt6vectorIeSaIeEED2Ev.exit23
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB16_20
# %bb.19:                               # %if.then.i.i.i25
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB16_20:                              # %_ZNSt6vectorImSaImEED2Ev.exit
	ld.d	$s0, $fp, 16
	ld.d	$s1, $fp, 24
	bne	$s0, $s1, .LBB16_24
# %bb.21:                               # %invoke.cont.i
	beqz	$s0, .LBB16_27
.LBB16_22:                              # %if.then.i.i.i27
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
	.p2align	4, , 16
.LBB16_23:                              # %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB16_24 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB16_26
.LBB16_24:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB16_23
# %bb.25:                               # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB16_24 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB16_23
.LBB16_26:                              # %invoke.contthread-pre-split.i
	ld.d	$s0, $fp, 16
	bnez	$s0, .LBB16_22
.LBB16_27:                              # %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZN8LoopStatD2Ev, .Lfunc_end16-_ZN8LoopStatD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB17_6
# %bb.1:                                # %while.body.preheader
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
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB17_5
.LBB17_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB17_2
# %bb.4:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB17_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB17_6:                               # %while.end
	ret
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E, .Lfunc_end17-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_ # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$zero, $sp, 16
	addi.d	$a0, $sp, 8
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB18_4
# %bb.1:                                # %invoke.cont.thread.i
	beq	$a1, $s0, .LBB18_7
# %bb.2:                                # %if.then24.i
	ld.d	$a2, $a2, 0
	vld	$vr0, $sp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB18_6
.LBB18_3:                               # %if.then30.i
	st.d	$a0, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_4:                               # %invoke.cont.i
	beq	$a1, $s0, .LBB18_7
# %bb.5:
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	bnez	$a0, .LBB18_3
.LBB18_6:                               # %if.else31.i
	st.d	$s0, $sp, 8
	move	$a0, $s0
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.LBB18_7:                               # %if.then9.i
	addi.d	$a2, $sp, 8
	beq	$a2, $fp, .LBB18_15
# %bb.8:                                # %if.then10.i
	ld.d	$a2, $sp, 16
	beqz	$a2, .LBB18_12
# %bb.9:                                # %if.then10.i
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB18_11
# %bb.10:                               # %if.then.i25.i
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB18_12
.LBB18_11:                              # %if.end.i.i.i
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_12:                              # %if.end18.i
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB18_14
.LBB18_13:                              # %if.then.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB18_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB18_15:
	move	$a0, $a1
	st.d	$zero, $sp, 16
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB18_13
	b	.LBB18_14
.Lfunc_end18:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_, .Lfunc_end18-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignISt19istreambuf_iteratorIcS2_EvEERS4_T_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.p2align	5
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	move	$s0, $a4
	move	$s2, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a2
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 16
	beqz	$s1, .LBB19_4
# %bb.1:                                # %entry
	addi.w	$a1, $s4, 0
	addi.w	$a2, $zero, -1
	bne	$a1, $a2, .LBB19_4
# %bb.2:                                # %land.lhs.true2.i.i.i.i.peel
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_42
# %bb.3:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel
	ld.bu	$a0, $a0, 0
.LBB19_4:                               # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.d	$s5, $fp, 16
	addi.w	$s7, $zero, -1
	addi.w	$s3, $a0, 0
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	beqz	$s2, .LBB19_9
# %bb.5:                                # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
	addi.w	$a2, $s0, 0
	addi.w	$a1, $zero, -1
	move	$a0, $s0
	bne	$a2, $a1, .LBB19_10
# %bb.6:                                # %land.lhs.true2.i.i7.i.i.peel
	ld.d	$a0, $s2, 16
	ld.d	$a2, $s2, 24
	bgeu	$a0, $a2, .LBB19_43
# %bb.7:                                # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i17.i.i.peel
	beq	$s3, $a1, .LBB19_11
.LBB19_8:
	move	$s3, $zero
	addi.w	$s8, $s4, 0
	bnez	$s1, .LBB19_35
	b	.LBB19_38
.LBB19_9:
	move	$a0, $s0
.LBB19_10:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
	addi.d	$a1, $s3, 1
	sltui	$a1, $a1, 1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	beq	$a1, $a0, .LBB19_8
.LBB19_11:                              # %while.body.peel
	beqz	$s1, .LBB19_15
# %bb.12:                               # %while.body.peel
	addi.w	$a0, $s4, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB19_15
# %bb.13:                               # %land.lhs.true2.i.i.peel
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_97
# %bb.14:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel
	ld.bu	$s4, $a0, 0
.LBB19_15:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_98
.LBB19_16:                              # %if.then.i.i10.peel
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_17:                              # %land.lhs.true2.i.i.i.i.preheader
	ori	$s4, $zero, 17
	addi.w	$s5, $s0, 0
	ori	$s8, $zero, 15
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
	.p2align	4, , 16
.LBB19_18:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_32
.LBB19_19:                              # %if.then.i.i10
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_25
.LBB19_20:
	move	$s6, $zero
	beqz	$s2, .LBB19_26
.LBB19_21:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
	bne	$s5, $s7, .LBB19_26
# %bb.22:                               # %land.lhs.true2.i.i7.i.i
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_24
# %bb.23:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i17.i.i
	ld.bu	$a0, $a0, 0
	b	.LBB19_27
.LBB19_24:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i11.i.i
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_27
.LBB19_25:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a0, $a0, 1
	sltui	$s6, $a0, 1
	masknez	$s1, $s1, $s6
	bnez	$s2, .LBB19_21
	.p2align	4, , 16
.LBB19_26:
	move	$a0, $s0
.LBB19_27:                              # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.d	$s3, $s4, -16
	beq	$s6, $a0, .LBB19_34
# %bb.28:                               # %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
	bgeu	$s3, $s8, .LBB19_34
# %bb.29:                               # %while.body
	beqz	$s1, .LBB19_18
# %bb.30:                               # %land.lhs.true2.i.i
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_33
# %bb.31:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
.LBB19_32:                              # %if.else.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$s4, $s4, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_20
	b	.LBB19_25
.LBB19_33:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $fp, $s4
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_19
	b	.LBB19_32
.LBB19_34:                              # %while.cond4.preheader.loopexit
	move	$s4, $s7
	addi.w	$s8, $s4, 0
	beqz	$s1, .LBB19_38
.LBB19_35:                              # %while.cond4.preheader
	bne	$s8, $s7, .LBB19_38
# %bb.36:                               # %land.lhs.true2.i.i.i.i36.peel
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_44
# %bb.37:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i46.peel
	ld.bu	$s5, $a0, 0
	bnez	$s2, .LBB19_39
	b	.LBB19_46
.LBB19_38:
	move	$s5, $s4
	beqz	$s2, .LBB19_46
.LBB19_39:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i15.peel
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_46
# %bb.40:                               # %land.lhs.true2.i.i7.i.i24.peel
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_56
.LBB19_41:                              # %invoke.cont.thr_comm.peel
	addi.w	$a0, $s5, 0
	bne	$a0, $s7, .LBB19_96
	b	.LBB19_47
.LBB19_42:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	b	.LBB19_4
.LBB19_43:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i11.i.i.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s2
	jirl	$ra, $a1, 0
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s2, $s2, $a1
	b	.LBB19_10
.LBB19_44:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i40.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp974:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp975:                               # EH_LABEL
# %bb.45:                               # %call5.i.i.i.i.i43.noexc.peel
	move	$s5, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	bnez	$s2, .LBB19_39
.LBB19_46:                              # %invoke.cont.peel
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	sltui	$a1, $a1, 1
	xor	$a0, $a0, $a1
	beqz	$a0, .LBB19_96
.LBB19_47:                              # %while.body6.peel
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_60
.LBB19_48:                              # %if.then.peel
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp978:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp979:                               # EH_LABEL
# %bb.49:                               # %invoke.cont9.peel
	move	$s5, $a0
	beqz	$s3, .LBB19_52
# %bb.50:                               # %invoke.cont9.peel
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB19_55
# %bb.51:                               # %if.then.i.peel
	ld.b	$a0, $a1, 0
	st.b	$a0, $s5, 0
.LBB19_52:                              # %invoke.cont12.peel
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB19_54
.LBB19_53:                              # %if.then.i52.peel
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_54:                              # %invoke.cont13.peel
	ld.d	$a0, $sp, 16
	st.d	$s5, $fp, 0
	st.d	$a0, $fp, 16
	bnez	$s1, .LBB19_61
	b	.LBB19_64
.LBB19_55:                              # %if.end.i.i.peel
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	bne	$a0, $a1, .LBB19_53
	b	.LBB19_54
.LBB19_56:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i11.i.i28.peel
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp976:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp977:                               # EH_LABEL
# %bb.57:                               # %call5.i.i.i14.i.i31.noexc.peel
	bne	$a0, $s7, .LBB19_41
# %bb.58:                               # %if.then.i.i16.i.i33.peel
	addi.w	$a0, $s5, 0
	beq	$a0, $s7, .LBB19_96
# %bb.59:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_48
.LBB19_60:                              # %while.body6.peel.if.end.peel_crit_edge
	ld.d	$s5, $fp, 0
	beqz	$s1, .LBB19_64
.LBB19_61:                              # %if.end.peel
	bne	$s8, $s7, .LBB19_64
# %bb.62:                               # %land.lhs.true2.i.i59.peel
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_99
# %bb.63:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i69.peel
	ld.bu	$s4, $a0, 0
.LBB19_64:                              # %invoke.cont18.peel
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_101
.LBB19_65:                              # %if.then.i.i81.peel
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
.LBB19_66:                              # %land.lhs.true2.i.i.i.i36.preheader
	addi.d	$s3, $s3, 1
	addi.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	sltui	$s5, $a0, 1
	addi.d	$s6, $fp, 16
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
	b	.LBB19_90
	.p2align	4, , 16
.LBB19_67:
	move	$s1, $zero
	ori	$a0, $zero, 255
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_88
.LBB19_68:                              # %if.then.i.i81
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 16
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_90
.LBB19_69:
	move	$s4, $zero
	beqz	$s2, .LBB19_92
.LBB19_70:                              # %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i15
	addi.w	$a0, $s0, 0
	bne	$a0, $s7, .LBB19_92
# %bb.71:                               # %land.lhs.true2.i.i7.i.i24
	ld.d	$a0, $s2, 16
	ld.d	$a1, $s2, 24
	bgeu	$a0, $a1, .LBB19_73
.LBB19_72:                              # %invoke.cont.thr_comm
	bnez	$s4, .LBB19_78
	b	.LBB19_96
.LBB19_73:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i11.i.i28
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 72
.Ltmp989:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp990:                               # EH_LABEL
# %bb.74:                               # %call5.i.i.i14.i.i31.noexc
	bne	$a0, $s7, .LBB19_72
# %bb.75:                               # %if.then.i.i16.i.i33
	bnez	$s4, .LBB19_96
# %bb.76:
	move	$s2, $zero
	ld.d	$a0, $sp, 16
	beq	$s3, $a0, .LBB19_79
	.p2align	4, , 16
.LBB19_77:                              # %while.body6.if.end_crit_edge
	ld.d	$s4, $fp, 0
	bnez	$s1, .LBB19_86
	b	.LBB19_67
	.p2align	4, , 16
.LBB19_78:                              # %while.body6
	ld.d	$a0, $sp, 16
	bne	$s3, $a0, .LBB19_77
.LBB19_79:                              # %if.then
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 16
.Ltmp991:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp992:                               # EH_LABEL
# %bb.80:                               # %invoke.cont9
	move	$s4, $a0
	addi.d	$a0, $s3, -1
	beq	$a0, $s7, .LBB19_83
# %bb.81:                               # %invoke.cont9
	ld.d	$a1, $fp, 0
	bnez	$a0, .LBB19_93
# %bb.82:                               # %if.then.i
	ld.b	$a0, $a1, 0
	st.b	$a0, $s4, 0
.LBB19_83:                              # %invoke.cont12
	ld.d	$a0, $fp, 0
	beq	$a0, $s6, .LBB19_85
.LBB19_84:                              # %if.then.i52
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_85:                              # %invoke.cont13
	ld.d	$a0, $sp, 16
	st.d	$s4, $fp, 0
	st.d	$a0, $fp, 16
	beqz	$s1, .LBB19_67
.LBB19_86:                              # %land.lhs.true2.i.i59
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bgeu	$a0, $a1, .LBB19_94
# %bb.87:                               # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i69
	ld.bu	$a0, $a0, 0
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
.LBB19_88:                              # %if.else.i.i76
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp997:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp998:                               # EH_LABEL
# %bb.89:                               # %land.lhs.true2.i.i.i.i36.backedge
	addi.d	$s3, $s3, 1
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_69
.LBB19_90:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i40
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp987:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp988:                               # EH_LABEL
# %bb.91:                               # %call5.i.i.i.i.i43.noexc
	addi.d	$a0, $a0, 1
	sltui	$s4, $a0, 1
	masknez	$s1, $s1, $s4
	bnez	$s2, .LBB19_70
	.p2align	4, , 16
.LBB19_92:                              # %invoke.cont
	bne	$s5, $s4, .LBB19_78
	b	.LBB19_96
	.p2align	4, , 16
.LBB19_93:                              # %if.end.i.i
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	bne	$a0, $s6, .LBB19_84
	b	.LBB19_85
.LBB19_94:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i63
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp994:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp995:                               # EH_LABEL
# %bb.95:                               # %call5.i.i.i66.noexc
	addi.d	$a1, $a0, 1
	sltui	$a1, $a1, 1
	masknez	$s1, $s1, $a1
	stx.b	$a0, $s4, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_68
	b	.LBB19_88
.LBB19_96:                              # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit
	ld.d	$a0, $fp, 0
	st.d	$s3, $fp, 8
	stx.b	$zero, $a0, $s3
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
.LBB19_97:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
	move	$a0, $s1
	jirl	$ra, $a1, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	st.b	$s4, $s5, 0
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_16
.LBB19_98:                              # %if.else.i.i.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB19_17
.LBB19_99:                              # %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i63.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 72
.Ltmp981:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp982:                               # EH_LABEL
# %bb.100:                              # %call5.i.i.i66.noexc.peel
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	sltui	$a0, $a0, 1
	masknez	$s1, $s1, $a0
	stx.b	$s4, $s5, $s3
	ld.d	$a0, $s1, 16
	ld.d	$a1, $s1, 24
	bltu	$a0, $a1, .LBB19_65
.LBB19_101:                             # %if.else.i.i76.peel
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 80
.Ltmp984:                               # EH_LABEL
	move	$a0, $s1
	jirl	$ra, $a1, 0
.Ltmp985:                               # EH_LABEL
	b	.LBB19_66
.LBB19_102:                             # %lpad17.loopexit.split-lp
.Ltmp983:                               # EH_LABEL
	b	.LBB19_108
.LBB19_103:                             # %lpad.loopexit.split-lp
.Ltmp986:                               # EH_LABEL
	b	.LBB19_108
.LBB19_104:                             # %lpad17.loopexit
.Ltmp996:                               # EH_LABEL
	b	.LBB19_108
.LBB19_105:                             # %lpad.loopexit
.Ltmp999:                               # EH_LABEL
	b	.LBB19_108
.LBB19_106:                             # %lpad8.loopexit.split-lp
.Ltmp980:                               # EH_LABEL
	b	.LBB19_108
.LBB19_107:                             # %lpad8.loopexit
.Ltmp993:                               # EH_LABEL
.LBB19_108:                             # %if.then.i90
	move	$s0, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB19_110
# %bb.109:                              # %if.then.i.i92
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB19_110:                             # %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit96
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag, .Lfunc_end19-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"aG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp974-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp974
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp974-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp975-.Ltmp974              #   Call between .Ltmp974 and .Ltmp975
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin9         #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp979-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp976-.Ltmp979              #   Call between .Ltmp979 and .Ltmp976
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp976-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp977-.Ltmp976              #   Call between .Ltmp976 and .Ltmp977
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp989-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp990-.Ltmp989              #   Call between .Ltmp989 and .Ltmp990
	.uleb128 .Ltmp999-.Lfunc_begin9         #     jumps to .Ltmp999
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp991-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp992-.Ltmp991              #   Call between .Ltmp991 and .Ltmp992
	.uleb128 .Ltmp993-.Lfunc_begin9         #     jumps to .Ltmp993
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp992-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp997-.Ltmp992              #   Call between .Ltmp992 and .Ltmp997
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp997-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp988-.Ltmp997              #   Call between .Ltmp997 and .Ltmp988
	.uleb128 .Ltmp999-.Lfunc_begin9         #     jumps to .Ltmp999
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp988-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp994-.Ltmp988              #   Call between .Ltmp988 and .Ltmp994
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp994-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp995-.Ltmp994              #   Call between .Ltmp994 and .Ltmp995
	.uleb128 .Ltmp996-.Lfunc_begin9         #     jumps to .Ltmp996
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp995-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp981-.Ltmp995              #   Call between .Ltmp995 and .Ltmp981
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin9         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp986-.Lfunc_begin9         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp985-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Lfunc_end19-.Ltmp985          #   Call between .Ltmp985 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,"axG",@progbits,_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,comdat
	.weak	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb # -- Begin function _ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.p2align	5
	.type	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb,@function
_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb: # @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s4, $fp, 32
	move	$s0, $a1
	beq	$a0, $s4, .LBB20_10
# %bb.1:                                # %if.then
	ld.wu	$a1, $fp, 24
	bstrpick.d	$a5, $a2, 31, 0
	addi.d	$a4, $a1, 1
	bne	$s0, $a0, .LBB20_3
# %bb.2:                                # %if.then
	addi.w	$a6, $a2, 0
	addi.w	$a7, $a1, 0
	beq	$a7, $a6, .LBB20_8
.LBB20_3:                               # %while.body.preheader.i
	srli.d	$a6, $a4, 3
	lu12i.w	$a7, 262143
	ori	$a7, $a7, 4088
	and	$a6, $a6, $a7
	add.d	$a6, $a0, $a6
	andi	$t2, $a4, 63
	addi.w	$a7, $zero, -8
	ori	$t0, $zero, 63
	ori	$t1, $zero, 1
	addi.w	$a2, $a2, 0
	move	$t4, $a1
	move	$t3, $a0
	.p2align	4, , 16
.LBB20_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$t6, $t4, -1
	addi.w	$t4, $t4, 0
	sltui	$t4, $t4, 1
	maskeqz	$t5, $a7, $t4
	masknez	$t6, $t6, $t4
	maskeqz	$t4, $t0, $t4
	or	$t4, $t4, $t6
	addi.w	$t6, $t2, -1
	sltui	$t7, $t2, 1
	masknez	$t2, $t6, $t7
	maskeqz	$t6, $t0, $t7
	ldx.d	$t8, $t3, $t5
	or	$t2, $t6, $t2
	maskeqz	$t6, $a7, $t7
	add.d	$a6, $a6, $t6
	srl.d	$t6, $t8, $t4
	andi	$t7, $t6, 1
	sll.d	$t6, $t1, $t2
	beqz	$t7, .LBB20_6
# %bb.5:                                # %if.then.i.i14.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t7, $a6, 0
	or	$t6, $t7, $t6
	add.d	$t3, $t3, $t5
	st.d	$t6, $a6, 0
	beq	$t3, $s0, .LBB20_7
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_6:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$t7, $a6, 0
	andn	$t6, $t7, $t6
	add.d	$t3, $t3, $t5
	st.d	$t6, $a6, 0
	bne	$t3, $s0, .LBB20_4
.LBB20_7:                               # %_ZNSt14_Bit_referenceaSERKS_.exit.i
                                        #   in Loop: Header=BB20_4 Depth=1
	bne	$t4, $a2, .LBB20_4
.LBB20_8:                               # %_ZSt23__copy_move_backward_a2ILb0ESt13_Bit_iteratorS0_ET1_T0_S2_S1_.exit
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a5
	beqz	$a3, .LBB20_22
# %bb.9:                                # %if.then.i
	ld.d	$a3, $s0, 0
	or	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a4, $fp, 24
	beq	$a1, $a2, .LBB20_23
	b	.LBB20_36
.LBB20_10:                              # %if.else
	ld.d	$s1, $fp, 0
	ld.wu	$a1, $fp, 24
	sub.d	$a0, $a0, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a1, 3
	addi.w	$a0, $zero, -64
	lu52i.d	$a0, $a0, 2047
	beq	$a1, $a0, .LBB20_39
# %bb.11:                               # %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
	move	$s8, $a3
	move	$s5, $a2
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 63
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 2047
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	srli.d	$s6, $a0, 3
	addi.w	$s7, $zero, -8
	lu52i.d	$a0, $s7, 255
	and	$a0, $s6, $a0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s0, $s1
	ori	$a1, $zero, 9
	move	$s2, $a0
	blt	$s3, $a1, .LBB20_37
# %bb.12:                               # %if.then.i.i.i
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s3
.LBB20_13:                              # %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
	addi.w	$a3, $s5, 0
	move	$a2, $s8
	move	$a4, $zero
	beqz	$a3, .LBB20_20
# %bb.14:                               # %for.body.i.i.i.preheader
	move	$a7, $zero
	ori	$a5, $zero, 1
	move	$a6, $s0
	.p2align	4, , 16
.LBB20_15:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, 0
	srl.d	$t0, $t0, $a7
	andi	$t1, $t0, 1
	sll.d	$t0, $a5, $a4
	beqz	$t1, .LBB20_17
# %bb.16:                               # %if.then.i.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t1, $a1, 0
	or	$t0, $t1, $t0
	b	.LBB20_18
	.p2align	4, , 16
.LBB20_17:                              # %if.else.i.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	ld.d	$t1, $a1, 0
	andn	$t0, $t1, $t0
.LBB20_18:                              # %_ZNSt14_Bit_referenceaSEb.exit.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	st.d	$t0, $a1, 0
	addi.w	$t0, $a4, 1
	addi.d	$a4, $a4, -63
	sltui	$t1, $a4, 1
	masknez	$a4, $t0, $t1
	alsl.d	$a1, $t1, $a1, 3
	addi.w	$t0, $a7, 1
	addi.d	$a7, $a7, -63
	sltui	$t1, $a7, 1
	masknez	$a7, $t0, $t1
	alsl.d	$a6, $t1, $a6, 3
	bne	$a7, $a3, .LBB20_15
# %bb.19:                               # %_ZNSt14_Bit_referenceaSEb.exit.i.i.i
                                        #   in Loop: Header=BB20_15 Depth=1
	bne	$a6, $s0, .LBB20_15
.LBB20_20:                              # %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
	addi.w	$a5, $a4, 1
	addi.d	$a3, $a4, -63
	sltui	$a6, $a3, 1
	ori	$a3, $zero, 1
	sll.d	$a3, $a3, $a4
	beqz	$a2, .LBB20_24
# %bb.21:                               # %if.then.i83
	ld.d	$a2, $a1, 0
	or	$a2, $a2, $a3
	b	.LBB20_25
.LBB20_22:                              # %if.else.i
	ld.d	$a3, $s0, 0
	andn	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 63
	st.w	$a4, $fp, 24
	bne	$a1, $a2, .LBB20_36
.LBB20_23:                              # %if.then.i.i
	st.w	$zero, $fp, 24
	addi.d	$a0, $a0, 8
	st.d	$a0, $fp, 16
	b	.LBB20_36
.LBB20_24:                              # %if.else.i80
	ld.d	$a2, $a1, 0
	andn	$a2, $a2, $a3
.LBB20_25:                              # %_ZNSt14_Bit_referenceaSEb.exit85
	st.d	$a2, $a1, 0
	ld.d	$a2, $fp, 16
	ld.w	$a3, $fp, 24
	alsl.d	$s3, $a6, $a1, 3
	masknez	$s8, $a5, $a6
	bne	$s0, $a2, .LBB20_27
# %bb.26:                               # %_ZNSt14_Bit_referenceaSEb.exit85
	addi.w	$a1, $s5, 0
	beq	$a1, $a3, .LBB20_33
.LBB20_27:                              # %for.body.i.i.preheader
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB20_28:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $s0, 0
	addi.w	$a4, $s5, 0
	srl.d	$a5, $a5, $a4
	andi	$a6, $a5, 1
	sll.d	$a5, $a1, $s8
	beqz	$a6, .LBB20_30
# %bb.29:                               # %if.then.i.i.i.i94
                                        #   in Loop: Header=BB20_28 Depth=1
	ld.d	$a6, $s3, 0
	or	$a5, $a6, $a5
	b	.LBB20_31
	.p2align	4, , 16
.LBB20_30:                              # %if.else.i.i.i.i96
                                        #   in Loop: Header=BB20_28 Depth=1
	ld.d	$a6, $s3, 0
	andn	$a5, $a6, $a5
.LBB20_31:                              # %_ZNSt14_Bit_referenceaSERKS_.exit.i.i
                                        #   in Loop: Header=BB20_28 Depth=1
	st.d	$a5, $s3, 0
	addi.w	$a5, $s8, 1
	addi.d	$a6, $s8, -63
	sltui	$a6, $a6, 1
	masknez	$s8, $a5, $a6
	alsl.d	$s3, $a6, $s3, 3
	addi.w	$a0, $s5, 1
	addi.d	$a4, $a4, -63
	sltui	$a4, $a4, 1
	alsl.d	$s0, $a4, $s0, 3
	masknez	$s5, $a0, $a4
	bne	$s0, $a2, .LBB20_28
# %bb.32:                               # %_ZNSt14_Bit_referenceaSERKS_.exit.i.i
                                        #   in Loop: Header=BB20_28 Depth=1
	bne	$s5, $a3, .LBB20_28
.LBB20_33:                              # %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
	beqz	$s1, .LBB20_35
# %bb.34:                               # %if.then.i98
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $s4, $a0
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_35:                              # %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
	lu52i.d	$a0, $s7, 511
	and	$a0, $s6, $a0
	add.d	$a0, $s2, $a0
	st.d	$a0, $fp, 32
	st.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.d	$s3, $fp, 16
	st.w	$s8, $fp, 24
.LBB20_36:                              # %if.end
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
.LBB20_37:                              # %if.else.i.i.i64
	ori	$a0, $zero, 8
	move	$a1, $s2
	bne	$s3, $a0, .LBB20_13
# %bb.38:                               # %if.then2.i.i.i
	ld.d	$a0, $s1, 0
	st.d	$a0, $s2, 0
	addi.d	$a1, $s2, 8
	b	.LBB20_13
.LBB20_39:                              # %if.then.i54
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb, .Lfunc_end20-_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nLoopStat::print..."
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\tloop_is_run = "
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\tnum loop lengths = "
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\t\t ilength = "
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" --> "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\t\t\t loop_length = "
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\t\t\t samples_per_pass = "
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\t\t\t loop_run_count = "
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\t\t\t\t sample time = "
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\t\t\t\t mean = "
	.size	.L.str.9, 13

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\t\t\t\t std_dev = "
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\t\t\t\t min = "
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\t\t\t\t max = "
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\t\t\t\t harm_mean = "
	.size	.L.str.13, 18

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\t\t\t\t meanrel2ref = "
	.size	.L.str.14, 20

	.type	_ZL21s_loop_suite_run_info,@object # @_ZL21s_loop_suite_run_info
	.local	_ZL21s_loop_suite_run_info
	.comm	_ZL21s_loop_suite_run_info,8,8
	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"/"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"timing.txt"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	" ERROR: Can't open output file "
	.size	.L.str.17, 32

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n writeTimingSummaryReport...   "
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"checksum.txt"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n writeChecksumReport...    "
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"fom.txt"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\n writeFOMReport... "
	.size	.L.str.22, 21

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.24:
	.asciz	"===========================================================================================================\n"
	.size	.L.str.24, 109

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"------------------------------------------------------------------------------------------------------------\n"
	.size	.L.str.25, 110

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"-------------------------------------------------------\n"
	.size	.L.str.26, 57

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"............................................\n"
	.size	.L.str.27, 46

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"\n\n\n"
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"LCALS compilation summary: "
	.size	.L.str.29, 28

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"LCALS run summary: "
	.size	.L.str.31, 20

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"sizeof(Real_type) = "
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"     num suite passes = "
	.size	.L.str.33, 25

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"     loop sample fraction = "
	.size	.L.str.34, 29

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"     loop variants run : "
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" , "
	.size	.L.str.36, 4

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n     reference variant : "
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.38:
	.asciz	"Variant(length id)"
	.size	.L.str.38, 19

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Loop name(Loop ID) -->   <length id>:(length, samples/pass), etc."
	.size	.L.str.39, 66

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"   Mean Time "
	.size	.L.str.40, 14

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"        Min Time"
	.size	.L.str.41, 17

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"      Max Time"
	.size	.L.str.42, 15

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"    Std. Dev."
	.size	.L.str.43, 14

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Mean time rel to ref variant"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	" ("
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	") --> "
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"   "
	.size	.L.str.47, 4

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	":("
	.size	.L.str.48, 3

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	", "
	.size	.L.str.49, 3

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	")"
	.size	.L.str.50, 2

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"("
	.size	.L.str.51, 2

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"basic_string::append"
	.size	.L.str.53, 21

	.type	.L.str.54,@object               # @.str.54
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.54:
	.asciz	"Variant(length #)"
	.size	.L.str.54, 18

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"Loop name -->"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Check Sum    "
	.size	.L.str.56, 14

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"        Delta from reference"
	.size	.L.str.57, 29

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"LCALS FOM results: "
	.size	.L.str.58, 20

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Loop variant -- "
	.size	.L.str.59, 17

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"\t"
	.size	.L.str.60, 2

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" :   # loops run = "
	.size	.L.str.61, 20

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" ,   total exec time = "
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"\t\tFOM_relative = "
	.size	.L.str.63, 18

	.type	.L.str.64,@object               # @.str.64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.64:
	.asciz	"-meantime.txt"
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"\n writeMeanTimeReport...   "
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" Mean Run Times "
	.size	.L.str.66, 17

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.67:
	.asciz	"-reltime.txt"
	.size	.L.str.67, 13

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"\n writeRelativeTimeReport...   "
	.size	.L.str.68, 32

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" Relative Run Times "
	.size	.L.str.69, 21

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"lcalsversioninfo.txt"
	.size	.L.str.70, 21

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector<bool>::_M_insert_aux"
	.size	.L.str.71, 28

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.72, 26

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
