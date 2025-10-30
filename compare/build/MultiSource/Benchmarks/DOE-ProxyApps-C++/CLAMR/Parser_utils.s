	.file	"Parser_utils.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP12Parser_utilsC2Ei        # -- Begin function _ZN2PP12Parser_utilsC2Ei
	.p2align	5
	.type	_ZN2PP12Parser_utilsC2Ei,@function
_ZN2PP12Parser_utilsC2Ei:               # @_ZN2PP12Parser_utilsC2Ei
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(_ZN2PPL10index_baseE)
	st.w	$a1, $a0, %pc_lo12(_ZN2PPL10index_baseE)
	ret
.Lfunc_end0:
	.size	_ZN2PP12Parser_utilsC2Ei, .Lfunc_end0-_ZN2PP12Parser_utilsC2Ei
                                        # -- End function
	.globl	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_ # -- Begin function _ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
# %bb.0:                                # %entry
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a4, $a0, 2
	addi.w	$a5, $a4, 0
	beqz	$a5, .LBB1_11
# %bb.1:                                # %if.end
	ld.w	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a3, $a3, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$a6, $zero, 2
	sub.w	$a0, $a0, $a3
	blt	$a5, $a6, .LBB1_12
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a4, 30, 0
	addi.d	$a5, $a2, 16
	ori	$a6, $zero, 1
	ori	$a7, $zero, 8
	vrepli.w	$vr0, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.cond.cleanup9
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, 1
	add.w	$a0, $t1, $a0
	beq	$a6, $a4, .LBB1_12
.LBB1_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	slli.d	$t0, $a6, 2
	ldx.w	$t0, $a1, $t0
	sub.d	$t1, $t0, $a3
	bgeu	$a6, $a7, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t0, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_6:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t2, $a6
	bstrins.d	$t2, $zero, 2, 0
	bstrpick.d	$t0, $a6, 62, 3
	slli.d	$t0, $t0, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $t1, 0
	move	$t1, $a5
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t1, -16
	vld	$vr4, $t1, 0
	vmul.w	$vr1, $vr3, $vr1
	vmul.w	$vr2, $vr4, $vr2
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB1_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	vmul.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
	vmul.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmul.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t1, $vr1, 0
	beq	$a6, $t0, .LBB1_3
.LBB1_9:                                # %for.body10.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$t2, $t0, $a2, 2
	.p2align	4, , 16
.LBB1_10:                               # %for.body10
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	mul.d	$t1, $t3, $t1
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 4
	bne	$a6, $t0, .LBB1_10
	b	.LBB1_3
.LBB1_11:
	move	$a0, $zero
.LBB1_12:                               # %cleanup
	ret
.Lfunc_end1:
	.size	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_, .Lfunc_end1-_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.globl	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_ # -- Begin function _ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
# %bb.0:                                # %entry
	ld.d	$a5, $a3, 8
	ld.d	$a0, $a3, 0
	sub.d	$a7, $a5, $a0
	srai.d	$t0, $a7, 2
	addi.w	$a3, $t0, 0
	beqz	$a3, .LBB2_42
# %bb.1:                                # %for.cond.preheader
	blez	$a3, .LBB2_42
# %bb.2:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a5, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a5, $a5, %pc_lo12(_ZN2PPL10index_baseE)
	bstrpick.d	$a6, $t0, 30, 0
	ori	$t1, $zero, 8
	bgeu	$a6, $t1, .LBB2_4
# %bb.3:
	move	$t1, $zero
	b	.LBB2_7
.LBB2_4:                                # %vector.ph
	bstrpick.d	$t1, $t0, 30, 3
	slli.d	$t1, $t1, 3
	vreplgr2vr.w	$vr0, $a5
	addi.d	$t2, $a0, 16
	move	$t3, $t1
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t2, -16
	vst	$vr0, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB2_5
# %bb.6:                                # %middle.block
	beq	$a6, $t1, .LBB2_9
.LBB2_7:                                # %for.body.preheader
	alsl.d	$t2, $t1, $a0, 2
	sub.d	$t1, $a6, $t1
	.p2align	4, , 16
.LBB2_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $t2, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	bnez	$t1, .LBB2_8
.LBB2_9:                                # %if.end.i
	ld.w	$t1, $a0, 0
	ori	$t2, $zero, 1
	sub.w	$t1, $t1, $a5
	bne	$a3, $t2, .LBB2_12
# %bb.10:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit.thread126
	beq	$t1, $a1, .LBB2_41
# %bb.11:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit.thread126
	ori	$a6, $zero, 1
	bgtz	$a2, .LBB2_23
	b	.LBB2_41
.LBB2_12:                               # %for.body.lr.ph.i
	ld.d	$t3, $a4, 0
	addi.d	$t4, $t3, 16
	ori	$t5, $zero, 8
	vrepli.w	$vr0, 1
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               # %for.cond.cleanup9.i
                                        #   in Loop: Header=BB2_14 Depth=1
	addi.d	$t2, $t2, 1
	add.w	$t1, $t7, $t1
	beq	$t2, $a6, .LBB2_21
.LBB2_14:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_20 Depth 2
	slli.d	$t6, $t2, 2
	ldx.w	$t6, $a0, $t6
	sub.d	$t7, $t6, $a5
	bgeu	$t2, $t5, .LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	move	$t6, $zero
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_16:                               # %vector.ph143
                                        #   in Loop: Header=BB2_14 Depth=1
	move	$t8, $t2
	bstrins.d	$t8, $zero, 2, 0
	bstrpick.d	$t6, $t2, 62, 3
	slli.d	$t6, $t6, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $t7, 0
	move	$t7, $t4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB2_17:                               # %vector.body146
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t7, -16
	vld	$vr4, $t7, 0
	vmul.w	$vr1, $vr3, $vr1
	vmul.w	$vr2, $vr4, $vr2
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB2_17
# %bb.18:                               # %middle.block151
                                        #   in Loop: Header=BB2_14 Depth=1
	vmul.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
	vmul.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmul.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t7, $vr1, 0
	beq	$t2, $t6, .LBB2_13
.LBB2_19:                               # %for.body10.i.preheader
                                        #   in Loop: Header=BB2_14 Depth=1
	alsl.d	$t8, $t6, $t3, 2
	.p2align	4, , 16
.LBB2_20:                               # %for.body10.i
                                        #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $t8, 0
	mul.d	$t7, $fp, $t7
	addi.d	$t6, $t6, 1
	addi.d	$t8, $t8, 4
	bne	$t2, $t6, .LBB2_20
	b	.LBB2_13
.LBB2_21:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	beq	$t1, $a1, .LBB2_41
# %bb.22:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	blez	$a2, .LBB2_41
.LBB2_23:                               # %for.cond14.preheader.us.preheader
	move	$t1, $zero
	addi.d	$t2, $t0, -1
	ld.d	$t0, $a4, 0
	bstrpick.d	$t2, $t2, 31, 0
	alsl.d	$t3, $t2, $a0, 2
	bstrpick.d	$a7, $a7, 32, 2
	slli.d	$a7, $a7, 2
	addi.d	$t4, $t0, 16
	ori	$t5, $zero, 4
	ori	$t6, $zero, 1
	ori	$t7, $zero, 8
	vrepli.w	$vr0, 1
	.p2align	4, , 16
.LBB2_24:                               # %for.cond14.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_34 Depth 2
                                        #       Child Loop BB2_37 Depth 3
                                        #       Child Loop BB2_40 Depth 3
	beq	$a7, $t5, .LBB2_28
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	ld.d	$fp, $a4, 0
	move	$t8, $a0
	move	$s0, $t2
	.p2align	4, , 16
.LBB2_26:                               # %if.then19.us
                                        #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	ld.w	$s2, $fp, 0
	bne	$s1, $s2, .LBB2_29
# %bb.27:                               # %if.then25.us
                                        #   in Loop: Header=BB2_26 Depth=2
	st.w	$a5, $t8, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	bnez	$s0, .LBB2_26
.LBB2_28:                               # %if.else31.us
                                        #   in Loop: Header=BB2_24 Depth=1
	ld.w	$t8, $t3, 0
	addi.d	$t8, $t8, 1
	st.w	$t8, $t3, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $a5
	beq	$a3, $t6, .LBB2_30
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_29:                               # %if.else.us
                                        #   in Loop: Header=BB2_24 Depth=1
	addi.d	$fp, $s1, 1
	st.w	$fp, $t8, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $a5
	bne	$a3, $t6, .LBB2_32
	.p2align	4, , 16
.LBB2_30:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit61.us
                                        #   in Loop: Header=BB2_24 Depth=1
	beq	$t8, $a1, .LBB2_41
# %bb.31:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit61.us
                                        #   in Loop: Header=BB2_24 Depth=1
	addi.w	$t1, $t1, 1
	blt	$t1, $a2, .LBB2_24
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_32:                               # %for.body.i45.us.preheader
                                        #   in Loop: Header=BB2_24 Depth=1
	ori	$fp, $zero, 1
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               # %for.cond.cleanup9.i57.us
                                        #   in Loop: Header=BB2_34 Depth=2
	addi.d	$fp, $fp, 1
	add.w	$t8, $s1, $t8
	beq	$fp, $a6, .LBB2_30
.LBB2_34:                               # %for.body.i45.us
                                        #   Parent Loop BB2_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_37 Depth 3
                                        #       Child Loop BB2_40 Depth 3
	slli.d	$s0, $fp, 2
	ldx.w	$s0, $a0, $s0
	sub.d	$s1, $s0, $a5
	bgeu	$fp, $t7, .LBB2_36
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=2
	move	$s0, $zero
	b	.LBB2_39
	.p2align	4, , 16
.LBB2_36:                               # %vector.ph156
                                        #   in Loop: Header=BB2_34 Depth=2
	move	$s2, $fp
	bstrins.d	$s2, $zero, 2, 0
	bstrpick.d	$s0, $fp, 62, 3
	slli.d	$s0, $s0, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	move	$s1, $t4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB2_37:                               # %vector.body159
                                        #   Parent Loop BB2_24 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr3, $s1, -16
	vld	$vr4, $s1, 0
	vmul.w	$vr1, $vr3, $vr1
	vmul.w	$vr2, $vr4, $vr2
	addi.d	$s2, $s2, -8
	addi.d	$s1, $s1, 32
	bnez	$s2, .LBB2_37
# %bb.38:                               # %middle.block166
                                        #   in Loop: Header=BB2_34 Depth=2
	vmul.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
	vmul.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vmul.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$s1, $vr1, 0
	beq	$fp, $s0, .LBB2_33
.LBB2_39:                               # %for.body10.i50.us.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	alsl.d	$s2, $s0, $t0, 2
	.p2align	4, , 16
.LBB2_40:                               # %for.body10.i50.us
                                        #   Parent Loop BB2_24 Depth=1
                                        #     Parent Loop BB2_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $s2, 0
	mul.d	$s1, $s3, $s1
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 4
	bne	$fp, $s0, .LBB2_40
	b	.LBB2_33
.LBB2_41:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_42:                               # %cleanup48
	ret
.Lfunc_end2:
	.size	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_, .Lfunc_end2-_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.globl	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE # -- Begin function _ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.p2align	5
	.type	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE,@function
_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE: # @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a1
	ld.d	$s6, $a1, 0
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 0
	sub.d	$a0, $a0, $a1
	slli.d	$s5, $a0, 27
	srai.d	$s3, $s5, 32
	srli.d	$a1, $s3, 61
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bnez	$a1, .LBB3_192
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s1, $a5
	move	$s4, $a4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	srai.d	$s2, $a0, 5
	srai.d	$s7, $s5, 30
	beqz	$s5, .LBB3_3
# %bb.2:                                # %for.body.preheader.i.i.i.i.i
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_3:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
.LBB3_4:                                # %invoke.cont
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$fp, $s0, 8
	sub.d	$a0, $fp, $s6
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a1
	addi.w	$a1, $s2, 0
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a2, $s2, 30, 0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	blez	$a0, .LBB3_21
# %bb.5:                                # %for.cond7.preheader.lr.ph
	blez	$a1, .LBB3_21
# %bb.6:                                # %for.cond7.preheader.us.preheader
	move	$s1, $zero
	addi.d	$s8, $sp, 200
	ori	$s3, $zero, 16
	addi.w	$s5, $zero, -1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	lu32i.d	$a0, -349526
	lu52i.d	$s0, $a0, -1366
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %for.cond7.for.cond.cleanup9_crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	ld.d	$s6, $a0, 0
	addi.d	$s1, $s1, 1
	sub.d	$a0, $fp, $s6
	srli.d	$a0, $a0, 3
	mul.w	$a0, $a0, $s0
	bge	$s1, $a0, .LBB3_21
.LBB3_8:                                # %for.cond7.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	move	$fp, $zero
	slli.d	$a0, $s1, 4
	alsl.d	$s6, $s1, $a0, 3
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
                                        #   in Loop: Header=BB3_10 Depth=2
	addi.d	$fp, $fp, 32
	addi.d	$s7, $s7, -1
	addi.d	$s4, $s4, 4
	beqz	$s7, .LBB3_7
.LBB3_10:                               # %for.body10.us
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s6
	add.d	$a1, $a0, $fp
	st.d	$s8, $sp, 184
	ld.d	$a1, $a1, 8
	ldx.d	$s2, $a0, $fp
	st.d	$a1, $sp, 152
	move	$a0, $s8
	bltu	$a1, $s3, .LBB3_13
# %bb.11:                               # %if.then.i.i140.us
                                        #   in Loop: Header=BB3_10 Depth=2
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.12:                               # %call.i4.i.noexc.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_13:                               # %if.end.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	beq	$a1, $s5, .LBB3_17
# %bb.14:                               # %if.end.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	bnez	$a1, .LBB3_16
# %bb.15:                               # %if.then.i.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               # %if.end.i.i.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_17:                               # %invoke.cont16.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 152
	ld.w	$a1, $s4, 0
	addi.w	$a2, $a0, 0
	st.d	$a0, $sp, 192
	bge	$a1, $a2, .LBB3_19
# %bb.18:                               # %if.then.us
                                        #   in Loop: Header=BB3_10 Depth=2
	st.w	$a0, $s4, 0
.LBB3_19:                               # %if.end.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 184
	beq	$a0, $s8, .LBB3_9
# %bb.20:                               # %if.then.i.i148.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_21:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i117
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_24
# %bb.22:                               # %for.body.preheader.i.i.i.i.i119
.Ltmp3:                                 # EH_LABEL
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
# %bb.23:                               # %call5.i.i.i2.i.i.noexc135
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	bgtz	$s3, .LBB3_25
	b	.LBB3_46
.LBB3_24:
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	blez	$s3, .LBB3_46
.LBB3_25:                               # %for.body38.preheader
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_27
# %bb.26:
	move	$a0, $zero
	b	.LBB3_54
.LBB3_27:                               # %vector.ph
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %pred.store.continue626
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	beqz	$a3, .LBB3_45
.LBB3_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a1, -16
	vslt.w	$vr1, $vr1, $vr0
	vpickve2gr.w	$a4, $vr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_38
# %bb.30:                               # %pred.store.continue
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_39
.LBB3_31:                               # %pred.store.continue614
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_40
.LBB3_32:                               # %pred.store.continue616
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_34
.LBB3_33:                               # %pred.store.if617
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, -4, 3
.LBB3_34:                               # %pred.store.continue618
                                        #   in Loop: Header=BB3_29 Depth=1
	vld	$vr0, $a2, 0
	vld	$vr1, $a1, 0
	vslt.w	$vr1, $vr1, $vr0
	vpickve2gr.w	$a4, $vr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_41
# %bb.35:                               # %pred.store.continue620
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_42
.LBB3_36:                               # %pred.store.continue622
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_43
.LBB3_37:                               # %pred.store.continue624
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_38:                               # %pred.store.if
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, -16, 0
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_31
.LBB3_39:                               # %pred.store.if613
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, -12, 1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_32
.LBB3_40:                               # %pred.store.if615
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, -8, 2
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_33
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_41:                               # %pred.store.if619
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, 0, 0
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_36
.LBB3_42:                               # %pred.store.if621
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, 4, 1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_37
.LBB3_43:                               # %pred.store.if623
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, 8, 2
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
.LBB3_44:                               # %pred.store.if625
                                        #   in Loop: Header=BB3_29 Depth=1
	vstelm.w	$vr0, $a1, 12, 3
	b	.LBB3_28
.LBB3_45:                               # %middle.block
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_54
.LBB3_46:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i151
	beqz	$s4, .LBB3_58
# %bb.47:                               # %for.body.preheader.i.i.i.i.i153
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp7:                                 # EH_LABEL
# %bb.48:                               # %for.body.i.i.i.i.i158.preheader
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a5, $a1
	bltu	$s1, $a2, .LBB3_52
# %bb.49:                               # %vector.ph629
	bstrpick.d	$a1, $s1, 60, 3
	slli.d	$a2, $a1, 3
	andi	$a0, $s1, 7
	slli.d	$a1, $a1, 5
	add.d	$a1, $a5, $a1
	vreplgr2vr.w	$vr0, $s2
	addi.d	$a3, $a5, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_50:                               # %vector.body632
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_50
# %bb.51:                               # %middle.block635
	beq	$s1, $a2, .LBB3_53
	.p2align	4, , 16
.LBB3_52:                               # %for.body.i.i.i.i.i158
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, -1
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB3_52
.LBB3_53:                               # %invoke.cont56.loopexit
	alsl.d	$a0, $s1, $a5, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB3_59
.LBB3_54:                               # %for.body38.preheader666
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a3, $a0
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_55:                               # %for.inc50
                                        #   in Loop: Header=BB3_56 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB3_46
.LBB3_56:                               # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bge	$a4, $a3, .LBB3_55
# %bb.57:                               # %if.then44
                                        #   in Loop: Header=BB3_56 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB3_55
.LBB3_58:
	move	$a5, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB3_59:                               # %invoke.cont56
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a5, 0
	addi.w	$a6, $s0, -1
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	blez	$s7, .LBB3_129
# %bb.60:                               # %for.cond61.preheader
	blez	$s3, .LBB3_63
# %bb.61:                               # %for.body64.preheader
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_64
# %bb.62:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_67
.LBB3_63:
	move	$a1, $zero
	b	.LBB3_69
.LBB3_64:                               # %vector.ph641
	bstrpick.d	$a0, $s0, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	vrepli.b	$vr0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_65:                               # %vector.body644
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vld	$vr4, $a1, -16
	vld	$vr5, $a1, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB3_65
# %bb.66:                               # %middle.block652
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_69
.LBB3_67:                               # %for.body64.preheader662
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB3_68:                               # %for.body64
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a5
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB3_68
.LBB3_69:                               # %for.cond.cleanup63
	sub.w	$a0, $a1, $s7
	blez	$a0, .LBB3_129
# %bb.70:                               # %if.then74
	slli.d	$a1, $a6, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a1
	sub.d	$a0, $a2, $a0
	sub.d	$a2, $fp, $s6
	srli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.w	$a2, $a2, $a4
	stx.w	$a0, $a3, $a1
	blez	$a2, .LBB3_129
# %bb.71:                               # %for.cond87.preheader.lr.ph
	move	$s0, $zero
	addi.d	$s4, $sp, 200
	bstrpick.d	$s5, $a6, 31, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$a0, $a4
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB3_74
	.p2align	4, , 16
.LBB3_72:                               #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
.LBB3_73:                               # %cleanup
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$fp, $a0, 8
	addi.d	$s0, $s0, 1
	sub.d	$a0, $fp, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	bge	$s0, $a0, .LBB3_129
.LBB3_74:                               # %for.cond87.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_77 Depth 2
	slli.d	$a0, $s0, 4
	blez	$s3, .LBB3_91
# %bb.75:                               # %for.body90.preheader
                                        #   in Loop: Header=BB3_74 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$fp, $zero
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	alsl.d	$s7, $s0, $a0, 3
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB3_77
	.p2align	4, , 16
.LBB3_76:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
                                        #   in Loop: Header=BB3_77 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s1, $s1, 4
	addi.d	$s8, $s8, 4
	addi.d	$s2, $s2, 32
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s3, .LBB3_90
.LBB3_77:                               # %for.body90
                                        #   Parent Loop BB3_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s7
	add.d	$a1, $a0, $s2
	st.d	$s4, $sp, 184
	ld.d	$a1, $a1, 8
	ldx.d	$s6, $a0, $s2
	st.d	$a1, $sp, 152
	move	$a0, $s4
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB3_80
# %bb.78:                               # %if.then.i.i197
                                        #   in Loop: Header=BB3_77 Depth=2
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.79:                               # %call.i4.i.noexc198
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_80:                               # %if.end.i.i192
                                        #   in Loop: Header=BB3_77 Depth=2
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB3_83
# %bb.81:                               # %if.end.i.i192
                                        #   in Loop: Header=BB3_77 Depth=2
	bnez	$a1, .LBB3_86
# %bb.82:                               # %if.then.i.i.i194
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
.LBB3_83:                               # %invoke.cont97
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.d	$a0, $sp, 152
	st.d	$a0, $sp, 192
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	blt	$s3, $a1, .LBB3_87
.LBB3_84:                               # %if.end107
                                        #   in Loop: Header=BB3_77 Depth=2
	beq	$s5, $s3, .LBB3_88
.LBB3_85:                               # %if.end117
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.d	$a0, $sp, 184
	bne	$a0, $s4, .LBB3_89
	b	.LBB3_76
	.p2align	4, , 16
.LBB3_86:                               # %if.end.i.i.i.i195
                                        #   in Loop: Header=BB3_77 Depth=2
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	st.d	$a0, $sp, 192
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bge	$s3, $a1, .LBB3_84
.LBB3_87:                               # %if.then100
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s8, 0
	add.d	$a1, $a1, $fp
	add.w	$fp, $a1, $a2
	bne	$s5, $s3, .LBB3_85
.LBB3_88:                               # %if.then110
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.d	$a0, $fp, $a0
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 184
	beq	$a0, $s4, .LBB3_76
.LBB3_89:                               # %if.then.i.i207
                                        #   in Loop: Header=BB3_77 Depth=2
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_76
	.p2align	4, , 16
.LBB3_90:                               # %for.cond.cleanup89.loopexit
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s7, $fp, .LBB3_72
	b	.LBB3_92
	.p2align	4, , 16
.LBB3_91:                               #   in Loop: Header=BB3_74 Depth=1
	move	$fp, $zero
	bge	$s7, $fp, .LBB3_72
.LBB3_92:                               # %if.end123
                                        #   in Loop: Header=BB3_74 Depth=1
	alsl.d	$s2, $s0, $a0, 3
	ldx.d	$a0, $s6, $s2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s1, $a1, 5
	add.d	$a1, $a0, $s1
	addi.d	$a2, $sp, 200
	st.d	$a2, $sp, 184
	ld.d	$a1, $a1, 8
	ldx.d	$s6, $a0, $s1
	st.d	$a1, $sp, 152
	move	$a0, $a2
	ori	$a2, $zero, 16
	bltu	$a1, $a2, .LBB3_95
# %bb.93:                               # %if.then.i.i224
                                        #   in Loop: Header=BB3_74 Depth=1
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.94:                               # %call.i4.i.noexc225
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_95:                               # %if.end.i.i219
                                        #   in Loop: Header=BB3_74 Depth=1
	move	$s8, $s0
	addi.w	$s0, $zero, -1
	beq	$a1, $s0, .LBB3_99
# %bb.96:                               # %if.end.i.i219
                                        #   in Loop: Header=BB3_74 Depth=1
	bnez	$a1, .LBB3_98
# %bb.97:                               # %if.then.i.i.i221
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB3_99
.LBB3_98:                               # %if.end.i.i.i.i222
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_99:                               # %invoke.cont132
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a3, $sp, 152
	sub.d	$a0, $fp, $s7
	sub.w	$a1, $a3, $a0
	ori	$a4, $zero, 4
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, -4
	st.d	$a3, $sp, 192
	bltu	$a3, $a1, .LBB3_190
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.w	$a2, $a3, 0
	addi.w	$a0, $a0, 4
	slt	$a4, $a0, $a2
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_104
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_74 Depth=1
	bne	$a0, $s0, .LBB3_103
# %bb.102:                              # %if.then.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	stx.b	$zero, $a0, $a1
	b	.LBB3_104
.LBB3_103:                              # %if.then3.i
                                        #   in Loop: Header=BB3_74 Depth=1
	sub.d	$a2, $a3, $a1
	sltu	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a2, $a0, $a2
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
.LBB3_104:                              # %invoke.cont152
                                        #   in Loop: Header=BB3_74 Depth=1
	move	$fp, $s2
	move	$s2, $s7
	ld.d	$s6, $sp, 184
	ld.d	$s7, $sp, 192
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $sp, 168
	addi.d	$a1, $s7, 4
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.105:                              # %invoke.cont.i.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 160
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s7, .LBB3_188
# %bb.106:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB3_74 Depth=1
.Ltmp20:                                # EH_LABEL
	move	$s0, $s8
	addi.d	$a0, $sp, 152
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.107:                              # %invoke.cont1.i.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 160
	addi.w	$a1, $zero, -5
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB3_188
# %bb.108:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i9.i.i
                                        #   in Loop: Header=BB3_74 Depth=1
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.109:                              # %invoke.cont156
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a2, $a0, $fp
	ldx.d	$a0, $a2, $s1
	ld.d	$a1, $sp, 152
	add.d	$fp, $a2, $s1
	addi.d	$a2, $fp, 16
	beq	$a0, $a2, .LBB3_112
# %bb.110:                              # %invoke.cont.thread.i
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.d	$a3, $sp, 168
	move	$s7, $s2
	beq	$a1, $a3, .LBB3_116
# %bb.111:                              # %if.then22.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a2, $a2, 0
	b	.LBB3_114
.LBB3_112:                              # %invoke.cont.i
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.d	$a2, $sp, 168
	move	$s7, $s2
	beq	$a1, $a2, .LBB3_116
# %bb.113:                              #   in Loop: Header=BB3_74 Depth=1
	move	$a0, $zero
                                        # implicit-def: $r6
.LBB3_114:                              # %if.end24.i
                                        #   in Loop: Header=BB3_74 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 160
	st.d	$a1, $fp, 8
	ld.d	$a1, $sp, 168
	st.d	$a1, $fp, 16
	beqz	$a0, .LBB3_120
# %bb.115:                              # %if.then28.i
                                        #   in Loop: Header=BB3_74 Depth=1
	st.d	$a0, $sp, 152
	st.d	$a2, $sp, 168
	b	.LBB3_123
.LBB3_116:                              # %if.then8.i
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.d	$a2, $sp, 152
	beq	$a2, $fp, .LBB3_128
# %bb.117:                              # %if.then9.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a2, $sp, 160
	beqz	$a2, .LBB3_122
# %bb.118:                              # %if.then9.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_121
# %bb.119:                              # %if.then.i25.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_122
.LBB3_120:                              # %if.else29.i
                                        #   in Loop: Header=BB3_74 Depth=1
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	b	.LBB3_123
.LBB3_121:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB3_74 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_122:                              # %if.end17.i
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 160
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 152
.LBB3_123:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
                                        #   in Loop: Header=BB3_74 Depth=1
	st.d	$zero, $sp, 160
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB3_125
# %bb.124:                              # %if.then.i.i250
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_125:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB3_127
# %bb.126:                              # %if.then.i.i258
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_127:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	b	.LBB3_73
.LBB3_128:                              #   in Loop: Header=BB3_74 Depth=1
	move	$a0, $a1
	b	.LBB3_123
.LBB3_129:                              # %if.end176
	sub.d	$a0, $fp, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blez	$a0, .LBB3_181
# %bb.130:                              # %for.body183.lr.ph
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s4, $a0, 16
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s5, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	move	$s8, $zero
	lu32i.d	$a1, -349526
	lu52i.d	$a0, $a1, -1366
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_131:                              # %for.body183
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_135 Depth 2
                                        #       Child Loop BB3_137 Depth 3
                                        #       Child Loop BB3_141 Depth 3
                                        #     Child Loop BB3_153 Depth 2
                                        #       Child Loop BB3_158 Depth 3
                                        #       Child Loop BB3_162 Depth 3
                                        #       Child Loop BB3_171 Depth 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bne	$s8, $a0, .LBB3_150
# %bb.132:                              # %for.cond187.preheader
                                        #   in Loop: Header=BB3_131 Depth=1
	blez	$s3, .LBB3_143
# %bb.133:                              # %for.cond191.preheader.preheader
                                        #   in Loop: Header=BB3_131 Depth=1
	move	$fp, $zero
	b	.LBB3_135
	.p2align	4, , 16
.LBB3_134:                              # %for.cond.cleanup210
                                        #   in Loop: Header=BB3_135 Depth=2
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB3_143
.LBB3_135:                              # %for.cond191.preheader
                                        #   Parent Loop BB3_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_137 Depth 3
                                        #       Child Loop BB3_141 Depth 3
	slli.d	$s0, $fp, 2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	blez	$a0, .LBB3_139
# %bb.136:                              # %for.body196.preheader
                                        #   in Loop: Header=BB3_135 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s2, $fp, $a0, 2
	.p2align	4, , 16
.LBB3_137:                              # %for.body196
                                        #   Parent Loop BB3_131 Depth=1
                                        #     Parent Loop BB3_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp25:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.138:                              # %for.inc200
                                        #   in Loop: Header=BB3_137 Depth=3
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_137
.LBB3_139:                              # %for.cond206.preheader
                                        #   in Loop: Header=BB3_135 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s0
	blez	$a0, .LBB3_134
# %bb.140:                              # %for.body211.preheader
                                        #   in Loop: Header=BB3_135 Depth=2
	move	$s0, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$s1, $fp, $a0, 2
	.p2align	4, , 16
.LBB3_141:                              # %for.body211
                                        #   Parent Loop BB3_131 Depth=1
                                        #     Parent Loop BB3_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:                                # EH_LABEL
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.142:                              # %for.inc216
                                        #   in Loop: Header=BB3_141 Depth=3
	ld.w	$a0, $s1, 0
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB3_141
	b	.LBB3_134
	.p2align	4, , 16
.LBB3_143:                              # %for.cond.cleanup189
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB3_186
# %bb.144:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_146
# %bb.145:                              # %if.then.i2.i.i
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB3_148
.LBB3_146:                              # %if.end.i.i.i367
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp31:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.147:                              # %.noexc370
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp33:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp34:                                # EH_LABEL
.LBB3_148:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp35:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.149:                              # %call1.i.noexc
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
.LBB3_150:                              # %if.end230
                                        #   in Loop: Header=BB3_131 Depth=1
	blez	$s3, .LBB3_173
# %bb.151:                              # %for.body235.lr.ph
                                        #   in Loop: Header=BB3_131 Depth=1
	move	$s7, $zero
	slli.d	$a0, $s8, 4
	alsl.d	$a0, $s8, $a0, 3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_153
	.p2align	4, , 16
.LBB3_152:                              # %for.cond.cleanup332
                                        #   in Loop: Header=BB3_153 Depth=2
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$s8, $s1
	beq	$s7, $a0, .LBB3_173
.LBB3_153:                              # %for.body235
                                        #   Parent Loop BB3_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_158 Depth 3
                                        #       Child Loop BB3_162 Depth 3
                                        #       Child Loop BB3_171 Depth 3
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$s1, $s8
	bge	$s8, $a1, .LBB3_155
# %bb.154:                              # %if.then240
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $s7, 5
	add.d	$a1, $a1, $a2
	ld.d	$s8, $a1, 8
	b	.LBB3_156
	.p2align	4, , 16
.LBB3_155:                              #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s8, $a1, $a0
.LBB3_156:                              # %if.end247
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$s3, $a2, $a0
	blez	$a1, .LBB3_160
# %bb.157:                              # %for.body264.preheader
                                        #   in Loop: Header=BB3_153 Depth=2
	move	$fp, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s0, $s7, $a0, 2
	.p2align	4, , 16
.LBB3_158:                              # %for.body264
                                        #   Parent Loop BB3_131 Depth=1
                                        #     Parent Loop BB3_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp39:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.159:                              # %for.inc269
                                        #   in Loop: Header=BB3_158 Depth=3
	ld.w	$a0, $s0, 0
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB3_158
.LBB3_160:                              # %for.cond275.preheader
                                        #   in Loop: Header=BB3_153 Depth=2
	sub.w	$fp, $s3, $s8
	bstrpick.d	$s0, $fp, 31, 1
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB3_164
# %bb.161:                              # %for.body278.preheader
                                        #   in Loop: Header=BB3_153 Depth=2
	addi.w	$a0, $s0, 0
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s2, $a0, $a2
	.p2align	4, , 16
.LBB3_162:                              # %for.body278
                                        #   Parent Loop BB3_131 Depth=1
                                        #     Parent Loop BB3_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp42:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.163:                              # %for.inc283
                                        #   in Loop: Header=BB3_162 Depth=3
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB3_162
.LBB3_164:                              # %for.cond.cleanup277
                                        #   in Loop: Header=BB3_153 Depth=2
	move	$a0, $s7
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	blt	$s1, $a1, .LBB3_168
# %bb.165:                              # %if.then289
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB3_167
# %bb.166:                              # %invoke.cont301
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	ld.d	$a0, $a0, -24
	ld.w	$a1, $a1, 0
	add.d	$a0, $s4, $a0
	st.d	$a1, $a0, 16
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $s7, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp45:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
.LBB3_167:                              # %if.end309
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	bne	$s7, $a1, .LBB3_169
.LBB3_168:                              # %if.else.invoke
                                        #   in Loop: Header=BB3_153 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp47:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
.LBB3_169:                              # %if.end328
                                        #   in Loop: Header=BB3_153 Depth=2
	blez	$fp, .LBB3_152
# %bb.170:                              # %if.end328
                                        #   in Loop: Header=BB3_153 Depth=2
	add.d	$a0, $s8, $s0
	sub.w	$fp, $s3, $a0
	blez	$fp, .LBB3_152
	.p2align	4, , 16
.LBB3_171:                              # %for.body333
                                        #   Parent Loop BB3_131 Depth=1
                                        #     Parent Loop BB3_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp50:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.172:                              # %for.inc338
                                        #   in Loop: Header=BB3_171 Depth=3
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB3_171
	b	.LBB3_152
	.p2align	4, , 16
.LBB3_173:                              # %for.cond.cleanup234
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s7, $a0, 240
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	beqz	$s7, .LBB3_186
# %bb.174:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i380
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_176
# %bb.175:                              # %if.then.i2.i.i383
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB3_178
	.p2align	4, , 16
.LBB3_176:                              # %if.end.i.i.i388
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp53:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.177:                              # %.noexc393
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp55:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp56:                                # EH_LABEL
.LBB3_178:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i385
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp57:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.179:                              # %call1.i.noexc396
                                        #   in Loop: Header=BB3_131 Depth=1
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.180:                              # %for.inc355
                                        #   in Loop: Header=BB3_131 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	addi.d	$s8, $s8, 1
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blt	$s8, $a0, .LBB3_131
.LBB3_181:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_183
# %bb.182:                              # %if.then.i.i.i281
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_183:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit286
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_185
# %bb.184:                              # %if.then.i.i.i288
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_185:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit293
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
.LBB3_186:                              # %if.then.i.i.i368.invoke
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.187:                              # %if.then.i.i.i368.cont
.LBB3_188:                              # %if.then.i.i10.invoke.i.i
.Ltmp65:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.189:                              # %if.then.i.i10.cont.i.i
.LBB3_190:                              # %if.then.i.i237
.Ltmp68:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a4, %pc_hi20(.L.str.4)
	move	$a2, $a1
	addi.d	$a1, $a4, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.191:                              # %.noexc238
.LBB3_192:                              # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_193:                              # %lpad55
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_217
.LBB3_194:                              # %lpad32
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_219
	b	.LBB3_221
.LBB3_195:                              # %lpad151.loopexit
.Ltmp17:                                # EH_LABEL
	b	.LBB3_198
.LBB3_196:                              # %lpad131
.Ltmp14:                                # EH_LABEL
	b	.LBB3_215
.LBB3_197:                              # %lpad151.loopexit.split-lp
.Ltmp70:                                # EH_LABEL
.LBB3_198:                              # %ehcleanup
	move	$s0, $a0
	b	.LBB3_203
.LBB3_199:                              # %lpad.i.i.loopexit.split-lp
.Ltmp67:                                # EH_LABEL
	b	.LBB3_201
.LBB3_200:                              # %lpad.i.i.loopexit
.Ltmp24:                                # EH_LABEL
.LBB3_201:                              # %lpad.i.i
	move	$s0, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB3_203
# %bb.202:                              # %if.then.i.i15.i.i
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_203:                              # %ehcleanup
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB3_216
# %bb.204:                              # %if.then.i.i266
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_216
.LBB3_205:                              # %lpad227.loopexit.split-lp
.Ltmp64:                                # EH_LABEL
	b	.LBB3_215
.LBB3_206:                              # %lpad96
.Ltmp11:                                # EH_LABEL
	b	.LBB3_215
.LBB3_207:                              # %lpad227.loopexit
.Ltmp61:                                # EH_LABEL
	b	.LBB3_215
.LBB3_208:                              # %lpad15.split.us
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_219
	b	.LBB3_221
.LBB3_209:                              # %lpad296
.Ltmp49:                                # EH_LABEL
	b	.LBB3_215
.LBB3_210:                              # %lpad213
.Ltmp30:                                # EH_LABEL
	b	.LBB3_215
.LBB3_211:                              # %lpad197
.Ltmp27:                                # EH_LABEL
	b	.LBB3_215
.LBB3_212:                              # %lpad335.split
.Ltmp52:                                # EH_LABEL
	b	.LBB3_215
.LBB3_213:                              # %lpad280.split
.Ltmp44:                                # EH_LABEL
	b	.LBB3_215
.LBB3_214:                              # %lpad266
.Ltmp41:                                # EH_LABEL
.LBB3_215:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit346
	move	$s0, $a0
.LBB3_216:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit346
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_217:                              # %ehcleanup361
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_220
# %bb.218:                              # %ehcleanup364
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_221
.LBB3_219:                              # %ehcleanup365
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_220:                              # %if.then.i.i.i348
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_219
.LBB3_221:                              # %if.then.i.i.i355
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE, .Lfunc_end3-_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp31                #   Call between .Ltmp31 and .Ltmp38
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp48-.Ltmp45                #   Call between .Ltmp45 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp60-.Ltmp53                #   Call between .Ltmp53 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Lfunc_end3-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN2PPL10index_baseE,@object    # @_ZN2PPL10index_baseE
	.data
	.p2align	2, 0x0
_ZN2PPL10index_baseE:
	.word	1                               # 0x1
	.size	_ZN2PPL10index_baseE, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" ..."
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.3, 49

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"basic_string::erase"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.size	.L.str.5, 55

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"basic_string::append"
	.size	.L.str.6, 21

	.globl	_ZN2PP12Parser_utilsC1Ei
	.type	_ZN2PP12Parser_utilsC1Ei,@function
_ZN2PP12Parser_utilsC1Ei = _ZN2PP12Parser_utilsC2Ei
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
