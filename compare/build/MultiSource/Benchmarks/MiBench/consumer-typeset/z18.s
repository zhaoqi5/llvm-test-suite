	.file	"z18.c"
	.text
	.globl	TransferInit                    # -- Begin function TransferInit
	.p2align	5
	.type	TransferInit,@function
TransferInit:                           # @TransferInit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(initial_constraint)
	addi.d	$a2, $a1, %pc_lo12(initial_constraint)
	lu12i.w	$a1, 2047
	ori	$a1, $a1, 4094
	st.w	$a1, $a2, 8
	bstrins.d	$a1, $a1, 54, 32
	st.d	$a1, $a2, 0
	pcalau12i	$a1, %pc_hi20(InitialStyle)
	addi.d	$a1, $a1, %pc_lo12(InitialStyle)
	ld.hu	$a3, $a1, 0
	pcalau12i	$a2, %pc_hi20(InitialEnvironment)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(InitialEnvironment)
	ori	$a2, $zero, 200
	bstrins.d	$a3, $a2, 63, 7
	st.h	$a3, $a1, 0
	ld.hu	$a0, $a1, 4
	ori	$a2, $zero, 360
	st.h	$a2, $a1, 2
	ori	$a2, $zero, 76
	bstrins.d	$a0, $a2, 63, 7
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a2, %got_pc_lo12(zz_lengths)
	st.h	$a0, $a1, 4
	ori	$a0, $zero, 120
	st.h	$a0, $a1, 6
	ld.bu	$a0, $s3, 8
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s2, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s4, $a2, %got_pc_lo12(zz_size)
	slli.d	$a2, $a0, 3
	ldx.d	$s1, $s2, $a2
	st.b	$zero, $a1, 4
	st.b	$zero, $a1, 0
	st.d	$zero, $a1, 8
	st.w	$a0, $s4, 0
	beqz	$s1, .LBB0_2
# %bb.1:                                # %if.else76
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB0_3
.LBB0_2:                                # %if.then74
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s1, $a0
	st.d	$a0, $a1, 0
.LBB0_3:                                # %if.end82
	ori	$a0, $zero, 8
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	ld.hu	$a0, $s1, 42
	st.d	$s1, $s1, 0
	lu12i.w	$a1, 14
	ori	$a1, $a1, 3839
	and	$a0, $a0, $a1
	st.d	$zero, $s1, 80
	addi.d	$a0, $a0, 256
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $s1, 104
	st.h	$a0, $s1, 42
	ld.bu	$a0, $s3, 122
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	xvst	$xr0, $s1, 128
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s2, $a1
	st.w	$a0, $s4, 0
	beqz	$s0, .LBB0_5
# %bb.4:                                # %if.else114
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB0_6
.LBB0_5:                                # %if.then112
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB0_6:                                # %if.end123
	ori	$a0, $zero, 122
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 0
	ld.bu	$a2, $s3, 2
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_8
# %bb.7:                                # %if.else151
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB0_9
.LBB0_8:                                # %if.then149
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_9:                                # %if.end160
	pcalau12i	$a1, %got_pc_hi20(PrintSym)
	ld.d	$a1, $a1, %got_pc_lo12(PrintSym)
	ori	$a2, $zero, 2
	st.b	$a2, $a0, 32
	st.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a1, $a0, 80
	st.d	$a0, $s0, 80
	ld.hu	$a1, $a0, 42
	lu12i.w	$a3, 15
	ori	$a2, $a3, 4067
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 16
	st.h	$a1, $a0, 42
	ld.hu	$a0, $s0, 42
	ld.bu	$a2, $s3, 0
	ori	$a1, $a3, 4063
	and	$a0, $a0, $a1
	st.h	$a0, $s0, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_11
# %bb.10:                               # %if.else206
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB0_12
.LBB0_11:                               # %if.then204
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %cond.end257
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s1, $s8, 0
	ld.d	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s5, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s0, $s8, 0
	beqz	$a0, .LBB0_14
# %bb.13:                               # %cond.false266
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_14:                               # %cond.end290
	ld.bu	$a2, $s3, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_16
# %bb.15:                               # %if.else305
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB0_17
.LBB0_16:                               # %if.then303
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 0
.LBB0_17:                               # %if.end314
	ori	$a1, $zero, 8
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.h	$a1, $a0, 42
	lu12i.w	$a2, -2
	pcalau12i	$a3, %got_pc_hi20(no_fpos)
	ld.d	$a3, $a3, %got_pc_lo12(no_fpos)
	ori	$a2, $a2, 3839
	and	$a1, $a1, $a2
	addi.d	$a2, $a1, 256
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $a3, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 104
	xvld	$xr1, $sp, 48                   # 32-byte Folded Reload
	xvst	$xr1, $a0, 128
	st.h	$a2, $a0, 42
	ld.h	$a3, $a1, 2
	pcalau12i	$fp, %pc_hi20(root_galley)
	st.d	$a0, $fp, %pc_lo12(root_galley)
	st.h	$a3, $a0, 34
	ld.wu	$a3, $a1, 4
	ld.wu	$a4, $a0, 36
	srli.d	$a4, $a4, 20
	move	$a5, $a3
	bstrins.d	$a5, $a4, 63, 20
	st.w	$a5, $a0, 36
	ld.wu	$a4, $a1, 4
	srli.d	$a4, $a4, 20
	bstrins.d	$a3, $a4, 63, 20
	st.w	$a3, $a0, 36
	lu12i.w	$a3, 14
	ori	$a3, $a3, 3965
	and	$a3, $a2, $a3
	vst	$vr0, $a0, 88
	st.d	$zero, $a0, 80
	ld.bu	$a2, $s3, 2
	st.h	$a3, $a0, 42
	ori	$a3, $zero, 129
	st.b	$a3, $a0, 40
	slli.d	$a0, $a2, 3
	ldx.d	$s1, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$s1, .LBB0_19
# %bb.18:                               # %if.else384
	st.d	$s1, $s8, 0
	ld.d	$a0, $s1, 0
	alsl.d	$a1, $a2, $s2, 3
	st.d	$a0, $a1, 0
	b	.LBB0_20
.LBB0_19:                               # %if.then382
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s8, 0
.LBB0_20:                               # %if.end393
	ori	$a0, $zero, 2
	pcalau12i	$a1, %got_pc_hi20(InputSym)
	ld.d	$a1, $a1, %got_pc_lo12(InputSym)
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.bu	$a0, $s3, 0
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$a1, $s1, 80
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	st.w	$a0, $s4, 0
	beqz	$a1, .LBB0_22
# %bb.21:                               # %if.else422
	st.d	$a1, $s8, 0
	ld.d	$a2, $a1, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a2, $a0, 0
	b	.LBB0_23
.LBB0_22:                               # %if.then420
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_23:                               # %if.end431
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 0
	ld.d	$a0, $fp, %pc_lo12(root_galley)
	st.d	$a1, $a1, 8
	st.d	$a1, $s6, 0
	st.d	$a1, $s7, 0
	st.d	$a0, $s8, 0
	beqz	$a0, .LBB0_26
# %bb.24:                               # %cond.end477
	ld.d	$a2, $a0, 0
	st.d	$a2, $s5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s8, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $s5, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s6, 0
	st.d	$a1, $a4, 8
	st.d	$a2, $s7, 0
	st.d	$s1, $s8, 0
	beqz	$a2, .LBB0_28
# %bb.25:                               # %cond.end477.cond.false486_crit_edge
	ld.d	$a1, $a2, 16
	b	.LBB0_27
.LBB0_26:                               # %cond.end477.thread
	st.d	$s1, $s8, 0
	move	$a2, $a1
.LBB0_27:                               # %cond.false486
	ld.d	$a3, $s1, 16
	st.d	$a1, $s1, 16
	ld.d	$a1, $a2, 16
	st.d	$a3, $s5, 0
	st.d	$s1, $a1, 24
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
.LBB0_28:                               # %cond.end510
	st.d	$zero, $sp, 32
	addi.d	$a1, $sp, 136
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 144
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 128
	st.d	$a1, $sp, 8
	pcalau12i	$a1, %pc_hi20(InitialStyle)
	addi.d	$a6, $a1, %pc_lo12(InitialStyle)
	pcalau12i	$a1, %pc_hi20(initial_constraint)
	addi.d	$a7, $a1, %pc_lo12(initial_constraint)
	ori	$a2, $zero, 1
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_30
# %bb.29:                               # %if.then514
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %if.end516
	ld.d	$a0, $sp, 136
	beqz	$a0, .LBB0_32
# %bb.31:                               # %if.then519
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %if.end521
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_34
# %bb.33:                               # %if.else535
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB0_35
.LBB0_34:                               # %if.then533
	ld.d	$a1, $s1, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %cond.end590
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s8, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a2, $s7, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, %pc_lo12(root_galley)
	st.d	$a2, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$a1, $s8, 0
	beqz	$a1, .LBB0_38
# %bb.36:                               # %cond.end590
	beqz	$a0, .LBB0_38
# %bb.37:                               # %cond.false599
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $s5, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB0_38:                               # %cond.end623
	ld.d	$fp, $a1, 8
	.p2align	4, , 16
.LBB0_39:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB0_39
# %bb.40:                               # %for.cond
	ori	$a1, $zero, 121
	bne	$a0, $a1, .LBB0_43
# %bb.41:                               # %land.lhs.true
	ld.d	$a0, $fp, 80
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_43
# %bb.42:                               # %land.lhs.true650
	ld.d	$a1, $a0, 80
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	beq	$a1, $a2, .LBB0_44
.LBB0_43:                               # %if.then655
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
.LBB0_44:                               # %if.end657
	ld.hu	$a0, $a0, 42
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_46
# %bb.45:                               # %if.then664
	ld.d	$a4, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %if.end666
	ld.h	$a1, $fp, 42
	ld.bu	$a0, $s3, 17
	ori	$a1, $a1, 32
	st.h	$a1, $fp, 42
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s2, $a1
	pcalau12i	$s0, %pc_hi20(itop)
	st.w	$zero, $s0, %pc_lo12(itop)
	st.w	$a0, $s4, 0
	beqz	$a1, .LBB0_48
# %bb.47:                               # %if.else685
	st.d	$a1, $s8, 0
	ld.d	$a2, $a1, 0
	move	$a3, $zero
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a2, $a0, 0
	b	.LBB0_49
.LBB0_48:                               # %if.then683
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, %pc_lo12(itop)
	move	$a1, $a0
	st.d	$a0, $s8, 0
.LBB0_49:                               # %if.end694
	ori	$a0, $zero, 17
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 0
	ld.bu	$a2, $s3, 0
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	slli.d	$a4, $a3, 3
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	pcalau12i	$a5, %pc_hi20(targets)
	addi.d	$s1, $a5, %pc_lo12(targets)
	stx.d	$a1, $s1, $a4
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_51
# %bb.50:                               # %if.else724
	st.d	$a0, $s8, 0
	ld.d	$a4, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a4, $a2, 0
	b	.LBB0_52
.LBB0_51:                               # %if.then722
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, %pc_lo12(itop)
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $s1, $a1
.LBB0_52:                               # %if.end733
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$a1, $s8, 0
	beqz	$a1, .LBB0_54
# %bb.53:                               # %cond.end781
	ld.d	$a2, $a1, 0
	st.d	$a2, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a4, $s5, 0
	st.d	$a1, $a2, 8
	st.d	$a4, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a4, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s8, 0
	bnez	$a0, .LBB0_55
	b	.LBB0_56
.LBB0_54:                               # %cond.end781.thread
	st.d	$fp, $s8, 0
.LBB0_55:                               # %cond.false790
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s5, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_56:                               # %cond.end814
	ld.d	$a0, $fp, 80
	pcalau12i	$a1, %pc_hi20(constraints)
	addi.d	$a1, $a1, %pc_lo12(constraints)
	alsl.d	$a1, $a3, $a1, 4
	addi.d	$a3, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	TransferInit, .Lfunc_end0-TransferInit
                                        # -- End function
	.globl	TransferBegin                   # -- Begin function TransferBegin
	.p2align	5
	.type	TransferBegin,@function
TransferBegin:                          # @TransferBegin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
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
	move	$s1, $a0
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	ld.d	$a0, $s1, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 2
	beqz	$a0, .LBB1_4
# %bb.3:                                # %if.then2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CrossAddTag)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %if.end3
	pcalau12i	$a0, %pc_hi20(itop)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(itop)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(targets)
	addi.d	$a1, $a1, %pc_lo12(targets)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$a0, $a1, $a0
	ld.d	$s0, $a0, 8
	addi.d	$fp, $s1, 32
	bne	$s0, $a0, .LBB1_6
# %bb.5:                                # %if.then9
	ld.d	$a0, $s1, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 18
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(itop)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$s0, $a0, 8
.LBB1_6:                                # %for.cond.preheader
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_7
# %bb.8:                                # %for.end
	ld.d	$fp, $s1, 80
	ld.d	$a0, $s0, 80
	pcaddu18i	$ra, %call36(GetEnv)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ld.hu	$a1, $fp, 41
	andi	$a1, $a1, 256
	move	$s2, $a0
	move	$s6, $a0
	beqz	$a1, .LBB1_10
# %bb.9:                                # %if.then39
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetEnv)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB1_10:                               # %if.end42
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s3, 17
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s7, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s8, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s7, $a1
	st.w	$a0, $s8, 0
	beqz	$s4, .LBB1_12
# %bb.11:                               # %if.else56
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s4, $a1, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s7, 3
	st.d	$a1, $a0, 0
	b	.LBB1_13
.LBB1_12:                               # %if.then54
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s4, $a0
	st.d	$a0, $a1, 0
.LBB1_13:                               # %if.end65
	ori	$a0, $zero, 17
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 0
	ld.bu	$a2, $s3, 0
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_15
# %bb.14:                               # %if.else93
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB1_16
.LBB1_15:                               # %if.then91
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %cond.end144
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s5, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	st.d	$s4, $s1, 0
	ld.d	$a1, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s6, $s1, 0
	beqz	$s6, .LBB1_19
# %bb.17:                               # %cond.end144
	beqz	$a0, .LBB1_19
# %bb.18:                               # %cond.false153
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s6, 16
	st.d	$s6, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_19:                               # %cond.end177
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a0, $s3, 120
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $s7, $a1
	st.w	$a0, $s8, 0
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	beqz	$s6, .LBB1_21
# %bb.20:                               # %if.else192
	st.d	$s6, $s1, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $s7, 3
	st.d	$a1, $a0, 0
	b	.LBB1_22
.LBB1_21:                               # %if.then190
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$a0, $s1, 0
.LBB1_22:                               # %if.end201
	ori	$a0, $zero, 120
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 8
	st.d	$s6, $s6, 0
	ld.bu	$a0, $s3, 8
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$zero, $s6, 88
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s7, $a1
	st.w	$a0, $s8, 0
	beqz	$s4, .LBB1_24
# %bb.23:                               # %if.else229
	st.d	$s4, $s1, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s7, 3
	st.d	$a1, $a0, 0
	b	.LBB1_25
.LBB1_24:                               # %if.then227
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, 0
.LBB1_25:                               # %if.end238
	ori	$a0, $zero, 8
	st.b	$a0, $s4, 32
	st.d	$s4, $s4, 24
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a0, $a3, 34
	st.h	$a0, $s4, 34
	ld.wu	$a0, $a3, 36
	ld.wu	$a1, $s4, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s4, 36
	ld.wu	$a1, $a3, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s4, 36
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $s4, 80
	st.d	$zero, $s4, 128
	st.d	$zero, $s4, 112
	ld.hu	$a0, $s4, 42
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $s4, 96
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3709
	ld.bu	$a2, $s3, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 384
	st.h	$a0, $s4, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_27
# %bb.26:                               # %if.else298
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB1_28
.LBB1_27:                               # %if.then296
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_28:                               # %cond.end353
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	st.d	$s6, $s1, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s4, $s1, 0
	beqz	$a0, .LBB1_30
# %bb.29:                               # %cond.false362
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_30:                               # %cond.end386
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_32
# %bb.31:                               # %if.else401
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB1_33
.LBB1_32:                               # %if.then399
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_33:                               # %cond.end456
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	st.d	$s4, $s1, 0
	ld.d	$a1, $s4, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $s1, 0
	beqz	$a0, .LBB1_35
# %bb.34:                               # %cond.false465
	ld.d	$a3, $a1, 16
	ld.d	$a2, $a0, 16
	st.d	$a3, $fp, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
.LBB1_35:                               # %cond.end489
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetTarget)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 32
	bnez	$a0, .LBB1_37
# %bb.36:
	move	$a0, $zero
	b	.LBB1_38
.LBB1_37:                               # %cond.true497
	move	$a0, $s4
	pcaddu18i	$ra, %call36(BuildEnclose)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %cond.end500
	ld.bu	$a2, $s3, 0
	st.d	$a0, $s4, 136
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s4, 144
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_40
# %bb.39:                               # %if.else515
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB1_41
.LBB1_40:                               # %if.then513
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB1_41:                               # %if.end524
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s0, 24
	st.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB1_44
# %bb.42:                               # %cond.end573
	ld.d	$a2, $a1, 0
	st.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s6, $s1, 0
	bnez	$a0, .LBB1_45
# %bb.43:                               # %cond.end606
	ld.d	$a0, $s4, 88
	bnez	$a0, .LBB1_46
	b	.LBB1_47
.LBB1_44:                               # %cond.end573.thread
	st.d	$s6, $s1, 0
.LBB1_45:                               # %cond.false582
	ld.d	$a1, $s6, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s6, 16
	st.d	$s6, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	ld.d	$a0, $s4, 88
	beqz	$a0, .LBB1_47
.LBB1_46:                               # %lor.lhs.false
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB1_48
.LBB1_47:                               # %if.then618
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB1_48:                               # %if.end619
	ld.d	$a1, $s4, 24
	addi.d	$s6, $s4, 32
	.p2align	4, , 16
.LBB1_49:                               # %for.cond626
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB1_49
# %bb.50:                               # %for.cond626
	ori	$a2, $zero, 120
	bne	$a0, $a2, .LBB1_64
# %bb.51:                               # %land.lhs.true
	ld.hu	$a0, $s4, 42
	andi	$a0, $a0, 2
	bnez	$a0, .LBB1_64
# %bb.52:                               # %if.then650
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a5, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a2, $a1, 24
	st.d	$a1, $a5, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	bne	$a2, $a1, .LBB1_54
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_53:                               # %cond.end717
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.bu	$a1, $a2, 32
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a2, 33
	add.d	$a1, $s3, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s7, $a3
	st.d	$a2, $s1, 0
	st.w	$a1, $s8, 0
	st.d	$a3, $a2, 0
	ld.w	$a2, $s8, 0
	ld.d	$a3, $s1, 0
	ld.d	$a1, $a5, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $s7, $a2
	ld.d	$a2, $a1, 24
	beq	$a2, $a1, .LBB1_59
.LBB1_54:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 24
	st.d	$a2, $s2, 0
	beq	$a1, $a2, .LBB1_56
# %bb.55:                               # %cond.false665
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.d	$a3, $a2, 16
	st.d	$a1, $s5, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB1_56:                               # %cond.end687
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.d	$a1, $a2, 8
	st.d	$a2, $s1, 0
	beq	$a1, $a2, .LBB1_53
# %bb.57:                               # %cond.false695
                                        #   in Loop: Header=BB1_54 Depth=1
	st.d	$a1, $s5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a1, 0
	st.d	$a2, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_58:                               # %cond.end816
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.bu	$a1, $a2, 32
	addi.d	$a3, $a1, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a2, 33
	add.d	$a1, $s3, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s7, $a3
	st.d	$a2, $s1, 0
	st.w	$a1, $s8, 0
	st.d	$a3, $a2, 0
	ld.w	$a2, $s8, 0
	ld.d	$a3, $s1, 0
	ld.d	$a1, $a5, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $s7, $a2
.LBB1_59:                               # %while.cond748.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 8
	beq	$a2, $a1, .LBB1_70
# %bb.60:                               # %while.body754
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a1, $a2, 24
	st.d	$a2, $s2, 0
	beq	$a1, $a2, .LBB1_62
# %bb.61:                               # %cond.false764
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a3, $a2, 16
	st.d	$a1, $s5, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB1_62:                               # %cond.end786
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a1, $a2, 8
	st.d	$a2, $s1, 0
	beq	$a1, $a2, .LBB1_58
# %bb.63:                               # %cond.false794
                                        #   in Loop: Header=BB1_59 Depth=1
	st.d	$a1, $s5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a1, 0
	st.d	$a2, $a3, 8
	st.d	$a1, $a1, 0
	ld.d	$a2, $s2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_58
.LBB1_64:                               # %if.end1013
	ld.d	$a0, $s4, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 8
	bnez	$a0, .LBB1_66
# %bb.65:                               # %if.else1274
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a4, $a0, 40
	ori	$a0, $zero, 108
	b	.LBB1_91
.LBB1_66:                               # %if.then1021
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a3, %pc_lo12(itop)
	addi.d	$a1, $a0, 1
	ori	$a2, $zero, 29
	st.w	$a1, $a3, %pc_lo12(itop)
	blt	$a0, $a2, .LBB1_68
# %bb.67:                               # %if.then1024
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 18
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	ori	$a5, $zero, 30
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_68:                               # %if.end1027
	ld.bu	$a2, $s3, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_76
# %bb.69:                               # %if.else1041
	st.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a1, $a2, 0
	b	.LBB1_77
.LBB1_70:                               # %while.end848
	ld.bu	$a4, $a1, 32
	addi.d	$a2, $a4, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a1, 33
	add.d	$a4, $s3, $a4
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	ld.bu	$a3, $a2, 0
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $s7, $a2
	st.d	$a1, $s1, 0
	st.w	$a3, $s8, 0
	st.d	$a2, $a1, 0
	ld.w	$a2, $s8, 0
	ld.d	$a1, $s1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $s7, $a2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beq	$a0, $fp, .LBB1_94
# %bb.71:                               # %for.cond892.preheader
	move	$a1, $a0
	.p2align	4, , 16
.LBB1_72:                               # %for.cond892
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB1_72
# %bb.73:                               # %for.cond892
	ori	$a1, $zero, 82
	bne	$a2, $a1, .LBB1_94
# %bb.74:                               # %if.then909
	ld.d	$a2, $a0, 24
	st.d	$a0, $s2, 0
	beq	$a2, $a0, .LBB1_95
# %bb.75:                               # %cond.false919
	ld.d	$a1, $a0, 16
	st.d	$a2, $s5, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_96
.LBB1_76:                               # %if.then1039
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
.LBB1_77:                               # %if.end1050
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(itop)
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	stx.d	$a0, $a3, $a2
	ld.d	$a2, $s4, 8
	beq	$a2, $s4, .LBB1_90
# %bb.78:                               # %for.cond1077.preheader.lr.ph
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	ld.d	$a3, $a0, 0
	ori	$a4, $zero, 121
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_79:                               # %for.inc1233
                                        #   in Loop: Header=BB1_80 Depth=1
	ld.d	$a2, $a2, 8
	beq	$a2, $s4, .LBB1_90
.LBB1_80:                               # %for.cond1077.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_81 Depth 2
	move	$s0, $a2
	.p2align	4, , 16
.LBB1_81:                               # %for.cond1077
                                        #   Parent Loop BB1_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB1_81
# %bb.82:                               # %for.cond1077
                                        #   in Loop: Header=BB1_80 Depth=1
	bne	$a0, $a4, .LBB1_79
# %bb.83:                               # %land.lhs.true1094
                                        #   in Loop: Header=BB1_80 Depth=1
	ld.d	$a0, $s0, 80
	ld.d	$a5, $a0, 80
	bne	$a5, $a3, .LBB1_79
# %bb.84:                               # %if.then1099
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(constraints)
	addi.d	$s6, $a2, %pc_lo12(constraints)
	alsl.d	$a1, $a1, $s6, 4
	addi.d	$a3, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(itop)
	slli.d	$a0, $a1, 4
	ldx.w	$a0, $s6, $a0
	bltz	$a0, .LBB1_89
# %bb.85:                               # %land.lhs.true1107
	alsl.d	$a0, $a1, $s6, 4
	ld.w	$a2, $a0, 4
	bltz	$a2, .LBB1_89
# %bb.86:                               # %land.lhs.true1112
	ld.w	$a0, $a0, 8
	bltz	$a0, .LBB1_89
# %bb.87:                               # %if.then1117
	ld.bu	$a2, $s3, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s7, $a0
	st.w	$a2, $s8, 0
	beqz	$a0, .LBB1_99
# %bb.88:                               # %if.else1131
	st.d	$a0, $s1, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a2, $a2, $s7, 3
	st.d	$a3, $a2, 0
	b	.LBB1_100
.LBB1_89:                               # %if.else1226
	ld.d	$a0, $s4, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 18
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_90:                               # %if.then1248
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a4, $a0, 40
	ori	$a0, $zero, 110
.LBB1_91:                               # %if.end1278
	move	$a2, $zero
	move	$a3, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB1_92:                               # %if.end1278
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
.LBB1_93:                               # %cleanup
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_94:                               # %cleanup
	move	$a0, $fp
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
.LBB1_95:
	move	$a2, $zero
.LBB1_96:                               # %cond.end941
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s1, 0
	beq	$a3, $a0, .LBB1_98
# %bb.97:                               # %cond.false949
	st.d	$a3, $s5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s2, 0
	st.d	$a2, $a2, 8
.LBB1_98:                               # %cond.end971
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s3, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s7, $a3
	st.d	$a0, $s1, 0
	st.w	$a2, $s8, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s8, 0
	ld.d	$a3, $s1, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s7, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_94
	b	.LBB1_93
.LBB1_99:                               # %if.then1129
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(itop)
.LBB1_100:                              # %if.end1140
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $s2, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s1, 0
	beqz	$a1, .LBB1_102
# %bb.101:                              # %cond.end1188
	ld.d	$a2, $a1, 0
	st.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s5, 0
	st.d	$s0, $s1, 0
	bnez	$a0, .LBB1_103
	b	.LBB1_104
.LBB1_102:                              # %cond.end1188.thread
	st.d	$s0, $s1, 0
.LBB1_103:                              # %cond.false1197
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB1_104:                              # %lor.lhs.false1240
	ld.d	$a0, $s0, 80
	pcaddu18i	$ra, %call36(DetachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 80
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AttachEnv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	ld.hu	$a1, $a0, 42
	andi	$a1, $a1, 16
	bnez	$a1, .LBB1_90
# %bb.105:                              # %if.else1251
	addi.d	$a1, $sp, 96
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 112
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 96
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	bne	$a1, $a0, .LBB1_109
# %bb.106:                              # %if.else1251
	ld.w	$a1, $sp, 100
	bne	$a1, $a0, .LBB1_109
# %bb.107:                              # %if.else1251
	ld.w	$a1, $sp, 104
	bne	$a1, $a0, .LBB1_109
# %bb.108:                              # %if.else1268
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a4, $a0, 40
	ori	$a0, $zero, 109
	b	.LBB1_91
.LBB1_109:                              # %if.then1264
	addi.d	$s0, $s0, 32
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 18
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r22
	b	.LBB1_92
.Lfunc_end1:
	.size	TransferBegin, .Lfunc_end1-TransferBegin
                                        # -- End function
	.globl	TransferComponent               # -- Begin function TransferComponent
	.p2align	5
	.type	TransferComponent,@function
TransferComponent:                      # @TransferComponent
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(itop)
	ld.w	$a1, $a3, %pc_lo12(itop)
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(targets)
	addi.d	$a2, $a2, %pc_lo12(targets)
	ldx.d	$a1, $a2, $a1
	ld.d	$fp, $a1, 8
	move	$s3, $a0
	beq	$fp, $a1, .LBB2_6
	.p2align	4, , 16
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB2_1
# %bb.2:                                # %for.end
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 80
	ld.hu	$a0, $a0, 42
	andi	$a0, $a0, 16
	bnez	$a0, .LBB2_4
# %bb.3:                                # %if.then16
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end18
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 8
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s5, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s6, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s5, $a1
	st.w	$a0, $s6, 0
	beqz	$s0, .LBB2_7
# %bb.5:                                # %if.else31
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
	b	.LBB2_8
.LBB2_6:                                # %if.then
	move	$a0, $s3
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(DisposeObject)
	jr	$t8
.LBB2_7:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	st.d	$a0, $a1, 0
.LBB2_8:                                # %if.end40
	ori	$a0, $zero, 8
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	ld.h	$a0, $s0, 42
	st.d	$s0, $s0, 0
	lu12i.w	$a1, -2
	ori	$a1, $a1, 3839
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 256
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 104
	xvrepli.b	$xr1, 0
	xvst	$xr1, $s0, 128
	st.h	$a0, $s0, 42
	ld.h	$a1, $s3, 34
	st.h	$a1, $s0, 34
	ld.wu	$a1, $s3, 36
	ld.wu	$a2, $s0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s0, 36
	ld.wu	$a2, $s3, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s0, 36
	st.d	$zero, $s0, 80
	vst	$vr0, $s0, 88
	ori	$a1, $zero, 129
	st.b	$a1, $s0, 40
	lu12i.w	$a1, 14
	ld.bu	$a2, $s4, 0
	ori	$a1, $a1, 3965
	and	$a0, $a0, $a1
	st.h	$a0, $s0, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB2_10
# %bb.9:                                # %if.else105
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB2_11
.LBB2_10:                               # %if.then103
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %cond.end156
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s7, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s8, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s2, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s8, 0
	st.d	$s0, $s2, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s8, 0
	st.d	$s3, $s2, 0
	beqz	$a0, .LBB2_13
# %bb.12:                               # %cond.false165
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_13:                               # %cond.end189
	ld.d	$s3, $fp, 80
	move	$a0, $s3
	pcaddu18i	$ra, %call36(GetEnv)
	jirl	$ra, $ra, 0
	ld.hu	$a2, $s3, 42
	move	$a1, $a0
	bstrpick.d	$a3, $a2, 2, 2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(itop)
	addi.d	$a6, $s3, 64
	pcalau12i	$a2, %pc_hi20(constraints)
	addi.d	$a2, $a2, %pc_lo12(constraints)
	alsl.d	$a7, $a0, $a2, 4
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 96
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	ori	$a5, $zero, 1
	st.d	$zero, $sp, 0
	move	$a0, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB2_15
# %bb.14:                               # %if.then202
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB2_15:                               # %if.end203
	ld.d	$a0, $fp, 24
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 48
	ld.w	$a2, $s0, 56
	move	$a0, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $s0, 24
	st.d	$s0, $a0, 0
	bne	$a1, $s0, .LBB2_17
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_16:                               # %cond.end279
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s4, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s5, $a3
	st.d	$a1, $s2, 0
	st.w	$a2, $s6, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s5, $a1
	ld.d	$a1, $s0, 24
	beq	$a1, $s0, .LBB2_22
.LBB2_17:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $s7, 0
	beq	$a2, $a1, .LBB2_19
# %bb.18:                               # %cond.false227
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_19:                               # %cond.end249
                                        #   in Loop: Header=BB2_17 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB2_16
# %bb.20:                               # %cond.false257
                                        #   in Loop: Header=BB2_17 Depth=1
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a2, $a2, 8
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_21:                               # %cond.end377
                                        #   in Loop: Header=BB2_22 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s4, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s5, $a3
	st.d	$a1, $s2, 0
	st.w	$a2, $s6, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s6, 0
	ld.d	$a2, $s2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s5, $a1
.LBB2_22:                               # %while.cond309.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	beq	$a1, $s0, .LBB2_27
# %bb.23:                               # %while.body315
                                        #   in Loop: Header=BB2_22 Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $s7, 0
	beq	$a2, $a1, .LBB2_25
# %bb.24:                               # %cond.false325
                                        #   in Loop: Header=BB2_22 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB2_25:                               # %cond.end347
                                        #   in Loop: Header=BB2_22 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s2, 0
	beq	$a2, $a1, .LBB2_21
# %bb.26:                               # %cond.false355
                                        #   in Loop: Header=BB2_22 Depth=1
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s7, 0
	st.d	$a2, $a2, 8
	b	.LBB2_21
.LBB2_27:                               # %while.end409
	ld.bu	$a0, $s0, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s0, 33
	add.d	$a0, $s4, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s5, $a1
	st.d	$s0, $s2, 0
	st.w	$a0, $s6, 0
	st.d	$a1, $s0, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s5, $a0
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB2_52
# %bb.28:                               # %if.then445
	ld.bu	$a0, $s4, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s5, $a1
	st.w	$a0, $s6, 0
	beqz	$s0, .LBB2_30
# %bb.29:                               # %if.else459
	st.d	$s0, $s2, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s5, 3
	st.d	$a1, $a0, 0
	b	.LBB2_31
.LBB2_30:                               # %if.then457
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s2, 0
.LBB2_31:                               # %if.end468
	ori	$a0, $zero, 17
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.d	$s3, $fp, 8
	beq	$s3, $fp, .LBB2_51
# %bb.32:                               # %for.cond496.preheader.lr.ph
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               # %cond.end712
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$s3, $fp, 8
	beq	$s3, $fp, .LBB2_51
.LBB2_34:                               # %for.cond496
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_40 Depth 2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB2_34
# %bb.35:                               # %for.cond496
                                        #   in Loop: Header=BB2_34 Depth=1
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB2_37
# %bb.36:                               # %if.then513
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_37:                               # %if.end515
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a0, $s3, 104
	beqz	$a0, .LBB2_39
# %bb.38:                               # %if.then519
                                        #   in Loop: Header=BB2_34 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 104
.LBB2_39:                               # %if.end523
                                        #   in Loop: Header=BB2_34 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 24
	.p2align	4, , 16
.LBB2_40:                               # %for.cond530
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 0
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB2_40
# %bb.41:                               # %for.end541
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 8
	st.d	$a0, $s7, 0
	st.d	$a0, $s2, 0
	beq	$a1, $a0, .LBB2_43
# %bb.42:                               # %cond.false551
                                        #   in Loop: Header=BB2_34 Depth=1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a1, 8
.LBB2_43:                               # %cond.end573
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s8, 0
	st.d	$a1, $s2, 0
	beqz	$a1, .LBB2_46
# %bb.44:                               # %cond.end573
                                        #   in Loop: Header=BB2_34 Depth=1
	beqz	$a0, .LBB2_46
# %bb.45:                               # %cond.false585
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s8, 0
	st.d	$a0, $a3, 8
.LBB2_46:                               # %cond.end609
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s5, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB2_48
# %bb.47:                               # %if.else624
                                        #   in Loop: Header=BB2_34 Depth=1
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s5, 3
	st.d	$a1, $a2, 0
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %if.then622
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_49:                               # %cond.end679
                                        #   in Loop: Header=BB2_34 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	st.d	$a0, $s8, 0
	st.d	$s0, $s2, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s7, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s8, 0
	st.d	$s3, $s2, 0
	beqz	$a0, .LBB2_33
# %bb.50:                               # %cond.false688
                                        #   in Loop: Header=BB2_34 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB2_33
.LBB2_51:                               # %while.end714
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
.LBB2_52:                               # %if.end715
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB2_54
# %bb.53:                               # %if.then718
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
.LBB2_54:                               # %if.end719
	ld.hu	$a1, $fp, 42
	andi	$a0, $a1, 32
	beqz	$a0, .LBB2_58
# %bb.55:                               # %if.then726
	lu12i.w	$a2, 15
	ld.d	$a0, $fp, 24
	ori	$a2, $a2, 4063
	and	$a1, $a1, $a2
	st.h	$a1, $fp, 42
	.p2align	4, , 16
.LBB2_56:                               # %for.cond738
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_56
# %bb.57:                               # %for.end749
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB2_58:                               # %cleanup
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	TransferComponent, .Lfunc_end2-TransferComponent
                                        # -- End function
	.globl	TransferEnd                     # -- Begin function TransferEnd
	.p2align	5
	.type	TransferEnd,@function
TransferEnd:                            # @TransferEnd
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
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
	pcalau12i	$s2, %pc_hi20(itop)
	ld.w	$a1, $s2, %pc_lo12(itop)
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(targets)
	addi.d	$s0, $a2, %pc_lo12(targets)
	ldx.d	$a1, $s0, $a1
	ld.d	$fp, $a1, 8
	beq	$fp, $a1, .LBB3_5
# %bb.1:
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a1, $fp, 32
	beqz	$a1, .LBB3_2
# %bb.3:                                # %for.end
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$s8, $a1, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s8, 8
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s7, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a2, 3
	ldx.d	$s0, $s6, $a1
	st.w	$a2, $s7, 0
	beqz	$s0, .LBB3_6
# %bb.4:                                # %if.else31
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_7
.LBB3_5:                                # %if.then
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, %pc_lo12(itop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s2, %pc_lo12(itop)
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
	pcaddu18i	$t8, %call36(DisposeObject)
	jr	$t8
.LBB3_6:                                # %if.then29
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $a1, 0
.LBB3_7:                                # %if.end40
	ori	$a1, $zero, 8
	st.b	$a1, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a1, $a0, 34
	st.h	$a1, $s0, 34
	ld.wu	$a1, $a0, 36
	ld.wu	$a2, $s0, 36
	srli.d	$a2, $a2, 20
	move	$a3, $a1
	bstrins.d	$a3, $a2, 63, 20
	st.w	$a3, $s0, 36
	ld.wu	$a2, $a0, 36
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s0, 36
	ld.hu	$a1, $s0, 42
	xvrepli.b	$xr0, 0
	xvst	$xr0, $s0, 128
	st.d	$zero, $s0, 80
	xvst	$xr0, $s0, 88
	ori	$a2, $zero, 129
	st.b	$a2, $s0, 40
	lu12i.w	$a2, 14
	ori	$a3, $a2, 3709
	ld.bu	$a2, $s8, 0
	and	$a1, $a1, $a3
	addi.d	$a1, $a1, 256
	st.h	$a1, $s0, 42
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s6, $a1
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB3_9
# %bb.8:                                # %if.else100
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a1, $a3, 0
	ld.d	$a3, $a1, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a3, $a2, 0
	b	.LBB3_10
.LBB3_9:                                # %if.then98
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB3_10:                               # %cond.end151
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$s4, $a2, %got_pc_lo12(xx_link)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s1, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a1, 0
	st.d	$a1, $s4, 0
	st.d	$a1, $s1, 0
	st.d	$s0, $s5, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $s0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a5, 0
	st.d	$a2, $a3, 8
	st.d	$a4, $a1, 0
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a4, 8
	st.d	$a1, $s1, 0
	st.d	$a0, $s5, 0
	beqz	$a1, .LBB3_12
# %bb.11:                               # %cond.false160
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a1, 16
	st.d	$a2, $a5, 0
	st.d	$a3, $a0, 16
	st.d	$a0, $a3, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB3_12:                               # %cond.end184
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s3, $fp, 80
	move	$a0, $s3
	pcaddu18i	$ra, %call36(GetEnv)
	jirl	$ra, $ra, 0
	ld.h	$a3, $s3, 42
	move	$a1, $a0
	bstrpick.d	$a2, $a3, 4, 4
	bstrpick.d	$a3, $a3, 2, 2
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $s2, %pc_lo12(itop)
	addi.d	$a6, $s3, 64
	pcalau12i	$a4, %pc_hi20(constraints)
	addi.d	$a4, $a4, %pc_lo12(constraints)
	alsl.d	$a7, $a0, $a4, 4
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 112
	st.d	$a0, $sp, 8
	ori	$a5, $zero, 1
	st.d	$zero, $sp, 0
	move	$a0, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(SizeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB3_14
# %bb.13:                               # %if.then201
	pcaddu18i	$ra, %call36(ExpandRecursives)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %if.end202
	ld.d	$a0, $fp, 24
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 48
	ld.w	$a2, $s0, 56
	move	$a0, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, 42
	andi	$a0, $a0, 16
	bnez	$a0, .LBB3_18
# %bb.15:                               # %if.then218
	ld.d	$s2, $s0, 0
	.p2align	4, , 16
.LBB3_16:                               # %for.cond225
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB3_16
# %bb.17:                               # %for.end236
	ld.w	$a1, $s2, 52
	ld.w	$a2, $s2, 60
	ori	$a3, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 19
	move	$a0, $s3
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(Interpose)
	jirl	$ra, $ra, 0
.LBB3_18:                               # %if.end243
	ori	$a3, $zero, 1
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$s2, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a0, $s0, 24
	st.d	$s0, $s2, 0
	bne	$a0, $s0, .LBB3_20
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_19:                               # %cond.end310
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s8, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$s0, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $s0, 24
	beq	$a0, $s0, .LBB3_25
.LBB3_20:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB3_22
# %bb.21:                               # %cond.false258
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB3_22:                               # %cond.end280
                                        #   in Loop: Header=BB3_20 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB3_19
# %bb.23:                               # %cond.false288
                                        #   in Loop: Header=BB3_20 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_24:                               # %cond.end408
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s8, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$s0, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
.LBB3_25:                               # %while.cond340.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	beq	$a0, $s0, .LBB3_30
# %bb.26:                               # %while.body346
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB3_28
# %bb.27:                               # %cond.false356
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB3_28:                               # %cond.end378
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB3_24
# %bb.29:                               # %cond.false386
                                        #   in Loop: Header=BB3_25 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
	b	.LBB3_24
.LBB3_30:                               # %while.end440
	ld.bu	$a0, $s0, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $s0, 33
	add.d	$a0, $s8, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	st.d	$s0, $s5, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $s0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB3_55
# %bb.31:                               # %if.then476
	ld.bu	$a0, $s8, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s6, $a1
	st.w	$a0, $s7, 0
	beqz	$s0, .LBB3_33
# %bb.32:                               # %if.else490
	st.d	$s0, $s5, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s6, 3
	st.d	$a1, $a0, 0
	b	.LBB3_34
.LBB3_33:                               # %if.then488
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s5, 0
.LBB3_34:                               # %if.end499
	ori	$a0, $zero, 17
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.d	$s3, $fp, 8
	beq	$s3, $fp, .LBB3_54
# %bb.35:                               # %for.cond527.preheader.lr.ph
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB3_37
	.p2align	4, , 16
.LBB3_36:                               # %cond.end743
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$s3, $fp, 8
	beq	$s3, $fp, .LBB3_54
.LBB3_37:                               # %for.cond527
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_43 Depth 2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB3_37
# %bb.38:                               # %for.cond527
                                        #   in Loop: Header=BB3_37 Depth=1
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB3_40
# %bb.39:                               # %if.then544
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_40:                               # %if.end546
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a0, $s3, 104
	beqz	$a0, .LBB3_42
# %bb.41:                               # %if.then550
                                        #   in Loop: Header=BB3_37 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s3, 104
.LBB3_42:                               # %if.end554
                                        #   in Loop: Header=BB3_37 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 24
	.p2align	4, , 16
.LBB3_43:                               # %for.cond561
                                        #   Parent Loop BB3_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 0
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB3_43
# %bb.44:                               # %for.end572
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $a0, 8
	st.d	$a0, $s4, 0
	st.d	$a0, $s5, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_46
# %bb.45:                               # %cond.false582
                                        #   in Loop: Header=BB3_37 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
.LBB3_46:                               # %cond.end604
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s1, 0
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB3_49
# %bb.47:                               # %cond.end604
                                        #   in Loop: Header=BB3_37 Depth=1
	beqz	$a0, .LBB3_49
# %bb.48:                               # %cond.false616
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a3, 8
.LBB3_49:                               # %cond.end640
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.bu	$a2, $s8, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s6, $a0
	st.w	$a2, $s7, 0
	beqz	$a0, .LBB3_51
# %bb.50:                               # %if.else655
                                        #   in Loop: Header=BB3_37 Depth=1
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s6, 3
	st.d	$a1, $a2, 0
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_51:                               # %if.then653
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
.LBB3_52:                               # %cond.end710
                                        #   in Loop: Header=BB3_37 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s4, 0
	st.d	$a0, $s1, 0
	st.d	$s0, $s5, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s1, 0
	st.d	$s3, $s5, 0
	beqz	$a0, .LBB3_36
# %bb.53:                               # %cond.false719
                                        #   in Loop: Header=BB3_37 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB3_36
.LBB3_54:                               # %while.end745
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
.LBB3_55:                               # %if.end746
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB3_57
# %bb.56:                               # %if.then749
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
.LBB3_57:                               # %if.end750
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 32
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_70
# %bb.58:                               # %if.else1008
	ld.d	$a0, $fp, 24
	st.d	$fp, $s2, 0
	bne	$a0, $fp, .LBB3_60
	b	.LBB3_65
	.p2align	4, , 16
.LBB3_59:                               # %cond.end1077
                                        #   in Loop: Header=BB3_60 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s8, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$fp, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	ld.d	$a0, $fp, 24
	beq	$a0, $fp, .LBB3_65
.LBB3_60:                               # %while.body1015
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB3_62
# %bb.61:                               # %cond.false1025
                                        #   in Loop: Header=BB3_60 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB3_62:                               # %cond.end1047
                                        #   in Loop: Header=BB3_60 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB3_59
# %bb.63:                               # %cond.false1055
                                        #   in Loop: Header=BB3_60 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_64:                               # %cond.end1178
                                        #   in Loop: Header=BB3_65 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s8, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$a0, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$fp, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
.LBB3_65:                               # %while.cond1110.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	beq	$a0, $fp, .LBB3_84
# %bb.66:                               # %while.body1116
                                        #   in Loop: Header=BB3_65 Depth=1
	ld.d	$a1, $a0, 24
	st.d	$a0, $s4, 0
	beq	$a1, $a0, .LBB3_68
# %bb.67:                               # %cond.false1126
                                        #   in Loop: Header=BB3_65 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB3_68:                               # %cond.end1148
                                        #   in Loop: Header=BB3_65 Depth=1
	ld.d	$a1, $a0, 8
	st.d	$a0, $s5, 0
	beq	$a1, $a0, .LBB3_64
# %bb.69:                               # %cond.false1156
                                        #   in Loop: Header=BB3_65 Depth=1
	st.d	$a1, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s4, 0
	st.d	$a1, $a1, 8
	b	.LBB3_64
.LBB3_70:                               # %if.then757
	ld.d	$a1, $fp, 24
	move	$a0, $a1
	.p2align	4, , 16
.LBB3_71:                               # %for.cond764
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB3_71
# %bb.72:                               # %for.end775
	st.d	$fp, $s2, 0
	bne	$a1, $fp, .LBB3_74
	b	.LBB3_79
	.p2align	4, , 16
.LBB3_73:                               # %cond.end844
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s8, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s6, $a3
	st.d	$a1, $s5, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s5, 0
	ld.d	$fp, $s2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s6, $a1
	ld.d	$a1, $fp, 24
	beq	$a1, $fp, .LBB3_79
.LBB3_74:                               # %while.body782
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $s4, 0
	beq	$a2, $a1, .LBB3_76
# %bb.75:                               # %cond.false792
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB3_76:                               # %cond.end814
                                        #   in Loop: Header=BB3_74 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s5, 0
	beq	$a2, $a1, .LBB3_73
# %bb.77:                               # %cond.false822
                                        #   in Loop: Header=BB3_74 Depth=1
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a2, 8
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_78:                               # %cond.end945
                                        #   in Loop: Header=BB3_79 Depth=1
	ld.bu	$a2, $a1, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	add.d	$a2, $s8, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s6, $a3
	st.d	$a1, $s5, 0
	st.w	$a2, $s7, 0
	st.d	$a3, $a1, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s5, 0
	ld.d	$fp, $s2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s6, $a1
.LBB3_79:                               # %while.cond877.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	beq	$a1, $fp, .LBB3_85
# %bb.80:                               # %while.body883
                                        #   in Loop: Header=BB3_79 Depth=1
	ld.d	$a2, $a1, 24
	st.d	$a1, $s4, 0
	beq	$a2, $a1, .LBB3_82
# %bb.81:                               # %cond.false893
                                        #   in Loop: Header=BB3_79 Depth=1
	ld.d	$a3, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB3_82:                               # %cond.end915
                                        #   in Loop: Header=BB3_79 Depth=1
	ld.d	$a2, $a1, 8
	st.d	$a1, $s5, 0
	beq	$a2, $a1, .LBB3_78
# %bb.83:                               # %cond.false923
                                        #   in Loop: Header=BB3_79 Depth=1
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a2, 0
	ld.d	$a2, $s5, 0
	ld.d	$a1, $s1, 0
	ld.d	$a3, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a1, $s4, 0
	st.d	$a2, $a2, 8
	b	.LBB3_78
.LBB3_84:                               # %while.end1210
	ld.bu	$a0, $fp, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $fp, 33
	add.d	$a0, $s8, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	st.d	$fp, $s5, 0
	st.w	$a0, $s7, 0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	b	.LBB3_86
.LBB3_85:                               # %while.end977
	ld.bu	$a1, $fp, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $fp, 33
	add.d	$a1, $s8, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	st.d	$fp, $s5, 0
	st.w	$a1, $s7, 0
	st.d	$a2, $fp, 0
	ld.w	$a1, $s7, 0
	ld.d	$a2, $s5, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s6, $a1
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB3_86:                               # %if.end1241
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a2, %pc_lo12(itop)
	slli.d	$a0, $a1, 3
	ldx.d	$a0, $s0, $a0
	addi.d	$a1, $a1, -1
	st.w	$a1, $a2, %pc_lo12(itop)
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
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
.Lfunc_end3:
	.size	TransferEnd, .Lfunc_end3-TransferEnd
                                        # -- End function
	.globl	TransferClose                   # -- Begin function TransferClose
	.p2align	5
	.type	TransferClose,@function
TransferClose:                          # @TransferClose
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(root_galley)
	ld.d	$a0, $fp, %pc_lo12(root_galley)
	ld.d	$a1, $a0, 0
	beq	$a1, $a0, .LBB4_4
# %bb.1:                                # %if.then
	st.d	$zero, $sp, 8
	addi.d	$a2, $sp, 8
	move	$a1, $a0
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(FreeGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB4_3
# %bb.2:                                # %if.then2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %if.end
	ld.d	$a0, $fp, %pc_lo12(root_galley)
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %if.end3
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	TransferClose, .Lfunc_end4-TransferClose
                                        # -- End function
	.type	initial_constraint,@object      # @initial_constraint
	.local	initial_constraint
	.comm	initial_constraint,16,4
	.type	InitialEnvironment,@object      # @InitialEnvironment
	.bss
	.globl	InitialEnvironment
	.p2align	3, 0x0
InitialEnvironment:
	.dword	0
	.size	InitialEnvironment, 8

	.type	InitialStyle,@object            # @InitialStyle
	.globl	InitialStyle
	.p2align	2, 0x0
InitialStyle:
	.space	16
	.size	InitialStyle, 16

	.type	root_galley,@object             # @root_galley
	.local	root_galley
	.comm	root_galley,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"assert failed in %s"
	.size	.L.str.1, 20

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"TransferInit: recs   != nilobj!"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"TransferInit: inners != nilobj!"
	.size	.L.str.3, 32

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"TransferInit: initial galley!"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"TransferInit: input sym not external!"
	.size	.L.str.5, 38

	.type	itop,@object                    # @itop
	.local	itop
	.comm	itop,4,4
	.type	targets,@object                 # @targets
	.local	targets
	.comm	targets,240,8
	.type	constraints,@object             # @constraints
	.local	constraints
	.comm	constraints,480,4
	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"TransferBegin: non-CLOSURE!"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"cannot attach galley %s"
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"galley nested too deeply (max is %d)"
	.size	.L.str.8, 37

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"galley %s deleted (insufficient width at target)"
	.size	.L.str.9, 49

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"right parameter of %s is vertically constrained"
	.size	.L.str.10, 48

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"TransferComponent: internal!"
	.size	.L.str.11, 29

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"TransferComponent: input child!"
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"TransferEnd: input child!"
	.size	.L.str.13, 26

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym initial_constraint
	.addrsig_sym InitialStyle
	.addrsig_sym constraints
