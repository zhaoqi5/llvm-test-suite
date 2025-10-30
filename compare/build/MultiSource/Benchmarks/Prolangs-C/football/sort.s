	.file	"sort.c"
	.text
	.globl	absolute_standing_lt            # -- Begin function absolute_standing_lt
	.p2align	5
	.type	absolute_standing_lt,@function
absolute_standing_lt:                   # @absolute_standing_lt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$a6, $zero, 92
	mul.d	$a3, $a1, $a6
	add.d	$a5, $a0, $a3
	ldx.w	$a4, $a0, $a3
	ld.w	$a3, $a5, 4
	ld.w	$a7, $a5, 8
	add.d	$a5, $a3, $a4
	add.w	$a5, $a5, $a7
	movgr2fr.d	$fa6, $zero
	movgr2fr.w	$fa1, $a4
	movgr2fr.w	$fa2, $a7
	movgr2fr.w	$fa0, $a5
	fmov.d	$fa7, $fa6
	beqz	$a5, .LBB0_2
# %bb.1:                                # %cond.false
	ffint.d.w	$fa3, $fa1
	ffint.d.w	$fa4, $fa2
	vldi	$vr5, -928
	fmadd.d	$fa3, $fa4, $fa5, $fa3
	ffint.d.w	$fa4, $fa0
	fdiv.d	$fa7, $fa3, $fa4
.LBB0_2:                                # %cond.end
	mul.d	$a6, $a2, $a6
	add.d	$t0, $a0, $a6
	ldx.w	$a7, $a0, $a6
	ld.w	$a6, $t0, 4
	ld.w	$t0, $t0, 8
	add.d	$a0, $a6, $a7
	add.w	$a0, $a0, $t0
	movgr2fr.w	$fa4, $a7
	movgr2fr.w	$fa5, $t0
	movgr2fr.w	$fa3, $a0
	beqz	$a0, .LBB0_4
# %bb.3:                                # %cond.false39
	ffint.d.w	$fa6, $fa4
	ffint.d.w	$ft0, $fa5
	vldi	$vr9, -928
	fmadd.d	$fa6, $ft0, $ft1, $fa6
	ffint.d.w	$ft0, $fa3
	fdiv.d	$fa6, $fa6, $ft0
.LBB0_4:                                # %cond.end61
	fcmp.ceq.d	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB0_11
# %bb.5:                                # %if.then
	movgr2fr.d	$fa6, $zero
	fmov.d	$fa7, $fa6
	beqz	$a5, .LBB0_7
# %bb.6:                                # %cond.false79
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	vldi	$vr7, -928
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa7, $fa1, $fa0
.LBB0_7:                                # %cond.end101
	beqz	$a0, .LBB0_9
# %bb.8:                                # %cond.false117
	ffint.d.w	$fa0, $fa4
	ffint.d.w	$fa1, $fa5
	vldi	$vr2, -928
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	ffint.d.w	$fa1, $fa3
	fdiv.d	$fa6, $fa0, $fa1
.LBB0_9:                                # %cond.end139
	fcmp.clt.d	$fcc0, $fa6, $fa7
	movcf2gr	$a0, $fcc0
.LBB0_10:                               # %return
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_11:                               # %if.end
	or	$a0, $a6, $a3
	beqz	$a0, .LBB0_17
# %bb.12:                               # %if.end162
	or	$a0, $a7, $a4
	beqz	$a0, .LBB0_18
# %bb.13:                               # %if.end183
	move	$fp, $a1
	move	$a0, $a1
	move	$s1, $a2
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB0_19
# %bb.14:                               # %if.end189
	move	$a0, $fp
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB0_20
# %bb.15:                               # %if.end196
	slli.d	$a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(divisions)
	ld.d	$a1, $a1, %got_pc_lo12(divisions)
	ldx.w	$a0, $a1, $a0
	slli.d	$a2, $s0, 3
	ldx.w	$a1, $a1, $a2
	bne	$a0, $a1, .LBB0_21
# %bb.16:                               # %if.end214
	slt	$a0, $fp, $s0
	b	.LBB0_10
.LBB0_17:                               # %if.then153
	slt	$a0, $a7, $a4
	b	.LBB0_10
.LBB0_18:                               # %if.then174
	slt	$a0, $a3, $a6
	b	.LBB0_10
.LBB0_19:                               # %if.then187
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(a_champ)
	jr	$t8
.LBB0_20:                               # %if.then194
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(a_wild_card)
	jr	$t8
.LBB0_21:                               # %if.then205
	slt	$a0, $a0, $a1
	b	.LBB0_10
.Lfunc_end0:
	.size	absolute_standing_lt, .Lfunc_end0-absolute_standing_lt
                                        # -- End function
	.globl	standing_lt                     # -- Begin function standing_lt
	.p2align	5
	.type	standing_lt,@function
standing_lt:                            # @standing_lt
# %bb.0:                                # %entry
	pcalau12i	$a3, %got_pc_hi20(divisions)
	ld.d	$a3, $a3, %got_pc_lo12(divisions)
	slli.d	$a4, $a1, 3
	ldx.w	$a4, $a3, $a4
	slli.d	$a5, $a2, 3
	ldx.w	$a5, $a3, $a5
	bne	$a4, $a5, .LBB1_3
# %bb.1:                                # %if.end
	alsl.d	$a4, $a1, $a3, 3
	alsl.d	$a5, $a2, $a3, 3
	ld.w	$a3, $a4, 4
	ld.w	$a4, $a5, 4
	bne	$a3, $a4, .LBB1_4
# %bb.2:                                # %if.end29
	pcaddu18i	$t8, %call36(absolute_standing_lt)
	jr	$t8
.LBB1_3:                                # %if.then
	slt	$a0, $a4, $a5
	ret
.LBB1_4:                                # %if.then20
	slt	$a0, $a3, $a4
	ret
.Lfunc_end1:
	.size	standing_lt, .Lfunc_end1-standing_lt
                                        # -- End function
	.globl	conf_standing_lt                # -- Begin function conf_standing_lt
	.p2align	5
	.type	conf_standing_lt,@function
conf_standing_lt:                       # @conf_standing_lt
# %bb.0:                                # %entry
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a4, $a4, %got_pc_lo12(divisions)
	ldx.w	$a3, $a4, $a3
	slli.d	$a5, $a2, 3
	ldx.w	$a4, $a4, $a5
	bne	$a3, $a4, .LBB2_2
# %bb.1:                                # %if.end
	pcaddu18i	$t8, %call36(absolute_standing_lt)
	jr	$t8
.LBB2_2:                                # %if.then
	slt	$a0, $a3, $a4
	ret
.Lfunc_end2:
	.size	conf_standing_lt, .Lfunc_end2-conf_standing_lt
                                        # -- End function
	.globl	defence_lt                      # -- Begin function defence_lt
	.p2align	5
	.type	defence_lt,@function
defence_lt:                             # @defence_lt
# %bb.0:                                # %entry
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a4, $a4, %got_pc_lo12(divisions)
	ldx.w	$a3, $a4, $a3
	slli.d	$a5, $a2, 3
	ldx.w	$a4, $a4, $a5
	bne	$a3, $a4, .LBB3_11
# %bb.1:                                # %if.end
	ori	$a5, $zero, 92
	mul.d	$a4, $a1, $a5
	add.d	$a3, $a0, $a4
	ldx.w	$a4, $a0, $a4
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a4, $a6, $a4
	add.w	$a4, $a4, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a4
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB3_3
# %bb.2:                                # %cond.false
	ld.w	$a6, $a3, 16
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB3_3:                                # %cond.end
	mul.d	$a6, $a2, $a5
	add.d	$a5, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB3_5
# %bb.4:                                # %cond.false50
	ld.w	$a6, $a5, 16
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB3_5:                                # %cond.end68
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB3_12
# %bb.6:                                # %if.then72
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB3_8
# %bb.7:                                # %cond.false87
	ld.w	$a1, $a3, 16
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB3_8:                                # %cond.end105
	beqz	$a0, .LBB3_10
# %bb.9:                                # %cond.false121
	ld.w	$a0, $a5, 16
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB3_10:                               # %cond.end139
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$a0, $fcc0
	ret
.LBB3_11:                               # %if.then
	slt	$a0, $a3, $a4
	ret
.LBB3_12:                               # %if.end143
	slt	$a0, $a1, $a2
	ret
.Lfunc_end3:
	.size	defence_lt, .Lfunc_end3-defence_lt
                                        # -- End function
	.globl	defence_nfl_lt                  # -- Begin function defence_nfl_lt
	.p2align	5
	.type	defence_nfl_lt,@function
defence_nfl_lt:                         # @defence_nfl_lt
# %bb.0:                                # %entry
	ori	$a5, $zero, 92
	mul.d	$a4, $a1, $a5
	add.d	$a3, $a0, $a4
	ldx.w	$a4, $a0, $a4
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a4, $a6, $a4
	add.w	$a4, $a4, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a4
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB4_2
# %bb.1:                                # %cond.false
	ld.w	$a6, $a3, 16
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB4_2:                                # %cond.end
	mul.d	$a6, $a2, $a5
	add.d	$a5, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB4_4
# %bb.3:                                # %cond.false34
	ld.w	$a6, $a5, 16
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB4_4:                                # %cond.end52
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB4_10
# %bb.5:                                # %if.then
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB4_7
# %bb.6:                                # %cond.false70
	ld.w	$a1, $a3, 16
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB4_7:                                # %cond.end88
	beqz	$a0, .LBB4_9
# %bb.8:                                # %cond.false104
	ld.w	$a0, $a5, 16
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB4_9:                                # %cond.end122
	fcmp.clt.d	$fcc0, $fa3, $fa2
	movcf2gr	$a0, $fcc0
	ret
.LBB4_10:                               # %if.end
	slt	$a0, $a1, $a2
	ret
.Lfunc_end4:
	.size	defence_nfl_lt, .Lfunc_end4-defence_nfl_lt
                                        # -- End function
	.globl	offence_lt                      # -- Begin function offence_lt
	.p2align	5
	.type	offence_lt,@function
offence_lt:                             # @offence_lt
# %bb.0:                                # %entry
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a4, $a4, %got_pc_lo12(divisions)
	ldx.w	$a3, $a4, $a3
	slli.d	$a5, $a2, 3
	ldx.w	$a4, $a4, $a5
	bne	$a3, $a4, .LBB5_11
# %bb.1:                                # %if.end
	ori	$a5, $zero, 92
	mul.d	$a4, $a1, $a5
	add.d	$a3, $a0, $a4
	ldx.w	$a4, $a0, $a4
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a4, $a6, $a4
	add.w	$a4, $a4, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a4
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB5_3
# %bb.2:                                # %cond.false
	ld.w	$a6, $a3, 12
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB5_3:                                # %cond.end
	mul.d	$a6, $a2, $a5
	add.d	$a5, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB5_5
# %bb.4:                                # %cond.false50
	ld.w	$a6, $a5, 12
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB5_5:                                # %cond.end68
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB5_12
# %bb.6:                                # %if.then72
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB5_8
# %bb.7:                                # %cond.false87
	ld.w	$a1, $a3, 12
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB5_8:                                # %cond.end105
	beqz	$a0, .LBB5_10
# %bb.9:                                # %cond.false121
	ld.w	$a0, $a5, 12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB5_10:                               # %cond.end139
	fcmp.clt.d	$fcc0, $fa2, $fa3
	movcf2gr	$a0, $fcc0
	ret
.LBB5_11:                               # %if.then
	slt	$a0, $a3, $a4
	ret
.LBB5_12:                               # %if.end143
	slt	$a0, $a1, $a2
	ret
.Lfunc_end5:
	.size	offence_lt, .Lfunc_end5-offence_lt
                                        # -- End function
	.globl	offence_nfl_lt                  # -- Begin function offence_nfl_lt
	.p2align	5
	.type	offence_nfl_lt,@function
offence_nfl_lt:                         # @offence_nfl_lt
# %bb.0:                                # %entry
	ori	$a5, $zero, 92
	mul.d	$a4, $a1, $a5
	add.d	$a3, $a0, $a4
	ldx.w	$a4, $a0, $a4
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a4, $a6, $a4
	add.w	$a4, $a4, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a4
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB6_2
# %bb.1:                                # %cond.false
	ld.w	$a6, $a3, 12
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB6_2:                                # %cond.end
	mul.d	$a6, $a2, $a5
	add.d	$a5, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB6_4
# %bb.3:                                # %cond.false34
	ld.w	$a6, $a5, 12
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB6_4:                                # %cond.end52
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB6_10
# %bb.5:                                # %if.then
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a4, .LBB6_7
# %bb.6:                                # %cond.false70
	ld.w	$a1, $a3, 12
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB6_7:                                # %cond.end88
	beqz	$a0, .LBB6_9
# %bb.8:                                # %cond.false104
	ld.w	$a0, $a5, 12
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB6_9:                                # %cond.end122
	fcmp.clt.d	$fcc0, $fa2, $fa3
	movcf2gr	$a0, $fcc0
	ret
.LBB6_10:                               # %if.end
	slt	$a0, $a1, $a2
	ret
.Lfunc_end6:
	.size	offence_nfl_lt, .Lfunc_end6-offence_nfl_lt
                                        # -- End function
	.globl	net_nfl_lt                      # -- Begin function net_nfl_lt
	.p2align	5
	.type	net_nfl_lt,@function
net_nfl_lt:                             # @net_nfl_lt
# %bb.0:                                # %entry
	ori	$a4, $zero, 92
	mul.d	$a5, $a1, $a4
	add.d	$a3, $a0, $a5
	ldx.w	$a5, $a0, $a5
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a5, $a6, $a5
	add.w	$a5, $a5, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a5
	fmov.d	$fa3, $fa2
	beqz	$a5, .LBB7_2
# %bb.1:                                # %cond.false
	ld.w	$a6, $a3, 12
	ld.w	$a7, $a3, 16
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB7_2:                                # %cond.end
	mul.d	$a6, $a2, $a4
	add.d	$a4, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a4, 4
	ld.w	$a7, $a4, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB7_4
# %bb.3:                                # %cond.false36
	ld.w	$a6, $a4, 12
	ld.w	$a7, $a4, 16
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB7_4:                                # %cond.end58
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB7_10
# %bb.5:                                # %if.then
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a5, .LBB7_7
# %bb.6:                                # %cond.false76
	ld.w	$a1, $a3, 12
	ld.w	$a2, $a3, 16
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB7_7:                                # %cond.end98
	beqz	$a0, .LBB7_9
# %bb.8:                                # %cond.false114
	ld.w	$a0, $a4, 12
	ld.w	$a1, $a4, 16
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB7_9:                                # %cond.end136
	fcmp.clt.d	$fcc0, $fa2, $fa3
	movcf2gr	$a0, $fcc0
	ret
.LBB7_10:                               # %if.end
	slt	$a0, $a1, $a2
	ret
.Lfunc_end7:
	.size	net_nfl_lt, .Lfunc_end7-net_nfl_lt
                                        # -- End function
	.globl	net_lt                          # -- Begin function net_lt
	.p2align	5
	.type	net_lt,@function
net_lt:                                 # @net_lt
# %bb.0:                                # %entry
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %got_pc_hi20(divisions)
	ld.d	$a4, $a4, %got_pc_lo12(divisions)
	ldx.w	$a3, $a4, $a3
	slli.d	$a5, $a2, 3
	ldx.w	$a4, $a4, $a5
	bne	$a3, $a4, .LBB8_11
# %bb.1:                                # %if.end
	ori	$a4, $zero, 92
	mul.d	$a5, $a1, $a4
	add.d	$a3, $a0, $a5
	ldx.w	$a5, $a0, $a5
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a3, 8
	add.d	$a5, $a6, $a5
	add.w	$a5, $a5, $a7
	movgr2fr.d	$fa2, $zero
	movgr2fr.w	$fa0, $a5
	fmov.d	$fa3, $fa2
	beqz	$a5, .LBB8_3
# %bb.2:                                # %cond.false.i
	ld.w	$a6, $a3, 12
	ld.w	$a7, $a3, 16
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa1, $a6
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa3, $fa0
	fdiv.d	$fa3, $fa1, $fa3
.LBB8_3:                                # %cond.end.i
	mul.d	$a6, $a2, $a4
	add.d	$a4, $a0, $a6
	ldx.w	$a0, $a0, $a6
	ld.w	$a6, $a4, 4
	ld.w	$a7, $a4, 8
	add.d	$a0, $a6, $a0
	add.w	$a0, $a0, $a7
	movgr2fr.w	$fa1, $a0
	beqz	$a0, .LBB8_5
# %bb.4:                                # %cond.false36.i
	ld.w	$a6, $a4, 12
	ld.w	$a7, $a4, 16
	sub.d	$a6, $a6, $a7
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa4, $fa1
	fdiv.d	$fa2, $fa2, $fa4
.LBB8_5:                                # %cond.end58.i
	fcmp.ceq.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB8_12
# %bb.6:                                # %if.then.i
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa3, $fa2
	beqz	$a5, .LBB8_8
# %bb.7:                                # %cond.false76.i
	ld.w	$a1, $a3, 12
	ld.w	$a2, $a3, 16
	sub.d	$a1, $a1, $a2
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa3, $fa3, $fa0
.LBB8_8:                                # %cond.end98.i
	beqz	$a0, .LBB8_10
# %bb.9:                                # %cond.false114.i
	ld.w	$a0, $a4, 12
	ld.w	$a1, $a4, 16
	sub.d	$a0, $a0, $a1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa2, $fa0, $fa1
.LBB8_10:                               # %cond.end136.i
	fcmp.clt.d	$fcc0, $fa2, $fa3
	movcf2gr	$a0, $fcc0
	ret
.LBB8_11:                               # %if.then
	slt	$a0, $a3, $a4
	ret
.LBB8_12:                               # %if.end.i
	slt	$a0, $a1, $a2
	ret
.Lfunc_end8:
	.size	net_lt, .Lfunc_end8-net_lt
                                        # -- End function
	.globl	tied                            # -- Begin function tied
	.p2align	5
	.type	tied,@function
tied:                                   # @tied
# %bb.0:                                # %entry
	ori	$a4, $zero, 92
	mul.d	$a1, $a1, $a4
	add.d	$a5, $a0, $a1
	ldx.w	$a1, $a0, $a1
	ld.w	$a3, $a5, 4
	ld.w	$a6, $a5, 8
	add.d	$a5, $a3, $a1
	add.w	$a5, $a5, $a6
	movgr2fr.d	$fa0, $zero
	fmov.d	$fa1, $fa0
	beqz	$a5, .LBB9_2
# %bb.1:                                # %cond.false
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -928
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB9_2:                                # %cond.end
	mul.d	$a2, $a2, $a4
	add.d	$a4, $a0, $a2
	ldx.w	$a0, $a0, $a2
	ld.w	$a2, $a4, 4
	ld.w	$a5, $a4, 8
	add.d	$a4, $a2, $a0
	add.w	$a4, $a4, $a5
	beqz	$a4, .LBB9_4
# %bb.3:                                # %cond.false39
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -928
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa2
.LBB9_4:                                # %cond.end61
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_6
# %bb.5:
	move	$a0, $zero
	ret
.LBB9_6:                                # %if.end
	or	$a4, $a2, $a3
	beqz	$a4, .LBB9_8
# %bb.7:                                # %if.end84
	or	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	xor	$a1, $a3, $a2
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	ret
.LBB9_8:                                # %if.then75
	xor	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	ret
.Lfunc_end9:
	.size	tied, .Lfunc_end9-tied
                                        # -- End function
	.globl	break_ties                      # -- Begin function break_ties
	.p2align	5
	.type	break_ties,@function
break_ties:                             # @break_ties
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	move	$s1, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s2, $a0
	bne	$a2, $a4, .LBB10_3
# %bb.1:                                # %entry
	bnez	$s1, .LBB10_3
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(nfc_west_champ)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_west_champ)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(nfc_central_champ)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_central_champ)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(nfc_east_champ)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_east_champ)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_west_champ)
	ld.d	$a0, $a0, %got_pc_lo12(afc_west_champ)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_central_champ)
	ld.d	$a0, $a0, %got_pc_lo12(afc_central_champ)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_east_champ)
	ld.d	$a0, $a0, %got_pc_lo12(afc_east_champ)
	st.w	$zero, $a0, 0
.LBB10_3:                               # %if.end
	ori	$s4, $zero, 2
	beq	$s3, $s4, .LBB10_6
# %bb.4:                                # %if.end
	bnez	$s1, .LBB10_6
# %bb.5:                                # %if.then4
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card3)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card3)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card2)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card2)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card1)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card1)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card3)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card3)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card2)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card2)
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card1)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card1)
	st.w	$zero, $a0, 0
.LBB10_6:                               # %cond.false.preheader
	addi.d	$s7, $fp, 8
	ori	$s8, $zero, 92
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(got_unused_responce)
	ld.d	$a0, $a0, %got_pc_lo12(got_unused_responce)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr3, -928
	ori	$s5, $zero, 1
	ori	$s6, $zero, 1
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_7:                               #   in Loop: Header=BB10_9 Depth=1
	move	$s6, $s4
.LBB10_8:                               # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=1
	addi.d	$s5, $s5, 1
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 4
	ori	$a0, $zero, 28
	beq	$s5, $a0, .LBB10_31
.LBB10_9:                               # %cond.false
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, -4
	mul.d	$a1, $a0, $s8
	add.d	$a4, $s2, $a1
	ldx.w	$a3, $s2, $a1
	ld.w	$a2, $a4, 4
	ld.w	$a4, $a4, 8
	add.d	$a1, $a2, $a3
	add.w	$a1, $a1, $a4
	fmov.d	$fa0, $fs0
	beqz	$a1, .LBB10_11
# %bb.10:                               # %cond.false.i
                                        #   in Loop: Header=BB10_9 Depth=1
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
.LBB10_11:                              # %cond.end.i
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.w	$a1, $s7, 0
	mul.d	$a4, $a1, $s8
	add.d	$a6, $s2, $a4
	ldx.w	$a5, $s2, $a4
	ld.w	$a4, $a6, 4
	ld.w	$a7, $a6, 8
	add.d	$a6, $a4, $a5
	add.w	$a6, $a6, $a7
	fmov.d	$fa1, $fs0
	beqz	$a6, .LBB10_13
# %bb.12:                               # %cond.false39.i
                                        #   in Loop: Header=BB10_9 Depth=1
	movgr2fr.w	$fa1, $a5
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	movgr2fr.w	$fa2, $a6
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB10_13:                              # %cond.end61.i
                                        #   in Loop: Header=BB10_9 Depth=1
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_17
.LBB10_14:                              # %if.then82
                                        #   in Loop: Header=BB10_9 Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	beq	$s5, $a0, .LBB10_7
# %bb.15:                               # %if.then84
                                        #   in Loop: Header=BB10_9 Depth=1
	alsl.d	$a0, $s6, $fp, 2
	addi.w	$s0, $s5, 1
	sub.w	$a1, $s4, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(break_a_tie)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB10_20
# %bb.16:                               # %if.then89
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(prompt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	sltui	$a0, $a0, 1
	maskeqz	$s1, $s1, $a0
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_17:                              # %if.end.i
                                        #   in Loop: Header=BB10_9 Depth=1
	or	$a6, $a4, $a2
	beqz	$a6, .LBB10_22
# %bb.18:                               # %tied.exit
                                        #   in Loop: Header=BB10_9 Depth=1
	or	$a3, $a5, $a3
	bnez	$a3, .LBB10_23
# %bb.19:                               # %tied.exit
                                        #   in Loop: Header=BB10_9 Depth=1
	bne	$a2, $a4, .LBB10_14
	b	.LBB10_23
.LBB10_20:                              #   in Loop: Header=BB10_9 Depth=1
	move	$s1, $zero
.LBB10_21:                              # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=1
	move	$s6, $s0
	vldi	$vr3, -928
	b	.LBB10_8
.LBB10_22:                              # %if.then75.i
                                        #   in Loop: Header=BB10_9 Depth=1
	bne	$a3, $a5, .LBB10_14
.LBB10_23:                              # %cond.true11
                                        #   in Loop: Header=BB10_9 Depth=1
	beqz	$s3, .LBB10_27
# %bb.24:                               # %cond.true11
                                        #   in Loop: Header=BB10_9 Depth=1
	ori	$a2, $zero, 1
	bne	$s3, $a2, .LBB10_29
# %bb.25:                               # %cond.true13
                                        #   in Loop: Header=BB10_9 Depth=1
	pcalau12i	$a2, %got_pc_hi20(divisions)
	ld.d	$a2, $a2, %got_pc_lo12(divisions)
	alsl.d	$a0, $a0, $a2, 3
	ld.w	$a3, $a0, 4
	alsl.d	$a1, $a1, $a2, 3
	ld.w	$a2, $a1, 4
	bne	$a3, $a2, .LBB10_14
# %bb.26:                               # %land.lhs.true26
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB10_8
	b	.LBB10_14
.LBB10_27:                              # %cond.true41
                                        #   in Loop: Header=BB10_9 Depth=1
	slli.d	$a2, $a0, 3
	pcalau12i	$a3, %got_pc_hi20(divisions)
	ld.d	$a3, $a3, %got_pc_lo12(divisions)
	ldx.w	$a2, $a3, $a2
	slli.d	$a1, $a1, 3
	ldx.w	$a1, $a3, $a1
	bne	$a2, $a1, .LBB10_14
# %bb.28:                               # %land.lhs.true54
                                        #   in Loop: Header=BB10_9 Depth=1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	beq	$s0, $a0, .LBB10_8
	b	.LBB10_14
.LBB10_29:                              # %cond.false63
                                        #   in Loop: Header=BB10_9 Depth=1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	bne	$s0, $a0, .LBB10_14
# %bb.30:                               # %land.lhs.true72
                                        #   in Loop: Header=BB10_9 Depth=1
	ld.w	$a0, $s7, -4
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	beq	$s0, $a0, .LBB10_8
	b	.LBB10_14
.LBB10_31:                              # %if.then82.peel
	ori	$a0, $zero, 28
	beq	$s6, $a0, .LBB10_34
# %bb.32:                               # %if.then84.peel
	alsl.d	$a0, $s6, $fp, 2
	ori	$a1, $zero, 29
	sub.w	$a1, $a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(break_a_tie)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB10_34
# %bb.33:                               # %if.then89.peel
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(prompt)
	jirl	$ra, $ra, 0
.LBB10_34:                              # %for.inc.peel
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB10_56
# %bb.35:                               # %for.inc.peel
	bnez	$s3, .LBB10_55
# %bb.36:                               # %for.body223.preheader
	ori	$fp, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$s1, $a0, %got_pc_lo12(conf_standings)
	pcalau12i	$a0, %got_pc_hi20(divisions)
	ld.d	$s2, $a0, %got_pc_lo12(divisions)
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card1)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card1)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s4, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(iyear)
	ld.d	$s5, $a0, %got_pc_lo12(iyear)
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card3)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card3)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -19
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(nfc_wild_card2)
	ld.d	$a0, $a0, %got_pc_lo12(nfc_wild_card2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 116
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card1)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card1)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card3)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card3)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -20
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(afc_wild_card2)
	ld.d	$a0, $a0, %got_pc_lo12(afc_wild_card2)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $s3
	b	.LBB10_38
	.p2align	4, , 16
.LBB10_37:                              # %for.inc292
                                        #   in Loop: Header=BB10_38 Depth=1
	addi.d	$fp, $fp, 4
	move	$s3, $a2
	move	$s0, $a1
	beq	$fp, $s7, .LBB10_55
.LBB10_38:                              # %for.body223
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a0, $s1, $fp
	slli.d	$a1, $a0, 3
	ldx.w	$s6, $s2, $a1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB10_44
# %bb.39:                               # %if.else260
                                        #   in Loop: Header=BB10_38 Depth=1
	bnez	$a0, .LBB10_54
# %bb.40:                               # %if.then265
                                        #   in Loop: Header=BB10_38 Depth=1
	beqz	$s0, .LBB10_50
# %bb.41:                               # %if.then265
                                        #   in Loop: Header=BB10_38 Depth=1
	beq	$s0, $s4, .LBB10_49
# %bb.42:                               # %if.then265
                                        #   in Loop: Header=BB10_38 Depth=1
	bne	$s0, $s8, .LBB10_54
# %bb.43:                               # %if.then273
                                        #   in Loop: Header=BB10_38 Depth=1
	ori	$s0, $zero, 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB10_53
	.p2align	4, , 16
.LBB10_44:                              # %if.then230
                                        #   in Loop: Header=BB10_38 Depth=1
	bnez	$a0, .LBB10_54
# %bb.45:                               # %if.then235
                                        #   in Loop: Header=BB10_38 Depth=1
	beqz	$s3, .LBB10_52
# %bb.46:                               # %if.then235
                                        #   in Loop: Header=BB10_38 Depth=1
	beq	$s3, $s4, .LBB10_51
# %bb.47:                               # %if.then235
                                        #   in Loop: Header=BB10_38 Depth=1
	bne	$s3, $s8, .LBB10_54
# %bb.48:                               # %if.then243
                                        #   in Loop: Header=BB10_38 Depth=1
	ori	$s3, $zero, 2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB10_53
.LBB10_49:                              # %land.lhs.true279
                                        #   in Loop: Header=BB10_38 Depth=1
	ld.w	$a0, $s5, 0
	addi.w	$a3, $a0, -90
	ori	$a1, $zero, 2
	ori	$s0, $zero, 3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a4, $a3, .LBB10_53
	b	.LBB10_37
.LBB10_50:                              #   in Loop: Header=BB10_38 Depth=1
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB10_53
.LBB10_51:                              # %land.lhs.true249
                                        #   in Loop: Header=BB10_38 Depth=1
	ld.w	$a0, $s5, 0
	addi.w	$a3, $a0, -90
	ori	$a2, $zero, 2
	ori	$s3, $zero, 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a3, $a4, .LBB10_37
	b	.LBB10_53
.LBB10_52:                              #   in Loop: Header=BB10_38 Depth=1
	ori	$s3, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_53:                              # %for.inc292.sink.split
                                        #   in Loop: Header=BB10_38 Depth=1
	ldx.w	$a1, $s1, $fp
	st.w	$a1, $a0, 0
.LBB10_54:                              # %for.inc292
                                        #   in Loop: Header=BB10_38 Depth=1
	move	$a1, $s0
	move	$a2, $s3
	addi.d	$fp, $fp, 4
	move	$s3, $a2
	move	$s0, $a1
	bne	$fp, $s7, .LBB10_38
.LBB10_55:                              # %if.end296
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
.LBB10_56:                              # %for.cond99.preheader
	pcalau12i	$a1, %got_pc_hi20(nfc_east_champ)
	ld.d	$a1, $a1, %got_pc_lo12(nfc_east_champ)
	ld.w	$a4, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(nfc_central_champ)
	ld.d	$a2, $a2, %got_pc_lo12(nfc_central_champ)
	ld.w	$a6, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(nfc_west_champ)
	ld.d	$a3, $a3, %got_pc_lo12(nfc_west_champ)
	ld.w	$t0, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(afc_east_champ)
	ld.d	$a5, $a5, %got_pc_lo12(afc_east_champ)
	ld.w	$t3, $a5, 0
	pcalau12i	$a7, %got_pc_hi20(afc_central_champ)
	ld.d	$a7, $a7, %got_pc_lo12(afc_central_champ)
	ld.w	$t6, $a7, 0
	pcalau12i	$t1, %got_pc_hi20(afc_west_champ)
	ld.d	$t1, $t1, %got_pc_lo12(afc_west_champ)
	ld.w	$t8, $t1, 0
	ori	$t2, $zero, 4
	pcalau12i	$t4, %got_pc_hi20(divisions)
	ld.d	$t4, $t4, %got_pc_lo12(divisions)
	ori	$t5, $zero, 2
	ori	$t7, $zero, 116
	b	.LBB10_59
	.p2align	4, , 16
.LBB10_57:                              #   in Loop: Header=BB10_59 Depth=1
	move	$t8, $zero
.LBB10_58:                              # %for.inc216
                                        #   in Loop: Header=BB10_59 Depth=1
	addi.d	$t2, $t2, 4
	beq	$t2, $t7, .LBB10_55
.LBB10_59:                              # %for.body101
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a4, .LBB10_65
# %bb.60:                               # %if.end120
                                        #   in Loop: Header=BB10_59 Depth=1
	beqz	$a6, .LBB10_68
.LBB10_61:                              # %if.end139
                                        #   in Loop: Header=BB10_59 Depth=1
	beqz	$t0, .LBB10_72
.LBB10_62:                              # %if.end158
                                        #   in Loop: Header=BB10_59 Depth=1
	beqz	$t3, .LBB10_76
.LBB10_63:                              # %if.end177
                                        #   in Loop: Header=BB10_59 Depth=1
	beqz	$t6, .LBB10_79
.LBB10_64:                              # %if.end196
                                        #   in Loop: Header=BB10_59 Depth=1
	bnez	$t8, .LBB10_58
	b	.LBB10_83
	.p2align	4, , 16
.LBB10_65:                              # %land.lhs.true103
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$a4, $fp, $t2
	slli.d	$s0, $a4, 3
	ldx.w	$s0, $t4, $s0
	bnez	$s0, .LBB10_67
# %bb.66:                               # %land.lhs.true110
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $a4, $t4, 3
	ld.w	$s0, $s0, 4
	beqz	$s0, .LBB10_87
.LBB10_67:                              #   in Loop: Header=BB10_59 Depth=1
	move	$a4, $zero
	bnez	$a6, .LBB10_61
.LBB10_68:                              # %land.lhs.true122
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$a6, $fp, $t2
	slli.d	$s0, $a6, 3
	ldx.w	$s0, $t4, $s0
	bnez	$s0, .LBB10_71
# %bb.69:                               # %land.lhs.true129
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $a6, $t4, 3
	ld.w	$s0, $s0, 4
	bne	$s0, $a0, .LBB10_71
# %bb.70:                               # %if.then136
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$a6, $a2, 0
	bnez	$t0, .LBB10_62
	b	.LBB10_72
	.p2align	4, , 16
.LBB10_71:                              #   in Loop: Header=BB10_59 Depth=1
	move	$a6, $zero
	bnez	$t0, .LBB10_62
.LBB10_72:                              # %land.lhs.true141
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$t0, $fp, $t2
	slli.d	$s0, $t0, 3
	ldx.w	$s0, $t4, $s0
	bnez	$s0, .LBB10_75
# %bb.73:                               # %land.lhs.true148
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $t0, $t4, 3
	ld.w	$s0, $s0, 4
	bne	$s0, $t5, .LBB10_75
# %bb.74:                               # %if.then155
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$t0, $a3, 0
	bnez	$t3, .LBB10_63
	b	.LBB10_76
	.p2align	4, , 16
.LBB10_75:                              #   in Loop: Header=BB10_59 Depth=1
	move	$t0, $zero
	bnez	$t3, .LBB10_63
.LBB10_76:                              # %land.lhs.true160
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$t3, $fp, $t2
	slli.d	$s0, $t3, 3
	ldx.w	$s0, $t4, $s0
	bne	$s0, $a0, .LBB10_78
# %bb.77:                               # %land.lhs.true167
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $t3, $t4, 3
	ld.w	$s0, $s0, 4
	beqz	$s0, .LBB10_86
.LBB10_78:                              #   in Loop: Header=BB10_59 Depth=1
	move	$t3, $zero
	bnez	$t6, .LBB10_64
.LBB10_79:                              # %land.lhs.true179
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$t6, $fp, $t2
	slli.d	$s0, $t6, 3
	ldx.w	$s0, $t4, $s0
	bne	$s0, $a0, .LBB10_82
# %bb.80:                               # %land.lhs.true186
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $t6, $t4, 3
	ld.w	$s0, $s0, 4
	bne	$s0, $a0, .LBB10_82
# %bb.81:                               # %if.then193
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$t6, $a7, 0
	bnez	$t8, .LBB10_58
	b	.LBB10_83
	.p2align	4, , 16
.LBB10_82:                              #   in Loop: Header=BB10_59 Depth=1
	move	$t6, $zero
	bnez	$t8, .LBB10_58
.LBB10_83:                              # %land.lhs.true198
                                        #   in Loop: Header=BB10_59 Depth=1
	ldx.w	$t8, $fp, $t2
	slli.d	$s0, $t8, 3
	ldx.w	$s0, $t4, $s0
	bne	$s0, $a0, .LBB10_57
# %bb.84:                               # %land.lhs.true205
                                        #   in Loop: Header=BB10_59 Depth=1
	alsl.d	$s0, $t8, $t4, 3
	ld.w	$s0, $s0, 4
	bne	$s0, $t5, .LBB10_57
# %bb.85:                               # %if.then212
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$t8, $t1, 0
	b	.LBB10_58
.LBB10_86:                              # %if.then174
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$t3, $a5, 0
	bnez	$t6, .LBB10_64
	b	.LBB10_79
.LBB10_87:                              # %if.then117
                                        #   in Loop: Header=BB10_59 Depth=1
	st.w	$a4, $a1, 0
	bnez	$a6, .LBB10_61
	b	.LBB10_68
.Lfunc_end10:
	.size	break_ties, .Lfunc_end10-break_ties
                                        # -- End function
	.globl	sort_all                        # -- Begin function sort_all
	.p2align	5
	.type	sort_all,@function
sort_all:                               # @sort_all
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(standings)
	ld.d	$a0, $a0, %got_pc_lo12(standings)
	addi.d	$a0, $a0, 112
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(divisions)
	ld.d	$s3, $a0, %got_pc_lo12(divisions)
	ori	$a7, $zero, 92
	pcalau12i	$a0, %got_pc_hi20(team_info)
	ld.d	$fp, $a0, %got_pc_lo12(team_info)
	movgr2fr.d	$fs0, $zero
	vldi	$vr9, -928
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %for.inc17
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.d	$s4, $s4, 1
	beqz	$s5, .LBB11_32
.LBB11_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	ori	$a0, $zero, 27
	bltu	$a0, $s4, .LBB11_32
# %bb.3:                                # %for.body3.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	move	$s5, $zero
	ori	$s8, $zero, 28
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_4:                               # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, -4
	bgeu	$s4, $s8, .LBB11_1
.LBB11_5:                               # %for.body3
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $s6, 0
	ld.w	$s1, $s6, -4
	slli.d	$a0, $s0, 3
	ldx.w	$a0, $s3, $a0
	slli.d	$a1, $s1, 3
	ldx.w	$a1, $s3, $a1
	bne	$a0, $a1, .LBB11_17
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB11_5 Depth=2
	alsl.d	$s7, $s0, $s3, 3
	alsl.d	$s2, $s1, $s3, 3
	ld.w	$a0, $s7, 4
	ld.w	$a1, $s2, 4
	bne	$a0, $a1, .LBB11_17
# %bb.7:                                # %if.end29.i
                                        #   in Loop: Header=BB11_5 Depth=2
	mul.d	$a0, $s0, $a7
	add.d	$a2, $fp, $a0
	ldx.w	$a1, $fp, $a0
	ld.w	$a0, $a2, 4
	ld.w	$a3, $a2, 8
	add.d	$a2, $a0, $a1
	add.w	$a2, $a2, $a3
	movgr2fr.w	$fa1, $a1
	movgr2fr.w	$fa2, $a3
	movgr2fr.w	$fa0, $a2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_9
# %bb.8:                                # %cond.false.i271
                                        #   in Loop: Header=BB11_5 Depth=2
	ffint.d.w	$fa3, $fa1
	ffint.d.w	$fa4, $fa2
	fmadd.d	$fa3, $fa4, $ft1, $fa3
	ffint.d.w	$fa4, $fa0
	fdiv.d	$fa6, $fa3, $fa4
.LBB11_9:                               # %cond.end.i276
                                        #   in Loop: Header=BB11_5 Depth=2
	mul.d	$a3, $s1, $a7
	add.d	$a6, $fp, $a3
	ldx.w	$a5, $fp, $a3
	ld.w	$a4, $a6, 4
	ld.w	$a6, $a6, 8
	add.d	$a3, $a4, $a5
	add.w	$a3, $a3, $a6
	movgr2fr.w	$fa4, $a5
	movgr2fr.w	$fa5, $a6
	movgr2fr.w	$fa3, $a3
	fmov.d	$fa7, $fs0
	beqz	$a3, .LBB11_11
# %bb.10:                               # %cond.false39.i285
                                        #   in Loop: Header=BB11_5 Depth=2
	ffint.d.w	$fa7, $fa4
	ffint.d.w	$ft0, $fa5
	fmadd.d	$fa7, $ft0, $ft1, $fa7
	ffint.d.w	$ft0, $fa3
	fdiv.d	$fa7, $fa7, $ft0
.LBB11_11:                              # %cond.end61.i290
                                        #   in Loop: Header=BB11_5 Depth=2
	fcmp.ceq.d	$fcc0, $fa6, $fa7
	bcnez	$fcc0, .LBB11_20
# %bb.12:                               # %if.then.i326
                                        #   in Loop: Header=BB11_5 Depth=2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_14
# %bb.13:                               # %cond.false79.i327
                                        #   in Loop: Header=BB11_5 Depth=2
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa6, $fa1, $fa0
.LBB11_14:                              # %cond.end101.i332
                                        #   in Loop: Header=BB11_5 Depth=2
	fmov.d	$fa0, $fs0
	beqz	$a3, .LBB11_16
# %bb.15:                               # %cond.false117.i334
                                        #   in Loop: Header=BB11_5 Depth=2
	ffint.d.w	$fa0, $fa4
	ffint.d.w	$fa1, $fa5
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	ffint.d.w	$fa1, $fa3
	fdiv.d	$fa0, $fa0, $fa1
.LBB11_16:                              # %cond.end139.i339
                                        #   in Loop: Header=BB11_5 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fa6
	movcf2gr	$a0, $fcc0
	b	.LBB11_18
	.p2align	4, , 16
.LBB11_17:                              # %if.then20.i
                                        #   in Loop: Header=BB11_5 Depth=2
	slt	$a0, $a0, $a1
.LBB11_18:                              # %standing_lt.exit
                                        #   in Loop: Header=BB11_5 Depth=2
	beqz	$a0, .LBB11_4
# %bb.19:                               # %if.then
                                        #   in Loop: Header=BB11_5 Depth=2
	ld.d	$a0, $s6, -4
	rotri.d	$a0, $a0, 32
	st.d	$a0, $s6, -4
	ori	$s5, $zero, 1
	b	.LBB11_4
.LBB11_20:                              # %if.end.i293
                                        #   in Loop: Header=BB11_5 Depth=2
	or	$a2, $a4, $a0
	beqz	$a2, .LBB11_26
# %bb.21:                               # %if.end162.i295
                                        #   in Loop: Header=BB11_5 Depth=2
	or	$a1, $a5, $a1
	beqz	$a1, .LBB11_27
# %bb.22:                               # %if.end183.i297
                                        #   in Loop: Header=BB11_5 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB11_28
# %bb.23:                               # %if.end189.i304
                                        #   in Loop: Header=BB11_5 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB11_29
# %bb.24:                               # %if.end196.i310
                                        #   in Loop: Header=BB11_5 Depth=2
	ld.w	$a0, $s7, 0
	ld.w	$a1, $s2, 0
	bne	$a0, $a1, .LBB11_30
# %bb.25:                               # %if.end214.i317
                                        #   in Loop: Header=BB11_5 Depth=2
	slt	$a0, $s0, $s1
	b	.LBB11_31
.LBB11_26:                              # %if.then153.i323
                                        #   in Loop: Header=BB11_5 Depth=2
	slt	$a0, $a5, $a1
	b	.LBB11_18
.LBB11_27:                              # %if.then174.i320
                                        #   in Loop: Header=BB11_5 Depth=2
	slt	$a0, $a0, $a4
	b	.LBB11_18
.LBB11_28:                              # %if.then187.i301
                                        #   in Loop: Header=BB11_5 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	b	.LBB11_31
.LBB11_29:                              # %if.then194.i308
                                        #   in Loop: Header=BB11_5 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	b	.LBB11_31
.LBB11_30:                              # %if.then205.i314
                                        #   in Loop: Header=BB11_5 Depth=2
	slt	$a0, $a0, $a1
.LBB11_31:                              # %standing_lt.exit
                                        #   in Loop: Header=BB11_5 Depth=2
	ori	$a7, $zero, 92
	vldi	$vr9, -928
	b	.LBB11_18
.LBB11_32:                              # %for.end18
	pcalau12i	$a0, %got_pc_hi20(standings)
	ld.d	$a1, $a0, %got_pc_lo12(standings)
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(break_ties)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$a0, $a0, %got_pc_lo12(conf_standings)
	addi.d	$a0, $a0, 112
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 92
	movgr2fr.d	$fs0, $zero
	vldi	$vr9, -928
	b	.LBB11_34
	.p2align	4, , 16
.LBB11_33:                              # %for.inc54
                                        #   in Loop: Header=BB11_34 Depth=1
	addi.d	$s4, $s4, 1
	beqz	$s5, .LBB11_63
.LBB11_34:                              # %for.cond29.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_37 Depth 2
	ori	$a0, $zero, 27
	bltu	$a0, $s4, .LBB11_63
# %bb.35:                               # %for.body31.preheader
                                        #   in Loop: Header=BB11_34 Depth=1
	move	$s5, $zero
	ori	$s8, $zero, 28
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	b	.LBB11_37
	.p2align	4, , 16
.LBB11_36:                              # %for.inc51
                                        #   in Loop: Header=BB11_37 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, -4
	bgeu	$s4, $s8, .LBB11_33
.LBB11_37:                              # %for.body31
                                        #   Parent Loop BB11_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $s6, 0
	ld.w	$s1, $s6, -4
	slli.d	$a0, $s0, 3
	ldx.w	$a0, $s3, $a0
	slli.d	$a1, $s1, 3
	ldx.w	$a1, $s3, $a1
	bne	$a0, $a1, .LBB11_48
# %bb.38:                               # %if.end.i91
                                        #   in Loop: Header=BB11_37 Depth=2
	mul.d	$a0, $s0, $s7
	add.d	$a2, $fp, $a0
	ldx.w	$a1, $fp, $a0
	ld.w	$a0, $a2, 4
	ld.w	$a3, $a2, 8
	add.d	$a2, $a0, $a1
	add.w	$a2, $a2, $a3
	movgr2fr.w	$fa1, $a1
	movgr2fr.w	$fa2, $a3
	movgr2fr.w	$fa0, $a2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_40
# %bb.39:                               # %cond.false.i351
                                        #   in Loop: Header=BB11_37 Depth=2
	ffint.d.w	$fa3, $fa1
	ffint.d.w	$fa4, $fa2
	fmadd.d	$fa3, $fa4, $ft1, $fa3
	ffint.d.w	$fa4, $fa0
	fdiv.d	$fa6, $fa3, $fa4
.LBB11_40:                              # %cond.end.i356
                                        #   in Loop: Header=BB11_37 Depth=2
	mul.d	$a3, $s1, $s7
	add.d	$a6, $fp, $a3
	ldx.w	$a5, $fp, $a3
	ld.w	$a4, $a6, 4
	ld.w	$a6, $a6, 8
	add.d	$a3, $a4, $a5
	add.w	$a3, $a3, $a6
	movgr2fr.w	$fa4, $a5
	movgr2fr.w	$fa5, $a6
	movgr2fr.w	$fa3, $a3
	fmov.d	$fa7, $fs0
	beqz	$a3, .LBB11_42
# %bb.41:                               # %cond.false39.i365
                                        #   in Loop: Header=BB11_37 Depth=2
	ffint.d.w	$fa7, $fa4
	ffint.d.w	$ft0, $fa5
	fmadd.d	$fa7, $ft0, $ft1, $fa7
	ffint.d.w	$ft0, $fa3
	fdiv.d	$fa7, $fa7, $ft0
.LBB11_42:                              # %cond.end61.i370
                                        #   in Loop: Header=BB11_37 Depth=2
	fcmp.ceq.d	$fcc0, $fa6, $fa7
	bcnez	$fcc0, .LBB11_51
# %bb.43:                               # %if.then.i405
                                        #   in Loop: Header=BB11_37 Depth=2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_45
# %bb.44:                               # %cond.false79.i406
                                        #   in Loop: Header=BB11_37 Depth=2
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa6, $fa1, $fa0
.LBB11_45:                              # %cond.end101.i411
                                        #   in Loop: Header=BB11_37 Depth=2
	fmov.d	$fa0, $fs0
	beqz	$a3, .LBB11_47
# %bb.46:                               # %cond.false117.i413
                                        #   in Loop: Header=BB11_37 Depth=2
	ffint.d.w	$fa0, $fa4
	ffint.d.w	$fa1, $fa5
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	ffint.d.w	$fa1, $fa3
	fdiv.d	$fa0, $fa0, $fa1
.LBB11_47:                              # %cond.end139.i418
                                        #   in Loop: Header=BB11_37 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fa6
	movcf2gr	$a0, $fcc0
	b	.LBB11_49
	.p2align	4, , 16
.LBB11_48:                              # %if.then.i87
                                        #   in Loop: Header=BB11_37 Depth=2
	slt	$a0, $a0, $a1
.LBB11_49:                              # %conf_standing_lt.exit
                                        #   in Loop: Header=BB11_37 Depth=2
	beqz	$a0, .LBB11_36
# %bb.50:                               # %if.then39
                                        #   in Loop: Header=BB11_37 Depth=2
	ld.d	$a0, $s6, -4
	rotri.d	$a0, $a0, 32
	st.d	$a0, $s6, -4
	ori	$s5, $zero, 1
	b	.LBB11_36
.LBB11_51:                              # %if.end.i373
                                        #   in Loop: Header=BB11_37 Depth=2
	or	$a2, $a4, $a0
	beqz	$a2, .LBB11_57
# %bb.52:                               # %if.end162.i375
                                        #   in Loop: Header=BB11_37 Depth=2
	or	$a1, $a5, $a1
	beqz	$a1, .LBB11_58
# %bb.53:                               # %if.end183.i377
                                        #   in Loop: Header=BB11_37 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB11_59
# %bb.54:                               # %if.end189.i383
                                        #   in Loop: Header=BB11_37 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB11_60
# %bb.55:                               # %if.end196.i389
                                        #   in Loop: Header=BB11_37 Depth=2
	alsl.d	$a0, $s0, $s3, 3
	alsl.d	$a1, $s1, $s3, 3
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB11_61
# %bb.56:                               # %if.end214.i396
                                        #   in Loop: Header=BB11_37 Depth=2
	slt	$a0, $s0, $s1
	b	.LBB11_62
.LBB11_57:                              # %if.then153.i402
                                        #   in Loop: Header=BB11_37 Depth=2
	slt	$a0, $a5, $a1
	b	.LBB11_49
.LBB11_58:                              # %if.then174.i399
                                        #   in Loop: Header=BB11_37 Depth=2
	slt	$a0, $a0, $a4
	b	.LBB11_49
.LBB11_59:                              # %if.then187.i380
                                        #   in Loop: Header=BB11_37 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	b	.LBB11_62
.LBB11_60:                              # %if.then194.i387
                                        #   in Loop: Header=BB11_37 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	b	.LBB11_62
.LBB11_61:                              # %if.then205.i393
                                        #   in Loop: Header=BB11_37 Depth=2
	slt	$a0, $a0, $a1
.LBB11_62:                              # %conf_standing_lt.exit
                                        #   in Loop: Header=BB11_37 Depth=2
	vldi	$vr9, -928
	b	.LBB11_49
.LBB11_63:                              # %for.end56
	pcalau12i	$a0, %got_pc_hi20(conf_standings)
	ld.d	$a1, $a0, %got_pc_lo12(conf_standings)
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(break_ties)
	jirl	$ra, $ra, 0
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(abs_standings)
	ld.d	$a0, $a0, %got_pc_lo12(abs_standings)
	addi.d	$a0, $a0, 112
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 92
	movgr2fr.d	$fs0, $zero
	vldi	$vr9, -928
	b	.LBB11_65
	.p2align	4, , 16
.LBB11_64:                              # %for.inc92
                                        #   in Loop: Header=BB11_65 Depth=1
	addi.d	$s4, $s4, 1
	beqz	$s5, .LBB11_92
.LBB11_65:                              # %for.cond67.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_68 Depth 2
	ori	$a0, $zero, 27
	bltu	$a0, $s4, .LBB11_92
# %bb.66:                               # %for.body69.preheader
                                        #   in Loop: Header=BB11_65 Depth=1
	move	$s5, $zero
	ori	$s8, $zero, 28
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	b	.LBB11_68
	.p2align	4, , 16
.LBB11_67:                              # %for.inc89
                                        #   in Loop: Header=BB11_68 Depth=2
	addi.d	$s8, $s8, -1
	addi.d	$s6, $s6, -4
	bgeu	$s4, $s8, .LBB11_64
.LBB11_68:                              # %for.body69
                                        #   Parent Loop BB11_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $s6, 0
	mul.d	$a0, $s0, $s7
	add.d	$a2, $fp, $a0
	ldx.w	$a1, $fp, $a0
	ld.w	$a0, $a2, 4
	ld.w	$a3, $a2, 8
	add.d	$a2, $a0, $a1
	add.w	$a2, $a2, $a3
	movgr2fr.w	$fa1, $a1
	movgr2fr.w	$fa2, $a3
	movgr2fr.w	$fa0, $a2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_70
# %bb.69:                               # %cond.false.i
                                        #   in Loop: Header=BB11_68 Depth=2
	ffint.d.w	$fa3, $fa1
	ffint.d.w	$fa4, $fa2
	fmadd.d	$fa3, $fa4, $ft1, $fa3
	ffint.d.w	$fa4, $fa0
	fdiv.d	$fa6, $fa3, $fa4
.LBB11_70:                              # %cond.end.i
                                        #   in Loop: Header=BB11_68 Depth=2
	ld.w	$s1, $s6, -4
	mul.d	$a3, $s1, $s7
	add.d	$a6, $fp, $a3
	ldx.w	$a5, $fp, $a3
	ld.w	$a4, $a6, 4
	ld.w	$a6, $a6, 8
	add.d	$a3, $a4, $a5
	add.w	$a3, $a3, $a6
	movgr2fr.w	$fa4, $a5
	movgr2fr.w	$fa5, $a6
	movgr2fr.w	$fa3, $a3
	fmov.d	$fa7, $fs0
	beqz	$a3, .LBB11_72
# %bb.71:                               # %cond.false39.i
                                        #   in Loop: Header=BB11_68 Depth=2
	ffint.d.w	$fa7, $fa4
	ffint.d.w	$ft0, $fa5
	fmadd.d	$fa7, $ft0, $ft1, $fa7
	ffint.d.w	$ft0, $fa3
	fdiv.d	$fa7, $fa7, $ft0
.LBB11_72:                              # %cond.end61.i
                                        #   in Loop: Header=BB11_68 Depth=2
	fcmp.ceq.d	$fcc0, $fa6, $fa7
	bcnez	$fcc0, .LBB11_80
# %bb.73:                               # %if.then.i99
                                        #   in Loop: Header=BB11_68 Depth=2
	fmov.d	$fa6, $fs0
	beqz	$a2, .LBB11_75
# %bb.74:                               # %cond.false79.i
                                        #   in Loop: Header=BB11_68 Depth=2
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $ft1, $fa1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa6, $fa1, $fa0
.LBB11_75:                              # %cond.end101.i
                                        #   in Loop: Header=BB11_68 Depth=2
	fmov.d	$fa0, $fs0
	beqz	$a3, .LBB11_77
# %bb.76:                               # %cond.false117.i
                                        #   in Loop: Header=BB11_68 Depth=2
	ffint.d.w	$fa0, $fa4
	ffint.d.w	$fa1, $fa5
	fmadd.d	$fa0, $fa1, $ft1, $fa0
	ffint.d.w	$fa1, $fa3
	fdiv.d	$fa0, $fa0, $fa1
.LBB11_77:                              # %cond.end139.i
                                        #   in Loop: Header=BB11_68 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fa6
	movcf2gr	$a0, $fcc0
.LBB11_78:                              # %absolute_standing_lt.exit
                                        #   in Loop: Header=BB11_68 Depth=2
	beqz	$a0, .LBB11_67
# %bb.79:                               # %if.then77
                                        #   in Loop: Header=BB11_68 Depth=2
	ld.d	$a0, $s6, -4
	rotri.d	$a0, $a0, 32
	st.d	$a0, $s6, -4
	ori	$s5, $zero, 1
	b	.LBB11_67
	.p2align	4, , 16
.LBB11_80:                              # %if.end.i96
                                        #   in Loop: Header=BB11_68 Depth=2
	or	$a2, $a4, $a0
	beqz	$a2, .LBB11_86
# %bb.81:                               # %if.end162.i
                                        #   in Loop: Header=BB11_68 Depth=2
	or	$a1, $a5, $a1
	beqz	$a1, .LBB11_87
# %bb.82:                               # %if.end183.i
                                        #   in Loop: Header=BB11_68 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB11_88
# %bb.83:                               # %if.end189.i
                                        #   in Loop: Header=BB11_68 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB11_89
# %bb.84:                               # %if.end196.i
                                        #   in Loop: Header=BB11_68 Depth=2
	slli.d	$a0, $s0, 3
	ldx.w	$a0, $s3, $a0
	slli.d	$a1, $s1, 3
	ldx.w	$a1, $s3, $a1
	bne	$a0, $a1, .LBB11_90
# %bb.85:                               # %if.end214.i
                                        #   in Loop: Header=BB11_68 Depth=2
	slt	$a0, $s0, $s1
	b	.LBB11_91
.LBB11_86:                              # %if.then153.i
                                        #   in Loop: Header=BB11_68 Depth=2
	slt	$a0, $a5, $a1
	b	.LBB11_78
.LBB11_87:                              # %if.then174.i
                                        #   in Loop: Header=BB11_68 Depth=2
	slt	$a0, $a0, $a4
	b	.LBB11_78
.LBB11_88:                              # %if.then187.i
                                        #   in Loop: Header=BB11_68 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_champ)
	jirl	$ra, $ra, 0
	b	.LBB11_91
.LBB11_89:                              # %if.then194.i
                                        #   in Loop: Header=BB11_68 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(a_wild_card)
	jirl	$ra, $ra, 0
	b	.LBB11_91
.LBB11_90:                              # %if.then205.i
                                        #   in Loop: Header=BB11_68 Depth=2
	slt	$a0, $a0, $a1
.LBB11_91:                              # %absolute_standing_lt.exit
                                        #   in Loop: Header=BB11_68 Depth=2
	vldi	$vr9, -928
	b	.LBB11_78
.LBB11_92:                              # %for.end94
	pcalau12i	$a0, %got_pc_hi20(abs_standings)
	ld.d	$a1, $a0, %got_pc_lo12(abs_standings)
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(break_ties)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(defence_ranks)
	ld.d	$a2, $a2, %got_pc_lo12(defence_ranks)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_94
	.p2align	4, , 16
.LBB11_93:                              # %for.inc130
                                        #   in Loop: Header=BB11_94 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_111
.LBB11_94:                              # %for.cond105.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_98 Depth 2
	bltu	$a1, $a0, .LBB11_111
# %bb.95:                               # %for.body107.preheader
                                        #   in Loop: Header=BB11_94 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_98
	.p2align	4, , 16
.LBB11_96:                              # %if.then115
                                        #   in Loop: Header=BB11_98 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_97:                              # %for.inc127
                                        #   in Loop: Header=BB11_98 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_93
.LBB11_98:                              # %for.body107
                                        #   Parent Loop BB11_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	ld.w	$t0, $a6, -4
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $s3, $t1
	slli.d	$t2, $t0, 3
	ldx.w	$t2, $s3, $t2
	bne	$t1, $t2, .LBB11_109
# %bb.99:                               # %if.end.i108
                                        #   in Loop: Header=BB11_98 Depth=2
	mul.d	$t2, $a7, $a3
	add.d	$t1, $fp, $t2
	ldx.w	$t2, $fp, $t2
	ld.w	$t3, $t1, 4
	ld.w	$t4, $t1, 8
	add.d	$t2, $t3, $t2
	add.w	$t3, $t2, $t4
	movgr2fr.w	$fa1, $t3
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_101
# %bb.100:                              # %cond.false.i112
                                        #   in Loop: Header=BB11_98 Depth=2
	ld.w	$t2, $t1, 16
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_101:                             # %cond.end.i114
                                        #   in Loop: Header=BB11_98 Depth=2
	mul.d	$t4, $t0, $a3
	add.d	$t2, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t2, 4
	ld.w	$t6, $t2, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_103
# %bb.102:                              # %cond.false50.i
                                        #   in Loop: Header=BB11_98 Depth=2
	ld.w	$t5, $t2, 16
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_103:                             # %cond.end68.i
                                        #   in Loop: Header=BB11_98 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_110
# %bb.104:                              # %if.then72.i
                                        #   in Loop: Header=BB11_98 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_106
# %bb.105:                              # %cond.false87.i
                                        #   in Loop: Header=BB11_98 Depth=2
	ld.w	$t1, $t1, 16
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_106:                             # %cond.end105.i
                                        #   in Loop: Header=BB11_98 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_108
# %bb.107:                              # %cond.false121.i
                                        #   in Loop: Header=BB11_98 Depth=2
	ld.w	$t1, $t2, 16
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_108:                             # %cond.end139.i119
                                        #   in Loop: Header=BB11_98 Depth=2
	fcmp.clt.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB11_96
	b	.LBB11_97
	.p2align	4, , 16
.LBB11_109:                             # %if.then.i105
                                        #   in Loop: Header=BB11_98 Depth=2
	bge	$t1, $t2, .LBB11_97
	b	.LBB11_96
.LBB11_110:                             # %defence_lt.exit
                                        #   in Loop: Header=BB11_98 Depth=2
	blt	$a7, $t0, .LBB11_96
	b	.LBB11_97
.LBB11_111:                             # %for.cond143.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(defence_ranks_nfl)
	ld.d	$a2, $a2, %got_pc_lo12(defence_ranks_nfl)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_113
	.p2align	4, , 16
.LBB11_112:                             # %for.inc168
                                        #   in Loop: Header=BB11_113 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_128
.LBB11_113:                             # %for.cond143.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_117 Depth 2
	bltu	$a1, $a0, .LBB11_128
# %bb.114:                              # %for.body145.preheader
                                        #   in Loop: Header=BB11_113 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_117
	.p2align	4, , 16
.LBB11_115:                             # %if.then153
                                        #   in Loop: Header=BB11_117 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_116:                             # %for.inc165
                                        #   in Loop: Header=BB11_117 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_112
.LBB11_117:                             # %for.body145
                                        #   Parent Loop BB11_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	mul.d	$t0, $a7, $a3
	add.d	$t1, $fp, $t0
	ldx.w	$t0, $fp, $t0
	ld.w	$t2, $t1, 4
	ld.w	$t3, $t1, 8
	add.d	$t0, $t2, $t0
	add.w	$t2, $t0, $t3
	movgr2fr.w	$fa1, $t2
	fmov.d	$fa3, $fa0
	beqz	$t2, .LBB11_119
# %bb.118:                              # %cond.false.i129
                                        #   in Loop: Header=BB11_117 Depth=2
	ld.w	$t0, $t1, 16
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_119:                             # %cond.end.i133
                                        #   in Loop: Header=BB11_117 Depth=2
	ld.w	$t0, $a6, -4
	mul.d	$t4, $t0, $a3
	add.d	$t3, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t3, 4
	ld.w	$t6, $t3, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_121
# %bb.120:                              # %cond.false34.i
                                        #   in Loop: Header=BB11_117 Depth=2
	ld.w	$t5, $t3, 16
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_121:                             # %cond.end52.i
                                        #   in Loop: Header=BB11_117 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_127
# %bb.122:                              # %if.then.i138
                                        #   in Loop: Header=BB11_117 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t2, .LBB11_124
# %bb.123:                              # %cond.false70.i
                                        #   in Loop: Header=BB11_117 Depth=2
	ld.w	$t1, $t1, 16
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_124:                             # %cond.end88.i
                                        #   in Loop: Header=BB11_117 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_126
# %bb.125:                              # %cond.false104.i
                                        #   in Loop: Header=BB11_117 Depth=2
	ld.w	$t1, $t3, 16
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_126:                             # %cond.end122.i
                                        #   in Loop: Header=BB11_117 Depth=2
	fcmp.clt.d	$fcc0, $fa3, $fa1
	bcnez	$fcc0, .LBB11_115
	b	.LBB11_116
	.p2align	4, , 16
.LBB11_127:                             # %defence_nfl_lt.exit
                                        #   in Loop: Header=BB11_117 Depth=2
	bge	$a7, $t0, .LBB11_116
	b	.LBB11_115
.LBB11_128:                             # %for.cond181.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(offence_ranks)
	ld.d	$a2, $a2, %got_pc_lo12(offence_ranks)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_130
	.p2align	4, , 16
.LBB11_129:                             # %for.inc206
                                        #   in Loop: Header=BB11_130 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_147
.LBB11_130:                             # %for.cond181.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_134 Depth 2
	bltu	$a1, $a0, .LBB11_147
# %bb.131:                              # %for.body183.preheader
                                        #   in Loop: Header=BB11_130 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_134
	.p2align	4, , 16
.LBB11_132:                             # %if.then191
                                        #   in Loop: Header=BB11_134 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_133:                             # %for.inc203
                                        #   in Loop: Header=BB11_134 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_129
.LBB11_134:                             # %for.body183
                                        #   Parent Loop BB11_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	ld.w	$t0, $a6, -4
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $s3, $t1
	slli.d	$t2, $t0, 3
	ldx.w	$t2, $s3, $t2
	bne	$t1, $t2, .LBB11_145
# %bb.135:                              # %if.end.i148
                                        #   in Loop: Header=BB11_134 Depth=2
	mul.d	$t2, $a7, $a3
	add.d	$t1, $fp, $t2
	ldx.w	$t2, $fp, $t2
	ld.w	$t3, $t1, 4
	ld.w	$t4, $t1, 8
	add.d	$t2, $t3, $t2
	add.w	$t3, $t2, $t4
	movgr2fr.w	$fa1, $t3
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_137
# %bb.136:                              # %cond.false.i155
                                        #   in Loop: Header=BB11_134 Depth=2
	ld.w	$t2, $t1, 12
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_137:                             # %cond.end.i159
                                        #   in Loop: Header=BB11_134 Depth=2
	mul.d	$t4, $t0, $a3
	add.d	$t2, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t2, 4
	ld.w	$t6, $t2, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_139
# %bb.138:                              # %cond.false50.i167
                                        #   in Loop: Header=BB11_134 Depth=2
	ld.w	$t5, $t2, 12
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_139:                             # %cond.end68.i171
                                        #   in Loop: Header=BB11_134 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_146
# %bb.140:                              # %if.then72.i176
                                        #   in Loop: Header=BB11_134 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_142
# %bb.141:                              # %cond.false87.i177
                                        #   in Loop: Header=BB11_134 Depth=2
	ld.w	$t1, $t1, 12
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_142:                             # %cond.end105.i181
                                        #   in Loop: Header=BB11_134 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_144
# %bb.143:                              # %cond.false121.i183
                                        #   in Loop: Header=BB11_134 Depth=2
	ld.w	$t1, $t2, 12
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_144:                             # %cond.end139.i187
                                        #   in Loop: Header=BB11_134 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB11_132
	b	.LBB11_133
	.p2align	4, , 16
.LBB11_145:                             # %if.then.i144
                                        #   in Loop: Header=BB11_134 Depth=2
	bge	$t1, $t2, .LBB11_133
	b	.LBB11_132
.LBB11_146:                             # %offence_lt.exit
                                        #   in Loop: Header=BB11_134 Depth=2
	blt	$a7, $t0, .LBB11_132
	b	.LBB11_133
.LBB11_147:                             # %for.cond219.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(offence_ranks_nfl)
	ld.d	$a2, $a2, %got_pc_lo12(offence_ranks_nfl)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_149
	.p2align	4, , 16
.LBB11_148:                             # %for.inc244
                                        #   in Loop: Header=BB11_149 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_164
.LBB11_149:                             # %for.cond219.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_153 Depth 2
	bltu	$a1, $a0, .LBB11_164
# %bb.150:                              # %for.body221.preheader
                                        #   in Loop: Header=BB11_149 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_153
	.p2align	4, , 16
.LBB11_151:                             # %if.then229
                                        #   in Loop: Header=BB11_153 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_152:                             # %for.inc241
                                        #   in Loop: Header=BB11_153 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_148
.LBB11_153:                             # %for.body221
                                        #   Parent Loop BB11_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	mul.d	$t0, $a7, $a3
	add.d	$t1, $fp, $t0
	ldx.w	$t0, $fp, $t0
	ld.w	$t2, $t1, 4
	ld.w	$t3, $t1, 8
	add.d	$t0, $t2, $t0
	add.w	$t2, $t0, $t3
	movgr2fr.w	$fa1, $t2
	fmov.d	$fa3, $fa0
	beqz	$t2, .LBB11_155
# %bb.154:                              # %cond.false.i197
                                        #   in Loop: Header=BB11_153 Depth=2
	ld.w	$t0, $t1, 12
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_155:                             # %cond.end.i202
                                        #   in Loop: Header=BB11_153 Depth=2
	ld.w	$t0, $a6, -4
	mul.d	$t4, $t0, $a3
	add.d	$t3, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t3, 4
	ld.w	$t6, $t3, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_157
# %bb.156:                              # %cond.false34.i211
                                        #   in Loop: Header=BB11_153 Depth=2
	ld.w	$t5, $t3, 12
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_157:                             # %cond.end52.i215
                                        #   in Loop: Header=BB11_153 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_163
# %bb.158:                              # %if.then.i222
                                        #   in Loop: Header=BB11_153 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t2, .LBB11_160
# %bb.159:                              # %cond.false70.i223
                                        #   in Loop: Header=BB11_153 Depth=2
	ld.w	$t1, $t1, 12
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_160:                             # %cond.end88.i227
                                        #   in Loop: Header=BB11_153 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_162
# %bb.161:                              # %cond.false104.i229
                                        #   in Loop: Header=BB11_153 Depth=2
	ld.w	$t1, $t3, 12
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_162:                             # %cond.end122.i233
                                        #   in Loop: Header=BB11_153 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB11_151
	b	.LBB11_152
	.p2align	4, , 16
.LBB11_163:                             # %offence_nfl_lt.exit
                                        #   in Loop: Header=BB11_153 Depth=2
	bge	$a7, $t0, .LBB11_152
	b	.LBB11_151
.LBB11_164:                             # %for.cond257.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(net_ranks)
	ld.d	$a2, $a2, %got_pc_lo12(net_ranks)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_166
	.p2align	4, , 16
.LBB11_165:                             # %for.inc282
                                        #   in Loop: Header=BB11_166 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_183
.LBB11_166:                             # %for.cond257.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_170 Depth 2
	bltu	$a1, $a0, .LBB11_183
# %bb.167:                              # %for.body259.preheader
                                        #   in Loop: Header=BB11_166 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_170
	.p2align	4, , 16
.LBB11_168:                             # %if.then267
                                        #   in Loop: Header=BB11_170 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_169:                             # %for.inc279
                                        #   in Loop: Header=BB11_170 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_165
.LBB11_170:                             # %for.body259
                                        #   Parent Loop BB11_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	ld.w	$t0, $a6, -4
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $s3, $t1
	slli.d	$t2, $t0, 3
	ldx.w	$t2, $s3, $t2
	bne	$t1, $t2, .LBB11_181
# %bb.171:                              # %if.end.i245
                                        #   in Loop: Header=BB11_170 Depth=2
	mul.d	$t2, $a7, $a3
	add.d	$t1, $fp, $t2
	ldx.w	$t2, $fp, $t2
	ld.w	$t3, $t1, 4
	ld.w	$t4, $t1, 8
	add.d	$t2, $t3, $t2
	add.w	$t3, $t2, $t4
	movgr2fr.w	$fa1, $t3
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_173
# %bb.172:                              # %cond.false.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	ld.w	$t2, $t1, 12
	ld.w	$t4, $t1, 16
	sub.d	$t2, $t2, $t4
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_173:                             # %cond.end.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	mul.d	$t4, $t0, $a3
	add.d	$t2, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t2, 4
	ld.w	$t6, $t2, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_175
# %bb.174:                              # %cond.false36.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	ld.w	$t5, $t2, 12
	ld.w	$t6, $t2, 16
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_175:                             # %cond.end58.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_182
# %bb.176:                              # %if.then.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_178
# %bb.177:                              # %cond.false76.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	ld.w	$t3, $t1, 12
	ld.w	$t1, $t1, 16
	sub.d	$t1, $t3, $t1
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_178:                             # %cond.end98.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_180
# %bb.179:                              # %cond.false114.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	ld.w	$t1, $t2, 12
	ld.w	$t2, $t2, 16
	sub.d	$t1, $t1, $t2
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_180:                             # %cond.end136.i.i
                                        #   in Loop: Header=BB11_170 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB11_168
	b	.LBB11_169
	.p2align	4, , 16
.LBB11_181:                             # %if.then.i241
                                        #   in Loop: Header=BB11_170 Depth=2
	bge	$t1, $t2, .LBB11_169
	b	.LBB11_168
.LBB11_182:                             # %net_lt.exit
                                        #   in Loop: Header=BB11_170 Depth=2
	blt	$a7, $t0, .LBB11_168
	b	.LBB11_169
.LBB11_183:                             # %for.cond295.preheader.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 27
	pcalau12i	$a2, %got_pc_hi20(net_ranks_nfl)
	ld.d	$a2, $a2, %got_pc_lo12(net_ranks_nfl)
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 92
	movgr2fr.d	$fa0, $zero
	b	.LBB11_185
	.p2align	4, , 16
.LBB11_184:                             # %for.inc320
                                        #   in Loop: Header=BB11_185 Depth=1
	addi.d	$a0, $a0, 1
	beqz	$a4, .LBB11_200
.LBB11_185:                             # %for.cond295.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_189 Depth 2
	bltu	$a1, $a0, .LBB11_200
# %bb.186:                              # %for.body297.preheader
                                        #   in Loop: Header=BB11_185 Depth=1
	move	$a4, $zero
	ori	$a5, $zero, 28
	move	$a6, $a2
	b	.LBB11_189
	.p2align	4, , 16
.LBB11_187:                             # %if.then305
                                        #   in Loop: Header=BB11_189 Depth=2
	st.w	$a7, $a6, -4
	st.w	$t0, $a6, 0
	ori	$a4, $zero, 1
.LBB11_188:                             # %for.inc317
                                        #   in Loop: Header=BB11_189 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -4
	bgeu	$a0, $a5, .LBB11_184
.LBB11_189:                             # %for.body297
                                        #   Parent Loop BB11_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	mul.d	$t0, $a7, $a3
	add.d	$t1, $fp, $t0
	ldx.w	$t0, $fp, $t0
	ld.w	$t2, $t1, 4
	ld.w	$t3, $t1, 8
	add.d	$t0, $t2, $t0
	add.w	$t3, $t0, $t3
	movgr2fr.w	$fa1, $t3
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_191
# %bb.190:                              # %cond.false.i253
                                        #   in Loop: Header=BB11_189 Depth=2
	ld.w	$t0, $t1, 12
	ld.w	$t2, $t1, 16
	sub.d	$t0, $t0, $t2
	movgr2fr.w	$fa2, $t0
	ffint.d.w	$fa2, $fa2
	ffint.d.w	$fa3, $fa1
	fdiv.d	$fa3, $fa2, $fa3
.LBB11_191:                             # %cond.end.i258
                                        #   in Loop: Header=BB11_189 Depth=2
	ld.w	$t0, $a6, -4
	mul.d	$t4, $t0, $a3
	add.d	$t2, $fp, $t4
	ldx.w	$t4, $fp, $t4
	ld.w	$t5, $t2, 4
	ld.w	$t6, $t2, 8
	add.d	$t4, $t5, $t4
	add.w	$t4, $t4, $t6
	movgr2fr.w	$fa2, $t4
	fmov.d	$fa4, $fa0
	beqz	$t4, .LBB11_193
# %bb.192:                              # %cond.false36.i
                                        #   in Loop: Header=BB11_189 Depth=2
	ld.w	$t5, $t2, 12
	ld.w	$t6, $t2, 16
	sub.d	$t5, $t5, $t6
	movgr2fr.w	$fa4, $t5
	ffint.d.w	$fa4, $fa4
	ffint.d.w	$fa5, $fa2
	fdiv.d	$fa4, $fa4, $fa5
.LBB11_193:                             # %cond.end58.i
                                        #   in Loop: Header=BB11_189 Depth=2
	fcmp.ceq.d	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB11_199
# %bb.194:                              # %if.then.i263
                                        #   in Loop: Header=BB11_189 Depth=2
	fmov.d	$fa3, $fa0
	beqz	$t3, .LBB11_196
# %bb.195:                              # %cond.false76.i
                                        #   in Loop: Header=BB11_189 Depth=2
	ld.w	$t3, $t1, 12
	ld.w	$t1, $t1, 16
	sub.d	$t1, $t3, $t1
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa3, $fa3, $fa1
.LBB11_196:                             # %cond.end98.i
                                        #   in Loop: Header=BB11_189 Depth=2
	fmov.d	$fa1, $fa0
	beqz	$t4, .LBB11_198
# %bb.197:                              # %cond.false114.i
                                        #   in Loop: Header=BB11_189 Depth=2
	ld.w	$t1, $t2, 12
	ld.w	$t2, $t2, 16
	sub.d	$t1, $t1, $t2
	movgr2fr.w	$fa1, $t1
	ffint.d.w	$fa1, $fa1
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
.LBB11_198:                             # %cond.end136.i
                                        #   in Loop: Header=BB11_189 Depth=2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	bcnez	$fcc0, .LBB11_187
	b	.LBB11_188
	.p2align	4, , 16
.LBB11_199:                             # %net_nfl_lt.exit
                                        #   in Loop: Header=BB11_189 Depth=2
	bge	$a7, $t0, .LBB11_188
	b	.LBB11_187
.LBB11_200:                             # %for.end322
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end11:
	.size	sort_all, .Lfunc_end11-sort_all
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conf_standings
	.addrsig_sym team_info
	.addrsig_sym standings
	.addrsig_sym abs_standings
