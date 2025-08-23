	.file	"z03.c"
	.text
	.globl	InitFiles                       # -- Begin function InitFiles
	.p2align	5
	.type	InitFiles,@function
InitFiles:                              # @InitFiles
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s1, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s1, 17
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s0, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s2, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.w	$a2, $s2, 0
	pcalau12i	$s3, %pc_hi20(no_fpos)
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.else8
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_3
.LBB0_2:                                # %if.then6
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_3:                                # %if.end14
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	pcalau12i	$a3, %pc_hi20(file_type)
	addi.d	$fp, $a3, %pc_lo12(file_type)
	st.d	$a0, $fp, 0
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_5
# %bb.4:                                # %if.else8.1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_6
.LBB0_5:                                # %if.then6.1
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_6:                                # %if.end14.1
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 8
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                # %if.else8.2
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_9
.LBB0_8:                                # %if.then6.2
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_9:                                # %if.end14.2
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 16
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_11
# %bb.10:                               # %if.else8.3
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_12
.LBB0_11:                               # %if.then6.3
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_12:                               # %if.end14.3
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 24
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_14
# %bb.13:                               # %if.else8.4
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_15
.LBB0_14:                               # %if.then6.4
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_15:                               # %if.end14.4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 32
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_17
# %bb.16:                               # %if.else8.5
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_18
.LBB0_17:                               # %if.then6.5
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_18:                               # %if.end14.5
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 40
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_20
# %bb.19:                               # %if.else8.6
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_21
.LBB0_20:                               # %if.then6.6
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_21:                               # %if.end14.6
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 48
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_23
# %bb.22:                               # %if.else8.7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_24
.LBB0_23:                               # %if.then6.7
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_24:                               # %if.end14.7
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 56
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_26
# %bb.25:                               # %if.else8.8
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_27
.LBB0_26:                               # %if.then6.8
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_27:                               # %if.end14.8
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 64
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_29
# %bb.28:                               # %if.else8.9
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_30
.LBB0_29:                               # %if.then6.9
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_30:                               # %if.end14.9
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a0, $s1, 17
	ori	$a2, $zero, 17
	st.b	$a2, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $s0, $a2
	st.d	$a1, $fp, 72
	st.w	$a0, $s2, 0
	beqz	$a2, .LBB0_32
# %bb.31:                               # %if.else8.10
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a2, $a1, 0
	ld.d	$a1, $a2, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB0_33
.LBB0_32:                               # %if.then6.10
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$a2, $a0
	st.d	$a0, $a1, 0
.LBB0_33:                               # %if.end14.10
	st.d	$a2, $a2, 16
	st.d	$a2, $a2, 8
	st.d	$a2, $a2, 0
	ld.bu	$a3, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a2, 32
	st.d	$a2, $a2, 24
	slli.d	$a0, $a3, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a2, $fp, 80
	st.w	$a3, $s2, 0
	beqz	$a0, .LBB0_35
# %bb.34:                               # %if.else45
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a3, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_36
.LBB0_35:                               # %if.then43
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_36:                               # %if.end54
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	pcalau12i	$a3, %pc_hi20(file_path)
	addi.d	$fp, $a3, %pc_lo12(file_path)
	st.d	$a0, $fp, 0
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_38
# %bb.37:                               # %if.else45.1
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_39
.LBB0_38:                               # %if.then43.1
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_39:                               # %if.end54.1
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 8
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_41
# %bb.40:                               # %if.else45.2
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_42
.LBB0_41:                               # %if.then43.2
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_42:                               # %if.end54.2
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 16
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_44
# %bb.43:                               # %if.else45.3
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_45
.LBB0_44:                               # %if.then43.3
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_45:                               # %if.end54.3
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 24
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_47
# %bb.46:                               # %if.else45.4
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_48
.LBB0_47:                               # %if.then43.4
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_48:                               # %if.end54.4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 32
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_50
# %bb.49:                               # %if.else45.5
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_51
.LBB0_50:                               # %if.then43.5
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_51:                               # %if.end54.5
	st.d	$a0, $a2, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s1, 17
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a1, $fp, 40
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_53
# %bb.52:                               # %if.else45.6
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_54
.LBB0_53:                               # %if.then43.6
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_54:                               # %if.end54.6
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.bu	$a2, $s1, 17
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	st.d	$a0, $fp, 48
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_56
# %bb.55:                               # %if.else45.7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	b	.LBB0_57
.LBB0_56:                               # %if.then43.7
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	move	$a1, $a0
.LBB0_57:                               # %if.end54.7
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $fp, 56
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB0_59
# %bb.58:                               # %if.then.i
	ld.d	$a4, $s3, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a2, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_59:                               # %ftab_new.exit
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
	vrepli.b	$vr0, 0
	ld.bu	$a2, $s1, 17
	vst	$vr0, $fp, 4
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 20
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	st.w	$zero, $fp, 52
	pcalau12i	$a1, %pc_hi20(file_tab)
	st.d	$fp, $a1, %pc_lo12(file_tab)
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB0_61
# %bb.60:                               # %if.else88
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_62
.LBB0_61:                               # %if.then86
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_62:                               # %if.end97
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 0
	ld.d	$a2, $s3, %pc_lo12(no_fpos)
	st.d	$a0, $a0, 8
	pcalau12i	$s4, %pc_hi20(empty_path)
	st.d	$a0, $s4, %pc_lo12(empty_path)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	move	$fp, $a0
	st.w	$a2, $s2, 0
	beqz	$a1, .LBB0_64
# %bb.63:                               # %if.else126
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a0, $a2, 0
	b	.LBB0_65
.LBB0_64:                               # %if.then124
	ld.d	$a1, $s3, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_65:                               # %if.end135
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	ld.d	$a4, $s4, %pc_lo12(empty_path)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 8
	st.d	$a1, $a3, 0
	st.d	$a1, $a0, 0
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB0_67
# %bb.66:                               # %cond.false155
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a1, 0
	ld.d	$a4, $a0, 0
	ld.d	$a1, $a3, 0
	st.d	$a4, $a6, 8
.LBB0_67:                               # %cond.end177
	st.d	$a1, $a0, 0
	st.d	$fp, $a2, 0
	beqz	$fp, .LBB0_70
# %bb.68:                               # %cond.end177
	beqz	$a1, .LBB0_70
# %bb.69:                               # %cond.false186
	ld.d	$a0, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
.LBB0_70:                               # %cond.end210
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	InitFiles, .Lfunc_end0-InitFiles
                                        # -- End function
	.globl	AddToPath                       # -- Begin function AddToPath
	.p2align	5
	.type	AddToPath,@function
AddToPath:                              # @AddToPath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	ld.bu	$a3, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$a4, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a5, $a2, %got_pc_lo12(zz_size)
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a4, $a2
	move	$fp, $a1
	move	$s0, $a0
	st.w	$a3, $a5, 0
	beqz	$a2, .LBB1_2
# %bb.1:                                # %if.else7
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a2, $a0, 0
	ld.d	$a0, $a2, 0
	alsl.d	$a1, $a3, $a4, 3
	st.d	$a0, $a1, 0
	b	.LBB1_3
.LBB1_2:                                # %if.then5
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a1, $a0, %pc_lo12(no_fpos)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.LBB1_3:                                # %if.end13
	st.b	$zero, $a2, 32
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
	st.d	$a2, $a2, 8
	st.d	$a2, $a2, 0
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a1, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	slli.d	$a3, $s0, 3
	pcalau12i	$a4, %pc_hi20(file_path)
	addi.d	$a4, $a4, %pc_lo12(file_path)
	ldx.d	$a4, $a4, $a3
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB1_5
# %bb.4:                                # %cond.false32
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a2, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a1, 0
	st.d	$a4, $a6, 8
.LBB1_5:                                # %cond.end54
	st.d	$a2, $a0, 0
	st.d	$fp, $a3, 0
	beqz	$fp, .LBB1_8
# %bb.6:                                # %cond.end54
	beqz	$a2, .LBB1_8
# %bb.7:                                # %cond.false63
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a2, 16
	st.d	$a0, $a1, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a0, $a2, 16
	st.d	$a2, $a0, 24
.LBB1_8:                                # %cond.end87
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	AddToPath, .Lfunc_end1-AddToPath
                                        # -- End function
	.globl	DefineFile                      # -- Begin function DefineFile
	.p2align	5
	.type	DefineFile,@function
DefineFile:                             # @DefineFile
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
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a0, $zero, 11
	pcalau12i	$s5, %pc_hi20(no_fpos)
	bge	$a3, $a0, .LBB2_7
# %bb.1:                                # %if.end
	bnez	$fp, .LBB2_9
# %bb.2:                                # %land.lhs.true
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 3
	blt	$a1, $a2, .LBB2_9
# %bb.3:                                # %if.then5
	bstrpick.d	$a0, $a0, 30, 0
	add.d	$a0, $s3, $a0
	addi.d	$s4, $a0, -3
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_5
# %bb.4:                                # %if.then10
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	move	$a4, $s1
	move	$a5, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_5:                                # %if.end12
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_9
# %bb.6:                                # %if.then19
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	move	$a4, $s1
	move	$a5, $s3
	b	.LBB2_8
.LBB2_7:                                # %if.end.thread
	ld.d	$a4, $s5, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
.LBB2_8:                                # %if.end22
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %if.end22
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s4
	srli.d	$a0, $a0, 11
	beqz	$a0, .LBB2_11
# %bb.10:                               # %if.then27
	ld.d	$a4, $s5, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %if.end29
	ori	$a0, $zero, 11
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(MakeWordTwo)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a4, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	move	$s1, $a0
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB2_13
# %bb.12:                               # %if.else42
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$a1, $a0, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a0, $a2, 0
	b	.LBB2_14
.LBB2_13:                               # %if.then40
	ld.d	$a1, $s5, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB2_14:                               # %if.end49
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$a0, $a0, %got_pc_lo12(zz_res)
	slli.d	$a3, $fp, 3
	pcalau12i	$a4, %pc_hi20(file_type)
	addi.d	$a4, $a4, %pc_lo12(file_type)
	ldx.d	$a4, $a4, $a3
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	st.d	$a1, $a0, 0
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB2_16
# %bb.15:                               # %cond.false68
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a1, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a1, 0
	ld.d	$a4, $a0, 0
	ld.d	$a1, $a2, 0
	st.d	$a4, $a6, 8
.LBB2_16:                               # %cond.end90
	st.d	$a1, $a0, 0
	st.d	$s1, $a3, 0
	beqz	$s1, .LBB2_19
# %bb.17:                               # %cond.end90
	beqz	$a1, .LBB2_19
# %bb.18:                               # %cond.false99
	ld.d	$a0, $s1, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a1, 16
	st.d	$a0, $a2, 0
	st.d	$a3, $s1, 16
	st.d	$s1, $a3, 24
	st.d	$a0, $a1, 16
	st.d	$a1, $a0, 24
.LBB2_19:                               # %cond.end123
	st.w	$s0, $s1, 48
	ld.wu	$a0, $s1, 40
	st.d	$zero, $s1, 56
	lu12i.w	$a1, 523264
	ori	$a1, $a1, 4095
	and	$a0, $a0, $a1
	bstrins.d	$a0, $fp, 21, 12
	st.w	$a0, $s1, 40
	pcalau12i	$a0, %pc_hi20(file_tab)
	addi.d	$a1, $a0, %pc_lo12(file_tab)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ftab_insert)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s1, 40
	andi	$a0, $a0, 4095
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
.Lfunc_end2:
	.size	DefineFile, .Lfunc_end2-DefineFile
                                        # -- End function
	.p2align	5                               # -- Begin function ftab_insert
	.type	ftab_insert,@function
ftab_insert:                            # @ftab_insert
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
	ld.d	$s1, $a1, 0
	ld.w	$s4, $s1, 0
	ld.w	$a1, $s1, 4
	addi.w	$a2, $s4, -1
	move	$s0, $a0
	bne	$a1, $a2, .LBB3_14
# %bb.1:                                # %if.then
	slli.w	$s5, $s4, 1
	slli.d	$s3, $s5, 4
	addi.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	bnez	$a0, .LBB3_3
# %bb.2:                                # %if.then.i30
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a2, $a0, %pc_lo12(.L.str.33)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %if.end.i
	st.w	$s5, $s2, 0
	ori	$s5, $zero, 1
	st.w	$zero, $s2, 4
	blt	$s4, $s5, .LBB3_5
# %bb.4:                                # %for.body.lr.ph.i
	addi.d	$a0, $s2, 8
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_5:                                # %ftab_new.exit
	ld.w	$a0, $s1, 4
	st.d	$s2, $sp, 8
	blt	$a0, $s5, .LBB3_8
# %bb.6:                                # %for.body.i.lr.ph
	move	$s2, $zero
	addi.d	$s3, $s1, 24
	.p2align	4, , 16
.LBB3_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(ftab_insert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 4
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 16
	blt	$s2, $a0, .LBB3_7
.LBB3_8:                                # %for.cond1.i.preheader
	ld.w	$a1, $s1, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_13
# %bb.9:                                # %for.body3.i.lr.ph
	move	$s2, $zero
	ori	$s3, $zero, 16
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %for.inc13.i
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 16
	bge	$s2, $a1, .LBB3_13
.LBB3_11:                               # %for.body3.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s3
	beqz	$a0, .LBB3_10
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB3_11 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	b	.LBB3_10
.LBB3_13:                               # %ftab_rehash.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	ld.w	$a1, $s1, 4
	st.d	$s1, $fp, 0
.LBB3_14:                               # %if.end
	addi.w	$s2, $a1, 1
	lu12i.w	$a0, 15
	ori	$a5, $a0, 4095
	st.w	$s2, $s1, 4
	blt	$a1, $a5, .LBB3_16
# %bb.15:                               # %if.then4
	addi.d	$a4, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %if.end6
	ld.bu	$a1, $s0, 65
	ld.bu	$a0, $s0, 64
	beqz	$a1, .LBB3_19
# %bb.17:                               # %while.body.preheader
	addi.d	$a2, $s0, 66
	.p2align	4, , 16
.LBB3_18:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$a3, $a1, 255
	ld.bu	$a1, $a2, 0
	add.w	$a0, $a0, $a3
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB3_18
.LBB3_19:                               # %while.end
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 0
	mod.w	$a0, $a0, $a2
	alsl.d	$a1, $a0, $a1, 4
	ld.d	$a1, $a1, 16
	slli.d	$s1, $a0, 4
	bnez	$a1, .LBB3_24
# %bb.20:                               # %if.then12
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 17
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB3_22
# %bb.21:                               # %if.else25
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB3_23
.LBB3_22:                               # %if.then23
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a1, $a0, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB3_23:                               # %if.end32
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 0
	add.d	$a1, $a1, $s1
	st.d	$a0, $a1, 16
.LBB3_24:                               # %if.end49
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB3_26
# %bb.25:                               # %if.else63
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB3_27
.LBB3_26:                               # %if.then61
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a1, $a0, %pc_lo12(no_fpos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB3_27:                               # %if.end72
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	st.d	$a0, $a1, 0
	ld.d	$a3, $fp, 0
	add.d	$a3, $a3, $s1
	ld.d	$a4, $a3, 16
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB3_29
# %bb.28:                               # %cond.false96
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
.LBB3_29:                               # %cond.end118
	st.d	$a0, $a1, 0
	st.d	$s0, $a3, 0
	beqz	$a0, .LBB3_31
# %bb.30:                               # %cond.false127
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_31:                               # %cond.end151
	ld.wu	$a0, $s0, 40
	srli.d	$a0, $a0, 12
	move	$a1, $s2
	bstrins.d	$a1, $a0, 63, 12
	st.w	$a1, $s0, 40
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s2, $a0, 4
	st.d	$s0, $a0, 8
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
.Lfunc_end3:
	.size	ftab_insert, .Lfunc_end3-ftab_insert
                                        # -- End function
	.globl	FirstFile                       # -- Begin function FirstFile
	.p2align	5
	.type	FirstFile,@function
FirstFile:                              # @FirstFile
# %bb.0:                                # %entry
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(file_type)
	addi.d	$a1, $a1, %pc_lo12(file_type)
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB4_2
# %bb.1:
	move	$a0, $zero
	ret
	.p2align	4, , 16
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB4_2
# %bb.3:                                # %for.end
	ld.wu	$a0, $a0, 40
	andi	$a0, $a0, 4095
	ret
.Lfunc_end4:
	.size	FirstFile, .Lfunc_end4-FirstFile
                                        # -- End function
	.globl	NextFile                        # -- Begin function NextFile
	.p2align	5
	.type	NextFile,@function
NextFile:                               # @NextFile
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 8
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB5_2
# %bb.1:
	move	$a0, $zero
	ret
	.p2align	4, , 16
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB5_2
# %bb.3:                                # %for.end
	ld.wu	$a0, $a0, 40
	andi	$a0, $a0, 4095
	ret
.Lfunc_end5:
	.size	NextFile, .Lfunc_end5-NextFile
                                        # -- End function
	.globl	FileNum                         # -- Begin function FileNum
	.p2align	5
	.type	FileNum,@function
FileNum:                                # @FileNum
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_2:                                # %if.end
	addi.d	$a0, $sp, 16
	addi.d	$s1, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(file_tab)
	ld.d	$a0, $a0, %pc_lo12(file_tab)
	ld.bu	$a2, $sp, 16
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB6_3:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a4, $a1, $s1
	move	$a3, $a2
	add.w	$a2, $a2, $a4
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB6_3
# %bb.4:                                # %while.end.i
	ld.w	$a1, $a0, 0
	mod.w	$a1, $a3, $a1
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$fp, $a0, 16
	beqz	$fp, .LBB6_11
# %bb.5:                                # %for.cond.i.preheader
	move	$s0, $fp
	.p2align	4, , 16
.LBB6_6:                                # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	ld.d	$s0, $s0, 8
	beq	$s0, $fp, .LBB6_11
# %bb.7:                                # %for.cond9.i.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$s1, $s0
	.p2align	4, , 16
.LBB6_8:                                # %for.cond9.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB6_8
# %bb.9:                                # %for.end.i
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $s1, 64
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_6
# %bb.10:                               # %cond.false
	ld.wu	$a0, $s1, 40
	andi	$a0, $a0, 4095
	b	.LBB6_12
.LBB6_11:
	move	$a0, $zero
.LBB6_12:                               # %cond.end
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end6:
	.size	FileNum, .Lfunc_end6-FileNum
                                        # -- End function
	.globl	DatabaseFileNum                 # -- Begin function DatabaseFileNum
	.p2align	5
	.type	DatabaseFileNum,@function
DatabaseFileNum:                        # @DatabaseFileNum
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(file_tab)
	ld.d	$a2, $s2, %pc_lo12(file_tab)
	ori	$s3, $zero, 3
	ori	$s4, $zero, 10
	pcalau12i	$s0, %pc_hi20(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$fp, $a1, %pc_lo12(.L.str.9)
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_1:                                # %sw.bb5
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a0, $s1, 34
	beqz	$a0, .LBB7_14
.LBB7_2:                                # %tailrecurse.backedge
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$a0, $s1, 32
.LBB7_3:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a1, $a0, 2
	alsl.d	$a3, $a1, $a2, 4
	ld.d	$s1, $a3, 8
	ld.w	$a3, $s1, 40
	bstrpick.d	$a3, $a3, 21, 12
	beq	$a3, $s3, .LBB7_1
# %bb.4:                                # %tailrecurse
                                        #   in Loop: Header=BB7_3 Depth=1
	bne	$a3, $s4, .LBB7_7
# %bb.5:                                # %sw.bb15
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a0, $s1, 34
	bnez	$a0, .LBB7_2
# %bb.6:                                # %if.then21
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a4, $s0, %pc_lo12(no_fpos)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 7
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(file_tab)
	addi.d	$a0, $s1, 32
	b	.LBB7_3
.LBB7_7:                                # %tailrecurse
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB7_13
# %bb.8:                                # %if.end.i
	move	$fp, $a0
	ld.d	$a0, $s1, 8
	beq	$a0, $s1, .LBB7_11
# %bb.9:                                # %for.cond.i.preheader
	move	$s1, $a0
	.p2align	4, , 16
.LBB7_10:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB7_10
.LBB7_11:                               # %FileName.exit
	addi.d	$s0, $s1, 64
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FileNum)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bnez	$a0, .LBB7_14
# %bb.12:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a3, $zero, 3
	move	$a0, $s0
	move	$a2, $fp
	move	$a4, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(DefineFile)
	jr	$t8
.LBB7_13:                               # %sw.default
	ld.d	$a4, $s0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 8
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $zero
.LBB7_14:                               # %sw.epilog
	move	$a0, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	DatabaseFileNum, .Lfunc_end7-DatabaseFileNum
                                        # -- End function
	.globl	FileName                        # -- Begin function FileName
	.p2align	5
	.type	FileName,@function
FileName:                               # @FileName
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$fp, $a0, 8
	bnez	$fp, .LBB8_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %if.end
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB8_5
# %bb.3:                                # %for.cond.preheader
	move	$fp, $a0
	.p2align	4, , 16
.LBB8_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB8_4
.LBB8_5:                                # %if.end14
	addi.d	$a0, $fp, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	FileName, .Lfunc_end8-FileName
                                        # -- End function
	.globl	FullFileName                    # -- Begin function FullFileName
	.p2align	5
	.type	FullFileName,@function
FullFileName:                           # @FullFileName
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s0, $a0, 8
	beqz	$s0, .LBB9_6
# %bb.1:                                # %if.end
	ld.w	$a1, $s0, 40
	ld.d	$a0, $s0, 8
	addi.w	$a2, $zero, -1
	bge	$a2, $a1, .LBB9_7
.LBB9_2:                                # %if.else
	beq	$a0, $s0, .LBB9_5
# %bb.3:                                # %for.cond39.preheader
	move	$s0, $a0
	.p2align	4, , 16
.LBB9_4:                                # %for.cond39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB9_4
.LBB9_5:                                # %if.end51
	addi.d	$a0, $s0, 64
	b	.LBB9_11
.LBB9_6:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 40
	ld.d	$a0, $s0, 8
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB9_2
.LBB9_7:                                # %if.then1
	beq	$a0, $s0, .LBB9_10
# %bb.8:                                # %for.cond.preheader
	move	$s0, $a0
	.p2align	4, , 16
.LBB9_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB9_9
.LBB9_10:                               # %if.end15
	pcalau12i	$a0, %pc_hi20(FullFileName.ffbp)
	ld.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	ori	$a2, $zero, 1
	andn	$a1, $a2, $a1
	st.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	slli.d	$a0, $a1, 9
	pcalau12i	$a1, %pc_hi20(FullFileName.ffbuff)
	addi.d	$a1, $a1, %pc_lo12(FullFileName.ffbuff)
	add.d	$fp, $a1, $a0
	addi.d	$a1, $s0, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	lu12i.w	$a2, 1862
	ori	$a2, $a2, 3118
	stx.w	$a2, $fp, $a1
.LBB9_11:                               # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	FullFileName, .Lfunc_end9-FullFileName
                                        # -- End function
	.globl	EchoFilePos                     # -- Begin function EchoFilePos
	.p2align	5
	.type	EchoFilePos,@function
EchoFilePos:                            # @EchoFilePos
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(bp)
	ld.w	$a1, $fp, %pc_lo12(bp)
	ori	$a2, $zero, 1
	andn	$a1, $a2, $a1
	slli.d	$a2, $a1, 9
	pcalau12i	$a3, %pc_hi20(buff)
	addi.d	$s0, $a3, %pc_lo12(buff)
	stx.b	$zero, $s0, $a2
	ld.hu	$a2, $a0, 2
	st.w	$a1, $fp, %pc_lo12(bp)
	beqz	$a2, .LBB10_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(append_fpos)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(bp)
.LBB10_2:                               # %if.end
	slli.d	$a0, $a1, 9
	add.d	$a0, $s0, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	EchoFilePos, .Lfunc_end10-EchoFilePos
                                        # -- End function
	.p2align	5                               # -- Begin function append_fpos
	.type	append_fpos,@function
append_fpos:                            # @append_fpos
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(file_tab)
	ld.d	$a0, $a0, %pc_lo12(file_tab)
	ld.hu	$a1, $fp, 2
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$s5, $a0, 8
	bnez	$s5, .LBB11_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a5, $a0, %pc_lo12(.L.str.35)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB11_2:                               # %if.end
	ld.hu	$a0, $s5, 34
	pcalau12i	$a1, %pc_hi20(buff)
	addi.d	$s3, $a1, %pc_lo12(buff)
	pcalau12i	$s4, %pc_hi20(bp)
	beqz	$a0, .LBB11_6
# %bb.3:                                # %if.then4
	addi.d	$a0, $s5, 32
	pcaddu18i	$ra, %call36(append_fpos)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(bp)
	slli.d	$a0, $s6, 9
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -510
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB11_5
# %bb.4:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 9
	ori	$a3, $zero, 1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(bp)
.LBB11_5:                               # %if.end16
	slli.d	$a0, $s6, 9
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	stx.h	$a1, $s0, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 47
	stx.h	$a1, $s0, $a0
	b	.LBB11_7
.LBB11_6:                               # %if.end.if.end25_crit_edge
	ld.w	$s6, $s4, %pc_lo12(bp)
.LBB11_7:                               # %if.end25
	slli.d	$a0, $s6, 9
	add.d	$s1, $s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s0, $s5, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, -499
	addi.w	$a1, $zero, -513
	bltu	$a1, $a0, .LBB11_9
# %bb.8:                                # %if.then36
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, %pc_lo12(bp)
.LBB11_9:                               # %if.end41
	slli.d	$a0, $s6, 9
	add.d	$s1, $s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 32
	stx.h	$s2, $s1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 34
	stx.h	$s5, $s1, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$s5, $s1, $a0
	ld.wu	$a0, $fp, 4
	bstrpick.d	$a0, $a0, 19, 0
	beqz	$a0, .LBB11_11
# %bb.10:                               # %if.then62
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$s2, $s1, $a0
	ld.wu	$a0, $fp, 4
	bstrpick.d	$a0, $a0, 19, 0
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(bp)
	slli.d	$a0, $a0, 9
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 44
	stx.h	$a1, $s0, $a0
	ld.wu	$a0, $fp, 4
	srli.d	$a0, $a0, 20
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
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
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.LBB11_11:                              # %if.end85
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
.Lfunc_end11:
	.size	append_fpos, .Lfunc_end11-append_fpos
                                        # -- End function
	.globl	EchoAltFilePos                  # -- Begin function EchoAltFilePos
	.p2align	5
	.type	EchoAltFilePos,@function
EchoAltFilePos:                         # @EchoAltFilePos
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(bp)
	ld.w	$a1, $s3, %pc_lo12(bp)
	move	$fp, $a0
	ori	$a0, $zero, 1
	andn	$a0, $a0, $a1
	slli.d	$s0, $a0, 9
	pcalau12i	$a1, %pc_hi20(buff)
	addi.d	$s2, $a1, %pc_lo12(buff)
	stx.b	$zero, $s2, $s0
	ld.hu	$a1, $fp, 2
	st.w	$a0, $s3, %pc_lo12(bp)
	beqz	$a1, .LBB12_14
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(file_tab)
	ld.d	$a0, $a0, %pc_lo12(file_tab)
	alsl.d	$a0, $a1, $a0, 4
	ld.d	$s4, $a0, 8
	bnez	$s4, .LBB12_3
# %bb.2:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB12_3:                               # %if.end.i
	ld.w	$a1, $s4, 40
	ld.d	$a0, $s4, 8
	addi.w	$a2, $zero, -1
	add.d	$s0, $s2, $s0
	bge	$a2, $a1, .LBB12_8
# %bb.4:                                # %if.else.i
	beq	$a0, $s4, .LBB12_7
# %bb.5:                                # %for.cond39.i.preheader
	move	$s4, $a0
	.p2align	4, , 16
.LBB12_6:                               # %for.cond39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB12_6
.LBB12_7:                               # %if.end51.i
	addi.d	$a1, $s4, 64
	b	.LBB12_12
.LBB12_8:                               # %if.then1.i
	beq	$a0, $s4, .LBB12_11
# %bb.9:                                # %for.cond.i.preheader
	move	$s4, $a0
	.p2align	4, , 16
.LBB12_10:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB12_10
.LBB12_11:                              # %if.end15.i
	pcalau12i	$a0, %pc_hi20(FullFileName.ffbp)
	ld.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	ori	$a2, $zero, 1
	andn	$a1, $a2, $a1
	st.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	slli.d	$a0, $a1, 9
	pcalau12i	$a1, %pc_hi20(FullFileName.ffbuff)
	addi.d	$a1, $a1, %pc_lo12(FullFileName.ffbuff)
	add.d	$s1, $a1, $a0
	addi.d	$a1, $s4, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	lu12i.w	$a2, 1862
	ori	$a2, $a2, 3118
	stx.w	$a2, $s1, $a0
.LBB12_12:                              # %FullFileName.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 4
	ld.w	$a0, $s3, %pc_lo12(bp)
	bstrpick.d	$a1, $a1, 19, 0
	beqz	$a1, .LBB12_14
# %bb.13:                               # %if.then10
	slli.d	$a0, $a0, 9
	add.d	$s0, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 58
	stx.h	$s1, $s0, $a0
	ld.wu	$a0, $fp, 4
	bstrpick.d	$a0, $a0, 19, 0
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(bp)
	slli.d	$a0, $a0, 9
	add.d	$s0, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$s1, $s0, $a0
	ld.wu	$a0, $fp, 4
	srli.d	$a0, $a0, 20
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(bp)
.LBB12_14:                              # %if.end33
	slli.d	$a0, $a0, 9
	add.d	$a0, $s2, $a0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	EchoAltFilePos, .Lfunc_end12-EchoAltFilePos
                                        # -- End function
	.globl	EchoFileSource                  # -- Begin function EchoFileSource
	.p2align	5
	.type	EchoFileSource,@function
EchoFileSource:                         # @EchoFileSource
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
	pcalau12i	$s4, %pc_hi20(bp)
	ld.w	$a1, $s4, %pc_lo12(bp)
	move	$fp, $a0
	ori	$a0, $zero, 1
	andn	$s2, $a0, $a1
	st.w	$s2, $s4, %pc_lo12(bp)
	slli.d	$a0, $s2, 9
	pcalau12i	$a1, %pc_hi20(buff)
	addi.d	$s3, $a1, %pc_lo12(buff)
	stx.b	$zero, $s3, $a0
	beqz	$fp, .LBB13_32
# %bb.1:                                # %if.then
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(file_tab)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	ori	$a2, $zero, 32
	stx.h	$a2, $s0, $a0
	alsl.d	$a0, $fp, $a1, 4
	ld.d	$s7, $a0, 8
	bnez	$s7, .LBB13_3
# %bb.2:                                # %if.then10
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s4, %pc_lo12(bp)
.LBB13_3:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(MsgCat)
	ld.d	$a2, $a0, %got_pc_lo12(MsgCat)
	ld.wu	$a0, $s7, 40
	lu12i.w	$a1, 1023
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s0, $a2, 0
	and	$a0, $a0, $a1
	lu12i.w	$a1, 10
	bne	$a0, $a1, .LBB13_8
# %bb.4:                                # %if.then14
	slli.d	$a0, $s2, 9
	add.d	$s1, $s3, $a0
	beqz	$s0, .LBB13_6
# %bb.5:                                # %cond.true
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a3, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(catgets)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s4, %pc_lo12(bp)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	move	$a1, $a0
	b	.LBB13_7
.LBB13_6:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
.LBB13_7:                               # %cond.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 9
	add.d	$s1, $s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	stx.h	$a1, $s1, $a0
.LBB13_8:                               # %if.end24
	slli.d	$a0, $s2, 9
	add.d	$s1, $s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	beqz	$s0, .LBB13_10
# %bb.9:                                # %cond.true29
	addi.d	$a3, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(catgets)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s4, %pc_lo12(bp)
	move	$a1, $a0
	b	.LBB13_11
.LBB13_10:
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
.LBB13_11:                              # %cond.end32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s2, 9
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	stx.h	$a1, $s0, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	ori	$a2, $zero, 34
	stx.h	$a2, $s0, $a0
	alsl.d	$a0, $fp, $a1, 4
	ld.d	$s1, $a0, 8
	beqz	$s1, .LBB13_17
# %bb.12:                               # %if.end.i
	ld.w	$a1, $s1, 40
	ld.d	$a0, $s1, 8
	addi.w	$a2, $zero, -1
	bge	$a2, $a1, .LBB13_18
.LBB13_13:                              # %if.else.i
	beq	$a0, $s1, .LBB13_16
# %bb.14:                               # %for.cond39.i.preheader
	move	$s1, $a0
	.p2align	4, , 16
.LBB13_15:                              # %for.cond39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB13_15
.LBB13_16:                              # %if.end51.i
	addi.d	$a1, $s1, 64
	b	.LBB13_22
.LBB13_17:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 40
	ld.d	$a0, $s1, 8
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB13_13
.LBB13_18:                              # %if.then1.i
	beq	$a0, $s1, .LBB13_21
# %bb.19:                               # %for.cond.i.preheader
	move	$s1, $a0
	.p2align	4, , 16
.LBB13_20:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB13_20
.LBB13_21:                              # %if.end15.i
	pcalau12i	$a0, %pc_hi20(FullFileName.ffbp)
	ld.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	ori	$a2, $zero, 1
	andn	$a1, $a2, $a1
	st.w	$a1, $a0, %pc_lo12(FullFileName.ffbp)
	slli.d	$a0, $a1, 9
	pcalau12i	$a1, %pc_hi20(FullFileName.ffbuff)
	addi.d	$a1, $a1, %pc_lo12(FullFileName.ffbuff)
	add.d	$fp, $a1, $a0
	addi.d	$a1, $s1, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	lu12i.w	$a2, 1862
	ori	$a2, $a2, 3118
	stx.w	$a2, $fp, $a0
.LBB13_22:                              # %FullFileName.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s4, %pc_lo12(bp)
	slli.d	$a0, $s2, 9
	add.d	$s0, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 34
	stx.h	$a1, $s0, $a0
	ld.hu	$a0, $s7, 34
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB13_32
# %bb.23:                               # %if.then55
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	add.d	$a3, $s0, $a0
	stx.h	$a2, $s0, $a0
	st.b	$a1, $a3, 2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s6, $a0, %pc_lo12(.L.str.22)
	ori	$s8, $zero, 32
	.p2align	4, , 16
.LBB13_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(file_tab)
	move	$s5, $s7
	ld.hu	$a1, $s7, 34
	alsl.d	$a1, $a1, $a0, 4
	ld.d	$a0, $fp, 0
	ld.d	$s7, $a1, 8
	beqz	$a0, .LBB13_26
# %bb.25:                               # %cond.true70
                                        #   in Loop: Header=BB13_24 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 13
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(catgets)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(bp)
	ld.d	$s1, $fp, 0
	move	$a1, $a0
	b	.LBB13_27
	.p2align	4, , 16
.LBB13_26:                              #   in Loop: Header=BB13_24 Depth=1
	move	$s1, $zero
	move	$s4, $s2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB13_27:                              # %cond.end73
                                        #   in Loop: Header=BB13_24 Depth=1
	slli.d	$a0, $s2, 9
	add.d	$a0, $s3, $a0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 9
	move	$s0, $s3
	add.d	$s2, $s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 32
	stx.h	$s3, $s2, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 34
	stx.h	$fp, $s2, $a0
	addi.d	$a1, $s7, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$fp, $s2, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$s3, $s2, $a0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $a3
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	beqz	$s1, .LBB13_29
# %bb.28:                               # %cond.true101
                                        #   in Loop: Header=BB13_24 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 14
	move	$a0, $s1
	pcaddu18i	$ra, %call36(catgets)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, %pc_lo12(bp)
	move	$a1, $a0
.LBB13_29:                              # %cond.end104
                                        #   in Loop: Header=BB13_24 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 9
	move	$s3, $s0
	add.d	$s1, $s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	stx.h	$s8, $s1, $a0
	ld.wu	$a0, $s5, 36
	bstrpick.d	$a0, $a0, 19, 0
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $fp, %pc_lo12(bp)
	ld.hu	$s4, $s7, 34
	slli.d	$a0, $s2, 9
	add.d	$s1, $s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	beqz	$s4, .LBB13_31
# %bb.30:                               # %if.end125
                                        #   in Loop: Header=BB13_24 Depth=1
	ld.b	$a1, $s6, 2
	ld.h	$a2, $s6, 0
	st.b	$a1, $a0, 2
	st.h	$a2, $a0, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	b	.LBB13_24
.LBB13_31:                              # %for.end
	ori	$a1, $zero, 41
	st.h	$a1, $a0, 0
.LBB13_32:                              # %if.end135
	slli.d	$a0, $s2, 9
	add.d	$a0, $s3, $a0
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
.Lfunc_end13:
	.size	EchoFileSource, .Lfunc_end13-EchoFileSource
                                        # -- End function
	.globl	EchoFileLine                    # -- Begin function EchoFileLine
	.p2align	5
	.type	EchoFileLine,@function
EchoFileLine:                           # @EchoFileLine
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(bp)
	ld.w	$a1, $s2, %pc_lo12(bp)
	move	$fp, $a0
	ori	$a0, $zero, 1
	andn	$a1, $a0, $a1
	slli.d	$a2, $a1, 9
	pcalau12i	$a0, %pc_hi20(buff)
	addi.d	$s1, $a0, %pc_lo12(buff)
	stx.b	$zero, $s1, $a2
	ld.hu	$a0, $fp, 2
	st.w	$a1, $s2, %pc_lo12(bp)
	beqz	$a0, .LBB14_3
# %bb.1:                                # %land.lhs.true
	ld.wu	$a0, $fp, 4
	bstrpick.d	$a0, $a0, 19, 0
	beqz	$a0, .LBB14_3
# %bb.2:                                # %if.then
	add.d	$s0, $s1, $a2
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(bp)
	slli.d	$a0, $a0, 9
	add.d	$s0, $s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 44
	stx.h	$a1, $s0, $a0
	ld.wu	$a0, $fp, 4
	srli.d	$a0, $a0, 20
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(bp)
.LBB14_3:                               # %if.end
	slli.d	$a0, $a1, 9
	add.d	$a0, $s1, $a0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	EchoFileLine, .Lfunc_end14-EchoFileLine
                                        # -- End function
	.globl	PosOfFile                       # -- Begin function PosOfFile
	.p2align	5
	.type	PosOfFile,@function
PosOfFile:                              # @PosOfFile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$fp, $a0, 8
	bnez	$fp, .LBB15_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB15_2:                               # %if.end
	addi.d	$a0, $fp, 32
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	PosOfFile, .Lfunc_end15-PosOfFile
                                        # -- End function
	.globl	OpenFile                        # -- Begin function OpenFile
	.p2align	5
	.type	OpenFile,@function
OpenFile:                               # @OpenFile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(file_tab)
	ld.d	$a3, $a3, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a3, 4
	ld.d	$fp, $a0, 8
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB16_3
	.p2align	4, , 16
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB16_1
# %bb.2:                                # %for.end
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fopen)
	jr	$t8
.LBB16_3:                               # %if.else
	move	$a3, $a2
	move	$a2, $a1
	ld.w	$a0, $fp, 48
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(file_path)
	addi.d	$a1, $a1, %pc_lo12(file_path)
	ldx.d	$a1, $a1, $a0
	addi.d	$a0, $fp, 64
	addi.d	$a5, $fp, 32
	pcalau12i	$a4, %pc_hi20(.L.str.27)
	addi.d	$a6, $a4, %pc_lo12(.L.str.27)
	addi.d	$a4, $sp, 8
	addi.d	$a7, $sp, 4
	pcaddu18i	$ra, %call36(SearchPath)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	beqz	$s0, .LBB16_9
# %bb.4:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a1, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a3, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a4, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	st.w	$a2, $a4, 0
	beqz	$a1, .LBB16_6
# %bb.5:                                # %if.else43
	pcalau12i	$a4, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a4, %got_pc_lo12(zz_hold)
	st.d	$a1, $a4, 0
	ld.d	$a4, $a1, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a4, $a2, 0
	b	.LBB16_7
.LBB16_6:                               # %if.then41
	pcalau12i	$a1, %pc_hi20(no_fpos)
	ld.d	$a1, $a1, %pc_lo12(no_fpos)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB16_7:                               # %cond.end93
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a4, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a5, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $a3, 0
	st.d	$a1, $a4, 0
	st.d	$fp, $a5, 0
	ld.d	$a6, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a1, $a4, 0
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a6, $a7, 8
	st.d	$t0, $a1, 0
	ld.d	$a6, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a6, $t0, 8
	st.d	$a1, $a4, 0
	st.d	$s0, $a5, 0
	beqz	$a1, .LBB16_9
# %bb.8:                                # %cond.false102
	ld.d	$a3, $s0, 16
	ld.d	$a4, $a1, 16
	st.d	$a3, $a2, 0
	st.d	$a4, $s0, 16
	st.d	$s0, $a4, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
.LBB16_9:                               # %if.end128
	ld.w	$a1, $sp, 4
	ld.wu	$a2, $fp, 40
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $fp, 40
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	OpenFile, .Lfunc_end16-OpenFile
                                        # -- End function
	.p2align	5                               # -- Begin function SearchPath
	.type	SearchPath,@function
SearchPath:                             # @SearchPath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1440
	st.d	$ra, $sp, 1432                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1424                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1416                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1408                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1400                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1392                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1384                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1352                  # 8-byte Folded Spill
	move	$s4, $a7
	move	$s2, $a0
	st.w	$zero, $a7, 0
	ld.bu	$a0, $a0, 0
	ori	$a7, $zero, 45
	move	$s3, $a6
	move	$s1, $a5
	move	$s0, $a4
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a2
	move	$fp, $a1
	bne	$a0, $a7, .LBB17_2
# %bb.1:                                # %entry.tail
	ld.bu	$a0, $s2, 1
	beqz	$a0, .LBB17_29
.LBB17_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(empty_path)
	ld.d	$a1, $a1, %pc_lo12(empty_path)
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$s7, $a0, $a1
	ld.d	$s8, $s7, 8
	beq	$s8, $s7, .LBB17_28
# %bb.3:                                # %for.cond6.preheader.lr.ph
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1606
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s6, $a0, %pc_lo12(.L.str.27)
	lu12i.w	$a0, 1862
	ori	$a0, $a0, 3118
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB17_4:                               # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	move	$s1, $s8
	.p2align	4, , 16
.LBB17_5:                               # %for.cond6
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB17_5
# %bb.6:                                # %for.end
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$s0, $s1, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_10
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB17_4 Depth=1
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB17_9
# %bb.8:                                # %if.then26
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a4, $s1, 32
	ori	$a0, $zero, 3
	ori	$a1, $zero, 15
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB17_9:                               # %if.end31
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 840
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 840
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 47
	stx.h	$a2, $a0, $a1
	addi.d	$a0, $sp, 840
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_10:                              # %if.then16
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 840
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB17_11:                              # %if.end40
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 840
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$s5, .LBB17_15
# %bb.12:                               # %if.end40
                                        #   in Loop: Header=BB17_4 Depth=1
	bnez	$fp, .LBB17_15
# %bb.13:                               # %if.then46
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 840
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 328
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, -3
	addi.d	$a0, $sp, 328
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_37
# %bb.14:                               #   in Loop: Header=BB17_4 Depth=1
	move	$s4, $zero
	b	.LBB17_21
	.p2align	4, , 16
.LBB17_15:                              # %if.end61
                                        #   in Loop: Header=BB17_4 Depth=1
	sltu	$s4, $zero, $fp
	beqz	$s5, .LBB17_21
# %bb.16:                               # %if.end61
                                        #   in Loop: Header=BB17_4 Depth=1
	beqz	$fp, .LBB17_21
# %bb.17:                               # %if.then66
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 840
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 328
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, -3
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_20
# %bb.18:                               # %land.lhs.true79
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 72
	pcaddu18i	$ra, %call36(stat)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_20
# %bb.19:                               # %if.then84
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $sp, 160
	ld.d	$a1, $sp, 288
	blt	$a1, $a0, .LBB17_39
	.p2align	4, , 16
.LBB17_20:                              # %cleanup
                                        #   in Loop: Header=BB17_4 Depth=1
	ori	$s4, $zero, 1
.LBB17_21:                              # %if.end96
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB17_23
# %bb.22:                               # %if.then98
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 840
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 328
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 328
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	stx.w	$a2, $a0, $a1
	addi.d	$a0, $sp, 328
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_30
.LBB17_23:                              # %for.inc118
                                        #   in Loop: Header=BB17_4 Depth=1
	bnez	$fp, .LBB17_25
# %bb.24:                               # %for.inc118
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$s8, $s8, 8
	bne	$s8, $s7, .LBB17_4
.LBB17_25:                              # %for.end122
	beqz	$fp, .LBB17_27
# %bb.26:
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.bu	$a0, $s1, 64
	bnez	$a0, .LBB17_33
.LBB17_27:
	move	$a0, $zero
	b	.LBB17_34
.LBB17_28:
	move	$fp, $zero
	move	$a0, $zero
	b	.LBB17_35
.LBB17_29:                              # %if.then
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$fp, $a0, 0
	st.d	$zero, $s0, 0
	b	.LBB17_36
.LBB17_30:                              # %if.then108
	move	$s0, $a0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	beqz	$s4, .LBB17_32
# %bb.31:                               # %if.then111
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a2, $a0, %pc_lo12(.L.str.40)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 16
	ori	$a3, $zero, 1
	addi.d	$a5, $sp, 840
	addi.d	$a6, $sp, 328
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB17_32:                              # %for.inc118.thread
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$fp, $s0
	ld.bu	$a0, $s1, 64
	beqz	$a0, .LBB17_27
.LBB17_33:                              # %cond.false131
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 840
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
.LBB17_34:                              # %cond.end134
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
.LBB17_35:                              # %cond.end134
	st.d	$a0, $s0, 0
.LBB17_36:                              # %cleanup136
	move	$a0, $fp
	ld.d	$s8, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1384                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1392                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1400                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1408                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1416                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1424                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1432                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1440
	ret
.LBB17_37:                              # %if.then58
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB17_38:                              # %cleanup136
	move	$fp, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	b	.LBB17_36
.LBB17_39:                              # %if.then89
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 840
	pcaddu18i	$ra, %call36(remove)
	jirl	$ra, $ra, 0
	b	.LBB17_38
.Lfunc_end17:
	.size	SearchPath, .Lfunc_end17-SearchPath
                                        # -- End function
	.globl	OpenIncGraphicFile              # -- Begin function OpenIncGraphicFile
	.p2align	5
	.type	OpenIncGraphicFile,@function
OpenIncGraphicFile:                     # @OpenIncGraphicFile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	move	$s2, $a1
	andi	$a1, $a1, 254
	ori	$a5, $zero, 94
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a0
	beq	$a1, $a5, .LBB18_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(no_fpos)
	ld.d	$a4, $a0, %pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB18_2:                               # %if.end
	addi.d	$a0, $s2, -94
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 8
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(file_path)
	addi.d	$a1, $a1, %pc_lo12(file_path)
	ldx.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a6, $a0, %pc_lo12(.L.str.27)
	addi.d	$a7, $sp, 524
	move	$a0, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(SearchPath)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$s2, $a0
	beqz	$a1, .LBB18_4
# %bb.3:                                # %if.end13
	bnez	$s2, .LBB18_5
	b	.LBB18_13
.LBB18_4:                               # %if.then11
	ori	$a0, $zero, 11
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s1, 0
	beqz	$s2, .LBB18_13
.LBB18_5:                               # %for.body.preheader
	addi.d	$a0, $a1, 64
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_11
# %bb.6:                                # %for.cond
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_11
# %bb.7:                                # %for.cond.1
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_11
# %bb.8:                                # %for.cond.2
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_11
# %bb.9:                                # %for.cond.3
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_11
# %bb.10:                               # %for.cond.4
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 64
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a1, $a1, %pc_lo12(.L.str.46)
	pcaddu18i	$ra, %call36(StringEndsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_14
.LBB18_11:                              # %if.then26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$a2, $a0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a3, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(SafeExecution)
	ld.d	$a0, $a0, %got_pc_lo12(SafeExecution)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB18_15
# %bb.12:                               # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 3
	ori	$a1, $zero, 17
	ori	$a3, $zero, 2
	addi.d	$a5, $sp, 12
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB18_13:                              # %if.then16
	move	$s2, $zero
.LBB18_14:                              # %if.end41
	st.w	$zero, $fp, 0
	move	$a0, $s2
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.LBB18_15:                              # %if.else36
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 29
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	OpenIncGraphicFile, .Lfunc_end18-OpenIncGraphicFile
                                        # -- End function
	.globl	FileSetUpdated                  # -- Begin function FileSetUpdated
	.p2align	5
	.type	FileSetUpdated,@function
FileSetUpdated:                         # @FileSetUpdated
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(file_tab)
	ld.d	$a2, $a2, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a2, 4
	ld.d	$a2, $a0, 8
	ori	$a3, $zero, 1
	st.w	$a3, $a2, 56
	ld.d	$a0, $a0, 8
	st.w	$a1, $a0, 60
	ret
.Lfunc_end19:
	.size	FileSetUpdated, .Lfunc_end19-FileSetUpdated
                                        # -- End function
	.globl	FileGetLineCount                # -- Begin function FileGetLineCount
	.p2align	5
	.type	FileGetLineCount,@function
FileGetLineCount:                       # @FileGetLineCount
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 60
	ret
.Lfunc_end20:
	.size	FileGetLineCount, .Lfunc_end20-FileGetLineCount
                                        # -- End function
	.globl	FileTestUpdated                 # -- Begin function FileTestUpdated
	.p2align	5
	.type	FileTestUpdated,@function
FileTestUpdated:                        # @FileTestUpdated
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(file_tab)
	ld.d	$a1, $a1, %pc_lo12(file_tab)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 56
	ret
.Lfunc_end21:
	.size	FileTestUpdated, .Lfunc_end21-FileTestUpdated
                                        # -- End function
	.type	no_fpos,@object                 # @no_fpos
	.data
	.globl	no_fpos
	.p2align	3, 0x0
no_fpos:
	.dword	no_file_pos
	.size	no_fpos, 8

	.type	file_type,@object               # @file_type
	.local	file_type
	.comm	file_type,88,8
	.type	file_path,@object               # @file_path
	.local	file_path
	.comm	file_path,64,8
	.type	file_tab,@object                # @file_tab
	.local	file_tab
	.comm	file_tab,8,8
	.type	empty_path,@object              # @empty_path
	.local	empty_path
	.comm	empty_path,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.space	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"assert failed in %s"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DefineFile: ftype!"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	".ld"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"database file %s where source file expected"
	.size	.L.str.5, 44

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	".li"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"database index file %s where source file expected"
	.size	.L.str.7, 50

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"file name %s%s is too long"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"DatabaseFileNum: filter file position unknown"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"DatabaseFileNum: unexpected file type"
	.size	.L.str.10, 38

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FileName: x == nilobj!"
	.size	.L.str.11, 23

	.type	FullFileName.ffbuff,@object     # @FullFileName.ffbuff
	.local	FullFileName.ffbuff
	.comm	FullFileName.ffbuff,1024,1
	.type	FullFileName.ffbp,@object       # @FullFileName.ffbp
	.data
	.p2align	2, 0x0
FullFileName.ffbp:
	.word	1                               # 0x1
	.size	FullFileName.ffbp, 4

	.type	bp,@object                      # @bp
	.p2align	2, 0x0
bp:
	.word	1                               # 0x1
	.size	bp, 4

	.type	buff,@object                    # @buff
	.local	buff
	.comm	buff,1024,1
	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"EchoFileSource: x == nilobj!"
	.size	.L.str.15, 29

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"filter"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"file"
	.size	.L.str.17, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" ("
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"from"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"line"
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	", "
	.size	.L.str.22, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"PosOfFile: file_tab entry is nilobj!"
	.size	.L.str.25, 37

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"OpenIncGraphicFile!"
	.size	.L.str.26, 20

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"r"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"gunzip -c %s > %s"
	.size	.L.str.28, 18

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"lout.eps"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"safe execution prohibiting command: %s"
	.size	.L.str.30, 39

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Cannot execute system calls!\n"
	.size	.L.str.31, 30

	.type	no_file_pos,@object             # @no_file_pos
	.local	no_file_pos
	.comm	no_file_pos,8,4
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"run out of memory when enlarging file table"
	.size	.L.str.33, 44

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"too many files (maximum is %d)"
	.size	.L.str.34, 31

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"EchoFilePos: file_tab entry is nilobj!"
	.size	.L.str.35, 39

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"file position %s... is too long to print"
	.size	.L.str.36, 41

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"/"
	.size	.L.str.37, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"file path name %s%s%s is too long"
	.size	.L.str.39, 34

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"files %s and %s both exist"
	.size	.L.str.40, 27

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	".gz"
	.size	.L.str.41, 4

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"-gz"
	.size	.L.str.42, 4

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	".z"
	.size	.L.str.43, 3

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"-z"
	.size	.L.str.44, 3

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"_z"
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	".Z"
	.size	.L.str.46, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_tab
	.addrsig_sym FullFileName.ffbuff
	.addrsig_sym buff
	.addrsig_sym no_file_pos
