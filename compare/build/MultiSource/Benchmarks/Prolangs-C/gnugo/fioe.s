	.file	"fioe.c"
	.text
	.globl	fioe                            # -- Begin function fioe
	.p2align	5
	.type	fioe,@function
fioe:                                   # @fioe
# %bb.0:                                # %entry
	ori	$a2, $zero, 18
	beq	$a0, $a2, .LBB0_7
# %bb.1:                                # %entry
	bnez	$a0, .LBB0_11
# %bb.2:                                # %if.then
	beqz	$a1, .LBB0_16
# %bb.3:                                # %if.then
	ori	$a0, $zero, 18
	bne	$a1, $a0, .LBB0_20
# %bb.4:                                # %land.lhs.true11
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	ld.bu	$a3, $a0, 37
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a3, .LBB0_21
# %bb.5:                                # %land.lhs.true11
	ld.bu	$a3, $a0, 17
	ori	$a0, $zero, 1
	bne	$a2, $a3, .LBB0_21
.LBB0_6:                                # %return
	ret
.LBB0_7:                                # %if.then40
	beqz	$a1, .LBB0_18
# %bb.8:                                # %if.then40
	ori	$a0, $zero, 18
	bne	$a1, $a0, .LBB0_24
# %bb.9:                                # %land.lhs.true55
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	ld.bu	$a3, $a0, 341
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a3, .LBB0_25
# %bb.10:                               # %land.lhs.true55
	ld.bu	$a3, $a0, 359
	ori	$a0, $zero, 1
	beq	$a2, $a3, .LBB0_6
	b	.LBB0_25
.LBB0_11:                               # %if.end86
	alsl.d	$a2, $a0, $a0, 3
	alsl.d	$a0, $a2, $a0, 1
	pcalau12i	$a2, %got_pc_hi20(p)
	ld.d	$a2, $a2, %got_pc_lo12(p)
	ori	$a3, $zero, 18
	add.d	$a0, $a2, $a0
	beq	$a1, $a3, .LBB0_28
# %bb.12:                               # %if.end86
	bnez	$a1, .LBB0_32
# %bb.13:                               # %if.then89
	ld.bu	$a1, $a0, 1
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a1, .LBB0_36
# %bb.14:                               # %land.lhs.true96
	ld.bu	$a2, $a0, -19
	bne	$a1, $a2, .LBB0_36
# %bb.15:                               # %land.lhs.true104
	ld.bu	$a2, $a0, 19
	b	.LBB0_31
.LBB0_16:                               # %land.lhs.true
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	ld.bu	$a3, $a0, 19
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a3, .LBB0_21
# %bb.17:                               # %land.lhs.true
	ld.bu	$a3, $a0, 1
	ori	$a0, $zero, 1
	beq	$a2, $a3, .LBB0_6
	b	.LBB0_21
.LBB0_18:                               # %land.lhs.true43
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	ld.bu	$a3, $a0, 323
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a3, .LBB0_25
# %bb.19:                               # %land.lhs.true43
	ld.bu	$a3, $a0, 343
	ori	$a0, $zero, 1
	beq	$a2, $a3, .LBB0_6
	b	.LBB0_25
.LBB0_20:                               # %if.then.if.end20_crit_edge
	pcalau12i	$a0, %got_pc_hi20(mymove)
	ld.d	$a0, $a0, %got_pc_lo12(mymove)
	ld.w	$a2, $a0, 0
.LBB0_21:                               # %if.end20
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	add.d	$a3, $a0, $a1
	ld.bu	$a3, $a3, 19
	bne	$a2, $a3, .LBB0_36
# %bb.22:                               # %land.lhs.true24
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, -1
	bne	$a2, $a1, .LBB0_36
# %bb.23:                               # %land.lhs.true30
	ld.bu	$a1, $a0, 1
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB0_6
	b	.LBB0_36
.LBB0_24:                               # %if.then40.if.end64_crit_edge
	pcalau12i	$a0, %got_pc_hi20(mymove)
	ld.d	$a0, $a0, %got_pc_lo12(mymove)
	ld.w	$a2, $a0, 0
.LBB0_25:                               # %if.end64
	pcalau12i	$a0, %got_pc_hi20(p)
	ld.d	$a0, $a0, %got_pc_lo12(p)
	add.d	$a3, $a0, $a1
	ld.bu	$a3, $a3, 323
	bne	$a2, $a3, .LBB0_36
# %bb.26:                               # %land.lhs.true70
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, 341
	bne	$a2, $a1, .LBB0_36
# %bb.27:                               # %land.lhs.true77
	addi.d	$a0, $a0, 342
	ld.bu	$a1, $a0, 1
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB0_6
	b	.LBB0_36
.LBB0_28:                               # %if.then117
	ld.bu	$a1, $a0, 17
	pcalau12i	$a2, %got_pc_hi20(mymove)
	ld.d	$a2, $a2, %got_pc_lo12(mymove)
	ld.w	$a2, $a2, 0
	bne	$a2, $a1, .LBB0_36
# %bb.29:                               # %land.lhs.true124
	ld.bu	$a2, $a0, -1
	bne	$a1, $a2, .LBB0_36
# %bb.30:                               # %land.lhs.true132
	ld.bu	$a2, $a0, 37
.LBB0_31:                               # %land.lhs.true104
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB0_6
	b	.LBB0_36
.LBB0_32:                               # %if.end142
	add.d	$a3, $a0, $a1
	ld.bu	$a2, $a3, -1
	pcalau12i	$a4, %got_pc_hi20(mymove)
	ld.d	$a4, $a4, %got_pc_lo12(mymove)
	ld.w	$a4, $a4, 0
	bne	$a4, $a2, .LBB0_36
# %bb.33:                               # %land.lhs.true151
	ld.bu	$a3, $a3, 1
	bne	$a2, $a3, .LBB0_36
# %bb.34:                               # %land.lhs.true160
	add.d	$a0, $a0, $a1
	ld.bu	$a1, $a0, -19
	bne	$a2, $a1, .LBB0_36
# %bb.35:                               # %land.lhs.true169
	ld.bu	$a1, $a0, 19
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB0_6
.LBB0_36:                               # %if.else179
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	fioe, .Lfunc_end0-fioe
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
