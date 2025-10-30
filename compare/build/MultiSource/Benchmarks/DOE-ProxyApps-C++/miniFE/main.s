	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN6miniFE11is_neighborERK3BoxS2_ # -- Begin function _ZN6miniFE11is_neighborERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE11is_neighborERK3BoxS2_,@function
_ZN6miniFE11is_neighborERK3BoxS2_:      # @_ZN6miniFE11is_neighborERK3BoxS2_
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a1, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	bne	$a4, $a5, .LBB0_4
.LBB0_1:                                # %if.end
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, 8
	bne	$a4, $a6, .LBB0_14
.LBB0_2:                                # %if.end169
	ld.w	$a5, $a0, 20
	ld.w	$a6, $a1, 16
	ori	$a4, $zero, 1
	bne	$a5, $a6, .LBB0_24
.LBB0_3:                                # %if.end261
	and	$a0, $a3, $a2
	and	$a0, $a0, $a4
	ret
.LBB0_4:                                # %lor.lhs.false
	ld.w	$a6, $a1, 4
	ori	$a3, $zero, 1
	beq	$a4, $a6, .LBB0_1
# %bb.5:                                # %lor.lhs.false
	ld.w	$a7, $a0, 0
	ori	$a3, $zero, 1
	beq	$a7, $a5, .LBB0_1
# %bb.6:                                # %lor.lhs.false
	ori	$a3, $zero, 1
	beq	$a7, $a6, .LBB0_1
# %bb.7:                                # %lor.lhs.false20
	bge	$a5, $a7, .LBB0_9
# %bb.8:                                # %lor.lhs.false20
	ori	$a3, $zero, 1
	blt	$a4, $a6, .LBB0_1
.LBB0_9:                                # %lor.lhs.false31
	slt	$t0, $a7, $a5
	slt	$a3, $a6, $a4
	and	$t1, $t0, $a3
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.10:                               # %lor.lhs.false31
	slt	$a3, $a5, $a7
	slt	$t1, $a7, $a6
	and	$t1, $a3, $t1
	ori	$a3, $zero, 1
	bnez	$t1, .LBB0_1
# %bb.11:                               # %lor.rhs
	slt	$a3, $a5, $a4
	and	$t0, $a3, $t0
	ori	$a3, $zero, 1
	bnez	$t0, .LBB0_1
# %bb.12:                               # %lor.rhs
	addi.w	$a5, $a5, -1
	ori	$a3, $zero, 1
	beq	$a4, $a5, .LBB0_1
# %bb.13:                               # %lor.rhs70
	addi.w	$a3, $a6, 1
	xor	$a3, $a7, $a3
	sltui	$a3, $a3, 1
	b	.LBB0_1
.LBB0_14:                               # %lor.lhs.false83
	ld.w	$a5, $a1, 12
	beq	$a4, $a5, .LBB0_2
# %bb.15:                               # %lor.lhs.false83
	ld.w	$a7, $a0, 8
	beq	$a7, $a6, .LBB0_2
# %bb.16:                               # %lor.lhs.false83
	beq	$a7, $a5, .LBB0_2
# %bb.17:                               # %lor.lhs.false101
	bge	$a6, $a7, .LBB0_19
# %bb.18:                               # %lor.lhs.false101
	blt	$a4, $a5, .LBB0_2
.LBB0_19:                               # %lor.lhs.false113
	slt	$t0, $a7, $a6
	slt	$t1, $a5, $a4
	and	$t1, $t0, $t1
	bnez	$t1, .LBB0_2
# %bb.20:                               # %lor.lhs.false113
	slt	$t1, $a6, $a7
	slt	$t2, $a7, $a5
	and	$t1, $t1, $t2
	bnez	$t1, .LBB0_2
# %bb.21:                               # %lor.rhs137
	slt	$t1, $a6, $a4
	and	$t0, $t1, $t0
	bnez	$t0, .LBB0_2
# %bb.22:                               # %lor.rhs137
	addi.w	$a6, $a6, -1
	beq	$a4, $a6, .LBB0_2
# %bb.23:                               # %lor.rhs160
	addi.w	$a2, $a5, 1
	xor	$a2, $a7, $a2
	sltui	$a2, $a2, 1
	b	.LBB0_2
.LBB0_24:                               # %lor.lhs.false175
	ld.w	$a1, $a1, 20
	beq	$a5, $a1, .LBB0_3
# %bb.25:                               # %lor.lhs.false175
	ld.w	$a0, $a0, 16
	beq	$a0, $a6, .LBB0_3
# %bb.26:                               # %lor.lhs.false175
	beq	$a0, $a1, .LBB0_3
# %bb.27:                               # %lor.lhs.false193
	bge	$a6, $a0, .LBB0_29
# %bb.28:                               # %lor.lhs.false193
	blt	$a5, $a1, .LBB0_3
.LBB0_29:                               # %lor.lhs.false205
	slt	$a7, $a0, $a6
	slt	$t0, $a1, $a5
	and	$t0, $a7, $t0
	bnez	$t0, .LBB0_3
# %bb.30:                               # %lor.lhs.false205
	slt	$t0, $a6, $a0
	slt	$t1, $a0, $a1
	and	$t0, $t0, $t1
	bnez	$t0, .LBB0_3
# %bb.31:                               # %lor.rhs229
	slt	$t0, $a6, $a5
	and	$a7, $t0, $a7
	bnez	$a7, .LBB0_3
# %bb.32:                               # %lor.rhs229
	addi.w	$a6, $a6, -1
	beq	$a5, $a6, .LBB0_3
# %bb.33:                               # %lor.rhs252
	addi.w	$a1, $a1, 1
	xor	$a0, $a0, $a1
	sltui	$a4, $a0, 1
	and	$a0, $a3, $a2
	and	$a0, $a0, $a4
	ret
.Lfunc_end0:
	.size	_ZN6miniFE11is_neighborERK3BoxS2_, .Lfunc_end0-_ZN6miniFE11is_neighborERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE18decide_how_to_growERK3BoxS2_ # -- Begin function _ZN6miniFE18decide_how_to_growERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE18decide_how_to_growERK3BoxS2_,@function
_ZN6miniFE18decide_how_to_growERK3BoxS2_: # @_ZN6miniFE18decide_how_to_growERK3BoxS2_
# %bb.0:                                # %entry
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a0, 20
	ori	$a2, $zero, 2
	bge	$a3, $a4, .LBB1_2
.LBB1_1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB1_2:                                # %if.end
	ld.w	$a3, $a1, 16
	ld.w	$a4, $a0, 16
	bge	$a4, $a3, .LBB1_4
# %bb.3:
	move	$a0, $a2
	ret
.LBB1_4:                                # %if.end11
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a0, 12
	ori	$a2, $zero, 1
	blt	$a3, $a4, .LBB1_1
# %bb.5:                                # %if.end20
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB1_7
# %bb.6:
	move	$a0, $a2
	ret
.LBB1_7:                                # %if.end29
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a0, 4
	bge	$a2, $a3, .LBB1_9
# %bb.8:
	move	$a2, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB1_9:                                # %if.end38
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a1, $a0, 1
	ori	$a2, $zero, 3
	masknez	$a2, $a2, $a0
	slli.d	$a0, $a1, 32
	or	$a0, $a2, $a0
	ret
.Lfunc_end1:
	.size	_ZN6miniFE18decide_how_to_growERK3BoxS2_, .Lfunc_end1-_ZN6miniFE18decide_how_to_growERK3BoxS2_
                                        # -- End function
	.globl	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_ # -- Begin function _ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
	.p2align	5
	.type	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_,@function
_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_: # @_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
# %bb.0:                                # %entry
	ld.w	$a4, $a1, 20
	ld.w	$a5, $a0, 20
	ld.w	$a2, $a1, 16
	sub.w	$a3, $a4, $a2
	bge	$a4, $a5, .LBB2_3
# %bb.1:                                # %land.lhs.true
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_6
# %bb.2:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_3:                                # %if.end
	ld.w	$a4, $a0, 16
	bge	$a4, $a2, .LBB2_6
# %bb.4:                                # %if.end
	ori	$a2, $zero, 2
	bge	$a2, $a3, .LBB2_6
# %bb.5:
	ori	$a2, $zero, 2
	move	$a0, $a2
	ret
.LBB2_6:                                # %if.end23
	ld.w	$a4, $a1, 12
	ld.w	$a5, $a0, 12
	ld.w	$a3, $a1, 8
	sub.w	$a2, $a4, $a3
	bge	$a4, $a5, .LBB2_9
# %bb.7:                                # %land.lhs.true29
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_12
# %bb.8:
	ori	$a2, $zero, 1
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_9:                                # %if.end39
	ld.w	$a4, $a0, 8
	bge	$a4, $a3, .LBB2_12
# %bb.10:                               # %if.end39
	ori	$a3, $zero, 2
	bge	$a3, $a2, .LBB2_12
# %bb.11:
	ori	$a2, $zero, 1
	move	$a0, $a2
	ret
.LBB2_12:                               # %if.end55
	ld.w	$a2, $a1, 4
	ld.w	$a4, $a0, 4
	ld.w	$a1, $a1, 0
	sub.w	$a3, $a2, $a1
	bge	$a2, $a4, .LBB2_15
# %bb.13:                               # %land.lhs.true61
	ori	$a4, $zero, 2
	ori	$a2, $zero, 1
	bge	$a4, $a3, .LBB2_16
# %bb.14:
	move	$a2, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	or	$a0, $a2, $a0
	ret
.LBB2_15:                               # %if.end55.if.end71_crit_edge
	slti	$a2, $a3, 3
.LBB2_16:                               # %if.end71
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	or	$a0, $a0, $a2
	andi	$a1, $a0, 1
	slli.d	$a0, $a1, 32
	ori	$a2, $zero, 3
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	ret
.Lfunc_end2:
	.size	_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_, .Lfunc_end2-_ZN6miniFE20decide_how_to_shrinkERK3BoxS2_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI3_0:
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	1                               # 0x1
.LCPI3_1:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -992
	.cfi_def_cfa_offset 992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 904                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	move	$fp, $a1
	move	$s0, $a0
	vst	$vr0, $sp, 800
	st.d	$zero, $sp, 816
	st.w	$zero, $sp, 824
	addi.d	$s2, $sp, 848
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	st.d	$s2, $sp, 832
	st.d	$zero, $sp, 840
	st.b	$zero, $sp, 848
	vst	$vr0, $sp, 864
	ori	$a0, $zero, 2
	lu32i.d	$a0, 9999
	st.d	$a0, $sp, 880
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 888
.Ltmp0:                                 # EH_LABEL
	addi.d	$a2, $sp, 800
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE14get_parametersEiPPcRNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	st.w	$s1, $sp, 796
	st.w	$zero, $sp, 792
.Ltmp3:                                 # EH_LABEL
	addi.d	$a2, $sp, 796
	addi.d	$a3, $sp, 792
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE14initialize_mpiEiPPcRiS2_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont2
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:                                # %invoke.cont4
.Ltmp8:                                 # EH_LABEL
	fmov.d	$fs0, $fa0
	addi.d	$a0, $sp, 800
	pcaddu18i	$ra, %call36(_ZN6miniFE20broadcast_parametersERNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.4:                                # %invoke.cont5
	ld.w	$a0, $sp, 800
	st.w	$zero, $sp, 768
	st.w	$a0, $sp, 772
	ld.w	$a0, $sp, 804
	ld.w	$a1, $sp, 808
	ld.w	$s0, $sp, 796
	st.w	$zero, $sp, 776
	st.w	$a0, $sp, 780
	st.w	$zero, $sp, 784
	st.w	$a1, $sp, 788
	bltz	$s0, .LBB3_67
# %bb.5:                                # %_ZNSt6vectorI3BoxSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
	beqz	$s0, .LBB3_10
# %bb.6:                                # %if.then.i.i.i.i3.i
	slli.d	$a0, $s0, 4
	alsl.d	$s1, $s0, $a0, 3
.Ltmp11:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.7:                                # %call5.i.i.i2.i.i.noexc
	move	$fp, $a0
	add.d	$s3, $a0, $s1
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	ori	$a0, $zero, 1
	vst	$vr0, $fp, 0
	beq	$s0, $a0, .LBB3_11
# %bb.8:                                # %if.end.i.i.i.i.i.i
	ori	$a0, $zero, 24
	.p2align	4, , 16
.LBB3_9:                                # %for.body.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $fp, 0
	vstx	$vr0, $fp, $a0
	ld.d	$a1, $fp, 16
	add.d	$a2, $fp, $a0
	addi.d	$a0, $a0, 24
	st.d	$a1, $a2, 16
	bne	$s1, $a0, .LBB3_9
	b	.LBB3_11
.LBB3_10:
	move	$s3, $zero
	move	$fp, $zero
.LBB3_11:                               # %invoke.cont11
.Ltmp13:                                # EH_LABEL
	ori	$a2, $zero, 2
	addi.d	$a3, $sp, 768
	move	$a0, $zero
	move	$a1, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_Z13box_partitioniiiRK3BoxPS_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.12:                               # %invoke.cont14
	ld.w	$a0, $sp, 792
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $fp, $a0
	ld.w	$a1, $s0, 4
	ldx.w	$a0, $fp, $a0
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s0, 8
	ld.w	$a4, $s0, 20
	ld.w	$a5, $s0, 16
	sub.w	$a0, $a1, $a0
	sub.w	$a1, $a2, $a3
	sub.w	$a2, $a4, $a5
	sltu	$a0, $zero, $a0
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	sltu	$a1, $zero, $a2
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_27
# %bb.13:                               # %if.end
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.14:                               # %invoke.cont27
.Ltmp19:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 392
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.15:                               # %invoke.cont29
	ld.w	$a1, $sp, 800
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.16:                               # %invoke.cont32
.Ltmp23:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.17:                               # %invoke.cont34
	ld.w	$a1, $sp, 804
.Ltmp25:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.18:                               # %invoke.cont37
.Ltmp27:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.19:                               # %invoke.cont39
	ld.w	$a1, $sp, 808
.Ltmp29:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.20:                               # %invoke.cont42
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 392
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.21:                               # %invoke.cont44
	ld.d	$a2, $sp, 840
	beqz	$a2, .LBB3_24
# %bb.22:                               # %if.then48
	ld.d	$a1, $sp, 832
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.23:                               # %invoke.cont50
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
.LBB3_24:                               # %if.end54
	addi.d	$s1, $sp, 160
	st.d	$s1, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 160
	st.h	$a0, $sp, 164
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 152
	st.b	$zero, $sp, 166
	addi.d	$s4, $sp, 128
	st.d	$s4, $sp, 112
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ld.h	$a1, $a0, 0
	ld.b	$a0, $a0, 2
	st.h	$a1, $sp, 128
	st.b	$a0, $sp, 130
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 120
	st.b	$zero, $sp, 131
	addi.d	$s5, $sp, 96
	st.d	$s5, $sp, 80
	ori	$a0, $zero, 46
	st.h	$a0, $sp, 96
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88
	ld.d	$a0, $sp, 440
	addi.d	$s6, $sp, 64
	st.d	$s6, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
	beqz	$a0, .LBB3_31
# %bb.25:                               # %if.end54
	ld.d	$a1, $sp, 424
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB3_31
# %bb.26:                               # %if.then.i.i75
	ld.d	$a3, $sp, 432
	sub.d	$a4, $a0, $a3
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
	b	.LBB3_32
.LBB3_27:                               # %if.then
.Ltmp69:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 74
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.28:                               # %invoke.cont21
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_69
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_59
# %bb.30:                               # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB3_61
.LBB3_31:                               # %if.else.i.i
	addi.d	$a1, $sp, 472
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
.LBB3_32:                               # %invoke.cont69
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 80
	addi.d	$a4, $sp, 48
	pcaddu18i	$ra, %call36(_ZN8YAML_DocC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.33:                               # %invoke.cont71
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB3_35
# %bb.34:                               # %if.then.i.i78
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB3_37
# %bb.36:                               # %if.then.i.i81
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB3_39
# %bb.38:                               # %if.then.i.i88
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_39:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_41
# %bb.40:                               # %if.then.i.i95
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
	ld.w	$a0, $sp, 792
	bnez	$a0, .LBB3_45
# %bb.42:                               # %if.then85
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 800
	pcaddu18i	$ra, %call36(_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.43:                               # %invoke.cont87
	ld.w	$a1, $sp, 796
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_Z25add_configuration_to_yamlR8YAML_Docii)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.44:                               # %invoke.cont88
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_Z22add_timestring_to_yamlR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
.LBB3_45:                               # %if.end90
.Ltmp53:                                # EH_LABEL
	addi.d	$a0, $sp, 768
	addi.d	$a2, $sp, 800
	addi.d	$a3, $sp, 176
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.46:                               # %invoke.cont92
.Ltmp56:                                # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.47:                               # %invoke.cont95
	ld.w	$a0, $sp, 792
	bnez	$a0, .LBB3_55
# %bb.48:                               # %if.then98
	fmov.d	$fs1, $fa0
	st.d	$s1, $sp, 144
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 112
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.49:                               # %call2.i5.i.noexc138
	ld.d	$a1, $sp, 112
	fsub.d	$fa0, $fs1, $fs0
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
.Ltmp61:                                # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.50:                               # %invoke.cont104
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_52
# %bb.51:                               # %if.then.i.i142
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_Doc12generateYAMLB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.53:                               # %invoke.cont110
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB3_55
# %bb.54:                               # %if.then.i.i149
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_55:                               # %if.end111
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.56:                               # %invoke.cont112
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 392
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 392
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 472
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 488
	st.d	$a1, $sp, 400
	beq	$a0, $a2, .LBB3_58
# %bb.57:                               # %if.then.i.i.i.i.i
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_58:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 400
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 504
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_64
.LBB3_59:                               # %if.end.i.i.i186
.Ltmp71:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.60:                               # %.noexc190
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp73:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp74:                                # EH_LABEL
.LBB3_61:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp75:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.62:                               # %call1.i.noexc
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.63:                               # %invoke.cont23
	ori	$s0, $zero, 1
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE12finalize_mpiEv)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
.LBB3_64:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 832
	beq	$a0, $s2, .LBB3_66
# %bb.65:                               # %if.then.i.i.i164
	ld.d	$a1, $sp, 848
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_66:                               # %_ZN6miniFE10ParametersD2Ev.exit
	move	$a0, $s0
	fld.d	$fs1, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 912                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.LBB3_67:                               # %if.then.i.i
.Ltmp84:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.68:                               # %.noexc
.LBB3_69:                               # %if.then.i.i.i188
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.70:                               # %.noexc189
.LBB3_71:                               # %lpad103
.Ltmp63:                                # EH_LABEL
	ld.d	$a2, $sp, 144
	move	$s0, $a0
	beq	$a2, $s1, .LBB3_92
# %bb.72:                               # %if.then.i.i156
	ld.d	$a0, $sp, 160
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_92
.LBB3_73:                               # %lpad101
.Ltmp60:                                # EH_LABEL
	b	.LBB3_91
.LBB3_74:                               # %lpad91
.Ltmp55:                                # EH_LABEL
	b	.LBB3_91
.LBB3_75:                               # %lpad70
.Ltmp45:                                # EH_LABEL
	b	.LBB3_77
.LBB3_76:                               # %lpad.i.i
.Ltmp42:                                # EH_LABEL
.LBB3_77:                               # %lpad70
	ld.d	$a2, $sp, 48
	move	$s0, $a0
	bne	$a2, $s6, .LBB3_81
# %bb.78:                               # %ehcleanup
	ld.d	$a0, $sp, 80
	bne	$a0, $s5, .LBB3_82
.LBB3_79:                               # %ehcleanup73
	ld.d	$a0, $sp, 112
	bne	$a0, $s4, .LBB3_83
.LBB3_80:                               # %ehcleanup77
	ld.d	$a0, $sp, 144
	bne	$a0, $s1, .LBB3_84
	b	.LBB3_98
.LBB3_81:                               # %ehcleanup.sink.split
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beq	$a0, $s5, .LBB3_79
.LBB3_82:                               # %if.then.i.i109
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	beq	$a0, $s4, .LBB3_80
.LBB3_83:                               # %if.then.i.i116
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB3_98
.LBB3_84:                               # %if.then.i.i123
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_85:                               # %lpad26
.Ltmp18:                                # EH_LABEL
	b	.LBB3_96
.LBB3_86:                               # %lpad86
.Ltmp52:                                # EH_LABEL
	b	.LBB3_91
.LBB3_87:                               # %lpad13
.Ltmp15:                                # EH_LABEL
	b	.LBB3_96
.LBB3_88:                               # %lpad1
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_89:                               # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_90:                               # %lpad94
.Ltmp68:                                # EH_LABEL
.LBB3_91:                               # %ehcleanup115
	move	$s0, $a0
.LBB3_92:                               # %ehcleanup115
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN8YAML_DocD1Ev)
	jirl	$ra, $ra, 0
	b	.LBB3_98
.LBB3_93:                               # %lpad10
.Ltmp86:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_94:                               # %lpad3
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB3_100
.LBB3_95:                               # %lpad20
.Ltmp83:                                # EH_LABEL
.LBB3_96:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit172
	move	$s0, $a0
	b	.LBB3_99
.LBB3_97:                               # %lpad28
.Ltmp37:                                # EH_LABEL
	move	$s0, $a0
.LBB3_98:                               # %ehcleanup117
	addi.d	$a0, $sp, 392
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB3_99:                               # %_ZNSt6vectorI3BoxSaIS0_EED2Ev.exit172
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_100:                              # %ehcleanup137
	ld.d	$a0, $sp, 832
	beq	$a0, $s2, .LBB3_102
# %bb.101:                              # %if.then.i.i.i175
	ld.d	$a1, $sp, 848
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_102:                              # %_ZN6miniFE10ParametersD2Ev.exit180
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp36-.Ltmp19                #   Call between .Ltmp19 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp51-.Ltmp46                #   Call between .Ltmp46 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp71-.Ltmp67                #   Call between .Ltmp67 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp80-.Ltmp71                #   Call between .Ltmp71 and .Ltmp80
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp80                #   Call between .Ltmp80 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Lfunc_end3-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE # -- Begin function _Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.p2align	5
	.type	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE,@function
_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE: # @_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$fp, $a0
	addi.d	$s1, $sp, 96
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s5, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s5, 0
	ld.d	$s4, $s5, 13
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
	addi.d	$s2, $sp, 64
	st.d	$s2, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
.Ltmp90:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.2:                                # %invoke.cont7
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_4
# %bb.3:                                # %if.then.i.i65
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_6
# %bb.5:                                # %if.then.i.i67
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.7:                                # %call2.i5.i.noexc82
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp96:                                # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.8:                                # %invoke.cont19
	st.d	$s2, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ld.d	$s6, $a1, 0
	ld.h	$s7, $a1, 8
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
.Ltmp99:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.9:                                # %invoke.cont30
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_11
# %bb.10:                               # %if.then.i.i110
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_13
# %bb.12:                               # %if.then.i.i117
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_15
# %bb.14:                               # %if.then.i.i124
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.16:                               # %call2.i5.i.noexc139
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp105:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.17:                               # %invoke.cont49
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp108:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.18:                               # %invoke.cont56
	st.d	$s3, $sp, 16
	lu12i.w	$s8, 7
	ori	$a1, $s8, 2158
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 0
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp111:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.19:                               # %invoke.cont63
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_21
# %bb.20:                               # %if.then.i.i167
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_23
# %bb.22:                               # %if.then.i.i174
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_25
# %bb.24:                               # %if.then.i.i181
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.26:                               # %call2.i5.i.noexc196
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp117:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.27:                               # %invoke.cont82
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp120:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.28:                               # %invoke.cont89
	st.d	$s3, $sp, 16
	ori	$a1, $s8, 2414
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 4
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp123:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.29:                               # %invoke.cont96
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_31
# %bb.30:                               # %if.then.i.i224
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_33
# %bb.32:                               # %if.then.i.i231
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_35
# %bb.34:                               # %if.then.i.i238
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.36:                               # %call2.i5.i.noexc253
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp129:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.37:                               # %invoke.cont115
	st.d	$s2, $sp, 48
	st.d	$s6, $sp, 64
	st.h	$s7, $sp, 72
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 74
.Ltmp132:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.38:                               # %invoke.cont122
	st.d	$s3, $sp, 16
	ori	$a1, $s8, 2670
	st.h	$a1, $sp, 32
	ld.w	$a2, $s0, 8
	ori	$a1, $zero, 2
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 34
.Ltmp135:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.39:                               # %invoke.cont129
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_41
# %bb.40:                               # %if.then.i.i281
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_43
# %bb.42:                               # %if.then.i.i288
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_45
# %bb.44:                               # %if.then.i.i295
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
	st.d	$s1, $sp, 80
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 48
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.46:                               # %call2.i5.i.noexc310
	ld.d	$a1, $sp, 48
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	stx.b	$zero, $a0, $a1
.Ltmp141:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.47:                               # %invoke.cont148
	st.d	$s2, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 64
	st.d	$a1, $sp, 70
	fld.s	$fa0, $s0, 24
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 56
	st.b	$zero, $sp, 78
	fcvt.d.s	$fa0, $fa0
.Ltmp144:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.48:                               # %invoke.cont155
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_50
# %bb.49:                               # %if.then.i.i326
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_52
# %bb.51:                               # %if.then.i.i333
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
	ld.w	$a0, $s0, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB4_57
# %bb.53:                               # %if.then
	st.d	$s1, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 96
	st.w	$a0, $sp, 99
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 103
	st.d	$s2, $sp, 48
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 16
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.54:                               # %call2.i5.i.noexc360
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp162:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.55:                               # %invoke.cont175
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 112
.Ltmp165:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.56:                               # %call2.i5.i.noexc372
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp168:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
	b	.LBB4_61
.LBB4_57:                               # %if.else
	st.d	$s1, $sp, 80
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 96
	st.h	$a0, $sp, 100
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 88
	st.b	$zero, $sp, 102
	st.d	$s2, $sp, 48
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 16
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.58:                               # %call2.i5.i.noexc550
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp150:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.59:                               # %invoke.cont205
	move	$fp, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 112
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.60:                               # %call2.i5.i.noexc562
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp156:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
.LBB4_61:                               # %invoke.cont182
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB4_63
# %bb.62:                               # %if.then.i.i376
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_65
# %bb.64:                               # %if.then.i.i383
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_67
# %bb.66:                               # %if.then.i.i390
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %if.end
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB4_68:                               # %lpad211
.Ltmp158:                               # EH_LABEL
	b	.LBB4_92
.LBB4_69:                               # %lpad181
.Ltmp170:                               # EH_LABEL
	b	.LBB4_92
.LBB4_70:                               # %lpad209
.Ltmp155:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_71:                               # %lpad179
.Ltmp167:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_72:                               # %lpad204
.Ltmp152:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_73:                               # %lpad174
.Ltmp164:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_74:                               # %lpad202
.Ltmp149:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_75:                               # %lpad172
.Ltmp161:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_76:                               # %lpad154
.Ltmp146:                               # EH_LABEL
	b	.LBB4_103
.LBB4_77:                               # %lpad147
.Ltmp143:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_78:                               # %lpad145
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_79:                               # %lpad128
.Ltmp137:                               # EH_LABEL
	b	.LBB4_92
.LBB4_80:                               # %lpad121
.Ltmp134:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_81:                               # %lpad114
.Ltmp131:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_82:                               # %lpad112
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %lpad95
.Ltmp125:                               # EH_LABEL
	b	.LBB4_92
.LBB4_84:                               # %lpad88
.Ltmp122:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_85:                               # %lpad81
.Ltmp119:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_86:                               # %lpad79
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_87:                               # %lpad62
.Ltmp113:                               # EH_LABEL
	b	.LBB4_92
.LBB4_88:                               # %lpad55
.Ltmp110:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_94
.LBB4_89:                               # %lpad48
.Ltmp107:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_90:                               # %lpad46
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_91:                               # %lpad29
.Ltmp101:                               # EH_LABEL
.LBB4_92:                               # %lpad211
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s3, .LBB4_94
# %bb.93:                               # %if.then.i.i587
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_94:                               # %ehcleanup218
	ld.d	$a0, $sp, 48
	beq	$a0, $s2, .LBB4_97
# %bb.95:                               # %if.then.i.i594
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
.LBB4_96:                               # %ehcleanup219
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_97:                               # %ehcleanup219
	ld.d	$a0, $sp, 80
	beq	$a0, $s1, .LBB4_99
# %bb.98:                               # %if.then.i.i601
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_99:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_100:                              # %lpad18
.Ltmp98:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB4_97
.LBB4_101:                              # %lpad16
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_102:                              # %lpad6
.Ltmp92:                                # EH_LABEL
.LBB4_103:                              # %lpad6
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	beq	$a2, $s2, .LBB4_97
# %bb.104:                              # %if.then.i.i397
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB4_96
.LBB4_105:                              # %lpad
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE, .Lfunc_end4-_Z18add_params_to_yamlR8YAML_DocRN6miniFE10ParametersE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin1          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp93-.Ltmp91                #   Call between .Ltmp91 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin1          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin1          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin1         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp102-.Ltmp100              #   Call between .Ltmp100 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin1         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin1         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin1         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin1         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin1         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin1         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin1         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin1         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin1         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin1         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin1         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin1         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp159-.Ltmp145              #   Call between .Ltmp145 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin1         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin1         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin1         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Lfunc_end4-.Ltmp157           #   Call between .Ltmp157 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z25add_configuration_to_yamlR8YAML_Docii
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	7886488383309048912             # 0x6d726f6674616c50
.LCPI5_1:
	.dword	8                               # 0x8
	.dword	7308604897320202088             # 0x656d616e74736f68
.LCPI5_2:
	.dword	8                               # 0x8
	.dword	6000836824347990083             # 0x5347414c46585843
	.text
	.globl	_Z25add_configuration_to_yamlR8YAML_Docii
	.p2align	5
	.type	_Z25add_configuration_to_yamlR8YAML_Docii,@function
_Z25add_configuration_to_yamlR8YAML_Docii: # @_Z25add_configuration_to_yamlR8YAML_Docii
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$s2, $sp, 120
	st.d	$s2, $sp, 104
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 72
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.1:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 104
	st.d	$a1, $sp, 120
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 104
	st.d	$a1, $sp, 112
	stx.b	$zero, $a0, $a1
.Ltmp174:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.2:                                # %invoke.cont3
	move	$s1, $a0
	addi.d	$s3, $sp, 88
	st.d	$s3, $sp, 72
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 40
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.3:                                # %call2.i5.i.noexc65
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 72
	st.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 72
	st.d	$a1, $sp, 80
	stx.b	$zero, $a0, $a1
.Ltmp180:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.4:                                # %invoke.cont9
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_6
# %bb.5:                                # %if.then.i.i68
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_8
# %bb.7:                                # %if.then.i.i70
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI5_0)
	st.d	$s2, $sp, 104
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
	st.d	$s3, $sp, 72
	st.d	$zero, $sp, 80
	st.b	$zero, $sp, 88
.Ltmp183:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.9:                                # %invoke.cont26
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_11
# %bb.10:                               # %if.then.i.i101
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_13
# %bb.12:                               # %if.then.i.i108
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp186:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.14:                               # %invoke.cont41
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_1)
	st.d	$s3, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	ld.w	$s1, $a1, 0
	ld.w	$s4, $a1, 3
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp189:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.15:                               # %invoke.cont52
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_17
# %bb.16:                               # %if.then.i.i151
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_19
# %bb.18:                               # %if.then.i.i158
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_21
# %bb.20:                               # %if.then.i.i165
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp192:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.22:                               # %invoke.cont71
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 88
	st.w	$a1, $sp, 95
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 99
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp195:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.23:                               # %invoke.cont82
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_25
# %bb.24:                               # %if.then.i.i208
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_27
# %bb.26:                               # %if.then.i.i215
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_27:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_29
# %bb.28:                               # %if.then.i.i222
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp198:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.30:                               # %invoke.cont101
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 88
	st.d	$a1, $sp, 94
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 102
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp201:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.31:                               # %invoke.cont112
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_33
# %bb.32:                               # %if.then.i.i265
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_35
# %bb.34:                               # %if.then.i.i272
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_37
# %bb.36:                               # %if.then.i.i279
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
	st.d	$s2, $sp, 104
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	st.b	$zero, $sp, 128
.Ltmp204:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.38:                               # %invoke.cont131
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 88
	st.b	$a1, $sp, 96
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 97
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp207:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.39:                               # %invoke.cont142
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_41
# %bb.40:                               # %if.then.i.i322
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_43
# %bb.42:                               # %if.then.i.i329
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_45
# %bb.44:                               # %if.then.i.i336
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_45:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
	st.d	$s2, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ld.w	$s5, $a0, 0
	ld.b	$s6, $a0, 4
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
	st.d	$s3, $sp, 72
	st.d	$zero, $sp, 80
	st.b	$zero, $sp, 88
.Ltmp210:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.46:                               # %invoke.cont165
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_48
# %bb.47:                               # %if.then.i.i367
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_50
# %bb.49:                               # %if.then.i.i374
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_50:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
	st.d	$s2, $sp, 104
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
.Ltmp213:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp214:                               # EH_LABEL
# %bb.51:                               # %invoke.cont180
	st.d	$s3, $sp, 72
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 88
	st.b	$a1, $sp, 90
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 80
	st.b	$zero, $sp, 91
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp216:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.52:                               # %invoke.cont191
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_54
# %bb.53:                               # %if.then.i.i417
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_56
# %bb.55:                               # %if.then.i.i424
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_58
# %bb.57:                               # %if.then.i.i431
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
	st.d	$s2, $sp, 104
	st.w	$s5, $sp, 120
	st.b	$s6, $sp, 124
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 125
.Ltmp219:                               # EH_LABEL
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.59:                               # %invoke.cont210
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_2)
	st.d	$s3, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	st.d	$s0, $sp, 40
	st.w	$s1, $sp, 56
	st.w	$s4, $sp, 59
	ori	$a1, $zero, 7
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 63
.Ltmp222:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.60:                               # %invoke.cont221
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_62
# %bb.61:                               # %if.then.i.i474
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_64
# %bb.63:                               # %if.then.i.i481
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_66
# %bb.65:                               # %if.then.i.i488
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
	st.d	$s2, $sp, 104
	lu12i.w	$a0, 6
	ori	$a0, $a0, 3950
	st.h	$a0, $sp, 120
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 122
	st.d	$s3, $sp, 72
	st.w	$s5, $sp, 88
	st.b	$s6, $sp, 92
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 80
	st.b	$zero, $sp, 93
.Ltmp225:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.67:                               # %invoke.cont245
	st.d	$s0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 56
	st.b	$a1, $sp, 64
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 48
	st.b	$zero, $sp, 65
.Ltmp228:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 104
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.68:                               # %invoke.cont252
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB5_70
# %bb.69:                               # %if.then.i.i531
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_72
# %bb.71:                               # %if.then.i.i538
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit543
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_74
# %bb.73:                               # %if.then.i.i545
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB5_75:                               # %lpad251
.Ltmp230:                               # EH_LABEL
	b	.LBB5_89
.LBB5_76:                               # %lpad244
.Ltmp227:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_91
.LBB5_77:                               # %lpad220
.Ltmp224:                               # EH_LABEL
	b	.LBB5_89
.LBB5_78:                               # %lpad209
.Ltmp221:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_79:                               # %lpad190
.Ltmp218:                               # EH_LABEL
	b	.LBB5_89
.LBB5_80:                               # %lpad179
.Ltmp215:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_81:                               # %lpad164
.Ltmp212:                               # EH_LABEL
	b	.LBB5_96
.LBB5_82:                               # %lpad141
.Ltmp209:                               # EH_LABEL
	b	.LBB5_89
.LBB5_83:                               # %lpad130
.Ltmp206:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_84:                               # %lpad111
.Ltmp203:                               # EH_LABEL
	b	.LBB5_89
.LBB5_85:                               # %lpad100
.Ltmp200:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_86:                               # %lpad81
.Ltmp197:                               # EH_LABEL
	b	.LBB5_89
.LBB5_87:                               # %lpad70
.Ltmp194:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_88:                               # %lpad51
.Ltmp191:                               # EH_LABEL
.LBB5_89:                               # %lpad251
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_91
# %bb.90:                               # %if.then.i.i720
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_91:                               # %ehcleanup258
	ld.d	$a0, $sp, 72
	beq	$a0, $s3, .LBB5_99
# %bb.92:                               # %if.then.i.i727
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	b	.LBB5_98
.LBB5_93:                               # %lpad40
.Ltmp188:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_94:                               # %lpad25
.Ltmp185:                               # EH_LABEL
	b	.LBB5_96
.LBB5_95:                               # %lpad8
.Ltmp182:                               # EH_LABEL
.LBB5_96:                               # %lpad8
	ld.d	$a2, $sp, 72
	move	$fp, $a0
	beq	$a2, $s3, .LBB5_99
# %bb.97:                               # %if.then.i.i552
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB5_98:                               # %ehcleanup259
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_99:                               # %ehcleanup259
	ld.d	$a0, $sp, 104
	beq	$a0, $s2, .LBB5_101
# %bb.100:                              # %if.then.i.i734
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_101:                              # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_102:                              # %lpad6
.Ltmp179:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_103:                              # %lpad2
.Ltmp176:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_99
.LBB5_104:                              # %lpad
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z25add_configuration_to_yamlR8YAML_Docii, .Lfunc_end5-_Z25add_configuration_to_yamlR8YAML_Docii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp171-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin2         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin2         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin2         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin2         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp181              #   Call between .Ltmp181 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin2         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp186-.Ltmp184              #   Call between .Ltmp184 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin2         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin2         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp192-.Ltmp190              #   Call between .Ltmp190 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin2         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin2         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin2         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin2         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp204-.Ltmp202              #   Call between .Ltmp202 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin2         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp210-.Ltmp208              #   Call between .Ltmp208 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin2         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp213-.Ltmp211              #   Call between .Ltmp211 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin2         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin2         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp219-.Ltmp217              #   Call between .Ltmp217 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin2         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin2         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin2         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin2         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Lfunc_end5-.Ltmp229           #   Call between .Ltmp229 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z22add_timestring_to_yamlR8YAML_Doc # -- Begin function _Z22add_timestring_to_yamlR8YAML_Doc
	.p2align	5
	.type	_Z22add_timestring_to_yamlR8YAML_Doc,@function
_Z22add_timestring_to_yamlR8YAML_Doc:   # @_Z22add_timestring_to_yamlR8YAML_Doc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	.cfi_def_cfa_offset 496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(time)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 456
	pcaddu18i	$ra, %call36(localtime)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 80
	addi.d	$s1, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ori	$a1, $zero, 304
	st.h	$a1, $a0, 224
	ld.w	$a0, $s0, 20
	addi.w	$a1, $a0, 1900
.Ltmp231:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.1:                                # %invoke.cont3
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.2:                                # %invoke.cont5
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 80
	ld.w	$a2, $s0, 16
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 2
	st.d	$a1, $a0, 16
	addi.w	$a1, $a2, 1
.Ltmp235:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.3:                                # %invoke.cont14
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.4:                                # %invoke.cont16
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 80
	ld.w	$a1, $s0, 12
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp239:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.5:                                # %invoke.cont24
.Ltmp241:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.6:                                # %invoke.cont26
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s0, 8
	addi.d	$a2, $sp, 80
	add.d	$a0, $a2, $a0
	st.d	$s1, $a0, 16
.Ltmp243:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.7:                                # %invoke.cont34
.Ltmp245:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.8:                                # %invoke.cont36
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 80
	ld.w	$a1, $s0, 4
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp247:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.9:                                # %invoke.cont44
.Ltmp249:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.10:                               # %invoke.cont46
	ld.d	$a0, $sp, 80
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 80
	ld.w	$a1, $s0, 0
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 2
	st.d	$a2, $a0, 16
.Ltmp251:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.11:                               # %invoke.cont54
	ld.d	$a0, $sp, 128
	addi.d	$s0, $sp, 64
	st.d	$s0, $sp, 48
	st.d	$zero, $sp, 56
	st.b	$zero, $sp, 64
	beqz	$a0, .LBB6_14
# %bb.12:                               # %invoke.cont54
	ld.d	$a1, $sp, 112
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB6_14
# %bb.13:                               # %if.then.i.i
	ld.d	$a3, $sp, 120
	sub.d	$a4, $a0, $a3
.Ltmp254:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
	b	.LBB6_15
.LBB6_14:                               # %if.else.i.i
	addi.d	$a1, $sp, 160
.Ltmp256:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
.LBB6_15:                               # %invoke.cont57
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 37
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 45
.Ltmp259:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.16:                               # %invoke.cont62
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB6_18
# %bb.17:                               # %if.then.i.i31
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	beq	$a0, $s0, .LBB6_20
# %bb.19:                               # %if.then.i.i33
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 80
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 80
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 160
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 176
	st.d	$a1, $sp, 88
	beq	$a0, $a2, .LBB6_22
# %bb.21:                               # %if.then.i.i.i.i.i
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_22:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 88
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.LBB6_23:                               # %lpad61
.Ltmp261:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB6_25
# %bb.24:                               # %if.then.i.i40
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %ehcleanup
	ld.d	$a2, $sp, 48
	bne	$a2, $s0, .LBB6_27
	b	.LBB6_29
.LBB6_26:                               # %lpad.i.i
.Ltmp258:                               # EH_LABEL
	ld.d	$a2, $sp, 48
	move	$fp, $a0
	beq	$a2, $s0, .LBB6_29
.LBB6_27:                               # %ehcleanup67.sink.split
	ld.d	$a0, $sp, 64
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_28:                               # %lpad
.Ltmp253:                               # EH_LABEL
	move	$fp, $a0
.LBB6_29:                               # %ehcleanup68
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z22add_timestring_to_yamlR8YAML_Doc, .Lfunc_end6-_Z22add_timestring_to_yamlR8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp231-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp252-.Ltmp231              #   Call between .Ltmp231 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin3         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp257-.Ltmp254              #   Call between .Ltmp254 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin3         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin3         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp260           #   Call between .Ltmp260 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.LCPI7_0:
	.dword	0x3faeb851eb851eb8              # double 0.059999999999999998
.LCPI7_2:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI7_3:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_1:
	.dword	8                               # 0x8
	.dword	7311150271011243843             # 0x65766c6f73204743
.LCPI7_4:
	.dword	8                               # 0x8
	.dword	7308613580332748612             # 0x656d695420544f44
	.section	.text._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"axG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.weak	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,@function
_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc: # @_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -816
	.cfi_def_cfa_offset 816
	st.d	$ra, $sp, 808                   # 8-byte Folded Spill
	st.d	$fp, $sp, 800                   # 8-byte Folded Spill
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	st.d	$s1, $sp, 784                   # 8-byte Folded Spill
	st.d	$s2, $sp, 776                   # 8-byte Folded Spill
	st.d	$s3, $sp, 768                   # 8-byte Folded Spill
	st.d	$s4, $sp, 760                   # 8-byte Folded Spill
	st.d	$s5, $sp, 752                   # 8-byte Folded Spill
	st.d	$s6, $sp, 744                   # 8-byte Folded Spill
	st.d	$s7, $sp, 736                   # 8-byte Folded Spill
	st.d	$s8, $sp, 728                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 720                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 712                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 688                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	move	$s0, $a0
	ld.w	$s7, $a0, 4
	ld.w	$s6, $a0, 12
	ld.w	$s8, $a0, 20
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	st.w	$zero, $sp, 684
	st.w	$zero, $sp, 680
	addi.d	$a2, $sp, 684
	addi.d	$a3, $sp, 680
	ori	$a5, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp263:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
.Ltmp265:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.2:                                # %invoke.cont10
	st.b	$zero, $sp, 352
	addi.d	$a0, $sp, 360
	ori	$a2, $zero, 124
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.3:                                # %invoke.cont16
.Ltmp270:                               # EH_LABEL
	fmov.d	$fs1, $fa0
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.4:                                # %invoke.cont18
.Ltmp272:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.5:                                # %invoke.cont20
	fmov.d	$fs2, $fa0
	ld.d	$a1, $sp, 368
	ld.d	$a0, $sp, 360
	sub.d	$a1, $a1, $a0
	srai.d	$s3, $a1, 2
	addi.w	$s2, $s3, 0
	blez	$s2, .LBB7_13
# %bb.6:                                # %if.then.i.i.i.i3.i.i
	ld.w	$s5, $a0, 0
	st.w	$s5, $sp, 320
	st.w	$s3, $sp, 324
	bstrpick.d	$s4, $s3, 30, 0
	slli.d	$s0, $s4, 3
.Ltmp277:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.7:                                # %call5.i.i.i2.i.i3.i.noexc
	st.d	$a0, $sp, 328
	alsl.d	$a1, $s4, $a0, 3
	st.d	$a1, $sp, 344
	st.d	$zero, $a0, 0
	ori	$a2, $zero, 1
	addi.d	$a1, $a0, 8
	beq	$s2, $a2, .LBB7_9
# %bb.8:                                # %if.end.i.i.i.i.i.i.i
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	add.d	$s7, $a0, $s0
	addi.d	$a2, $s0, -8
	move	$fp, $s1
	move	$s1, $s8
	move	$s8, $s6
	move	$s6, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$s6, $s8
	move	$s8, $s1
	move	$s1, $fp
	move	$a1, $s7
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB7_9:                                # %if.then.i.i.i.i3.i.i191
	st.d	$a1, $sp, 336
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.w	$s5, $sp, 288
	st.w	$s3, $sp, 292
.Ltmp280:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.10:                               # %call5.i.i.i2.i.i3.i.noexc205
	st.d	$a0, $sp, 296
	alsl.d	$a1, $s4, $a0, 3
	st.d	$a1, $sp, 312
	st.d	$zero, $a0, 0
	ori	$a2, $zero, 1
	addi.d	$a1, $a0, 8
	beq	$s2, $a2, .LBB7_12
# %bb.11:                               # %if.end.i.i.i.i.i.i.i197
	add.d	$s3, $a0, $s0
	addi.d	$a2, $s0, -8
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s3
.LBB7_12:                               # %for.body.lr.ph.i199
	st.d	$a1, $sp, 304
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB7_15
.LBB7_13:                               # %cond.end
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $sp, 320
	st.w	$s3, $sp, 324
	bltz	$s2, .LBB7_264
# %bb.14:                               # %invoke.cont.i202
	st.d	$zero, $sp, 344
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 328
	st.w	$a0, $sp, 288
	st.d	$zero, $sp, 292
	vst	$vr0, $sp, 300
	st.w	$zero, $sp, 316
.LBB7_15:                               # %invoke.cont30
.Ltmp283:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.16:                               # %invoke.cont33
	fmov.d	$fs0, $fa0
	ld.w	$a2, $sp, 636
	vld	$vr0, $sp, 656
	ld.w	$a5, $sp, 672
	ld.w	$a3, $sp, 644
	ld.w	$a0, $sp, 652
	vst	$vr0, $sp, 192
	st.w	$a5, $sp, 208
	ld.w	$a1, $sp, 676
	vpickve2gr.w	$t0, $vr0, 0
	vpickve2gr.w	$a6, $vr0, 1
	sub.d	$t1, $a6, $t0
	vpickve2gr.w	$a7, $vr0, 2
	vpickve2gr.w	$a4, $vr0, 3
	sub.d	$t2, $a4, $a7
	sub.d	$t3, $a1, $a5
	mul.d	$t1, $t2, $t1
	mul.w	$t1, $t1, $t3
	st.w	$a1, $sp, 212
	blez	$t1, .LBB7_28
# %bb.17:                               # %if.end.i
	blez	$t0, .LBB7_19
# %bb.18:                               # %if.then11.i
	addi.d	$t0, $t0, -1
	st.w	$t0, $sp, 192
.LBB7_19:                               # %if.end14.i
	blez	$a7, .LBB7_21
# %bb.20:                               # %if.then18.i
	addi.d	$a7, $a7, -1
	st.w	$a7, $sp, 200
.LBB7_21:                               # %if.end22.i
	blez	$a5, .LBB7_23
# %bb.22:                               # %if.then26.i
	addi.d	$a5, $a5, -1
	st.w	$a5, $sp, 208
.LBB7_23:                               # %if.end30.i
	bge	$a6, $a2, .LBB7_69
# %bb.24:                               # %if.then34.i
	addi.d	$a2, $a6, 1
	st.w	$a2, $sp, 196
	blt	$a4, $a3, .LBB7_70
.LBB7_25:                               # %if.end45.i
	bge	$a1, $a0, .LBB7_27
.LBB7_26:                               # %if.then49.i
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 212
.LBB7_27:                               # %if.end53.i
.Ltmp285:                               # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 352
	addi.d	$a3, $sp, 320
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
.LBB7_28:                               # %invoke.cont35
.Ltmp287:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.29:                               # %invoke.cont36
	fmov.d	$fs3, $fa0
	addi.d	$s2, $sp, 208
	st.d	$s2, $sp, 192
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 256
.Ltmp290:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
# %bb.30:                               # %call2.i5.i.noexc
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 192
	st.d	$a1, $sp, 208
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$s3, $a2, %pc_lo12(.L.str.34)
	vld	$vr0, $s3, 0
	ld.w	$s0, $s3, 23
	ld.d	$s4, $s3, 16
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 192
	st.d	$a1, $sp, 200
	stx.b	$zero, $a0, $a1
	addi.d	$s5, $sp, 272
	st.d	$s5, $sp, 256
	st.d	$zero, $sp, 264
	st.b	$zero, $sp, 272
.Ltmp293:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.31:                               # %invoke.cont50
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_33
# %bb.32:                               # %if.then.i.i227
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_35
# %bb.34:                               # %if.then.i.i230
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
	st.d	$s2, $sp, 192
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 256
.Ltmp296:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.36:                               # %call2.i5.i.noexc247
	ld.d	$a1, $sp, 256
	vld	$vr0, $s3, 0
	st.d	$a0, $sp, 192
	st.d	$a1, $sp, 208
	vst	$vr0, $a0, 0
	st.w	$s0, $a0, 23
	st.d	$s4, $a0, 16
	ld.d	$a0, $sp, 192
	st.d	$a1, $sp, 200
	stx.b	$zero, $a0, $a1
.Ltmp299:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.37:                               # %invoke.cont63
	move	$s0, $a0
	st.d	$s5, $sp, 256
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 160
.Ltmp302:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 160
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.38:                               # %call2.i5.i.noexc260
	ld.d	$a1, $sp, 160
	fsub.d	$fa0, $fs2, $fs1
	st.d	$a0, $sp, 256
	st.d	$a1, $sp, 272
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 256
	st.d	$a1, $sp, 264
	stx.b	$zero, $a0, $a1
.Ltmp305:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.39:                               # %invoke.cont70
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_41
# %bb.40:                               # %if.then.i.i264
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_43
# %bb.42:                               # %if.then.i.i272
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
	st.d	$s2, $sp, 192
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ld.d	$s0, $a0, 0
	ld.w	$s3, $a0, 7
	st.d	$s0, $sp, 208
	st.w	$s3, $sp, 215
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 200
	st.b	$zero, $sp, 219
	st.d	$s5, $sp, 256
	st.d	$zero, $sp, 264
	st.b	$zero, $sp, 272
.Ltmp308:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.44:                               # %invoke.cont89
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_46
# %bb.45:                               # %if.then.i.i306
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_46:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_48
# %bb.47:                               # %if.then.i.i314
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
	st.d	$s2, $sp, 192
	st.d	$s0, $sp, 208
	st.w	$s3, $sp, 215
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 200
	st.b	$zero, $sp, 219
.Ltmp311:                               # EH_LABEL
	addi.d	$a1, $sp, 192
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.49:                               # %invoke.cont104
	move	$s0, $a0
	st.d	$s5, $sp, 256
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 160
.Ltmp314:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 160
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.50:                               # %call2.i5.i.noexc344
	ld.d	$a1, $sp, 160
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	vld	$vr0, $a2, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 256
	st.d	$a1, $sp, 272
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 256
	fsub.d	$fa0, $fs3, $fs0
	st.d	$a1, $sp, 264
	stx.b	$zero, $a0, $a1
.Ltmp317:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.51:                               # %invoke.cont111
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_53
# %bb.52:                               # %if.then.i.i348
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_55
# %bb.54:                               # %if.then.i.i356
	ld.d	$a1, $sp, 208
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_55:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
.Ltmp320:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.56:                               # %invoke.cont124
	addi.w	$s2, $s7, 1
	addi.w	$s3, $s6, 1
	addi.w	$s4, $s8, 1
.Ltmp322:                               # EH_LABEL
	movgr2fr.d	$fs0, $zero
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a5, $sp, 488
	fmov.d	$fa0, $fs0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.57:                               # %invoke.cont129
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.58:                               # %invoke.cont130
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.59:                               # %invoke.cont137
	addi.d	$a5, $sp, 536
.Ltmp329:                               # EH_LABEL
	vldi	$vr0, -912
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.60:                               # %invoke.cont142
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.61:                               # %invoke.cont143
.Ltmp334:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.62:                               # %invoke.cont150
	ld.d	$a0, $sp, 368
	ld.d	$a1, $sp, 360
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $sp, 480
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 352
.Ltmp336:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.63:                               # %invoke.cont153
.Ltmp339:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.64:                               # %invoke.cont159
	move	$s2, $a0
	st.w	$zero, $sp, 252
	st.d	$zero, $sp, 240
	lu52i.d	$a0, $zero, 971
	st.d	$a0, $sp, 232
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp343:                               # EH_LABEL
# %bb.65:                               # %invoke.cont163
	ld.w	$s0, $s1, 16
.Ltmp345:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a1, $a0, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 23
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.66:                               # %invoke.cont170
	ld.d	$a0, $s3, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB7_262
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB7_71
# %bb.68:                               # %if.then.i2.i.i
	ld.bu	$a0, $s3, 67
	b	.LBB7_73
.LBB7_69:                               # %if.end37.i
	bge	$a4, $a3, .LBB7_25
.LBB7_70:                               # %if.then41.i
	addi.d	$a2, $a4, 1
	st.w	$a2, $sp, 204
	blt	$a1, $a0, .LBB7_26
	b	.LBB7_27
.LBB7_71:                               # %if.end.i.i.i
.Ltmp347:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.72:                               # %.noexc1646
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp349:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp350:                               # EH_LABEL
.LBB7_73:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp351:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.74:                               # %call1.i.noexc
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp354:                               # EH_LABEL
# %bb.75:                               # %if.end174
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB7_78
# %bb.76:                               # %if.then175
.Ltmp384:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_)
	jirl	$ra, $ra, 0
.Ltmp385:                               # EH_LABEL
# %bb.77:                               # %invoke.cont176
.Ltmp386:                               # EH_LABEL
	addi.d	$a3, $sp, 192
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 288
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 232
	addi.d	$a6, $sp, 252
	addi.d	$a7, $sp, 240
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
	b	.LBB7_93
.LBB7_78:                               # %if.else
.Ltmp355:                               # EH_LABEL
	addi.d	$a3, $sp, 192
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	addi.d	$a2, $sp, 288
	ori	$a4, $zero, 200
	addi.d	$a5, $sp, 232
	addi.d	$a6, $sp, 252
	addi.d	$a7, $sp, 240
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.79:                               # %if.then184
.Ltmp357:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.80:                               # %invoke.cont185
	fld.d	$fa0, $sp, 240
.Ltmp359:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.81:                               # %invoke.cont187
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB7_262
# %bb.82:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1656
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB7_84
# %bb.83:                               # %if.then.i2.i.i1659
	ld.bu	$a0, $s4, 67
	b	.LBB7_86
.LBB7_84:                               # %if.end.i.i.i1664
.Ltmp361:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.85:                               # %.noexc1669
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp363:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp364:                               # EH_LABEL
.LBB7_86:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1661
.Ltmp365:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.87:                               # %call1.i.noexc1672
.Ltmp367:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.88:                               # %if.end191
	ld.w	$a0, $s1, 72
	blez	$a0, .LBB7_93
# %bb.89:                               # %if.else203
.Ltmp369:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 43
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.90:                               # %invoke.cont204
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB7_266
# %bb.91:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1682
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB7_94
# %bb.92:                               # %if.then.i2.i.i1685
	ld.bu	$a0, $s1, 67
	b	.LBB7_96
.LBB7_93:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	b	.LBB7_100
.LBB7_94:                               # %if.end.i.i.i1690
.Ltmp371:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.95:                               # %.noexc1695
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp373:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp374:                               # EH_LABEL
.LBB7_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1687
.Ltmp375:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.97:                               # %call1.i.noexc1698
.Ltmp377:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.98:                               # %if.end209
.Ltmp379:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_0)
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 288
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.99:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB7_100:                              # %if.end216
	move	$s0, $s7
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_1)
	st.d	$s5, $sp, 256
	vst	$vr0, $sp, 264
	st.b	$zero, $sp, 280
	addi.d	$s3, $sp, 176
	st.d	$s3, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp388:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.101:                              # %call2.i5.i.noexc470
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$s7, $a2, %pc_lo12(.L.str.8)
	vld	$vr0, $s7, 0
	ld.d	$s1, $s7, 13
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp391:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.102:                              # %invoke.cont229
	addi.d	$a1, $sp, 144
	st.d	$a1, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 144
	st.h	$a1, $sp, 152
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 154
	addi.d	$s5, $sp, 112
	st.d	$s5, $sp, 96
	pcalau12i	$a1, %pc_hi20(.L.str.119)
	addi.d	$a1, $a1, %pc_lo12(.L.str.119)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	st.w	$a2, $sp, 112
	st.h	$a1, $sp, 116
	ori	$a1, $zero, 6
	st.d	$a1, $sp, 104
	st.b	$zero, $sp, 118
.Ltmp394:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.103:                              # %invoke.cont243
	ld.d	$a0, $sp, 96
	beq	$a0, $s5, .LBB7_105
# %bb.104:                              # %if.then.i.i500
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_105:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506
	ld.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	beq	$a0, $a1, .LBB7_107
# %bb.106:                              # %if.then.i.i508
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_107:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
	ld.d	$a0, $sp, 160
	beq	$a0, $s3, .LBB7_109
# %bb.108:                              # %if.then.i.i516
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_109:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522
	st.d	$s3, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp397:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.110:                              # %call2.i5.i.noexc533
	ld.d	$a1, $sp, 128
	vld	$vr0, $s7, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp400:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.111:                              # %invoke.cont262
	move	$s3, $a0
	move	$s4, $s2
	move	$s6, $s8
	addi.d	$a0, $sp, 144
	st.d	$a0, $sp, 128
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 96
.Ltmp403:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.112:                              # %call2.i5.i.noexc546
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
	st.d	$s5, $sp, 96
	pcalau12i	$a0, %pc_hi20(.L.str.120)
	addi.d	$a0, $a0, %pc_lo12(.L.str.120)
	ld.h	$s2, $a0, 0
	ld.b	$s8, $a0, 2
	st.h	$s2, $sp, 112
	st.b	$s8, $sp, 114
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp406:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.113:                              # %invoke.cont276
	ld.d	$a0, $sp, 96
	beq	$a0, $s5, .LBB7_115
# %bb.114:                              # %if.then.i.i563
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_115:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569
	ld.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	beq	$a0, $a1, .LBB7_117
# %bb.116:                              # %if.then.i.i571
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_117:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577
	ld.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	beq	$a0, $a1, .LBB7_119
# %bb.118:                              # %if.then.i.i579
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_119:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
	addi.d	$a0, $sp, 176
	st.d	$a0, $sp, 160
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp409:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.120:                              # %call2.i5.i.noexc596
	ld.d	$a1, $sp, 128
	vld	$vr0, $s7, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	st.d	$s1, $a0, 13
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
.Ltmp412:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.121:                              # %invoke.cont295
	move	$s3, $a0
	addi.d	$s7, $sp, 144
	st.d	$s7, $sp, 128
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 96
.Ltmp415:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.122:                              # %call2.i5.i.noexc609
	ld.d	$a1, $sp, 96
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	vld	$vr0, $a2, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
	addi.d	$s1, $sp, 112
	st.d	$s1, $sp, 96
	st.h	$s2, $sp, 112
	st.b	$s8, $sp, 114
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp418:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
# %bb.123:                              # %invoke.cont309
	ld.d	$a0, $sp, 96
	addi.d	$s5, $sp, 272
	move	$s2, $s4
	beq	$a0, $s1, .LBB7_125
# %bb.124:                              # %if.then.i.i626
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_125:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
	ld.d	$a0, $sp, 128
	addi.d	$s4, $sp, 176
	beq	$a0, $s7, .LBB7_127
# %bb.126:                              # %if.then.i.i634
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_127:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit640
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_129
# %bb.128:                              # %if.then.i.i642
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_129:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648
	st.d	$s4, $sp, 160
	st.d	$zero, $sp, 168
	st.b	$zero, $sp, 176
.Ltmp421:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	addi.d	$a2, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.130:                              # %invoke.cont328
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_132
# %bb.131:                              # %if.then.i.i663
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_132:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
.Ltmp424:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
# %bb.133:                              # %invoke.cont335
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ld.w	$a2, $sp, 252
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp426:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.134:                              # %invoke.cont342
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_136
# %bb.135:                              # %if.then.i.i684
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_136:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit690
.Ltmp429:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.137:                              # %invoke.cont348
	move	$s3, $a0
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 128
.Ltmp432:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp433:                               # EH_LABEL
# %bb.138:                              # %call2.i5.i.noexc701
	ld.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	vld	$vr0, $a2, %pc_lo12(.L.str.47)
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	fld.d	$fa0, $sp, 240
.Ltmp435:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.139:                              # %invoke.cont355
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_141
# %bb.140:                              # %if.then.i.i705
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_141:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s0
	mul.d	$a0, $a0, $s6
	srli.d	$a1, $s2, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$s2, $a1, 63, 32
	movgr2fr.d	$fa1, $s2
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $sp, 252
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa2, $fa1, $fa1
	vldi	$vr3, -1016
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	fmul.d	$fs2, $fa0, $fa4
	slli.d	$a1, $a0, 1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa4, $fa0
	fld.d	$fa6, $sp, 208
	pcalau12i	$a1, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_2)
	alsl.d	$a0, $a0, $a0, 1
	addi.d	$a0, $a0, 2
	movgr2fr.w	$fa5, $a0
	fcmp.cule.d	$fcc0, $fa6, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	bcnez	$fcc0, .LBB7_143
# %bb.142:                              # %if.then382
	fld.d	$fa7, $a0, %pc_lo12(.LCPI7_3)
	fdiv.d	$fa6, $fs2, $fa6
	fmul.d	$fa6, $fa6, $fa7
	b	.LBB7_144
.LBB7_143:
	vldi	$vr6, -784
.LBB7_144:                              # %if.end385
	vst	$vr6, $sp, 48                   # 16-byte Folded Spill
	fld.d	$fa6, $sp, 200
	fmul.d	$fa1, $fa1, $fa3
	fmul.d	$fs3, $fa2, $fa4
	fcmp.cule.d	$fcc0, $fa6, $fa0
	ffint.d.w	$fa2, $fa5
	bcnez	$fcc0, .LBB7_146
# %bb.145:                              # %if.then388
	fld.d	$fa3, $a0, %pc_lo12(.LCPI7_3)
	fdiv.d	$fa4, $fs3, $fa6
	fmul.d	$fa3, $fa4, $fa3
	b	.LBB7_147
.LBB7_146:
	vldi	$vr3, -784
.LBB7_147:                              # %if.end392
	vst	$vr3, $sp, 64                   # 16-byte Folded Spill
	fld.d	$fa3, $sp, 192
	fmul.d	$fs4, $fa1, $fa2
	fcmp.cule.d	$fcc0, $fa3, $fa0
	fadd.d	$fa1, $fs2, $fs3
	bcnez	$fcc0, .LBB7_149
# %bb.148:                              # %if.then395
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_3)
	fdiv.d	$fa3, $fs4, $fa3
	fmul.d	$fa2, $fa3, $fa2
	b	.LBB7_150
.LBB7_149:
	vldi	$vr2, -784
.LBB7_150:                              # %if.end399
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	fld.d	$fa2, $sp, 224
	fcmp.cule.d	$fcc0, $fa2, $fa0
	fadd.d	$fs1, $fa1, $fs4
	bcnez	$fcc0, .LBB7_152
# %bb.151:                              # %if.then402
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	fdiv.d	$fa1, $fs1, $fa2
	fmul.d	$fa0, $fa1, $fa0
	b	.LBB7_153
.LBB7_152:
	vldi	$vr0, -784
.LBB7_153:                              # %if.end406
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
.Ltmp438:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
# %bb.154:                              # %invoke.cont408
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	fld.d	$fa0, $sp, 192
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp440:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.155:                              # %invoke.cont416
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_157
# %bb.156:                              # %if.then.i.i822
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_157:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit828
.Ltmp443:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.158:                              # %invoke.cont422
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 183
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 187
.Ltmp445:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.159:                              # %invoke.cont429
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_161
# %bb.160:                              # %if.then.i.i843
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_166
# %bb.162:                              # %if.else450
.Ltmp453:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.163:                              # %invoke.cont451
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp455:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.164:                              # %invoke.cont462
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_168
# %bb.165:                              # %if.then.i.i922
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_168
.LBB7_166:                              # %if.then436
.Ltmp448:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.167:                              # %invoke.cont437
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
.Ltmp450:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
.LBB7_168:                              # %invoke.cont444
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_170
# %bb.169:                              # %if.then.i.i864
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_170:                              # %if.end472
.Ltmp458:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.171:                              # %invoke.cont473
	pcalau12i	$a1, %pc_hi20(.LCPI7_4)
	vld	$vr1, $a1, %pc_lo12(.LCPI7_4)
	fld.d	$fa0, $sp, 200
	st.d	$s4, $sp, 160
	vst	$vr1, $sp, 168
	st.b	$zero, $sp, 184
.Ltmp460:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp461:                               # EH_LABEL
# %bb.172:                              # %invoke.cont481
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_174
# %bb.173:                              # %if.then.i.i967
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_174:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973
.Ltmp463:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
# %bb.175:                              # %invoke.cont487
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.b	$a1, $sp, 184
	ori	$a1, $zero, 9
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 185
.Ltmp465:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.176:                              # %invoke.cont494
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_178
# %bb.177:                              # %if.then.i.i988
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_178:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_183
# %bb.179:                              # %if.else515
.Ltmp473:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.180:                              # %invoke.cont516
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp475:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.181:                              # %invoke.cont527
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_185
# %bb.182:                              # %if.then.i.i1067
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_185
.LBB7_183:                              # %if.then501
.Ltmp468:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.184:                              # %invoke.cont502
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.h	$a1, $sp, 184
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 186
.Ltmp470:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
.LBB7_185:                              # %invoke.cont509
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_187
# %bb.186:                              # %if.then.i.i1009
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_187:                              # %if.end537
.Ltmp478:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
# %bb.188:                              # %invoke.cont538
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 183
	fld.d	$fa0, $sp, 208
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 187
.Ltmp480:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.189:                              # %invoke.cont546
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_191
# %bb.190:                              # %if.then.i.i1112
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_191:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1118
.Ltmp483:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.192:                              # %invoke.cont552
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 176
	st.w	$a1, $sp, 184
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 188
.Ltmp485:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.193:                              # %invoke.cont559
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_195
# %bb.194:                              # %if.then.i.i1133
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_195:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_200
# %bb.196:                              # %if.else580
.Ltmp493:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.197:                              # %invoke.cont581
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 176
	st.d	$a1, $sp, 181
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 189
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 144
	st.b	$a1, $sp, 146
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 147
.Ltmp495:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.198:                              # %invoke.cont592
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_202
# %bb.199:                              # %if.then.i.i1212
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_202
.LBB7_200:                              # %if.then566
.Ltmp488:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp489:                               # EH_LABEL
# %bb.201:                              # %invoke.cont567
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 176
	st.d	$a1, $sp, 181
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 189
.Ltmp490:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp491:                               # EH_LABEL
.LBB7_202:                              # %invoke.cont574
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_204
# %bb.203:                              # %if.then.i.i1154
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_204:                              # %if.end602
.Ltmp498:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.205:                              # %invoke.cont603
	st.d	$s4, $sp, 160
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ld.w	$s1, $a1, 0
	ld.b	$s2, $a1, 4
	st.w	$s1, $sp, 176
	st.b	$s2, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
	st.d	$s7, $sp, 128
	st.d	$zero, $sp, 136
	st.b	$zero, $sp, 144
.Ltmp500:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp501:                               # EH_LABEL
# %bb.206:                              # %invoke.cont614
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_208
# %bb.207:                              # %if.then.i.i1270
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_208:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_210
# %bb.209:                              # %if.then.i.i1278
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_210:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1284
.Ltmp503:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.211:                              # %invoke.cont624
	st.d	$s4, $sp, 160
	st.w	$s1, $sp, 176
	st.b	$s2, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp505:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
# %bb.212:                              # %invoke.cont631
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 149
	fld.d	$fa0, $sp, 224
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 157
.Ltmp508:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp509:                               # EH_LABEL
# %bb.213:                              # %invoke.cont639
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_215
# %bb.214:                              # %if.then.i.i1312
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_215:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1318
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_217
# %bb.216:                              # %if.then.i.i1320
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_217:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326
.Ltmp511:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.218:                              # %invoke.cont649
	st.d	$s4, $sp, 160
	st.w	$s1, $sp, 176
	st.b	$s2, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp513:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.219:                              # %invoke.cont656
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 150
	ori	$a1, $zero, 14
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 158
.Ltmp516:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.220:                              # %invoke.cont663
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_222
# %bb.221:                              # %if.then.i.i1354
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_222:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1360
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_224
# %bb.223:                              # %if.then.i.i1362
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_224:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1368
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB7_230
# %bb.225:                              # %if.else699
.Ltmp527:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp528:                               # EH_LABEL
# %bb.226:                              # %invoke.cont700
	st.d	$s4, $sp, 160
	st.w	$s1, $sp, 176
	st.b	$s2, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp529:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
# %bb.227:                              # %invoke.cont707
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 151
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 159
	addi.d	$s0, $sp, 112
	st.d	$s0, $sp, 96
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	st.h	$a2, $sp, 112
	st.b	$a1, $sp, 114
	ori	$a1, $zero, 3
	st.d	$a1, $sp, 104
	st.b	$zero, $sp, 115
.Ltmp532:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp533:                               # EH_LABEL
# %bb.228:                              # %invoke.cont718
	ld.d	$a0, $sp, 96
	beq	$a0, $s0, .LBB7_233
# %bb.229:                              # %if.then.i.i1515
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_233
.LBB7_230:                              # %if.then674
.Ltmp519:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.231:                              # %invoke.cont675
	st.d	$s4, $sp, 160
	st.w	$s1, $sp, 176
	st.b	$s2, $sp, 180
	ori	$a1, $zero, 5
	st.d	$a1, $sp, 168
	st.b	$zero, $sp, 181
.Ltmp521:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp522:                               # EH_LABEL
# %bb.232:                              # %invoke.cont682
	st.d	$s7, $sp, 128
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	st.d	$a2, $sp, 144
	st.d	$a1, $sp, 151
	ori	$a1, $zero, 15
	st.d	$a1, $sp, 136
	st.b	$zero, $sp, 159
.Ltmp524:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
                                        # kill: def $f0_64 killed $f0_64 killed $vr0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp525:                               # EH_LABEL
.LBB7_233:                              # %invoke.cont689
	ld.d	$a0, $sp, 128
	beq	$a0, $s7, .LBB7_235
# %bb.234:                              # %if.then.i.i1396
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_235:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1402
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_237
# %bb.236:                              # %if.then.i.i1404
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_237:                              # %if.end732
.Ltmp535:                               # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
# %bb.238:                              # %invoke.cont733
	move	$fp, $a0
	st.d	$s4, $sp, 160
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp538:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp539:                               # EH_LABEL
# %bb.239:                              # %call2.i5.i.noexc1572
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.62)
	addi.d	$a2, $a2, %pc_lo12(.L.str.62)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	ld.w	$a0, $sp, 252
	fld.d	$fa0, $sp, 224
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.Ltmp541:                               # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
# %bb.240:                              # %invoke.cont743
	ld.d	$a0, $sp, 160
	beq	$a0, $s4, .LBB7_242
# %bb.241:                              # %if.then.i.i1576
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1582
	ld.d	$a0, $sp, 256
	beq	$a0, $s5, .LBB7_244
# %bb.243:                              # %if.then.i.i1584
	ld.d	$a1, $sp, 272
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_244:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1590
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB7_246
# %bb.245:                              # %if.then.i.i.i.i1592
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_246:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB7_248
# %bb.247:                              # %if.then.i.i.i.i1595
	ld.d	$a1, $sp, 344
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_248:                              # %_ZN6miniFE6VectorIdiiED2Ev.exit1600
	ld.d	$a0, $sp, 456
	beqz	$a0, .LBB7_250
# %bb.249:                              # %if.then.i.i.i.i1602
	ld.d	$a1, $sp, 472
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_250:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit.i
	ld.d	$a0, $sp, 432
	beqz	$a0, .LBB7_252
# %bb.251:                              # %if.then.i.i.i2.i
	ld.d	$a1, $sp, 448
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_252:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit.i
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB7_254
# %bb.253:                              # %if.then.i.i.i8.i
	ld.d	$a1, $sp, 424
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_254:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit13.i
	ld.d	$a0, $sp, 384
	beqz	$a0, .LBB7_256
# %bb.255:                              # %if.then.i.i.i15.i
	ld.d	$a1, $sp, 400
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_256:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit20.i
	ld.d	$a0, $sp, 360
	beqz	$a0, .LBB7_258
# %bb.257:                              # %if.then.i.i.i22.i
	ld.d	$a1, $sp, 376
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_258:                              # %_ZN6miniFE9CSRMatrixIdiiED2Ev.exit
	ld.d	$a1, $sp, 600
	addi.d	$a0, $sp, 584
.Ltmp544:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp545:                               # EH_LABEL
# %bb.259:                              # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit.i
	ld.d	$a1, $sp, 552
.Ltmp547:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp548:                               # EH_LABEL
# %bb.260:                              # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit.i
	ld.d	$a1, $sp, 504
.Ltmp550:                               # EH_LABEL
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp551:                               # EH_LABEL
# %bb.261:                              # %_ZN6miniFE23simple_mesh_descriptionIiED2Ev.exit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 704                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 712                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 720                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 792                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 800                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 808                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 816
	ret
.LBB7_262:                              # %if.then.i.i.i1667.invoke
.Ltmp553:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp554:                               # EH_LABEL
# %bb.263:                              # %if.then.i.i.i1667.cont
.LBB7_264:                              # %if.then.i.i.i
.Ltmp275:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.265:                              # %.noexc
.LBB7_266:                              # %if.then.i.i.i1693
.Ltmp381:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.267:                              # %.noexc1694
.LBB7_268:                              # %lpad688
.Ltmp526:                               # EH_LABEL
	b	.LBB7_289
.LBB7_269:                              # %lpad717
.Ltmp534:                               # EH_LABEL
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	bne	$a2, $s0, .LBB7_308
	b	.LBB7_309
.LBB7_270:                              # %lpad681
.Ltmp523:                               # EH_LABEL
	b	.LBB7_314
.LBB7_271:                              # %lpad706
.Ltmp531:                               # EH_LABEL
	b	.LBB7_314
.LBB7_272:                              # %lpad573
.Ltmp492:                               # EH_LABEL
	b	.LBB7_301
.LBB7_273:                              # %lpad591
.Ltmp497:                               # EH_LABEL
	b	.LBB7_289
.LBB7_274:                              # %lpad508
.Ltmp472:                               # EH_LABEL
	b	.LBB7_301
.LBB7_275:                              # %lpad526
.Ltmp477:                               # EH_LABEL
	b	.LBB7_289
.LBB7_276:                              # %lpad443
.Ltmp452:                               # EH_LABEL
	b	.LBB7_301
.LBB7_277:                              # %lpad461
.Ltmp457:                               # EH_LABEL
	b	.LBB7_289
.LBB7_278:                              # %lpad29
.Ltmp282:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_361
.LBB7_279:                              # %terminate.lpad.i.i4.i
.Ltmp552:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_280:                              # %terminate.lpad.i.i2.i
.Ltmp549:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_281:                              # %terminate.lpad.i.i.i
.Ltmp546:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_282:                              # %lpad742
.Ltmp543:                               # EH_LABEL
	b	.LBB7_301
.LBB7_283:                              # %lpad737
.Ltmp540:                               # EH_LABEL
	b	.LBB7_355
.LBB7_284:                              # %lpad662
.Ltmp518:                               # EH_LABEL
	b	.LBB7_289
.LBB7_285:                              # %lpad655
.Ltmp515:                               # EH_LABEL
	b	.LBB7_314
.LBB7_286:                              # %lpad638
.Ltmp510:                               # EH_LABEL
	b	.LBB7_289
.LBB7_287:                              # %lpad630
.Ltmp507:                               # EH_LABEL
	b	.LBB7_314
.LBB7_288:                              # %lpad613
.Ltmp502:                               # EH_LABEL
.LBB7_289:                              # %lpad461
	ld.d	$a2, $sp, 128
	move	$fp, $a0
	beq	$a2, $s7, .LBB7_315
# %bb.290:                              # %if.then.i.i938
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_311
.LBB7_291:                              # %lpad558
.Ltmp487:                               # EH_LABEL
	b	.LBB7_301
.LBB7_292:                              # %lpad545
.Ltmp482:                               # EH_LABEL
	b	.LBB7_301
.LBB7_293:                              # %lpad493
.Ltmp467:                               # EH_LABEL
	b	.LBB7_301
.LBB7_294:                              # %lpad480
.Ltmp462:                               # EH_LABEL
	b	.LBB7_301
.LBB7_295:                              # %lpad428
.Ltmp447:                               # EH_LABEL
	b	.LBB7_301
.LBB7_296:                              # %lpad415
.Ltmp442:                               # EH_LABEL
	b	.LBB7_301
.LBB7_297:                              # %lpad354
.Ltmp437:                               # EH_LABEL
	b	.LBB7_301
.LBB7_298:                              # %lpad352
.Ltmp434:                               # EH_LABEL
	b	.LBB7_355
.LBB7_299:                              # %lpad341
.Ltmp428:                               # EH_LABEL
	b	.LBB7_301
.LBB7_300:                              # %lpad327
.Ltmp423:                               # EH_LABEL
.LBB7_301:                              # %lpad742
	ld.d	$a2, $sp, 160
	move	$fp, $a0
	beq	$a2, $s4, .LBB7_356
# %bb.302:                              # %if.then.i.i1609
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB7_317
.LBB7_303:                              # %lpad308
.Ltmp420:                               # EH_LABEL
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	bne	$a2, $s1, .LBB7_308
	b	.LBB7_309
.LBB7_304:                              # %lpad299
.Ltmp417:                               # EH_LABEL
	b	.LBB7_314
.LBB7_305:                              # %lpad294
.Ltmp414:                               # EH_LABEL
	b	.LBB7_314
.LBB7_306:                              # %lpad292
.Ltmp411:                               # EH_LABEL
	b	.LBB7_355
.LBB7_307:                              # %lpad275
.Ltmp408:                               # EH_LABEL
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	beq	$a2, $s5, .LBB7_309
.LBB7_308:                              # %if.then.i.i737
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_309:                              # %ehcleanup279
	ld.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	beq	$a0, $a1, .LBB7_315
# %bb.310:                              # %if.then.i.i745
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
.LBB7_311:                              # %ehcleanup286
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_315
.LBB7_312:                              # %lpad266
.Ltmp405:                               # EH_LABEL
	b	.LBB7_314
.LBB7_313:                              # %lpad261
.Ltmp402:                               # EH_LABEL
.LBB7_314:                              # %ehcleanup286
	move	$fp, $a0
.LBB7_315:                              # %ehcleanup286
	ld.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	beq	$a0, $a1, .LBB7_356
.LBB7_316:                              # %if.then.i.i729
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
.LBB7_317:                              # %ehcleanup759
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB7_356
.LBB7_318:                              # %lpad259
.Ltmp399:                               # EH_LABEL
	b	.LBB7_355
.LBB7_319:                              # %lpad242
.Ltmp396:                               # EH_LABEL
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	bne	$a2, $s5, .LBB7_322
# %bb.320:                              # %ehcleanup246
	ld.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	bne	$a0, $a1, .LBB7_323
.LBB7_321:                              # %ehcleanup253
	ld.d	$a0, $sp, 160
	bne	$a0, $s3, .LBB7_316
	b	.LBB7_356
.LBB7_322:                              # %if.then.i.i713
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	addi.d	$a1, $sp, 144
	beq	$a0, $a1, .LBB7_321
.LBB7_323:                              # %if.then.i.i721
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160
	bne	$a0, $s3, .LBB7_316
	b	.LBB7_356
.LBB7_324:                              # %lpad228
.Ltmp393:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 160
	bne	$a0, $s3, .LBB7_316
	b	.LBB7_356
.LBB7_325:                              # %lpad226
.Ltmp390:                               # EH_LABEL
	b	.LBB7_355
.LBB7_326:                              # %lpad162
.Ltmp344:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_327:                              # %lpad158
.Ltmp341:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_328:                              # %lpad110
.Ltmp319:                               # EH_LABEL
	b	.LBB7_337
.LBB7_329:                              # %lpad108
.Ltmp316:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_339
.LBB7_330:                              # %lpad103
.Ltmp313:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_339
.LBB7_331:                              # %lpad88
.Ltmp310:                               # EH_LABEL
	b	.LBB7_337
.LBB7_332:                              # %lpad69
.Ltmp307:                               # EH_LABEL
	b	.LBB7_337
.LBB7_333:                              # %lpad67
.Ltmp304:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_339
.LBB7_334:                              # %lpad62
.Ltmp301:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_339
.LBB7_335:                              # %lpad60
.Ltmp298:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_336:                              # %lpad49
.Ltmp295:                               # EH_LABEL
.LBB7_337:                              # %lpad49
	ld.d	$a2, $sp, 256
	move	$fp, $a0
	beq	$a2, $s5, .LBB7_339
# %bb.338:                              # %if.then.i.i364
	ld.d	$a0, $sp, 272
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_339:                              # %ehcleanup
	ld.d	$a0, $sp, 192
	beq	$a0, $s2, .LBB7_359
# %bb.340:                              # %if.then.i.i372
	ld.d	$a1, $sp, 208
	b	.LBB7_358
.LBB7_341:                              # %lpad43
.Ltmp292:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_342:                              # %lpad27
.Ltmp279:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_363
.LBB7_343:                              # %lpad9
.Ltmp267:                               # EH_LABEL
	b	.LBB7_345
.LBB7_344:                              # %lpad
.Ltmp264:                               # EH_LABEL
.LBB7_345:                              # %lpad
	move	$fp, $a0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_346:                              # %lpad198
.Ltmp383:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_347:                              # %lpad334
.Ltmp431:                               # EH_LABEL
	b	.LBB7_355
.LBB7_348:                              # %lpad149
.Ltmp338:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_349:                              # %lpad32
.Ltmp289:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_350:                              # %lpad136
.Ltmp333:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_351:                              # %lpad123
.Ltmp326:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_352:                              # %lpad15
.Ltmp274:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_363
.LBB7_353:                              # %lpad169
.Ltmp555:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB7_359
.LBB7_354:                              # %lpad407
.Ltmp537:                               # EH_LABEL
.LBB7_355:                              # %ehcleanup759
	move	$fp, $a0
.LBB7_356:                              # %ehcleanup759
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 272
	beq	$a0, $a1, .LBB7_359
# %bb.357:                              # %if.then.i.i1617
	ld.d	$a1, $sp, 272
.LBB7_358:                              # %ehcleanup771
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_359:                              # %ehcleanup771
	ld.d	$a0, $sp, 296
	beqz	$a0, .LBB7_361
# %bb.360:                              # %if.then.i.i.i.i1626
	ld.d	$a1, $sp, 312
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_361:                              # %ehcleanup773
	ld.d	$a0, $sp, 328
	beqz	$a0, .LBB7_363
# %bb.362:                              # %if.then.i.i.i.i1635
	ld.d	$a1, $sp, 344
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_363:                              # %ehcleanup778
	addi.d	$a0, $sp, 352
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZN6miniFE23simple_mesh_descriptionIiED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc, .Lfunc_end7-_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,"aG",@progbits,_ZN6miniFE6driverIdiiEEiRK3BoxRS1_RNS_10ParametersER8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp262-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp262
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin4         #     jumps to .Ltmp264
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin4         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp268-.Ltmp266              #   Call between .Ltmp266 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp273-.Ltmp268              #   Call between .Ltmp268 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin4         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin4         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp280-.Ltmp278              #   Call between .Ltmp278 and .Ltmp280
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin4         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp283-.Ltmp281              #   Call between .Ltmp281 and .Ltmp283
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp288-.Ltmp283              #   Call between .Ltmp283 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin4         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin4         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin4         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp296-.Ltmp294              #   Call between .Ltmp294 and .Ltmp296
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin4         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin4         #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin4         #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin4         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp308-.Ltmp306              #   Call between .Ltmp306 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin4         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp311-.Ltmp309              #   Call between .Ltmp309 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin4         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin4         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin4         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp320-.Ltmp318              #   Call between .Ltmp318 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp325-.Ltmp320              #   Call between .Ltmp320 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin4         #     jumps to .Ltmp326
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp332-.Ltmp327              #   Call between .Ltmp327 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin4         #     jumps to .Ltmp333
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp337-.Ltmp334              #   Call between .Ltmp334 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin4         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin4         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin4         #     jumps to .Ltmp344
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp368-.Ltmp345              #   Call between .Ltmp345 and .Ltmp368
	.uleb128 .Ltmp555-.Lfunc_begin4         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp380-.Ltmp369              #   Call between .Ltmp369 and .Ltmp380
	.uleb128 .Ltmp383-.Lfunc_begin4         #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp389-.Ltmp388              #   Call between .Ltmp388 and .Ltmp389
	.uleb128 .Ltmp390-.Lfunc_begin4         #     jumps to .Ltmp390
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin4         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin4         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp397-.Ltmp395              #   Call between .Ltmp395 and .Ltmp397
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin4         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp402-.Lfunc_begin4         #     jumps to .Ltmp402
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp404-.Ltmp403              #   Call between .Ltmp403 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin4         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp407-.Ltmp406              #   Call between .Ltmp406 and .Ltmp407
	.uleb128 .Ltmp408-.Lfunc_begin4         #     jumps to .Ltmp408
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp409-.Ltmp407              #   Call between .Ltmp407 and .Ltmp409
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp410-.Ltmp409              #   Call between .Ltmp409 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin4         #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin4         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin4         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp420-.Lfunc_begin4         #     jumps to .Ltmp420
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp421-.Ltmp419              #   Call between .Ltmp419 and .Ltmp421
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.uleb128 .Ltmp423-.Lfunc_begin4         #     jumps to .Ltmp423
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp424-.Ltmp422              #   Call between .Ltmp422 and .Ltmp424
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp431-.Lfunc_begin4         #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin4         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp429-.Ltmp427              #   Call between .Ltmp427 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin4         #     jumps to .Ltmp431
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin4         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin4         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp438-.Ltmp436              #   Call between .Ltmp436 and .Ltmp438
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin4         #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp443-.Ltmp441              #   Call between .Ltmp441 and .Ltmp443
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp445-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp446-.Ltmp445              #   Call between .Ltmp445 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin4         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp453-.Ltmp446              #   Call between .Ltmp446 and .Ltmp453
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin4         #     jumps to .Ltmp457
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp448-.Ltmp456              #   Call between .Ltmp456 and .Ltmp448
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp449-.Ltmp448              #   Call between .Ltmp448 and .Ltmp449
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin4         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp451-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp458-.Ltmp451              #   Call between .Ltmp451 and .Ltmp458
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin4         #     jumps to .Ltmp462
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp463-.Ltmp461              #   Call between .Ltmp461 and .Ltmp463
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin4         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp473-.Ltmp466              #   Call between .Ltmp466 and .Ltmp473
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp477-.Lfunc_begin4         #     jumps to .Ltmp477
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp468-.Ltmp476              #   Call between .Ltmp476 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin4         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp478-.Ltmp471              #   Call between .Ltmp471 and .Ltmp478
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin4         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp483-.Ltmp481              #   Call between .Ltmp481 and .Ltmp483
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin4         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp493-.Ltmp486              #   Call between .Ltmp486 and .Ltmp493
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Ltmp494-.Ltmp493              #   Call between .Ltmp493 and .Ltmp494
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin4         # >> Call Site 86 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin4         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin4         # >> Call Site 87 <<
	.uleb128 .Ltmp488-.Ltmp496              #   Call between .Ltmp496 and .Ltmp488
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin4         # >> Call Site 88 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin4         # >> Call Site 89 <<
	.uleb128 .Ltmp491-.Ltmp490              #   Call between .Ltmp490 and .Ltmp491
	.uleb128 .Ltmp492-.Lfunc_begin4         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin4         # >> Call Site 90 <<
	.uleb128 .Ltmp498-.Ltmp491              #   Call between .Ltmp491 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin4         # >> Call Site 91 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp500-.Lfunc_begin4         # >> Call Site 92 <<
	.uleb128 .Ltmp501-.Ltmp500              #   Call between .Ltmp500 and .Ltmp501
	.uleb128 .Ltmp502-.Lfunc_begin4         #     jumps to .Ltmp502
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin4         # >> Call Site 93 <<
	.uleb128 .Ltmp503-.Ltmp501              #   Call between .Ltmp501 and .Ltmp503
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin4         # >> Call Site 94 <<
	.uleb128 .Ltmp504-.Ltmp503              #   Call between .Ltmp503 and .Ltmp504
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin4         # >> Call Site 95 <<
	.uleb128 .Ltmp506-.Ltmp505              #   Call between .Ltmp505 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin4         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin4         # >> Call Site 96 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp510-.Lfunc_begin4         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin4         # >> Call Site 97 <<
	.uleb128 .Ltmp511-.Ltmp509              #   Call between .Ltmp509 and .Ltmp511
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin4         # >> Call Site 98 <<
	.uleb128 .Ltmp512-.Ltmp511              #   Call between .Ltmp511 and .Ltmp512
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin4         # >> Call Site 99 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin4         #     jumps to .Ltmp515
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin4         # >> Call Site 100 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.uleb128 .Ltmp518-.Lfunc_begin4         #     jumps to .Ltmp518
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin4         # >> Call Site 101 <<
	.uleb128 .Ltmp527-.Ltmp517              #   Call between .Ltmp517 and .Ltmp527
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin4         # >> Call Site 102 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin4         # >> Call Site 103 <<
	.uleb128 .Ltmp530-.Ltmp529              #   Call between .Ltmp529 and .Ltmp530
	.uleb128 .Ltmp531-.Lfunc_begin4         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin4         # >> Call Site 104 <<
	.uleb128 .Ltmp533-.Ltmp532              #   Call between .Ltmp532 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin4         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin4         # >> Call Site 105 <<
	.uleb128 .Ltmp519-.Ltmp533              #   Call between .Ltmp533 and .Ltmp519
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin4         # >> Call Site 106 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin4         # >> Call Site 107 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin4         #     jumps to .Ltmp523
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp524-.Lfunc_begin4         # >> Call Site 108 <<
	.uleb128 .Ltmp525-.Ltmp524              #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin4         #     jumps to .Ltmp526
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin4         # >> Call Site 109 <<
	.uleb128 .Ltmp535-.Ltmp525              #   Call between .Ltmp525 and .Ltmp535
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin4         # >> Call Site 110 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin4         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin4         # >> Call Site 111 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin4         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin4         # >> Call Site 112 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin4         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin4         # >> Call Site 113 <<
	.uleb128 .Ltmp544-.Ltmp542              #   Call between .Ltmp542 and .Ltmp544
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin4         # >> Call Site 114 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin4         #     jumps to .Ltmp546
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp547-.Lfunc_begin4         # >> Call Site 115 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin4         #     jumps to .Ltmp549
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp550-.Lfunc_begin4         # >> Call Site 116 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin4         #     jumps to .Ltmp552
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin4         # >> Call Site 117 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin4         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin4         # >> Call Site 118 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp279-.Lfunc_begin4         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin4         # >> Call Site 119 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin4         #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin4         # >> Call Site 120 <<
	.uleb128 .Lfunc_end7-.Ltmp382           #   Call between .Ltmp382 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
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
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.LCPI9_0:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.section	.text._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"axG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.weak	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.p2align	5
	.type	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,@function
_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb: # @_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	ld.w	$a0, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a1, 12
	ld.w	$t0, $a1, 8
	ld.w	$t1, $a1, 20
	ld.w	$a1, $a1, 16
	sub.d	$a0, $a0, $a6
	sub.d	$a6, $a7, $t0
	sub.w	$a1, $t1, $a1
	mulw.d.w	$a0, $a6, $a0
	mul.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI9_0)
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa2, $fa0
	fcvt.d.s	$fa2, $fa2
	fcmp.cule.d	$fcc0, $fa2, $fa1
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a2
	bcnez	$fcc0, .LBB9_4
# %bb.1:                                # %_ZN6miniFE21percentage_differenceIfEET_S1_S1_.exit38
	alsl.w	$a1, $a0, $a0, 2
	addi.w	$a0, $a0, 0
	slt	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	fsub.s	$fa1, $fa1, $fa0
	fabs.s	$fa1, $fa1
	fdiv.s	$fa1, $fa1, $fa0
	lu12i.w	$a1, 273536
	movgr2fr.w	$fa2, $a1
	fmul.s	$fa1, $fa1, $fa2
	movgr2fr.w	$fa3, $a0
	ffint.s.w	$fa3, $fa3
	fsub.s	$fa3, $fa3, $fa0
	fabs.s	$fa3, $fa3
	fdiv.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_3
# %bb.2:                                # %if.end.sink.split
	fmov.s	$fa1, $fa0
.LBB9_3:                                # %if.end
	fst.s	$fa1, $s1, 0
	st.w	$zero, $fp, 0
	bnez	$a5, .LBB9_5
	b	.LBB9_26
.LBB9_4:
	vldi	$vr1, -1040
	fst.s	$fa1, $s1, 0
	st.w	$zero, $fp, 0
	beqz	$a5, .LBB9_26
.LBB9_5:                                # %if.then9
	addi.d	$s3, $sp, 56
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp556:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp557:                               # EH_LABEL
# %bb.6:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$s6, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $s6, 0
	ld.w	$s5, $s6, 24
	ld.d	$s7, $s6, 16
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
	addi.d	$s4, $sp, 24
	st.d	$s4, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
.Ltmp559:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp560:                               # EH_LABEL
# %bb.7:                                # %invoke.cont16
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_9
# %bb.8:                                # %if.then.i.i54
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_11
# %bb.10:                               # %if.then.i.i56
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp562:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp563:                               # EH_LABEL
# %bb.12:                               # %call2.i5.i.noexc72
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp565:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp566:                               # EH_LABEL
# %bb.13:                               # %invoke.cont29
	move	$s2, $a0
	st.d	$s4, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 72
.Ltmp568:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 72
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp569:                               # EH_LABEL
# %bb.14:                               # %call2.i5.i.noexc85
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	fld.s	$fa0, $s1, 0
	fcvt.d.s	$fa0, $fa0
.Ltmp571:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.15:                               # %invoke.cont37
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_17
# %bb.16:                               # %if.then.i.i89
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_19
# %bb.18:                               # %if.then.i.i96
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
	st.d	$s3, $sp, 40
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 8
.Ltmp574:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp575:                               # EH_LABEL
# %bb.20:                               # %call2.i5.i.noexc112
	ld.d	$a1, $sp, 8
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 40
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 24
	st.d	$s7, $a0, 16
	ld.d	$a0, $sp, 40
	st.d	$a1, $sp, 48
	stx.b	$zero, $a0, $a1
.Ltmp577:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.21:                               # %invoke.cont52
	st.d	$s4, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 31
	fld.s	$fa0, $fp, 0
	ori	$a1, $zero, 11
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 35
	fcvt.d.s	$fa0, $fa0
.Ltmp580:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp581:                               # EH_LABEL
# %bb.22:                               # %invoke.cont60
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB9_24
# %bb.23:                               # %if.then.i.i129
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_26
# %bb.25:                               # %if.then.i.i136
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_26:                               # %if.end70
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
.LBB9_27:                               # %lpad59
.Ltmp582:                               # EH_LABEL
	b	.LBB9_35
.LBB9_28:                               # %lpad51
.Ltmp579:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_29:                               # %lpad49
.Ltmp576:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_30:                               # %lpad36
.Ltmp573:                               # EH_LABEL
	b	.LBB9_35
.LBB9_31:                               # %lpad33
.Ltmp570:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_32:                               # %lpad28
.Ltmp567:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
	b	.LBB9_39
.LBB9_33:                               # %lpad26
.Ltmp564:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_34:                               # %lpad15
.Ltmp561:                               # EH_LABEL
.LBB9_35:                               # %lpad59
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	bne	$a2, $s4, .LBB9_38
# %bb.36:                               # %ehcleanup66
	ld.d	$a0, $sp, 40
	bne	$a0, $s3, .LBB9_39
.LBB9_37:                               # %ehcleanup71
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_38:                               # %if.then.i.i171
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s3, .LBB9_37
.LBB9_39:                               # %if.then.i.i178
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_40:                               # %lpad
.Ltmp558:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb, .Lfunc_end9-_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,"aG",@progbits,_ZN6miniFE17compute_imbalanceIiEEvRK3BoxS3_RfS4_R8YAML_Docb,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp556-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin5         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin5         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp560-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp562-.Ltmp560              #   Call between .Ltmp560 and .Ltmp562
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin5         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin5         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin5         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin5         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp572-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp574-.Ltmp572              #   Call between .Ltmp572 and .Ltmp574
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin5         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin5         #     jumps to .Ltmp579
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin5         #     jumps to .Ltmp582
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp581-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Lfunc_end9-.Ltmp581           #   Call between .Ltmp581 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_ # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,@function
_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_: # @_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	ld.w	$a3, $a1, 0
	move	$fp, $a0
	st.w	$a3, $a0, 144
	ld.w	$a6, $a1, 4
	st.w	$a6, $a0, 148
	ld.w	$a0, $a2, 0
	addi.d	$a3, $fp, 8
	st.w	$zero, $fp, 8
	st.w	$a0, $fp, 168
	ld.w	$a0, $a2, 4
	st.d	$zero, $fp, 16
	st.d	$a3, $fp, 24
	st.d	$a3, $fp, 32
	st.w	$a0, $fp, 172
	ld.w	$a3, $a1, 8
	st.d	$zero, $fp, 40
	addi.d	$a4, $fp, 104
	ld.w	$a5, $a2, 0
	st.w	$a3, $fp, 152
	ld.w	$a7, $a1, 12
	st.d	$a4, $fp, 120
	st.d	$a4, $fp, 128
	st.w	$a5, $sp, 144
	st.w	$a7, $fp, 156
	ld.w	$a3, $a2, 8
	slt	$a4, $a5, $a0
	xor	$a5, $a0, $a6
	sltui	$a5, $a5, 1
	st.w	$a3, $fp, 176
	ld.w	$a3, $a2, 12
	and	$a4, $a4, $a5
	addi.d	$t0, $fp, 56
	add.d	$a0, $a0, $a4
	st.w	$a3, $fp, 180
	ld.w	$a4, $a2, 8
	st.w	$a0, $sp, 148
	ld.w	$a0, $a1, 16
	st.w	$zero, $fp, 56
	st.w	$a4, $sp, 152
	slt	$a4, $a4, $a3
	st.w	$a0, $fp, 160
	ld.w	$a5, $a1, 20
	xor	$a0, $a3, $a7
	sltui	$a0, $a0, 1
	and	$a0, $a4, $a0
	st.w	$a5, $fp, 164
	ld.w	$a1, $a2, 16
	st.d	$zero, $fp, 64
	st.d	$t0, $fp, 72
	st.d	$t0, $fp, 80
	st.w	$a1, $fp, 184
	ld.w	$a1, $a2, 20
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 104
	st.d	$zero, $fp, 112
	st.w	$a1, $fp, 188
	ld.w	$a2, $a2, 16
	st.d	$zero, $fp, 136
	add.d	$a0, $a3, $a0
	st.w	$a0, $sp, 156
	st.w	$a2, $sp, 160
	slt	$a0, $a2, $a1
	xor	$a2, $a1, $a5
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 164
	addi.d	$a4, $fp, 96
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a6, 1
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a1, $a7, 1
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a2, $a5, 1
.Ltmp583:                               # EH_LABEL
	addi.d	$a3, $sp, 144
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE)
	jirl	$ra, $ra, 0
.Ltmp584:                               # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.w	$a0, $fp, 144
	ld.w	$a1, $fp, 168
	bne	$a0, $a1, .LBB10_35
# %bb.2:                                # %if.then63
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB10_35
# %bb.3:                                # %for.cond99.preheader.lr.ph
	ld.w	$a0, $sp, 152
	ld.w	$a1, $sp, 156
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_35
# %bb.4:                                # %for.cond99.preheader.us.preheader
	addi.w	$s5, $zero, -1
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_5:                               # %for.cond99.for.cond.cleanup101_crit_edge.us
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB10_35
.LBB10_6:                               # %for.cond99.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
                                        #       Child Loop BB10_12 Depth 3
                                        #     Child Loop BB10_23 Depth 2
                                        #       Child Loop BB10_25 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bltz	$a0, .LBB10_10
# %bb.7:                                # %for.cond99.preheader.us
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB10_10
# %bb.8:                                # %for.body102.us574.preheader
                                        #   in Loop: Header=BB10_6 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	mul.d	$s1, $a1, $a0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_23
	.p2align	4, , 16
.LBB10_9:                               # %invoke.cont110.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_5
.LBB10_10:                              # %for.body102.us.us
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_12 Depth 3
.Ltmp586:                               # EH_LABEL
	move	$a0, $s5
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp587:                               # EH_LABEL
# %bb.11:                               # %invoke.cont108.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s6, $fp, 8
	beqz	$a1, .LBB10_14
	.p2align	4, , 16
.LBB10_12:                              # %while.body.i.i.i.us.us
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_12
# %bb.13:                               # %while.end.i.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	bge	$s3, $a0, .LBB10_16
.LBB10_14:                              # %if.then.i.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_17
# %bb.15:                               # %if.else.i.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_16:                              # %if.end12.i.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	bge	$a0, $s3, .LBB10_9
.LBB10_17:                              # %if.then.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s6, $a0, .LBB10_19
# %bb.18:                               # %lor.rhs.i.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_19:                              #   in Loop: Header=BB10_10 Depth=2
	ori	$s2, $zero, 1
.LBB10_20:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
.Ltmp588:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp589:                               # EH_LABEL
# %bb.21:                               # %call5.i.i.i.i.i.i.i.noexc.us.us
                                        #   in Loop: Header=BB10_10 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_22:                              # %invoke.cont110.us616
                                        #   in Loop: Header=BB10_23 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_5
.LBB10_23:                              # %for.body102.us574
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_25 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	add.d	$a2, $s0, $s1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp591:                               # EH_LABEL
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.24:                               # %invoke.cont108.us580
                                        #   in Loop: Header=BB10_23 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s6, $fp, 8
	beqz	$a1, .LBB10_27
	.p2align	4, , 16
.LBB10_25:                              # %while.body.i.i.i.us583
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_25
# %bb.26:                               # %while.end.i.i.i.us591
                                        #   in Loop: Header=BB10_23 Depth=2
	bge	$s3, $a0, .LBB10_29
.LBB10_27:                              # %if.then.i.i.i.us595
                                        #   in Loop: Header=BB10_23 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_30
# %bb.28:                               # %if.else.i.i.i.us598
                                        #   in Loop: Header=BB10_23 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_29:                              # %if.end12.i.i.i.us602
                                        #   in Loop: Header=BB10_23 Depth=2
	bge	$a0, $s3, .LBB10_22
.LBB10_30:                              # %if.then.i.i.us605
                                        #   in Loop: Header=BB10_23 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s6, $a0, .LBB10_32
# %bb.31:                               # %lor.rhs.i.i.i.us608
                                        #   in Loop: Header=BB10_23 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_32:                              #   in Loop: Header=BB10_23 Depth=2
	ori	$s2, $zero, 1
.LBB10_33:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.us611
                                        #   in Loop: Header=BB10_23 Depth=2
.Ltmp593:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp594:                               # EH_LABEL
# %bb.34:                               # %call5.i.i.i.i.i.i.i.noexc.us613
                                        #   in Loop: Header=BB10_23 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_22
.LBB10_35:                              # %if.end124
	ld.w	$a0, $fp, 152
	ld.w	$a1, $fp, 176
	bne	$a0, $a1, .LBB10_70
# %bb.36:                               # %if.then132
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$s5, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bge	$s5, $a0, .LBB10_70
# %bb.37:                               # %for.cond172.preheader.lr.ph
	ld.w	$a0, $sp, 144
	ld.w	$a1, $sp, 148
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a2, $a0, .LBB10_70
# %bb.38:                               # %for.cond172.preheader.us.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $s0, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s6, $zero, 24
	ori	$s4, $zero, 16
	b	.LBB10_40
	.p2align	4, , 16
.LBB10_39:                              # %for.cond172.for.cond.cleanup174_crit_edge.us
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bge	$s5, $a0, .LBB10_70
.LBB10_40:                              # %for.cond172.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_42 Depth 2
                                        #       Child Loop BB10_60 Depth 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $s5
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $s5
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	and	$a0, $a1, $a0
	move	$s1, $a0
	masknez	$a0, $s0, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_42
	.p2align	4, , 16
.LBB10_41:                              # %invoke.cont205.us
                                        #   in Loop: Header=BB10_42 Depth=2
	addi.w	$s7, $s7, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB10_39
.LBB10_42:                              # %for.body175.us
                                        #   Parent Loop BB10_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_60 Depth 3
	or	$a0, $s7, $s5
	slt	$a0, $s0, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s7
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $s7, $a2
	maskeqz	$a2, $a2, $s1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	or	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s0, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s0, $a0
	or	$s3, $a1, $a0
.Ltmp596:                               # EH_LABEL
	move	$a0, $s3
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp597:                               # EH_LABEL
# %bb.43:                               # %invoke.cont181.us
                                        #   in Loop: Header=BB10_42 Depth=2
	move	$s8, $a0
	bgez	$a0, .LBB10_59
# %bb.44:                               # %if.then184.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp598:                               # EH_LABEL
	ori	$a2, $zero, 21
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp599:                               # EH_LABEL
# %bb.45:                               # %invoke.cont185.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp600:                               # EH_LABEL
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.46:                               # %invoke.cont187.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp602:                               # EH_LABEL
	move	$s2, $a0
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp603:                               # EH_LABEL
# %bb.47:                               # %invoke.cont189.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp604:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp605:                               # EH_LABEL
# %bb.48:                               # %invoke.cont191.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp606:                               # EH_LABEL
	move	$s2, $a0
	ori	$a2, $zero, 30
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.49:                               # %invoke.cont193.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp608:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp609:                               # EH_LABEL
# %bb.50:                               # %invoke.cont195.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp610:                               # EH_LABEL
	move	$s2, $a0
	ori	$a2, $zero, 13
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp611:                               # EH_LABEL
# %bb.51:                               # %invoke.cont197.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp612:                               # EH_LABEL
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.52:                               # %invoke.cont199.us
                                        #   in Loop: Header=BB10_42 Depth=2
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB10_204
# %bb.53:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB10_55
# %bb.54:                               # %if.then.i2.i.i.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.bu	$a0, $s2, 67
	b	.LBB10_57
.LBB10_55:                              # %if.end.i.i.i.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp614:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp615:                               # EH_LABEL
# %bb.56:                               # %.noexc556.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp616:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp617:                               # EH_LABEL
.LBB10_57:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp618:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.58:                               # %call1.i.noexc.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp620:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp621:                               # EH_LABEL
.LBB10_59:                              # %if.end203.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.d	$a1, $fp, 16
	addi.d	$s3, $fp, 8
	beqz	$a1, .LBB10_62
	.p2align	4, , 16
.LBB10_60:                              # %while.body.i.i.i232.us
                                        #   Parent Loop BB10_40 Depth=1
                                        #     Parent Loop BB10_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s8, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s3, $a1
	bnez	$a1, .LBB10_60
# %bb.61:                               # %while.end.i.i.i240.us
                                        #   in Loop: Header=BB10_42 Depth=2
	bge	$s8, $a0, .LBB10_64
.LBB10_62:                              # %if.then.i.i.i259.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s3, $a0, .LBB10_65
# %bb.63:                               # %if.else.i.i.i263.us
                                        #   in Loop: Header=BB10_42 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_64:                              # %if.end12.i.i.i241.us
                                        #   in Loop: Header=BB10_42 Depth=2
	bge	$a0, $s8, .LBB10_41
.LBB10_65:                              # %if.then.i.i250.us
                                        #   in Loop: Header=BB10_42 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s3, $a0, .LBB10_67
# %bb.66:                               # %lor.rhs.i.i.i253.us
                                        #   in Loop: Header=BB10_42 Depth=2
	ld.w	$a0, $s3, 32
	slt	$s2, $s8, $a0
	b	.LBB10_68
	.p2align	4, , 16
.LBB10_67:                              #   in Loop: Header=BB10_42 Depth=2
	ori	$s2, $zero, 1
.LBB10_68:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.us
                                        #   in Loop: Header=BB10_42 Depth=2
.Ltmp622:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp623:                               # EH_LABEL
# %bb.69:                               # %call5.i.i.i.i.i.i.i.noexc267.us
                                        #   in Loop: Header=BB10_42 Depth=2
	st.w	$s8, $a1, 32
	move	$a0, $s2
	move	$a2, $s3
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_41
.LBB10_70:                              # %if.end222
	ld.w	$a0, $fp, 160
	ld.w	$a1, $fp, 184
	bne	$a0, $a1, .LBB10_104
# %bb.71:                               # %if.then230
	ld.w	$a0, $sp, 152
	ld.w	$a1, $sp, 156
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_104
# %bb.72:                               # %for.cond273.preheader.lr.ph
	ld.w	$a0, $sp, 144
	ld.w	$a1, $sp, 148
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_104
# %bb.73:                               # %for.cond273.preheader.us.preheader
	addi.w	$s5, $zero, -1
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_75
	.p2align	4, , 16
.LBB10_74:                              # %for.cond273.for.cond.cleanup275_crit_edge.us
                                        #   in Loop: Header=BB10_75 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_104
.LBB10_75:                              # %for.cond273.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_95 Depth 2
                                        #       Child Loop BB10_97 Depth 3
                                        #     Child Loop BB10_79 Depth 2
                                        #       Child Loop BB10_81 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_95
# %bb.76:                               # %for.cond273.preheader.us
                                        #   in Loop: Header=BB10_75 Depth=1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bltz	$a0, .LBB10_95
# %bb.77:                               # %for.body276.us637.preheader
                                        #   in Loop: Header=BB10_75 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	mul.d	$s1, $a1, $a0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_79
	.p2align	4, , 16
.LBB10_78:                              # %invoke.cont286.us679
                                        #   in Loop: Header=BB10_79 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_74
.LBB10_79:                              # %for.body276.us637
                                        #   Parent Loop BB10_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_81 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $s0, $a0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	add.w	$a2, $s0, $s1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp630:                               # EH_LABEL
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.80:                               # %invoke.cont284.us643
                                        #   in Loop: Header=BB10_79 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s6, $fp, 8
	beqz	$a1, .LBB10_83
	.p2align	4, , 16
.LBB10_81:                              # %while.body.i.i.i301.us646
                                        #   Parent Loop BB10_75 Depth=1
                                        #     Parent Loop BB10_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_81
# %bb.82:                               # %while.end.i.i.i309.us654
                                        #   in Loop: Header=BB10_79 Depth=2
	bge	$s3, $a0, .LBB10_85
.LBB10_83:                              # %if.then.i.i.i329.us658
                                        #   in Loop: Header=BB10_79 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_86
# %bb.84:                               # %if.else.i.i.i333.us661
                                        #   in Loop: Header=BB10_79 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_85:                              # %if.end12.i.i.i310.us665
                                        #   in Loop: Header=BB10_79 Depth=2
	bge	$a0, $s3, .LBB10_78
.LBB10_86:                              # %if.then.i.i319.us668
                                        #   in Loop: Header=BB10_79 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s6, $a0, .LBB10_88
# %bb.87:                               # %lor.rhs.i.i.i322.us671
                                        #   in Loop: Header=BB10_79 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_89
	.p2align	4, , 16
.LBB10_88:                              #   in Loop: Header=BB10_79 Depth=2
	ori	$s2, $zero, 1
.LBB10_89:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i325.us674
                                        #   in Loop: Header=BB10_79 Depth=2
.Ltmp632:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp633:                               # EH_LABEL
# %bb.90:                               # %call5.i.i.i.i.i.i.i.noexc337.us676
                                        #   in Loop: Header=BB10_79 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_78
	.p2align	4, , 16
.LBB10_91:                              #   in Loop: Header=BB10_95 Depth=2
	ori	$s2, $zero, 1
.LBB10_92:                              # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i325.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
.Ltmp627:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp628:                               # EH_LABEL
# %bb.93:                               # %call5.i.i.i.i.i.i.i.noexc337.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_94:                              # %invoke.cont286.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_74
.LBB10_95:                              # %for.body276.us.us
                                        #   Parent Loop BB10_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_97 Depth 3
.Ltmp625:                               # EH_LABEL
	move	$a0, $s5
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp626:                               # EH_LABEL
# %bb.96:                               # %invoke.cont284.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s6, $fp, 8
	beqz	$a1, .LBB10_99
	.p2align	4, , 16
.LBB10_97:                              # %while.body.i.i.i301.us.us
                                        #   Parent Loop BB10_75 Depth=1
                                        #     Parent Loop BB10_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_97
# %bb.98:                               # %while.end.i.i.i309.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	bge	$s3, $a0, .LBB10_101
.LBB10_99:                              # %if.then.i.i.i329.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s6, $a0, .LBB10_102
# %bb.100:                              # %if.else.i.i.i333.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_101:                             # %if.end12.i.i.i310.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	bge	$a0, $s3, .LBB10_94
.LBB10_102:                             # %if.then.i.i319.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s6, $a0, .LBB10_91
# %bb.103:                              # %lor.rhs.i.i.i322.us.us
                                        #   in Loop: Header=BB10_95 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
	b	.LBB10_92
.LBB10_104:                             # %if.end303
	ld.w	$a0, $fp, 148
	ld.w	$a1, $fp, 172
	bne	$a0, $a1, .LBB10_137
# %bb.105:                              # %if.then311
	ld.w	$a0, $sp, 152
	ld.w	$a1, $sp, 156
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_137
# %bb.106:                              # %if.then311
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_137
# %bb.107:                              # %for.cond354.preheader.us.preheader
	addi.w	$s5, $zero, -1
	ori	$s4, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_109
	.p2align	4, , 16
.LBB10_108:                             # %for.cond354.for.cond.cleanup356_crit_edge.us
                                        #   in Loop: Header=BB10_109 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_137
.LBB10_109:                             # %for.cond354.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_128 Depth 2
                                        #       Child Loop BB10_130 Depth 3
                                        #     Child Loop BB10_115 Depth 2
                                        #       Child Loop BB10_117 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_115
# %bb.110:                              #   in Loop: Header=BB10_109 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	or	$s1, $a1, $a0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_128
	.p2align	4, , 16
.LBB10_111:                             # %lor.rhs.i.i.i393.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
.LBB10_112:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i396.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
.Ltmp642:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp643:                               # EH_LABEL
# %bb.113:                              # %call5.i.i.i.i.i.i.i.noexc408.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 56
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB10_114:                             # %invoke.cont367.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_108
.LBB10_115:                             # %for.body357.us.us
                                        #   Parent Loop BB10_109 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_117 Depth 3
.Ltmp640:                               # EH_LABEL
	move	$a0, $s5
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp641:                               # EH_LABEL
# %bb.116:                              # %invoke.cont364.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 64
	addi.d	$s6, $fp, 56
	beqz	$a1, .LBB10_119
	.p2align	4, , 16
.LBB10_117:                             # %while.body.i.i.i372.us.us
                                        #   Parent Loop BB10_109 Depth=1
                                        #     Parent Loop BB10_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_117
# %bb.118:                              # %while.end.i.i.i380.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	bge	$s3, $a0, .LBB10_121
.LBB10_119:                             # %if.then.i.i.i400.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	ld.d	$a0, $fp, 72
	beq	$s6, $a0, .LBB10_122
# %bb.120:                              # %if.else.i.i.i404.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_121:                             # %if.end12.i.i.i381.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	bge	$a0, $s3, .LBB10_114
.LBB10_122:                             # %if.then.i.i390.us.us
                                        #   in Loop: Header=BB10_115 Depth=2
	addi.d	$a0, $fp, 56
	bne	$s6, $a0, .LBB10_111
# %bb.123:                              #   in Loop: Header=BB10_115 Depth=2
	ori	$s2, $zero, 1
	b	.LBB10_112
	.p2align	4, , 16
.LBB10_124:                             # %lor.rhs.i.i.i393.us729
                                        #   in Loop: Header=BB10_128 Depth=2
	ld.w	$a0, $s6, 32
	slt	$s2, $s3, $a0
.LBB10_125:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i396.us732
                                        #   in Loop: Header=BB10_128 Depth=2
.Ltmp637:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp638:                               # EH_LABEL
# %bb.126:                              # %call5.i.i.i.i.i.i.i.noexc408.us734
                                        #   in Loop: Header=BB10_128 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s6
	addi.d	$a3, $fp, 56
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB10_127:                             # %invoke.cont367.us737
                                        #   in Loop: Header=BB10_128 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_108
.LBB10_128:                             # %for.body357.us695
                                        #   Parent Loop BB10_109 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_130 Depth 3
	or	$a0, $s1, $s0
	slt	$a0, $s5, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s5, $a0
	or	$a0, $a1, $a0
.Ltmp635:                               # EH_LABEL
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp636:                               # EH_LABEL
# %bb.129:                              # %invoke.cont364.us701
                                        #   in Loop: Header=BB10_128 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 64
	addi.d	$s6, $fp, 56
	beqz	$a1, .LBB10_132
	.p2align	4, , 16
.LBB10_130:                             # %while.body.i.i.i372.us704
                                        #   Parent Loop BB10_109 Depth=1
                                        #     Parent Loop BB10_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s6, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s6, $a1
	bnez	$a1, .LBB10_130
# %bb.131:                              # %while.end.i.i.i380.us712
                                        #   in Loop: Header=BB10_128 Depth=2
	bge	$s3, $a0, .LBB10_134
.LBB10_132:                             # %if.then.i.i.i400.us716
                                        #   in Loop: Header=BB10_128 Depth=2
	ld.d	$a0, $fp, 72
	beq	$s6, $a0, .LBB10_135
# %bb.133:                              # %if.else.i.i.i404.us719
                                        #   in Loop: Header=BB10_128 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_134:                             # %if.end12.i.i.i381.us723
                                        #   in Loop: Header=BB10_128 Depth=2
	bge	$a0, $s3, .LBB10_127
.LBB10_135:                             # %if.then.i.i390.us726
                                        #   in Loop: Header=BB10_128 Depth=2
	addi.d	$a0, $fp, 56
	bne	$s6, $a0, .LBB10_124
# %bb.136:                              #   in Loop: Header=BB10_128 Depth=2
	ori	$s2, $zero, 1
	b	.LBB10_125
.LBB10_137:                             # %if.end384
	ld.w	$a0, $fp, 156
	ld.w	$a1, $fp, 180
	bne	$a0, $a1, .LBB10_170
# %bb.138:                              # %if.then392
	ld.w	$a0, $sp, 144
	ld.w	$a1, $sp, 148
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_170
# %bb.139:                              # %if.then392
	ld.w	$a0, $sp, 160
	ld.w	$a1, $sp, 164
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_170
# %bb.140:                              # %for.cond435.preheader.us.preheader
	addi.w	$s4, $zero, -1
	ori	$s6, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB10_142
	.p2align	4, , 16
.LBB10_141:                             # %for.cond435.for.cond.cleanup437_crit_edge.us
                                        #   in Loop: Header=BB10_142 Depth=1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_170
.LBB10_142:                             # %for.cond435.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_161 Depth 2
                                        #       Child Loop BB10_163 Depth 3
                                        #     Child Loop BB10_148 Depth 2
                                        #       Child Loop BB10_150 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_148
# %bb.143:                              #   in Loop: Header=BB10_142 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	or	$s1, $a1, $a0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_161
	.p2align	4, , 16
.LBB10_144:                             #   in Loop: Header=BB10_148 Depth=2
	ori	$s2, $zero, 1
.LBB10_145:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i467.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
.Ltmp652:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp653:                               # EH_LABEL
# %bb.146:                              # %call5.i.i.i.i.i.i.i.noexc479.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_147:                             # %invoke.cont448.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_141
.LBB10_148:                             # %for.body438.us.us
                                        #   Parent Loop BB10_142 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_150 Depth 3
.Ltmp650:                               # EH_LABEL
	move	$a0, $s4
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp651:                               # EH_LABEL
# %bb.149:                              # %invoke.cont446.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s5, $fp, 8
	beqz	$a1, .LBB10_152
	.p2align	4, , 16
.LBB10_150:                             # %while.body.i.i.i443.us.us
                                        #   Parent Loop BB10_142 Depth=1
                                        #     Parent Loop BB10_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_150
# %bb.151:                              # %while.end.i.i.i451.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	bge	$s3, $a0, .LBB10_154
.LBB10_152:                             # %if.then.i.i.i471.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_155
# %bb.153:                              # %if.else.i.i.i475.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_154:                             # %if.end12.i.i.i452.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	bge	$a0, $s3, .LBB10_147
.LBB10_155:                             # %if.then.i.i461.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s5, $a0, .LBB10_144
# %bb.156:                              # %lor.rhs.i.i.i464.us.us
                                        #   in Loop: Header=BB10_148 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s3, $a0
	b	.LBB10_145
	.p2align	4, , 16
.LBB10_157:                             #   in Loop: Header=BB10_161 Depth=2
	ori	$s2, $zero, 1
.LBB10_158:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i467.us788
                                        #   in Loop: Header=BB10_161 Depth=2
.Ltmp647:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp648:                               # EH_LABEL
# %bb.159:                              # %call5.i.i.i.i.i.i.i.noexc479.us790
                                        #   in Loop: Header=BB10_161 Depth=2
	st.w	$s3, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
.LBB10_160:                             # %invoke.cont448.us793
                                        #   in Loop: Header=BB10_161 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_141
.LBB10_161:                             # %for.body438.us751
                                        #   Parent Loop BB10_142 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_163 Depth 3
	or	$a0, $s1, $s0
	slt	$a0, $s4, $a0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a1, $a0
.Ltmp645:                               # EH_LABEL
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.162:                              # %invoke.cont446.us757
                                        #   in Loop: Header=BB10_161 Depth=2
	move	$s3, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s5, $fp, 8
	beqz	$a1, .LBB10_165
	.p2align	4, , 16
.LBB10_163:                             # %while.body.i.i.i443.us760
                                        #   Parent Loop BB10_142 Depth=1
                                        #     Parent Loop BB10_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s3, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_163
# %bb.164:                              # %while.end.i.i.i451.us768
                                        #   in Loop: Header=BB10_161 Depth=2
	bge	$s3, $a0, .LBB10_167
.LBB10_165:                             # %if.then.i.i.i471.us772
                                        #   in Loop: Header=BB10_161 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_168
# %bb.166:                              # %if.else.i.i.i475.us775
                                        #   in Loop: Header=BB10_161 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_167:                             # %if.end12.i.i.i452.us779
                                        #   in Loop: Header=BB10_161 Depth=2
	bge	$a0, $s3, .LBB10_160
.LBB10_168:                             # %if.then.i.i461.us782
                                        #   in Loop: Header=BB10_161 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s5, $a0, .LBB10_157
# %bb.169:                              # %lor.rhs.i.i.i464.us785
                                        #   in Loop: Header=BB10_161 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s3, $a0
	b	.LBB10_158
.LBB10_170:                             # %if.end465
	ld.w	$a0, $fp, 164
	ld.w	$a1, $fp, 188
	bne	$a0, $a1, .LBB10_203
# %bb.171:                              # %if.then473
	ld.w	$a0, $sp, 144
	ld.w	$a1, $sp, 148
	slt	$a2, $zero, $a0
	sub.w	$a3, $a0, $a2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bge	$a3, $a0, .LBB10_203
# %bb.172:                              # %for.cond516.preheader.lr.ph
	ld.w	$a0, $sp, 152
	ld.w	$a1, $sp, 156
	slt	$a2, $zero, $a0
	sub.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slt	$a0, $a0, $a1
	xori	$a0, $a0, 1
	add.w	$s8, $a1, $a0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$a2, $s8, .LBB10_203
# %bb.173:                              # %for.cond516.preheader.us.preheader
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s3, $zero, -1
	ori	$s7, $zero, 24
	ori	$s6, $zero, 16
	b	.LBB10_175
	.p2align	4, , 16
.LBB10_174:                             # %for.cond516.for.cond.cleanup518_crit_edge.us
                                        #   in Loop: Header=BB10_175 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bge	$a3, $a0, .LBB10_203
.LBB10_175:                             # %for.cond516.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_191 Depth 2
                                        #       Child Loop BB10_193 Depth 3
                                        #     Child Loop BB10_178 Depth 2
                                        #       Child Loop BB10_180 Depth 3
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB10_178
# %bb.176:                              #   in Loop: Header=BB10_175 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	or	$s1, $a1, $a0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB10_191
	.p2align	4, , 16
.LBB10_177:                             # %invoke.cont529.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_174
.LBB10_178:                             # %for.body519.us.us
                                        #   Parent Loop BB10_175 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_180 Depth 3
.Ltmp660:                               # EH_LABEL
	move	$a0, $s3
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.179:                              # %invoke.cont527.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	move	$s4, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s5, $fp, 8
	beqz	$a1, .LBB10_182
	.p2align	4, , 16
.LBB10_180:                             # %while.body.i.i.i514.us.us
                                        #   Parent Loop BB10_175 Depth=1
                                        #     Parent Loop BB10_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s4, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_180
# %bb.181:                              # %while.end.i.i.i522.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	bge	$s4, $a0, .LBB10_184
.LBB10_182:                             # %if.then.i.i.i542.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_185
# %bb.183:                              # %if.else.i.i.i546.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_184:                             # %if.end12.i.i.i523.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	bge	$a0, $s4, .LBB10_177
.LBB10_185:                             # %if.then.i.i532.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s5, $a0, .LBB10_187
# %bb.186:                              # %lor.rhs.i.i.i535.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s4, $a0
	b	.LBB10_188
	.p2align	4, , 16
.LBB10_187:                             #   in Loop: Header=BB10_178 Depth=2
	ori	$s2, $zero, 1
.LBB10_188:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i538.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
.Ltmp662:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp663:                               # EH_LABEL
# %bb.189:                              # %call5.i.i.i.i.i.i.i.noexc550.us.us
                                        #   in Loop: Header=BB10_178 Depth=2
	st.w	$s4, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_177
	.p2align	4, , 16
.LBB10_190:                             # %invoke.cont529.us849
                                        #   in Loop: Header=BB10_191 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $s8, .LBB10_174
.LBB10_191:                             # %for.body519.us807
                                        #   Parent Loop BB10_175 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_193 Depth 3
	or	$a0, $s1, $s0
	slt	$a0, $s3, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	slt	$a1, $a1, $s0
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $s0, $a2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s3, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s3, $a0
	or	$a0, $a1, $a0
.Ltmp655:                               # EH_LABEL
	addi.d	$a1, $fp, 96
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.192:                              # %invoke.cont527.us813
                                        #   in Loop: Header=BB10_191 Depth=2
	move	$s4, $a0
	ld.d	$a1, $fp, 16
	addi.d	$s5, $fp, 8
	beqz	$a1, .LBB10_195
	.p2align	4, , 16
.LBB10_193:                             # %while.body.i.i.i514.us816
                                        #   Parent Loop BB10_175 Depth=1
                                        #     Parent Loop BB10_191 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $a1
	ld.w	$a0, $a1, 32
	slt	$a1, $s4, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a1, $a1, $a2
	ldx.d	$a1, $s5, $a1
	bnez	$a1, .LBB10_193
# %bb.194:                              # %while.end.i.i.i522.us824
                                        #   in Loop: Header=BB10_191 Depth=2
	bge	$s4, $a0, .LBB10_197
.LBB10_195:                             # %if.then.i.i.i542.us828
                                        #   in Loop: Header=BB10_191 Depth=2
	ld.d	$a0, $fp, 24
	beq	$s5, $a0, .LBB10_198
# %bb.196:                              # %if.else.i.i.i546.us831
                                        #   in Loop: Header=BB10_191 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
.LBB10_197:                             # %if.end12.i.i.i523.us835
                                        #   in Loop: Header=BB10_191 Depth=2
	bge	$a0, $s4, .LBB10_190
.LBB10_198:                             # %if.then.i.i532.us838
                                        #   in Loop: Header=BB10_191 Depth=2
	addi.d	$a0, $fp, 8
	beq	$s5, $a0, .LBB10_200
# %bb.199:                              # %lor.rhs.i.i.i535.us841
                                        #   in Loop: Header=BB10_191 Depth=2
	ld.w	$a0, $s5, 32
	slt	$s2, $s4, $a0
	b	.LBB10_201
	.p2align	4, , 16
.LBB10_200:                             #   in Loop: Header=BB10_191 Depth=2
	ori	$s2, $zero, 1
.LBB10_201:                             # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i538.us844
                                        #   in Loop: Header=BB10_191 Depth=2
.Ltmp657:                               # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp658:                               # EH_LABEL
# %bb.202:                              # %call5.i.i.i.i.i.i.i.noexc550.us846
                                        #   in Loop: Header=BB10_191 Depth=2
	st.w	$s4, $a1, 32
	move	$a0, $s2
	move	$a2, $s5
	addi.d	$a3, $fp, 8
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB10_190
.LBB10_203:                             # %if.end546
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
.LBB10_204:                             # %if.then.i.i.i555
.Ltmp665:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp666:                               # EH_LABEL
# %bb.205:                              # %.noexc
.LBB10_206:                             # %lpad
.Ltmp585:                               # EH_LABEL
	b	.LBB10_219
.LBB10_207:                             # %lpad180.loopexit.split-lp
.Ltmp667:                               # EH_LABEL
	b	.LBB10_219
.LBB10_208:                             # %lpad526.split.us.split.us
.Ltmp664:                               # EH_LABEL
	b	.LBB10_219
.LBB10_209:                             # %lpad526.split.split.us
.Ltmp659:                               # EH_LABEL
	b	.LBB10_219
.LBB10_210:                             # %lpad283.split.split.us
.Ltmp634:                               # EH_LABEL
	b	.LBB10_219
.LBB10_211:                             # %lpad283.split.us.split.us
.Ltmp629:                               # EH_LABEL
	b	.LBB10_219
.LBB10_212:                             # %lpad107.split.split.us
.Ltmp595:                               # EH_LABEL
	b	.LBB10_219
.LBB10_213:                             # %lpad107.split.us.split.us
.Ltmp590:                               # EH_LABEL
	b	.LBB10_219
.LBB10_214:                             # %lpad445.split.us.split.us
.Ltmp654:                               # EH_LABEL
	b	.LBB10_219
.LBB10_215:                             # %lpad445.split.split.us
.Ltmp649:                               # EH_LABEL
	b	.LBB10_219
.LBB10_216:                             # %lpad363.split.us.split.us
.Ltmp644:                               # EH_LABEL
	b	.LBB10_219
.LBB10_217:                             # %lpad363.split.split.us
.Ltmp639:                               # EH_LABEL
	b	.LBB10_219
.LBB10_218:                             # %lpad180.loopexit.split.us
.Ltmp624:                               # EH_LABEL
.LBB10_219:                             # %ehcleanup553
	move	$s1, $a0
	addi.d	$s2, $fp, 48
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3setIiSt4lessIiESaIiEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_, .Lfunc_end10-_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiEC2ERK3BoxS4_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp583-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin6         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp590-.Lfunc_begin6         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp587-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp588-.Ltmp587              #   Call between .Ltmp587 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin6         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp589-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp591-.Ltmp589              #   Call between .Ltmp589 and .Ltmp591
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp595-.Lfunc_begin6         #     jumps to .Ltmp595
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp593-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp594-.Ltmp593              #   Call between .Ltmp593 and .Ltmp594
	.uleb128 .Ltmp595-.Lfunc_begin6         #     jumps to .Ltmp595
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp596-.Ltmp594              #   Call between .Ltmp594 and .Ltmp596
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp596-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp621-.Ltmp596              #   Call between .Ltmp596 and .Ltmp621
	.uleb128 .Ltmp624-.Lfunc_begin6         #     jumps to .Ltmp624
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp623-.Ltmp622              #   Call between .Ltmp622 and .Ltmp623
	.uleb128 .Ltmp624-.Lfunc_begin6         #     jumps to .Ltmp624
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp623-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp630-.Ltmp623              #   Call between .Ltmp623 and .Ltmp630
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp634-.Lfunc_begin6         #     jumps to .Ltmp634
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.uleb128 .Ltmp634-.Lfunc_begin6         #     jumps to .Ltmp634
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp627-.Ltmp633              #   Call between .Ltmp633 and .Ltmp627
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin6         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp625-.Ltmp628              #   Call between .Ltmp628 and .Ltmp625
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp625-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp626-.Ltmp625              #   Call between .Ltmp625 and .Ltmp626
	.uleb128 .Ltmp629-.Lfunc_begin6         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp642-.Ltmp626              #   Call between .Ltmp626 and .Ltmp642
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin6         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp640-.Ltmp643              #   Call between .Ltmp643 and .Ltmp640
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp640-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp641-.Ltmp640              #   Call between .Ltmp640 and .Ltmp641
	.uleb128 .Ltmp644-.Lfunc_begin6         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp637-.Ltmp641              #   Call between .Ltmp641 and .Ltmp637
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp638-.Ltmp637              #   Call between .Ltmp637 and .Ltmp638
	.uleb128 .Ltmp639-.Lfunc_begin6         #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp638-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp635-.Ltmp638              #   Call between .Ltmp638 and .Ltmp635
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp635-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp636-.Ltmp635              #   Call between .Ltmp635 and .Ltmp636
	.uleb128 .Ltmp639-.Lfunc_begin6         #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp652-.Ltmp636              #   Call between .Ltmp636 and .Ltmp652
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp652-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp653-.Ltmp652              #   Call between .Ltmp652 and .Ltmp653
	.uleb128 .Ltmp654-.Lfunc_begin6         #     jumps to .Ltmp654
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp653-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp650-.Ltmp653              #   Call between .Ltmp653 and .Ltmp650
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp650-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp651-.Ltmp650              #   Call between .Ltmp650 and .Ltmp651
	.uleb128 .Ltmp654-.Lfunc_begin6         #     jumps to .Ltmp654
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp647-.Ltmp651              #   Call between .Ltmp651 and .Ltmp647
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp647-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp648-.Ltmp647              #   Call between .Ltmp647 and .Ltmp648
	.uleb128 .Ltmp649-.Lfunc_begin6         #     jumps to .Ltmp649
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp645-.Ltmp648              #   Call between .Ltmp648 and .Ltmp645
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp649-.Lfunc_begin6         #     jumps to .Ltmp649
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp646-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp660-.Ltmp646              #   Call between .Ltmp646 and .Ltmp660
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp664-.Lfunc_begin6         #     jumps to .Ltmp664
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp661-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp662-.Ltmp661              #   Call between .Ltmp661 and .Ltmp662
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp662-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp663-.Ltmp662              #   Call between .Ltmp662 and .Ltmp663
	.uleb128 .Ltmp664-.Lfunc_begin6         #     jumps to .Ltmp664
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp655-.Ltmp663              #   Call between .Ltmp663 and .Ltmp655
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp655-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp656-.Ltmp655              #   Call between .Ltmp655 and .Ltmp656
	.uleb128 .Ltmp659-.Lfunc_begin6         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp656-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp657-.Ltmp656              #   Call between .Ltmp656 and .Ltmp657
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin6         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp658-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp665-.Ltmp658              #   Call between .Ltmp658 and .Ltmp665
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp665-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp666-.Ltmp665              #   Call between .Ltmp665 and .Ltmp666
	.uleb128 .Ltmp667-.Lfunc_begin6         #     jumps to .Ltmp667
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Lfunc_end10-.Ltmp666          #   Call between .Ltmp666 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.LCPI11_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.section	.text._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"axG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.weak	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.p2align	5
	.type	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,@function
_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_: # @_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1072
	.cfi_def_cfa_offset 1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1008                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1000                  # 8-byte Folded Spill
	st.d	$s7, $sp, 992                   # 8-byte Folded Spill
	st.d	$s8, $sp, 984                   # 8-byte Folded Spill
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
	move	$s1, $a1
	ld.w	$s8, $a0, 148
	ld.w	$a6, $a0, 156
	ld.w	$a7, $a0, 164
	ld.w	$t0, $a0, 168
	ld.w	$a5, $a0, 172
	ld.w	$t1, $a0, 176
	ld.w	$a1, $a0, 180
	ld.w	$t2, $a0, 184
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a2, $a0, 188
	slt	$a3, $t0, $a5
	xor	$a4, $a5, $s8
	sltui	$a4, $a4, 1
	and	$a3, $a3, $a4
	add.w	$a4, $a5, $a3
	slt	$a0, $t1, $a1
	st.d	$a6, $sp, 200                   # 8-byte Folded Spill
	xor	$a3, $a1, $a6
	sltui	$a3, $a3, 1
	and	$a0, $a0, $a3
	add.w	$a3, $a1, $a0
	slt	$a0, $t2, $a2
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	xor	$a1, $a2, $a7
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	add.w	$a2, $a2, $a0
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	sub.d	$a0, $a4, $t0
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a1, $a3, $t1
	move	$s3, $t2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t2
	mul.d	$a0, $a1, $a0
	mul.w	$s0, $a0, $a2
.Ltmp668:                               # EH_LABEL
	ori	$a2, $zero, 27
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj)
	jirl	$ra, $ra, 0
.Ltmp669:                               # EH_LABEL
# %bb.1:                                # %try.cont
	bltz	$s0, .LBB11_40
# %bb.2:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s0, .LBB11_6
# %bb.3:                                # %if.then.i.i.i.i3.i
	slli.d	$s2, $s0, 2
.Ltmp694:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp695:                               # EH_LABEL
# %bb.4:                                # %call5.i.i.i2.i.i.noexc
	st.d	$a1, $sp, 576
	alsl.d	$a0, $s0, $a1, 2
	st.d	$a0, $sp, 592
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	beq	$s0, $a2, .LBB11_7
# %bb.5:                                # %if.end.i.i.i.i.i.i
	add.d	$fp, $a1, $s2
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB11_7
.LBB11_6:                               # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
	move	$a0, $zero
	st.d	$zero, $sp, 592
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 576
.LBB11_7:                               # %invoke.cont83
	st.d	$a0, $sp, 584
	addi.w	$fp, $s0, 1
	st.d	$zero, $sp, 560
	slli.d	$s2, $fp, 2
.Ltmp696:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.8:                                # %call5.i.i.i2.i.i.noexc95
	move	$s7, $a0
	st.d	$a0, $sp, 552
	alsl.d	$a0, $fp, $a0, 2
	st.d	$a0, $sp, 568
	st.w	$zero, $s7, 0
	addi.d	$a0, $s7, 4
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB11_11
# %bb.9:                                # %if.then.i.i.i.i3.i101
	add.d	$fp, $s7, $s2
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 560
	alsl.w	$fp, $s0, $s0, 1
	slli.d	$s2, $fp, 2
.Ltmp699:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.10:                               # %call5.i.i.i2.i.i.noexc114
	st.d	$a0, $sp, 528
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 544
	st.w	$zero, $a0, 0
	addi.d	$a1, $a0, 4
	add.d	$fp, $a0, $s2
	addi.d	$a2, $s2, -4
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB11_12
.LBB11_11:                              # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i111
	move	$fp, $zero
	st.d	$a0, $sp, 560
	st.d	$zero, $sp, 544
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 528
.LBB11_12:                              # %invoke.cont97
	addi.w	$a1, $s8, 1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a3, $a0, 1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a2, $a1
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	mul.w	$a0, $a0, $a3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 536
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB11_22
# %bb.13:                               # %for.cond107.preheader.lr.ph
	move	$s0, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB11_37
# %bb.14:                               # %for.cond107.preheader.lr.ph
	move	$a5, $s3
	move	$s3, $s0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB11_23
# %bb.15:                               # %for.cond107.preheader.us.us.preheader
	move	$s3, $zero
	move	$s0, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 96
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a3
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 336                  # 16-byte Folded Spill
	mul.d	$a0, $a5, $a3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	mul.d	$s2, $a0, $a2
	mul.d	$a0, $a3, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI11_0)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	addi.w	$s4, $zero, -1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 320                  # 16-byte Folded Spill
	vrepli.b	$vr0, -1
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vrepli.w	$vr0, 1
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB11_16:                              # %for.cond107.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_17 Depth 2
                                        #       Child Loop BB11_18 Depth 3
	vreplgr2vr.w	$vr0, $a5
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	vadd.w	$vr1, $vr0, $vr1
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vmul.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr1, $sp, 256                  # 16-byte Folded Spill
	vsle.w	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	slt	$a0, $a0, $a5
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_17:                              # %for.cond115.preheader.us.us.us
                                        #   Parent Loop BB11_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_18 Depth 3
	or	$a0, $s5, $a5
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	slt	$a0, $a3, $s5
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	and	$s6, $a0, $a1
	addi.w	$a1, $s5, -1
	slt	$a2, $a3, $a1
	xori	$a2, $a2, 1
	addi.w	$a4, $s5, 1
	slt	$a3, $s5, $a3
	vreplgr2vr.w	$vr0, $a2
	vreplgr2vr.w	$vr1, $a1
	vreplgr2vr.w	$vr2, $a0
	vreplgr2vr.w	$vr3, $s5
	vreplgr2vr.w	$vr4, $a3
	st.d	$a4, $sp, 280                   # 8-byte Folded Spill
	vreplgr2vr.w	$vr5, $a4
	vld	$vr6, $sp, 224                  # 16-byte Folded Reload
	vand.v	$vr4, $vr4, $vr6
	vand.v	$vr2, $vr2, $vr6
	vand.v	$vr0, $vr0, $vr6
	vld	$vr7, $sp, 256                  # 16-byte Folded Reload
	vor.v	$vr6, $vr1, $vr7
	vst	$vr6, $sp, 496                  # 16-byte Folded Spill
	vld	$vr8, $sp, 240                  # 16-byte Folded Reload
	vadd.w	$vr1, $vr1, $vr8
	vld	$vr6, $sp, 160                  # 16-byte Folded Reload
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 480                  # 16-byte Folded Spill
	vor.v	$vr1, $vr3, $vr7
	vst	$vr1, $sp, 464                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr3, $vr8
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 448                  # 16-byte Folded Spill
	vor.v	$vr1, $vr5, $vr7
	vst	$vr1, $sp, 432                  # 16-byte Folded Spill
	vadd.w	$vr1, $vr5, $vr8
	vmul.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 416                  # 16-byte Folded Spill
	alsl.w	$fp, $s0, $s0, 1
	vslli.w	$vr0, $vr0, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vslli.w	$vr0, $vr2, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vslli.w	$vr0, $vr4, 31
	vsrai.w	$vr0, $vr0, 31
	vst	$vr0, $sp, 368                  # 16-byte Folded Spill
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_18:                              # %for.body120.us.us.us
                                        #   Parent Loop BB11_16 Depth=1
                                        #     Parent Loop BB11_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s7, $a5
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	or	$a0, $a0, $s1
	slt	$a0, $s4, $a0
	slt	$a1, $s8, $s1
	xori	$a1, $a1, 1
	and	$a1, $a1, $s6
	andi	$a1, $a1, 1
	add.w	$a2, $s2, $s1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s4, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s4, $a0
	or	$a0, $a1, $a0
.Ltmp702:                               # EH_LABEL
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.19:                               # %invoke.cont123.us.us.us
                                        #   in Loop: Header=BB11_18 Depth=3
	ld.d	$a1, $sp, 576
	slli.d	$a2, $s0, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ld.d	$a0, $sp, 528
	bstrpick.d	$a1, $fp, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s1, $a0, $a1
	addi.d	$a1, $fp, 1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	stx.w	$s5, $a0, $a1
	addi.d	$a1, $fp, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	move	$a5, $s7
	stx.w	$s7, $a0, $a1
	ld.d	$s7, $sp, 552
	slt	$a0, $s8, $s1
	xori	$a1, $a0, 1
	stx.w	$s3, $s7, $a2
	slt	$a2, $s1, $s8
	addi.w	$a3, $s1, -1
	slt	$a0, $s8, $a3
	xori	$a4, $a0, 1
	vld	$vr6, $sp, 320                  # 16-byte Folded Reload
	vinsgr2vr.w	$vr6, $s3, 0
	addi.w	$a0, $s1, 1
	vreplgr2vr.w	$vr4, $a3
	vreplgr2vr.w	$vr5, $a4
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	vreplgr2vr.w	$vr2, $s1
	vreplgr2vr.w	$vr3, $a1
	vld	$vr13, $sp, 496                 # 16-byte Folded Reload
	vor.v	$vr7, $vr13, $vr4
	vld	$vr11, $sp, 304                 # 16-byte Folded Reload
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr7, $vr7, $vr5
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr14, $sp, 480                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr4, $vr14
	vbitsel.v	$vr7, $vr11, $vr8, $vr7
	vld	$vr10, $sp, 336                 # 16-byte Folded Reload
	vslt.w	$vr8, $vr7, $vr10
	vsrli.w	$vr7, $vr7, 31
	vandn.v	$vr7, $vr7, $vr8
	vld	$vr12, $sp, 288                 # 16-byte Folded Reload
	vand.v	$vr7, $vr7, $vr12
	vadd.w	$vr7, $vr6, $vr7
	vor.v	$vr8, $vr13, $vr2
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr3
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr2, $vr14
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr8, $vr10
	vsrli.w	$vr8, $vr8, 31
	vandn.v	$vr8, $vr8, $vr9
	vand.v	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr8
	vor.v	$vr8, $vr13, $vr0
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr1
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr0, $vr14
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr8, $vr10
	vsrli.w	$vr8, $vr8, 31
	vandn.v	$vr8, $vr8, $vr9
	vand.v	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr8
	vld	$vr8, $sp, 400                  # 16-byte Folded Reload
	vbitsel.v	$vr6, $vr6, $vr7, $vr8
	vld	$vr13, $sp, 464                 # 16-byte Folded Reload
	vor.v	$vr7, $vr13, $vr4
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr7, $vr7, $vr5
	vslli.w	$vr7, $vr7, 31
	vsrai.w	$vr7, $vr7, 31
	vld	$vr14, $sp, 448                 # 16-byte Folded Reload
	vadd.w	$vr8, $vr4, $vr14
	vbitsel.v	$vr7, $vr11, $vr8, $vr7
	vslt.w	$vr8, $vr7, $vr10
	vsrli.w	$vr7, $vr7, 31
	vandn.v	$vr7, $vr7, $vr8
	vand.v	$vr7, $vr7, $vr12
	vadd.w	$vr7, $vr6, $vr7
	vor.v	$vr8, $vr13, $vr2
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr3
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr2, $vr14
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr8, $vr10
	vsrli.w	$vr8, $vr8, 31
	vandn.v	$vr8, $vr8, $vr9
	vand.v	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr8
	vor.v	$vr8, $vr13, $vr0
	vslt.w	$vr8, $vr11, $vr8
	vand.v	$vr8, $vr8, $vr1
	vslli.w	$vr8, $vr8, 31
	vsrai.w	$vr8, $vr8, 31
	vadd.w	$vr9, $vr0, $vr14
	vbitsel.v	$vr8, $vr11, $vr9, $vr8
	vslt.w	$vr9, $vr8, $vr10
	vsrli.w	$vr8, $vr8, 31
	vandn.v	$vr8, $vr8, $vr9
	vand.v	$vr8, $vr8, $vr12
	vadd.w	$vr7, $vr7, $vr8
	vld	$vr8, $sp, 384                  # 16-byte Folded Reload
	vbitsel.v	$vr6, $vr6, $vr7, $vr8
	vld	$vr8, $sp, 432                  # 16-byte Folded Reload
	vor.v	$vr7, $vr8, $vr4
	vslt.w	$vr7, $vr11, $vr7
	vand.v	$vr5, $vr7, $vr5
	vslli.w	$vr5, $vr5, 31
	vsrai.w	$vr5, $vr5, 31
	vld	$vr7, $sp, 416                  # 16-byte Folded Reload
	vadd.w	$vr4, $vr4, $vr7
	vbitsel.v	$vr4, $vr11, $vr4, $vr5
	vslt.w	$vr5, $vr4, $vr10
	vsrli.w	$vr4, $vr4, 31
	vandn.v	$vr4, $vr4, $vr5
	vand.v	$vr4, $vr4, $vr12
	vadd.w	$vr4, $vr6, $vr4
	vor.v	$vr5, $vr8, $vr2
	vslt.w	$vr5, $vr11, $vr5
	vand.v	$vr3, $vr5, $vr3
	vslli.w	$vr3, $vr3, 31
	vsrai.w	$vr3, $vr3, 31
	vadd.w	$vr2, $vr2, $vr7
	vbitsel.v	$vr2, $vr11, $vr2, $vr3
	vslt.w	$vr3, $vr2, $vr10
	vsrli.w	$vr2, $vr2, 31
	vandn.v	$vr2, $vr2, $vr3
	vand.v	$vr2, $vr2, $vr12
	vadd.w	$vr2, $vr4, $vr2
	vor.v	$vr3, $vr8, $vr0
	vslt.w	$vr3, $vr11, $vr3
	vand.v	$vr1, $vr3, $vr1
	vslli.w	$vr1, $vr1, 31
	vsrai.w	$vr1, $vr1, 31
	vadd.w	$vr0, $vr0, $vr7
	vbitsel.v	$vr0, $vr11, $vr0, $vr1
	vslt.w	$vr1, $vr0, $vr10
	vsrli.w	$vr0, $vr0, 31
	vandn.v	$vr0, $vr0, $vr1
	vand.v	$vr0, $vr0, $vr12
	vadd.w	$vr0, $vr2, $vr0
	vld	$vr1, $sp, 368                  # 16-byte Folded Reload
	vbitsel.v	$vr0, $vr6, $vr0, $vr1
	vinsgr2vr.w	$vr0, $zero, 3
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$s3, $vr0, 0
	addi.w	$s0, $s0, 1
	addi.w	$fp, $fp, 3
	move	$s1, $a0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB11_18
# %bb.20:                               # %for.cond115.for.cond.cleanup119_crit_edge.us.us.us
                                        #   in Loop: Header=BB11_17 Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	move	$s5, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB11_17
# %bb.21:                               # %for.cond107.for.cond.cleanup111_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB11_16 Depth=1
	addi.w	$a5, $a5, 1
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$a5, $a0, .LBB11_16
	b	.LBB11_23
.LBB11_22:
	move	$s0, $zero
	move	$s3, $zero
.LBB11_23:                              # %for.cond.cleanup
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB11_38
.LBB11_24:                              # %if.end190
	slli.d	$a0, $a0, 2
	stx.w	$s3, $s7, $a0
.Ltmp710:                               # EH_LABEL
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	addi.d	$a2, $sp, 552
	addi.d	$a3, $sp, 528
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	st.d	$a4, $sp, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_)
	jirl	$ra, $ra, 0
.Ltmp711:                               # EH_LABEL
# %bb.25:                               # %.noexc143
	ld.w	$a0, $sp, 680
	blez	$a0, .LBB11_29
# %bb.26:                               # %for.body.i.preheader
	move	$fp, $zero
	.p2align	4, , 16
.LBB11_27:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp713:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi)
	jirl	$ra, $ra, 0
.Ltmp714:                               # EH_LABEL
# %bb.28:                               # %.noexc144
                                        #   in Loop: Header=BB11_27 Depth=1
	ld.w	$a0, $sp, 680
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB11_27
.LBB11_29:                              # %invoke.cont193
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB11_31
# %bb.30:                               # %if.then.i.i.i
	ld.d	$a1, $sp, 544
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_31:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 552
	beqz	$a0, .LBB11_33
# %bb.32:                               # %if.then.i.i.i146
	ld.d	$a1, $sp, 568
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_33:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit151
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB11_35
# %bb.34:                               # %if.then.i.i.i153
	ld.d	$a1, $sp, 592
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_35:
	move	$a0, $zero
.LBB11_36:
	ld.d	$s8, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 992                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.LBB11_37:
	move	$s3, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB11_24
.LBB11_38:                              # %if.then184
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp705:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a1, $a0, %pc_lo12(.L.str.78)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.39:                               # %invoke.cont187
.Ltmp708:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
	b	.LBB11_54
.LBB11_40:                              # %if.then.i.i77
.Ltmp716:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp717:                               # EH_LABEL
# %bb.41:                               # %.noexc
.LBB11_42:                              # %lpad186
.Ltmp707:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	b	.LBB11_70
.LBB11_43:                              # %lpad96
.Ltmp701:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_72
.LBB11_44:                              # %lpad89
.Ltmp698:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_74
.LBB11_45:                              # %lpad57
.Ltmp670:                               # EH_LABEL
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	move	$fp, $a0
	bne	$a1, $a2, .LBB11_76
# %bb.46:                               # %catch
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp671:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp672:                               # EH_LABEL
# %bb.47:                               # %invoke.cont60
.Ltmp674:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a1, $a0, %pc_lo12(.L.str.76)
	addi.d	$a0, $sp, 608
	ori	$a2, $zero, 99
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp675:                               # EH_LABEL
# %bb.48:                               # %invoke.cont62
.Ltmp676:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp677:                               # EH_LABEL
# %bb.49:                               # %invoke.cont64
.Ltmp678:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a1, $a1, %pc_lo12(.L.str.77)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.50:                               # %invoke.cont66
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a1, $a0
.Ltmp680:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp681:                               # EH_LABEL
# %bb.51:                               # %invoke.cont69
.Ltmp683:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 608
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv)
	jirl	$ra, $ra, 0
.Ltmp684:                               # EH_LABEL
# %bb.52:                               # %invoke.cont72
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp686:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp687:                               # EH_LABEL
# %bb.53:                               # %invoke.cont74
.Ltmp689:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp690:                               # EH_LABEL
.LBB11_54:                              # %unreachable
.LBB11_55:                              # %lpad75
.Ltmp691:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_57
.LBB11_56:                              # %lpad73
.Ltmp688:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
.LBB11_57:                              # %ehcleanup
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB11_62
# %bb.58:                               # %if.then.i.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_62
.LBB11_59:                              # %lpad71
.Ltmp685:                               # EH_LABEL
	b	.LBB11_61
.LBB11_60:                              # %lpad61
.Ltmp682:                               # EH_LABEL
.LBB11_61:                              # %ehcleanup77
	move	$fp, $a0
.LBB11_62:                              # %ehcleanup77
	addi.d	$a0, $sp, 608
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB11_64
.LBB11_63:                              # %lpad59
.Ltmp673:                               # EH_LABEL
	move	$fp, $a0
.LBB11_64:                              # %ehcleanup78
.Ltmp692:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp693:                               # EH_LABEL
	b	.LBB11_76
.LBB11_65:                              # %lpad189.loopexit.split-lp
.Ltmp712:                               # EH_LABEL
	b	.LBB11_69
.LBB11_66:                              # %lpad82
.Ltmp718:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_76
.LBB11_67:                              # %lpad189.loopexit
.Ltmp715:                               # EH_LABEL
	b	.LBB11_69
.LBB11_68:                              # %lpad122.split.us.split.us.split.us
.Ltmp704:                               # EH_LABEL
.LBB11_69:                              # %ehcleanup194
	move	$fp, $a0
.LBB11_70:                              # %ehcleanup194
	ld.d	$a0, $sp, 528
	beqz	$a0, .LBB11_72
# %bb.71:                               # %if.then.i.i.i160
	ld.d	$a1, $sp, 544
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_72:                              # %ehcleanup197
	ld.d	$a0, $sp, 552
	beqz	$a0, .LBB11_74
# %bb.73:                               # %if.then.i.i.i167
	ld.d	$a1, $sp, 568
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_74:                              # %ehcleanup199
	ld.d	$a0, $sp, 576
	beqz	$a0, .LBB11_76
# %bb.75:                               # %if.then.i.i.i174
	ld.d	$a1, $sp, 592
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_76:                              # %ehcleanup202
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp719:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp720:                               # EH_LABEL
# %bb.77:                               # %invoke.cont211
.Ltmp721:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp722:                               # EH_LABEL
# %bb.78:                               # %invoke.cont213
.Ltmp723:                               # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	ori	$a2, $zero, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.79:                               # %invoke.cont215
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB11_87
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB11_82
# %bb.81:                               # %if.then.i2.i.i
	ld.bu	$a0, $s0, 67
	b	.LBB11_84
.LBB11_82:                              # %if.end.i.i.i
.Ltmp725:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp726:                               # EH_LABEL
# %bb.83:                               # %.noexc194
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp727:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp728:                               # EH_LABEL
.LBB11_84:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp729:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.85:                               # %call1.i.noexc
.Ltmp731:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp732:                               # EH_LABEL
# %bb.86:                               # %try.cont221
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB11_36
.LBB11_87:                              # %if.then.i.i.i192
.Ltmp733:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp734:                               # EH_LABEL
# %bb.88:                               # %.noexc193
.LBB11_89:                              # %lpad210
.Ltmp735:                               # EH_LABEL
	move	$fp, $a0
.Ltmp736:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp737:                               # EH_LABEL
# %bb.90:                               # %invoke.cont220
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_91:                              # %terminate.lpad
.Ltmp738:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_, .Lfunc_end11-_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,"aG",@progbits,_ZN6miniFE25generate_matrix_structureINS_9CSRMatrixIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERS4_,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp668-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp669-.Ltmp668              #   Call between .Ltmp668 and .Ltmp669
	.uleb128 .Ltmp670-.Lfunc_begin7         #     jumps to .Ltmp670
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp694-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp695-.Ltmp694              #   Call between .Ltmp694 and .Ltmp695
	.uleb128 .Ltmp718-.Lfunc_begin7         #     jumps to .Ltmp718
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp695-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp696-.Ltmp695              #   Call between .Ltmp695 and .Ltmp696
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin7         #     jumps to .Ltmp698
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp697-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp699-.Ltmp697              #   Call between .Ltmp697 and .Ltmp699
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin7         #     jumps to .Ltmp701
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp700-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp702-.Ltmp700              #   Call between .Ltmp700 and .Ltmp702
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin7         #     jumps to .Ltmp704
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp710-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp711-.Ltmp710              #   Call between .Ltmp710 and .Ltmp711
	.uleb128 .Ltmp712-.Lfunc_begin7         #     jumps to .Ltmp712
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp713-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp714-.Ltmp713              #   Call between .Ltmp713 and .Ltmp714
	.uleb128 .Ltmp715-.Lfunc_begin7         #     jumps to .Ltmp715
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp714-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp705-.Ltmp714              #   Call between .Ltmp714 and .Ltmp705
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin7         #     jumps to .Ltmp707
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp708-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp712-.Lfunc_begin7         #     jumps to .Ltmp712
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp716-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp717-.Ltmp716              #   Call between .Ltmp716 and .Ltmp717
	.uleb128 .Ltmp718-.Lfunc_begin7         #     jumps to .Ltmp718
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp717-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp671-.Ltmp717              #   Call between .Ltmp717 and .Ltmp671
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp671-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp672-.Ltmp671              #   Call between .Ltmp671 and .Ltmp672
	.uleb128 .Ltmp673-.Lfunc_begin7         #     jumps to .Ltmp673
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp674-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Ltmp679-.Ltmp674              #   Call between .Ltmp674 and .Ltmp679
	.uleb128 .Ltmp682-.Lfunc_begin7         #     jumps to .Ltmp682
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp679-.Lfunc_begin7         # >> Call Site 18 <<
	.uleb128 .Ltmp680-.Ltmp679              #   Call between .Ltmp679 and .Ltmp680
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp680-.Lfunc_begin7         # >> Call Site 19 <<
	.uleb128 .Ltmp681-.Ltmp680              #   Call between .Ltmp680 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin7         #     jumps to .Ltmp682
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp683-.Lfunc_begin7         # >> Call Site 20 <<
	.uleb128 .Ltmp684-.Ltmp683              #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin7         #     jumps to .Ltmp685
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp684-.Lfunc_begin7         # >> Call Site 21 <<
	.uleb128 .Ltmp686-.Ltmp684              #   Call between .Ltmp684 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin7         # >> Call Site 22 <<
	.uleb128 .Ltmp687-.Ltmp686              #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin7         #     jumps to .Ltmp688
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp689-.Lfunc_begin7         # >> Call Site 23 <<
	.uleb128 .Ltmp690-.Ltmp689              #   Call between .Ltmp689 and .Ltmp690
	.uleb128 .Ltmp691-.Lfunc_begin7         #     jumps to .Ltmp691
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp690-.Lfunc_begin7         # >> Call Site 24 <<
	.uleb128 .Ltmp692-.Ltmp690              #   Call between .Ltmp690 and .Ltmp692
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp692-.Lfunc_begin7         # >> Call Site 25 <<
	.uleb128 .Ltmp693-.Ltmp692              #   Call between .Ltmp692 and .Ltmp693
	.uleb128 .Ltmp738-.Lfunc_begin7         #     jumps to .Ltmp738
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp693-.Lfunc_begin7         # >> Call Site 26 <<
	.uleb128 .Ltmp719-.Ltmp693              #   Call between .Ltmp693 and .Ltmp719
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp719-.Lfunc_begin7         # >> Call Site 27 <<
	.uleb128 .Ltmp732-.Ltmp719              #   Call between .Ltmp719 and .Ltmp732
	.uleb128 .Ltmp735-.Lfunc_begin7         #     jumps to .Ltmp735
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin7         # >> Call Site 28 <<
	.uleb128 .Ltmp733-.Ltmp732              #   Call between .Ltmp732 and .Ltmp733
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp733-.Lfunc_begin7         # >> Call Site 29 <<
	.uleb128 .Ltmp734-.Ltmp733              #   Call between .Ltmp733 and .Ltmp734
	.uleb128 .Ltmp735-.Lfunc_begin7         #     jumps to .Ltmp735
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp736-.Lfunc_begin7         # >> Call Site 30 <<
	.uleb128 .Ltmp737-.Ltmp736              #   Call between .Ltmp736 and .Ltmp737
	.uleb128 .Ltmp738-.Lfunc_begin7         #     jumps to .Ltmp738
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp737-.Lfunc_begin7         # >> Call Site 31 <<
	.uleb128 .Lfunc_end11-.Ltmp737          #   Call between .Ltmp737 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp739:                               # TypeInfo 2
	.word	.L_ZTISt9exception.DW.stub-.Ltmp739
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,"axG",@progbits,_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,comdat
	.weak	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE # -- Begin function _ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.p2align	5
	.type	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE,@function
_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE: # @_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	move	$fp, $a0
	ld.d	$s5, $a0, 16
	ld.d	$s2, $a0, 8
	move	$s1, $a5
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	sub.d	$a1, $s5, $s2
	beq	$s5, $s2, .LBB12_2
# %bb.1:                                # %cond.true6
	ld.w	$s6, $s2, 0
	add.d	$a0, $s2, $a1
	ld.w	$s7, $a0, -4
	ld.d	$a0, $s1, 24
	addi.d	$s3, $s1, 8
	srai.d	$s4, $a1, 2
	bne	$a0, $s3, .LBB12_3
	b	.LBB12_24
.LBB12_2:
	move	$s6, $zero
	addi.w	$s7, $zero, -1
	ld.d	$a0, $s1, 24
	addi.d	$s3, $s1, 8
	srai.d	$s4, $a1, 2
	beq	$a0, $s3, .LBB12_24
.LBB12_3:                               # %for.body.lr.ph
	ld.d	$a2, $fp, 104
	ld.d	$a3, $fp, 80
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 8
	ld.d	$s0, $fp, 32
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a1, $a2, 16
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a3, 8
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	vldi	$vr3, -912
	movgr2fr.d	$fs1, $zero
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_5 Depth=1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	beq	$a0, $s3, .LBB12_24
.LBB12_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_11 Depth 2
                                        #     Child Loop BB12_20 Depth 2
                                        #     Child Loop BB12_23 Depth 2
	ld.w	$a1, $a0, 32
	blt	$a1, $s6, .LBB12_4
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	blt	$s7, $a1, .LBB12_4
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.w	$a2, $a1, $s6
	slli.d	$a2, $a2, 3
	fstx.d	$fs0, $s8, $a2
	beq	$s5, $s2, .LBB12_13
# %bb.8:                                # %if.then.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a2, $s2, 0
	sub.w	$a2, $a1, $a2
	bgeu	$a2, $s4, .LBB12_10
# %bb.9:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	slli.d	$a3, $a2, 2
	ldx.w	$a3, $s2, $a3
	beq	$a3, $a1, .LBB12_16
.LBB12_10:                              # %while.body.i.i.i.i.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a3, $s4
	move	$a2, $s2
	.p2align	4, , 16
.LBB12_11:                              # %while.body.i.i.i.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a4, $a3, 1
	slli.d	$a5, $a4, 2
	ldx.w	$a5, $a2, $a5
	alsl.d	$a6, $a4, $a2, 2
	slt	$a5, $a5, $a1
	addi.d	$a6, $a6, 4
	nor	$a7, $a4, $zero
	add.d	$a3, $a3, $a7
	maskeqz	$a6, $a6, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a3, $a3, $a5
	masknez	$a4, $a4, $a5
	or	$a3, $a3, $a4
	or	$a2, $a6, $a2
	bgtz	$a3, .LBB12_11
# %bb.12:                               # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	bne	$s5, $a2, .LBB12_14
	b	.LBB12_4
.LBB12_13:                              #   in Loop: Header=BB12_5 Depth=1
	move	$a2, $s2
	beq	$s5, $a2, .LBB12_4
.LBB12_14:                              # %lor.rhs.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.w	$a3, $a2, 0
	bne	$a3, $a1, .LBB12_4
# %bb.15:                               # %if.end35.i.i
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.d	$a2, $a2, $s2
	srai.d	$a2, $a2, 2
.LBB12_16:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit.i
                                        #   in Loop: Header=BB12_5 Depth=1
	alsl.d	$a3, $a2, $s0, 2
	slli.d	$a2, $a2, 2
	ld.w	$a3, $a3, 4
	ldx.w	$a2, $s0, $a2
	beq	$a3, $a2, .LBB12_4
# %bb.17:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.w	$a3, $a3, $a2
	ori	$a4, $zero, 4
	bgeu	$a3, $a4, .LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_5 Depth=1
	move	$a4, $zero
	b	.LBB12_22
.LBB12_19:                              # %vector.ph
                                        #   in Loop: Header=BB12_5 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a1, 1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 3
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a6, $a2, $a6, 2
	move	$a7, $a4
	.p2align	4, , 16
.LBB12_20:                              # %vector.body
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr1, $t0, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vseq.w	$vr1, $vr1, $vr0
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vsrai.d	$vr1, $vr1, 32
	vseq.w	$vr2, $vr2, $vr0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vand.v	$vr1, $vr1, $vr3
	vand.v	$vr2, $vr2, $vr3
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB12_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB12_5 Depth=1
	beq	$a4, $a3, .LBB12_4
.LBB12_22:                              # %for.body.i.preheader113
                                        #   in Loop: Header=BB12_5 Depth=1
	sub.d	$a3, $a3, $a4
	slli.d	$a5, $a4, 3
	alsl.d	$a5, $a2, $a5, 3
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	slli.d	$a4, $a4, 2
	alsl.d	$a2, $a2, $a4, 2
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB12_23:                              # %for.body.i
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a2, 0
	xor	$a4, $a4, $a1
	sltui	$a4, $a4, 1
	movgr2cf	$fcc0, $a4
	fsel	$fa0, $fs1, $fa3, $fcc0
	fst.d	$fa0, $a5, 0
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB12_23
	b	.LBB12_4
.LBB12_24:                              # %for.cond25.preheader
	beq	$s5, $s2, .LBB12_51
# %bb.25:                               # %for.body29.lr.ph
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	ld.d	$a2, $s1, 16
	sub.d	$a3, $a0, $s2
	srai.d	$a3, $a3, 2
	ld.d	$a4, $fp, 32
	ld.d	$a5, $fp, 80
	ld.d	$a6, $fp, 104
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $a7, 8
	movgr2fr.d	$fa0, $zero
	ori	$t0, $zero, 16
	ori	$t1, $zero, 24
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_26:                              # %for.cond.cleanup46
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.d	$t2, $a1, 3
	fldx.d	$fa2, $a7, $t2
	fmul.d	$fa1, $fs0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $a7, $t2
.LBB12_27:                              # %cleanup
                                        #   in Loop: Header=BB12_28 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB12_51
.LBB12_28:                              # %for.body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_30 Depth 2
                                        #     Child Loop BB12_37 Depth 2
                                        #     Child Loop BB12_46 Depth 2
                                        #       Child Loop BB12_47 Depth 3
	slli.d	$t2, $a1, 2
	ldx.w	$t2, $s2, $t2
	beqz	$a2, .LBB12_33
# %bb.29:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB12_28 Depth=1
	move	$t4, $a2
	move	$t3, $s3
	.p2align	4, , 16
.LBB12_30:                              # %while.body.i.i.i
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, 32
	slt	$t5, $t5, $t2
	masknez	$t6, $t4, $t5
	masknez	$t7, $t0, $t5
	maskeqz	$t8, $t1, $t5
	or	$t7, $t8, $t7
	ldx.d	$t4, $t4, $t7
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t6
	bnez	$t4, .LBB12_30
# %bb.31:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt18_Rb_tree_node_baseS7_RKi.exit.i.i
                                        #   in Loop: Header=BB12_28 Depth=1
	beq	$t3, $s3, .LBB12_33
# %bb.32:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB12_28 Depth=1
	ld.w	$t3, $t3, 32
	bge	$t2, $t3, .LBB12_27
.LBB12_33:                              # %if.end42
                                        #   in Loop: Header=BB12_28 Depth=1
	beq	$a0, $s2, .LBB12_39
# %bb.34:                               # %if.then.i
                                        #   in Loop: Header=BB12_28 Depth=1
	ld.w	$t3, $s2, 0
	sub.w	$t3, $t2, $t3
	bgeu	$t3, $a3, .LBB12_36
# %bb.35:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB12_28 Depth=1
	slli.d	$t4, $t3, 2
	ldx.w	$t4, $s2, $t4
	beq	$t4, $t2, .LBB12_42
.LBB12_36:                              # %while.body.i.i.i58.preheader
                                        #   in Loop: Header=BB12_28 Depth=1
	move	$t4, $a3
	move	$t3, $s2
	.p2align	4, , 16
.LBB12_37:                              # %while.body.i.i.i58
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t5, $t4, 1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $t3, $t6
	alsl.d	$t7, $t5, $t3, 2
	slt	$t6, $t6, $t2
	addi.d	$t7, $t7, 4
	nor	$t8, $t5, $zero
	add.d	$t4, $t4, $t8
	maskeqz	$t7, $t7, $t6
	masknez	$t3, $t3, $t6
	maskeqz	$t4, $t4, $t6
	masknez	$t5, $t5, $t6
	or	$t4, $t4, $t5
	or	$t3, $t7, $t3
	bgtz	$t4, .LBB12_37
# %bb.38:                               # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB12_28 Depth=1
	fmov.d	$fa1, $fa0
	bne	$a0, $t3, .LBB12_40
	b	.LBB12_26
	.p2align	4, , 16
.LBB12_39:                              #   in Loop: Header=BB12_28 Depth=1
	move	$t3, $s2
	fmov.d	$fa1, $fa0
	beq	$a0, $t3, .LBB12_26
.LBB12_40:                              # %lor.rhs.i
                                        #   in Loop: Header=BB12_28 Depth=1
	ld.w	$t4, $t3, 0
	fmov.d	$fa1, $fa0
	bne	$t4, $t2, .LBB12_26
# %bb.41:                               # %if.end35.i
                                        #   in Loop: Header=BB12_28 Depth=1
	sub.d	$t2, $t3, $s2
	srai.d	$t3, $t2, 2
.LBB12_42:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB12_28 Depth=1
	alsl.d	$t2, $t3, $a4, 2
	slli.d	$t4, $t3, 2
	ld.w	$t3, $t2, 4
	ldx.w	$t5, $a4, $t4
	fmov.d	$fa1, $fa0
	beq	$t3, $t5, .LBB12_26
# %bb.43:                               # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB12_28 Depth=1
	fmov.d	$fa1, $fa0
	beqz	$a2, .LBB12_26
# %bb.44:                               # %for.body47.preheader
                                        #   in Loop: Header=BB12_28 Depth=1
	move	$t2, $zero
	sub.w	$t3, $t3, $t5
	alsl.d	$t4, $t5, $a5, 2
	alsl.d	$t5, $t5, $a6, 3
	fmov.d	$fa1, $fa0
	b	.LBB12_46
	.p2align	4, , 16
.LBB12_45:                              # %for.inc61
                                        #   in Loop: Header=BB12_46 Depth=2
	addi.d	$t2, $t2, 1
	beq	$t2, $t3, .LBB12_26
.LBB12_46:                              # %for.body47
                                        #   Parent Loop BB12_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_47 Depth 3
	slli.d	$t6, $t2, 2
	ldx.w	$t6, $t4, $t6
	move	$t8, $a2
	move	$t7, $s3
	.p2align	4, , 16
.LBB12_47:                              # %while.body.i.i.i67
                                        #   Parent Loop BB12_28 Depth=1
                                        #     Parent Loop BB12_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$fp, $t8, 32
	slt	$fp, $fp, $t6
	masknez	$s0, $t8, $fp
	masknez	$s1, $t0, $fp
	maskeqz	$s5, $t1, $fp
	or	$s1, $s5, $s1
	ldx.d	$t8, $t8, $s1
	maskeqz	$t7, $t7, $fp
	or	$t7, $t7, $s0
	bnez	$t8, .LBB12_47
# %bb.48:                               # %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt18_Rb_tree_node_baseS7_RKi.exit.i.i77
                                        #   in Loop: Header=BB12_46 Depth=2
	beq	$t7, $s3, .LBB12_45
# %bb.49:                               # %lor.lhs.false.i.i80
                                        #   in Loop: Header=BB12_46 Depth=2
	ld.w	$t7, $t7, 32
	blt	$t6, $t7, .LBB12_45
# %bb.50:                               # %if.then57
                                        #   in Loop: Header=BB12_46 Depth=2
	slli.d	$t6, $t2, 3
	fldx.d	$fa2, $t5, $t6
	fadd.d	$fa1, $fa1, $fa2
	stx.d	$zero, $t5, $t6
	b	.LBB12_45
.LBB12_51:                              # %for.cond.cleanup
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end12:
	.size	_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE, .Lfunc_end12-_ZN6miniFE16impose_dirichletINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvNT_10ScalarTypeERS5_RT0_iiiRKSt3setINS5_17GlobalOrdinalTypeESt4lessISB_ESaISB_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"axG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.weak	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc # -- Begin function _ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.p2align	5
	.type	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,@function
_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc: # @_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	ld.d	$a4, $a0, 40
	ld.w	$a4, $a4, -4
	move	$s0, $a3
	srli.d	$a3, $a4, 32
	lu52i.d	$s7, $zero, 1107
	or	$a3, $a3, $s7
	movgr2fr.d	$fa0, $a3
	lu12i.w	$a3, 256
	lu52i.d	$a3, $a3, 1107
	movgr2fr.d	$fs3, $a3
	fsub.d	$fa0, $fa0, $fs3
	lu12i.w	$s6, 275200
	bstrins.d	$a4, $s6, 63, 32
	movgr2fr.d	$fa1, $a4
	fadd.d	$fs0, $fa1, $fa0
	lu52i.d	$a3, $zero, 1086
	movgr2fr.d	$fs1, $a3
	fcmp.clt.d	$fcc0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fs0
	movfr2gr.d	$a3, $fa0
	movcf2gr	$a4, $fcc0
	maskeqz	$a3, $a3, $a4
	fsub.d	$fa0, $fs0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	lu52i.d	$a6, $zero, -2048
	xor	$a5, $a5, $a6
	masknez	$a4, $a5, $a4
	or	$fp, $a3, $a4
	bnez	$a1, .LBB13_85
# %bb.1:                                # %if.then
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 16
	ld.d	$s2, $a0, 8
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp740:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp741:                               # EH_LABEL
# %bb.2:                                # %call2.i5.i.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	pcalau12i	$a2, %pc_hi20(.L.str.93)
	addi.d	$s5, $a2, %pc_lo12(.L.str.93)
	vld	$vr0, $s5, 0
	ld.b	$s4, $s5, 16
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
	addi.d	$s3, $sp, 32
	st.d	$s3, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
.Ltmp743:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp744:                               # EH_LABEL
# %bb.3:                                # %invoke.cont18
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_5
# %bb.4:                                # %if.then.i.i92
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_7
# %bb.6:                                # %if.then.i.i94
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp746:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp747:                               # EH_LABEL
# %bb.8:                                # %call2.i5.i.noexc110
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp749:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp750:                               # EH_LABEL
# %bb.9:                                # %invoke.cont31
	sub.d	$s8, $s1, $s2
	slli.d	$a1, $s8, 30
	srai.d	$a2, $a1, 32
	st.d	$s3, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.94)
	addi.d	$a1, $a1, %pc_lo12(.L.str.94)
	ld.d	$a3, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a3, $sp, 32
	st.w	$a1, $sp, 40
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 44
.Ltmp752:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp753:                               # EH_LABEL
# %bb.10:                               # %invoke.cont38
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_12
# %bb.11:                               # %if.then.i.i127
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_14
# %bb.13:                               # %if.then.i.i134
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp755:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp756:                               # EH_LABEL
# %bb.15:                               # %call2.i5.i.noexc150
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp758:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp759:                               # EH_LABEL
# %bb.16:                               # %invoke.cont53
	st.d	$s3, $sp, 16
	pcalau12i	$a1, %pc_hi20(.L.str.95)
	addi.d	$a1, $a1, %pc_lo12(.L.str.95)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	st.d	$a2, $sp, 32
	st.h	$a1, $sp, 40
	ori	$a1, $zero, 10
	st.d	$a1, $sp, 24
	st.b	$zero, $sp, 42
.Ltmp761:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp762:                               # EH_LABEL
# %bb.17:                               # %invoke.cont60
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_19
# %bb.18:                               # %if.then.i.i167
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_19:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_21
# %bb.20:                               # %if.then.i.i174
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp764:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp765:                               # EH_LABEL
# %bb.22:                               # %call2.i5.i.noexc190
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp767:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp768:                               # EH_LABEL
# %bb.23:                               # %invoke.cont88
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 80
.Ltmp770:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp771:                               # EH_LABEL
# %bb.24:                               # %call2.i5.i.noexc203
	srli.d	$s2, $s8, 2
	movgr2fr.w	$fa0, $s2
	ffint.d.w	$fs2, $fa0
	lu52i.d	$a1, $zero, 993
	movgr2fr.d	$fa0, $a1
	fmul.d	$fa1, $fs2, $fa0
	vldi	$vr2, -1008
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fa1, $fa1
	srli.d	$a1, $fp, 32
	or	$a1, $a1, $s7
	movgr2fr.d	$fa3, $a1
	fsub.d	$fa3, $fa3, $fs3
	move	$a1, $fp
	bstrins.d	$a1, $s6, 63, 32
	movgr2fr.d	$fa4, $a1
	fadd.d	$fa3, $fa4, $fa3
	fmul.d	$fa0, $fa3, $fa0
	fmul.d	$fa2, $fa0, $fa2
	fadd.d	$fa1, $fa1, $fa2
	vldi	$vr2, -992
	ld.d	$a1, $sp, 80
	fmul.d	$fa0, $fa0, $fa2
	fadd.d	$fa0, $fa0, $fa1
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.96)
	addi.d	$a2, $a2, %pc_lo12(.L.str.96)
	vld	$vr1, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp773:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp774:                               # EH_LABEL
# %bb.25:                               # %invoke.cont95
	ld.d	$a0, $sp, 16
	addi.d	$s6, $sp, 64
	beq	$a0, $s3, .LBB13_27
# %bb.26:                               # %if.then.i.i207
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_29
# %bb.28:                               # %if.then.i.i214
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_29:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp776:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp777:                               # EH_LABEL
# %bb.30:                               # %call2.i5.i.noexc230
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp779:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp780:                               # EH_LABEL
# %bb.31:                               # %invoke.cont110
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 24
	st.d	$a0, $sp, 80
.Ltmp782:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp783:                               # EH_LABEL
# %bb.32:                               # %call2.i5.i.noexc243
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.97)
	addi.d	$a2, $a2, %pc_lo12(.L.str.97)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp785:                               # EH_LABEL
	movgr2fr.d	$fa0, $zero
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp786:                               # EH_LABEL
# %bb.33:                               # %invoke.cont117
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_35
# %bb.34:                               # %if.then.i.i247
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_37
# %bb.36:                               # %if.then.i.i254
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_37:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp788:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp789:                               # EH_LABEL
# %bb.38:                               # %call2.i5.i.noexc270
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp791:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp792:                               # EH_LABEL
# %bb.39:                               # %invoke.cont134
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp794:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp795:                               # EH_LABEL
# %bb.40:                               # %call2.i5.i.noexc283
	add.w	$a1, $s8, $s2
	addi.w	$s2, $s2, 0
	slt	$a2, $a1, $s2
	maskeqz	$a1, $a1, $a2
	ld.d	$a3, $sp, 80
	masknez	$a2, $s2, $a2
	or	$a2, $a1, $a2
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	pcalau12i	$a1, %pc_hi20(.L.str.98)
	addi.d	$a1, $a1, %pc_lo12(.L.str.98)
	vld	$vr0, $a1, 0
	ld.b	$a1, $a1, 16
	vst	$vr0, $a0, 0
	st.b	$a1, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp797:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp798:                               # EH_LABEL
# %bb.41:                               # %invoke.cont141
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_43
# %bb.42:                               # %if.then.i.i287
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_43:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_45
# %bb.44:                               # %if.then.i.i294
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_45:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp800:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp801:                               # EH_LABEL
# %bb.46:                               # %call2.i5.i.noexc310
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp803:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp804:                               # EH_LABEL
# %bb.47:                               # %invoke.cont156
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp806:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp807:                               # EH_LABEL
# %bb.48:                               # %call2.i5.i.noexc323
	ld.d	$a1, $sp, 80
	srai.d	$a2, $s2, 63
	andn	$a2, $s2, $a2
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a3, %pc_hi20(.L.str.99)
	addi.d	$a3, $a3, %pc_lo12(.L.str.99)
	vld	$vr0, $a3, 0
	ld.b	$a3, $a3, 16
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp809:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp810:                               # EH_LABEL
# %bb.49:                               # %invoke.cont163
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_51
# %bb.50:                               # %if.then.i.i327
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_53
# %bb.52:                               # %if.then.i.i334
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_53:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp812:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp813:                               # EH_LABEL
# %bb.54:                               # %call2.i5.i.noexc350
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp815:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp816:                               # EH_LABEL
# %bb.55:                               # %invoke.cont178
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 80
.Ltmp818:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp819:                               # EH_LABEL
# %bb.56:                               # %call2.i5.i.noexc363
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	movgr2fr.w	$fa0, $a1
	ld.d	$a1, $sp, 80
	ffint.d.w	$fs3, $fa0
	fdiv.d	$fa0, $fs2, $fs3
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str.100)
	addi.d	$a2, $a2, %pc_lo12(.L.str.100)
	vld	$vr1, $a2, 0
	ld.b	$a2, $a2, 16
	vst	$vr1, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp821:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp822:                               # EH_LABEL
# %bb.57:                               # %invoke.cont185
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_59
# %bb.58:                               # %if.then.i.i367
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_61
# %bb.60:                               # %if.then.i.i374
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp824:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp825:                               # EH_LABEL
# %bb.62:                               # %call2.i5.i.noexc390
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp827:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp828:                               # EH_LABEL
# %bb.63:                               # %invoke.cont200
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp830:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp831:                               # EH_LABEL
# %bb.64:                               # %call2.i5.i.noexc403
	vldi	$vr0, -1004
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	fsel	$fa0, $fa0, $fs0, $fcc0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	fsub.d	$fa1, $fa0, $fs1
	ftintrz.l.d	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fs1
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a1, $fa1
	movfr2gr.d	$a2, $fa0
	lu52i.d	$a3, $zero, -2048
	xor	$a1, $a1, $a3
	ld.d	$a3, $sp, 80
	pcalau12i	$a4, %pc_hi20(.L.str.101)
	vld	$vr0, $a4, %pc_lo12(.L.str.101)
	movcf2gr	$a4, $fcc0
	maskeqz	$a2, $a2, $a4
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	masknez	$a1, $a1, $a4
	or	$a2, $a2, $a1
	st.d	$a3, $sp, 24
	stx.b	$zero, $a0, $a3
.Ltmp833:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp834:                               # EH_LABEL
# %bb.65:                               # %invoke.cont207
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_67
# %bb.66:                               # %if.then.i.i407
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_69
# %bb.68:                               # %if.then.i.i414
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp836:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp837:                               # EH_LABEL
# %bb.70:                               # %call2.i5.i.noexc430
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp839:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp840:                               # EH_LABEL
# %bb.71:                               # %invoke.cont222
	move	$s1, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp842:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp843:                               # EH_LABEL
# %bb.72:                               # %call2.i5.i.noexc443
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.102)
	vld	$vr0, $a2, %pc_lo12(.L.str.102)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp845:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm)
	jirl	$ra, $ra, 0
.Ltmp846:                               # EH_LABEL
# %bb.73:                               # %invoke.cont229
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_75
# %bb.74:                               # %if.then.i.i447
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_75:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_77
# %bb.76:                               # %if.then.i.i454
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_77:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
	st.d	$s6, $sp, 48
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 16
.Ltmp848:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp849:                               # EH_LABEL
# %bb.78:                               # %call2.i5.i.noexc470
	ld.d	$a1, $sp, 16
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
	vst	$vr0, $a0, 0
	st.b	$s4, $a0, 16
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	stx.b	$zero, $a0, $a1
.Ltmp851:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp852:                               # EH_LABEL
# %bb.79:                               # %invoke.cont244
	move	$s0, $a0
	st.d	$s3, $sp, 16
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 80
.Ltmp854:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp855:                               # EH_LABEL
# %bb.80:                               # %call2.i5.i.noexc483
	ld.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.103)
	vld	$vr0, $a2, %pc_lo12(.L.str.103)
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	fdiv.d	$fa0, $fs0, $fs3
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
.Ltmp857:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp858:                               # EH_LABEL
# %bb.81:                               # %invoke.cont251
	ld.d	$a0, $sp, 16
	beq	$a0, $s3, .LBB13_83
# %bb.82:                               # %if.then.i.i487
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB13_85
# %bb.84:                               # %if.then.i.i494
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_85:                              # %if.end
	move	$a0, $fp
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB13_86:                              # %lpad250
.Ltmp859:                               # EH_LABEL
	b	.LBB13_125
.LBB13_87:                              # %lpad248
.Ltmp856:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_88:                              # %lpad243
.Ltmp853:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_89:                              # %lpad241
.Ltmp850:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_90:                              # %lpad228
.Ltmp847:                               # EH_LABEL
	b	.LBB13_125
.LBB13_91:                              # %lpad226
.Ltmp844:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_92:                              # %lpad221
.Ltmp841:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_93:                              # %lpad219
.Ltmp838:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_94:                              # %lpad206
.Ltmp835:                               # EH_LABEL
	b	.LBB13_125
.LBB13_95:                              # %lpad204
.Ltmp832:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_96:                              # %lpad199
.Ltmp829:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_97:                              # %lpad197
.Ltmp826:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_98:                              # %lpad184
.Ltmp823:                               # EH_LABEL
	b	.LBB13_125
.LBB13_99:                              # %lpad182
.Ltmp820:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_100:                             # %lpad177
.Ltmp817:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_101:                             # %lpad175
.Ltmp814:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_102:                             # %lpad162
.Ltmp811:                               # EH_LABEL
	b	.LBB13_125
.LBB13_103:                             # %lpad160
.Ltmp808:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_104:                             # %lpad155
.Ltmp805:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_105:                             # %lpad153
.Ltmp802:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_106:                             # %lpad140
.Ltmp799:                               # EH_LABEL
	b	.LBB13_125
.LBB13_107:                             # %lpad138
.Ltmp796:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_108:                             # %lpad133
.Ltmp793:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_109:                             # %lpad131
.Ltmp790:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_110:                             # %lpad116
.Ltmp787:                               # EH_LABEL
	b	.LBB13_125
.LBB13_111:                             # %lpad114
.Ltmp784:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_112:                             # %lpad109
.Ltmp781:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_113:                             # %lpad107
.Ltmp778:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_114:                             # %lpad94
.Ltmp775:                               # EH_LABEL
	b	.LBB13_125
.LBB13_115:                             # %lpad92
.Ltmp772:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_116:                             # %lpad87
.Ltmp769:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_117:                             # %lpad85
.Ltmp766:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_118:                             # %lpad59
.Ltmp763:                               # EH_LABEL
	b	.LBB13_125
.LBB13_119:                             # %lpad52
.Ltmp760:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_120:                             # %lpad50
.Ltmp757:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_121:                             # %lpad37
.Ltmp754:                               # EH_LABEL
	b	.LBB13_125
.LBB13_122:                             # %lpad30
.Ltmp751:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
	b	.LBB13_129
.LBB13_123:                             # %lpad28
.Ltmp748:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_124:                             # %lpad17
.Ltmp745:                               # EH_LABEL
.LBB13_125:                             # %lpad250
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s3, .LBB13_128
# %bb.126:                              # %ehcleanup257
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB13_129
.LBB13_127:                             # %ehcleanup265
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_128:                             # %if.then.i.i641
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB13_127
.LBB13_129:                             # %if.then.i.i648
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_130:                             # %lpad
.Ltmp742:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc, .Lfunc_end13-_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,"aG",@progbits,_ZN6miniFE20compute_matrix_statsINS_9CSRMatrixIdiiEEEEmRKT_iiR8YAML_Doc,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp740-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp741-.Ltmp740              #   Call between .Ltmp740 and .Ltmp741
	.uleb128 .Ltmp742-.Lfunc_begin8         #     jumps to .Ltmp742
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp744-.Ltmp743              #   Call between .Ltmp743 and .Ltmp744
	.uleb128 .Ltmp745-.Lfunc_begin8         #     jumps to .Ltmp745
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp746-.Ltmp744              #   Call between .Ltmp744 and .Ltmp746
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp746-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp747-.Ltmp746              #   Call between .Ltmp746 and .Ltmp747
	.uleb128 .Ltmp748-.Lfunc_begin8         #     jumps to .Ltmp748
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp749-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp750-.Ltmp749              #   Call between .Ltmp749 and .Ltmp750
	.uleb128 .Ltmp751-.Lfunc_begin8         #     jumps to .Ltmp751
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp752-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp753-.Ltmp752              #   Call between .Ltmp752 and .Ltmp753
	.uleb128 .Ltmp754-.Lfunc_begin8         #     jumps to .Ltmp754
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp755-.Ltmp753              #   Call between .Ltmp753 and .Ltmp755
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp756-.Ltmp755              #   Call between .Ltmp755 and .Ltmp756
	.uleb128 .Ltmp757-.Lfunc_begin8         #     jumps to .Ltmp757
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp758-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp759-.Ltmp758              #   Call between .Ltmp758 and .Ltmp759
	.uleb128 .Ltmp760-.Lfunc_begin8         #     jumps to .Ltmp760
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp761-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp762-.Ltmp761              #   Call between .Ltmp761 and .Ltmp762
	.uleb128 .Ltmp763-.Lfunc_begin8         #     jumps to .Ltmp763
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp764-.Ltmp762              #   Call between .Ltmp762 and .Ltmp764
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp764-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp765-.Ltmp764              #   Call between .Ltmp764 and .Ltmp765
	.uleb128 .Ltmp766-.Lfunc_begin8         #     jumps to .Ltmp766
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp767-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp768-.Ltmp767              #   Call between .Ltmp767 and .Ltmp768
	.uleb128 .Ltmp769-.Lfunc_begin8         #     jumps to .Ltmp769
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp770-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp771-.Ltmp770              #   Call between .Ltmp770 and .Ltmp771
	.uleb128 .Ltmp772-.Lfunc_begin8         #     jumps to .Ltmp772
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp773-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp774-.Ltmp773              #   Call between .Ltmp773 and .Ltmp774
	.uleb128 .Ltmp775-.Lfunc_begin8         #     jumps to .Ltmp775
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Ltmp776-.Ltmp774              #   Call between .Ltmp774 and .Ltmp776
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp776-.Lfunc_begin8         # >> Call Site 17 <<
	.uleb128 .Ltmp777-.Ltmp776              #   Call between .Ltmp776 and .Ltmp777
	.uleb128 .Ltmp778-.Lfunc_begin8         #     jumps to .Ltmp778
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp779-.Lfunc_begin8         # >> Call Site 18 <<
	.uleb128 .Ltmp780-.Ltmp779              #   Call between .Ltmp779 and .Ltmp780
	.uleb128 .Ltmp781-.Lfunc_begin8         #     jumps to .Ltmp781
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp782-.Lfunc_begin8         # >> Call Site 19 <<
	.uleb128 .Ltmp783-.Ltmp782              #   Call between .Ltmp782 and .Ltmp783
	.uleb128 .Ltmp784-.Lfunc_begin8         #     jumps to .Ltmp784
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp785-.Lfunc_begin8         # >> Call Site 20 <<
	.uleb128 .Ltmp786-.Ltmp785              #   Call between .Ltmp785 and .Ltmp786
	.uleb128 .Ltmp787-.Lfunc_begin8         #     jumps to .Ltmp787
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin8         # >> Call Site 21 <<
	.uleb128 .Ltmp788-.Ltmp786              #   Call between .Ltmp786 and .Ltmp788
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp788-.Lfunc_begin8         # >> Call Site 22 <<
	.uleb128 .Ltmp789-.Ltmp788              #   Call between .Ltmp788 and .Ltmp789
	.uleb128 .Ltmp790-.Lfunc_begin8         #     jumps to .Ltmp790
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp791-.Lfunc_begin8         # >> Call Site 23 <<
	.uleb128 .Ltmp792-.Ltmp791              #   Call between .Ltmp791 and .Ltmp792
	.uleb128 .Ltmp793-.Lfunc_begin8         #     jumps to .Ltmp793
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp794-.Lfunc_begin8         # >> Call Site 24 <<
	.uleb128 .Ltmp795-.Ltmp794              #   Call between .Ltmp794 and .Ltmp795
	.uleb128 .Ltmp796-.Lfunc_begin8         #     jumps to .Ltmp796
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp797-.Lfunc_begin8         # >> Call Site 25 <<
	.uleb128 .Ltmp798-.Ltmp797              #   Call between .Ltmp797 and .Ltmp798
	.uleb128 .Ltmp799-.Lfunc_begin8         #     jumps to .Ltmp799
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin8         # >> Call Site 26 <<
	.uleb128 .Ltmp800-.Ltmp798              #   Call between .Ltmp798 and .Ltmp800
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp800-.Lfunc_begin8         # >> Call Site 27 <<
	.uleb128 .Ltmp801-.Ltmp800              #   Call between .Ltmp800 and .Ltmp801
	.uleb128 .Ltmp802-.Lfunc_begin8         #     jumps to .Ltmp802
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp803-.Lfunc_begin8         # >> Call Site 28 <<
	.uleb128 .Ltmp804-.Ltmp803              #   Call between .Ltmp803 and .Ltmp804
	.uleb128 .Ltmp805-.Lfunc_begin8         #     jumps to .Ltmp805
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp806-.Lfunc_begin8         # >> Call Site 29 <<
	.uleb128 .Ltmp807-.Ltmp806              #   Call between .Ltmp806 and .Ltmp807
	.uleb128 .Ltmp808-.Lfunc_begin8         #     jumps to .Ltmp808
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp809-.Lfunc_begin8         # >> Call Site 30 <<
	.uleb128 .Ltmp810-.Ltmp809              #   Call between .Ltmp809 and .Ltmp810
	.uleb128 .Ltmp811-.Lfunc_begin8         #     jumps to .Ltmp811
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin8         # >> Call Site 31 <<
	.uleb128 .Ltmp812-.Ltmp810              #   Call between .Ltmp810 and .Ltmp812
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp812-.Lfunc_begin8         # >> Call Site 32 <<
	.uleb128 .Ltmp813-.Ltmp812              #   Call between .Ltmp812 and .Ltmp813
	.uleb128 .Ltmp814-.Lfunc_begin8         #     jumps to .Ltmp814
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp815-.Lfunc_begin8         # >> Call Site 33 <<
	.uleb128 .Ltmp816-.Ltmp815              #   Call between .Ltmp815 and .Ltmp816
	.uleb128 .Ltmp817-.Lfunc_begin8         #     jumps to .Ltmp817
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp818-.Lfunc_begin8         # >> Call Site 34 <<
	.uleb128 .Ltmp819-.Ltmp818              #   Call between .Ltmp818 and .Ltmp819
	.uleb128 .Ltmp820-.Lfunc_begin8         #     jumps to .Ltmp820
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp821-.Lfunc_begin8         # >> Call Site 35 <<
	.uleb128 .Ltmp822-.Ltmp821              #   Call between .Ltmp821 and .Ltmp822
	.uleb128 .Ltmp823-.Lfunc_begin8         #     jumps to .Ltmp823
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp822-.Lfunc_begin8         # >> Call Site 36 <<
	.uleb128 .Ltmp824-.Ltmp822              #   Call between .Ltmp822 and .Ltmp824
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin8         # >> Call Site 37 <<
	.uleb128 .Ltmp825-.Ltmp824              #   Call between .Ltmp824 and .Ltmp825
	.uleb128 .Ltmp826-.Lfunc_begin8         #     jumps to .Ltmp826
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp827-.Lfunc_begin8         # >> Call Site 38 <<
	.uleb128 .Ltmp828-.Ltmp827              #   Call between .Ltmp827 and .Ltmp828
	.uleb128 .Ltmp829-.Lfunc_begin8         #     jumps to .Ltmp829
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp830-.Lfunc_begin8         # >> Call Site 39 <<
	.uleb128 .Ltmp831-.Ltmp830              #   Call between .Ltmp830 and .Ltmp831
	.uleb128 .Ltmp832-.Lfunc_begin8         #     jumps to .Ltmp832
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp833-.Lfunc_begin8         # >> Call Site 40 <<
	.uleb128 .Ltmp834-.Ltmp833              #   Call between .Ltmp833 and .Ltmp834
	.uleb128 .Ltmp835-.Lfunc_begin8         #     jumps to .Ltmp835
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp834-.Lfunc_begin8         # >> Call Site 41 <<
	.uleb128 .Ltmp836-.Ltmp834              #   Call between .Ltmp834 and .Ltmp836
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp836-.Lfunc_begin8         # >> Call Site 42 <<
	.uleb128 .Ltmp837-.Ltmp836              #   Call between .Ltmp836 and .Ltmp837
	.uleb128 .Ltmp838-.Lfunc_begin8         #     jumps to .Ltmp838
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp839-.Lfunc_begin8         # >> Call Site 43 <<
	.uleb128 .Ltmp840-.Ltmp839              #   Call between .Ltmp839 and .Ltmp840
	.uleb128 .Ltmp841-.Lfunc_begin8         #     jumps to .Ltmp841
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp842-.Lfunc_begin8         # >> Call Site 44 <<
	.uleb128 .Ltmp843-.Ltmp842              #   Call between .Ltmp842 and .Ltmp843
	.uleb128 .Ltmp844-.Lfunc_begin8         #     jumps to .Ltmp844
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp845-.Lfunc_begin8         # >> Call Site 45 <<
	.uleb128 .Ltmp846-.Ltmp845              #   Call between .Ltmp845 and .Ltmp846
	.uleb128 .Ltmp847-.Lfunc_begin8         #     jumps to .Ltmp847
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin8         # >> Call Site 46 <<
	.uleb128 .Ltmp848-.Ltmp846              #   Call between .Ltmp846 and .Ltmp848
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp848-.Lfunc_begin8         # >> Call Site 47 <<
	.uleb128 .Ltmp849-.Ltmp848              #   Call between .Ltmp848 and .Ltmp849
	.uleb128 .Ltmp850-.Lfunc_begin8         #     jumps to .Ltmp850
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp851-.Lfunc_begin8         # >> Call Site 48 <<
	.uleb128 .Ltmp852-.Ltmp851              #   Call between .Ltmp851 and .Ltmp852
	.uleb128 .Ltmp853-.Lfunc_begin8         #     jumps to .Ltmp853
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp854-.Lfunc_begin8         # >> Call Site 49 <<
	.uleb128 .Ltmp855-.Ltmp854              #   Call between .Ltmp854 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin8         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin8         # >> Call Site 50 <<
	.uleb128 .Ltmp858-.Ltmp857              #   Call between .Ltmp857 and .Ltmp858
	.uleb128 .Ltmp859-.Lfunc_begin8         #     jumps to .Ltmp859
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp858-.Lfunc_begin8         # >> Call Site 51 <<
	.uleb128 .Lfunc_end13-.Ltmp858          #   Call between .Ltmp858 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"axG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.weak	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_ # -- Begin function _ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.p2align	5
	.type	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,@function
_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_: # @_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	ld.d	$s6, $a0, 16
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	sub.d	$a1, $s6, $a2
	srai.d	$s3, $a1, 1
	srli.d	$a0, $s3, 61
	bnez	$a0, .LBB14_86
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	srai.d	$s8, $a1, 2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beq	$s6, $a2, .LBB14_20
# %bb.2:                                # %if.then.i.i.i.i3.i
	slli.d	$s0, $a1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $fp, 0
	addi.d	$a0, $fp, 4
	addi.d	$s2, $s0, -4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp860:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp861:                               # EH_LABEL
# %bb.3:                                # %for.body.lr.ph
	move	$s0, $a0
	alsl.d	$a0, $s3, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.w	$zero, $s0, 0
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 104
	ld.d	$a1, $a2, 80
	move	$s5, $zero
	move	$a7, $zero
	ld.d	$a2, $a2, 32
	addi.d	$a3, $a0, 8
	addi.d	$a4, $a1, 4
	ori	$a5, $zero, 2
	ori	$a6, $zero, 1
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %invoke.cont40
                                        #   in Loop: Header=BB14_5 Depth=1
	alsl.d	$t3, $a7, $a2, 2
	ld.w	$t3, $t3, 0
	add.d	$t5, $fp, $t1
	alsl.d	$a7, $a7, $s0, 3
	add.d	$t1, $s0, $t1
	alsl.d	$t3, $t3, $t4, 2
	sub.d	$t2, $t3, $t2
	ld.w	$t1, $t1, 0
	srli.d	$t2, $t2, 2
	st.w	$t2, $t5, 0
	st.w	$t2, $a7, 0
	add.d	$a7, $t1, $s5
	sub.w	$s5, $a7, $t2
	move	$a7, $t0
	beq	$t0, $s8, .LBB14_15
.LBB14_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
                                        #       Child Loop BB14_10 Depth 3
                                        #     Child Loop BB14_14 Depth 2
	slli.d	$t0, $a7, 2
	ldx.w	$t5, $a2, $t0
	addi.d	$t0, $a7, 1
	slli.d	$t2, $t0, 2
	ldx.w	$t3, $a2, $t2
	slli.d	$t4, $a7, 3
	stx.w	$t5, $fp, $t4
	ldx.w	$t6, $a2, $t2
	addi.d	$t1, $t4, 4
	stx.w	$t6, $fp, $t1
	stx.w	$t6, $s0, $t4
	ldx.w	$t4, $a2, $t2
	alsl.d	$t2, $t5, $a1, 2
	sub.d	$t3, $t3, $t5
	stx.w	$t4, $s0, $t1
	blt	$t3, $a5, .LBB14_12
# %bb.6:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB14_5 Depth=1
	slli.d	$t6, $t5, 2
	alsl.d	$t4, $t5, $a0, 3
	alsl.d	$t5, $t5, $a3, 3
	add.d	$t6, $a4, $t6
	ori	$t7, $zero, 1
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_7:                               #   in Loop: Header=BB14_9 Depth=2
	move	$s2, $zero
.LBB14_8:                               # %while.end.i
                                        #   in Loop: Header=BB14_9 Depth=2
	slli.d	$s3, $s2, 2
	stx.w	$t8, $t2, $s3
	slli.d	$t8, $s2, 3
	fstx.d	$fa0, $t4, $t8
	addi.d	$t7, $t7, 1
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 4
	beq	$t7, $t3, .LBB14_12
.LBB14_9:                               # %for.body.i
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t2, $t8
	slli.d	$s2, $t7, 3
	fldx.d	$fa0, $t4, $s2
	move	$s3, $t6
	move	$s4, $t5
	move	$s2, $t7
	.p2align	4, , 16
.LBB14_10:                              # %land.rhs.i
                                        #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s3, -4
	bge	$t8, $s7, .LBB14_8
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB14_10 Depth=3
	fld.d	$fa1, $s4, -8
	addi.d	$s2, $s2, -1
	st.w	$s7, $s3, 0
	fst.d	$fa1, $s4, 0
	addi.d	$s4, $s4, -8
	addi.d	$s7, $s2, 1
	addi.d	$s3, $s3, -4
	blt	$a6, $s7, .LBB14_10
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_12:                              # %_ZN6miniFE20sort_with_companionsIidEEvlPT_PT0_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$t4, $t2
	blez	$t3, .LBB14_4
# %bb.13:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$t4, $t2
	.p2align	4, , 16
.LBB14_14:                              # %while.body.i.i
                                        #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t5, $t3, 1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $t4, $t6
	alsl.d	$t7, $t5, $t4, 2
	sltu	$t6, $t6, $s8
	addi.d	$t7, $t7, 4
	nor	$t8, $t5, $zero
	add.d	$t3, $t3, $t8
	maskeqz	$t3, $t3, $t6
	masknez	$t5, $t5, $t6
	or	$t3, $t3, $t5
	maskeqz	$t5, $t7, $t6
	masknez	$t4, $t4, $t6
	or	$t4, $t5, $t4
	bgtz	$t3, .LBB14_14
	b	.LBB14_4
.LBB14_15:                              # %for.cond.cleanup
	bltz	$s5, .LBB14_87
# %bb.16:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i112
	addi.d	$s7, $s8, 1
	beqz	$s5, .LBB14_21
# %bb.17:                               # %if.then.i.i.i.i3.i114
	slli.d	$s3, $s5, 2
.Ltmp863:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp864:                               # EH_LABEL
# %bb.18:                               # %call5.i.i.i2.i.i.noexc125
	move	$s2, $a0
	move	$s1, $s7
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $a0, 4
	bne	$s5, $a1, .LBB14_22
# %bb.19:
	move	$s7, $a0
	b	.LBB14_23
.LBB14_20:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s7, $zero, 1
	b	.LBB14_28
.LBB14_21:
	move	$s1, $s7
	move	$s7, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s2, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	b	.LBB14_26
.LBB14_22:                              # %if.end.i.i.i.i.i.i
	add.d	$s7, $s2, $s3
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB14_23:                              # %if.then.i.i.i.i3.i152
	alsl.d	$a0, $s5, $s2, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s4, $s5, 3
.Ltmp865:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp866:                               # EH_LABEL
# %bb.24:                               # %call5.i.i.i2.i.i.noexc164
	move	$s3, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s5, $a0, .LBB14_26
# %bb.25:                               # %if.end.i.i.i.i.i.i158
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s4, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB14_26:                              # %invoke.cont80
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	bgeu	$s8, $a0, .LBB14_89
# %bb.27:
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $s1
.LBB14_28:                              # %if.then.i.i.i.i3.i169
	slli.d	$s4, $s7, 2
.Ltmp873:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.29:                               # %call5.i.i.i2.i.i.noexc182
	move	$s5, $a0
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	beq	$s6, $a0, .LBB14_41
# %bb.30:                               # %for.body94.lr.ph
	addi.d	$a0, $s5, 4
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 80
	ld.d	$a3, $a3, 104
	ori	$a4, $zero, 6
	ori	$a5, $zero, 8
	ori	$a6, $zero, 16
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB14_32
	.p2align	4, , 16
.LBB14_31:                              # %for.cond.cleanup103
                                        #   in Loop: Header=BB14_32 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s8, .LBB14_42
.LBB14_32:                              # %for.body94
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_39 Depth 2
                                        #     Child Loop BB14_35 Depth 2
	slli.d	$a7, $a1, 3
	alsl.d	$t0, $a1, $s0, 3
	ldx.w	$a7, $s0, $a7
	ld.w	$t0, $t0, 4
	slli.d	$t1, $a1, 2
	stx.w	$a0, $s5, $t1
	bge	$a7, $t0, .LBB14_31
# %bb.33:                               # %for.body104.preheader
                                        #   in Loop: Header=BB14_32 Depth=1
	sub.d	$t1, $t0, $a7
	addi.w	$a0, $a0, 0
	bgeu	$t1, $a4, .LBB14_36
.LBB14_34:                              # %for.body104.preheader582
                                        #   in Loop: Header=BB14_32 Depth=1
	alsl.d	$t1, $a0, $s2, 2
	alsl.d	$t2, $a0, $s3, 3
	alsl.d	$t3, $a7, $a2, 2
	alsl.d	$t4, $a7, $a3, 3
	sub.d	$t5, $t0, $a7
	add.d	$a0, $a0, $t0
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB14_35:                              # %for.body104
                                        #   Parent Loop BB14_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $t3, 0
	fld.d	$fa0, $t4, 0
	st.w	$a7, $t1, 0
	fst.d	$fa0, $t2, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 4
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB14_35
	b	.LBB14_31
	.p2align	4, , 16
.LBB14_36:                              # %vector.memcheck
                                        #   in Loop: Header=BB14_32 Depth=1
	alsl.d	$t2, $a0, $s2, 2
	alsl.d	$t3, $a7, $a2, 2
	sub.d	$t2, $t2, $t3
	bltu	$t2, $a5, .LBB14_34
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB14_32 Depth=1
	alsl.d	$t2, $a0, $s3, 3
	alsl.d	$t3, $a7, $a3, 3
	sub.d	$t2, $t2, $t3
	bltu	$t2, $a6, .LBB14_34
# %bb.38:                               # %vector.ph
                                        #   in Loop: Header=BB14_32 Depth=1
	slli.d	$t6, $a0, 2
	slli.d	$t4, $a7, 2
	slli.d	$t5, $a0, 3
	slli.d	$t3, $a7, 3
	move	$t2, $t1
	bstrins.d	$t2, $zero, 0, 0
	add.d	$a0, $t2, $a0
	add.d	$a7, $t2, $a7
	add.d	$t3, $a3, $t3
	add.d	$t4, $a2, $t4
	add.d	$t5, $s3, $t5
	add.d	$t6, $s2, $t6
	move	$t7, $t2
	.p2align	4, , 16
.LBB14_39:                              # %vector.body
                                        #   Parent Loop BB14_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $t4, 0
	vld	$vr0, $t3, 0
	st.d	$t8, $t6, 0
	vst	$vr0, $t5, 0
	addi.d	$t7, $t7, -2
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 8
	bnez	$t7, .LBB14_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB14_32 Depth=1
	beq	$t1, $t2, .LBB14_31
	b	.LBB14_34
.LBB14_41:
	move	$a0, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
.LBB14_42:                              # %for.cond.cleanup93
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 40
	ld.d	$a1, $a1, 32
	sub.d	$a3, $a2, $a1
	srai.d	$a3, $a3, 2
	stx.w	$a0, $s5, $s1
	bgeu	$s8, $a3, .LBB14_52
# %bb.43:                               # %if.else.i
	bgeu	$s7, $a3, .LBB14_46
# %bb.44:                               # %if.then5.i
	alsl.d	$a0, $s7, $a1, 2
	beq	$a2, $a0, .LBB14_46
# %bb.45:                               # %if.then.i.i189
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a2, 40
.LBB14_46:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB14_54
.LBB14_47:                              # %for.body131.lr.ph
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 80
	ld.d	$a2, $a2, 104
	move	$a3, $zero
	move	$s6, $zero
	b	.LBB14_49
	.p2align	4, , 16
.LBB14_48:                              # %for.cond.cleanup142
                                        #   in Loop: Header=BB14_49 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s8, .LBB14_55
.LBB14_49:                              # %for.body131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_51 Depth 2
	slli.d	$a4, $a3, 2
	stx.w	$s6, $a1, $a4
	slli.d	$a5, $a3, 3
	alsl.d	$a4, $a3, $fp, 3
	ldx.w	$a5, $fp, $a5
	ld.w	$a6, $a4, 4
	bge	$a5, $a6, .LBB14_48
# %bb.50:                               # %for.body143.preheader
                                        #   in Loop: Header=BB14_49 Depth=1
	alsl.d	$a6, $s6, $a0, 2
	alsl.d	$a7, $s6, $a2, 3
	alsl.d	$t0, $a5, $a0, 2
	alsl.d	$t1, $a5, $a2, 3
	.p2align	4, , 16
.LBB14_51:                              # %for.body143
                                        #   Parent Loop BB14_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa0, $t1, 0
	st.w	$t2, $a6, 0
	fst.d	$fa0, $a7, 0
	addi.d	$a5, $a5, 1
	ld.w	$t2, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 8
	addi.w	$s6, $s6, 1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	blt	$a5, $t2, .LBB14_51
	b	.LBB14_48
.LBB14_52:                              # %if.then.i
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 32
	sub.d	$a1, $s7, $a3
.Ltmp876:                               # EH_LABEL
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.53:                               # %if.then.i._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge
	ld.d	$a1, $s1, 0
	move	$s1, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bne	$s6, $a0, .LBB14_47
.LBB14_54:
	move	$s6, $zero
.LBB14_55:                              # %for.cond.cleanup130
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s2
	srai.d	$a3, $a0, 2
	add.d	$a0, $a3, $s6
	stx.w	$s6, $a1, $s1
	bgeu	$s6, $a0, .LBB14_59
# %bb.56:                               # %for.body173.lr.ph
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 80
	ld.d	$a6, $a1, 104
	ori	$a7, $zero, 10
	slli.d	$a5, $s6, 2
	slli.d	$a4, $s6, 3
	move	$a1, $s6
	bgeu	$a3, $a7, .LBB14_81
.LBB14_57:                              # %for.body173.preheader
	slli.d	$a7, $a1, 3
	alsl.d	$a3, $a1, $a6, 3
	slli.d	$a6, $a1, 2
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a5, $a6, $a5
	add.d	$a5, $s2, $a5
	sub.d	$a4, $a7, $a4
	add.d	$a4, $s3, $a4
	.p2align	4, , 16
.LBB14_58:                              # %for.body173
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	fld.d	$fa0, $a4, 0
	st.w	$a6, $a2, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 8
	bltu	$a1, $a0, .LBB14_58
.LBB14_59:                              # %for.cond.cleanup172
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 64
	ld.d	$a0, $a0, 56
	sub.d	$a2, $a3, $a0
	srai.d	$a2, $a2, 2
	bgeu	$s8, $a2, .LBB14_63
# %bb.60:                               # %if.else.i223
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s7, $a2, .LBB14_65
# %bb.61:                               # %if.then5.i225
	alsl.d	$a2, $s7, $a0, 2
	beq	$a3, $a2, .LBB14_65
# %bb.62:                               # %if.then.i.i228
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$a2, $a3, 64
	b	.LBB14_65
.LBB14_63:                              # %if.then.i229
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s1, $a0, 56
	sub.d	$a1, $s7, $a2
.Ltmp878:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp879:                               # EH_LABEL
# %bb.64:                               # %if.then.i229._ZNSt6vectorIiSaIiEE6resizeEm.exit232_crit_edge
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
.LBB14_65:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit232
	ori	$a2, $zero, 7
	move	$a6, $zero
	bltu	$s8, $a2, .LBB14_70
# %bb.66:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit232
	sub.d	$a2, $a0, $s5
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB14_70
# %bb.67:                               # %vector.ph570
	addi.d	$a2, $s8, 1
	bstrpick.d	$a3, $a2, 62, 3
	slli.d	$a6, $a3, 3
	vreplgr2vr.w	$vr0, $s6
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s5, 16
	move	$a5, $a6
	.p2align	4, , 16
.LBB14_68:                              # %vector.body573
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vadd.w	$vr1, $vr1, $vr0
	vadd.w	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB14_68
# %bb.69:                               # %middle.block578
	beq	$a2, $a6, .LBB14_72
.LBB14_70:                              # %for.body195.preheader
	sub.d	$a2, $s8, $a6
	addi.d	$a2, $a2, 1
	alsl.d	$a3, $a6, $s5, 2
	alsl.d	$a0, $a6, $a0, 2
	.p2align	4, , 16
.LBB14_71:                              # %for.body195
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	add.d	$a4, $a4, $s6
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB14_71
.LBB14_72:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit243
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB14_74
# %bb.73:                               # %if.then.i.i.i245
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_74:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s2, .LBB14_76
# %bb.75:                               # %if.then.i.i.i251
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_76:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit256
	beqz	$s0, .LBB14_78
# %bb.77:                               # %if.then.i.i.i258
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_78:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit263
	beqz	$fp, .LBB14_80
# %bb.79:                               # %if.then.i.i.i265
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB14_80:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit270
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB14_81:                              # %vector.memcheck546
	alsl.d	$a1, $s6, $a2, 2
	sub.d	$a7, $a1, $s2
	ori	$t0, $zero, 8
	move	$a1, $s6
	bltu	$a7, $t0, .LBB14_57
# %bb.82:                               # %vector.memcheck546
	alsl.d	$a1, $s6, $a6, 3
	sub.d	$a7, $a1, $s3
	ori	$t0, $zero, 16
	move	$a1, $s6
	bltu	$a7, $t0, .LBB14_57
# %bb.83:                               # %vector.ph553
	bstrpick.d	$a1, $a3, 62, 1
	slli.d	$a7, $a1, 1
	alsl.d	$a1, $a1, $s6, 1
	add.d	$t0, $a6, $a4
	add.d	$t1, $a2, $a5
	move	$t2, $a7
	move	$t3, $s3
	move	$t4, $s2
	.p2align	4, , 16
.LBB14_84:                              # %vector.body556
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t5, $t4, 0
	vld	$vr0, $t3, 0
	st.d	$t5, $t1, 0
	vst	$vr0, $t0, 0
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 16
	addi.d	$t2, $t2, -2
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB14_84
# %bb.85:                               # %middle.block562
	bne	$a3, $a7, .LBB14_57
	b	.LBB14_59
.LBB14_86:                              # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB14_87:                              # %if.then.i.i123
.Ltmp870:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.88:                               # %.noexc124
.LBB14_89:                              # %if.then.i.i180
.Ltmp868:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp869:                               # EH_LABEL
# %bb.90:                               # %.noexc181
.LBB14_91:                              # %ehcleanup207.thread
.Ltmp867:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB14_102
.LBB14_92:                              # %ehcleanup213.thread
.Ltmp862:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB14_104
.LBB14_93:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
.Ltmp880:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $s5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB14_96
.LBB14_94:                              # %ehcleanup210.thread
.Ltmp872:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB14_103
.LBB14_95:                              # %lpad85
.Ltmp875:                               # EH_LABEL
	move	$s1, $a0
.LBB14_96:                              # %ehcleanup205
	bnez	$s3, .LBB14_101
# %bb.97:                               # %ehcleanup207
	bnez	$s2, .LBB14_102
.LBB14_98:                              # %ehcleanup210
	bnez	$s0, .LBB14_103
.LBB14_99:                              # %ehcleanup213
	bnez	$fp, .LBB14_104
.LBB14_100:                             # %ehcleanup215
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_101:                             # %if.then.i.i.i274
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB14_98
.LBB14_102:                             # %if.then.i.i.i281
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB14_99
.LBB14_103:                             # %if.then.i.i.i288
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB14_100
.LBB14_104:                             # %if.then.i.i.i295
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_, .Lfunc_end14-_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,"aG",@progbits,_ZN6miniFE31rearrange_matrix_local_externalINS_9CSRMatrixIdiiEEEEvRT_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp860-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp860
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp861-.Ltmp860              #   Call between .Ltmp860 and .Ltmp861
	.uleb128 .Ltmp862-.Lfunc_begin9         #     jumps to .Ltmp862
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp863-.Ltmp861              #   Call between .Ltmp861 and .Ltmp863
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp863-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp864-.Ltmp863              #   Call between .Ltmp863 and .Ltmp864
	.uleb128 .Ltmp872-.Lfunc_begin9         #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp865-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp866-.Ltmp865              #   Call between .Ltmp865 and .Ltmp866
	.uleb128 .Ltmp867-.Lfunc_begin9         #     jumps to .Ltmp867
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp866-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp873-.Ltmp866              #   Call between .Ltmp866 and .Ltmp873
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin9         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp874-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp876-.Ltmp874              #   Call between .Ltmp874 and .Ltmp876
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp879-.Ltmp876              #   Call between .Ltmp876 and .Ltmp879
	.uleb128 .Ltmp880-.Lfunc_begin9         #     jumps to .Ltmp880
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp870-.Ltmp879              #   Call between .Ltmp879 and .Ltmp870
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin9         #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp868-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp869-.Ltmp868              #   Call between .Ltmp868 and .Ltmp869
	.uleb128 .Ltmp875-.Lfunc_begin9         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp869-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Lfunc_end14-.Ltmp869          #   Call between .Ltmp869 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI15_0:
	.dword	0x4059000000000000              # double 100
.LCPI15_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.d	$s0, $sp, 336
	move	$s2, $a7
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $a4
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_10
# %bb.1:                                # %if.end
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	addi.w	$fp, $a1, 0
	bltz	$fp, .LBB15_186
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s5, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s4, $a0, 32
	slli.d	$s3, $s4, 3
	beqz	$fp, .LBB15_13
# %bb.3:                                # %if.then.i.i.i.i3.i.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $s6, 0
	ori	$a0, $zero, 1
	addi.d	$s0, $s6, 8
	beq	$fp, $a0, .LBB15_5
# %bb.4:                                # %if.end.i.i.i.i.i.i.i
	move	$a0, $s0
	add.d	$s0, $s6, $s3
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_5:                               # %for.body.lr.ph.i
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	bltz	$s5, .LBB15_14
.LBB15_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i89
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	beqz	$s5, .LBB15_18
# %bb.7:                                # %if.then.i.i.i.i3.i.i91
	slli.d	$s1, $s5, 3
.Ltmp881:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp882:                               # EH_LABEL
# %bb.8:                                # %call5.i.i.i2.i.i3.i93.noexc
	move	$s0, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $s0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s0, 8
	bne	$s5, $a1, .LBB15_20
# %bb.9:
	move	$s5, $a0
	b	.LBB15_21
.LBB15_10:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB15_187
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB15_16
# %bb.12:                               # %if.then.i2.i.i
	ld.bu	$a0, $fp, 67
	b	.LBB15_17
.LBB15_13:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s0, $zero
	move	$s6, $zero
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	bgez	$s5, .LBB15_6
.LBB15_14:                              # %if.then.i.i.i104
.Ltmp981:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp982:                               # EH_LABEL
# %bb.15:                               # %.noexc
.LBB15_16:                              # %if.end.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB15_17:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB15_18:
	move	$s5, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$fp, .LBB15_22
.LBB15_19:
	move	$s1, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB15_27
.LBB15_20:                              # %if.end.i.i.i.i.i.i.i98
	add.d	$s5, $s0, $s1
	addi.d	$a2, $s1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_21:                              # %for.body.lr.ph.i100
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB15_19
.LBB15_22:                              # %if.then.i.i.i.i3.i.i113
.Ltmp883:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp884:                               # EH_LABEL
# %bb.23:                               # %call5.i.i.i2.i.i3.i115.noexc
	move	$s1, $a0
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $s1, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s1, 8
	bne	$fp, $a1, .LBB15_25
# %bb.24:
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB15_26
.LBB15_25:                              # %if.end.i.i.i.i.i.i.i120
	add.d	$fp, $s1, $s3
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
.LBB15_26:                              # %for.body.lr.ph.i122
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_27:                              # %invoke.cont8
	st.d	$zero, $s2, 0
.Ltmp886:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.Ltmp887:                               # EH_LABEL
# %bb.28:                               # %invoke.cont15
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB15_36
# %bb.29:                               # %for.body.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB15_34
# %bb.30:                               # %for.body.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB15_34
# %bb.31:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB15_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_32
# %bb.33:                               # %middle.block
	beq	$a1, $a2, .LBB15_36
.LBB15_34:                              # %for.body.i.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB15_35:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_35
.LBB15_36:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp888:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
.Ltmp889:                               # EH_LABEL
# %bb.37:                               # %invoke.cont18
.Ltmp890:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp891:                               # EH_LABEL
# %bb.38:                               # %invoke.cont20
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB15_44
# %bb.39:                               # %for.body.preheader.i140
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB15_41
	.p2align	4, , 16
.LBB15_40:                              # %for.cond.cleanup14.i
                                        #   in Loop: Header=BB15_41 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB15_44
.LBB15_41:                              # %for.body.i141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_43 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB15_40
# %bb.42:                               # %for.body15.preheader.i
                                        #   in Loop: Header=BB15_41 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB15_43:                              # %for.body15.i
                                        #   Parent Loop BB15_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB15_43
	b	.LBB15_40
.LBB15_44:                              # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit
.Ltmp892:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp893:                               # EH_LABEL
# %bb.45:                               # %invoke.cont23
.Ltmp894:                               # EH_LABEL
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.46:                               # %invoke.cont27
	fmov.d	$fs6, $fa0
	ld.d	$a1, $s8, 16
	ld.d	$a0, $s8, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB15_51
# %bb.47:                               # %for.body.preheader.i158
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB15_163
# %bb.48:
	move	$a2, $zero
.LBB15_49:                              # %for.body.i160.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s6, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB15_50:                              # %for.body.i160
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_50
.LBB15_51:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit170
.Ltmp896:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp897:                               # EH_LABEL
# %bb.52:                               # %invoke.cont30
.Ltmp898:                               # EH_LABEL
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp899:                               # EH_LABEL
# %bb.53:                               # %invoke.cont34
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s6
	srai.d	$s4, $a0, 3
	addi.w	$fp, $s4, 0
	fmov.d	$fs1, $fs3
	blez	$fp, .LBB15_56
# %bb.54:                               # %for.body.preheader.i181
	bstrpick.d	$a0, $s4, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB15_55:                              # %for.body.i183
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB15_55
.LBB15_56:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp900:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.57:                               # %invoke.cont38
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_188
.LBB15_58:                              # %invoke.cont38.split
	fst.d	$fa0, $s2, 0
.Ltmp902:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp903:                               # EH_LABEL
# %bb.59:                               # %invoke.cont45
	fld.d	$fa0, $s2, 0
.Ltmp904:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp905:                               # EH_LABEL
# %bb.60:                               # %invoke.cont47
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB15_189
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB15_63
# %bb.62:                               # %if.then.i2.i.i461
	ld.bu	$a0, $s8, 67
	b	.LBB15_65
.LBB15_63:                              # %if.end.i.i.i466
.Ltmp906:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp907:                               # EH_LABEL
# %bb.64:                               # %.noexc472
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp908:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp909:                               # EH_LABEL
.LBB15_65:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp910:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp911:                               # EH_LABEL
# %bb.66:                               # %call1.i464.noexc
.Ltmp912:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.67:                               # %for.cond.preheader
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 168                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blez	$a1, .LBB15_161
# %bb.68:                               # %land.rhs.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a2, $s5
	bstrpick.d	$s5, $s4, 30, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	srai.d	$a1, $a0, 3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $s0
	srai.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s6, $a0, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 971
	movgr2fr.d	$fa0, $a0
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB15_69:                              # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_78 Depth 2
                                        #     Child Loop BB15_92 Depth 2
                                        #     Child Loop BB15_95 Depth 2
                                        #     Child Loop BB15_85 Depth 2
                                        #     Child Loop BB15_88 Depth 2
                                        #     Child Loop BB15_116 Depth 2
                                        #       Child Loop BB15_118 Depth 3
                                        #     Child Loop BB15_123 Depth 2
                                        #     Child Loop BB15_129 Depth 2
                                        #     Child Loop BB15_133 Depth 2
                                        #     Child Loop BB15_156 Depth 2
                                        #     Child Loop BB15_144 Depth 2
                                        #     Child Loop BB15_149 Depth 2
                                        #     Child Loop BB15_152 Depth 2
	fld.d	$fa0, $s2, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_161
# %bb.70:                               # %for.body
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$s8, $a0
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB15_75
# %bb.71:                               # %if.then56
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp923:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp924:                               # EH_LABEL
# %bb.72:                               # %invoke.cont58
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	blez	$fp, .LBB15_89
# %bb.73:                               # %for.body.i210.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB15_84
# %bb.74:                               #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_87
	.p2align	4, , 16
.LBB15_75:                              # %if.else
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp914:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp915:                               # EH_LABEL
# %bb.76:                               # %invoke.cont65
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blez	$fp, .LBB15_79
# %bb.77:                               # %for.body.i234.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB15_78:                              # %for.body.i234
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_78
.LBB15_79:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit243
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp916:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp917:                               # EH_LABEL
# %bb.80:                               # %invoke.cont69
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp918:                               # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.81:                               # %invoke.cont75
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs3, $fa0
	blez	$fp, .LBB15_96
# %bb.82:                               # %for.body.i257.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB15_91
# %bb.83:                               #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_94
.LBB15_84:                              # %vector.body681.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s0, 16
	move	$a2, $s6
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB15_85:                              # %vector.body681
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_85
# %bb.86:                               # %middle.block686
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB15_89
.LBB15_87:                              # %for.body.i210.preheader708
                                        #   in Loop: Header=BB15_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_88:                              # %for.body.i210
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_88
.LBB15_89:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit220
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp925:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp926:                               # EH_LABEL
# %bb.90:                               # %invoke.cont61
                                        #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB15_98
.LBB15_91:                              # %vector.ph691
                                        #   in Loop: Header=BB15_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s0, 16
	move	$a2, $s6
	.p2align	4, , 16
.LBB15_92:                              # %vector.body696
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_92
# %bb.93:                               # %middle.block703
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB15_96
.LBB15_94:                              # %for.body.i257.preheader709
                                        #   in Loop: Header=BB15_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_95:                              # %for.body.i257
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_95
.LBB15_96:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit267
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp920:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp921:                               # EH_LABEL
# %bb.97:                               # %invoke.cont78
                                        #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 176                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB15_98:                              # %if.end82
                                        #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_158
# %bb.99:                               # %if.end82.split
                                        #   in Loop: Header=BB15_69 Depth=1
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB15_101
.LBB15_100:                             # %if.end82.split
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB15_112
.LBB15_101:                             # %if.then87
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp927:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp928:                               # EH_LABEL
# %bb.102:                              # %invoke.cont88
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp929:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp930:                               # EH_LABEL
# %bb.103:                              # %invoke.cont90
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp931:                               # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp932:                               # EH_LABEL
# %bb.104:                              # %invoke.cont92
                                        #   in Loop: Header=BB15_69 Depth=1
	fld.d	$fa0, $s2, 0
.Ltmp933:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.105:                              # %invoke.cont94
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB15_184
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i483
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB15_108
# %bb.107:                              # %if.then.i2.i.i486
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB15_110
.LBB15_108:                             # %if.end.i.i.i492
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp935:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp936:                               # EH_LABEL
# %bb.109:                              # %.noexc498
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp937:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp938:                               # EH_LABEL
.LBB15_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i488
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp939:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp940:                               # EH_LABEL
# %bb.111:                              # %call1.i490.noexc
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp941:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp942:                               # EH_LABEL
.LBB15_112:                             # %if.end98
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp944:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp945:                               # EH_LABEL
# %bb.113:                              # %invoke.cont100
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB15_119
# %bb.114:                              # %for.body.preheader.i296
                                        #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB15_116
	.p2align	4, , 16
.LBB15_115:                             # %for.cond.cleanup14.i306
                                        #   in Loop: Header=BB15_116 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB15_119
.LBB15_116:                             # %for.body.i299
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_118 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB15_115
# %bb.117:                              # %for.body15.preheader.i309
                                        #   in Loop: Header=BB15_116 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB15_118:                             # %for.body15.i311
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB15_118
	b	.LBB15_115
	.p2align	4, , 16
.LBB15_119:                             # %_ZN6miniFE14matvec_overlapINS_9CSRMatrixIdiiEENS_6VectorIdiiEEEclERS2_RS4_S7_.exit322
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp946:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp947:                               # EH_LABEL
# %bb.120:                              # %invoke.cont103
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp948:                               # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp949:                               # EH_LABEL
# %bb.121:                              # %invoke.cont107
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blez	$s3, .LBB15_124
# %bb.122:                              # %for.body.i336.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB15_123:                             # %for.body.i336
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_123
.LBB15_124:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit345
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp950:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp951:                               # EH_LABEL
# %bb.125:                              # %invoke.cont111
                                        #   in Loop: Header=BB15_69 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 168                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 168                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 176                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB15_137
# %bb.126:                              # %if.then116
                                        #   in Loop: Header=BB15_69 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB15_168
# %bb.127:                              # %lor.lhs.false118
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs5
	blez	$s3, .LBB15_130
# %bb.128:                              # %for.body.i.i.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB15_129:                             # %for.body.i.i
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_129
.LBB15_130:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB15_159
# %bb.131:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blez	$a0, .LBB15_134
.LBB15_132:                             # %for.body.i16.i.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB15_133:                             # %for.body.i16.i
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_133
.LBB15_134:                             # %invoke.cont119
                                        #   in Loop: Header=BB15_69 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB15_160
.LBB15_135:                             # %invoke.cont119.split
                                        #   in Loop: Header=BB15_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI15_0)
	fabs.d	$fa2, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cult.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB15_168
# %bb.136:                              # %if.else132
                                        #   in Loop: Header=BB15_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI15_1)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
.LBB15_137:                             # %if.end134
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp952:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp953:                               # EH_LABEL
# %bb.138:                              # %invoke.cont136
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blez	$a1, .LBB15_145
# %bb.139:                              # %for.body.preheader.i368
                                        #   in Loop: Header=BB15_69 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB15_142
# %bb.140:                              # %vector.memcheck657
                                        #   in Loop: Header=BB15_69 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB15_155
# %bb.141:                              # %vector.memcheck657
                                        #   in Loop: Header=BB15_69 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB15_155
.LBB15_142:                             #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
.LBB15_143:                             # %for.body.i370.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB15_144:                             # %for.body.i370
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB15_144
.LBB15_145:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit380
                                        #   in Loop: Header=BB15_69 Depth=1
	blez	$fp, .LBB15_153
# %bb.146:                              # %for.body.i394.preheader
                                        #   in Loop: Header=BB15_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB15_148
# %bb.147:                              #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $zero
	b	.LBB15_151
	.p2align	4, , 16
.LBB15_148:                             # %vector.ph644
                                        #   in Loop: Header=BB15_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s1, 16
	move	$a2, $s6
	.p2align	4, , 16
.LBB15_149:                             # %vector.body647
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB15_149
# %bb.150:                              # %middle.block654
                                        #   in Loop: Header=BB15_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB15_153
.LBB15_151:                             # %for.body.i394.preheader707
                                        #   in Loop: Header=BB15_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB15_152:                             # %for.body.i394
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB15_152
.LBB15_153:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit404
                                        #   in Loop: Header=BB15_69 Depth=1
.Ltmp954:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.154:                              # %invoke.cont141
                                        #   in Loop: Header=BB15_69 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB15_69
	b	.LBB15_161
.LBB15_155:                             # %vector.ph661
                                        #   in Loop: Header=BB15_69 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB15_156:                             # %vector.body666
                                        #   Parent Loop BB15_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB15_156
# %bb.157:                              # %middle.block673
                                        #   in Loop: Header=BB15_69 Depth=1
	beq	$a1, $a2, .LBB15_145
	b	.LBB15_143
.LBB15_158:                             # %call.sqrt861
                                        #   in Loop: Header=BB15_69 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB15_100
	b	.LBB15_101
.LBB15_159:                             # %call.sqrt862
                                        #   in Loop: Header=BB15_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bgtz	$a0, .LBB15_132
	b	.LBB15_134
.LBB15_160:                             # %call.sqrt863
                                        #   in Loop: Header=BB15_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB15_135
.LBB15_161:                             # %for.end
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
	st.d	$zero, $s3, 24
.Ltmp975:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp976:                               # EH_LABEL
# %bb.162:
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	b	.LBB15_177
.LBB15_163:                             # %vector.memcheck622
	sub.d	$a5, $s6, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB15_49
# %bb.164:                              # %vector.memcheck622
	sub.d	$a5, $s6, $s1
	bltu	$a5, $a4, .LBB15_49
# %bb.165:                              # %vector.ph629
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s6, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB15_166:                             # %vector.body632
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB15_166
# %bb.167:                              # %middle.block639
	bne	$a1, $a2, .LBB15_49
	b	.LBB15_51
.LBB15_168:                             # %if.then121
.Ltmp957:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
# %bb.169:                              # %invoke.cont122
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB15_191
# %bb.170:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB15_172
# %bb.171:                              # %if.then.i2.i.i512
	ld.bu	$a0, $s2, 67
	b	.LBB15_174
.LBB15_172:                             # %if.end.i.i.i518
.Ltmp959:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp960:                               # EH_LABEL
# %bb.173:                              # %.noexc524
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp961:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp962:                               # EH_LABEL
.LBB15_174:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i514
.Ltmp963:                               # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.175:                              # %call1.i516.noexc
.Ltmp965:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp966:                               # EH_LABEL
# %bb.176:                              # %invoke.cont124
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
.Ltmp967:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp968:                               # EH_LABEL
.LBB15_177:                             # %cleanup157
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 32
	beqz	$s1, .LBB15_179
# %bb.178:                              # %if.then.i.i.i.i
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB15_181
# %bb.180:                              # %if.then.i.i.i.i411
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit416
	beqz	$fp, .LBB15_183
# %bb.182:                              # %if.then.i.i.i.i419
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB15_183:                             # %cleanup185
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB15_184:                             # %if.then.i.i.i496
.Ltmp972:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp973:                               # EH_LABEL
# %bb.185:                              # %.noexc497
.LBB15_186:                             # %if.then.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB15_187:                             # %if.then.i.i.i451
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB15_188:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB15_58
.LBB15_189:                             # %if.then.i.i.i470
.Ltmp978:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp979:                               # EH_LABEL
# %bb.190:                              # %.noexc471
.LBB15_191:                             # %if.then.i.i.i522
.Ltmp969:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp970:                               # EH_LABEL
# %bb.192:                              # %.noexc523
.LBB15_193:                             # %lpad7
.Ltmp885:                               # EH_LABEL
	move	$s2, $a0
	beqz	$s0, .LBB15_204
	b	.LBB15_207
.LBB15_194:                             # %lpad152
.Ltmp977:                               # EH_LABEL
	b	.LBB15_202
.LBB15_195:                             # %lpad99.loopexit.split-lp
.Ltmp971:                               # EH_LABEL
	b	.LBB15_202
.LBB15_196:                             # %lpad
.Ltmp983:                               # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_205
	b	.LBB15_208
.LBB15_197:                             # %lpad57.loopexit.split-lp
.Ltmp974:                               # EH_LABEL
	b	.LBB15_202
.LBB15_198:                             # %lpad74
.Ltmp922:                               # EH_LABEL
	b	.LBB15_202
.LBB15_199:                             # %lpad14
.Ltmp980:                               # EH_LABEL
	b	.LBB15_202
.LBB15_200:                             # %lpad57.loopexit
.Ltmp943:                               # EH_LABEL
	b	.LBB15_202
.LBB15_201:                             # %lpad99.loopexit
.Ltmp956:                               # EH_LABEL
.LBB15_202:                             # %ehcleanup160
	move	$s2, $a0
	bnez	$s1, .LBB15_206
# %bb.203:                              # %ehcleanup172
	bnez	$s0, .LBB15_207
.LBB15_204:                             # %ehcleanup176
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bnez	$a0, .LBB15_208
.LBB15_205:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit448
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_206:                             # %if.then.i.i.i.i427
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB15_204
.LBB15_207:                             # %if.then.i.i.i.i435
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_205
.LBB15_208:                             # %if.then.i.i.i.i443
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end15-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_14matvec_overlapIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp881-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp881
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp881-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp882-.Ltmp881              #   Call between .Ltmp881 and .Ltmp882
	.uleb128 .Ltmp983-.Lfunc_begin10        #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp981-.Ltmp882              #   Call between .Ltmp882 and .Ltmp981
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin10        #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp982-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp883-.Ltmp982              #   Call between .Ltmp982 and .Ltmp883
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp883-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp884-.Ltmp883              #   Call between .Ltmp883 and .Ltmp884
	.uleb128 .Ltmp885-.Lfunc_begin10        #     jumps to .Ltmp885
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp884-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp886-.Ltmp884              #   Call between .Ltmp884 and .Ltmp886
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp886-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp913-.Ltmp886              #   Call between .Ltmp886 and .Ltmp913
	.uleb128 .Ltmp980-.Lfunc_begin10        #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp923-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp917-.Ltmp923              #   Call between .Ltmp923 and .Ltmp917
	.uleb128 .Ltmp943-.Lfunc_begin10        #     jumps to .Ltmp943
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp919-.Ltmp918              #   Call between .Ltmp918 and .Ltmp919
	.uleb128 .Ltmp922-.Lfunc_begin10        #     jumps to .Ltmp922
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp925-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp926-.Ltmp925              #   Call between .Ltmp925 and .Ltmp926
	.uleb128 .Ltmp943-.Lfunc_begin10        #     jumps to .Ltmp943
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp920-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp921-.Ltmp920              #   Call between .Ltmp920 and .Ltmp921
	.uleb128 .Ltmp922-.Lfunc_begin10        #     jumps to .Ltmp922
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp942-.Ltmp927              #   Call between .Ltmp927 and .Ltmp942
	.uleb128 .Ltmp943-.Lfunc_begin10        #     jumps to .Ltmp943
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp944-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp955-.Ltmp944              #   Call between .Ltmp944 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin10        #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp955-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp975-.Ltmp955              #   Call between .Ltmp955 and .Ltmp975
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp975-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Ltmp976-.Ltmp975              #   Call between .Ltmp975 and .Ltmp976
	.uleb128 .Ltmp977-.Lfunc_begin10        #     jumps to .Ltmp977
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin10        # >> Call Site 17 <<
	.uleb128 .Ltmp968-.Ltmp957              #   Call between .Ltmp957 and .Ltmp968
	.uleb128 .Ltmp971-.Lfunc_begin10        #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp968-.Lfunc_begin10        # >> Call Site 18 <<
	.uleb128 .Ltmp972-.Ltmp968              #   Call between .Ltmp968 and .Ltmp972
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp972-.Lfunc_begin10        # >> Call Site 19 <<
	.uleb128 .Ltmp973-.Ltmp972              #   Call between .Ltmp972 and .Ltmp973
	.uleb128 .Ltmp974-.Lfunc_begin10        #     jumps to .Ltmp974
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp973-.Lfunc_begin10        # >> Call Site 20 <<
	.uleb128 .Ltmp978-.Ltmp973              #   Call between .Ltmp973 and .Ltmp978
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin10        # >> Call Site 21 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin10        #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin10        # >> Call Site 22 <<
	.uleb128 .Ltmp970-.Ltmp969              #   Call between .Ltmp969 and .Ltmp970
	.uleb128 .Ltmp971-.Lfunc_begin10        #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp970-.Lfunc_begin10        # >> Call Site 23 <<
	.uleb128 .Lfunc_end15-.Ltmp970          #   Call between .Ltmp970 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.LCPI16_0:
	.dword	0x4059000000000000              # double 100
.LCPI16_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.section	.text._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"axG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.weak	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.p2align	5
	.type	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,@function
_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd: # @_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.d	$s0, $sp, 336
	move	$s2, $a7
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	move	$s1, $a4
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$s8, $a1
	move	$s7, $a0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s7, 0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	beqz	$a0, .LBB16_10
# %bb.1:                                # %if.end
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	addi.w	$fp, $a1, 0
	bltz	$fp, .LBB16_186
# %bb.2:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s5, $s7, 128
	slli.d	$a0, $a0, 30
	srai.d	$s4, $a0, 32
	slli.d	$s3, $s4, 3
	beqz	$fp, .LBB16_13
# %bb.3:                                # %if.then.i.i.i.i3.i.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $s6, 0
	ori	$a0, $zero, 1
	addi.d	$s0, $s6, 8
	beq	$fp, $a0, .LBB16_5
# %bb.4:                                # %if.end.i.i.i.i.i.i.i
	move	$a0, $s0
	add.d	$s0, $s6, $s3
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_5:                               # %for.body.lr.ph.i
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	bltz	$s5, .LBB16_14
.LBB16_6:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i89
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	beqz	$s5, .LBB16_18
# %bb.7:                                # %if.then.i.i.i.i3.i.i91
	slli.d	$s1, $s5, 3
.Ltmp984:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp985:                               # EH_LABEL
# %bb.8:                                # %call5.i.i.i2.i.i3.i93.noexc
	move	$s0, $a0
	alsl.d	$a0, $s5, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $s0, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s0, 8
	bne	$s5, $a1, .LBB16_20
# %bb.9:
	move	$s5, $a0
	b	.LBB16_21
.LBB16_10:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 92
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 78
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB16_187
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB16_16
# %bb.12:                               # %if.then.i2.i.i
	ld.bu	$a0, $fp, 67
	b	.LBB16_17
.LBB16_13:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s0, $zero
	move	$s6, $zero
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	bgez	$s5, .LBB16_6
.LBB16_14:                              # %if.then.i.i.i104
.Ltmp1084:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1085:                              # EH_LABEL
# %bb.15:                               # %.noexc
.LBB16_16:                              # %if.end.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB16_17:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB16_18:
	move	$s5, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$fp, .LBB16_22
.LBB16_19:
	move	$s1, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB16_27
.LBB16_20:                              # %if.end.i.i.i.i.i.i.i98
	add.d	$s5, $s0, $s1
	addi.d	$a2, $s1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_21:                              # %for.body.lr.ph.i100
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB16_19
.LBB16_22:                              # %if.then.i.i.i.i3.i.i113
.Ltmp986:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp987:                               # EH_LABEL
# %bb.23:                               # %call5.i.i.i2.i.i3.i115.noexc
	move	$s1, $a0
	alsl.d	$a0, $s4, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $s1, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s1, 8
	bne	$fp, $a1, .LBB16_25
# %bb.24:
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB16_26
.LBB16_25:                              # %if.end.i.i.i.i.i.i.i120
	add.d	$fp, $s1, $s3
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
.LBB16_26:                              # %for.body.lr.ph.i122
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB16_27:                              # %invoke.cont8
	st.d	$zero, $s2, 0
.Ltmp989:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
.Ltmp990:                               # EH_LABEL
# %bb.28:                               # %invoke.cont15
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB16_36
# %bb.29:                               # %for.body.preheader.i
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a4, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a4, .LBB16_34
# %bb.30:                               # %for.body.preheader.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB16_34
# %bb.31:                               # %vector.ph
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s0, 16
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vfmul.d	$vr3, $vr1, $vr0
	vfmul.d	$vr4, $vr2, $vr0
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB16_32
# %bb.33:                               # %middle.block
	beq	$a1, $a2, .LBB16_36
.LBB16_34:                              # %for.body.i.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB16_35:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa1, $fa0
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_35
.LBB16_36:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit
.Ltmp991:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
.Ltmp992:                               # EH_LABEL
# %bb.37:                               # %invoke.cont17
.Ltmp993:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp994:                               # EH_LABEL
# %bb.38:                               # %invoke.cont19
	fmov.d	$fs4, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB16_44
# %bb.39:                               # %for.body.preheader.i140
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	movgr2fr.d	$fa0, $zero
	b	.LBB16_41
	.p2align	4, , 16
.LBB16_40:                              # %for.cond.cleanup14.i
                                        #   in Loop: Header=BB16_41 Depth=1
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa1, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_44
.LBB16_41:                              # %for.body.i141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_43 Depth 2
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa1, $fa1, $fa0
	bge	$t1, $a6, .LBB16_40
# %bb.42:                               # %for.body15.preheader.i
                                        #   in Loop: Header=BB16_41 Depth=1
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_43:                              # %for.body15.i
                                        #   Parent Loop BB16_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	fld.d	$fa2, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa3, $s0, $t2
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_43
	b	.LBB16_40
.LBB16_44:                              # %invoke.cont21
.Ltmp995:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp996:                               # EH_LABEL
# %bb.45:                               # %invoke.cont22
.Ltmp997:                               # EH_LABEL
	fmov.d	$fs5, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp998:                               # EH_LABEL
# %bb.46:                               # %invoke.cont26
	fmov.d	$fs6, $fa0
	ld.d	$a1, $s8, 16
	ld.d	$a0, $s8, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	addi.w	$a1, $a3, 0
	blez	$a1, .LBB16_51
# %bb.47:                               # %for.body.preheader.i158
	bstrpick.d	$a1, $a3, 30, 0
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB16_163
# %bb.48:
	move	$a2, $zero
.LBB16_49:                              # %for.body.i160.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s6, 3
	alsl.d	$a4, $a2, $s1, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_50:                              # %for.body.i160
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a4, 0
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_50
.LBB16_51:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit170
.Ltmp999:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1000:                              # EH_LABEL
# %bb.52:                               # %invoke.cont28
.Ltmp1001:                              # EH_LABEL
	fmov.d	$fs7, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1002:                              # EH_LABEL
# %bb.53:                               # %invoke.cont32
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs3, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s6
	srai.d	$s4, $a0, 3
	addi.w	$fp, $s4, 0
	fmov.d	$fs1, $fs3
	blez	$fp, .LBB16_56
# %bb.54:                               # %for.body.preheader.i181
	bstrpick.d	$a0, $s4, 30, 0
	movgr2fr.d	$fs1, $zero
	move	$a1, $s6
	.p2align	4, , 16
.LBB16_55:                              # %for.body.i183
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs1, $fs1, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB16_55
.LBB16_56:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit
.Ltmp1003:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1004:                              # EH_LABEL
# %bb.57:                               # %invoke.cont35
	fmov.d	$fs2, $fa0
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_188
.LBB16_58:                              # %invoke.cont35.split
	fst.d	$fa0, $s2, 0
.Ltmp1005:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a1, $a1, %pc_lo12(.L.str.106)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1006:                              # EH_LABEL
# %bb.59:                               # %invoke.cont42
	fld.d	$fa0, $s2, 0
.Ltmp1007:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1008:                              # EH_LABEL
# %bb.60:                               # %invoke.cont44
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB16_189
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB16_63
# %bb.62:                               # %if.then.i2.i.i461
	ld.bu	$a0, $s8, 67
	b	.LBB16_65
.LBB16_63:                              # %if.end.i.i.i466
.Ltmp1009:                              # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1010:                              # EH_LABEL
# %bb.64:                               # %.noexc472
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp1011:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp1012:                              # EH_LABEL
.LBB16_65:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp1013:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1014:                              # EH_LABEL
# %bb.66:                               # %call1.i464.noexc
.Ltmp1015:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1016:                              # EH_LABEL
# %bb.67:                               # %for.cond.preheader
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fsub.d	$fa0, $fa1, $fa0
	fsub.d	$fa1, $fs5, $fs4
	fadd.d	$fa0, $fa0, $fs3
	fsub.d	$fa2, $fs7, $fs6
	fsub.d	$fa3, $fs2, $fs0
	movgr2fr.d	$fs5, $zero
	fadd.d	$fa1, $fa1, $fs3
	fst.d	$fa1, $sp, 168                  # 8-byte Folded Spill
	fadd.d	$fs7, $fa0, $fa2
	fadd.d	$fa0, $fa3, $fs5
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blez	$a1, .LBB16_161
# %bb.68:                               # %land.rhs.lr.ph
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	mul.d	$a0, $a1, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slti	$a1, $a0, 50
	ori	$a2, $zero, 50
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a2, $s5
	bstrpick.d	$s5, $s4, 30, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $s1
	srai.d	$a1, $a0, 3
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $s0
	srai.d	$a1, $a0, 3
	bstrpick.d	$a0, $a0, 33, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s6, $a0, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu52i.d	$a0, $zero, 971
	movgr2fr.d	$fa0, $a0
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	addi.w	$a0, $a1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB16_69:                              # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_78 Depth 2
                                        #     Child Loop BB16_92 Depth 2
                                        #     Child Loop BB16_95 Depth 2
                                        #     Child Loop BB16_85 Depth 2
                                        #     Child Loop BB16_88 Depth 2
                                        #     Child Loop BB16_116 Depth 2
                                        #       Child Loop BB16_118 Depth 3
                                        #     Child Loop BB16_123 Depth 2
                                        #     Child Loop BB16_129 Depth 2
                                        #     Child Loop BB16_133 Depth 2
                                        #     Child Loop BB16_156 Depth 2
                                        #     Child Loop BB16_144 Depth 2
                                        #     Child Loop BB16_149 Depth 2
                                        #     Child Loop BB16_152 Depth 2
	fld.d	$fa0, $s2, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa1, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_161
# %bb.70:                               # %for.body
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$s8, $a0
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB16_75
# %bb.71:                               # %if.then53
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1026:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1027:                              # EH_LABEL
# %bb.72:                               # %invoke.cont55
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	blez	$fp, .LBB16_89
# %bb.73:                               # %for.body.i210.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_84
# %bb.74:                               #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_87
	.p2align	4, , 16
.LBB16_75:                              # %if.else
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1017:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1018:                              # EH_LABEL
# %bb.76:                               # %invoke.cont61
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs6, $zero
	blez	$fp, .LBB16_79
# %bb.77:                               # %for.body.i234.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s5
	.p2align	4, , 16
.LBB16_78:                              # %for.body.i234
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_78
.LBB16_79:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit243
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1019:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1020:                              # EH_LABEL
# %bb.80:                               # %invoke.cont64
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1021:                              # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1022:                              # EH_LABEL
# %bb.81:                               # %invoke.cont70
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs3, $fa0
	blez	$fp, .LBB16_96
# %bb.82:                               # %for.body.i257.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	fdiv.d	$fa0, $fs6, $fs1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_91
# %bb.83:                               #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_94
.LBB16_84:                              # %vector.body681.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s0, 16
	move	$a2, $s6
	vld	$vr4, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB16_85:                              # %vector.body681
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, -16
	vld	$vr1, $a0, 0
	vfmul.d	$vr2, $vr0, $vr4
	vfmul.d	$vr3, $vr1, $vr4
	vfadd.d	$vr0, $vr0, $vr2
	vfadd.d	$vr1, $vr1, $vr3
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_85
# %bb.86:                               # %middle.block686
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_89
.LBB16_87:                              # %for.body.i210.preheader708
                                        #   in Loop: Header=BB16_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_88:                              # %for.body.i210
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a2, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_88
.LBB16_89:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit220
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1028:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1029:                              # EH_LABEL
# %bb.90:                               # %invoke.cont57
                                        #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fs4, $fa0, $fs0
	b	.LBB16_98
.LBB16_91:                              # %vector.ph691
                                        #   in Loop: Header=BB16_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s0, 16
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_92:                              # %vector.body696
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a1, -16
	vst	$vr3, $a1, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_92
# %bb.93:                               # %middle.block703
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_96
.LBB16_94:                              # %for.body.i257.preheader709
                                        #   in Loop: Header=BB16_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s0, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_95:                              # %for.body.i257
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_95
.LBB16_96:                              # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit267
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1023:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1024:                              # EH_LABEL
# %bb.97:                               # %invoke.cont72
                                        #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 176                  # 8-byte Folded Spill
	fsub.d	$fs4, $fa0, $fs3
	fmov.d	$fs1, $fs6
.LBB16_98:                              # %if.end76
                                        #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fa0, $fs1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB16_158
# %bb.99:                               # %if.end76.split
                                        #   in Loop: Header=BB16_69 Depth=1
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB16_101
.LBB16_100:                             # %if.end76.split
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	mod.wu	$a0, $s8, $a0
	bnez	$a0, .LBB16_112
.LBB16_101:                             # %if.then81
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1030:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a1, $a1, %pc_lo12(.L.str.107)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1031:                              # EH_LABEL
# %bb.102:                              # %invoke.cont82
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1032:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp1033:                              # EH_LABEL
# %bb.103:                              # %invoke.cont84
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1034:                              # EH_LABEL
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a1, $a0, %pc_lo12(.L.str.108)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1035:                              # EH_LABEL
# %bb.104:                              # %invoke.cont86
                                        #   in Loop: Header=BB16_69 Depth=1
	fld.d	$fa0, $s2, 0
.Ltmp1036:                              # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1037:                              # EH_LABEL
# %bb.105:                              # %invoke.cont88
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB16_184
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i483
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB16_108
# %bb.107:                              # %if.then.i2.i.i486
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB16_110
.LBB16_108:                             # %if.end.i.i.i492
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1038:                              # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1039:                              # EH_LABEL
# %bb.109:                              # %.noexc498
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp1040:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp1041:                              # EH_LABEL
.LBB16_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i488
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1042:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1043:                              # EH_LABEL
# %bb.111:                              # %call1.i490.noexc
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1044:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1045:                              # EH_LABEL
.LBB16_112:                             # %if.end92
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1047:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1048:                              # EH_LABEL
# %bb.113:                              # %invoke.cont94
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs0, $fa0
	ld.d	$a0, $s7, 16
	ld.d	$a1, $s7, 8
	sub.d	$a0, $a0, $a1
	srai.d	$a3, $a0, 2
	addi.w	$a0, $a3, 0
	blez	$a0, .LBB16_119
# %bb.114:                              # %for.body.preheader.i296
                                        #   in Loop: Header=BB16_69 Depth=1
	ld.d	$a0, $s7, 32
	ld.d	$a1, $s7, 80
	ld.d	$a2, $s7, 104
	ld.w	$t1, $a0, 0
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 30, 0
	b	.LBB16_116
	.p2align	4, , 16
.LBB16_115:                             # %for.cond.cleanup14.i306
                                        #   in Loop: Header=BB16_116 Depth=2
	alsl.d	$a4, $a4, $s1, 3
	fst.d	$fa0, $a4, 0
	move	$t1, $a6
	move	$a4, $a5
	beq	$a5, $a3, .LBB16_119
.LBB16_116:                             # %for.body.i299
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_118 Depth 3
	slli.d	$a5, $a4, 3
	fldx.d	$fa0, $s1, $a5
	addi.d	$a5, $a4, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	fmul.d	$fa0, $fa0, $fs5
	bge	$t1, $a6, .LBB16_115
# %bb.117:                              # %for.body15.preheader.i309
                                        #   in Loop: Header=BB16_116 Depth=2
	sub.d	$a7, $a6, $t1
	alsl.d	$t0, $t1, $a1, 2
	alsl.d	$t1, $t1, $a2, 3
	.p2align	4, , 16
.LBB16_118:                             # %for.body15.i311
                                        #   Parent Loop BB16_69 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	fld.d	$fa1, $t1, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa2, $s0, $t2
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 8
	bnez	$a7, .LBB16_118
	b	.LBB16_115
	.p2align	4, , 16
.LBB16_119:                             # %invoke.cont96
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1049:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1050:                              # EH_LABEL
# %bb.120:                              # %invoke.cont97
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1051:                              # EH_LABEL
	fmov.d	$fs2, $fa0
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1052:                              # EH_LABEL
# %bb.121:                              # %invoke.cont101
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs3, $fa0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	fmov.d	$fs6, $fs5
	blez	$s3, .LBB16_124
# %bb.122:                              # %for.body.i336.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	fmov.d	$fs6, $fs5
	.p2align	4, , 16
.LBB16_123:                             # %for.body.i336
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB16_123
.LBB16_124:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit345
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1053:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1054:                              # EH_LABEL
# %bb.125:                              # %invoke.cont104
                                        #   in Loop: Header=BB16_69 Depth=1
	fadd.d	$fs7, $fs7, $fs4
	fsub.d	$fa1, $fs2, $fs0
	fld.d	$fa2, $sp, 168                  # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa1
	fst.d	$fa2, $sp, 168                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa0, $fs3
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 176                  # 8-byte Folded Spill
	bcnez	$fcc0, .LBB16_137
# %bb.126:                              # %if.then109
                                        #   in Loop: Header=BB16_69 Depth=1
	fcmp.clt.d	$fcc0, $fs6, $fs5
	bcnez	$fcc0, .LBB16_168
# %bb.127:                              # %lor.lhs.false111
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs5
	blez	$s3, .LBB16_130
# %bb.128:                              # %for.body.i.i.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_129:                             # %for.body.i.i
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_129
.LBB16_130:                             # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i
                                        #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB16_159
# %bb.131:                              # %_ZN6miniFE3dotINS_6VectorIdiiEEEENS_10TypeTraitsINT_10ScalarTypeEE14magnitude_typeERKS4_S9_.exit.i.split
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blez	$a0, .LBB16_134
.LBB16_132:                             # %for.body.i16.i.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	.p2align	4, , 16
.LBB16_133:                             # %for.body.i16.i
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a0, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_133
.LBB16_134:                             # %invoke.cont112
                                        #   in Loop: Header=BB16_69 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB16_160
.LBB16_135:                             # %invoke.cont112.split
                                        #   in Loop: Header=BB16_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_0)
	fabs.d	$fa2, $fs6
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fa1
	fcmp.cult.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB16_168
# %bb.136:                              # %if.else125
                                        #   in Loop: Header=BB16_69 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI16_1)
	fmul.d	$fa0, $fs6, $fa0
	fst.d	$fa0, $sp, 144                  # 8-byte Folded Spill
.LBB16_137:                             # %if.end127
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1055:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1056:                              # EH_LABEL
# %bb.138:                              # %invoke.cont129
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fs2, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a2, $a1, 3
	addi.w	$a1, $a2, 0
	fdiv.d	$fa0, $fs1, $fs6
	blez	$a1, .LBB16_145
# %bb.139:                              # %for.body.preheader.i368
                                        #   in Loop: Header=BB16_69 Depth=1
	bstrpick.d	$a1, $a2, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB16_142
# %bb.140:                              # %vector.memcheck657
                                        #   in Loop: Header=BB16_69 Depth=1
	alsl.d	$a3, $a1, $s0, 3
	bgeu	$a0, $a3, .LBB16_155
# %bb.141:                              # %vector.memcheck657
                                        #   in Loop: Header=BB16_69 Depth=1
	alsl.d	$a3, $a1, $a0, 3
	bgeu	$s0, $a3, .LBB16_155
.LBB16_142:                             #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
.LBB16_143:                             # %for.body.i370.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $s0, 3
	alsl.d	$a0, $a2, $a0, 3
	.p2align	4, , 16
.LBB16_144:                             # %for.body.i370
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a0, 0
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB16_144
.LBB16_145:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit380
                                        #   in Loop: Header=BB16_69 Depth=1
	blez	$fp, .LBB16_153
# %bb.146:                              # %for.body.i394.preheader
                                        #   in Loop: Header=BB16_69 Depth=1
	ori	$a0, $zero, 4
	bgeu	$s5, $a0, .LBB16_148
# %bb.147:                              #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $zero
	b	.LBB16_151
	.p2align	4, , 16
.LBB16_148:                             # %vector.ph644
                                        #   in Loop: Header=BB16_69 Depth=1
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $s1, 16
	move	$a2, $s6
	.p2align	4, , 16
.LBB16_149:                             # %vector.body647
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a1, -16
	vld	$vr3, $a1, 0
	vld	$vr4, $a0, -16
	vld	$vr5, $a0, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfsub.d	$vr2, $vr4, $vr2
	vfsub.d	$vr3, $vr5, $vr3
	vst	$vr2, $a0, -16
	vst	$vr3, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB16_149
# %bb.150:                              # %middle.block654
                                        #   in Loop: Header=BB16_69 Depth=1
	move	$a2, $s6
	beq	$s5, $s6, .LBB16_153
.LBB16_151:                             # %for.body.i394.preheader707
                                        #   in Loop: Header=BB16_69 Depth=1
	sub.d	$a0, $s5, $a2
	alsl.d	$a1, $a2, $s1, 3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	.p2align	4, , 16
.LBB16_152:                             # %for.body.i394
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a2, 0
	fmul.d	$fa1, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB16_152
.LBB16_153:                             # %_ZN6miniFE6waxpbyINS_6VectorIdiiEEEEvNT_10ScalarTypeERKS3_S4_S6_RS3_.exit404
                                        #   in Loop: Header=BB16_69 Depth=1
.Ltmp1057:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1058:                              # EH_LABEL
# %bb.154:                              # %invoke.cont132
                                        #   in Loop: Header=BB16_69 Depth=1
	fsub.d	$fa0, $fa0, $fs2
	fadd.d	$fs7, $fs7, $fa0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.w	$s8, $a0, 0
	addi.w	$a0, $s8, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$s8, $a1, .LBB16_69
	b	.LBB16_161
.LBB16_155:                             # %vector.ph661
                                        #   in Loop: Header=BB16_69 Depth=1
	bstrpick.d	$a2, $a2, 30, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB16_156:                             # %vector.body666
                                        #   Parent Loop BB16_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vld	$vr4, $a3, -16
	vld	$vr5, $a3, 0
	vfmul.d	$vr2, $vr1, $vr2
	vfmul.d	$vr3, $vr1, $vr3
	vfadd.d	$vr2, $vr4, $vr2
	vfadd.d	$vr3, $vr5, $vr3
	vst	$vr2, $a3, -16
	vst	$vr3, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a5, .LBB16_156
# %bb.157:                              # %middle.block673
                                        #   in Loop: Header=BB16_69 Depth=1
	beq	$a1, $a2, .LBB16_145
	b	.LBB16_143
.LBB16_158:                             # %call.sqrt861
                                        #   in Loop: Header=BB16_69 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB16_100
	b	.LBB16_101
.LBB16_159:                             # %call.sqrt862
                                        #   in Loop: Header=BB16_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bgtz	$a0, .LBB16_132
	b	.LBB16_134
.LBB16_160:                             # %call.sqrt863
                                        #   in Loop: Header=BB16_69 Depth=1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	b	.LBB16_135
.LBB16_161:                             # %for.end
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
	st.d	$zero, $s3, 24
.Ltmp1078:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1079:                              # EH_LABEL
# %bb.162:
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	b	.LBB16_177
.LBB16_163:                             # %vector.memcheck622
	sub.d	$a5, $s6, $a0
	ori	$a4, $zero, 32
	move	$a2, $zero
	bltu	$a5, $a4, .LBB16_49
# %bb.164:                              # %vector.memcheck622
	sub.d	$a5, $s6, $s1
	bltu	$a5, $a4, .LBB16_49
# %bb.165:                              # %vector.ph629
	bstrpick.d	$a2, $a3, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s6, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB16_166:                             # %vector.body632
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB16_166
# %bb.167:                              # %middle.block639
	bne	$a1, $a2, .LBB16_49
	b	.LBB16_51
.LBB16_168:                             # %if.then114
.Ltmp1060:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a1, $a0, %pc_lo12(.L.str.109)
	ori	$a2, $zero, 44
	move	$a0, $s2
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1061:                              # EH_LABEL
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
# %bb.169:                              # %invoke.cont115
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB16_191
# %bb.170:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i509
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB16_172
# %bb.171:                              # %if.then.i2.i.i512
	ld.bu	$a0, $s2, 67
	b	.LBB16_174
.LBB16_172:                             # %if.end.i.i.i518
.Ltmp1062:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1063:                              # EH_LABEL
# %bb.173:                              # %.noexc524
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1064:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1065:                              # EH_LABEL
.LBB16_174:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i514
.Ltmp1066:                              # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1067:                              # EH_LABEL
# %bb.175:                              # %call1.i516.noexc
.Ltmp1068:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1069:                              # EH_LABEL
# %bb.176:                              # %invoke.cont117
	fst.d	$fs7, $s3, 0
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 8
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa0, $s3, 16
.Ltmp1070:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1071:                              # EH_LABEL
.LBB16_177:                             # %cleanup148
	fld.d	$fa1, $sp, 64                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 32
	beqz	$s1, .LBB16_179
# %bb.178:                              # %if.then.i.i.i.i
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_179:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit
	beqz	$s0, .LBB16_181
# %bb.180:                              # %if.then.i.i.i.i411
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_181:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit416
	beqz	$fp, .LBB16_183
# %bb.182:                              # %if.then.i.i.i.i419
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_183:                             # %cleanup176
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB16_184:                             # %if.then.i.i.i496
.Ltmp1075:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1076:                              # EH_LABEL
# %bb.185:                              # %.noexc497
.LBB16_186:                             # %if.then.i.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB16_187:                             # %if.then.i.i.i451
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB16_188:                             # %call.sqrt
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB16_58
.LBB16_189:                             # %if.then.i.i.i470
.Ltmp1081:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1082:                              # EH_LABEL
# %bb.190:                              # %.noexc471
.LBB16_191:                             # %if.then.i.i.i522
.Ltmp1072:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1073:                              # EH_LABEL
# %bb.192:                              # %.noexc523
.LBB16_193:                             # %lpad7
.Ltmp988:                               # EH_LABEL
	move	$s2, $a0
	beqz	$s0, .LBB16_204
	b	.LBB16_207
.LBB16_194:                             # %lpad143
.Ltmp1080:                              # EH_LABEL
	b	.LBB16_202
.LBB16_195:                             # %lpad93.loopexit.split-lp
.Ltmp1074:                              # EH_LABEL
	b	.LBB16_202
.LBB16_196:                             # %lpad
.Ltmp1086:                              # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_205
	b	.LBB16_208
.LBB16_197:                             # %lpad54.loopexit.split-lp
.Ltmp1077:                              # EH_LABEL
	b	.LBB16_202
.LBB16_198:                             # %lpad69
.Ltmp1025:                              # EH_LABEL
	b	.LBB16_202
.LBB16_199:                             # %lpad14
.Ltmp1083:                              # EH_LABEL
	b	.LBB16_202
.LBB16_200:                             # %lpad54.loopexit
.Ltmp1046:                              # EH_LABEL
	b	.LBB16_202
.LBB16_201:                             # %lpad93.loopexit
.Ltmp1059:                              # EH_LABEL
.LBB16_202:                             # %ehcleanup151
	move	$s2, $a0
	bnez	$s1, .LBB16_206
# %bb.203:                              # %ehcleanup163
	bnez	$s0, .LBB16_207
.LBB16_204:                             # %ehcleanup167
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bnez	$a0, .LBB16_208
.LBB16_205:                             # %_ZN6miniFE6VectorIdiiED2Ev.exit448
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_206:                             # %if.then.i.i.i.i427
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB16_204
.LBB16_207:                             # %if.then.i.i.i.i435
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB16_205
.LBB16_208:                             # %if.then.i.i.i.i443
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd, .Lfunc_end16-_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,"aG",@progbits,_ZN6miniFE8cg_solveINS_9CSRMatrixIdiiEENS_6VectorIdiiEENS_10matvec_stdIS2_S4_EEEEvRT_RKT0_RS9_T1_NS7_16LocalOrdinalTypeERNS_10TypeTraitsINS7_10ScalarTypeEE14magnitude_typeERSE_SJ_Pd,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp984-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp984
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp1086-.Lfunc_begin11       #     jumps to .Ltmp1086
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp985-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp1084-.Ltmp985             #   Call between .Ltmp985 and .Ltmp1084
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1084-.Lfunc_begin11       # >> Call Site 4 <<
	.uleb128 .Ltmp1085-.Ltmp1084            #   Call between .Ltmp1084 and .Ltmp1085
	.uleb128 .Ltmp1086-.Lfunc_begin11       #     jumps to .Ltmp1086
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1085-.Lfunc_begin11       # >> Call Site 5 <<
	.uleb128 .Ltmp986-.Ltmp1085             #   Call between .Ltmp1085 and .Ltmp986
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp986-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp987-.Ltmp986              #   Call between .Ltmp986 and .Ltmp987
	.uleb128 .Ltmp988-.Lfunc_begin11        #     jumps to .Ltmp988
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp987-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp989-.Ltmp987              #   Call between .Ltmp987 and .Ltmp989
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp989-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp1016-.Ltmp989             #   Call between .Ltmp989 and .Ltmp1016
	.uleb128 .Ltmp1083-.Lfunc_begin11       #     jumps to .Ltmp1083
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1026-.Lfunc_begin11       # >> Call Site 9 <<
	.uleb128 .Ltmp1020-.Ltmp1026            #   Call between .Ltmp1026 and .Ltmp1020
	.uleb128 .Ltmp1046-.Lfunc_begin11       #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1021-.Lfunc_begin11       # >> Call Site 10 <<
	.uleb128 .Ltmp1022-.Ltmp1021            #   Call between .Ltmp1021 and .Ltmp1022
	.uleb128 .Ltmp1025-.Lfunc_begin11       #     jumps to .Ltmp1025
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1028-.Lfunc_begin11       # >> Call Site 11 <<
	.uleb128 .Ltmp1029-.Ltmp1028            #   Call between .Ltmp1028 and .Ltmp1029
	.uleb128 .Ltmp1046-.Lfunc_begin11       #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1023-.Lfunc_begin11       # >> Call Site 12 <<
	.uleb128 .Ltmp1024-.Ltmp1023            #   Call between .Ltmp1023 and .Ltmp1024
	.uleb128 .Ltmp1025-.Lfunc_begin11       #     jumps to .Ltmp1025
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1030-.Lfunc_begin11       # >> Call Site 13 <<
	.uleb128 .Ltmp1045-.Ltmp1030            #   Call between .Ltmp1030 and .Ltmp1045
	.uleb128 .Ltmp1046-.Lfunc_begin11       #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1047-.Lfunc_begin11       # >> Call Site 14 <<
	.uleb128 .Ltmp1058-.Ltmp1047            #   Call between .Ltmp1047 and .Ltmp1058
	.uleb128 .Ltmp1059-.Lfunc_begin11       #     jumps to .Ltmp1059
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1058-.Lfunc_begin11       # >> Call Site 15 <<
	.uleb128 .Ltmp1078-.Ltmp1058            #   Call between .Ltmp1058 and .Ltmp1078
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1078-.Lfunc_begin11       # >> Call Site 16 <<
	.uleb128 .Ltmp1079-.Ltmp1078            #   Call between .Ltmp1078 and .Ltmp1079
	.uleb128 .Ltmp1080-.Lfunc_begin11       #     jumps to .Ltmp1080
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1060-.Lfunc_begin11       # >> Call Site 17 <<
	.uleb128 .Ltmp1071-.Ltmp1060            #   Call between .Ltmp1060 and .Ltmp1071
	.uleb128 .Ltmp1074-.Lfunc_begin11       #     jumps to .Ltmp1074
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1071-.Lfunc_begin11       # >> Call Site 18 <<
	.uleb128 .Ltmp1075-.Ltmp1071            #   Call between .Ltmp1071 and .Ltmp1075
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1075-.Lfunc_begin11       # >> Call Site 19 <<
	.uleb128 .Ltmp1076-.Ltmp1075            #   Call between .Ltmp1075 and .Ltmp1076
	.uleb128 .Ltmp1077-.Lfunc_begin11       #     jumps to .Ltmp1077
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1076-.Lfunc_begin11       # >> Call Site 20 <<
	.uleb128 .Ltmp1081-.Ltmp1076            #   Call between .Ltmp1076 and .Ltmp1081
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1081-.Lfunc_begin11       # >> Call Site 21 <<
	.uleb128 .Ltmp1082-.Ltmp1081            #   Call between .Ltmp1081 and .Ltmp1082
	.uleb128 .Ltmp1083-.Lfunc_begin11       #     jumps to .Ltmp1083
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1072-.Lfunc_begin11       # >> Call Site 22 <<
	.uleb128 .Ltmp1073-.Ltmp1072            #   Call between .Ltmp1072 and .Ltmp1073
	.uleb128 .Ltmp1074-.Lfunc_begin11       #     jumps to .Ltmp1074
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1073-.Lfunc_begin11       # >> Call Site 23 <<
	.uleb128 .Lfunc_end16-.Ltmp1073         #   Call between .Ltmp1073 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.LCPI17_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
.LCPI17_1:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI17_2:
	.dword	0x4023bd3cc9be45de              # double 9.869604401089358
.LCPI17_3:
	.dword	0x3ff9f02f6222c720              # double 1.6211389382774044
	.section	.text._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"axG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.weak	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.p2align	5
	.type	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,@function
_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db: # @_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	ld.w	$a5, $a0, 184
	ld.w	$a3, $a0, 188
	ld.w	$a6, $a0, 164
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	fmov.d	$fs6, $fa0
	slt	$a4, $a5, $a3
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	xor	$a2, $a3, $a6
	sltui	$a2, $a2, 1
	and	$a2, $a4, $a2
	add.w	$a2, $a3, $a2
	movgr2fr.d	$fs7, $zero
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	bge	$a5, $a2, .LBB17_46
# %bb.1:                                # %for.cond62.preheader.lr.ph
	ld.w	$a6, $a0, 176
	ld.w	$a4, $a0, 180
	ld.w	$a3, $a0, 156
	slt	$a2, $a6, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	xor	$a3, $a4, $a3
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	add.w	$a2, $a4, $a2
	move	$s3, $zero
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bge	$a6, $a2, .LBB17_55
# %bb.2:                                # %for.cond62.preheader.lr.ph
	ld.w	$a4, $a0, 168
	ld.w	$a3, $a0, 172
	ld.w	$a7, $a0, 148
	slt	$a0, $a4, $a3
	xor	$a2, $a3, $a7
	sltui	$a2, $a2, 1
	and	$a0, $a0, $a2
	add.w	$a0, $a3, $a0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bge	$a4, $a0, .LBB17_55
# %bb.3:                                # %for.cond62.preheader.us.us.preheader
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$s4, $zero
	move	$t2, $zero
	move	$fp, $zero
	move	$s6, $zero
	move	$t1, $zero
	move	$s3, $zero
	addi.w	$t0, $a7, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	slt	$a2, $a1, $t0
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $t0, $a2
	or	$a2, $a2, $a3
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a0, $a3
	or	$a1, $a3, $a1
	ori	$a3, $zero, 1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	movgr2fr.w	$fa0, $a3
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa1, $a1
	mul.w	$a1, $a0, $t0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ffint.d.w	$fs0, $fa0
	ffint.d.l	$fs2, $fa1
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fs3, $fa0
	mul.d	$a0, $a5, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$t0, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $a0, $t0
	vldi	$vr2, -800
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	b	.LBB17_5
	.p2align	4, , 16
.LBB17_4:                               # %for.cond62.for.cond.cleanup66_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB17_5 Depth=1
	addi.w	$a5, $a5, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$a5, $a0, .LBB17_56
.LBB17_5:                               # %for.cond62.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #       Child Loop BB17_10 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slt	$a0, $a0, $a5
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               # %for.cond70.for.cond.cleanup74_crit_edge.us.us.us
                                        #   in Loop: Header=BB17_7 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a2, $a0, .LBB17_4
.LBB17_7:                               # %for.cond70.preheader.us.us.us
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_10 Depth 3
	or	$a0, $a2, $a5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slt	$a0, $a0, $a2
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB17_10
	.p2align	4, , 16
.LBB17_8:                               # %if.then.i133.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs4, $s7, 0
	addi.d	$t2, $s7, 8
	move	$fp, $s4
	move	$s4, $a0
.LBB17_9:                               # %if.end97.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	addi.w	$s8, $s8, 1
	addi.d	$s2, $s2, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB17_6
.LBB17_10:                              # %for.body75.us.us.us
                                        #   Parent Loop BB17_5 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a0, $s8
	addi.w	$s1, $zero, -1
	slt	$a0, $s1, $a0
	slt	$a1, $a7, $s8
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	andi	$a1, $a1, 1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	add.w	$a2, $a2, $s8
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $s1, $a0
	or	$a0, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	div.w	$a1, $a0, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs4, $fa0, $fs0
	mul.d	$a1, $a1, $a2
	sub.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa0, $fs2
	mod.w	$a0, $a0, $a2
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs5, $fa0, $fs3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB17_15
.LBB17_11:                              # %if.then93.critedge.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	beq	$t1, $s6, .LBB17_18
# %bb.12:                               # %if.then.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.w	$s2, $t1, 0
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	beq	$t2, $s4, .LBB17_25
.LBB17_13:                              # %if.then.i74.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs5, $t2, 0
	move	$s5, $fp
	addi.d	$a0, $t2, 8
	beq	$a0, $s4, .LBB17_32
.LBB17_14:                              # %if.then.i101.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	fst.d	$fs1, $t2, 8
	addi.d	$s7, $t2, 16
	move	$a0, $s4
	move	$s4, $s5
	addi.d	$t1, $t1, 4
	bne	$s7, $a0, .LBB17_8
	b	.LBB17_39
	.p2align	4, , 16
.LBB17_15:                              # %if.else.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_0)
	fadd.d	$fa1, $fs5, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
# %bb.16:                               # %land.lhs.true81.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	fadd.d	$fa1, $fs1, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
# %bb.17:                               # %land.lhs.true85.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	fadd.d	$fa1, $fs4, $fa2
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_9
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_18:                              # %if.else.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s7, $s4
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	sub.d	$s4, $s6, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB17_121
# %bb.19:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s0, $t2
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
.Ltmp1087:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1088:                              # EH_LABEL
# %bb.20:                               # %call5.i.i.i.i.noexc.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s6, $a0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	stx.w	$s2, $s6, $s4
	blez	$s4, .LBB17_22
# %bb.21:                               # %if.then.i.i.i.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s6
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_22:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	beqz	$s3, .LBB17_24
# %bb.23:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_24:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s3, $s6
	add.d	$t1, $s6, $s4
	alsl.d	$s6, $s5, $s6, 2
	move	$s4, $s7
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	vldi	$vr2, -800
	move	$t2, $s0
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	bne	$t2, $s4, .LBB17_13
.LBB17_25:                              # %if.else.i77.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s7, $s4
	sub.d	$s4, $s4, $fp
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB17_123
# %bb.26:                               # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	srai.d	$a0, $s4, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s1, 255
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s6, $a0, $a1
	slli.d	$a0, $s6, 3
.Ltmp1089:                              # EH_LABEL
	move	$s0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1090:                              # EH_LABEL
# %bb.27:                               # %call5.i.i.i.i.noexc96.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s5, $a0
	fstx.d	$fs5, $a0, $s4
	blez	$s4, .LBB17_29
# %bb.28:                               # %if.then.i.i.i.i.i93.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_29:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s3, $s0
	beqz	$fp, .LBB17_31
# %bb.30:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i.i.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_31:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$t2, $s5, $s4
	alsl.d	$s4, $s6, $s5, 3
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	vldi	$vr2, -800
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $t2, 8
	bne	$a0, $s4, .LBB17_14
.LBB17_32:                              # %if.else.i104.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	sub.d	$s6, $s4, $s5
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB17_117
# %bb.33:                               # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i111.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$s7, $s4
	srai.d	$a0, $s6, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s1, 255
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 3
.Ltmp1091:                              # EH_LABEL
	move	$s2, $s3
	move	$fp, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1092:                              # EH_LABEL
# %bb.34:                               # %call5.i.i.i.i.noexc127.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s4, $a0
	fstx.d	$fs1, $a0, $s6
	blez	$s6, .LBB17_36
# %bb.35:                               # %if.then.i.i.i.i.i124.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_36:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i118.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s3, $s2
	beqz	$s5, .LBB17_38
# %bb.37:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i.i.i120.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_38:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i121.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$a0, $s4, $s6
	addi.d	$s7, $a0, 8
	alsl.d	$a0, $s0, $s4, 3
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	vldi	$vr2, -800
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 4
	bne	$s7, $a0, .LBB17_8
.LBB17_39:                              # %if.else.i136.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	sub.d	$s5, $s7, $s4
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB17_119
# %bb.40:                               # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i143.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s0, $t1
	srai.d	$a0, $s5, 3
	ori	$a3, $zero, 1
	sltu	$a2, $a3, $a0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	add.d	$a0, $a2, $a0
	lu52i.d	$a2, $s1, 255
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$s1, $a0, $a2
	slli.d	$a0, $s1, 3
.Ltmp1093:                              # EH_LABEL
	move	$s2, $s3
	move	$fp, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1094:                              # EH_LABEL
# %bb.41:                               # %call5.i.i.i.i.noexc159.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s6, $a0
	fstx.d	$fs4, $a0, $s5
	blez	$s5, .LBB17_43
# %bb.42:                               # %if.then.i.i.i.i.i156.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_43:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i150.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$s3, $s2
	beqz	$s4, .LBB17_45
# %bb.44:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i.i.i152.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_45:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i153.us.us.us
                                        #   in Loop: Header=BB17_10 Depth=3
	add.d	$a0, $s6, $s5
	addi.d	$t2, $a0, 8
	alsl.d	$s4, $s1, $s6, 3
	move	$fp, $s6
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	move	$t1, $s0
	vldi	$vr2, -800
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB17_9
.LBB17_46:
	move	$s3, $zero
	move	$s6, $zero
	move	$fp, $zero
	move	$s4, $zero
.LBB17_47:
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bceqz	$fcc0, .LBB17_77
.LBB17_48:                              # %if.else209
.Ltmp1096:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a1, $a1, %pc_lo12(.L.str.117)
	ori	$a2, $zero, 45
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1097:                              # EH_LABEL
# %bb.49:                               # %invoke.cont210
.Ltmp1098:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1099:                              # EH_LABEL
# %bb.50:                               # %invoke.cont212
.Ltmp1100:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.118)
	addi.d	$a1, $a0, %pc_lo12(.L.str.118)
	ori	$a2, $zero, 11
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1101:                              # EH_LABEL
# %bb.51:                               # %invoke.cont214
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.52:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i338
	ld.bu	$a0, $s2, 56
	bnez	$a0, .LBB17_107
# %bb.53:                               # %if.end.i.i.i347
.Ltmp1102:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1103:                              # EH_LABEL
# %bb.54:                               # %.noexc352
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1104:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1105:                              # EH_LABEL
	b	.LBB17_110
.LBB17_55:
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	move	$s6, $s3
	move	$fp, $s3
	move	$s4, $s3
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bceqz	$fcc0, .LBB17_77
	b	.LBB17_48
.LBB17_56:                              # %for.cond106.preheader
	beq	$t1, $s3, .LBB17_47
# %bb.57:                               # %for.body110.lr.ph
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 64                   # 8-byte Folded Spill
	move	$s0, $zero
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $t1, $s3
	srai.d	$fp, $a0, 2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	movgr2fr.d	$fa2, $zero
	vldi	$vr3, -912
	pcalau12i	$a0, %pc_hi20(.LCPI17_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_1)
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	addi.w	$s2, $zero, -7
	lu32i.d	$s2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI17_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI17_2)
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	addi.w	$s3, $zero, -3
	lu32i.d	$s3, 0
	ori	$s4, $zero, 603
	ori	$s5, $zero, 300
	pcalau12i	$s6, %pc_hi20(.LCPI17_3)
	fmov.d	$fs7, $fa2
                                        # implicit-def: $f26_64
                                        # implicit-def: $f24_64
                                        # implicit-def: $f29_64
                                        # implicit-def: $f28_64
                                        # implicit-def: $f27_64
	fst.d	$fa2, $sp, 72                   # 8-byte Folded Spill
	b	.LBB17_59
	.p2align	4, , 16
.LBB17_58:                              # %if.end155
                                        #   in Loop: Header=BB17_59 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s0, $fp, .LBB17_75
.LBB17_59:                              # %for.body110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_69 Depth 2
                                        #       Child Loop BB17_70 Depth 3
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	fldx.d	$fa4, $s1, $a0
	slli.d	$a0, $s0, 4
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	fldx.d	$fs6, $a2, $a0
	fld.d	$fa0, $a1, 8
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	fld.d	$fs1, $a1, 16
	vldi	$vr0, -912
	fcmp.ceq.d	$fcc0, $fs6, $fa0
	bceqz	$fcc0, .LBB17_62
.LBB17_60:                              # %if.end142
                                        #   in Loop: Header=BB17_59 Depth=1
	fsub.d	$fa1, $fa0, $fa4
	fabs.d	$fa1, $fa1
	fcmp.cule.d	$fcc0, $fa1, $fs7
	bcnez	$fcc0, .LBB17_58
# %bb.61:                               # %if.then148
                                        #   in Loop: Header=BB17_59 Depth=1
	fmov.d	$fs3, $fs1
	fld.d	$fs4, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$fs5, $fs6
	fmov.d	$fs0, $fa0
	fmov.d	$fs2, $fa4
	fmov.d	$fs7, $fa1
	b	.LBB17_58
	.p2align	4, , 16
.LBB17_62:                              # %if.else125
                                        #   in Loop: Header=BB17_59 Depth=1
	fcmp.ceq.d	$fcc0, $fs6, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB17_60
# %bb.63:                               # %if.else125
                                        #   in Loop: Header=BB17_59 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB17_60
# %bb.64:                               # %if.else125
                                        #   in Loop: Header=BB17_59 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa2
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB17_60
# %bb.65:                               # %if.else131
                                        #   in Loop: Header=BB17_59 Depth=1
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fcmp.ceq.d	$fcc0, $fa0, $fa3
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB17_60
# %bb.66:                               # %if.else131
                                        #   in Loop: Header=BB17_59 Depth=1
	fcmp.ceq.d	$fcc0, $fs1, $fa3
	fmov.d	$fa0, $fa2
	bcnez	$fcc0, .LBB17_60
# %bb.67:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB17_59 Depth=1
	fst.d	$fa4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 128                  # 8-byte Folded Spill
	move	$a0, $zero
	fmov.d	$fs2, $fa2
	b	.LBB17_69
	.p2align	4, , 16
.LBB17_68:                              # %cleanup26.i
                                        #   in Loop: Header=BB17_69 Depth=2
	addi.w	$a0, $s7, 1
	beq	$s7, $s5, .LBB17_74
.LBB17_69:                              # %for.body.i
                                        #   Parent Loop BB17_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_70 Depth 3
	move	$s7, $a0
	slli.d	$a0, $a0, 1
	addi.d	$s8, $a0, 1
	bstrpick.d	$a0, $s8, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $sp, 152                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fdiv.d	$fs5, $fa0, $fs0
	mul.d	$a0, $s8, $s8
	and	$a0, $a0, $s2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB17_70:                              # %for.body5.i
                                        #   Parent Loop BB17_59 Depth=1
                                        #     Parent Loop BB17_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s8, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs4, $fa0
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fs1, $fa0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	mul.d	$a0, $s8, $s8
	and	$a0, $a0, $s3
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa1, $fs3, $fa1
	fsqrt.d	$fs7, $fa1
	fcmp.cor.d	$fcc0, $fs7, $fs7
	fmov.d	$fs0, $fa0
	bceqz	$fcc0, .LBB17_73
.LBB17_71:                              # %for.body5.i.split
                                        #   in Loop: Header=BB17_70 Depth=3
	fdiv.d	$fs4, $fs0, $fs4
	fmul.d	$fa0, $fs6, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(sinh)
	jirl	$ra, $ra, 0
	fmul.d	$fa1, $fs5, $fs0
	fdiv.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cun.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB17_68
# %bb.72:                               # %for.inc.i
                                        #   in Loop: Header=BB17_70 Depth=3
	addi.w	$s8, $s8, 2
	fadd.d	$fs2, $fs2, $fa0
	bne	$s8, $s4, .LBB17_70
	b	.LBB17_68
.LBB17_73:                              # %call.sqrt
                                        #   in Loop: Header=BB17_70 Depth=3
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	b	.LBB17_71
.LBB17_74:                              # %_ZN6miniFE4solnEdddii.exit
                                        #   in Loop: Header=BB17_59 Depth=1
	fld.d	$fa0, $s6, %pc_lo12(.LCPI17_3)
	fmul.d	$fa0, $fs2, $fa0
	fld.d	$fs7, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fa2, $sp, 72                   # 8-byte Folded Reload
	vldi	$vr3, -912
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	b	.LBB17_60
.LBB17_75:                              # %for.cond.cleanup109
	fcmp.cor.d	$fcc0, $fs7, $fs7
	fld.d	$fs6, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	bceqz	$fcc0, .LBB17_112
# %bb.76:                               # %if.then161
	fcmp.cule.d	$fcc0, $fs7, $fs6
	bcnez	$fcc0, .LBB17_48
.LBB17_77:                              # %if.then164
.Ltmp1106:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a1, $a1, %pc_lo12(.L.str.110)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1107:                              # EH_LABEL
# %bb.78:                               # %invoke.cont166
.Ltmp1108:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1109:                              # EH_LABEL
# %bb.79:                               # %invoke.cont169
.Ltmp1110:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a1, $a0, %pc_lo12(.L.str.111)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1111:                              # EH_LABEL
# %bb.80:                               # %invoke.cont171
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.81:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_83
# %bb.82:                               # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB17_85
.LBB17_83:                              # %if.end.i.i.i
.Ltmp1112:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1113:                              # EH_LABEL
# %bb.84:                               # %.noexc276
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1114:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1115:                              # EH_LABEL
.LBB17_85:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp1116:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1117:                              # EH_LABEL
# %bb.86:                               # %call1.i272.noexc
.Ltmp1118:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1119:                              # EH_LABEL
# %bb.87:                               # %invoke.cont173
.Ltmp1120:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a1, $a1, %pc_lo12(.L.str.112)
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1121:                              # EH_LABEL
# %bb.88:                               # %invoke.cont175
.Ltmp1122:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1123:                              # EH_LABEL
# %bb.89:                               # %invoke.cont179
.Ltmp1124:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1125:                              # EH_LABEL
# %bb.90:                               # %invoke.cont181
.Ltmp1126:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1127:                              # EH_LABEL
# %bb.91:                               # %invoke.cont185
.Ltmp1128:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1129:                              # EH_LABEL
# %bb.92:                               # %invoke.cont187
.Ltmp1130:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1131:                              # EH_LABEL
# %bb.93:                               # %invoke.cont191
.Ltmp1132:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a1, $a0, %pc_lo12(.L.str.114)
	ori	$a2, $zero, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1133:                              # EH_LABEL
# %bb.94:                               # %invoke.cont193
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.95:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i286
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_97
# %bb.96:                               # %if.then.i2.i.i289
	ld.bu	$a0, $s2, 67
	b	.LBB17_99
.LBB17_97:                              # %if.end.i.i.i295
.Ltmp1134:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1135:                              # EH_LABEL
# %bb.98:                               # %.noexc300
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1136:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1137:                              # EH_LABEL
.LBB17_99:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i291
.Ltmp1138:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1139:                              # EH_LABEL
# %bb.100:                              # %call1.i293.noexc
.Ltmp1140:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1141:                              # EH_LABEL
# %bb.101:                              # %invoke.cont195
.Ltmp1142:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a1, $a1, %pc_lo12(.L.str.115)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1143:                              # EH_LABEL
# %bb.102:                              # %invoke.cont197
.Ltmp1144:                              # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1145:                              # EH_LABEL
# %bb.103:                              # %invoke.cont200
.Ltmp1146:                              # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a1, $a0, %pc_lo12(.L.str.116)
	ori	$a2, $zero, 22
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1147:                              # EH_LABEL
# %bb.104:                              # %invoke.cont202
.Ltmp1148:                              # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp1149:                              # EH_LABEL
# %bb.105:                              # %invoke.cont205
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB17_125
# %bb.106:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i312
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB17_108
.LBB17_107:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343.invoke.sink.split
	ld.bu	$a0, $s2, 67
	b	.LBB17_110
.LBB17_108:                             # %if.end.i.i.i321
.Ltmp1150:                              # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp1151:                              # EH_LABEL
# %bb.109:                              # %.noexc326
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp1152:                              # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp1153:                              # EH_LABEL
.LBB17_110:                             # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343.invoke
.Ltmp1154:                              # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp1155:                              # EH_LABEL
# %bb.111:                              # %call1.i345.noexc.invoke
.Ltmp1156:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp1157:                              # EH_LABEL
.LBB17_112:                             # %if.end219
	beqz	$fp, .LBB17_114
# %bb.113:                              # %if.then.i.i.i249
	sub.d	$a1, $s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_114:                             # %_ZNSt6vectorIdSaIdEED2Ev.exit
	beqz	$s3, .LBB17_116
# %bb.115:                              # %if.then.i.i.i251
	sub.d	$a1, $s6, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_116:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit
	fcmp.clt.d	$fcc0, $fs6, $fs7
	movcf2gr	$a0, $fcc0
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB17_117:                             # %if.then.i.i.i125
.Ltmp1163:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$fp, $s5
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1164:                              # EH_LABEL
# %bb.118:                              # %.noexc126
.LBB17_119:                             # %if.then.i.i.i157
.Ltmp1161:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$fp, $s4
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1162:                              # EH_LABEL
# %bb.120:                              # %.noexc158
.LBB17_121:                             # %if.then.i.i.i
.Ltmp1167:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1168:                              # EH_LABEL
# %bb.122:                              # %.noexc
.LBB17_123:                             # %if.then.i.i.i94
.Ltmp1165:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	move	$s4, $s7
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp1166:                              # EH_LABEL
# %bb.124:                              # %.noexc95
.LBB17_125:                             # %if.then.i.i.i350.invoke
.Ltmp1158:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp1159:                              # EH_LABEL
# %bb.126:                              # %if.then.i.i.i350.cont
.LBB17_127:                             # %lpad165
.Ltmp1160:                              # EH_LABEL
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	b	.LBB17_130
.LBB17_128:                             # %lpad.loopexit.split.us.split.us.split.us
.Ltmp1095:                              # EH_LABEL
	move	$s1, $a0
	move	$s4, $s7
	b	.LBB17_131
.LBB17_129:                             # %lpad.loopexit.split-lp
.Ltmp1169:                              # EH_LABEL
.LBB17_130:                             # %ehcleanup225
	move	$s1, $a0
.LBB17_131:                             # %ehcleanup225
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	bnez	$fp, .LBB17_134
# %bb.132:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit262
	bnez	$s3, .LBB17_135
.LBB17_133:                             # %_ZNSt6vectorIiSaIiEED2Ev.exit269
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_134:                             # %if.then.i.i.i257
	sub.d	$a1, $s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB17_133
.LBB17_135:                             # %if.then.i.i.i264
	sub.d	$a1, $s7, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db, .Lfunc_end17-_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,"aG",@progbits,_ZN6miniFE15verify_solutionINS_6VectorIdiiEEEEiRKNS_23simple_mesh_descriptionINT_17GlobalOrdinalTypeEEERKS4_db,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp1087-.Lfunc_begin12       # >> Call Site 1 <<
	.uleb128 .Ltmp1088-.Ltmp1087            #   Call between .Ltmp1087 and .Ltmp1088
	.uleb128 .Ltmp1095-.Lfunc_begin12       #     jumps to .Ltmp1095
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1088-.Lfunc_begin12       # >> Call Site 2 <<
	.uleb128 .Ltmp1089-.Ltmp1088            #   Call between .Ltmp1088 and .Ltmp1089
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1089-.Lfunc_begin12       # >> Call Site 3 <<
	.uleb128 .Ltmp1090-.Ltmp1089            #   Call between .Ltmp1089 and .Ltmp1090
	.uleb128 .Ltmp1095-.Lfunc_begin12       #     jumps to .Ltmp1095
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1090-.Lfunc_begin12       # >> Call Site 4 <<
	.uleb128 .Ltmp1091-.Ltmp1090            #   Call between .Ltmp1090 and .Ltmp1091
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1091-.Lfunc_begin12       # >> Call Site 5 <<
	.uleb128 .Ltmp1092-.Ltmp1091            #   Call between .Ltmp1091 and .Ltmp1092
	.uleb128 .Ltmp1095-.Lfunc_begin12       #     jumps to .Ltmp1095
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1092-.Lfunc_begin12       # >> Call Site 6 <<
	.uleb128 .Ltmp1093-.Ltmp1092            #   Call between .Ltmp1092 and .Ltmp1093
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1093-.Lfunc_begin12       # >> Call Site 7 <<
	.uleb128 .Ltmp1094-.Ltmp1093            #   Call between .Ltmp1093 and .Ltmp1094
	.uleb128 .Ltmp1095-.Lfunc_begin12       #     jumps to .Ltmp1095
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1094-.Lfunc_begin12       # >> Call Site 8 <<
	.uleb128 .Ltmp1096-.Ltmp1094            #   Call between .Ltmp1094 and .Ltmp1096
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1096-.Lfunc_begin12       # >> Call Site 9 <<
	.uleb128 .Ltmp1105-.Ltmp1096            #   Call between .Ltmp1096 and .Ltmp1105
	.uleb128 .Ltmp1160-.Lfunc_begin12       #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1105-.Lfunc_begin12       # >> Call Site 10 <<
	.uleb128 .Ltmp1106-.Ltmp1105            #   Call between .Ltmp1105 and .Ltmp1106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1106-.Lfunc_begin12       # >> Call Site 11 <<
	.uleb128 .Ltmp1157-.Ltmp1106            #   Call between .Ltmp1106 and .Ltmp1157
	.uleb128 .Ltmp1160-.Lfunc_begin12       #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1157-.Lfunc_begin12       # >> Call Site 12 <<
	.uleb128 .Ltmp1163-.Ltmp1157            #   Call between .Ltmp1157 and .Ltmp1163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1163-.Lfunc_begin12       # >> Call Site 13 <<
	.uleb128 .Ltmp1166-.Ltmp1163            #   Call between .Ltmp1163 and .Ltmp1166
	.uleb128 .Ltmp1169-.Lfunc_begin12       #     jumps to .Ltmp1169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1158-.Lfunc_begin12       # >> Call Site 14 <<
	.uleb128 .Ltmp1159-.Ltmp1158            #   Call between .Ltmp1158 and .Ltmp1159
	.uleb128 .Ltmp1160-.Lfunc_begin12       #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1159-.Lfunc_begin12       # >> Call Site 15 <<
	.uleb128 .Lfunc_end17-.Ltmp1159         #   Call between .Ltmp1159 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiED2Ev,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiED2Ev,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiED2Ev   # -- Begin function _ZN6miniFE9CSRMatrixIdiiED2Ev
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiED2Ev,@function
_ZN6miniFE9CSRMatrixIdiiED2Ev:          # @_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 104
	beqz	$a0, .LBB18_2
# %bb.1:                                # %if.then.i.i.i
	ld.d	$a1, $fp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_2:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB18_4
# %bb.3:                                # %if.then.i.i.i2
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_4:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB18_6
# %bb.5:                                # %if.then.i.i.i8
	ld.d	$a1, $fp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_6:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit13
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB18_8
# %bb.7:                                # %if.then.i.i.i15
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_8:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit20
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB18_10
# %bb.9:                                # %if.then.i.i.i22
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB18_10:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit27
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	_ZN6miniFE9CSRMatrixIdiiED2Ev, .Lfunc_end18-_ZN6miniFE9CSRMatrixIdiiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"axG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.weak	_ZN6miniFE23simple_mesh_descriptionIiED2Ev # -- Begin function _ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.p2align	5
	.type	_ZN6miniFE23simple_mesh_descriptionIiED2Ev,@function
_ZN6miniFE23simple_mesh_descriptionIiED2Ev: # @_ZN6miniFE23simple_mesh_descriptionIiED2Ev
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
	ld.d	$a1, $a0, 112
	addi.d	$a0, $a0, 96
.Ltmp1170:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1171:                              # EH_LABEL
# %bb.1:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev.exit
	ld.d	$a1, $fp, 64
	addi.d	$a0, $fp, 48
.Ltmp1173:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1174:                              # EH_LABEL
# %bb.2:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp1176:                              # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1177:                              # EH_LABEL
# %bb.3:                                # %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit5
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB19_4:                               # %terminate.lpad.i.i4
.Ltmp1178:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_5:                               # %terminate.lpad.i.i2
.Ltmp1175:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_6:                               # %terminate.lpad.i.i
.Ltmp1172:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN6miniFE23simple_mesh_descriptionIiED2Ev, .Lfunc_end19-_ZN6miniFE23simple_mesh_descriptionIiED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE23simple_mesh_descriptionIiED2Ev,"aG",@progbits,_ZN6miniFE23simple_mesh_descriptionIiED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp1170-.Lfunc_begin13       # >> Call Site 1 <<
	.uleb128 .Ltmp1171-.Ltmp1170            #   Call between .Ltmp1170 and .Ltmp1171
	.uleb128 .Ltmp1172-.Lfunc_begin13       #     jumps to .Ltmp1172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1173-.Lfunc_begin13       # >> Call Site 2 <<
	.uleb128 .Ltmp1174-.Ltmp1173            #   Call between .Ltmp1173 and .Ltmp1174
	.uleb128 .Ltmp1175-.Lfunc_begin13       #     jumps to .Ltmp1175
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1176-.Lfunc_begin13       # >> Call Site 3 <<
	.uleb128 .Ltmp1177-.Ltmp1176            #   Call between .Ltmp1176 and .Ltmp1177
	.uleb128 .Ltmp1178-.Lfunc_begin13       #     jumps to .Ltmp1178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1177-.Lfunc_begin13       # >> Call Site 4 <<
	.uleb128 .Lfunc_end19-.Ltmp1177         #   Call between .Ltmp1177 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"axG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.weak	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE # -- Begin function _ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.p2align	5
	.type	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,@function
_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE: # @_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	move	$fp, $a4
	st.d	$zero, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
.Ltmp1179:                              # EH_LABEL
	addi.d	$a4, $sp, 8
	move	$a5, $zero
	pcaddu18i	$ra, %call36(_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb)
	jirl	$ra, $ra, 0
.Ltmp1180:                              # EH_LABEL
# %bb.1:                                # %invoke.cont
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 8
	beq	$a0, $a1, .LBB20_15
# %bb.2:                                # %invoke.cont4
	ld.d	$a0, $fp, 16
	ld.w	$s4, $a1, 0
	addi.d	$s0, $fp, 8
	move	$s3, $s0
	beqz	$a0, .LBB20_7
# %bb.3:                                # %while.body.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB20_4:                               # %while.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 32
	slt	$a4, $a4, $s4
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB20_4
# %bb.5:                                # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i
	move	$s3, $s0
	beq	$a1, $s0, .LBB20_7
# %bb.6:                                # %lor.rhs.i
	ld.w	$a0, $a1, 32
	move	$s3, $a1
	bge	$s4, $a0, .LBB20_15
.LBB20_7:                               # %if.then.i
.Ltmp1182:                              # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1183:                              # EH_LABEL
# %bb.8:                                # %call5.i.i.i.i.i.noexc
	move	$s1, $a0
	addi.d	$s2, $a0, 32
	st.w	$s4, $a0, 32
	st.w	$zero, $a0, 36
.Ltmp1185:                              # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1186:                              # EH_LABEL
# %bb.9:                                # %invoke.cont3.i
	move	$a2, $a1
	beqz	$a1, .LBB20_14
# %bb.10:                               # %if.then.i106
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB20_13
# %bb.11:                               # %if.then.i106
	beq	$s0, $a2, .LBB20_13
# %bb.12:                               # %lor.rhs.i.i.i
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a2, 32
	slt	$a0, $a0, $a1
.LBB20_13:                              # %cleanup.thread.i
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB20_15
.LBB20_14:                              # %if.then.i7.i
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_15:                              # %if.end
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB20_32
# %bb.16:                               # %for.body.lr.ph
	addi.d	$s0, $fp, 8
	ori	$s4, $zero, 1
	ori	$s5, $zero, 16
	ori	$s6, $zero, 24
	b	.LBB20_19
.LBB20_17:                              # %if.then.i7.i131
                                        #   in Loop: Header=BB20_19 Depth=1
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB20_18:                              # %for.inc
                                        #   in Loop: Header=BB20_19 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 8
	addi.d	$s4, $s4, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 2
	bgeu	$s4, $a1, .LBB20_32
.LBB20_19:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_22 Depth 2
	alsl.d	$a1, $s4, $a0, 2
	slli.d	$a2, $s4, 2
	ld.w	$a1, $a1, -4
	ldx.w	$s7, $a0, $a2
	addi.w	$a0, $a1, 1
	beq	$s7, $a0, .LBB20_18
# %bb.20:                               # %invoke.cont19
                                        #   in Loop: Header=BB20_19 Depth=1
	ld.d	$a0, $fp, 16
	move	$s3, $s0
	beqz	$a0, .LBB20_25
# %bb.21:                               # %while.body.i.i.i.i45.preheader
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB20_22:                              # %while.body.i.i.i.i45
                                        #   Parent Loop BB20_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a0, 32
	slt	$a2, $a2, $s7
	masknez	$a3, $a0, $a2
	masknez	$a4, $s5, $a2
	maskeqz	$a5, $s6, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB20_22
# %bb.23:                               # %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit.i55
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$s3, $s0
	beq	$a1, $s0, .LBB20_25
# %bb.24:                               # %lor.rhs.i58
                                        #   in Loop: Header=BB20_19 Depth=1
	ld.w	$a0, $a1, 32
	move	$s3, $a1
	bge	$s7, $a0, .LBB20_18
.LBB20_25:                              # %if.then.i65
                                        #   in Loop: Header=BB20_19 Depth=1
.Ltmp1188:                              # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1189:                              # EH_LABEL
# %bb.26:                               # %call5.i.i.i.i.i.noexc132
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$s1, $a0
	addi.d	$s2, $a0, 32
	st.w	$s7, $a0, 32
	st.w	$s4, $a0, 36
.Ltmp1191:                              # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_)
	jirl	$ra, $ra, 0
.Ltmp1192:                              # EH_LABEL
# %bb.27:                               # %invoke.cont3.i115
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a2, $a1
	beqz	$a1, .LBB20_17
# %bb.28:                               # %if.then.i119
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB20_31
# %bb.29:                               # %if.then.i119
                                        #   in Loop: Header=BB20_19 Depth=1
	beq	$s0, $a2, .LBB20_31
# %bb.30:                               # %lor.rhs.i.i.i124
                                        #   in Loop: Header=BB20_19 Depth=1
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a2, 32
	slt	$a0, $a0, $a1
.LBB20_31:                              # %cleanup.thread.i127
                                        #   in Loop: Header=BB20_19 Depth=1
	move	$a1, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	b	.LBB20_18
.LBB20_32:                              # %for.cond26.preheader
	beqz	$a0, .LBB20_34
# %bb.33:                               # %if.then.i.i.i79
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_34:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit84
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
.LBB20_35:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i
.Ltmp1187:                              # EH_LABEL
	b	.LBB20_41
.LBB20_36:                              # %lpad3
.Ltmp1184:                              # EH_LABEL
	b	.LBB20_39
.LBB20_37:                              # %lpad
.Ltmp1181:                              # EH_LABEL
	b	.LBB20_39
.LBB20_38:                              # %lpad18
.Ltmp1190:                              # EH_LABEL
.LBB20_39:                              # %ehcleanup103
	move	$fp, $a0
	b	.LBB20_42
.LBB20_40:                              # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i114
.Ltmp1193:                              # EH_LABEL
.LBB20_41:                              # %ehcleanup103
	move	$fp, $a0
	ori	$a1, $zero, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_42:                              # %ehcleanup103
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB20_44
# %bb.43:                               # %if.then.i.i.i100
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_44:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit105
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE, .Lfunc_end20-_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,"aG",@progbits,_ZN6miniFE20create_map_id_to_rowIiEEviiiRK3BoxRSt3mapIT_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEE,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp1179-.Lfunc_begin14       # >> Call Site 1 <<
	.uleb128 .Ltmp1180-.Ltmp1179            #   Call between .Ltmp1179 and .Ltmp1180
	.uleb128 .Ltmp1181-.Lfunc_begin14       #     jumps to .Ltmp1181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1182-.Lfunc_begin14       # >> Call Site 2 <<
	.uleb128 .Ltmp1183-.Ltmp1182            #   Call between .Ltmp1182 and .Ltmp1183
	.uleb128 .Ltmp1184-.Lfunc_begin14       #     jumps to .Ltmp1184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1185-.Lfunc_begin14       # >> Call Site 3 <<
	.uleb128 .Ltmp1186-.Ltmp1185            #   Call between .Ltmp1185 and .Ltmp1186
	.uleb128 .Ltmp1187-.Lfunc_begin14       #     jumps to .Ltmp1187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1186-.Lfunc_begin14       # >> Call Site 4 <<
	.uleb128 .Ltmp1188-.Ltmp1186            #   Call between .Ltmp1186 and .Ltmp1188
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1188-.Lfunc_begin14       # >> Call Site 5 <<
	.uleb128 .Ltmp1189-.Ltmp1188            #   Call between .Ltmp1188 and .Ltmp1189
	.uleb128 .Ltmp1190-.Lfunc_begin14       #     jumps to .Ltmp1190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1191-.Lfunc_begin14       # >> Call Site 6 <<
	.uleb128 .Ltmp1192-.Ltmp1191            #   Call between .Ltmp1191 and .Ltmp1192
	.uleb128 .Ltmp1193-.Lfunc_begin14       #     jumps to .Ltmp1193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1192-.Lfunc_begin14       # >> Call Site 7 <<
	.uleb128 .Lfunc_end20-.Ltmp1192         #   Call between .Ltmp1192 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"axG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.weak	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev # -- Begin function _ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.p2align	5
	.type	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,@function
_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev: # @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1194:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
.Ltmp1195:                              # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB21_2:                               # %terminate.lpad.i
.Ltmp1196:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev, .Lfunc_end21-_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,"aG",@progbits,_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp1194-.Lfunc_begin15       # >> Call Site 1 <<
	.uleb128 .Ltmp1195-.Ltmp1194            #   Call between .Ltmp1194 and .Ltmp1195
	.uleb128 .Ltmp1196-.Lfunc_begin15       #     jumps to .Ltmp1196
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1195-.Lfunc_begin15       # >> Call Site 2 <<
	.uleb128 .Lfunc_end21-.Ltmp1195         #   Call between .Ltmp1195 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3setIiSt4lessIiESaIiEED2Ev,"axG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.weak	_ZNSt3setIiSt4lessIiESaIiEED2Ev # -- Begin function _ZNSt3setIiSt4lessIiESaIiEED2Ev
	.p2align	5
	.type	_ZNSt3setIiSt4lessIiESaIiEED2Ev,@function
_ZNSt3setIiSt4lessIiESaIiEED2Ev:        # @_ZNSt3setIiSt4lessIiESaIiEED2Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp1197:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
.Ltmp1198:                              # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB22_2:                               # %terminate.lpad.i
.Ltmp1199:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZNSt3setIiSt4lessIiESaIiEED2Ev, .Lfunc_end22-_ZNSt3setIiSt4lessIiESaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3setIiSt4lessIiESaIiEED2Ev,"aG",@progbits,_ZNSt3setIiSt4lessIiESaIiEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp1197-.Lfunc_begin16       # >> Call Site 1 <<
	.uleb128 .Ltmp1198-.Ltmp1197            #   Call between .Ltmp1197 and .Ltmp1198
	.uleb128 .Ltmp1199-.Lfunc_begin16       #     jumps to .Ltmp1199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1198-.Lfunc_begin16       # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp1198         #   Call between .Ltmp1198 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,"axG",@progbits,_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,comdat
	.weak	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb # -- Begin function _ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.p2align	5
	.type	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb,@function
_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb: # @_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
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
	move	$fp, $a4
	ld.d	$s5, $a4, 0
	ld.d	$s4, $a4, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$s7, $a0
	beq	$s4, $s5, .LBB23_2
# %bb.1:                                # %if.then.i.i
	st.d	$s5, $fp, 8
	move	$s4, $s5
.LBB23_2:                               # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	ld.w	$s2, $a3, 16
	ld.w	$a2, $a3, 20
	ld.w	$a4, $a3, 8
	ld.w	$s6, $a3, 12
	ld.w	$a6, $a3, 0
	ld.w	$a7, $a3, 4
	beqz	$a5, .LBB23_4
# %bb.3:                                # %if.then
	slt	$a0, $zero, $s2
	sub.w	$s2, $s2, $a0
	slt	$a0, $zero, $a4
	sub.w	$a4, $a4, $a0
	slt	$a0, $zero, $a6
	sub.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	add.w	$a2, $a2, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	slt	$a0, $s6, $a0
	add.w	$s6, $s6, $a0
	slt	$a0, $a7, $s7
	add.w	$a7, $a7, $a0
.LBB23_4:                               # %if.end31
	sub.d	$a0, $a2, $s2
	sub.d	$a1, $s6, $a4
	sub.d	$a3, $a7, $a6
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a1, $a3, $a1
	mul.w	$s1, $a1, $a0
	bltz	$s1, .LBB23_40
# %bb.5:                                # %if.end.i
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	sub.d	$s0, $a0, $s5
	srai.d	$a1, $s0, 2
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	bgeu	$a1, $s1, .LBB23_11
# %bb.6:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	sub.d	$s8, $s4, $s5
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s4, $s5, .LBB23_8
# %bb.7:                                # %if.then.i.i.i.i
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_8:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s5, .LBB23_10
# %bb.9:                                # %if.then.i.i53
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_10:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s3, $fp, 0
	add.d	$s4, $s3, $s8
	st.d	$s4, $fp, 8
	alsl.d	$a0, $s1, $s3, 2
	st.d	$a0, $fp, 16
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	blt	$s2, $a1, .LBB23_12
	b	.LBB23_38
.LBB23_11:
	move	$s3, $s5
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bge	$s2, $a1, .LBB23_38
.LBB23_12:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $s6, .LBB23_38
# %bb.13:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bge	$a1, $a7, .LBB23_38
# %bb.14:                               # %for.cond36.preheader.us.us.preheader
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a1, $s2, $a2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	mul.d	$a3, $s7, $a1
	mul.d	$a1, $a2, $s7
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s1, $zero, -1
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_15:                              # %for.cond36.for.cond.cleanup38_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB23_16 Depth=1
	addi.w	$s2, $s2, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$s2, $a1, .LBB23_38
.LBB23_16:                              # %for.cond36.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_18 Depth 2
                                        #       Child Loop BB23_31 Depth 3
                                        #       Child Loop BB23_22 Depth 3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	b	.LBB23_18
	.p2align	4, , 16
.LBB23_17:                              # %for.cond40.for.cond.cleanup42_crit_edge.us.us.us
                                        #   in Loop: Header=BB23_18 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB23_15
.LBB23_18:                              # %for.cond40.preheader.us.us.us
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_31 Depth 3
                                        #       Child Loop BB23_22 Depth 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bge	$a2, $a1, .LBB23_29
# %bb.19:                               # %for.cond40.preheader.us.us.us
                                        #   in Loop: Header=BB23_18 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bge	$s2, $a1, .LBB23_29
# %bb.20:                               # %for.body43.us64.us.us.preheader
                                        #   in Loop: Header=BB23_18 Depth=2
	or	$a4, $a2, $s2
	move	$s0, $s3
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB23_22
	.p2align	4, , 16
.LBB23_21:                              # %if.then.i.i57.us70.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	st.w	$s6, $s4, 0
	addi.d	$s4, $s4, 4
	st.d	$s4, $fp, 8
	move	$s3, $s0
	addi.w	$s8, $s8, 1
	beq	$a7, $s8, .LBB23_17
.LBB23_22:                              # %for.body43.us64.us.us
                                        #   Parent Loop BB23_16 Depth=1
                                        #     Parent Loop BB23_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	or	$a1, $a4, $s8
	slt	$a1, $s1, $a1
	slt	$a2, $s8, $s7
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s8
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s1, $a2
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$s6, $a2, $a1
	bne	$s4, $a0, .LBB23_21
# %bb.23:                               # %if.else.i.i.us72.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	sub.d	$s5, $a0, $s0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB23_39
# %bb.24:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.us79.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	move	$s2, $s7
	srai.d	$a0, $s5, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s7, $a0, $a1
	slli.d	$a0, $s7, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s6, $a0, $s5
	blez	$s5, .LBB23_26
# %bb.25:                               # %if.then.i.i.i.i.i.i.us87.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_26:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i.us88.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	beqz	$s0, .LBB23_28
# %bb.27:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i.us90.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_28:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i.us91.us.us
                                        #   in Loop: Header=BB23_22 Depth=3
	add.d	$a0, $s3, $s5
	addi.d	$s4, $a0, 4
	st.d	$s3, $fp, 0
	st.d	$s4, $fp, 8
	alsl.d	$a0, $s7, $s3, 2
	st.d	$a0, $fp, 16
	move	$s0, $s3
	move	$s7, $s2
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s8, $s8, 1
	bne	$a7, $s8, .LBB23_22
	b	.LBB23_17
	.p2align	4, , 16
.LBB23_29:                              #   in Loop: Header=BB23_18 Depth=2
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $s3
	b	.LBB23_31
	.p2align	4, , 16
.LBB23_30:                              # %if.then.i.i57.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.w	$a1, $s4, 0
	addi.d	$s4, $s4, 4
	st.d	$s4, $fp, 8
	move	$s3, $s0
	addi.w	$s2, $s2, -1
	beqz	$s2, .LBB23_17
.LBB23_31:                              # %for.body43.us.us.us.us
                                        #   Parent Loop BB23_16 Depth=1
                                        #     Parent Loop BB23_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$s4, $a0, .LBB23_30
# %bb.32:                               # %if.else.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	sub.d	$s5, $a0, $s0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB23_39
# %bb.33:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	srai.d	$a0, $s5, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s8, $a0, $a1
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	lu32i.d	$a0, 0
	stx.w	$a0, $s3, $s5
	blez	$s5, .LBB23_35
# %bb.34:                               # %if.then.i.i.i.i.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_35:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	beqz	$s0, .LBB23_37
# %bb.36:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_37:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i.us.us.us.us
                                        #   in Loop: Header=BB23_31 Depth=3
	add.d	$a0, $s3, $s5
	addi.d	$s4, $a0, 4
	st.d	$s3, $fp, 0
	st.d	$s4, $fp, 8
	alsl.d	$a0, $s8, $s3, 2
	st.d	$a0, $fp, 16
	move	$s0, $s3
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB23_31
	b	.LBB23_17
.LBB23_38:                              # %for.cond.cleanup
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB23_39:                              # %if.then.i.i.i.i58
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB23_40:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb, .Lfunc_end23-_ZN6miniFE7get_idsIiEEviiiRK3BoxRSt6vectorIT_SaIS5_EEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_ # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB24_5
# %bb.1:                                # %if.else10
	move	$a0, $a1
	ld.w	$s0, $a2, 0
	ld.w	$a1, $a1, 32
	bge	$s0, $a1, .LBB24_8
# %bb.2:                                # %if.then15
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB24_20
# %bb.3:                                # %if.else23
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$a1, $s0, .LBB24_21
# %bb.4:                                # %if.then29
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB24_36
.LBB24_5:                               # %if.then
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB24_12
# %bb.6:                                # %land.lhs.true
	ld.d	$a1, $a3, 32
	ld.w	$a0, $a1, 32
	ld.w	$a4, $a2, 0
	bge	$a0, $a4, .LBB24_12
.LBB24_7:
	move	$a0, $zero
	b	.LBB24_36
.LBB24_8:                               # %if.else40
	bge	$a1, $s0, .LBB24_19
# %bb.9:                                # %if.then45
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB24_26
# %bb.10:                               # %if.else53
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bge	$s0, $a1, .LBB24_27
# %bb.11:                               # %if.then59
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB24_36
.LBB24_12:                              # %if.else
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB24_16
# %bb.13:                               # %while.body.lr.ph.i
	ld.w	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB24_14:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.w	$a4, $a5, 32
	slt	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB24_14
# %bb.15:                               # %while.end.i
	move	$a0, $fp
	bge	$a1, $a4, .LBB24_18
.LBB24_16:                              # %if.then.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB24_35
# %bb.17:                               # %if.else.i
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a4, $a0, 32
	ld.w	$a1, $s0, 0
.LBB24_18:                              # %if.end12.i
	slt	$a2, $a4, $a1
	b	.LBB24_34
.LBB24_19:
	move	$a1, $zero
	b	.LBB24_36
.LBB24_20:
	move	$a1, $a0
	b	.LBB24_36
.LBB24_21:                              # %if.else38
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB24_25
# %bb.22:                               # %while.body.i24.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB24_23:                              # %while.body.i24
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB24_23
# %bb.24:                               # %while.end.i32
	move	$a0, $fp
	bge	$s0, $a2, .LBB24_33
.LBB24_25:                              # %if.then.i43
	bne	$fp, $a1, .LBB24_32
	b	.LBB24_7
.LBB24_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB24_36
.LBB24_27:                              # %if.else69
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB24_31
# %bb.28:                               # %while.body.i66.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB24_29:                              # %while.body.i66
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.w	$a2, $a4, 32
	slt	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB24_29
# %bb.30:                               # %while.end.i74
	move	$a0, $fp
	bge	$s0, $a2, .LBB24_33
.LBB24_31:                              # %if.then.i85
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB24_35
.LBB24_32:                              # %if.else.i89
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a2, $a0, 32
.LBB24_33:                              # %if.end12.i75
	slt	$a2, $a2, $s0
.LBB24_34:                              # %return
	maskeqz	$a1, $fp, $a2
	masknez	$a0, $a0, $a2
	b	.LBB24_36
.LBB24_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB24_36:                              # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_, .Lfunc_end24-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,"axG",@progbits,_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,comdat
	.weak	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE # -- Begin function _ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.p2align	5
	.type	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE,@function
_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE: # @_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
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
	ld.d	$a3, $a1, 16
	move	$fp, $a0
	addi.d	$a2, $a1, 8
	beqz	$a3, .LBB25_8
# %bb.1:                                # %while.body.i.i.i.preheader
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $a2
	.p2align	4, , 16
.LBB25_2:                               # %while.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 32
	slt	$a6, $a6, $fp
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB25_2
# %bb.3:                                # %_ZNKSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
	beq	$a0, $a2, .LBB25_5
# %bb.4:                                # %lor.rhs
	ld.w	$a2, $a0, 32
	beq	$a2, $fp, .LBB25_7
.LBB25_5:                               # %if.then
	ld.d	$a2, $a1, 40
	beqz	$a2, .LBB25_9
.LBB25_6:                               # %if.end12
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 32
	bne	$fp, $a1, .LBB25_12
.LBB25_7:                               # %if.then16
	ld.w	$a0, $a0, 36
	b	.LBB25_26
.LBB25_8:
	move	$a0, $a2
	ld.d	$a2, $a1, 40
	bnez	$a2, .LBB25_6
.LBB25_9:                               # %if.else
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	ori	$a2, $zero, 31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB25_27
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB25_19
# %bb.11:                               # %if.then.i2.i.i
	ld.bu	$a0, $fp, 67
	b	.LBB25_20
.LBB25_12:                              # %if.end18
	bge	$fp, $a1, .LBB25_17
# %bb.13:                               # %if.end18
	ld.d	$a2, $s0, 24
	bne	$a0, $a2, .LBB25_17
# %bb.14:                               # %if.then27
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a1, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$a1, $a1, %pc_lo12(.L.str.73)
	ori	$a2, $zero, 10
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	ori	$a2, $zero, 23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB25_27
# %bb.15:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i33
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB25_23
.LBB25_16:                              # %if.then.i2.i.i36
	ld.bu	$a1, $fp, 67
	b	.LBB25_24
.LBB25_17:                              # %if.end35
	sub.w	$a1, $fp, $a1
	bltz	$a1, .LBB25_21
# %bb.18:                               # %if.end43
	ld.w	$a0, $a0, 36
	add.w	$a0, $a0, $a1
	b	.LBB25_26
.LBB25_19:                              # %if.end.i.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB25_20:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	b	.LBB25_25
.LBB25_21:                              # %if.then39
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	ori	$a2, $zero, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB25_27
# %bb.22:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
	ld.bu	$a1, $fp, 56
	bnez	$a1, .LBB25_16
.LBB25_23:                              # %if.end.i.i.i41
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s0
.LBB25_24:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46
	ext.w.b	$a1, $a1
.LBB25_25:                              # %cleanup46
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -99
.LBB25_26:                              # %cleanup46
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB25_27:                              # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE, .Lfunc_end25-_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E # -- Begin function _ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,@function
_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E: # @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB26_4
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
	.p2align	4, , 16
.LBB26_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB26_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB26_4:                               # %while.end
	ret
.Lfunc_end26:
	.size	_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .Lfunc_end26-_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,"axG",@progbits,_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,comdat
	.weak	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE # -- Begin function _ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.p2align	5
	.type	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE,@function
_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE: # @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB27_4
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
	.p2align	4, , 16
.LBB27_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB27_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB27_4:                               # %while.end
	ret
.Lfunc_end27:
	.size	_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE, .Lfunc_end27-_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,"axG",@progbits,_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,comdat
	.weak	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj # -- Begin function _ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.p2align	5
	.type	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj,@function
_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj: # @_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a3, $fp, 8
	move	$s0, $a1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a4, $a0, $a3
	srai.d	$a4, $a4, 2
	move	$s1, $a2
	bgeu	$a4, $a1, .LBB28_2
# %bb.1:                                # %if.then.i
	addi.d	$a0, $fp, 8
	sub.d	$a1, $a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB28_5
.LBB28_2:                               # %if.else.i
	bgeu	$a1, $a4, .LBB28_5
# %bb.3:                                # %if.then5.i
	alsl.d	$a1, $a1, $a3, 2
	beq	$a0, $a1, .LBB28_5
# %bb.4:                                # %if.then.i.i
	st.d	$a1, $fp, 16
.LBB28_5:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $fp, 40
	ld.d	$a2, $fp, 32
	addi.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB28_7
# %bb.6:                                # %if.then.i18
	addi.d	$a0, $fp, 32
	sub.d	$a1, $a1, $a3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB28_10
.LBB28_7:                               # %if.else.i12
	bgeu	$a1, $a3, .LBB28_10
# %bb.8:                                # %if.then5.i14
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB28_10
# %bb.9:                                # %if.then.i.i17
	st.d	$a1, $fp, 40
.LBB28_10:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit20
	ld.d	$a0, $fp, 96
	ld.d	$s2, $fp, 80
	mul.d	$a1, $s1, $s0
	bstrpick.d	$s4, $a1, 31, 0
	sub.d	$s0, $a0, $s2
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s4, .LBB28_16
# %bb.11:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$s5, $fp, 88
	sub.d	$s1, $s5, $s2
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s5, $s2, .LBB28_13
# %bb.12:                               # %if.then.i.i.i.i
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB28_13:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s2, .LBB28_15
# %bb.14:                               # %if.then.i.i29
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_15:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s3, $fp, 80
	add.d	$a0, $s3, $s1
	st.d	$a0, $fp, 88
	alsl.d	$a0, $s4, $s3, 2
	st.d	$a0, $fp, 96
.LBB28_16:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a0, $fp, 120
	ld.d	$s0, $fp, 104
	sub.d	$s1, $a0, $s0
	srai.d	$a0, $s1, 3
	bgeu	$a0, $s4, .LBB28_22
# %bb.17:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
	ld.d	$s5, $fp, 112
	sub.d	$s2, $s5, $s0
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s5, $s0, .LBB28_19
# %bb.18:                               # %if.then.i.i.i.i47
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB28_19:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
	beqz	$s0, .LBB28_21
# %bb.20:                               # %if.then.i.i49
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_21:                              # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	st.d	$s3, $fp, 104
	add.d	$a0, $s3, $s2
	st.d	$a0, $fp, 112
	alsl.d	$a0, $s4, $s3, 3
	st.d	$a0, $fp, 120
.LBB28_22:                              # %_ZNSt6vectorIdSaIdEE7reserveEm.exit
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
.Lfunc_end28:
	.size	_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj, .Lfunc_end28-_ZN6miniFE9CSRMatrixIdiiE13reserve_spaceEjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	beqz	$a1, .LBB29_13
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 2
	bgeu	$a0, $s0, .LBB29_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB29_14
# %bb.3:                                # %if.then.i.i.i23
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.w	$zero, $s3, $s2
	beq	$s0, $a0, .LBB29_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB29_5:                               # %invoke.cont
	blez	$s2, .LBB29_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB29_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB29_9
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB29_9:                               # %_ZNSt6vectorIiSaIiEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB29_13
.LBB29_10:                              # %if.then.i.i.i
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	beq	$s0, $a2, .LBB29_12
# %bb.11:                               # %for.body.i.preheader.i.i.i
	slli.d	$a2, $s0, 2
	alsl.d	$s0, $s0, $a1, 2
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB29_12:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB29_13:                              # %if.end45
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
.LBB29_14:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end29-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_ # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
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
	move	$s0, $a2
	move	$fp, $a0
	ld.d	$a0, $a1, 0
	ld.d	$s4, $sp, 72
	ld.d	$a1, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a0, $fp, 0
	ld.d	$t0, $sp, 64
	st.d	$a1, $fp, 8
	st.d	$a2, $fp, 16
	st.w	$a4, $fp, 24
	st.w	$a5, $fp, 28
	st.w	$a6, $fp, 32
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 32
	ld.d	$a3, $s4, 16
	st.w	$a7, $fp, 36
	st.d	$a0, $fp, 40
	st.d	$a2, $fp, 48
	sub.d	$a0, $a3, $a0
	srai.d	$a2, $a0, 2
	ld.d	$a3, $s4, 96
	ld.d	$a0, $s4, 80
	ld.d	$a4, $s4, 120
	ld.d	$a5, $s4, 104
	st.w	$a2, $fp, 72
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
	sub.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 3
	st.d	$t0, $fp, 80
	beq	$a3, $a4, .LBB30_6
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a1, $a0, %pc_lo12(.L.str.83)
	ori	$a2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	ori	$a2, $zero, 23
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 120
	ld.d	$a1, $s4, 104
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB30_23
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB30_4
# %bb.3:                                # %if.then.i2.i.i
	ld.bu	$a0, $s2, 67
	b	.LBB30_5
.LBB30_4:                               # %if.end.i.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.LBB30_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 96
	ld.d	$a0, $s4, 80
	ld.w	$a2, $fp, 72
	ld.d	$a1, $s0, 0
	sub.d	$a3, $a3, $a0
	srai.d	$a3, $a3, 2
.LBB30_6:                               # %if.end
	addi.w	$a2, $a2, 0
	slli.d	$a2, $a2, 2
	ldx.w	$s0, $a1, $a2
	addi.d	$s1, $s4, 80
	bgeu	$a3, $s0, .LBB30_12
# %bb.7:                                # %if.then30
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	ori	$a2, $zero, 31
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 96
	ld.d	$a1, $s4, 80
	sub.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a1, $a0, %pc_lo12(.L.str.86)
	ori	$a2, $zero, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertImEERSoT_)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a1, $a0, %pc_lo12(.L.str.85)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB30_23
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB30_10
# %bb.9:                                # %if.then.i2.i.i98
	ld.bu	$a0, $s3, 67
	b	.LBB30_11
.LBB30_10:                              # %if.end.i.i.i103
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.LBB30_11:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit108
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
.LBB30_12:                              # %if.end39
	ld.d	$a1, $s4, 88
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 2
	bgeu	$a2, $s0, .LBB30_14
# %bb.13:                               # %if.then.i
	sub.d	$a1, $s0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB30_17
.LBB30_14:                              # %if.else.i
	bgeu	$s0, $a2, .LBB30_17
# %bb.15:                               # %if.then5.i
	alsl.d	$a0, $s0, $a0, 2
	beq	$a1, $a0, .LBB30_17
# %bb.16:                               # %if.then.i.i
	st.d	$a0, $s4, 88
.LBB30_17:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a1, $s4, 112
	ld.d	$a0, $s4, 104
	sub.d	$a2, $a1, $a0
	srai.d	$a2, $a2, 3
	bgeu	$a2, $s0, .LBB30_19
# %bb.18:                               # %if.then.i84
	addi.d	$s2, $s4, 104
	sub.d	$a1, $s0, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	b	.LBB30_22
.LBB30_19:                              # %if.else.i79
	bgeu	$s0, $a2, .LBB30_22
# %bb.20:                               # %if.then5.i81
	alsl.d	$a2, $s0, $a0, 3
	beq	$a1, $a2, .LBB30_22
# %bb.21:                               # %invoke.cont.i.i
	st.d	$a2, $s4, 112
.LBB30_22:                              # %_ZNSt6vectorIdSaIdEE6resizeEm.exit
	ld.d	$a1, $s1, 0
	ld.w	$a2, $fp, 72
	ld.d	$a3, $fp, 48
	st.d	$a1, $fp, 56
	st.d	$a0, $fp, 64
	slli.d	$a0, $a2, 2
	stx.w	$s0, $a3, $a0
	st.w	$zero, $fp, 76
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB30_23:                              # %if.then.i.i.i
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_, .Lfunc_end30-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEC2ERKSt6vectorIiSaIiEES8_S8_iiiiRKNS0_23simple_mesh_descriptionIiEERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,"axG",@progbits,_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,comdat
	.weak	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi # -- Begin function _ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.p2align	5
	.type	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi,@function
_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi: # @_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a3, $fp, 40
	ld.d	$a4, $fp, 8
	stx.w	$a0, $a3, $a2
	ldx.w	$a4, $a4, $a2
	ld.d	$a0, $fp, 48
	ld.d	$a3, $fp, 16
	move	$s2, $zero
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	stx.w	$a4, $a0, $a2
	alsl.w	$a0, $a1, $a1, 1
	alsl.d	$a1, $a0, $a3, 2
	ld.w	$a2, $a1, 4
	ld.w	$a1, $a1, 8
	slli.d	$a0, $a0, 2
	ldx.w	$s7, $a3, $a0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a4, $a1, -1
	addi.d	$a1, $zero, -1
	ori	$a5, $zero, 2
	b	.LBB31_2
	.p2align	4, , 16
.LBB31_1:                               # %for.cond.cleanup21
                                        #   in Loop: Header=BB31_2 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, 1
	beq	$a1, $a5, .LBB31_22
.LBB31_2:                               # %for.cond19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_4 Depth 2
                                        #       Child Loop BB31_9 Depth 3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.w	$s5, $a1, $a0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $zero, -1
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_3:                               # %for.cond.cleanup25
                                        #   in Loop: Header=BB31_4 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	addi.d	$s4, $s4, 1
	beq	$a1, $a5, .LBB31_1
.LBB31_4:                               # %for.cond23.preheader
                                        #   Parent Loop BB31_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_9 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.w	$s8, $a1, $a0
	or	$s3, $s8, $s5
	addi.d	$s6, $zero, -1
	b	.LBB31_9
.LBB31_5:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB31_9 Depth=3
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
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
.LBB31_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB31_7:                               # %if.end
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $s2, $a1
	ld.d	$a2, $fp, 64
	slli.d	$a3, $a1, 2
	stx.w	$s0, $a0, $a3
	slli.d	$a0, $a1, 3
	stx.d	$zero, $a2, $a0
	addi.w	$s2, $s2, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB31_8:                               # %if.end56
                                        #   in Loop: Header=BB31_9 Depth=3
	addi.w	$s6, $s6, 1
	beq	$s6, $a5, .LBB31_3
.LBB31_9:                               # %for.body26
                                        #   Parent Loop BB31_2 Depth=1
                                        #     Parent Loop BB31_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a0, $s7, $s6
	or	$a1, $s3, $a0
	bltz	$a1, .LBB31_8
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a1, $fp, 24
	bge	$a0, $a1, .LBB31_8
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a2, $fp, 28
	bge	$s8, $a2, .LBB31_8
# %bb.12:                               # %if.end.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a3, $fp, 32
	bge	$s5, $a3, .LBB31_8
# %bb.13:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	mul.d	$a2, $a4, $a2
	add.d	$a2, $s4, $a2
	mul.d	$a1, $a1, $a2
	add.w	$s1, $a0, $a1
	bltz	$s1, .LBB31_8
# %bb.14:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.w	$a0, $fp, 36
	bge	$s1, $a0, .LBB31_8
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.d	$a0, $fp, 80
	addi.d	$a1, $a0, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$s0, $a0
	blt	$a0, $a1, .LBB31_7
# %bb.16:                               # %if.then35
                                        #   in Loop: Header=BB31_9 Depth=3
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a1, $a0, %pc_lo12(.L.str.87)
	ori	$a2, $zero, 33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	ori	$a2, $zero, 13
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a1, $a0, %pc_lo12(.L.str.89)
	ori	$a2, $zero, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a1, $a0, %pc_lo12(.L.str.90)
	ori	$a2, $zero, 17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$a1, $a0, 136
	beqz	$a1, .LBB31_18
# %bb.17:                               # %if.end.i31
                                        #   in Loop: Header=BB31_9 Depth=3
	addi.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 36
	b	.LBB31_19
.LBB31_18:                              #   in Loop: Header=BB31_9 Depth=3
	move	$a1, $zero
.LBB31_19:                              # %_ZNK6miniFE23simple_mesh_descriptionIiE14max_row_in_mapEv.exit
                                        #   in Loop: Header=BB31_9 Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a1, $a0, %pc_lo12(.L.str.91)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 76
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s1, $a1, 240
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$s1, .LBB31_28
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.bu	$a1, $s1, 56
	beqz	$a1, .LBB31_5
# %bb.21:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB31_9 Depth=3
	ld.bu	$a1, $s1, 67
	b	.LBB31_6
.LBB31_22:                              # %for.cond.cleanup
	ld.d	$a0, $fp, 56
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$fp, $a1, $a0, 2
	ori	$a0, $zero, 2
	move	$a1, $s2
	.p2align	4, , 16
.LBB31_23:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	blt	$a1, $a0, .LBB31_27
# %bb.24:                               # %for.body.i
                                        #   in Loop: Header=BB31_23 Depth=1
	alsl.d	$a2, $a1, $fp, 2
	addi.w	$a1, $a1, -1
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $fp, $a3
	ld.w	$a2, $a2, -8
	bge	$a3, $a2, .LBB31_23
# %bb.25:                               # %if.then5.i
	beqz	$s2, .LBB31_27
# %bb.26:                               # %if.then.i.i.i
	alsl.d	$s0, $s2, $fp, 2
	clz.d	$a0, $s2
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
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
	pcaddu18i	$t8, %call36(_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jr	$t8
.LBB31_27:                              # %_Z14sort_if_neededIiEvPT_S0_.exit
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
.LBB31_28:                              # %if.then.i.i.i41
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi, .Lfunc_end31-_ZN12MatrixInitOpIN6miniFE9CSRMatrixIdiiEEEclEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	beqz	$a1, .LBB32_13
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 3
	bgeu	$a0, $s0, .LBB32_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB32_14
# %bb.3:                                # %if.then.i.i.i23
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$a0, $zero, 1
	stx.d	$zero, $s3, $s2
	beq	$s0, $a0, .LBB32_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB32_5:                               # %invoke.cont
	blez	$s2, .LBB32_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB32_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB32_9
# %bb.8:                                # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB32_9:                               # %_ZNSt6vectorIdSaIdEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB32_13
.LBB32_10:                              # %if.then.i.i.i
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 8
	beq	$s0, $a2, .LBB32_12
# %bb.11:                               # %for.body.i.preheader.i.i.i
	slli.d	$a2, $s0, 3
	alsl.d	$s0, $s0, $a1, 3
	addi.d	$a2, $a2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB32_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB32_13:                              # %if.end45
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
.LBB32_14:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end32-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 65
	blt	$s6, $a0, .LBB33_35
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB33_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB33_35
.LBB33_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_16 Depth 2
                                        #       Child Loop BB33_17 Depth 3
                                        #       Child Loop BB33_19 Depth 3
	beqz	$s0, .LBB33_22
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB33_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a3, $a0, $s4
	ld.w	$a2, $fp, 4
	ldx.w	$a4, $fp, $a3
	ld.w	$a0, $a1, -4
	add.d	$a3, $fp, $a3
	bge	$a2, $a4, .LBB33_7
# %bb.5:                                # %if.then.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	bge	$a4, $a0, .LBB33_9
# %bb.6:                                # %if.then2.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a4, $fp, 0
	st.w	$a0, $a3, 0
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_7:                               # %if.else7.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	bge	$a2, $a0, .LBB33_11
# %bb.8:                                # %if.then9.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a0, $fp, 0
	st.w	$a2, $fp, 0
	st.w	$a0, $fp, 4
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_9:                               # %if.else.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a3, $fp, 0
	bge	$a2, $a0, .LBB33_13
# %bb.10:                               # %if.then4.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a3, $a1, -4
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_11:                              # %if.else10.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a2, $fp, 0
	bge	$a4, $a0, .LBB33_14
# %bb.12:                               # %if.then12.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	st.w	$a0, $fp, 0
	st.w	$a2, $a1, -4
	b	.LBB33_15
.LBB33_13:                              # %if.else5.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	st.w	$a2, $fp, 0
	st.w	$a3, $fp, 4
	b	.LBB33_15
.LBB33_14:                              # %if.else13.i.i
                                        #   in Loop: Header=BB33_3 Depth=1
	st.w	$a4, $fp, 0
	st.w	$a2, $a3, 0
	.p2align	4, , 16
.LBB33_15:                              # %while.body.i.i10.preheader
                                        #   in Loop: Header=BB33_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB33_16:                              # %while.body.i.i10
                                        #   Parent Loop BB33_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_17 Depth 3
                                        #       Child Loop BB33_19 Depth 3
	ld.w	$a3, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB33_17:                              # %while.cond1.i.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$s6, $s6, 4
	blt	$a4, $a3, .LBB33_17
# %bb.18:                               # %while.cond4.i.i.preheader
                                        #   in Loop: Header=BB33_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB33_19:                              # %while.cond4.i.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a2, -4
	addi.d	$a2, $a2, -4
	blt	$a3, $a5, .LBB33_19
# %bb.20:                               # %while.end8.i.i
                                        #   in Loop: Header=BB33_16 Depth=2
	bgeu	$s1, $a2, .LBB33_2
# %bb.21:                               # %if.end.i.i
                                        #   in Loop: Header=BB33_16 Depth=2
	st.w	$a5, $s1, 0
	st.w	$a4, $a2, 0
	b	.LBB33_16
.LBB33_22:                              # %if.then
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB33_25
	.p2align	4, , 16
.LBB33_23:                              #   in Loop: Header=BB33_25 Depth=1
	move	$a5, $zero
.LBB33_24:                              # %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	slli.d	$a5, $a5, 2
	stx.w	$a3, $fp, $a5
	bge	$a2, $a4, .LBB33_35
.LBB33_25:                              # %while.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_27 Depth 2
                                        #     Child Loop BB33_33 Depth 2
	move	$a5, $s0
	ld.w	$a3, $s0, -4
	ld.w	$a7, $fp, 0
	addi.d	$s0, $s0, -4
	sub.d	$a4, $s0, $fp
	srai.d	$a6, $a4, 2
	st.w	$a7, $a5, -4
	blt	$a6, $a0, .LBB33_29
# %bb.26:                               # %while.body.i.i.i.i.preheader
                                        #   in Loop: Header=BB33_25 Depth=1
	move	$a7, $zero
	addi.d	$a5, $a6, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$t0, $a5, 1
	.p2align	4, , 16
.LBB33_27:                              # %while.body.i.i.i.i
                                        #   Parent Loop BB33_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $a7, 1
	addi.d	$t1, $a5, 2
	slli.d	$t2, $t1, 2
	alsl.d	$t3, $a7, $fp, 3
	ldx.w	$t2, $fp, $t2
	ld.w	$t3, $t3, 4
	slt	$t2, $t2, $t3
	addi.d	$a5, $a5, 1
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	slli.d	$t1, $a5, 2
	ldx.w	$t1, $fp, $t1
	slli.d	$a7, $a7, 2
	stx.w	$t1, $fp, $a7
	move	$a7, $a5
	blt	$a5, $t0, .LBB33_27
# %bb.28:                               # %while.end.i.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	andi	$a7, $a4, 4
	beqz	$a7, .LBB33_30
	b	.LBB33_32
	.p2align	4, , 16
.LBB33_29:                              #   in Loop: Header=BB33_25 Depth=1
	move	$a5, $zero
	andi	$a7, $a4, 4
	bnez	$a7, .LBB33_32
.LBB33_30:                              # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	addi.d	$a6, $a6, -2
	srai.d	$a6, $a6, 1
	bne	$a5, $a6, .LBB33_32
# %bb.31:                               # %if.end16.i.thread.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	slli.d	$a6, $a5, 1
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $fp, $a7
	slli.d	$a5, $a5, 2
	stx.w	$a7, $fp, $a5
	move	$a5, $a6
	b	.LBB33_33
	.p2align	4, , 16
.LBB33_32:                              # %if.end16.i.i.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	beqz	$a5, .LBB33_23
	.p2align	4, , 16
.LBB33_33:                              # %land.rhs.i.i.i.i.i
                                        #   Parent Loop BB33_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $a5, -1
	srli.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $fp, $t0
	bge	$t0, $a3, .LBB33_24
# %bb.34:                               # %while.body.i.i.i.i.i
                                        #   in Loop: Header=BB33_33 Depth=2
	slli.d	$a5, $a5, 2
	stx.w	$t0, $fp, $a5
	move	$a5, $a7
	bltu	$a1, $a6, .LBB33_33
	b	.LBB33_23
.LBB33_35:                              # %while.end
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
.Lfunc_end33:
	.size	_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end33-_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 65
	blt	$a0, $a1, .LBB34_2
# %bb.1:                                # %if.then
	addi.d	$s1, $s0, 4
	ori	$s2, $zero, 4
	ori	$s3, $zero, 5
	ori	$s4, $zero, 64
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB34_17
.LBB34_2:                               # %if.else
	beq	$s0, $fp, .LBB34_24
# %bb.3:                                # %if.else
	addi.d	$a0, $s0, 4
	beq	$a0, $fp, .LBB34_24
# %bb.4:                                # %for.body.i16.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB34_6
	.p2align	4, , 16
.LBB34_5:                               # %for.inc.i22
                                        #   in Loop: Header=BB34_6 Depth=1
	addi.d	$a0, $s3, 4
	st.w	$s4, $a1, 0
	beq	$a0, $fp, .LBB34_24
.LBB34_6:                               # %for.body.i16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_11 Depth 2
	move	$a1, $s3
	ld.w	$s4, $s3, 4
	ld.w	$a3, $s0, 0
	move	$s3, $a0
	bge	$s4, $a3, .LBB34_9
# %bb.7:                                # %if.then2.i31
                                        #   in Loop: Header=BB34_6 Depth=1
	sub.d	$a2, $s3, $s0
	sub.d	$a0, $a1, $a2
	srai.d	$a1, $a2, 2
	addi.d	$a0, $a0, 8
	blt	$a1, $s1, .LBB34_12
# %bb.8:                                # %if.then.i.i48
                                        #   in Loop: Header=BB34_6 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	b	.LBB34_5
	.p2align	4, , 16
.LBB34_9:                               # %if.else.i20
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.w	$a0, $a1, 0
	move	$a1, $s3
	bge	$s4, $a0, .LBB34_5
# %bb.10:                               # %while.body.i.i26.preheader
                                        #   in Loop: Header=BB34_6 Depth=1
	move	$a1, $s3
	.p2align	4, , 16
.LBB34_11:                              # %while.body.i.i26
                                        #   Parent Loop BB34_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a0, $a1, 0
	ld.w	$a0, $a1, -8
	addi.d	$a1, $a1, -4
	blt	$s4, $a0, .LBB34_11
	b	.LBB34_5
.LBB34_12:                              # %if.else.i.i45
                                        #   in Loop: Header=BB34_6 Depth=1
	move	$a1, $s0
	bne	$a2, $s2, .LBB34_5
# %bb.13:                               # %if.then2.i.i46
                                        #   in Loop: Header=BB34_6 Depth=1
	st.w	$a3, $a0, 0
	move	$a1, $s0
	b	.LBB34_5
.LBB34_14:                              # %if.then2.i.i
                                        #   in Loop: Header=BB34_17 Depth=1
	st.w	$a0, $s1, 0
	.p2align	4, , 16
.LBB34_15:                              # %for.inc.i
                                        #   in Loop: Header=BB34_17 Depth=1
	move	$a0, $s0
.LBB34_16:                              # %for.inc.i
                                        #   in Loop: Header=BB34_17 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB34_23
.LBB34_17:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_22 Depth 2
	ldx.w	$s7, $s0, $s2
	ld.w	$a0, $s0, 0
	move	$a1, $s6
	add.d	$s6, $s0, $s2
	bge	$s7, $a0, .LBB34_20
# %bb.18:                               # %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i.i
                                        #   in Loop: Header=BB34_17 Depth=1
	bltu	$s2, $s3, .LBB34_14
# %bb.19:                               # %if.then.i.i
                                        #   in Loop: Header=BB34_17 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB34_15
	.p2align	4, , 16
.LBB34_20:                              # %if.else.i
                                        #   in Loop: Header=BB34_17 Depth=1
	ld.w	$a1, $a1, 0
	move	$a0, $s6
	bge	$s7, $a1, .LBB34_16
# %bb.21:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB34_17 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB34_22:                              # %while.body.i.i
                                        #   Parent Loop BB34_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $a0, 0
	ld.w	$a1, $a0, -8
	addi.d	$a0, $a0, -4
	blt	$s7, $a1, .LBB34_22
	b	.LBB34_16
.LBB34_23:                              # %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB34_26
.LBB34_24:                              # %if.end
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
	.p2align	4, , 16
.LBB34_25:                              # %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB34_26 Depth=1
	addi.d	$a0, $a0, 4
	st.w	$a1, $a2, 0
	beq	$a0, $fp, .LBB34_24
.LBB34_26:                              # %for.body.i7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_28 Depth 2
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a0, -4
	move	$a2, $a0
	bge	$a1, $a3, .LBB34_25
# %bb.27:                               # %while.body.i.i9.preheader
                                        #   in Loop: Header=BB34_26 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB34_28:                              # %while.body.i.i9
                                        #   Parent Loop BB34_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a2, 0
	ld.w	$a3, $a2, -8
	addi.d	$a2, $a2, -4
	blt	$a1, $a3, .LBB34_28
	b	.LBB34_25
.Lfunc_end34:
	.size	_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end34-_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:                                # %entry
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 2
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB35_2
.LBB35_1:                               # %return
	ret
.LBB35_2:                               # %if.end
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 4
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB35_16
# %bb.3:                                # %while.cond.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a2, $a0, 2
	move	$a7, $a2
	b	.LBB35_6
	.p2align	4, , 16
.LBB35_4:                               #   in Loop: Header=BB35_6 Depth=1
	move	$t1, $t0
.LBB35_5:                               # %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB35_6 Depth=1
	slli.d	$t0, $t1, 2
	stx.w	$a7, $a0, $t0
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB35_1
.LBB35_6:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_8 Depth 2
                                        #     Child Loop BB35_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a0, $a7
	move	$t0, $a6
	bge	$a6, $a1, .LBB35_9
# %bb.7:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB35_6 Depth=1
	move	$t1, $a6
	.p2align	4, , 16
.LBB35_8:                               # %while.body.i
                                        #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	alsl.d	$t4, $t1, $a0, 3
	ldx.w	$t3, $a0, $t3
	ld.w	$t4, $t4, 4
	slt	$t3, $t3, $t4
	addi.d	$t0, $t0, 1
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t1, $t1, 2
	stx.w	$t2, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a1, .LBB35_8
.LBB35_9:                               # %while.end.i
                                        #   in Loop: Header=BB35_6 Depth=1
	bne	$t0, $a2, .LBB35_11
# %bb.10:                               # %if.then9.i
                                        #   in Loop: Header=BB35_6 Depth=1
	ld.w	$t0, $a4, 0
	st.w	$t0, $a5, 0
	move	$t0, $a3
.LBB35_11:                              # %if.end16.i
                                        #   in Loop: Header=BB35_6 Depth=1
	bge	$a6, $t0, .LBB35_4
	.p2align	4, , 16
.LBB35_12:                              # %land.rhs.i.i
                                        #   Parent Loop BB35_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	bge	$t2, $a7, .LBB35_4
# %bb.13:                               # %while.body.i.i
                                        #   in Loop: Header=BB35_12 Depth=2
	slli.d	$t0, $t0, 2
	stx.w	$t2, $a0, $t0
	move	$t0, $t1
	blt	$a6, $t1, .LBB35_12
	b	.LBB35_5
	.p2align	4, , 16
.LBB35_14:                              #   in Loop: Header=BB35_16 Depth=1
	move	$a5, $a4
.LBB35_15:                              # %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB35_16 Depth=1
	slli.d	$a4, $a5, 2
	stx.w	$a2, $a0, $a4
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB35_1
.LBB35_16:                              # %while.cond.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_18 Depth 2
                                        #     Child Loop BB35_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$a5, $a3
	bge	$a3, $a1, .LBB35_15
# %bb.17:                               # %while.body.i.us.preheader
                                        #   in Loop: Header=BB35_16 Depth=1
	move	$a4, $a3
	.p2align	4, , 16
.LBB35_18:                              # %while.body.i.us
                                        #   Parent Loop BB35_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a5, $a4
	slli.d	$a4, $a4, 1
	addi.d	$a6, $a4, 2
	slli.d	$a7, $a6, 2
	alsl.d	$t0, $a5, $a0, 3
	ldx.w	$a7, $a0, $a7
	ld.w	$t0, $t0, 4
	slt	$a7, $a7, $t0
	addi.d	$a4, $a4, 1
	masknez	$a6, $a6, $a7
	maskeqz	$a4, $a4, $a7
	or	$a4, $a4, $a6
	slli.d	$a6, $a4, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	stx.w	$a6, $a0, $a5
	blt	$a4, $a1, .LBB35_18
# %bb.19:                               # %while.end.i.us
                                        #   in Loop: Header=BB35_16 Depth=1
	bge	$a3, $a4, .LBB35_14
	.p2align	4, , 16
.LBB35_20:                              # %land.rhs.i.i.us
                                        #   Parent Loop BB35_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 63
	add.d	$a5, $a5, $a6
	srai.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	bge	$a6, $a2, .LBB35_14
# %bb.21:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB35_20 Depth=2
	slli.d	$a4, $a4, 2
	stx.w	$a6, $a0, $a4
	move	$a4, $a5
	blt	$a3, $a5, .LBB35_20
	b	.LBB35_15
.Lfunc_end35:
	.size	_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end35-_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"axG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.weak	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE # -- Begin function _ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.p2align	5
	.type	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,@function
_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE: # @_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
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
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 2272
	ld.w	$s5, $a1, 4
	ld.w	$a6, $a1, 0
	ld.w	$s7, $a1, 12
	ld.w	$a7, $a1, 8
	ld.w	$s8, $a1, 20
	ld.w	$s4, $a1, 16
	sub.d	$a1, $s5, $a6
	sub.d	$a4, $s7, $a7
	sub.d	$a5, $s8, $s4
	mul.d	$a1, $a4, $a1
	mul.w	$s6, $a1, $a5
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bltz	$s6, .LBB36_45
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s0, $a3
	move	$s2, $a0
	ld.w	$s3, $a0, 148
	ld.w	$s1, $a0, 156
	ld.w	$a5, $a0, 164
	beqz	$s6, .LBB36_4
# %bb.2:                                # %if.then.i.i.i.i3.i
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $s6, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $fp, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $fp, 4
	bne	$s6, $a1, .LBB36_5
# %bb.3:
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	move	$s6, $a0
	beq	$s5, $a6, .LBB36_6
	b	.LBB36_8
.LBB36_4:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$fp, $zero
	move	$s6, $zero
	beq	$s5, $a6, .LBB36_6
	b	.LBB36_8
.LBB36_5:                               # %if.end.i.i.i.i.i.i
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$s6, $fp, $a1
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	bne	$s5, $a6, .LBB36_8
.LBB36_6:                               # %invoke.cont9
	bne	$s7, $a7, .LBB36_8
# %bb.7:                                # %invoke.cont9
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	beq	$s8, $s4, .LBB36_22
	b	.LBB36_9
.LBB36_8:
	move	$a0, $fp
	move	$a1, $a7
	move	$a2, $a6
	.p2align	4, , 16
.LBB36_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	or	$a3, $a1, $a2
	or	$a4, $a3, $s4
	addi.d	$a3, $zero, -1
	bltz	$a4, .LBB36_14
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB36_9 Depth=1
	bge	$a2, $s3, .LBB36_14
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB36_9 Depth=1
	bge	$a1, $s1, .LBB36_14
# %bb.12:                               # %if.end.i
                                        #   in Loop: Header=BB36_9 Depth=1
	bge	$s4, $a5, .LBB36_14
# %bb.13:                               # %if.end10.i
                                        #   in Loop: Header=BB36_9 Depth=1
	mul.d	$a3, $s4, $s1
	add.d	$a3, $a3, $a1
	mul.d	$a3, $a3, $s3
	add.d	$a3, $a3, $a2
.LBB36_14:                              # %_ZN6miniFE6get_idIiEET_iiiiii.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.w	$a2, $a2, 1
	st.w	$a3, $a0, 0
	blt	$a2, $s5, .LBB36_19
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s7, .LBB36_17
# %bb.16:                               #   in Loop: Header=BB36_9 Depth=1
	move	$a2, $a6
	b	.LBB36_19
	.p2align	4, , 16
.LBB36_17:                              # %if.then13.i
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.w	$s4, $s4, 1
	move	$a2, $a6
	move	$a1, $a7
	blt	$s4, $s8, .LBB36_19
# %bb.18:                               # %if.then24.i
                                        #   in Loop: Header=BB36_9 Depth=1
	move	$a2, $s5
	move	$a1, $s7
	move	$s4, $s8
	.p2align	4, , 16
.LBB36_19:                              # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.d	$a0, $a0, 4
	bne	$a2, $s5, .LBB36_9
# %bb.20:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	bne	$a1, $s7, .LBB36_9
# %bb.21:                               # %_ZN6miniFE11BoxIteratorppEv.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	bne	$s4, $s8, .LBB36_9
.LBB36_22:                              # %for.cond.cleanup
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 64
	addi.d	$s3, $sp, 104
.Ltmp1200:                              # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE23compute_gradient_valuesIdEEvPT_)
	jirl	$ra, $ra, 0
.Ltmp1201:                              # EH_LABEL
# %bb.23:                               # %for.cond24.preheader
	beq	$s6, $fp, .LBB36_42
# %bb.24:                               # %for.body27.lr.ph
	move	$s1, $zero
	sub.d	$a0, $s6, $fp
	srai.d	$s8, $a0, 2
	addi.d	$s4, $sp, 72
	addi.d	$s5, $sp, 1640
	addi.d	$s6, $sp, 1832
	addi.d	$a0, $sp, 64
	addi.d	$a0, $a0, 2047
	addi.d	$s7, $a0, 9
	.p2align	4, , 16
.LBB36_25:                              # %for.body27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_37 Depth 2
.Ltmp1203:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1204:                              # EH_LABEL
# %bb.26:                               # %invoke.cont29
                                        #   in Loop: Header=BB36_25 Depth=1
	slli.d	$a0, $s1, 2
	ldx.w	$a1, $fp, $a0
.Ltmp1205:                              # EH_LABEL
	move	$a0, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_)
	jirl	$ra, $ra, 0
.Ltmp1206:                              # EH_LABEL
# %bb.27:                               # %invoke.cont32
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1207:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1208:                              # EH_LABEL
# %bb.28:                               # %invoke.cont33
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1209:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1210:                              # EH_LABEL
# %bb.29:                               # %invoke.cont35
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1211:                              # EH_LABEL
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1212:                              # EH_LABEL
# %bb.30:                               # %.noexc40
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1213:                              # EH_LABEL
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_)
	jirl	$ra, $ra, 0
.Ltmp1214:                              # EH_LABEL
# %bb.31:                               # %invoke.cont37
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1215:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1216:                              # EH_LABEL
# %bb.32:                               # %invoke.cont38
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1217:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1218:                              # EH_LABEL
# %bb.33:                               # %invoke.cont42
                                        #   in Loop: Header=BB36_25 Depth=1
	ld.d	$a0, $sp, 64
.Ltmp1219:                              # EH_LABEL
	move	$a1, $s4
	move	$a2, $s6
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_)
	jirl	$ra, $ra, 0
.Ltmp1220:                              # EH_LABEL
# %bb.34:                               # %.noexc47
                                        #   in Loop: Header=BB36_25 Depth=1
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB36_40
# %bb.35:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB36_25 Depth=1
	ld.w	$a1, $s0, 0
	ld.w	$a3, $s0, 4
	ld.d	$a2, $s0, 8
	add.w	$a3, $a3, $a1
	move	$a4, $s4
	move	$a5, $s7
	b	.LBB36_37
	.p2align	4, , 16
.LBB36_36:                              # %for.inc.i.i
                                        #   in Loop: Header=BB36_37 Depth=2
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB36_40
.LBB36_37:                              # %for.body.i.i
                                        #   Parent Loop BB36_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, 0
	blt	$a6, $a1, .LBB36_36
# %bb.38:                               # %for.body.i.i
                                        #   in Loop: Header=BB36_37 Depth=2
	bge	$a6, $a3, .LBB36_36
# %bb.39:                               # %if.end.i.i
                                        #   in Loop: Header=BB36_37 Depth=2
	sub.w	$a6, $a6, $a1
	fld.d	$fa0, $a5, 0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $a2, $a6
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a2, $a6
	b	.LBB36_36
	.p2align	4, , 16
.LBB36_40:                              # %invoke.cont44
                                        #   in Loop: Header=BB36_25 Depth=1
.Ltmp1221:                              # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6miniFE7mytimerEv)
	jirl	$ra, $ra, 0
.Ltmp1222:                              # EH_LABEL
# %bb.41:                               # %invoke.cont45
                                        #   in Loop: Header=BB36_25 Depth=1
	addi.d	$s1, $s1, 1
	bne	$s1, $s8, .LBB36_25
.LBB36_42:                              # %for.cond.cleanup26
	beqz	$fp, .LBB36_44
# %bb.43:                               # %if.then.i.i.i
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB36_44:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	addi.d	$sp, $sp, 240
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
.LBB36_45:                              # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB36_46:                              # %lpad21
.Ltmp1202:                              # EH_LABEL
	b	.LBB36_48
.LBB36_47:                              # %lpad28
.Ltmp1223:                              # EH_LABEL
.LBB36_48:                              # %ehcleanup
	beqz	$fp, .LBB36_50
# %bb.49:                               # %if.then.i.i.i49
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $fp
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB36_50:                              # %ehcleanup58
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE, .Lfunc_end36-_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,"aG",@progbits,_ZN6miniFE20perform_element_loopIiNS_9CSRMatrixIdiiEENS_6VectorIdiiEEEEvRKNS_23simple_mesh_descriptionIT_EERK3BoxRT0_RT1_RNS_10ParametersE,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp1200-.Lfunc_begin17       #   Call between .Lfunc_begin17 and .Ltmp1200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1200-.Lfunc_begin17       # >> Call Site 2 <<
	.uleb128 .Ltmp1201-.Ltmp1200            #   Call between .Ltmp1200 and .Ltmp1201
	.uleb128 .Ltmp1202-.Lfunc_begin17       #     jumps to .Ltmp1202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1203-.Lfunc_begin17       # >> Call Site 3 <<
	.uleb128 .Ltmp1222-.Ltmp1203            #   Call between .Ltmp1203 and .Ltmp1222
	.uleb128 .Ltmp1223-.Lfunc_begin17       #     jumps to .Ltmp1223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1222-.Lfunc_begin17       # >> Call Site 4 <<
	.uleb128 .Lfunc_end36-.Ltmp1222         #   Call between .Ltmp1222 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE23compute_gradient_valuesIdEEvPT_,"axG",@progbits,_ZN6miniFE23compute_gradient_valuesIdEEvPT_,comdat
	.weak	_ZN6miniFE23compute_gradient_valuesIdEEvPT_ # -- Begin function _ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.p2align	5
	.type	_ZN6miniFE23compute_gradient_valuesIdEEvPT_,@function
_ZN6miniFE23compute_gradient_valuesIdEEvPT_: # @_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_startproc
# %bb.0:                                # %entry
	lu12i.w	$a1, 316899
	ori	$a2, $a1, 1611
	lu32i.d	$a2, 255870
	lu52i.d	$a1, $a2, -1027
	st.d	$a1, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a1, $a0, 16
	lu52i.d	$a2, $a2, 1021
	st.d	$a2, $a0, 24
	lu12i.w	$a3, 350006
	ori	$a3, $a3, 3415
	lu32i.d	$a3, 349525
	lu52i.d	$a4, $a3, -1029
	st.d	$a4, $a0, 32
	st.d	$a4, $a0, 40
	lu52i.d	$a3, $a3, 1019
	st.d	$a3, $a0, 48
	st.d	$a3, $a0, 56
	lu12i.w	$a5, 518163
	ori	$a5, $a5, 173
	lu32i.d	$a5, 449904
	lu52i.d	$a6, $a5, -1031
	st.d	$a6, $a0, 64
	st.d	$a4, $a0, 72
	st.d	$a2, $a0, 80
	st.d	$a4, $a0, 88
	st.d	$a4, $a0, 96
	st.d	$a4, $a0, 104
	st.d	$a2, $a0, 112
	st.d	$a3, $a0, 120
	st.d	$a6, $a0, 128
	st.d	$a3, $a0, 136
	lu52i.d	$a5, $a5, 1017
	st.d	$a5, $a0, 144
	st.d	$a5, $a0, 152
	st.d	$a5, $a0, 160
	st.d	$a6, $a0, 168
	st.d	$a3, $a0, 176
	st.d	$a3, $a0, 184
	st.d	$a4, $a0, 192
	st.d	$a4, $a0, 200
	st.d	$a1, $a0, 208
	st.d	$a3, $a0, 216
	st.d	$a6, $a0, 224
	st.d	$a4, $a0, 232
	st.d	$a5, $a0, 240
	st.d	$a5, $a0, 248
	st.d	$a6, $a0, 256
	st.d	$a6, $a0, 264
	st.d	$a3, $a0, 272
	st.d	$a4, $a0, 280
	st.d	$a1, $a0, 288
	st.d	$a1, $a0, 296
	st.d	$a2, $a0, 304
	st.d	$a2, $a0, 312
	st.d	$a4, $a0, 320
	st.d	$a3, $a0, 328
	st.d	$a3, $a0, 336
	st.d	$a3, $a0, 344
	st.d	$a5, $a0, 352
	st.d	$a4, $a0, 360
	st.d	$a2, $a0, 368
	st.d	$a3, $a0, 376
	st.d	$a4, $a0, 384
	st.d	$a1, $a0, 392
	st.d	$a4, $a0, 400
	st.d	$a3, $a0, 408
	st.d	$a4, $a0, 416
	st.d	$a6, $a0, 424
	st.d	$a2, $a0, 432
	st.d	$a3, $a0, 440
	st.d	$a4, $a0, 448
	st.d	$a1, $a0, 456
	st.d	$a2, $a0, 464
	st.d	$a1, $a0, 472
	st.d	$a6, $a0, 480
	st.d	$a4, $a0, 488
	st.d	$a3, $a0, 496
	st.d	$a5, $a0, 504
	st.d	$a6, $a0, 512
	st.d	$a5, $a0, 520
	st.d	$a3, $a0, 528
	st.d	$a5, $a0, 536
	st.d	$a3, $a0, 544
	st.d	$a4, $a0, 552
	st.d	$a3, $a0, 560
	st.d	$a2, $a0, 568
	st.d	$a6, $a0, 576
	st.d	$a4, $a0, 584
	st.d	$a4, $a0, 592
	st.d	$a5, $a0, 600
	st.d	$a6, $a0, 608
	st.d	$a6, $a0, 616
	st.d	$a3, $a0, 624
	st.d	$a5, $a0, 632
	st.d	$a4, $a0, 640
	st.d	$a4, $a0, 648
	st.d	$a3, $a0, 656
	st.d	$a1, $a0, 664
	st.d	$a4, $a0, 672
	st.d	$a1, $a0, 680
	st.d	$a3, $a0, 688
	st.d	$a3, $a0, 696
	st.d	$a4, $a0, 704
	st.d	$a5, $a0, 712
	st.d	$a2, $a0, 720
	st.d	$a3, $a0, 728
	st.d	$a3, $a0, 736
	st.d	$a1, $a0, 744
	st.d	$a2, $a0, 752
	st.d	$a2, $a0, 760
	st.d	$a1, $a0, 768
	st.d	$a4, $a0, 776
	st.d	$a4, $a0, 784
	st.d	$a2, $a0, 792
	st.d	$a1, $a0, 800
	st.d	$a1, $a0, 808
	st.d	$a3, $a0, 816
	st.d	$a2, $a0, 824
	st.d	$a4, $a0, 832
	st.d	$a4, $a0, 840
	st.d	$a3, $a0, 848
	st.d	$a6, $a0, 856
	st.d	$a4, $a0, 864
	st.d	$a6, $a0, 872
	st.d	$a3, $a0, 880
	st.d	$a3, $a0, 888
	st.d	$a4, $a0, 896
	st.d	$a2, $a0, 904
	st.d	$a5, $a0, 912
	st.d	$a3, $a0, 920
	st.d	$a3, $a0, 928
	st.d	$a6, $a0, 936
	st.d	$a5, $a0, 944
	st.d	$a5, $a0, 952
	st.d	$a4, $a0, 960
	st.d	$a6, $a0, 968
	st.d	$a4, $a0, 976
	st.d	$a3, $a0, 984
	st.d	$a4, $a0, 992
	st.d	$a1, $a0, 1000
	st.d	$a5, $a0, 1008
	st.d	$a3, $a0, 1016
	st.d	$a4, $a0, 1024
	st.d	$a6, $a0, 1032
	st.d	$a5, $a0, 1040
	st.d	$a6, $a0, 1048
	st.d	$a1, $a0, 1056
	st.d	$a4, $a0, 1064
	st.d	$a3, $a0, 1072
	st.d	$a2, $a0, 1080
	st.d	$a1, $a0, 1088
	st.d	$a2, $a0, 1096
	st.d	$a3, $a0, 1104
	st.d	$a2, $a0, 1112
	st.d	$a3, $a0, 1120
	st.d	$a4, $a0, 1128
	st.d	$a3, $a0, 1136
	st.d	$a5, $a0, 1144
	st.d	$a4, $a0, 1152
	st.d	$a4, $a0, 1160
	st.d	$a6, $a0, 1168
	st.d	$a3, $a0, 1176
	st.d	$a1, $a0, 1184
	st.d	$a4, $a0, 1192
	st.d	$a2, $a0, 1200
	st.d	$a2, $a0, 1208
	st.d	$a1, $a0, 1216
	st.d	$a1, $a0, 1224
	st.d	$a3, $a0, 1232
	st.d	$a4, $a0, 1240
	st.d	$a6, $a0, 1248
	st.d	$a6, $a0, 1256
	st.d	$a5, $a0, 1264
	st.d	$a5, $a0, 1272
	st.d	$a4, $a0, 1280
	st.d	$a3, $a0, 1288
	st.d	$a3, $a0, 1296
	st.d	$a3, $a0, 1304
	st.d	$a2, $a0, 1312
	st.d	$a4, $a0, 1320
	st.d	$a5, $a0, 1328
	st.d	$a3, $a0, 1336
	st.d	$a6, $a0, 1344
	st.d	$a6, $a0, 1352
	st.d	$a6, $a0, 1360
	st.d	$a5, $a0, 1368
	st.d	$a4, $a0, 1376
	st.d	$a4, $a0, 1384
	st.d	$a3, $a0, 1392
	st.d	$a3, $a0, 1400
	st.d	$a1, $a0, 1408
	st.d	$a4, $a0, 1416
	st.d	$a5, $a0, 1424
	st.d	$a4, $a0, 1432
	st.d	$a4, $a0, 1440
	st.d	$a4, $a0, 1448
	st.d	$a5, $a0, 1456
	st.d	$a3, $a0, 1464
	st.d	$a1, $a0, 1472
	st.d	$a3, $a0, 1480
	st.d	$a2, $a0, 1488
	st.d	$a2, $a0, 1496
	st.d	$a2, $a0, 1504
	st.d	$a1, $a0, 1512
	st.d	$a3, $a0, 1520
	st.d	$a3, $a0, 1528
	ret
.Lfunc_end37:
	.size	_ZN6miniFE23compute_gradient_valuesIdEEvPT_, .Lfunc_end37-_ZN6miniFE23compute_gradient_valuesIdEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"axG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.weak	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_ # -- Begin function _ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.p2align	5
	.type	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,@function
_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_: # @_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	bltz	$a1, .LBB38_7
# %bb.1:                                # %if.end
	move	$fp, $a3
	move	$s2, $a2
	move	$s1, $a0
	ld.w	$a2, $a0, 148
	ld.w	$a0, $a0, 156
	addi.w	$s4, $a2, 1
	addi.w	$s6, $a0, 1
	ld.w	$s5, $s1, 164
	mul.w	$a4, $a0, $a2
	div.w	$a3, $a1, $a4
	mul.d	$a4, $a3, $a4
	sub.w	$a4, $a1, $a4
	div.w	$a4, $a4, $a2
	mod.w	$a1, $a1, $a2
	or	$a5, $a4, $a3
	or	$a5, $a5, $a1
	addi.w	$s0, $zero, -1
	bltz	$a5, .LBB38_6
# %bb.2:                                # %if.end.i
	blt	$s5, $a3, .LBB38_6
# %bb.3:                                # %if.end.i
	bltz	$a2, .LBB38_6
# %bb.4:                                # %if.end.i
	blt	$a0, $a4, .LBB38_6
# %bb.5:                                # %if.end10.i
	mul.d	$a0, $a3, $s6
	add.d	$a0, $a4, $a0
	mul.d	$a0, $a0, $s4
	add.w	$s0, $a0, $a1
.LBB38_6:                               # %_ZN6miniFE6get_idIiEET_iiiiii.exit
	st.w	$s0, $s2, 0
	addi.d	$a0, $s0, 1
	st.w	$a0, $s2, 4
	add.d	$a1, $s0, $s4
	addi.d	$a2, $a1, 1
	st.w	$a2, $s2, 8
	st.w	$a1, $s2, 12
	mul.w	$s7, $s6, $s4
	add.d	$a2, $s0, $s7
	st.w	$a2, $s2, 16
	add.d	$a0, $a0, $s7
	st.w	$a0, $s2, 20
	add.d	$a0, $a1, $s7
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 24
	st.w	$a0, $s2, 28
	addi.d	$s3, $s1, 96
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 8
	st.w	$a0, $s2, 4
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	st.w	$a0, $s2, 8
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 16
	st.w	$a0, $s2, 12
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 20
	st.w	$a0, $s2, 16
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 24
	st.w	$a0, $s2, 20
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 28
	st.w	$a0, $s2, 24
	move	$a0, $a1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6miniFE15find_row_for_idIiEET_S1_RKSt3mapIS1_S1_St4lessIS1_ESaISt4pairIKS1_S1_EEE)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 28
	ld.w	$a0, $s1, 148
	ld.w	$a1, $s1, 156
	ld.w	$a2, $s1, 164
	ori	$a3, $zero, 2
	slt	$a4, $a3, $s4
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $s4, $a4
	or	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	slt	$a5, $a3, $s6
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s6, $a5
	or	$a3, $a5, $a3
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a5, $zero, 1
	slt	$a6, $a5, $s5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $s5, $a6
	or	$a5, $a6, $a5
	div.w	$a6, $s0, $s7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	mul.d	$a5, $a6, $s7
	sub.w	$a5, $s0, $a5
	div.w	$a5, $a5, $s4
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	mod.w	$a3, $s0, $s4
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	movgr2fr.d	$fa3, $a4
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	frecip.d	$fa3, $fa3
	movgr2fr.w	$fa4, $a1
	ffint.d.w	$fa4, $fa4
	frecip.d	$fa4, $fa4
	movgr2fr.w	$fa5, $a2
	ffint.d.w	$fa5, $fa5
	frecip.d	$fa5, $fa5
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $fp, 8
	fst.d	$fa0, $fp, 16
	fadd.d	$fa3, $fa3, $fa2
	fst.d	$fa3, $fp, 24
	fst.d	$fa1, $fp, 32
	fst.d	$fa0, $fp, 40
	fst.d	$fa3, $fp, 48
	fadd.d	$fa4, $fa4, $fa1
	fst.d	$fa4, $fp, 56
	fst.d	$fa0, $fp, 64
	fst.d	$fa2, $fp, 72
	fst.d	$fa4, $fp, 80
	fst.d	$fa0, $fp, 88
	fst.d	$fa2, $fp, 96
	fst.d	$fa1, $fp, 104
	fadd.d	$fa0, $fa5, $fa0
	fst.d	$fa0, $fp, 112
	fst.d	$fa3, $fp, 120
	fst.d	$fa1, $fp, 128
	fst.d	$fa0, $fp, 136
	fst.d	$fa3, $fp, 144
	fst.d	$fa4, $fp, 152
	fst.d	$fa0, $fp, 160
	fst.d	$fa2, $fp, 168
	fst.d	$fa4, $fp, 176
	fst.d	$fa0, $fp, 184
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
.LBB38_7:                               # %if.then
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp1224:                              # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a1, $a0, %pc_lo12(.L.str.92)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt13runtime_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp1225:                              # EH_LABEL
# %bb.8:                                # %invoke.cont
	pcalau12i	$a0, %got_pc_hi20(_ZTISt13runtime_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt13runtime_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt13runtime_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt13runtime_errorD1Ev)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB38_9:                               # %lpad
.Ltmp1226:                              # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_, .Lfunc_end38-_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_
	.cfi_endproc
	.section	.gcc_except_table._ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,"aG",@progbits,_ZN6miniFE25get_elem_nodes_and_coordsIidEEvRKNS_23simple_mesh_descriptionIT_EES2_PS2_PT0_,comdat
	.p2align	2, 0x0
GCC_except_table38:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp1224-.Lfunc_begin18       #   Call between .Lfunc_begin18 and .Ltmp1224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1224-.Lfunc_begin18       # >> Call Site 2 <<
	.uleb128 .Ltmp1225-.Ltmp1224            #   Call between .Ltmp1224 and .Ltmp1225
	.uleb128 .Ltmp1226-.Lfunc_begin18       #     jumps to .Ltmp1226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1225-.Lfunc_begin18       # >> Call Site 3 <<
	.uleb128 .Lfunc_end38-.Ltmp1225         #   Call between .Ltmp1225 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_ # -- Begin function _ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	st.d	$s4, $sp, 376                   # 8-byte Folded Spill
	st.d	$s5, $sp, 368                   # 8-byte Folded Spill
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
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
	move	$fp, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 288
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	st.d	$zero, $sp, 336
	ori	$a2, $zero, 1
	ori	$s7, $zero, 7
	addi.d	$s8, $sp, 272
	addi.d	$s4, $sp, 208
	addi.d	$s5, $sp, 144
	ori	$s6, $zero, 6
	ori	$s1, $zero, 2
	ori	$s0, $zero, 64
	ori	$s3, $zero, 8
	b	.LBB39_2
	.p2align	4, , 16
.LBB39_1:                               # %for.cond.cleanup4
                                        #   in Loop: Header=BB39_2 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB39_16
.LBB39_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_4 Depth 2
                                        #       Child Loop BB39_6 Depth 3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB39_4
	.p2align	4, , 16
.LBB39_3:                               # %for.cond.cleanup9
                                        #   in Loop: Header=BB39_4 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	move	$a2, $zero
	beqz	$a0, .LBB39_1
.LBB39_4:                               # %for.body5
                                        #   Parent Loop BB39_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_6 Depth 3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	b	.LBB39_6
	.p2align	4, , 16
.LBB39_5:                               # %for.cond.cleanup56
                                        #   in Loop: Header=BB39_6 Depth=3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 24
	move	$a2, $zero
	beqz	$a0, .LBB39_3
.LBB39_6:                               # %for.body10
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB39_9 Depth 4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s2, $a1, $a0, 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 336
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $zero
	fld.d	$fa0, $sp, 336
	fld.d	$ft0, $sp, 72
	fld.d	$ft1, $sp, 80
	fld.d	$fa7, $sp, 88
	fld.d	$fa5, $sp, 96
	fld.d	$fa6, $sp, 104
	fld.d	$fa4, $sp, 112
	fld.d	$fa1, $sp, 120
	fld.d	$fa2, $sp, 128
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	fldx.d	$ft2, $a2, $a3
	fld.d	$ft3, $s2, 8
	fld.d	$fa3, $sp, 136
	fld.d	$ft4, $s2, 16
	fmul.d	$ft5, $ft2, $ft0
	fmul.d	$ft6, $ft3, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 272
	fmul.d	$ft5, $ft2, $fa5
	fmul.d	$ft6, $ft3, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft4, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 208
	fmul.d	$ft2, $ft2, $fa1
	fmul.d	$ft3, $ft3, $fa2
	fadd.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $ft4, $fa3
	fadd.d	$ft2, $ft2, $ft3
	fld.d	$ft3, $s2, 24
	fld.d	$ft4, $s2, 32
	fst.d	$ft2, $sp, 144
	fld.d	$ft2, $s2, 40
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 280
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 216
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 48
	fld.d	$ft4, $s2, 56
	fst.d	$ft2, $sp, 152
	fld.d	$ft2, $s2, 64
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 288
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 224
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 72
	fld.d	$ft4, $s2, 80
	fst.d	$ft2, $sp, 160
	fld.d	$ft2, $s2, 88
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 296
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 232
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 96
	fld.d	$ft4, $s2, 104
	fst.d	$ft2, $sp, 168
	fld.d	$ft2, $s2, 112
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 304
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 240
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 120
	fld.d	$ft4, $s2, 128
	fst.d	$ft2, $sp, 176
	fld.d	$ft2, $s2, 136
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 312
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 248
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 144
	fld.d	$ft4, $s2, 152
	fst.d	$ft2, $sp, 184
	fld.d	$ft2, $s2, 160
	fmul.d	$ft5, $ft3, $ft0
	fmul.d	$ft6, $ft4, $ft1
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 320
	fmul.d	$ft5, $ft3, $fa5
	fmul.d	$ft6, $ft4, $fa6
	fadd.d	$ft5, $ft5, $ft6
	fmul.d	$ft6, $ft2, $fa4
	fadd.d	$ft5, $ft5, $ft6
	fst.d	$ft5, $sp, 256
	fmul.d	$ft3, $ft3, $fa1
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft3, $ft3, $ft4
	fmul.d	$ft2, $ft2, $fa3
	fadd.d	$ft2, $ft3, $ft2
	fld.d	$ft3, $s2, 168
	fld.d	$ft4, $s2, 176
	fst.d	$ft2, $sp, 192
	fld.d	$ft2, $s2, 184
	fmul.d	$ft0, $ft3, $ft0
	fmul.d	$ft1, $ft4, $ft1
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$fa7, $ft2, $fa7
	fadd.d	$fa7, $ft0, $fa7
	fst.d	$fa7, $sp, 328
	fmul.d	$fa5, $ft3, $fa5
	fmul.d	$fa6, $ft4, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fmul.d	$fa4, $ft2, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fst.d	$fa4, $sp, 264
	fmul.d	$fa1, $ft3, $fa1
	fmul.d	$fa2, $ft4, $fa2
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $ft2, $fa3
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $sp, 200
	vreplvei.d	$vr1, $vr0, 0
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 280
	addi.d	$a4, $sp, 216
	addi.d	$a5, $sp, 152
	ori	$a6, $zero, 1
	b	.LBB39_9
	.p2align	4, , 16
.LBB39_7:                               # %for.cond54.loopexit.loopexit
                                        #   in Loop: Header=BB39_9 Depth=4
	move	$a1, $a7
.LBB39_8:                               # %for.cond54.loopexit
                                        #   in Loop: Header=BB39_9 Depth=4
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	beq	$a0, $s3, .LBB39_5
.LBB39_9:                               # %for.body57
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB39_12 Depth 5
                                        #           Child Loop BB39_15 Depth 5
	slli.d	$a7, $a0, 3
	fldx.d	$fa2, $a7, $s8
	fldx.d	$fa3, $a7, $s4
	fldx.d	$fa4, $a7, $s5
	fmul.d	$fa5, $fa2, $fa2
	fmul.d	$fa6, $fa3, $fa3
	fadd.d	$fa5, $fa5, $fa6
	addi.w	$a7, $a1, 0
	slli.d	$a7, $a7, 3
	fldx.d	$fa6, $fp, $a7
	fmul.d	$fa7, $fa4, $fa4
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fstx.d	$fa5, $fp, $a7
	addi.w	$a1, $a1, 1
	bltu	$s6, $a0, .LBB39_8
# %bb.10:                               # %for.body78.preheader
                                        #   in Loop: Header=BB39_9 Depth=4
	sub.d	$t1, $s7, $a0
	move	$t0, $a6
	move	$a7, $a1
	bltu	$t1, $s1, .LBB39_14
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB39_9 Depth=4
	move	$t3, $a2
	bstrins.d	$t3, $zero, 0, 0
	andi	$t2, $t1, 6
	add.d	$t0, $a6, $t2
	add.d	$a7, $t2, $a1
	vreplvei.d	$vr5, $vr2, 0
	vreplvei.d	$vr6, $vr3, 0
	vreplvei.d	$vr7, $vr4, 0
	alsl.d	$a1, $a1, $fp, 3
	move	$t4, $a3
	move	$t5, $a4
	move	$t6, $a5
	.p2align	4, , 16
.LBB39_12:                              # %vector.body
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        #         Parent Loop BB39_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr8, $t4, 0
	vld	$vr9, $t5, 0
	vfmul.d	$vr8, $vr5, $vr8
	vld	$vr10, $t6, 0
	vfmul.d	$vr9, $vr6, $vr9
	vfadd.d	$vr8, $vr8, $vr9
	vld	$vr9, $a1, 0
	vfmul.d	$vr10, $vr7, $vr10
	vfadd.d	$vr8, $vr8, $vr10
	vfmul.d	$vr8, $vr1, $vr8
	vfadd.d	$vr8, $vr9, $vr8
	vst	$vr8, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$t3, $t3, -2
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB39_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB39_9 Depth=4
	beq	$t1, $t2, .LBB39_7
.LBB39_14:                              # %for.body78.preheader75
                                        #   in Loop: Header=BB39_9 Depth=4
	slli.d	$a1, $t0, 3
	alsl.d	$t1, $a7, $fp, 3
	sub.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 8
	.p2align	4, , 16
.LBB39_15:                              # %for.body78
                                        #   Parent Loop BB39_2 Depth=1
                                        #     Parent Loop BB39_4 Depth=2
                                        #       Parent Loop BB39_6 Depth=3
                                        #         Parent Loop BB39_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	fldx.d	$fa5, $a1, $s8
	fldx.d	$fa6, $a1, $s4
	fmul.d	$fa5, $fa2, $fa5
	fldx.d	$fa7, $a1, $s5
	fmul.d	$fa6, $fa3, $fa6
	fadd.d	$fa5, $fa5, $fa6
	fld.d	$fa6, $t1, 0
	fmul.d	$fa7, $fa4, $fa7
	fadd.d	$fa5, $fa5, $fa7
	fmul.d	$fa5, $fa0, $fa5
	fadd.d	$fa5, $fa6, $fa5
	fst.d	$fa5, $t1, 0
	addi.d	$a1, $a1, 8
	addi.d	$t1, $t1, 8
	bne	$a1, $s0, .LBB39_15
	b	.LBB39_7
.LBB39_16:                              # %for.cond.cleanup
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.Lfunc_end39:
	.size	_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_, .Lfunc_end39-_ZN6miniFE4Hex820diffusionMatrix_symmIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
.LCPI40_0:
	.dword	0xbfe279a74576233f              # double -0.57735026899999997
	.dword	0x3fe279a74576233f              # double 0.57735026899999997
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI40_1:
	.dword	0x3ff93cd3a2bb11a0              # double 1.5773502690000001
.LCPI40_2:
	.dword	0x3fdb0cb17513b982              # double 0.42264973100000003
	.section	.text._ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,"axG",@progbits,_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,comdat
	.weak	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.p2align	5
	.type	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_,@function
_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_: # @_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_startproc
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
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	.cfi_offset 60, -96
	.cfi_offset 61, -104
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 48
	pcalau12i	$a0, %pc_hi20(.LCPI40_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI40_0)
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 0
	vst	$vr1, $sp, 160
	vldi	$vr0, -912
	vst	$vr0, $sp, 144
	addi.d	$s2, $sp, 152
	addi.d	$s3, $sp, 168
	fld.d	$fa0, $sp, 160
	fld.d	$fa1, $sp, 144
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	vldi	$vr1, -912
	fld.d	$fa2, $sp, 168
	fsub.d	$fa3, $fa1, $fa0
	fst.d	$fa3, $sp, 56                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 48                   # 8-byte Folded Spill
	fld.d	$fa0, $sp, 152
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 32                   # 8-byte Folded Spill
	fadd.d	$fa0, $fa2, $fa1
	fst.d	$fa0, $sp, 24                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 160
	pcalau12i	$a1, %pc_hi20(.LCPI40_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI40_1)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI40_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI40_2)
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 144
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB40_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	vldi	$vr2, -912
	fadd.d	$fa1, $fa0, $fa2
	vldi	$vr3, -960
	fmul.d	$fa4, $fa1, $fa3
	fst.d	$fa4, $sp, 120                  # 8-byte Folded Spill
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa5, $fa0, $fa3
	fst.d	$fa5, $sp, 112                  # 8-byte Folded Spill
	fld.d	$fs6, $a1, 0
	fld.d	$fa1, $sp, 56                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa5, $fa1
	fmul.d	$fa1, $fa4, $fa1
	fld.d	$fa3, $sp, 48                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa4, $fa3
	fmul.d	$fa3, $fa5, $fa3
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fs7
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fs1, $fa1, $fs7
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fmul.d	$fs3, $fa2, $fs7
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fmul.d	$fs5, $fa3, $fs7
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	fmul.d	$fs4, $fa0, $fs0
	fmul.d	$fa0, $fa1, $fs0
	fst.d	$fa0, $sp, 64                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa2, $fs0
	fst.d	$fa0, $sp, 72                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa3, $fs0
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fmov.d	$fs3, $fs4
	fmul.d	$fa1, $fa0, $fs4
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	addi.d	$a1, $s0, 192
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fmul.d	$fa2, $fa0, $fs3
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs4
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fld.d	$fa1, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fa1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fmul.d	$fa0, $fa0, $fs5
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	fld.d	$fa1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fa4, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa4, $fa1
	fld.d	$fa2, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa2, $fa1
	fld.d	$fa3, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$fs1, $fa0, $fs7
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fmul.d	$fs5, $fa1, $fs7
	fst.d	$fs5, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fs4, $fa2, $fs7
	fmul.d	$fs3, $fa3, $fs7
	fmul.d	$fs2, $fa0, $fs0
	fmul.d	$fs7, $fa1, $fs0
	fmul.d	$fa0, $fa2, $fs0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa3, $fs0
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	addi.d	$a1, $s0, 384
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmov.d	$fs0, $fs6
	fmul.d	$fa0, $fs6, $fa0
	fld.d	$fa1, $fp, 0
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fmul.d	$fa0, $fs6, $fa0
	fmul.d	$fa2, $fa0, $fs1
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs5
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs4
	fmov.d	$fs5, $fs4
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs3
	fmov.d	$fs4, $fs3
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fmul.d	$fa1, $fa0, $fs2
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fmul.d	$fa1, $fa0, $fs7
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	addi.d	$a1, $s0, 576
	addi.d	$a2, $sp, 136
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 136
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fa1, $fp, 0
	fmul.d	$fa0, $fs6, $fa0
	fmul.d	$fa2, $fa0, $fs2
	fld.d	$fa3, $fp, 8
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $fp, 0
	fmul.d	$fa1, $fa0, $fs7
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 16
	fst.d	$fa1, $fp, 8
	fmul.d	$fa1, $fa0, $fs3
	fld.d	$fa3, $fp, 24
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 16
	fmul.d	$fa1, $fa0, $fs1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 32
	fst.d	$fa1, $fp, 24
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $fp, 40
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 32
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa0, $fa1
	fadd.d	$fa1, $fa3, $fa1
	fld.d	$fa2, $fp, 48
	fst.d	$fa1, $fp, 40
	fmul.d	$fa1, $fa0, $fs5
	fld.d	$fa3, $fp, 56
	fadd.d	$fa1, $fa2, $fa1
	fst.d	$fa1, $fp, 48
	fmul.d	$fa0, $fa0, $fs4
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $fp, 56
	andi	$a2, $s4, 1
	addi.d	$s0, $s0, 768
	move	$a1, $s2
	move	$a0, $s3
	move	$s4, $zero
	bnez	$a2, .LBB40_1
# %bb.2:                                # %for.cond.cleanup
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end40:
	.size	_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_, .Lfunc_end40-_ZN6miniFE4Hex812sourceVectorIdEEvPKT_S4_PS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,"axG",@progbits,_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,comdat
	.weak	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_ # -- Begin function _ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_,@function
_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_: # @_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
# %bb.0:                                # %entry
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a0, 0
	fmul.d	$fa2, $fa0, $fa1
	fld.d	$fa3, $a0, 8
	movgr2fr.d	$fa4, $zero
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fa5, $a0, 16
	fmul.d	$fa6, $fa0, $fa3
	fld.d	$fa7, $a1, 8
	fadd.d	$fa6, $fa6, $fa4
	fmul.d	$fa0, $fa0, $fa5
	fadd.d	$fa0, $fa0, $fa4
	fmul.d	$ft0, $fa1, $fa7
	fadd.d	$ft0, $ft0, $fa4
	fmul.d	$ft1, $fa3, $fa7
	fld.d	$ft2, $a1, 16
	fadd.d	$ft1, $ft1, $fa4
	fmul.d	$fa7, $fa5, $fa7
	fadd.d	$fa7, $fa7, $fa4
	fmul.d	$fa1, $fa1, $ft2
	fadd.d	$fa1, $fa1, $fa4
	fmul.d	$fa3, $fa3, $ft2
	fadd.d	$fa3, $fa3, $fa4
	fld.d	$ft3, $a1, 24
	fld.d	$ft4, $a0, 24
	fmul.d	$fa5, $fa5, $ft2
	fadd.d	$fa4, $fa5, $fa4
	fld.d	$fa5, $a0, 32
	fmul.d	$ft2, $ft3, $ft4
	fadd.d	$fa2, $fa2, $ft2
	fld.d	$ft2, $a0, 40
	fmul.d	$ft5, $ft3, $fa5
	fld.d	$ft6, $a1, 32
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft3, $ft3, $ft2
	fadd.d	$fa0, $fa0, $ft3
	fmul.d	$ft3, $ft4, $ft6
	fadd.d	$ft0, $ft0, $ft3
	fmul.d	$ft3, $fa5, $ft6
	fld.d	$ft5, $a1, 40
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft2, $ft6
	fadd.d	$fa7, $fa7, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa1, $fa1, $ft3
	fmul.d	$fa5, $fa5, $ft5
	fadd.d	$fa3, $fa3, $fa5
	fld.d	$fa5, $a1, 48
	fld.d	$ft3, $a0, 48
	fmul.d	$ft2, $ft2, $ft5
	fadd.d	$fa4, $fa4, $ft2
	fld.d	$ft2, $a0, 56
	fmul.d	$ft4, $fa5, $ft3
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 64
	fmul.d	$ft5, $fa5, $ft2
	fld.d	$ft6, $a1, 56
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$fa5, $fa5, $ft4
	fadd.d	$fa0, $fa0, $fa5
	fmul.d	$fa5, $ft3, $ft6
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft2, $ft6
	fld.d	$ft5, $a1, 64
	fadd.d	$ft0, $ft1, $ft0
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 72
	fld.d	$ft2, $a0, 72
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 80
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 88
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 80
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 88
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 96
	fld.d	$ft2, $a0, 96
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 104
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 112
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 104
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 112
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 120
	fld.d	$ft2, $a0, 120
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 128
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 136
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 128
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$fa0, $fa0, $ft1
	fmul.d	$ft1, $ft2, $ft6
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$ft1, $ft3, $ft6
	fld.d	$ft5, $a1, 136
	fadd.d	$ft0, $ft0, $ft1
	fmul.d	$ft1, $ft4, $ft6
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft2, $ft5
	fadd.d	$fa1, $fa1, $ft1
	fmul.d	$ft1, $ft3, $ft5
	fadd.d	$fa3, $fa3, $ft1
	fld.d	$ft1, $a1, 144
	fld.d	$ft2, $a0, 144
	fmul.d	$ft3, $ft4, $ft5
	fadd.d	$fa4, $fa4, $ft3
	fld.d	$ft3, $a0, 152
	fmul.d	$ft4, $ft1, $ft2
	fadd.d	$fa2, $fa2, $ft4
	fld.d	$ft4, $a0, 160
	fmul.d	$ft5, $ft1, $ft3
	fld.d	$ft6, $a1, 152
	fadd.d	$fa6, $fa6, $ft5
	fmul.d	$ft1, $ft1, $ft4
	fadd.d	$ft1, $fa0, $ft1
	fmul.d	$fa0, $ft2, $ft6
	fadd.d	$fa5, $fa5, $fa0
	fmul.d	$fa0, $ft3, $ft6
	fld.d	$ft5, $a1, 160
	fadd.d	$ft0, $ft0, $fa0
	fmul.d	$fa0, $ft4, $ft6
	fadd.d	$fa7, $fa7, $fa0
	fmul.d	$fa0, $ft2, $ft5
	fadd.d	$ft2, $fa1, $fa0
	fmul.d	$fa0, $ft3, $ft5
	fadd.d	$fa3, $fa3, $fa0
	fld.d	$ft3, $a1, 168
	fld.d	$ft6, $a0, 168
	fmul.d	$fa0, $ft4, $ft5
	fadd.d	$fa4, $fa4, $fa0
	fld.d	$ft4, $a0, 176
	fmul.d	$fa0, $ft3, $ft6
	fadd.d	$fa0, $fa2, $fa0
	fld.d	$ft5, $a0, 184
	fmul.d	$fa1, $ft3, $ft4
	fld.d	$ft7, $a1, 176
	fadd.d	$fa1, $fa6, $fa1
	fmul.d	$fa2, $ft3, $ft5
	fadd.d	$fa6, $ft1, $fa2
	fmul.d	$fa2, $ft6, $ft7
	fadd.d	$fa2, $fa5, $fa2
	fmul.d	$fa5, $ft4, $ft7
	fld.d	$ft1, $a1, 184
	fadd.d	$fa5, $ft0, $fa5
	fmul.d	$ft0, $ft5, $ft7
	fadd.d	$fa7, $fa7, $ft0
	fmul.d	$ft0, $ft6, $ft1
	fadd.d	$ft0, $ft2, $ft0
	fmul.d	$ft2, $ft4, $ft1
	fadd.d	$fa3, $fa3, $ft2
	fmul.d	$ft1, $ft5, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa5, $fa4
	fmul.d	$ft2, $fa7, $fa3
	fsub.d	$ft1, $ft1, $ft2
	fmul.d	$ft2, $fa4, $fa1
	fmul.d	$ft3, $fa3, $fa6
	fsub.d	$ft2, $ft2, $ft3
	fmul.d	$ft3, $fa7, $fa1
	fmul.d	$ft4, $fa5, $fa6
	fsub.d	$ft3, $ft3, $ft4
	fmul.d	$ft4, $ft1, $fa0
	fmul.d	$ft5, $fa2, $ft2
	fsub.d	$ft4, $ft4, $ft5
	fmul.d	$ft5, $ft0, $ft3
	fadd.d	$ft4, $ft5, $ft4
	fst.d	$ft4, $a3, 0
	frecip.d	$ft4, $ft4
	fmul.d	$ft1, $ft1, $ft4
	fst.d	$ft1, $a2, 0
	fneg.d	$ft1, $ft2
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 8
	fmul.d	$ft1, $ft3, $ft4
	fst.d	$ft1, $a2, 16
	fmul.d	$ft1, $fa4, $fa2
	fmul.d	$ft2, $fa7, $ft0
	fsub.d	$ft1, $ft1, $ft2
	fneg.d	$ft1, $ft1
	fmul.d	$ft1, $ft4, $ft1
	fst.d	$ft1, $a2, 24
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$ft1, $ft0, $fa6
	fsub.d	$fa4, $fa4, $ft1
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 32
	fmul.d	$fa4, $fa7, $fa0
	fmul.d	$fa6, $fa2, $fa6
	fsub.d	$fa4, $fa4, $fa6
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $ft4, $fa4
	fst.d	$fa4, $a2, 40
	fmul.d	$fa4, $fa3, $fa2
	fmul.d	$fa6, $fa5, $ft0
	fsub.d	$fa4, $fa4, $fa6
	fmul.d	$fa4, $fa4, $ft4
	fst.d	$fa4, $a2, 48
	fmul.d	$fa3, $fa3, $fa0
	fmul.d	$fa4, $ft0, $fa1
	fsub.d	$fa3, $fa3, $fa4
	fneg.d	$fa3, $fa3
	fmul.d	$fa3, $ft4, $fa3
	fst.d	$fa3, $a2, 56
	fmul.d	$fa0, $fa5, $fa0
	fmul.d	$fa1, $fa2, $fa1
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $ft4
	fst.d	$fa0, $a2, 64
	ret
.Lfunc_end41:
	.size	_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_, .Lfunc_end41-_ZN6miniFE4Hex827gradients_and_invJ_and_detJIdEEvPKT_S4_PS2_RS2_
                                        # -- End function
	.section	.text._ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,"axG",@progbits,_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,comdat
	.weak	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_ # -- Begin function _ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
	.p2align	5
	.type	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_,@function
_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_: # @_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 16                   # 8-byte Folded Spill
	fld.d	$ft8, $a0, 0
	fld.d	$ft9, $a1, 8
	fld.d	$ft7, $a1, 0
	fld.d	$ft5, $a0, 24
	fld.d	$ft6, $a1, 32
	fmul.d	$fa0, $ft8, $ft9
	movgr2fr.d	$fa1, $zero
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft5, $ft6
	fld.d	$ft3, $a0, 48
	fld.d	$ft4, $a1, 56
	fld.d	$ft1, $a0, 72
	fld.d	$ft2, $a1, 80
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft3, $ft4
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $ft1, $ft2
	fld.d	$fa7, $a0, 96
	fld.d	$ft0, $a1, 104
	fld.d	$fa5, $a0, 120
	fld.d	$fa6, $a1, 128
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fa7, $ft0
	fadd.d	$fa0, $fa0, $fa1
	fmul.d	$ft10, $fa5, $fa6
	fld.d	$fa3, $a0, 144
	fld.d	$fa4, $a1, 152
	fld.d	$fa1, $a0, 168
	fld.d	$fa2, $a1, 176
	fadd.d	$fa0, $fa0, $ft10
	fmul.d	$ft10, $fa3, $fa4
	fadd.d	$fa0, $fa0, $ft10
	fmul.d	$ft11, $fa1, $fa2
	vld	$vr18, $a0, 8
	fadd.d	$fa0, $fa0, $ft11
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	vreplvei.d	$vr17, $vr17, 0
	vld	$vr21, $a1, 16
	vfmul.d	$vr17, $vr18, $vr17
	vrepli.b	$vr20, 0
	vfadd.d	$vr17, $vr17, $vr20
	vpackev.d	$vr19, $vr21, $vr15
	vreplvei.d	$vr16, $vr16, 0
	vfmul.d	$vr16, $vr19, $vr16
	vfadd.d	$vr16, $vr16, $vr20
	vld	$vr22, $a1, 40
	vori.b	$vr19, $vr21, 0
	vld	$vr27, $a1, 64
	vld	$vr29, $a1, 88
	vld	$vr26, $a1, 112
	vld	$vr31, $a1, 136
	vshuf4i.d	$vr19, $vr22, 9
	vori.b	$vr30, $vr22, 0
	vshuf4i.d	$vr30, $vr27, 9
	vori.b	$vr28, $vr27, 0
	vshuf4i.d	$vr28, $vr29, 9
	vori.b	$vr25, $vr29, 0
	vshuf4i.d	$vr25, $vr26, 9
	vori.b	$vr23, $vr26, 0
	vori.b	$vr24, $vr31, 0
	vshuf4i.d	$vr24, $vr26, 12
	vshuf4i.d	$vr26, $vr29, 12
	vshuf4i.d	$vr29, $vr27, 12
	vshuf4i.d	$vr27, $vr22, 12
	vshuf4i.d	$vr22, $vr21, 12
	vextrins.d	$vr21, $vr15, 16
	vfmul.d	$vr15, $vr18, $vr21
	vfadd.d	$vr0, $vr15, $vr20
	vshuf4i.d	$vr18, $vr0, 1
	vfmul.d	$vr15, $vr18, $vr21
	vfadd.d	$vr18, $vr15, $vr20
	vld	$vr20, $a0, 32
	vld	$vr15, $a1, 160
	vshuf4i.d	$vr23, $vr31, 9
	vreplvei.d	$vr14, $vr14, 0
	vfmul.d	$vr14, $vr20, $vr14
	vfadd.d	$vr17, $vr17, $vr14
	vori.b	$vr14, $vr15, 0
	vshuf4i.d	$vr14, $vr31, 12
	vreplvei.d	$vr13, $vr13, 0
	vfmul.d	$vr13, $vr19, $vr13
	vfadd.d	$vr13, $vr16, $vr13
	vfmul.d	$vr16, $vr20, $vr22
	vfadd.d	$vr0, $vr0, $vr16
	vshuf4i.d	$vr20, $vr0, 1
	vld	$vr16, $a0, 56
	vfmul.d	$vr19, $vr20, $vr22
	vfadd.d	$vr18, $vr18, $vr19
	vreplvei.d	$vr12, $vr12, 0
	vfmul.d	$vr12, $vr16, $vr12
	vfadd.d	$vr12, $vr17, $vr12
	vreplvei.d	$vr11, $vr11, 0
	vfmul.d	$vr11, $vr30, $vr11
	vfadd.d	$vr11, $vr13, $vr11
	vfmul.d	$vr13, $vr16, $vr27
	vfadd.d	$vr0, $vr0, $vr13
	vshuf4i.d	$vr16, $vr0, 1
	vld	$vr13, $a0, 80
	vfmul.d	$vr16, $vr16, $vr27
	vfadd.d	$vr16, $vr18, $vr16
	vreplvei.d	$vr10, $vr10, 0
	vfmul.d	$vr10, $vr13, $vr10
	vfadd.d	$vr10, $vr12, $vr10
	vreplvei.d	$vr9, $vr9, 0
	vfmul.d	$vr9, $vr28, $vr9
	vfadd.d	$vr9, $vr11, $vr9
	vfmul.d	$vr11, $vr13, $vr29
	vfadd.d	$vr0, $vr0, $vr11
	vshuf4i.d	$vr13, $vr0, 1
	vfmul.d	$vr11, $vr13, $vr29
	vld	$vr12, $a0, 104
	fld.d	$ft5, $a1, 184
	vfadd.d	$vr11, $vr16, $vr11
	vreplvei.d	$vr8, $vr8, 0
	vfmul.d	$vr8, $vr12, $vr8
	vfadd.d	$vr8, $vr10, $vr8
	vreplvei.d	$vr7, $vr7, 0
	vfmul.d	$vr7, $vr25, $vr7
	vfadd.d	$vr7, $vr9, $vr7
	vfmul.d	$vr9, $vr12, $vr26
	vfadd.d	$vr0, $vr0, $vr9
	vshuf4i.d	$vr12, $vr0, 1
	vld	$vr9, $a0, 128
	vfmul.d	$vr10, $vr12, $vr26
	vfadd.d	$vr10, $vr11, $vr10
	vreplvei.d	$vr6, $vr6, 0
	vfmul.d	$vr6, $vr9, $vr6
	vfadd.d	$vr6, $vr8, $vr6
	vreplvei.d	$vr5, $vr5, 0
	vfmul.d	$vr5, $vr23, $vr5
	vfadd.d	$vr5, $vr7, $vr5
	vfmul.d	$vr7, $vr9, $vr24
	vfadd.d	$vr0, $vr0, $vr7
	vshuf4i.d	$vr9, $vr0, 1
	vld	$vr7, $a0, 152
	vfmul.d	$vr8, $vr9, $vr24
	vfadd.d	$vr8, $vr10, $vr8
	vreplvei.d	$vr4, $vr4, 0
	vfmul.d	$vr4, $vr7, $vr4
	vfadd.d	$vr4, $vr6, $vr4
	vshuf4i.d	$vr31, $vr15, 9
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr3, $vr31, $vr3
	vfadd.d	$vr3, $vr5, $vr3
	vfmul.d	$vr5, $vr7, $vr14
	vfadd.d	$vr0, $vr0, $vr5
	vshuf4i.d	$vr7, $vr0, 1
	vld	$vr5, $a0, 176
	vfmul.d	$vr6, $vr7, $vr14
	vfadd.d	$vr6, $vr8, $vr6
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr2, $vr5, $vr2
	vfadd.d	$vr2, $vr4, $vr2
	vreplvei.d	$vr4, $vr15, 1
	vextrins.d	$vr4, $vr13, 16
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr4, $vr1
	vfadd.d	$vr1, $vr3, $vr1
	vextrins.d	$vr15, $vr13, 0
	vfmul.d	$vr3, $vr5, $vr15
	vfadd.d	$vr0, $vr0, $vr3
	vshuf4i.d	$vr5, $vr0, 1
	vfmul.d	$vr3, $vr5, $vr15
	vfadd.d	$vr3, $vr6, $vr3
	vreplvei.d	$vr4, $vr3, 0
	vreplvei.d	$vr5, $vr3, 1
	fmul.d	$fa4, $fa4, $fa5
	vreplvei.d	$vr5, $vr0, 0
	vreplvei.d	$vr6, $vr0, 1
	fmul.d	$fa5, $fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	vfmul.d	$vr3, $vr2, $vr3
	vshuf4i.d	$vr2, $vr0, 1
	vfmul.d	$vr0, $vr2, $vr0
	vfsub.d	$vr0, $vr3, $vr0
	fld.d	$fa2, $sp, 8                    # 8-byte Folded Reload
	fmul.d	$fa2, $fa2, $fa4
	vfmul.d	$vr0, $vr1, $vr0
	vreplvei.d	$vr1, $vr0, 0
	fsub.d	$fa1, $fa1, $fa2
	vreplvei.d	$vr0, $vr0, 1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	fld.d	$fs7, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end42:
	.size	_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_, .Lfunc_end42-_ZN6miniFE4Hex818gradients_and_detJIdEEvPKT_S4_RS2_
                                        # -- End function
	.section	.text._ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,"axG",@progbits,_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,comdat
	.weak	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_ # -- Begin function _ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.p2align	5
	.type	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_,@function
_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_: # @_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a0, .LBB43_34
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 22, -8
	.cfi_offset 23, -16
	.cfi_offset 24, -24
	.cfi_offset 25, -32
	.cfi_offset 26, -40
	.cfi_offset 27, -48
	.cfi_offset 28, -56
	.cfi_offset 29, -64
	.cfi_offset 30, -72
	ld.d	$a4, $a3, 16
	ld.d	$a5, $a3, 8
	ld.d	$a6, $a3, 32
	ld.d	$a7, $a3, 80
	ld.d	$a3, $a3, 104
	move	$t0, $zero
	move	$t1, $zero
	sub.d	$t2, $a4, $a5
	srai.d	$t2, $t2, 2
	b	.LBB43_3
	.p2align	4, , 16
.LBB43_2:                               # %cleanup
                                        #   in Loop: Header=BB43_3 Depth=1
	addi.d	$t1, $t1, 1
	add.w	$t0, $t0, $t3
	beq	$t1, $a0, .LBB43_33
.LBB43_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_7 Depth 2
                                        #     Child Loop BB43_16 Depth 2
                                        #       Child Loop BB43_18 Depth 3
                                        #     Child Loop BB43_26 Depth 2
                                        #       Child Loop BB43_28 Depth 3
	slli.d	$t3, $t1, 2
	ldx.w	$t4, $a1, $t3
	sub.w	$t3, $a0, $t1
	beq	$a4, $a5, .LBB43_9
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.w	$t5, $a5, 0
	sub.w	$t5, $t4, $t5
	bgeu	$t5, $t2, .LBB43_6
# %bb.5:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB43_3 Depth=1
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $a5, $t6
	beq	$t6, $t4, .LBB43_12
.LBB43_6:                               # %while.body.i.i.i.preheader
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t6, $t2
	move	$t5, $a5
	.p2align	4, , 16
.LBB43_7:                               # %while.body.i.i.i
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$t7, $t6, 1
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t5, $t8
	alsl.d	$fp, $t7, $t5, 2
	slt	$t8, $t8, $t4
	addi.d	$fp, $fp, 4
	nor	$s0, $t7, $zero
	add.d	$t6, $t6, $s0
	maskeqz	$fp, $fp, $t8
	masknez	$t5, $t5, $t8
	maskeqz	$t6, $t6, $t8
	masknez	$t7, $t7, $t8
	or	$t6, $t6, $t7
	or	$t5, $fp, $t5
	bgtz	$t6, .LBB43_7
# %bb.8:                                # %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i
                                        #   in Loop: Header=BB43_3 Depth=1
	bne	$a4, $t5, .LBB43_10
	b	.LBB43_2
	.p2align	4, , 16
.LBB43_9:                               #   in Loop: Header=BB43_3 Depth=1
	move	$t5, $a5
	beq	$a4, $t5, .LBB43_2
.LBB43_10:                              # %lor.rhs.i
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.w	$t6, $t5, 0
	bne	$t6, $t4, .LBB43_2
# %bb.11:                               # %if.end35.i
                                        #   in Loop: Header=BB43_3 Depth=1
	sub.d	$t4, $t5, $a5
	srai.d	$t5, $t4, 2
.LBB43_12:                              # %_ZN6miniFE9CSRMatrixIdiiE16get_row_pointersEiRmRPiRPd.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	alsl.d	$t4, $t5, $a6, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t6, $a6, $t5
	ld.w	$t7, $t4, 4
	beq	$t7, $t6, .LBB43_2
# %bb.13:                               # %if.end
                                        #   in Loop: Header=BB43_3 Depth=1
	alsl.d	$t4, $t6, $a7, 2
	alsl.d	$t5, $t6, $a3, 3
	slli.d	$t8, $t3, 32
	sub.w	$t6, $t7, $t6
	beqz	$t8, .LBB43_23
# %bb.14:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t7, $zero
	alsl.d	$t8, $t1, $a1, 2
	alsl.d	$fp, $t0, $a2, 3
	b	.LBB43_16
	.p2align	4, , 16
.LBB43_15:                              # %if.end.i
                                        #   in Loop: Header=BB43_16 Depth=2
	addi.d	$t7, $t7, 1
	beq	$t7, $t3, .LBB43_23
.LBB43_16:                              # %for.body.i
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_18 Depth 3
	alsl.d	$s0, $t7, $t8, 2
	blez	$t6, .LBB43_20
# %bb.17:                               # %while.body.lr.ph.i.i.i22
                                        #   in Loop: Header=BB43_16 Depth=2
	ld.w	$s2, $s0, 0
	move	$s1, $t4
	move	$s3, $t6
	.p2align	4, , 16
.LBB43_18:                              # %while.body.i.i.i23
                                        #   Parent Loop BB43_3 Depth=1
                                        #     Parent Loop BB43_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s4, $s3, 1
	slli.d	$s5, $s4, 2
	ldx.w	$s5, $s1, $s5
	alsl.d	$s6, $s4, $s1, 2
	slt	$s5, $s5, $s2
	addi.d	$s6, $s6, 4
	nor	$s7, $s4, $zero
	add.d	$s3, $s3, $s7
	maskeqz	$s3, $s3, $s5
	masknez	$s4, $s4, $s5
	or	$s3, $s3, $s4
	maskeqz	$s4, $s6, $s5
	masknez	$s1, $s1, $s5
	or	$s1, $s4, $s1
	bgtz	$s3, .LBB43_18
# %bb.19:                               # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i
                                        #   in Loop: Header=BB43_16 Depth=2
	sub.d	$s2, $s1, $t4
	srai.d	$s2, $s2, 2
	bge	$s2, $t6, .LBB43_15
	b	.LBB43_21
	.p2align	4, , 16
.LBB43_20:                              #   in Loop: Header=BB43_16 Depth=2
	move	$s1, $t4
	sub.d	$s2, $s1, $t4
	srai.d	$s2, $s2, 2
	bge	$s2, $t6, .LBB43_15
.LBB43_21:                              # %land.lhs.true.i20
                                        #   in Loop: Header=BB43_16 Depth=2
	ld.w	$s1, $s1, 0
	ld.w	$s0, $s0, 0
	bne	$s1, $s0, .LBB43_15
# %bb.22:                               # %if.then.i21
                                        #   in Loop: Header=BB43_16 Depth=2
	slli.d	$s0, $t7, 3
	fldx.d	$fa0, $fp, $s0
	slli.d	$s0, $s2, 3
	fldx.d	$fa1, $t5, $s0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t5, $s0
	b	.LBB43_15
	.p2align	4, , 16
.LBB43_23:                              # %_ZN6miniFE12sum_into_rowIidEEviPT_PT0_iPKS1_PKS3_.exit
                                        #   in Loop: Header=BB43_3 Depth=1
	beqz	$t1, .LBB43_2
# %bb.24:                               # %for.body11.lr.ph
                                        #   in Loop: Header=BB43_3 Depth=1
	move	$t7, $zero
	move	$t8, $t1
	b	.LBB43_26
	.p2align	4, , 16
.LBB43_25:                              # %if.end.i44
                                        #   in Loop: Header=BB43_26 Depth=2
	addi.d	$fp, $t7, 1
	nor	$t7, $t7, $zero
	add.d	$t7, $a0, $t7
	add.d	$t8, $t7, $t8
	move	$t7, $fp
	beq	$fp, $t1, .LBB43_2
.LBB43_26:                              # %for.body11
                                        #   Parent Loop BB43_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_28 Depth 3
	alsl.d	$fp, $t7, $a1, 2
	blez	$t6, .LBB43_30
# %bb.27:                               # %while.body.lr.ph.i.i.i53
                                        #   in Loop: Header=BB43_26 Depth=2
	ld.w	$s1, $fp, 0
	move	$s0, $t4
	move	$s2, $t6
	.p2align	4, , 16
.LBB43_28:                              # %while.body.i.i.i54
                                        #   Parent Loop BB43_3 Depth=1
                                        #     Parent Loop BB43_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	srli.d	$s3, $s2, 1
	slli.d	$s4, $s3, 2
	ldx.w	$s4, $s0, $s4
	alsl.d	$s5, $s3, $s0, 2
	slt	$s4, $s4, $s1
	addi.d	$s5, $s5, 4
	nor	$s6, $s3, $zero
	add.d	$s2, $s2, $s6
	maskeqz	$s2, $s2, $s4
	masknez	$s3, $s3, $s4
	or	$s2, $s2, $s3
	maskeqz	$s3, $s5, $s4
	masknez	$s0, $s0, $s4
	or	$s0, $s3, $s0
	bgtz	$s2, .LBB43_28
# %bb.29:                               # %_ZSt11lower_boundIPiiET_S1_S1_RKT0_.exit.i38
                                        #   in Loop: Header=BB43_26 Depth=2
	sub.d	$s1, $s0, $t4
	srai.d	$s1, $s1, 2
	addi.w	$t8, $t8, 0
	bge	$s1, $t6, .LBB43_25
	b	.LBB43_31
	.p2align	4, , 16
.LBB43_30:                              #   in Loop: Header=BB43_26 Depth=2
	move	$s0, $t4
	sub.d	$s1, $s0, $t4
	srai.d	$s1, $s1, 2
	addi.w	$t8, $t8, 0
	bge	$s1, $t6, .LBB43_25
.LBB43_31:                              # %land.lhs.true.i47
                                        #   in Loop: Header=BB43_26 Depth=2
	ld.w	$s0, $s0, 0
	ld.w	$fp, $fp, 0
	bne	$s0, $fp, .LBB43_25
# %bb.32:                               # %if.then.i49
                                        #   in Loop: Header=BB43_26 Depth=2
	slli.d	$fp, $t8, 3
	fldx.d	$fa0, $a2, $fp
	slli.d	$fp, $s1, 3
	fldx.d	$fa1, $t5, $fp
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $t5, $fp
	b	.LBB43_25
.LBB43_33:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB43_34:                              # %for.cond.cleanup
	ret
.Lfunc_end43:
	.size	_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_, .Lfunc_end43-_ZN6miniFE23sum_in_symm_elem_matrixINS_9CSRMatrixIdiiEEEEvmPKNT_17GlobalOrdinalTypeEPKNS3_10ScalarTypeERS3_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"One or more processors have 0 equations. Not currently supported. Exiting."
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"miniFE."
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"x"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"miniFE"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"2.0"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"Total Program Time"
	.size	.L.str.7, 19

	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"Global Run Parameters"
	.size	.L.str.8, 22

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"dimensions"
	.size	.L.str.9, 11

	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"load_imbalance"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"1 (yes)"
	.size	.L.str.14, 8

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"mv_overlap_comm_comp"
	.size	.L.str.15, 21

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"0 (no)"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.17:
	.asciz	"number of processors"
	.size	.L.str.17, 21

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"unknown"
	.size	.L.str.20, 8

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"kernel name"
	.size	.L.str.21, 12

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"kernel release"
	.size	.L.str.22, 15

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"processor"
	.size	.L.str.23, 10

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Build"
	.size	.L.str.24, 6

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"CXX"
	.size	.L.str.25, 4

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.28:
	.asciz	"using MPI"
	.size	.L.str.28, 10

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"-"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	", "
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.31:
	.asciz	"Run Date/Time"
	.size	.L.str.31, 14

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.32, 49

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.34:
	.asciz	"Matrix structure generation"
	.size	.L.str.34, 28

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"Mat-struc-gen Time"
	.size	.L.str.35, 19

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"FE assembly"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"FE assembly Time"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"Starting CG solver ... "
	.size	.L.str.38, 24

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Final Resid Norm: "
	.size	.L.str.39, 19

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"verifying solution at ~ (0.5, 0.5, 0.5) ..."
	.size	.L.str.41, 44

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.43:
	.asciz	"ScalarType"
	.size	.L.str.43, 11

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"GlobalOrdinalType"
	.size	.L.str.44, 18

	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"LocalOrdinalType"
	.size	.L.str.45, 17

	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"Iterations"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"Final Resid Norm"
	.size	.L.str.47, 17

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"WAXPY Time"
	.size	.L.str.48, 11

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"WAXPY Flops"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
	.p2align	3, 0x0
.L.str.50:
	.asciz	"WAXPY Mflops"
	.size	.L.str.50, 13

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"inf"
	.size	.L.str.51, 4

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.53:
	.asciz	"DOT Flops"
	.size	.L.str.53, 10

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"DOT Mflops"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"MATVEC Time"
	.size	.L.str.55, 12

	.type	.L.str.56,@object               # @.str.56
	.p2align	3, 0x0
.L.str.56:
	.asciz	"MATVEC Flops"
	.size	.L.str.56, 13

	.type	.L.str.57,@object               # @.str.57
	.p2align	3, 0x0
.L.str.57:
	.asciz	"MATVEC Mflops"
	.size	.L.str.57, 14

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"Total"
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.59:
	.asciz	"Total CG Time"
	.size	.L.str.59, 14

	.type	.L.str.60,@object               # @.str.60
	.p2align	3, 0x0
.L.str.60:
	.asciz	"Total CG Flops"
	.size	.L.str.60, 15

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"Total CG Mflops"
	.size	.L.str.61, 16

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"Time per iteration"
	.size	.L.str.62, 19

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"Rows-per-proc Load Imbalance"
	.size	.L.str.63, 29

	.type	.L.str.64,@object               # @.str.64
	.p2align	3, 0x0
.L.str.64:
	.asciz	"Largest (from avg, %)"
	.size	.L.str.64, 22

	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"Std Dev (%)"
	.size	.L.str.65, 12

	.type	.L.str.66,@object               # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"on the y==0 face (ix="
	.size	.L.str.66, 22

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	", iz="
	.size	.L.str.67, 6

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"), ERROR: found negative row ("
	.size	.L.str.68, 31

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	") for nodeID="
	.size	.L.str.69, 14

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"vector::reserve"
	.size	.L.str.70, 16

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"ERROR, failed to map id to row."
	.size	.L.str.72, 32

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"ERROR, id:"
	.size	.L.str.73, 11

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	", ids_to_rows.begin(): "
	.size	.L.str.74, 24

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"ERROR, negative offset in find_row_for_id for id="
	.size	.L.str.75, 50

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"One of A.rows.resize, A.row_offsets.resize, A.packed_cols.reserve or A.packed_coefs.reserve: nrows="
	.size	.L.str.76, 100

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	": "
	.size	.L.str.77, 3

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"ERROR in generate_matrix_structure, roffset != nrows."
	.size	.L.str.78, 54

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"proc "
	.size	.L.str.79, 6

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	" threw an exception in generate_matrix_structure, probably due to running out of memory."
	.size	.L.str.80, 89

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"vector::_M_default_append"
	.size	.L.str.81, 26

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"Warning, packed_cols.capacity ("
	.size	.L.str.82, 32

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	") != "
	.size	.L.str.83, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"packed_coefs.capacity ("
	.size	.L.str.84, 24

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	")"
	.size	.L.str.85, 2

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	") <  nnz ("
	.size	.L.str.86, 11

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"mesh->map_id_to_row produced col="
	.size	.L.str.87, 34

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	" from col_id="
	.size	.L.str.88, 14

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	", but global_nrows="
	.size	.L.str.89, 20

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	", max_row_in_map="
	.size	.L.str.90, 18

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	", proc="
	.size	.L.str.91, 8

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"get_elem_nodes_and_coords ERROR, negative elemID"
	.size	.L.str.92, 49

	.type	.L.str.93,@object               # @.str.93
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.93:
	.asciz	"Matrix attributes"
	.size	.L.str.93, 18

	.type	.L.str.94,@object               # @.str.94
	.p2align	3, 0x0
.L.str.94:
	.asciz	"Global Nrows"
	.size	.L.str.94, 13

	.type	.L.str.95,@object               # @.str.95
	.p2align	3, 0x0
.L.str.95:
	.asciz	"Global NNZ"
	.size	.L.str.95, 11

	.type	.L.str.96,@object               # @.str.96
	.p2align	3, 0x0
.L.str.96:
	.asciz	"Global Memory (GB)"
	.size	.L.str.96, 19

	.type	.L.str.97,@object               # @.str.97
	.p2align	3, 0x0
.L.str.97:
	.asciz	"Pll Memory Overhead (MB)"
	.size	.L.str.97, 25

	.type	.L.str.98,@object               # @.str.98
	.p2align	3, 0x0
.L.str.98:
	.asciz	"Rows per proc MIN"
	.size	.L.str.98, 18

	.type	.L.str.99,@object               # @.str.99
	.p2align	3, 0x0
.L.str.99:
	.asciz	"Rows per proc MAX"
	.size	.L.str.99, 18

	.type	.L.str.100,@object              # @.str.100
	.p2align	3, 0x0
.L.str.100:
	.asciz	"Rows per proc AVG"
	.size	.L.str.100, 18

	.type	.L.str.101,@object              # @.str.101
	.p2align	3, 0x0
.L.str.101:
	.asciz	"NNZ per proc MIN"
	.size	.L.str.101, 17

	.type	.L.str.102,@object              # @.str.102
	.p2align	3, 0x0
.L.str.102:
	.asciz	"NNZ per proc MAX"
	.size	.L.str.102, 17

	.type	.L.str.103,@object              # @.str.103
	.p2align	3, 0x0
.L.str.103:
	.asciz	"NNZ per proc AVG"
	.size	.L.str.103, 17

	.type	.L.str.104,@object              # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"miniFE::cg_solve ERROR, A.has_local_indices is false, needs to be true. This probably means "
	.size	.L.str.104, 93

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"miniFE::make_local_matrix(A) was not called prior to calling miniFE::cg_solve."
	.size	.L.str.105, 79

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Initial Residual = "
	.size	.L.str.106, 20

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Iteration = "
	.size	.L.str.107, 13

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"   Residual = "
	.size	.L.str.108, 15

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"miniFE::cg_solve ERROR, numerical breakdown!"
	.size	.L.str.109, 45

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"max absolute error is "
	.size	.L.str.110, 23

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	":"
	.size	.L.str.111, 2

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"   at position ("
	.size	.L.str.112, 17

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	","
	.size	.L.str.113, 2

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"), "
	.size	.L.str.114, 4

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"   computed solution: "
	.size	.L.str.115, 23

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	",  analytic solution: "
	.size	.L.str.116, 23

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"solution matches analytic solution to within "
	.size	.L.str.117, 46

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	" or better."
	.size	.L.str.118, 12

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"double"
	.size	.L.str.119, 7

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"int"
	.size	.L.str.120, 4

	.data
	.p2align	3, 0x0
.L_ZTISt9exception.DW.stub:
	.dword	_ZTISt9exception
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
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZSt4cerr
