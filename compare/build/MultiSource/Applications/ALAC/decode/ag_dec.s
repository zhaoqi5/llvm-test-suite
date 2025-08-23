	.file	"ag_dec.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function set_standard_ag_params
.LCPI0_0:
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	40                              # 0x28
	.word	14                              # 0xe
	.text
	.globl	set_standard_ag_params
	.p2align	5
	.type	set_standard_ag_params,@function
set_standard_ag_params:                 # @set_standard_ag_params
# %bb.0:                                # %entry
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI0_0)
	vst	$vr0, $a0, 0
	lu12i.w	$a3, 3
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 472
	st.d	$a3, $a0, 16
	st.w	$a1, $a0, 24
	st.w	$a2, $a0, 28
	ori	$a1, $zero, 255
	st.w	$a1, $a0, 32
	ret
.Lfunc_end0:
	.size	set_standard_ag_params, .Lfunc_end0-set_standard_ag_params
                                        # -- End function
	.globl	set_ag_params                   # -- Begin function set_ag_params
	.p2align	5
	.type	set_ag_params,@function
set_ag_params:                          # @set_ag_params
# %bb.0:                                # %entry
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 8
	st.w	$a3, $a0, 12
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $a3
	nor	$a1, $a1, $zero
	st.w	$a1, $a0, 16
	ori	$a1, $zero, 512
	sub.d	$a1, $a1, $a2
	st.w	$a1, $a0, 20
	st.w	$a4, $a0, 24
	st.w	$a5, $a0, 28
	st.w	$a6, $a0, 32
	ret
.Lfunc_end1:
	.size	set_ag_params, .Lfunc_end1-set_ag_params
                                        # -- End function
	.globl	dyn_decomp                      # -- Begin function dyn_decomp
	.p2align	5
	.type	dyn_decomp,@function
dyn_decomp:                             # @dyn_decomp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a1
	addi.w	$a1, $zero, -50
	beqz	$s0, .LBB2_126
# %bb.1:                                # %entry
	move	$s3, $a2
	beqz	$a2, .LBB2_126
# %bb.2:                                # %entry
	beqz	$a5, .LBB2_126
# %bb.3:                                # %if.end
	move	$s2, $a3
	ld.w	$t6, $a0, 8
	ld.w	$t5, $a0, 12
	ld.w	$t0, $a0, 16
	st.w	$zero, $a5, 0
	ld.w	$fp, $s0, 16
	beqz	$a3, .LBB2_123
# %bb.4:                                # %while.body.lr.ph
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a2, $s0, 20
	move	$a3, $zero
	move	$a1, $zero
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$t1, $s0, 0
	slli.w	$t2, $a2, 3
	ld.w	$a2, $a0, 4
	ori	$t3, $zero, 32
	sub.d	$a0, $t3, $a4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a4, -32
	addi.w	$t7, $zero, -1
	sltui	$a0, $a0, 1
	move	$a5, $a4
	move	$a4, $t7
	lu32i.d	$a4, 0
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	sll.d	$a4, $a4, $a5
	nor	$a4, $a4, $zero
	maskeqz	$a5, $t7, $a0
	masknez	$a0, $a4, $a0
	or	$a0, $a5, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -50
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.w	$t4, $zero, -1537
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a0, 262143
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 131071
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 65535
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 32767
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 16383
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 8191
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 4095
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 1023
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 511
	ori	$a0, $a0, 2559
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$t8, $a0, 4095
	ori	$s5, $zero, 3
	ori	$s6, $zero, 1
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $fp
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	st.d	$t7, $sp, 144                   # 8-byte Folded Spill
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %for.end
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a2, $zero
	sltu	$a3, $s1, $t8
.LBB2_6:                                # %if.end48
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s3, $a0
	bgeu	$a1, $s2, .LBB2_124
.LBB2_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$s7, $t2, .LBB2_122
# %bb.8:                                # %if.end7
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 23
	bltu	$t4, $a2, .LBB2_30
# %bb.9:                                # %if.end.8.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 22
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.10:                               # %if.end.9.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 21
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.11:                               # %if.end.10.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 20
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.12:                               # %if.end.11.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 19
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.13:                               # %if.end.12.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 18
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.14:                               # %if.end.13.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 17
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.15:                               # %if.end.14.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 16
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.16:                               # %if.end.15.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 15
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.17:                               # %if.end.16.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 14
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.18:                               # %if.end.17.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 13
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.19:                               # %if.end.18.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 12
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	bltu	$a4, $a2, .LBB2_30
# %bb.20:                               # %if.end.19.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a4, $a2, 31, 9
	ori	$a0, $zero, 11
	ori	$a5, $zero, 2044
	bltu	$a5, $a4, .LBB2_30
# %bb.21:                               # %if.end.20.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 10
	ori	$a5, $zero, 1020
	bltu	$a5, $a4, .LBB2_30
# %bb.22:                               # %if.end.21.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 9
	ori	$a5, $zero, 508
	bltu	$a5, $a4, .LBB2_30
# %bb.23:                               # %if.end.22.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 8
	ori	$a5, $zero, 252
	bltu	$a5, $a4, .LBB2_30
# %bb.24:                               # %if.end.23.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 7
	ori	$a5, $zero, 124
	bltu	$a5, $a4, .LBB2_30
# %bb.25:                               # %if.end.24.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 6
	ori	$a5, $zero, 60
	bltu	$a5, $a4, .LBB2_30
# %bb.26:                               # %if.end.25.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 5
	ori	$a5, $zero, 28
	bltu	$a5, $a4, .LBB2_30
# %bb.27:                               # %if.end.26.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 4
	ori	$a5, $zero, 12
	bltu	$a5, $a4, .LBB2_30
# %bb.28:                               # %if.end.27.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a0, $zero, 3
	ori	$a5, $zero, 4
	bltu	$a5, $a4, .LBB2_30
# %bb.29:                               # %if.end.28.i
                                        #   in Loop: Header=BB2_7 Depth=1
	sltui	$a0, $a2, 512
	ori	$a4, $zero, 2
	sub.d	$a0, $a4, $a0
	.p2align	4, , 16
.LBB2_30:                               # %lead.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a4, $s7, 31, 3
	ldx.w	$a4, $t1, $a4
	revb.2w	$a4, $a4
	andi	$a5, $s7, 7
	sll.w	$a5, $a4, $a5
	bge	$t7, $a5, .LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a4, $zero
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_32:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 30
	ori	$a4, $zero, 1
	bltu	$a6, $s5, .LBB2_42
# %bb.33:                               # %if.end.1.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 29
	ori	$a4, $zero, 2
	ori	$a7, $zero, 7
	bltu	$a6, $a7, .LBB2_42
# %bb.34:                               # %if.end.2.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 28
	ori	$a4, $zero, 3
	ori	$a7, $zero, 15
	bltu	$a6, $a7, .LBB2_42
# %bb.35:                               # %if.end.3.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 27
	ori	$a4, $zero, 4
	ori	$a7, $zero, 31
	bltu	$a6, $a7, .LBB2_42
# %bb.36:                               # %if.end.4.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 26
	ori	$a4, $zero, 5
	ori	$a7, $zero, 63
	bltu	$a6, $a7, .LBB2_42
# %bb.37:                               # %if.end.5.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 25
	ori	$a4, $zero, 6
	ori	$a7, $zero, 127
	bltu	$a6, $a7, .LBB2_42
# %bb.38:                               # %if.end.6.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 24
	ori	$a4, $zero, 7
	ori	$a7, $zero, 255
	bltu	$a6, $a7, .LBB2_42
# %bb.39:                               # %if.end.7.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a5, 31, 23
	ori	$a4, $zero, 8
	ori	$a7, $zero, 511
	bltu	$a6, $a7, .LBB2_42
# %bb.40:                               # %if.end.8.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$a0, $s7, 9
	bstrpick.d	$a4, $a0, 62, 60
	add.w	$a7, $a0, $a4
	bstrpick.d	$a4, $a7, 34, 3
	ldx.w	$a5, $t1, $a4
	andi	$a6, $a0, 7
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.w	$a4, $a6, $a4
	revb.2w	$a5, $a5
	ori	$fp, $zero, 33
	blt	$a4, $fp, .LBB2_89
# %bb.41:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	srai.d	$a7, $a7, 3
	addi.d	$a7, $a7, 4
	bstrpick.d	$a7, $a7, 31, 0
	ldx.bu	$a7, $t1, $a7
	sll.w	$a5, $a5, $a6
	ori	$a6, $zero, 40
	sub.d	$a4, $a6, $a4
	srl.w	$a4, $a7, $a4
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	srl.w	$a5, $a5, $a6
	or	$a4, $a4, $a5
	b	.LBB2_90
	.p2align	4, , 16
.LBB2_42:                               # %if.else.i
                                        #   in Loop: Header=BB2_7 Depth=1
	sltu	$a6, $a0, $t5
	masknez	$a7, $t5, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	add.d	$a6, $a4, $s7
	addi.w	$s7, $a6, 1
	beq	$a0, $s6, .LBB2_46
# %bb.43:                               # %if.then8.i
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a7, $a4, 1
	sll.w	$a5, $a5, $a7
	sub.d	$a7, $t3, $a0
	srl.w	$a5, $a5, $a7
	sll.w	$a7, $a4, $a0
	sub.w	$a4, $a7, $a4
	ori	$a7, $zero, 2
	bltu	$a5, $a7, .LBB2_45
# %bb.44:                               # %if.then15.i
                                        #   in Loop: Header=BB2_7 Depth=1
	add.w	$s7, $s7, $a0
	add.d	$a0, $a4, $a5
	addi.w	$a4, $a0, -1
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_45:                               #   in Loop: Header=BB2_7 Depth=1
	add.w	$s7, $a6, $a0
.LBB2_46:                               # %dyn_get_32bit.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	add.d	$a3, $a4, $a3
	andi	$a0, $a3, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	addi.d	$a5, $a3, 1
	bstrpick.d	$a5, $a5, 31, 1
	mul.d	$a5, $a5, $a0
	addi.d	$a0, $s3, 4
	st.w	$a5, $s3, 0
	addi.w	$a1, $a1, 1
	mul.d	$a3, $a3, $t6
	mul.d	$a5, $a2, $t6
	bstrpick.d	$a5, $a5, 31, 9
	sub.d	$a2, $a2, $a5
	add.w	$a2, $a2, $a3
	bstrpick.d	$a3, $a4, 31, 16
	sltu	$a3, $zero, $a3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t8, $a3
	or	$a2, $a3, $a2
	move	$a3, $zero
	bgeu	$a1, $s2, .LBB2_6
# %bb.47:                               # %dyn_get_32bit.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a4, $a2, 29, 7
	slli.w	$a4, $a4, 7
	bnez	$a4, .LBB2_6
# %bb.48:                               # %if.then27
                                        #   in Loop: Header=BB2_7 Depth=1
	bltz	$a2, .LBB2_80
# %bb.49:                               # %if.end.i53
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 30
	bnez	$a3, .LBB2_81
# %bb.50:                               # %if.end.1.i55
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 29
	bnez	$a3, .LBB2_82
# %bb.51:                               # %if.end.2.i57
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 28
	bnez	$a3, .LBB2_83
# %bb.52:                               # %if.end.3.i59
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 27
	bnez	$a3, .LBB2_84
# %bb.53:                               # %if.end.4.i61
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 26
	bnez	$a3, .LBB2_85
# %bb.54:                               # %if.end.5.i63
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 25
	bnez	$a3, .LBB2_86
# %bb.55:                               # %if.end.6.i65
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 24
	bnez	$a3, .LBB2_87
# %bb.56:                               # %if.end.7.i67
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 23
	bnez	$a3, .LBB2_88
# %bb.57:                               # %if.end.8.i69
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 22
	bnez	$a3, .LBB2_91
# %bb.58:                               # %if.end.9.i71
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 21
	bnez	$a3, .LBB2_92
# %bb.59:                               # %if.end.10.i73
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 20
	bnez	$a3, .LBB2_93
# %bb.60:                               # %if.end.11.i75
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 19
	bnez	$a3, .LBB2_94
# %bb.61:                               # %if.end.12.i77
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 18
	bnez	$a3, .LBB2_95
# %bb.62:                               # %if.end.13.i79
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 17
	bnez	$a3, .LBB2_96
# %bb.63:                               # %if.end.14.i81
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$s8, $s7
	move	$s4, $s3
	move	$s1, $s2
	move	$s0, $t8
	move	$a7, $t6
	move	$a6, $t5
	move	$a5, $t4
	move	$a4, $t2
	bstrpick.d	$a3, $a2, 31, 16
	bnez	$a3, .LBB2_97
# %bb.64:                               # %if.end.15.i83
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 15
	bnez	$a3, .LBB2_98
# %bb.65:                               # %if.end.16.i85
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 14
	bnez	$a3, .LBB2_99
# %bb.66:                               # %if.end.17.i87
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 13
	bnez	$a3, .LBB2_100
# %bb.67:                               # %if.end.18.i89
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a3, $a2, 31, 12
	bnez	$a3, .LBB2_101
# %bb.68:                               # %if.end.19.i91
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2047
	bltu	$a3, $a2, .LBB2_102
# %bb.69:                               # %if.end.20.i93
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1023
	bltu	$a3, $a2, .LBB2_103
# %bb.70:                               # %if.end.21.i95
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 511
	bltu	$a3, $a2, .LBB2_104
# %bb.71:                               # %if.end.22.i97
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $t7
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	move	$t2, $a4
	ori	$t3, $zero, 32
	move	$t4, $a5
	move	$t5, $a6
	move	$t6, $a7
	move	$t8, $s0
	move	$s2, $s1
	move	$s3, $s4
	ori	$s5, $zero, 3
	ori	$fp, $zero, 255
	ori	$s6, $zero, 1
	move	$s7, $s8
	bltu	$fp, $a2, .LBB2_106
# %bb.72:                               # %if.end.23.i99
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 127
	bltu	$a3, $a2, .LBB2_121
# %bb.73:                               # %if.end.24.i101
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 1
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	move	$t2, $a4
	ori	$t3, $zero, 32
	move	$t4, $a5
	move	$t5, $a6
	move	$t6, $a7
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	move	$t8, $s0
	move	$s2, $s1
	move	$s3, $s4
	ori	$s5, $zero, 3
	ori	$a4, $zero, 63
	ori	$s6, $zero, 1
	move	$s7, $s8
	bltu	$a4, $a2, .LBB2_106
# %bb.74:                               # %if.end.25.i103
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 2
	ori	$a4, $zero, 31
	bltu	$a4, $a2, .LBB2_106
# %bb.75:                               # %if.end.26.i105
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 15
	bltu	$a4, $a2, .LBB2_106
# %bb.76:                               # %if.end.27.i107
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 4
	ori	$a4, $zero, 7
	bltu	$a4, $a2, .LBB2_106
# %bb.77:                               # %if.end.28.i109
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 5
	bltu	$s5, $a2, .LBB2_106
# %bb.78:                               # %if.end.29.i111
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a3, $zero, 6
	bltu	$s6, $a2, .LBB2_106
# %bb.79:                               # %if.end.30.i
                                        #   in Loop: Header=BB2_7 Depth=1
	sltui	$a3, $a2, 1
	addi.d	$a3, $a3, 7
	b	.LBB2_106
.LBB2_80:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -24
	b	.LBB2_106
.LBB2_81:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -23
	b	.LBB2_106
.LBB2_82:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -22
	b	.LBB2_106
.LBB2_83:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -21
	b	.LBB2_106
.LBB2_84:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -20
	b	.LBB2_106
.LBB2_85:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -19
	b	.LBB2_106
.LBB2_86:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -18
	b	.LBB2_106
.LBB2_87:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -17
	b	.LBB2_106
.LBB2_88:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -16
	b	.LBB2_106
.LBB2_89:                               # %if.else.i.i
                                        #   in Loop: Header=BB2_7 Depth=1
	sub.d	$a4, $t3, $a4
	srl.w	$a4, $a5, $a4
.LBB2_90:                               # %getstreambits.exit.i
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	and	$a4, $a4, $a5
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.w	$s7, $a0, $a5
	b	.LBB2_46
.LBB2_91:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -15
	b	.LBB2_106
.LBB2_92:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -14
	b	.LBB2_106
.LBB2_93:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -13
	b	.LBB2_106
.LBB2_94:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -12
	b	.LBB2_106
.LBB2_95:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -11
	b	.LBB2_106
.LBB2_96:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -10
	b	.LBB2_106
.LBB2_97:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -9
	b	.LBB2_105
.LBB2_98:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -8
	b	.LBB2_105
.LBB2_99:                               #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -7
	b	.LBB2_105
.LBB2_100:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -6
	b	.LBB2_105
.LBB2_101:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -5
	b	.LBB2_105
.LBB2_102:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -4
	b	.LBB2_105
.LBB2_103:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -3
	b	.LBB2_105
.LBB2_104:                              #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a3, $zero, -2
.LBB2_105:                              # %lead.exit112
                                        #   in Loop: Header=BB2_7 Depth=1
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	move	$t2, $a4
	ori	$t3, $zero, 32
	move	$t4, $a5
	move	$t5, $a6
	move	$t6, $a7
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	move	$t8, $s0
	move	$s2, $s1
	move	$s3, $s4
	ori	$s5, $zero, 3
	ori	$s6, $zero, 1
	move	$s7, $s8
	.p2align	4, , 16
.LBB2_106:                              # %lead.exit112
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a4, $s7, 31, 3
	ldx.w	$a4, $t1, $a4
	revb.2w	$a4, $a4
	andi	$a5, $s7, 7
	sll.w	$a4, $a4, $a5
	bge	$t7, $a4, .LBB2_108
# %bb.107:                              #   in Loop: Header=BB2_7 Depth=1
	move	$a5, $zero
	b	.LBB2_117
.LBB2_108:                              # %if.end.i.i141
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 30
	ori	$a5, $zero, 1
	bltu	$a6, $s5, .LBB2_117
# %bb.109:                              # %if.end.1.i.i143
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 29
	ori	$a5, $zero, 2
	ori	$a7, $zero, 7
	bltu	$a6, $a7, .LBB2_117
# %bb.110:                              # %if.end.2.i.i145
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 28
	ori	$a5, $zero, 3
	ori	$a7, $zero, 15
	bltu	$a6, $a7, .LBB2_117
# %bb.111:                              # %if.end.3.i.i147
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 27
	ori	$a5, $zero, 4
	ori	$a7, $zero, 31
	bltu	$a6, $a7, .LBB2_117
# %bb.112:                              # %if.end.4.i.i149
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 26
	ori	$a5, $zero, 5
	ori	$a7, $zero, 63
	bltu	$a6, $a7, .LBB2_117
# %bb.113:                              # %if.end.5.i.i151
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 25
	ori	$a5, $zero, 6
	ori	$a7, $zero, 127
	bltu	$a6, $a7, .LBB2_117
# %bb.114:                              # %if.end.6.i.i153
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 24
	ori	$a5, $zero, 7
	ori	$a7, $zero, 255
	bltu	$a6, $a7, .LBB2_117
# %bb.115:                              # %if.end.7.i.i155
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a6, $a4, 31, 23
	ori	$a5, $zero, 8
	ori	$a7, $zero, 511
	bltu	$a6, $a7, .LBB2_117
# %bb.116:                              # %if.end.8.i.i157
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$s4, $a4, 22, 7
	addi.w	$s7, $s7, 25
	b	.LBB2_118
	.p2align	4, , 16
.LBB2_117:                              # %if.else.i132
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.d	$a2, $a2, 16
	bstrpick.d	$a2, $a2, 31, 6
	add.d	$a2, $a3, $a2
	sll.w	$a3, $t7, $a2
	andn	$a3, $t0, $a3
	addi.d	$a6, $a5, 1
	sll.w	$a4, $a4, $a6
	sub.d	$a6, $t3, $a2
	srl.w	$a4, $a4, $a6
	mul.d	$a3, $a5, $a3
	add.d	$a6, $a3, $a4
	addi.w	$a6, $a6, -1
	sltu	$a4, $s6, $a4
	maskeqz	$a6, $a6, $a4
	masknez	$a3, $a3, $a4
	or	$s4, $a6, $a3
	add.d	$a2, $a2, $s7
	add.d	$a2, $a2, $a5
	add.w	$s7, $a2, $a4
.LBB2_118:                              # %dyn_get.exit
                                        #   in Loop: Header=BB2_7 Depth=1
	add.w	$s8, $s4, $a1
	bltu	$s2, $s8, .LBB2_122
# %bb.119:                              # %for.cond.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	addi.w	$s1, $s4, 0
	beqz	$s1, .LBB2_5
# %bb.120:                              # %for.body.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a1, $s4, 31, 0
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	move	$s0, $t2
	move	$s6, $t4
	move	$s5, $t5
	move	$fp, $s7
	move	$s7, $t6
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	move	$s3, $s2
	move	$s2, $t8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t8, $s2
	move	$s2, $s3
	ld.d	$t7, $sp, 144                   # 8-byte Folded Reload
	move	$t6, $s7
	move	$s7, $fp
	move	$t5, $s5
	ori	$s5, $zero, 3
	move	$t4, $s6
	ori	$s6, $zero, 1
	ori	$t3, $zero, 32
	move	$t2, $s0
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a0, $s4, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a0, $a0, 8
	move	$a1, $s8
	b	.LBB2_5
.LBB2_121:                              #   in Loop: Header=BB2_7 Depth=1
	move	$a3, $zero
	b	.LBB2_105
.LBB2_122:
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB2_125
.LBB2_123:
	move	$s1, $zero
	move	$a0, $fp
	move	$s7, $fp
	b	.LBB2_125
.LBB2_124:
	move	$s1, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
.LBB2_125:                              # %Exit
	sub.w	$a1, $s7, $a0
	st.w	$a1, $a5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(BitBufferAdvance)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
	sltu	$a0, $a1, $a0
	masknez	$a1, $s1, $a0
	addi.w	$a2, $zero, -50
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB2_126:                              # %cleanup
	move	$a0, $a1
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end2:
	.size	dyn_decomp, .Lfunc_end2-dyn_decomp
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
