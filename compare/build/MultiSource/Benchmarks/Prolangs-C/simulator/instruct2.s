	.file	"instruct2.c"
	.text
	.globl	MOD                             # -- Begin function MOD
	.p2align	5
	.type	MOD,@function
MOD:                                    # @MOD
# %bb.0:                                # %entry
	mod.w	$a0, $a0, $a1
	ret
.Lfunc_end0:
	.size	MOD, .Lfunc_end0-MOD
                                        # -- End function
	.globl	ADDR_P                          # -- Begin function ADDR_P
	.p2align	5
	.type	ADDR_P,@function
ADDR_P:                                 # @ADDR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a4, $a0, .LBB1_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB1_3
# %bb.2:
	move	$a1, $zero
	b	.LBB1_14
.LBB1_3:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s1, $a0, %got_pc_lo12(REGISTER)
	move	$s0, $zero
	slli.d	$a0, $a4, 2
	ldx.w	$a2, $s1, $a0
	slli.d	$a0, $a1, 2
	ldx.w	$a3, $s1, $a0
	lu12i.w	$a0, 2047
	ori	$a5, $a0, 4095
	alsl.d	$a0, $a1, $s1, 2
	move	$a6, $a3
	blt	$a5, $a2, .LBB1_6
# %bb.4:                                # %if.else
	blt	$a5, $a3, .LBB1_6
# %bb.5:                                # %if.then15
	add.w	$a6, $a3, $a2
	st.w	$a6, $a0, 0
	slt	$s0, $a5, $a6
.LBB1_6:                                # %if.end27
	lu12i.w	$a5, 2048
	slt	$a7, $a3, $a5
	slt	$t0, $a2, $a5
	alsl.d	$a4, $a4, $s1, 2
	beq	$t0, $a7, .LBB1_8
# %bb.7:                                # %if.end66.sink.split
	ld.w	$a7, $a4, 0
	add.w	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 62, 39
	add.d	$a7, $a6, $a7
	lu12i.w	$t0, -4096
	lu32i.d	$t0, 0
	and	$a7, $a7, $t0
	sub.d	$a6, $a6, $a7
	st.w	$a6, $a0, 0
.LBB1_8:                                # %if.end66
	blt	$a2, $a5, .LBB1_11
# %bb.9:                                # %if.end66
	blt	$a3, $a5, .LBB1_11
# %bb.10:                               # %if.then70
	ld.w	$a2, $a4, 0
	add.w	$a2, $a2, $a6
	bstrpick.d	$a3, $a2, 62, 39
	add.d	$a3, $a2, $a3
	lu12i.w	$a4, -4096
	lu32i.d	$a4, 0
	and	$a3, $a3, $a4
	sub.w	$a2, $a2, $a3
	st.w	$a2, $a0, 0
	slt	$a0, $a2, $a5
	masknez	$a2, $s0, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s0, $a0, $a2
.LBB1_11:                               # %if.end92
	beqz	$fp, .LBB1_13
# %bb.12:                               # %if.then93
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB1_13:                               # %if.end96
	ori	$a1, $zero, 4
	beqz	$s0, .LBB1_15
.LBB1_14:                               # %if.end100.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %if.end100
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	ADDR_P, .Lfunc_end1-ADDR_P
                                        # -- End function
	.globl	CLEAR_P                         # -- Begin function CLEAR_P
	.p2align	5
	.type	CLEAR_P,@function
CLEAR_P:                                # @CLEAR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	ori	$a0, $zero, 10
	bgeu	$a1, $a0, .LBB2_3
# %bb.1:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a1, 2
	stx.w	$zero, $s0, $a0
	beqz	$fp, .LBB2_4
# %bb.2:                                # %if.then2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB2_4
.LBB2_3:                                # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end5
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	CLEAR_P, .Lfunc_end2-CLEAR_P
                                        # -- End function
	.globl	COMPR_P                         # -- Begin function COMPR_P
	.p2align	5
	.type	COMPR_P,@function
COMPR_P:                                # @COMPR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ld.w	$a2, $sp, 8
	lu12i.w	$a3, 2047
	ori	$a3, $a3, 4095
	slt	$a3, $a3, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a1, $a1, $a2
	addu16i.d	$a2, $a0, -256
	masknez	$a0, $a0, $a3
	maskeqz	$a2, $a2, $a3
	or	$a0, $a2, $a0
	addi.w	$s0, $a0, 0
	addu16i.d	$a0, $a1, -256
	masknez	$a1, $a1, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 0
	bne	$s0, $s1, .LBB3_3
# %bb.1:                                # %if.then17
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_6
# %bb.2:                                # %if.then18
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %if.end21
	bge	$s0, $s1, .LBB3_6
# %bb.4:                                # %if.then23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_6
# %bb.5:                                # %if.then25
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %if.end28
	bge	$s1, $s0, .LBB3_9
# %bb.7:                                # %if.then30
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_9
# %bb.8:                                # %if.then32
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB3_9:                                # %if.end35
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	COMPR_P, .Lfunc_end3-COMPR_P
                                        # -- End function
	.globl	DIVR_P                          # -- Begin function DIVR_P
	.p2align	5
	.type	DIVR_P,@function
DIVR_P:                                 # @DIVR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a4, $sp, 12
	ld.w	$a0, $sp, 8
	ori	$a1, $zero, 10
	bltu	$a4, $a1, .LBB4_3
# %bb.1:                                # %entry
	bltu	$a0, $a1, .LBB4_3
# %bb.2:                                # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB4_14
	b	.LBB4_15
.LBB4_3:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a5, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a1, $a4, 2
	ldx.w	$a6, $a5, $a1
	beqz	$a6, .LBB4_9
# %bb.4:                                # %if.else9
	lu12i.w	$a2, 2047
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $a5, $a1
	ori	$a7, $a2, 4095
	slt	$a2, $a7, $a6
	alsl.d	$a0, $a0, $a5, 2
	slt	$a3, $a7, $a1
	blt	$a7, $a6, .LBB4_7
# %bb.5:                                # %if.else9
	blt	$a7, $a1, .LBB4_7
# %bb.6:                                # %if.then23
	div.w	$a1, $a1, $a6
	st.w	$a1, $a0, 0
.LBB4_7:                                # %if.end30
	alsl.d	$a4, $a4, $a5, 2
	xori	$a5, $a3, 1
	or	$a6, $a2, $a5
	lu12i.w	$a5, 4096
	bnez	$a6, .LBB4_11
# %bb.8:                                # %if.end43.thread
	ld.w	$a6, $a4, 0
	sub.w	$a1, $a5, $a1
	b	.LBB4_17
.LBB4_9:                                # %if.then6
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB4_15
# %bb.10:                               # %if.end73.thread
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB4_14
.LBB4_11:                               # %if.end43
	xori	$a6, $a2, 1
	or	$a6, $a3, $a6
	beqz	$a6, .LBB4_16
# %bb.12:                               # %if.end57
	and	$a2, $a2, $a3
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB4_18
.LBB4_13:                               # %if.end73
	beqz	$fp, .LBB4_15
.LBB4_14:                               # %if.then75
	ld.w	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$a1, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %if.end78
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_16:                               # %if.then47
	ld.w	$a6, $a4, 0
	sub.w	$a6, $a5, $a6
.LBB4_17:                               # %if.end57.sink.split
	div.w	$a1, $a1, $a6
	sub.d	$a1, $a5, $a1
	st.w	$a1, $a0, 0
	and	$a2, $a2, $a3
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB4_13
.LBB4_18:                               # %if.then61
	ld.w	$a2, $a4, 0
	sub.w	$a1, $a5, $a1
	sub.w	$a2, $a5, $a2
	div.w	$a1, $a1, $a2
	st.w	$a1, $a0, 0
	bnez	$fp, .LBB4_14
	b	.LBB4_15
.Lfunc_end4:
	.size	DIVR_P, .Lfunc_end4-DIVR_P
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MULR_P
.LCPI5_0:
	.dword	0x4160000000000000              # double 8388608
.LCPI5_1:
	.dword	0x3e70000000000000              # double 5.9604644775390625E-8
	.text
	.globl	MULR_P
	.p2align	5
	.type	MULR_P,@function
MULR_P:                                 # @MULR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a6, $a0, .LBB5_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB5_3
# %bb.2:
	move	$a1, $zero
	b	.LBB5_20
.LBB5_3:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	move	$a5, $zero
	slli.d	$a0, $a6, 2
	ldx.w	$a7, $s0, $a0
	lu12i.w	$a0, 2047
	slli.d	$a2, $a1, 2
	ldx.w	$a4, $s0, $a2
	ori	$t0, $a0, 4095
	slt	$a2, $t0, $a7
	alsl.d	$a0, $a1, $s0, 2
	slt	$a3, $t0, $a4
	blt	$t0, $a7, .LBB5_7
# %bb.4:                                # %if.else
	blt	$t0, $a4, .LBB5_7
# %bb.5:                                # %if.then15
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	pcalau12i	$a5, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a5, %pc_lo12(.LCPI5_0)
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa2, $fa0
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$a5, $zero, 1
	bcnez	$fcc0, .LBB5_7
# %bb.6:                                # %if.else25
	move	$a5, $zero
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	st.w	$a4, $a0, 0
.LBB5_7:                                # %if.end30
	xori	$a7, $a3, 1
	or	$a7, $a2, $a7
	alsl.d	$a6, $a6, $s0, 2
	bnez	$a7, .LBB5_10
# %bb.8:                                # %if.then36
	lu12i.w	$a7, 4096
	sub.d	$a7, $a7, $a4
	movgr2fr.w	$fa0, $a7
	ld.w	$a7, $a6, 0
	ffint.d.w	$fa0, $fa0
	pcalau12i	$t0, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $t0, %pc_lo12(.LCPI5_1)
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	slli.d	$a7, $a7, 24
	pcalau12i	$t0, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $t0, %pc_lo12(.LCPI5_0)
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cult.d	$fcc0, $fa0, $fa1
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB5_12
.LBB5_9:                                # %if.end88
	and	$a2, $a2, $a3
	ori	$s1, $zero, 1
	beq	$a2, $s1, .LBB5_14
	b	.LBB5_16
.LBB5_10:                               # %if.end58
	xori	$a7, $a2, 1
	or	$a7, $a3, $a7
	bnez	$a7, .LBB5_13
# %bb.11:                               # %if.then64
	ld.w	$a7, $a6, 0
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	lu12i.w	$t0, 4096
	sub.d	$a7, $t0, $a7
	pcalau12i	$t0, %pc_hi20(.LCPI5_1)
	fld.d	$fa1, $t0, %pc_lo12(.LCPI5_1)
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	slli.d	$a7, $a7, 24
	pcalau12i	$t0, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $t0, %pc_lo12(.LCPI5_0)
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	ori	$a7, $zero, 1
	bcnez	$fcc0, .LBB5_9
.LBB5_12:                               # %if.end88.sink.split
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	lu12i.w	$a7, 4096
	sub.w	$a4, $a7, $a4
	st.w	$a4, $a0, 0
.LBB5_13:                               # %if.end88
	move	$a7, $a5
	and	$a2, $a2, $a3
	ori	$s1, $zero, 1
	bne	$a2, $s1, .LBB5_16
.LBB5_14:                               # %if.then94
	lu12i.w	$a2, 4096
	ld.w	$a3, $a6, 0
	sub.d	$a4, $a2, $a4
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	sub.d	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	fld.d	$fa1, $a3, %pc_lo12(.LCPI5_0)
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cle.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_17
# %bb.15:                               # %if.else108
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.w	$a2, $a0, 0
.LBB5_16:                               # %if.end113
	move	$s1, $a7
.LBB5_17:                               # %if.end113
	beqz	$fp, .LBB5_19
# %bb.18:                               # %if.then114
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB5_19:                               # %if.end117
	ori	$a1, $zero, 4
	beqz	$s1, .LBB5_21
.LBB5_20:                               # %if.end121.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %if.end121
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	MULR_P, .Lfunc_end5-MULR_P
                                        # -- End function
	.globl	RMO_P                           # -- Begin function RMO_P
	.p2align	5
	.type	RMO_P,@function
RMO_P:                                  # @RMO_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ld.w	$a1, $sp, 0
	ori	$a2, $zero, 10
	bltu	$a0, $a2, .LBB6_3
# %bb.1:                                # %entry
	bltu	$a1, $a2, .LBB6_3
# %bb.2:                                # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	b	.LBB6_5
.LBB6_3:                                # %if.else
	pcalau12i	$a2, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a2, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB6_5
# %bb.4:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB6_5:                                # %if.end10
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	RMO_P, .Lfunc_end6-RMO_P
                                        # -- End function
	.globl	SHIFTL_P                        # -- Begin function SHIFTL_P
	.p2align	5
	.type	SHIFTL_P,@function
SHIFTL_P:                               # @SHIFTL_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 204
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB7_3
# %bb.1:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 104
	addi.d	$s1, $sp, 104
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 200
	addi.w	$a3, $a1, 1
	lu12i.w	$a0, 174762
	ori	$a2, $a0, 2731
	mul.d	$a0, $a3, $a2
	srli.d	$a4, $a0, 63
	srai.d	$a0, $a0, 34
	add.d	$a4, $a0, $a4
	ori	$a0, $zero, 24
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 2
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 3
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 4
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 8
	st.w	$a4, $sp, 12
	st.w	$a5, $sp, 16
	st.w	$a6, $sp, 20
	addi.w	$a3, $a1, 5
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 6
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 7
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 8
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 24
	st.w	$a4, $sp, 28
	st.w	$a5, $sp, 32
	st.w	$a6, $sp, 36
	addi.w	$a3, $a1, 9
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 10
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 11
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 12
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 40
	st.w	$a4, $sp, 44
	st.w	$a5, $sp, 48
	st.w	$a6, $sp, 52
	addi.w	$a3, $a1, 13
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	addi.w	$a4, $a1, 14
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	addi.w	$a5, $a1, 15
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	addi.w	$a6, $a1, 16
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 56
	st.w	$a4, $sp, 60
	st.w	$a5, $sp, 64
	st.w	$a6, $sp, 68
	addi.w	$a3, $a1, 17
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	addi.w	$a4, $a1, 18
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	addi.w	$a5, $a1, 19
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	addi.w	$a6, $a1, 20
	mul.d	$a7, $a6, $a2
	srli.d	$t0, $a7, 63
	srai.d	$a7, $a7, 34
	add.d	$a7, $a7, $t0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	mul.d	$a7, $a7, $a0
	sub.w	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a6, $s1
	st.w	$a3, $sp, 72
	st.w	$a4, $sp, 76
	st.w	$a5, $sp, 80
	st.w	$a6, $sp, 84
	addi.w	$a3, $a1, 21
	mul.d	$a4, $a3, $a2
	srli.d	$a5, $a4, 63
	srai.d	$a4, $a4, 34
	add.d	$a4, $a4, $a5
	mul.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a4
	addi.w	$a4, $a1, 22
	mul.d	$a5, $a4, $a2
	srli.d	$a6, $a5, 63
	srai.d	$a5, $a5, 34
	add.d	$a5, $a5, $a6
	mul.d	$a5, $a5, $a0
	sub.w	$a4, $a4, $a5
	addi.w	$a5, $a1, 23
	mul.d	$a6, $a5, $a2
	srli.d	$a7, $a6, 63
	srai.d	$a6, $a6, 34
	add.d	$a6, $a6, $a7
	mul.d	$a6, $a6, $a0
	sub.w	$a5, $a5, $a6
	addi.w	$a1, $a1, 24
	mul.d	$a2, $a1, $a2
	srli.d	$a6, $a2, 63
	srai.d	$a2, $a2, 34
	add.d	$a2, $a2, $a6
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a3, $s1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a4, $s1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a5, $s1
	mul.d	$a0, $a2, $a0
	sub.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a0, $s1
	st.w	$a3, $sp, 88
	st.w	$a4, $sp, 92
	st.w	$a5, $sp, 96
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 204
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB7_4
# %bb.2:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB7_4
.LBB7_3:                                # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %if.end16
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end7:
	.size	SHIFTL_P, .Lfunc_end7-SHIFTL_P
                                        # -- End function
	.globl	SHIFTR_P                        # -- Begin function SHIFTR_P
	.p2align	5
	.type	SHIFTR_P,@function
SHIFTR_P:                               # @SHIFTR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 204
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB8_28
# %bb.1:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 104
	addi.d	$s1, $sp, 104
	pcaddu18i	$ra, %call36(BYTES_TO_BITS)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 200
	ld.w	$a0, $sp, 104
	addi.w	$a3, $zero, -1
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_30
# %bb.2:                                # %for.inc
	st.w	$a2, $sp, 8
	move	$a2, $a0
	blez	$a1, .LBB8_31
.LBB8_3:                                # %for.inc.1
	ori	$a3, $zero, 1
	st.w	$a2, $sp, 12
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_32
.LBB8_4:                                # %for.inc.2
	ori	$a3, $zero, 2
	st.w	$a2, $sp, 16
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_33
.LBB8_5:                                # %for.inc.3
	ori	$a3, $zero, 3
	st.w	$a2, $sp, 20
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_34
.LBB8_6:                                # %for.inc.4
	ori	$a3, $zero, 4
	st.w	$a2, $sp, 24
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_35
.LBB8_7:                                # %for.inc.5
	ori	$a3, $zero, 5
	st.w	$a2, $sp, 28
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_36
.LBB8_8:                                # %for.inc.6
	ori	$a3, $zero, 6
	st.w	$a2, $sp, 32
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_37
.LBB8_9:                                # %for.inc.7
	ori	$a3, $zero, 7
	st.w	$a2, $sp, 36
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_38
.LBB8_10:                               # %for.inc.8
	ori	$a3, $zero, 8
	st.w	$a2, $sp, 40
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_39
.LBB8_11:                               # %for.inc.9
	ori	$a3, $zero, 9
	st.w	$a2, $sp, 44
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_40
.LBB8_12:                               # %for.inc.10
	ori	$a3, $zero, 10
	st.w	$a2, $sp, 48
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_41
.LBB8_13:                               # %for.inc.11
	ori	$a3, $zero, 11
	st.w	$a2, $sp, 52
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_42
.LBB8_14:                               # %for.inc.12
	ori	$a3, $zero, 12
	st.w	$a2, $sp, 56
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_43
.LBB8_15:                               # %for.inc.13
	ori	$a3, $zero, 13
	st.w	$a2, $sp, 60
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_44
.LBB8_16:                               # %for.inc.14
	ori	$a3, $zero, 14
	st.w	$a2, $sp, 64
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_45
.LBB8_17:                               # %for.inc.15
	ori	$a3, $zero, 15
	st.w	$a2, $sp, 68
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_46
.LBB8_18:                               # %for.inc.16
	ori	$a3, $zero, 16
	st.w	$a2, $sp, 72
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_47
.LBB8_19:                               # %for.inc.17
	ori	$a3, $zero, 17
	st.w	$a2, $sp, 76
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_48
.LBB8_20:                               # %for.inc.18
	ori	$a3, $zero, 18
	st.w	$a2, $sp, 80
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_49
.LBB8_21:                               # %for.inc.19
	ori	$a3, $zero, 19
	st.w	$a2, $sp, 84
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_50
.LBB8_22:                               # %for.inc.20
	ori	$a3, $zero, 20
	st.w	$a2, $sp, 88
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_51
.LBB8_23:                               # %for.inc.21
	ori	$a3, $zero, 21
	st.w	$a2, $sp, 92
	move	$a2, $a0
	bge	$a3, $a1, .LBB8_52
.LBB8_24:                               # %for.inc.22
	ori	$a3, $zero, 22
	st.w	$a2, $sp, 96
	blt	$a3, $a1, .LBB8_26
.LBB8_25:                               # %if.else8.23
	sub.w	$a0, $a3, $a1
	slli.d	$a0, $a0, 2
	addi.d	$a1, $sp, 104
	ldx.w	$a0, $a0, $a1
.LBB8_26:                               # %for.inc.23
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(BITS_TO_BYTE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 204
	slli.d	$a2, $a1, 2
	stx.w	$a0, $s0, $a2
	beqz	$fp, .LBB8_29
# %bb.27:                               # %if.then18
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 204
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB8_29
.LBB8_28:                               # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB8_29:                               # %if.end22
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB8_30:                               # %if.else8
	nor	$a2, $a1, $zero
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a2, $s1
	st.w	$a2, $sp, 8
	move	$a2, $a0
	bgtz	$a1, .LBB8_3
.LBB8_31:                               # %if.else8.1
	sub.w	$a2, $zero, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 1
	st.w	$a2, $sp, 12
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_4
.LBB8_32:                               # %if.else8.2
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 2
	st.w	$a2, $sp, 16
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_5
.LBB8_33:                               # %if.else8.3
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 3
	st.w	$a2, $sp, 20
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_6
.LBB8_34:                               # %if.else8.4
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 4
	st.w	$a2, $sp, 24
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_7
.LBB8_35:                               # %if.else8.5
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 5
	st.w	$a2, $sp, 28
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_8
.LBB8_36:                               # %if.else8.6
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 6
	st.w	$a2, $sp, 32
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_9
.LBB8_37:                               # %if.else8.7
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 7
	st.w	$a2, $sp, 36
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_10
.LBB8_38:                               # %if.else8.8
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 8
	st.w	$a2, $sp, 40
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_11
.LBB8_39:                               # %if.else8.9
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 9
	st.w	$a2, $sp, 44
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_12
.LBB8_40:                               # %if.else8.10
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 10
	st.w	$a2, $sp, 48
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_13
.LBB8_41:                               # %if.else8.11
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 11
	st.w	$a2, $sp, 52
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_14
.LBB8_42:                               # %if.else8.12
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 12
	st.w	$a2, $sp, 56
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_15
.LBB8_43:                               # %if.else8.13
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 13
	st.w	$a2, $sp, 60
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_16
.LBB8_44:                               # %if.else8.14
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 14
	st.w	$a2, $sp, 64
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_17
.LBB8_45:                               # %if.else8.15
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 15
	st.w	$a2, $sp, 68
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_18
.LBB8_46:                               # %if.else8.16
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 16
	st.w	$a2, $sp, 72
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_19
.LBB8_47:                               # %if.else8.17
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 17
	st.w	$a2, $sp, 76
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_20
.LBB8_48:                               # %if.else8.18
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 18
	st.w	$a2, $sp, 80
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_21
.LBB8_49:                               # %if.else8.19
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 19
	st.w	$a2, $sp, 84
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_22
.LBB8_50:                               # %if.else8.20
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 20
	st.w	$a2, $sp, 88
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_23
.LBB8_51:                               # %if.else8.21
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 21
	st.w	$a2, $sp, 92
	move	$a2, $a0
	blt	$a3, $a1, .LBB8_24
.LBB8_52:                               # %if.else8.22
	sub.w	$a2, $a3, $a1
	slli.d	$a2, $a2, 2
	addi.d	$a3, $sp, 104
	ldx.w	$a2, $a2, $a3
	ori	$a3, $zero, 22
	st.w	$a2, $sp, 96
	bge	$a3, $a1, .LBB8_25
	b	.LBB8_26
.Lfunc_end8:
	.size	SHIFTR_P, .Lfunc_end8-SHIFTR_P
                                        # -- End function
	.globl	SUBR_P                          # -- Begin function SUBR_P
	.p2align	5
	.type	SUBR_P,@function
SUBR_P:                                 # @SUBR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a6, $sp, 12
	ld.w	$a1, $sp, 8
	ori	$a0, $zero, 10
	bltu	$a6, $a0, .LBB9_3
# %bb.1:                                # %entry
	ori	$a0, $zero, 9
	bgeu	$a0, $a1, .LBB9_3
# %bb.2:
	move	$a1, $zero
	b	.LBB9_15
.LBB9_3:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a0, %got_pc_lo12(REGISTER)
	slli.d	$a0, $a6, 2
	ldx.w	$t0, $s0, $a0
	lu12i.w	$a0, 2047
	slli.d	$a2, $a1, 2
	ldx.w	$a5, $s0, $a2
	ori	$a7, $a0, 4095
	slt	$a3, $a7, $t0
	alsl.d	$a0, $a1, $s0, 2
	slt	$a4, $a7, $a5
	lu12i.w	$a2, -4096
	blt	$a7, $t0, .LBB9_6
# %bb.4:                                # %if.else
	blt	$a7, $a5, .LBB9_6
# %bb.5:                                # %if.then15
	sub.w	$a5, $a5, $t0
	addu16i.d	$a5, $a5, 256
	addi.w	$t0, $a5, 0
	bstrpick.d	$t0, $t0, 62, 39
	add.d	$t0, $a5, $t0
	move	$t1, $a2
	lu32i.d	$t1, 0
	and	$t0, $t0, $t1
	sub.w	$a5, $a5, $t0
	st.w	$a5, $a0, 0
.LBB9_6:                                # %if.end29
	xori	$t0, $a4, 1
	or	$t0, $a3, $t0
	alsl.d	$a6, $a6, $s0, 2
	bnez	$t0, .LBB9_8
# %bb.7:                                # %if.end56.thread
	ld.w	$a7, $a6, 0
	sub.w	$a5, $a5, $a7
	addu16i.d	$a5, $a5, 256
	addi.w	$a7, $a5, 0
	bstrpick.d	$a7, $a7, 62, 39
	add.d	$a7, $a5, $a7
	move	$t0, $a2
	lu32i.d	$t0, 0
	and	$a7, $a7, $t0
	sub.w	$a5, $a5, $a7
	st.w	$a5, $a0, 0
	lu12i.w	$a7, 2048
	slt	$s1, $a5, $a7
	and	$a3, $a3, $a4
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB9_11
	b	.LBB9_12
.LBB9_8:                                # %if.end56
	xori	$t0, $a3, 1
	or	$t0, $a4, $t0
	bnez	$t0, .LBB9_10
# %bb.9:                                # %if.then60
	ld.w	$t0, $a6, 0
	sub.d	$a5, $a5, $t0
	addu16i.d	$t0, $a5, 256
	addi.w	$a5, $t0, 0
	st.w	$t0, $a0, 0
	slt	$s1, $a7, $a5
	and	$a3, $a3, $a4
	ori	$a4, $zero, 1
	beq	$a3, $a4, .LBB9_11
	b	.LBB9_12
.LBB9_10:
	move	$s1, $zero
	and	$a3, $a3, $a4
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB9_12
.LBB9_11:                               # %if.then78
	ld.w	$a3, $a6, 0
	sub.d	$a3, $a5, $a3
	addu16i.d	$a3, $a3, 256
	addi.w	$a4, $a3, 0
	bstrpick.d	$a4, $a4, 62, 39
	add.d	$a4, $a3, $a4
	lu32i.d	$a2, 0
	and	$a2, $a4, $a2
	sub.d	$a2, $a3, $a2
	st.w	$a2, $a0, 0
.LBB9_12:                               # %if.end96
	beqz	$fp, .LBB9_14
# %bb.13:                               # %if.then97
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(PRINT_REG_NAME)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %if.end100
	ori	$a1, $zero, 4
	beqz	$s1, .LBB9_16
.LBB9_15:                               # %if.end104.sink.split
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %if.end104
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	SUBR_P, .Lfunc_end9-SUBR_P
                                        # -- End function
	.globl	SVC_P                           # -- Begin function SVC_P
	.p2align	5
	.type	SVC_P,@function
SVC_P:                                  # @SVC_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 12
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ori	$a0, $zero, 5
	bltu	$a1, $a0, .LBB10_3
# %bb.1:                                # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %if.end4
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB10_3:                               # %if.else
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB10_2
# %bb.4:                                # %if.then2
	ld.w	$a1, $sp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	SVC_P, .Lfunc_end10-SVC_P
                                        # -- End function
	.globl	TIXR_P                          # -- Begin function TIXR_P
	.p2align	5
	.type	TIXR_P,@function
TIXR_P:                                 # @TIXR_P
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(FORMAT2)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ori	$a1, $zero, 10
	bgeu	$a0, $a1, .LBB11_4
# %bb.1:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(REGISTER)
	ld.d	$s0, $a1, %got_pc_lo12(REGISTER)
	ld.w	$a1, $s0, 4
	addi.w	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 62, 39
	add.d	$a2, $a1, $a2
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	sub.w	$a1, $a1, $a2
	lu12i.w	$a2, 2048
	st.w	$a1, $s0, 4
	bne	$a1, $a2, .LBB11_6
# %bb.2:                                # %if.then3
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_5
# %bb.3:                                # %if.then4
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.LBB11_4:                               # %if.then
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SIGNAL_INTERUPT)
	jirl	$ra, $ra, 0
.LBB11_5:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB11_6:                               # %if.end6
	lu12i.w	$a2, 2047
	ori	$a2, $a2, 4095
	slt	$a3, $a2, $a1
	addu16i.d	$a4, $a1, -256
	addi.w	$a4, $a4, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$s1, $a3, $a1
	slt	$a1, $a2, $a0
	addu16i.d	$a2, $a0, -256
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	addi.w	$s2, $a0, 0
	bne	$s1, $s2, .LBB11_9
# %bb.7:                                # %if.then17
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_12
# %bb.8:                                # %if.then19
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB11_9:                               # %if.end21
	bge	$s1, $s2, .LBB11_12
# %bb.10:                               # %if.then23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_12
# %bb.11:                               # %if.then25
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
.LBB11_12:                              # %if.end27
	bge	$s2, $s1, .LBB11_5
# %bb.13:                               # %if.then29
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(SET_CC)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_5
# %bb.14:                               # %if.then31
	ld.w	$a1, $s0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(PRINT_CONSTANT)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.Lfunc_end11:
	.size	TIXR_P, .Lfunc_end11-TIXR_P
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Set "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.space	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" to "
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".\n"
	.size	.L.str.3, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Generated SVC interupt %d.\n"
	.size	.L.str.8, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Set X to "
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" and set CC to =.\n"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" and set CC to <.\n"
	.size	.L.str.12, 19

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" and set CC to >.\n"
	.size	.L.str.13, 19

	.type	TYPE_OUT_MODE,@object           # @TYPE_OUT_MODE
	.comm	TYPE_OUT_MODE,6,1
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Set CC to =."
	.size	.Lstr, 13

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Set CC to <."
	.size	.Lstr.1, 13

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Set CC to >."
	.size	.Lstr.2, 13

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Attempted division by zero."
	.size	.Lstr.3, 28

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"X has overflowed."
	.size	.Lstr.4, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
