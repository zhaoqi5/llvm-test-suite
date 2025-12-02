	.file	"z21.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SizeGalley
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	SizeGalley
	.p2align	5
	.type	SizeGalley,@function
SizeGalley:                             # @SizeGalley
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 352                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 344                  # 8-byte Folded Spill
	move	$s5, $a0
	ld.bu	$a0, $a0, 32
	ori	$t0, $zero, 8
	move	$s3, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	move	$s1, $a3
	move	$s7, $a2
	move	$s4, $a1
	bne	$a0, $t0, .LBB0_2
# %bb.1:                                # %land.lhs.true
	ld.d	$a0, $s5, 8
	bne	$a0, $s5, .LBB0_3
.LBB0_2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %if.end
	ld.hu	$a0, $s5, 42
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_5
# %bb.4:                                # %if.then4
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %if.end6
	ld.d	$a0, $sp, 480
	ld.d	$a1, $sp, 472
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 448
	ld.d	$s0, $s5, 8
	addi.d	$a1, $s5, 32
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $s5, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB0_6
# %bb.7:                                # %for.end
	st.d	$fp, $sp, 312
	st.d	$a0, $sp, 304
	st.d	$zero, $sp, 336
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 272
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr0, $sp, 288
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 17
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a1, $a1, %got_pc_lo12(zz_size)
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a4, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s6, $a4, $a1
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	beqz	$s6, .LBB0_9
# %bb.8:                                # %if.else35
	alsl.d	$a0, $a0, $a4, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s6, $a1, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a0, 0
	b	.LBB0_10
.LBB0_9:                                # %if.then33
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	move	$s6, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s6, $a0, 0
.LBB0_10:                               # %if.end44
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_12
# %bb.11:                               # %if.else72
	alsl.d	$a1, $a2, $a4, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_13
.LBB0_12:                               # %if.then70
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
.LBB0_13:                               # %cond.end123
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s8, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a5, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a6, $a1, %got_pc_lo12(zz_hold)
	st.d	$s6, $a6, 0
	ld.d	$a1, $s6, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a7, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $a5, 0
	ld.d	$a1, $a6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a7, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a5, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	st.d	$a0, $a5, 0
	st.d	$s4, $a6, 0
	beqz	$s4, .LBB0_16
# %bb.14:                               # %cond.end123
	beqz	$a0, .LBB0_16
# %bb.15:                               # %cond.false132
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a7, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_16:                               # %cond.end156
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	st.d	$a6, $sp, 232                   # 8-byte Folded Spill
	st.d	$a7, $sp, 208                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_21
# %bb.17:                               # %land.lhs.true159
	ld.bu	$a0, $s0, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_21
# %bb.18:                               # %land.lhs.true165
	ld.d	$a0, $s0, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_21
# %bb.19:                               # %land.lhs.true171
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(FindOptimize)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_21
# %bb.20:                               # %if.then174
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(SetOptimize)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
.LBB0_21:                               # %if.end175
	beqz	$s1, .LBB0_24
# %bb.22:                               # %if.then177
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 139
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a4, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_25
# %bb.23:                               # %if.else191
	st.d	$a0, $a6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_26
.LBB0_24:                               # %if.else350
	ld.hu	$a0, $s5, 42
	bstrpick.d	$a0, $a0, 7, 7
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 304
	st.d	$a1, $sp, 8
	addi.d	$a3, $sp, 288
	addi.d	$a4, $sp, 272
	addi.d	$a5, $sp, 312
	addi.d	$a6, $sp, 336
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB0_39
.LBB0_25:                               # %if.then189
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a6, 0
.LBB0_26:                               # %if.end200
	ori	$a1, $zero, 139
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 139
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a4, $a1
	st.d	$a0, $sp, 288
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_28
# %bb.27:                               # %if.else229
	st.d	$a1, $a6, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a0, $a2, 0
	b	.LBB0_29
.LBB0_28:                               # %if.then227
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s1, $a6
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s1, 0
.LBB0_29:                               # %if.end238
	ori	$a0, $zero, 139
	st.b	$a0, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.hu	$a0, $s5, 42
	st.d	$a1, $sp, 272
	bstrpick.d	$a0, $a0, 7, 7
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 304
	st.d	$a1, $sp, 8
	addi.d	$a3, $sp, 288
	addi.d	$a4, $sp, 272
	addi.d	$a5, $sp, 312
	addi.d	$a6, $sp, 336
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288
	ld.d	$a2, $a1, 8
	move	$s0, $a0
	beq	$a2, $a1, .LBB0_31
# %bb.30:                               # %land.lhs.true268
	ld.d	$a0, $sp, 272
	ld.d	$a3, $a0, 8
	bne	$a3, $a0, .LBB0_32
.LBB0_31:                               # %if.then276
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288
	ld.d	$a2, $a1, 8
.LBB0_32:                               # %if.end278
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_33:                               # %for.cond286
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a3, $a0, 32
	beqz	$a3, .LBB0_33
# %bb.34:                               # %for.end297
	ld.d	$a4, $sp, 272
	ld.d	$a3, $a4, 8
	st.d	$a0, $sp, 312
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_35:                               # %for.cond305
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a5, 16
	ld.bu	$a6, $a5, 32
	beqz	$a6, .LBB0_35
# %bb.36:                               # %for.end316
	st.d	$a5, $sp, 304
	ld.d	$a6, $a1, 0
	beq	$a2, $a6, .LBB0_287
.LBB0_37:                               # %if.then340
	ld.d	$a0, $s5, 80
	addi.d	$s1, $s0, 32
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288
.LBB0_38:                               # %if.end345
	move	$a0, $a1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %if.end360
	move	$a0, $s6
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_41
# %bb.40:                               # %if.else375
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_42
.LBB0_41:                               # %if.then373
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_42:                               # %if.end384
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 320
	addi.d	$a2, $sp, 320
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s5, 42
	andi	$a2, $a1, 256
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	bnez	$a2, .LBB0_47
# %bb.43:                               # %if.else485
	andi	$a1, $a1, 512
	beqz	$a1, .LBB0_55
# %bb.44:                               # %if.else485
	ld.d	$a1, $s5, 104
	beqz	$a1, .LBB0_55
# %bb.45:                               # %land.lhs.true495
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 17
	bne	$a1, $a2, .LBB0_55
# %bb.46:                               # %if.then501
	pcaddu18i	$ra, %call36(Hyphenate)
	jirl	$ra, $ra, 0
	b	.LBB0_55
.LBB0_47:                               # %if.then407
	ld.w	$a1, $s3, 0
	st.w	$a1, $s5, 64
	ld.w	$a1, $s3, 4
	st.w	$a1, $s5, 68
	ld.w	$a1, $s3, 8
	st.w	$a1, $s5, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(BreakObject)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 48
	ld.w	$a1, $s3, 0
	blt	$a1, $a0, .LBB0_50
# %bb.48:                               # %land.lhs.true418
	ld.w	$a1, $s0, 56
	ld.w	$a2, $s3, 4
	add.w	$a3, $a1, $a0
	blt	$a2, $a3, .LBB0_50
# %bb.49:                               # %land.lhs.true427
	ld.w	$a2, $s3, 8
	bge	$a2, $a1, .LBB0_51
.LBB0_50:                               # %if.then434
	addi.d	$s1, $s0, 32
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 56
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(EchoLength)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 13
	ori	$a3, $zero, 1
	move	$a4, $s1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 48
.LBB0_51:                               # %if.end445
	st.w	$a0, $s5, 48
	ld.w	$a1, $s0, 56
	st.w	$a1, $s5, 56
	ld.w	$a2, $s3, 0
	blt	$a2, $a0, .LBB0_54
# %bb.52:                               # %land.lhs.true464
	ld.w	$a2, $s3, 4
	add.w	$a0, $a1, $a0
	blt	$a2, $a0, .LBB0_54
# %bb.53:                               # %land.lhs.true475
	ld.w	$a0, $s3, 8
	bge	$a0, $a1, .LBB0_55
.LBB0_54:                               # %if.then482
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a5, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %if.end504
	ld.hu	$a0, $s5, 42
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4063
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	and	$a0, $a0, $a1
	st.h	$a0, $s5, 42
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	beqz	$s7, .LBB0_149
# %bb.56:                               # %for.cond510.preheader
	ld.d	$s6, $s5, 8
	beq	$s6, $s5, .LBB0_149
# %bb.57:                               # %for.cond523.preheader.preheader
	ori	$s4, $zero, 18
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s2, $a0, %pc_lo12(.LJTI0_0)
	addi.d	$s7, $s5, 8
	move	$fp, $s5
	b	.LBB0_61
.LBB0_58:                               # %if.else1890
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a0, $a0, 16
.LBB0_59:                               # %for.inc1897
                                        #   in Loop: Header=BB0_61 Depth=1
	st.h	$a0, $s6, 42
.LBB0_60:                               # %for.inc1897
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$fp, $fp, 8
	ld.d	$s6, $fp, 8
	addi.d	$s7, $fp, 8
	beq	$s6, $s5, .LBB0_149
	.p2align	4, , 16
.LBB0_61:                               # %for.cond523
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_100 Depth 3
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB0_61
# %bb.62:                               # %for.cond523
                                        #   in Loop: Header=BB0_61 Depth=1
	addi.d	$a0, $a0, -1
	bltu	$s4, $a0, .LBB0_60
# %bb.63:                               # %for.cond523
                                        #   in Loop: Header=BB0_61 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB0_64:                               # %sw.bb1876
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a1, $s5, 42
	ld.hu	$a0, $s6, 42
	andi	$a1, $a1, 256
	bnez	$a1, .LBB0_58
# %bb.65:                               # %if.then1885
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a0, $a0, 8
	b	.LBB0_59
.LBB0_66:                               # %sw.bb
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s6, 44
	andi	$a0, $a0, 512
	bnez	$a0, .LBB0_60
# %bb.67:                               # %if.then543
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.h	$a0, $s5, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s5, 42
	b	.LBB0_60
.LBB0_68:                               # %sw.bb950
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB0_70
# %bb.69:                               # %if.then959
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a5, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_70:                               # %if.end961
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s4, $s6, 0
	.p2align	4, , 16
.LBB0_71:                               # %for.cond968
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB0_71
# %bb.72:                               # %for.cond968
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_83
.LBB0_73:                               #   in Loop: Header=BB0_61 Depth=1
	ori	$s4, $zero, 18
	b	.LBB0_60
.LBB0_74:                               # %sw.bb550
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s5, 42
	andi	$a0, $a0, 256
	beqz	$a0, .LBB0_60
	b	.LBB0_76
.LBB0_75:                               # %sw.bb748
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.hu	$a0, $s5, 42
	andi	$a0, $a0, 256
	bnez	$a0, .LBB0_60
.LBB0_76:                               # %if.then559
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s0, $s6, 8
	beq	$s0, $s6, .LBB0_81
# %bb.77:                               # %if.then568
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a0, $s0, 32
	ld.d	$s1, $s6, 24
	beqz	$a0, .LBB0_79
# %bb.78:                               # %if.then574
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_79:                               # %if.end576
                                        #   in Loop: Header=BB0_61 Depth=1
	st.d	$s0, $s3, 0
	st.d	$s6, $a7, 0
	ld.d	$a0, $s6, 0
	st.d	$a0, $t0, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$s0, $s3, 0
	st.d	$s1, $a7, 0
	beqz	$s1, .LBB0_81
# %bb.80:                               # %cond.false617
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s1, 0
	st.d	$a0, $t0, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_81:                               # %if.end643
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s6, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB0_143
.LBB0_82:                               # %cond.false653
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $s3, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_144
.LBB0_83:                               # %land.lhs.true985
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB0_85
# %bb.84:                               # %if.then991
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.h	$a0, $s4, 42
	ori	$a0, $a0, 16
	st.h	$a0, $s4, 42
	ori	$s4, $zero, 18
	b	.LBB0_60
.LBB0_85:                               # %if.else996
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB0_73
# %bb.86:                               # %if.then1002
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$s3, $s6, 8
	.p2align	4, , 16
.LBB0_87:                               # %for.cond1009
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB0_87
# %bb.88:                               # %for.cond1009
                                        #   in Loop: Header=BB0_61 Depth=1
	ori	$a1, $zero, 16
	beq	$a0, $a1, .LBB0_90
# %bb.89:                               # %if.then1026
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
.LBB0_90:                               # %if.end1028
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a2, $s4, 24
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_91:                               # %for.cond1035
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_91
# %bb.92:                               # %for.end1046
                                        #   in Loop: Header=BB0_61 Depth=1
	beq	$s3, $a0, .LBB0_94
# %bb.93:                               # %if.then1049
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $s4, 24
.LBB0_94:                               # %if.end1051
                                        #   in Loop: Header=BB0_61 Depth=1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.d	$s1, $s4, 0
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	beq	$s1, $s4, .LBB0_136
# %bb.95:                               # %for.cond1068.preheader.lr.ph
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $s6, 8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB0_99
.LBB0_96:                               # %cond.end1157.thread
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s8, $a7, 0
.LBB0_97:                               # %for.inc1664.sink.split
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $t0, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_98:                               # %for.inc1664
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$s1, $s1, 0
	beq	$s1, $s4, .LBB0_136
.LBB0_99:                               # %for.cond1068.preheader
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_100 Depth 3
	move	$s8, $s1
	.p2align	4, , 16
.LBB0_100:                              # %for.cond1068
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 16
	ld.bu	$a0, $s8, 32
	beqz	$a0, .LBB0_100
# %bb.101:                              # %for.cond1068
                                        #   in Loop: Header=BB0_99 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_104
# %bb.102:                              # %if.then1085
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_106
# %bb.103:                              # %if.else1099
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_104:                              # %if.else1192
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 9
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $a6, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s0, .LBB0_109
# %bb.105:                              # %if.else1206
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $a6, 3
	st.d	$a1, $a0, 0
	b	.LBB0_110
.LBB0_106:                              # %if.then1097
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_107:                              # %if.end1108
                                        #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_96
# %bb.108:                              # %cond.end1157
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	b	.LBB0_135
.LBB0_109:                              # %if.then1204
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	move	$s0, $a0
	st.d	$a0, $a7, 0
.LBB0_110:                              # %if.end1215
                                        #   in Loop: Header=BB0_99 Depth=2
	ori	$a0, $zero, 9
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.w	$a0, $s3, 48
	st.w	$a0, $s0, 48
	ld.w	$a0, $s3, 56
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	st.w	$a0, $s0, 56
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_112
# %bb.111:                              # %if.else1255
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_113
.LBB0_112:                              # %if.then1253
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_113:                              # %if.end1264
                                        #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_116
# %bb.114:                              # %cond.end1313
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $a4, 0
	st.d	$s0, $a7, 0
	beqz	$a1, .LBB0_118
# %bb.115:                              # %cond.end1313.cond.false1322_crit_edge
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $a1, 16
	b	.LBB0_117
.LBB0_116:                              # %cond.end1313.thread
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s0, $a7, 0
	move	$a1, $a0
.LBB0_117:                              # %cond.false1322
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $s0, 16
	st.d	$a0, $s0, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $t0, 0
	st.d	$s0, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_118:                              # %cond.end1346
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_120
# %bb.119:                              # %if.else1361
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_121
.LBB0_120:                              # %if.then1359
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_121:                              # %cond.end1416
                                        #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $a4, 0
	st.d	$a0, $a3, 8
	ld.d	$a0, $a5, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_124
# %bb.122:                              # %cond.end1416
                                        #   in Loop: Header=BB0_99 Depth=2
	beqz	$a0, .LBB0_124
# %bb.123:                              # %cond.false1428
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $t0, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB0_124:                              # %cond.end1452
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_126
# %bb.125:                              # %if.else1467
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_127
.LBB0_126:                              # %if.then1465
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_127:                              # %if.end1476
                                        #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a1, $a7, 0
	beqz	$a1, .LBB0_129
# %bb.128:                              # %cond.end1525
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s8, $a7, 0
	bnez	$a0, .LBB0_130
	b	.LBB0_131
.LBB0_129:                              # %cond.end1525.thread
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$s8, $a7, 0
.LBB0_130:                              # %cond.false1534
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a1, $s8, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $t0, 0
	st.d	$a2, $s8, 16
	st.d	$s8, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_131:                              # %cond.end1558
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a6, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_133
# %bb.132:                              # %if.else1573
                                        #   in Loop: Header=BB0_99 Depth=2
	st.d	$a0, $a7, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a6, 3
	st.d	$a1, $a2, 0
	b	.LBB0_134
.LBB0_133:                              # %if.then1571
                                        #   in Loop: Header=BB0_99 Depth=2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_134:                              # %cond.end1628
                                        #   in Loop: Header=BB0_99 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$s0, $a7, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $t0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
.LBB0_135:                              # %cond.end1628
                                        #   in Loop: Header=BB0_99 Depth=2
	ld.d	$a0, $a4, 0
	ld.d	$a1, $a7, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $t0, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $a4, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $a4, 0
	st.d	$s8, $a7, 0
	bnez	$a0, .LBB0_97
	b	.LBB0_98
.LBB0_136:                              # %for.end1668
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 24
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	st.d	$a4, $s8, 0
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	beq	$a0, $a4, .LBB0_138
# %bb.137:                              # %cond.false1675
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a1, $a4, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
.LBB0_138:                              # %cond.end1697
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a0, $a4, 8
	st.d	$a4, $a7, 0
	ori	$s4, $zero, 18
	beq	$a0, $a4, .LBB0_140
# %bb.139:                              # %cond.false1705
                                        #   in Loop: Header=BB0_61 Depth=1
	st.d	$a0, $s3, 0
	ld.d	$a1, $a4, 0
	st.d	$a1, $a0, 0
	ld.d	$a0, $a7, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $a0, 0
	st.d	$a1, $a2, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $s8, 0
	st.d	$a0, $a0, 8
.LBB0_140:                              # %cond.end1727
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a0, $a4, 32
	addi.d	$a1, $a0, -11
	sltui	$a1, $a1, 2
	addi.d	$a2, $a4, 33
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ld.bu	$a0, $a0, 0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $a6, $a1
	st.d	$a4, $a7, 0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.d	$a1, $a4, 0
	ld.w	$a0, $a2, 0
	ld.d	$a1, $a7, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a6, $a0
	ld.d	$a0, $s6, 24
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB0_142
# %bb.141:                              # %if.then1767
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 24
.LBB0_142:                              # %if.end1769
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$a2, $a0, 24
	st.d	$a0, $s8, 0
	bne	$a2, $a0, .LBB0_82
.LBB0_143:                              #   in Loop: Header=BB0_61 Depth=1
	move	$a2, $zero
.LBB0_144:                              # %cond.end675
                                        #   in Loop: Header=BB0_61 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $a7, 0
	beq	$a3, $a0, .LBB0_146
# %bb.145:                              # %cond.false683
                                        #   in Loop: Header=BB0_61 Depth=1
	st.d	$a3, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $a7, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s8, 0
	st.d	$a2, $a2, 8
.LBB0_146:                              # %cond.end705
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a6, $a3
	st.d	$a0, $a7, 0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a7, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $a6, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_148
# %bb.147:                              # %if.then741
                                        #   in Loop: Header=BB0_61 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
.LBB0_148:                              # %if.end743
                                        #   in Loop: Header=BB0_61 Depth=1
	ld.d	$fp, $fp, 0
	b	.LBB0_60
.LBB0_149:                              # %if.end1902
	ld.d	$a0, $sp, 320
	ld.d	$fp, $a0, 8
	beq	$fp, $a0, .LBB0_187
# %bb.150:                              # %for.cond1913.preheader.lr.ph
	ori	$s6, $zero, 136
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s8, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$s0, $a1, %pc_lo12(.L.str.16)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$s4, $a1, %pc_lo12(.L.str.17)
	lu12i.w	$a1, 2047
	ori	$s7, $a1, 4095
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a1, 273536
	movgr2fr.w	$fs0, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a1, $a1, %pc_lo12(.L.str.20)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_151:                              # %if.end2222
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a0, $sp, 320
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
.LBB0_152:                              # %for.inc2224
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $a0, .LBB0_187
.LBB0_153:                              # %for.cond1913.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_154 Depth 2
                                        #     Child Loop BB0_163 Depth 2
	move	$a1, $fp
	.p2align	4, , 16
.LBB0_154:                              # %for.cond1913
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_154
# %bb.155:                              # %for.cond1913
                                        #   in Loop: Header=BB0_153 Depth=1
	bne	$a2, $s6, .LBB0_152
# %bb.156:                              # %if.then1930
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$s1, $a1, 80
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 34
	beq	$a0, $a1, .LBB0_158
# %bb.157:                              # %if.then1938
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_158:                              # %if.end1940
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a0, $s1, 64
	beqz	$a0, .LBB0_160
# %bb.159:                              # %if.then1945
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_160:                              # %if.end1947
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$s2, $s1, 8
	bne	$s2, $s1, .LBB0_162
# %bb.161:                              # %if.then1953
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a4, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 8
.LBB0_162:                              # %for.cond1962.preheader
                                        #   in Loop: Header=BB0_153 Depth=1
	addi.d	$s3, $s1, 32
	.p2align	4, , 16
.LBB0_163:                              # %for.cond1962
                                        #   Parent Loop BB0_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_163
# %bb.164:                              # %for.end1973
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.hu	$a0, $s5, 42
	andi	$a0, $a0, 256
	bnez	$a0, .LBB0_166
# %bb.165:                              # %if.then1982
                                        #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a2, $s0
	move	$a4, $s3
	move	$a5, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_166:                              # %if.end1985
                                        #   in Loop: Header=BB0_153 Depth=1
	addi.d	$a1, $sp, 256
	addi.d	$a3, $sp, 328
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 256
	ld.w	$a0, $sp, 260
	bne	$a1, $s7, .LBB0_170
# %bb.167:                              # %if.end1985
                                        #   in Loop: Header=BB0_153 Depth=1
	bne	$a0, $s7, .LBB0_170
# %bb.168:                              # %if.end1985
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $sp, 264
	bne	$a1, $s7, .LBB0_170
# %bb.169:                              # %if.then1997
                                        #   in Loop: Header=BB0_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_170:                              # %if.else2004
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $s2, 48
	ld.w	$a2, $s2, 56
	add.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_173
# %bb.171:                              # %if.else2021
                                        #   in Loop: Header=BB0_153 Depth=1
	movgr2fr.w	$fa0, $a0
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_178
# %bb.172:                              # %if.then2035
                                        #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_174
.LBB0_173:                              # %if.then2014
                                        #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
.LBB0_174:                              # %if.end2187
                                        #   in Loop: Header=BB0_153 Depth=1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
.LBB0_175:                              # %if.end2187
                                        #   in Loop: Header=BB0_153 Depth=1
	st.w	$a0, $s1, 72
	st.w	$a0, $s1, 64
	move	$s3, $s2
.LBB0_176:                              # %if.end2187
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a1, $s3, 48
	mul.w	$a1, $a0, $a1
	ld.w	$a2, $s3, 56
	bstrpick.d	$a3, $a1, 62, 56
	add.w	$a1, $a1, $a3
	srai.d	$a1, $a1, 7
	mul.w	$a0, $a2, $a0
	bstrpick.d	$a2, $a0, 62, 56
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	move	$a0, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s1, 42
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_151
# %bb.177:                              # %if.then2207
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.w	$a0, $s3, 52
	ld.w	$a2, $s1, 72
	mul.w	$a0, $a2, $a0
	ld.w	$a3, $s3, 60
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srai.d	$a1, $a0, 7
	mul.w	$a0, $a3, $a2
	bstrpick.d	$a2, $a0, 62, 56
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	ori	$a3, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	b	.LBB0_151
.LBB0_178:                              # %if.else2042
                                        #   in Loop: Header=BB0_153 Depth=1
	fcvt.d.s	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB0_181
# %bb.179:                              # %if.then2057
                                        #   in Loop: Header=BB0_153 Depth=1
	beqz	$a0, .LBB0_182
# %bb.180:                              # %if.else2064
                                        #   in Loop: Header=BB0_153 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	b	.LBB0_183
.LBB0_181:                              # %if.else2170
                                        #   in Loop: Header=BB0_153 Depth=1
	slli.w	$a0, $a0, 7
	div.w	$a0, $a0, $a1
	b	.LBB0_175
.LBB0_182:                              # %if.then2061
                                        #   in Loop: Header=BB0_153 Depth=1
	ori	$a0, $zero, 21
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
.LBB0_183:                              # %if.end2067
                                        #   in Loop: Header=BB0_153 Depth=1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s2, 32
	ori	$a0, $zero, 128
	st.w	$a0, $s1, 72
	st.w	$a0, $s1, 64
	ori	$a0, $zero, 11
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.wu	$a0, $a0, 40
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	vst	$vr0, $s3, 48
	lu12i.w	$a1, 393216
	and	$a0, $a0, $a1
	st.w	$a0, $s3, 40
	ld.d	$a0, $s2, 24
	beq	$a0, $s2, .LBB0_185
# %bb.184:                              # %cond.end2134
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a1, $s2, 16
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	ld.d	$a1, $a0, 16
	ld.d	$a2, $s3, 16
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	st.d	$a1, $s3, 16
	st.d	$s3, $a1, 24
	b	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_153 Depth=1
	move	$a0, $zero
.LBB0_186:                              # %cond.end2167
                                        #   in Loop: Header=BB0_153 Depth=1
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	st.d	$a0, $a2, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 72
	b	.LBB0_176
.LBB0_187:                              # %for.end2228
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	ld.d	$fp, $s5, 8
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	beq	$fp, $s5, .LBB0_276
# %bb.188:                              # %for.cond2240.preheader.lr.ph
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$a1, $zero, 20
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	move	$s1, $zero
	ori	$s6, $zero, 18
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$s7, $zero, 9
	lu12i.w	$a0, 274432
	movgr2fr.w	$fs0, $a0
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_189:                              # %if.then3058
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320
.LBB0_190:                              # %if.end3060
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $t0, $a2
	st.d	$a0, $t1, 0
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $t1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $t0, $a0
	ori	$a1, $zero, 20
.LBB0_191:                              # %for.inc3091
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$fp, $fp, 8
	beq	$fp, $s5, .LBB0_276
.LBB0_192:                              # %for.cond2240.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_193 Depth 2
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #         Child Loop BB0_220 Depth 4
                                        #       Child Loop BB0_224 Depth 3
	move	$s0, $fp
	.p2align	4, , 16
.LBB0_193:                              # %for.cond2240
                                        #   Parent Loop BB0_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_193
# %bb.194:                              # %for.cond2240
                                        #   in Loop: Header=BB0_192 Depth=1
	beq	$a0, $s8, .LBB0_191
# %bb.195:                              # %lor.lhs.false2257
                                        #   in Loop: Header=BB0_192 Depth=1
	addi.d	$a0, $a0, -119
	bltu	$a0, $a1, .LBB0_191
# %bb.196:                              # %if.end2270
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_198
# %bb.197:                              # %if.else2284
                                        #   in Loop: Header=BB0_192 Depth=1
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_199
.LBB0_198:                              # %if.then2282
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	move	$s2, $t1
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
.LBB0_199:                              # %if.end2293
                                        #   in Loop: Header=BB0_192 Depth=1
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 320
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 320
	move	$a0, $s0
	pcaddu18i	$ra, %call36(MinSize)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 320
	ld.d	$s4, $s0, 8
	beq	$s4, $s0, .LBB0_269
# %bb.200:                              # %for.cond2319.preheader.preheader
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	b	.LBB0_204
.LBB0_201:                              # %sw.default2951
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
.LBB0_202:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s8
	.p2align	4, , 16
.LBB0_203:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s4, $s4, 8
	ld.d	$s0, $sp, 320
	beq	$s4, $s0, .LBB0_268
.LBB0_204:                              # %for.cond2319.preheader
                                        #   Parent Loop BB0_192 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_205 Depth 3
                                        #       Child Loop BB0_216 Depth 3
                                        #       Child Loop BB0_219 Depth 3
                                        #         Child Loop BB0_220 Depth 4
                                        #       Child Loop BB0_224 Depth 3
	move	$s8, $s1
	move	$s0, $s4
	.p2align	4, , 16
.LBB0_205:                              # %for.cond2319
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_205
# %bb.206:                              # %for.end2330
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.hu	$a1, $s0, 42
	and	$a3, $a1, $s2
	addi.d	$a2, $a0, -120
	st.h	$a3, $s0, 42
	bltu	$s6, $a2, .LBB0_201
# %bb.207:                              # %for.end2330
                                        #   in Loop: Header=BB0_204 Depth=2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_1)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	move	$s1, $s8
	jr	$a2
.LBB0_208:                              # %sw.bb2532
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$s1, $zero, 1
	bnez	$s8, .LBB0_203
# %bb.209:                              # %if.then2534
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_257
# %bb.210:                              # %if.then2537
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_255
# %bb.211:                              # %if.else2551
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_256
.LBB0_212:                              # %sw.bb2339
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $s0, 80
	ld.d	$a2, $a0, 80
	ld.hu	$a2, $a2, 41
	bstrpick.d	$a2, $a2, 11, 11
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	and	$a2, $a3, $a2
	slli.d	$a2, $a2, 6
	lu12i.w	$a3, 15
	ori	$a3, $a3, 3998
	and	$a1, $a1, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	or	$a1, $a1, $a3
	or	$a1, $a1, $a2
	st.h	$a1, $s0, 42
	ld.d	$a0, $a0, 80
	pcalau12i	$a1, %got_pc_hi20(GalleySym)
	ld.d	$a1, $a1, %got_pc_lo12(GalleySym)
	ld.d	$a3, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(ForceGalleySym)
	ld.d	$a2, $a2, %got_pc_lo12(ForceGalleySym)
	beq	$a0, $a3, .LBB0_231
# %bb.213:                              # %sw.bb2339
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a3, $a2, 0
	beq	$a0, $a3, .LBB0_231
# %bb.214:                              #   in Loop: Header=BB0_204 Depth=2
	move	$a1, $zero
	b	.LBB0_232
.LBB0_215:                              # %sw.bb2681
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s2, $s0, 80
	ld.bu	$a0, $s2, 32
	addi.d	$a1, $a0, -32
	sltu	$s3, $zero, $a1
	ori	$a1, $zero, 24
	masknez	$a1, $a1, $s3
	ori	$a2, $zero, 16
	maskeqz	$a2, $a2, $s3
	or	$a3, $a2, $a1
	ldx.d	$a1, $s2, $a3
	addi.d	$s0, $s2, 32
	.p2align	4, , 16
.LBB0_216:                              # %for.cond2709
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_216
# %bb.217:                              # %while.cond.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a4, $zero, 16
	sub.d	$a4, $a4, $s3
	beq	$a2, $s7, .LBB0_219
# %bb.218:                              # %while.cond.preheader
                                        #   in Loop: Header=BB0_204 Depth=2
	bne	$a4, $a2, .LBB0_223
	.p2align	4, , 16
.LBB0_219:                              # %while.body
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_220 Depth 4
	ldx.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB0_220:                              # %for.cond2746
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        #       Parent Loop BB0_219 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $a1, 0
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_220
# %bb.221:                              # %while.cond.loopexit
                                        #   in Loop: Header=BB0_219 Depth=3
	beq	$a2, $s7, .LBB0_219
# %bb.222:                              # %while.cond.loopexit
                                        #   in Loop: Header=BB0_219 Depth=3
	beq	$a4, $a2, .LBB0_219
.LBB0_223:                              # %while.end
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a3, $zero, 19
	masknez	$a3, $a3, $s3
	ori	$a4, $zero, 17
	maskeqz	$a4, $a4, $s3
	or	$a5, $a4, $a3
	ld.d	$a4, $s2, 8
	xori	$a6, $s3, 19
	addi.d	$s1, $s3, 30
	addi.d	$a3, $s3, 24
	.p2align	4, , 16
.LBB0_224:                              # %for.cond2764
                                        #   Parent Loop BB0_192 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a4, 16
	ld.bu	$a7, $a4, 32
	beqz	$a7, .LBB0_224
# %bb.225:                              # %for.end2775
                                        #   in Loop: Header=BB0_204 Depth=2
	beq	$a5, $a2, .LBB0_233
# %bb.226:                              # %for.end2775
                                        #   in Loop: Header=BB0_204 Depth=2
	beq	$a6, $a2, .LBB0_233
# %bb.227:                              # %if.then2787
                                        #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.b	$s1, $s0, 0
	move	$s1, $s8
	b	.LBB0_254
.LBB0_228:                              # %sw.bb2387
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_241
# %bb.229:                              # %if.then2390
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_239
# %bb.230:                              # %if.else2404
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_240
.LBB0_231:                              # %if.then2369
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$s0, $a0, 0
	ld.d	$a0, $s0, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	xor	$a1, $a0, $a1
	sltui	$a1, $a1, 1
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	or	$a1, $a1, $a2
.LBB0_232:                              # %if.end2370
                                        #   in Loop: Header=BB0_204 Depth=2
	pcalau12i	$a2, %got_pc_hi20(InputSym)
	ld.d	$a2, $a2, %got_pc_lo12(InputSym)
	ld.d	$a2, $a2, 0
	xor	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	masknez	$a2, $s8, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	b	.LBB0_203
.LBB0_233:                              # %if.else2798
                                        #   in Loop: Header=BB0_204 Depth=2
	alsl.d	$a4, $s3, $a4, 2
	ld.w	$a2, $a4, 48
	ld.w	$s5, $a4, 56
	beqz	$a2, .LBB0_237
# %bb.234:                              # %lor.lhs.false2823
                                        #   in Loop: Header=BB0_204 Depth=2
	beqz	$s5, .LBB0_238
# %bb.235:                              # %if.else2841
                                        #   in Loop: Header=BB0_204 Depth=2
	alsl.d	$a3, $s3, $a1, 2
	ld.w	$a1, $a3, 56
	ld.w	$a3, $a3, 48
	sub.w	$a4, $zero, $a1
	bne	$a3, $a4, .LBB0_248
# %bb.236:                              # %if.then2853
                                        #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 10
	b	.LBB0_250
.LBB0_237:                              # %land.lhs.true2805
                                        #   in Loop: Header=BB0_204 Depth=2
	beqz	$s5, .LBB0_252
.LBB0_238:                              # %if.then2830
                                        #   in Loop: Header=BB0_204 Depth=2
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.b	$s1, $s0, 0
	b	.LBB0_253
.LBB0_239:                              # %if.then2402
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_240:                              # %if.end2413
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_241:                              # %if.end2428
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_243
# %bb.242:                              # %if.else2442
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_244
.LBB0_243:                              # %if.then2440
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_244:                              # %if.end2451
                                        #   in Loop: Header=BB0_204 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a5, 0
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $t1, 0
	beqz	$a1, .LBB0_246
# %bb.245:                              # %cond.end2497
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a5, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	bnez	$a0, .LBB0_247
	b	.LBB0_202
.LBB0_246:                              # %cond.end2497.thread
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
.LBB0_247:                              # %cond.false2506
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_202
.LBB0_248:                              # %if.else2864
                                        #   in Loop: Header=BB0_204 Depth=2
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $s5
	ffint.s.w	$fa2, $fa2
	fdiv.s	$fa1, $fa1, $fa2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	fmul.s	$fa0, $fa0, $fs0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	mul.w	$a0, $a2, $a0
	bstrpick.d	$a1, $a0, 62, 56
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 7
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 256
	addi.d	$a3, $sp, 328
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 256
	bge	$a0, $a1, .LBB0_265
.LBB0_249:                              # %if.else2935
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.bu	$a0, $s0, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 11
.LBB0_250:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a3, $zero, 2
	move	$a4, $s0
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.b	$s1, $s0, 0
.LBB0_251:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s8
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_203
.LBB0_252:                              # %if.then2812
                                        #   in Loop: Header=BB0_204 Depth=2
	st.b	$a3, $s0, 0
.LBB0_253:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $s8
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
.LBB0_254:                              # %for.inc2958
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_203
.LBB0_255:                              # %if.then2549
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_256:                              # %if.end2560
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
.LBB0_257:                              # %if.end2575
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_259
# %bb.258:                              # %if.else2589
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $t1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $t0, 3
	st.d	$a1, $a2, 0
	b	.LBB0_260
.LBB0_259:                              # %if.then2587
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $t1, 0
.LBB0_260:                              # %if.end2598
                                        #   in Loop: Header=BB0_204 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $t1, 0
	beqz	$a1, .LBB0_263
# %bb.261:                              # %cond.end2644
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a2, $a1, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	bnez	$a0, .LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_204 Depth=2
	move	$s1, $zero
	b	.LBB0_203
.LBB0_263:                              # %cond.end2644.thread
                                        #   in Loop: Header=BB0_204 Depth=2
	st.d	$a0, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
.LBB0_264:                              # %cond.false2653
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	move	$s1, $zero
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_203
.LBB0_265:                              # %land.lhs.true2910
                                        #   in Loop: Header=BB0_204 Depth=2
	mul.w	$a0, $s5, $a5
	bstrpick.d	$a2, $a0, 62, 56
	ld.w	$a3, $sp, 260
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 7
	add.d	$a0, $a1, $a2
	blt	$a3, $a0, .LBB0_249
# %bb.266:                              # %land.lhs.true2910
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.w	$a0, $sp, 264
	blt	$a0, $a2, .LBB0_249
# %bb.267:                              # %if.then2919
                                        #   in Loop: Header=BB0_204 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $s2, 32
	masknez	$a0, $a5, $s3
	ori	$a3, $zero, 128
	maskeqz	$a4, $a3, $s3
	or	$a0, $a4, $a0
	masknez	$a4, $a3, $s3
	maskeqz	$a3, $a5, $s3
	or	$a3, $a3, $a4
	st.w	$a0, $s2, 64
	st.w	$a3, $s2, 72
	move	$a0, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	b	.LBB0_251
.LBB0_268:                              # %for.end2962.loopexit
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$s4, $s0, 8
	ori	$s8, $zero, 1
	bne	$s4, $s0, .LBB0_270
	b	.LBB0_274
.LBB0_269:                              #   in Loop: Header=BB0_192 Depth=1
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	beq	$s4, $s0, .LBB0_274
.LBB0_270:                              # %if.then2971
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB0_272
# %bb.271:                              # %if.then2977
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
.LBB0_272:                              # %if.end2979
                                        #   in Loop: Header=BB0_192 Depth=1
	st.d	$s4, $s3, 0
	st.d	$s0, $t1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$s4, $s3, 0
	st.d	$fp, $t1, 0
	beqz	$fp, .LBB0_274
# %bb.273:                              # %cond.false3020
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a3, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_274:                              # %if.end3046
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a0, $sp, 320
	ld.d	$a1, $a0, 8
	bne	$a1, $a0, .LBB0_189
# %bb.275:                              # %land.lhs.true3052
                                        #   in Loop: Header=BB0_192 Depth=1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_189
	b	.LBB0_190
.LBB0_276:                              # %for.end3095
	ld.d	$s1, $sp, 336
	beqz	$s1, .LBB0_283
# %bb.277:                              # %if.then3098
	ld.d	$fp, $s1, 8
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	beq	$fp, $s1, .LBB0_282
# %bb.278:                              # %if.then3110
	ld.bu	$a0, $fp, 32
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	beqz	$a0, .LBB0_280
# %bb.279:                              # %if.then3116
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
.LBB0_280:                              # %cond.end3150
	st.d	$fp, $s3, 0
	st.d	$s1, $t1, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	st.d	$fp, $s3, 0
	st.d	$s0, $t1, 0
	beqz	$s0, .LBB0_282
# %bb.281:                              # %cond.false3159
	ld.d	$a0, $s0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $fp, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $t1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
.LBB0_282:                              # %if.end3185
	ld.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_283:                              # %if.end3187
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_286
# %bb.284:                              # %land.lhs.true3190
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB0_286
# %bb.285:                              # %if.then3193
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 80
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 21
	ori	$a1, $zero, 12
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_286:                              # %if.end3199
	ld.h	$a0, $s5, 42
	ori	$a0, $a0, 2
	st.h	$a0, $s5, 42
	fld.d	$fs1, $sp, 344                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 352                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB0_287:                              # %lor.lhs.false
	bne	$a0, $a5, .LBB0_37
# %bb.288:                              # %lor.lhs.false
	ld.d	$a0, $a4, 0
	beq	$a3, $a0, .LBB0_38
	b	.LBB0_37
.Lfunc_end0:
	.size	SizeGalley, .Lfunc_end0-SizeGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_66-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_64-.LJTI0_0
	.word	.LBB0_68-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_75-.LJTI0_0
	.word	.LBB0_60-.LJTI0_0
	.word	.LBB0_74-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_208-.LJTI0_1
	.word	.LBB0_212-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_228-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_201-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
	.word	.LBB0_215-.LJTI0_1
	.word	.LBB0_203-.LJTI0_1
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SizeGalley: precondition!"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SizeGalley: already sized!"
	.size	.L.str.2, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SizeGalley: threads!"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"galley %s must have just one column mark"
	.size	.L.str.5, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s,%s object too wide for available space"
	.size	.L.str.6, 42

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SizeGalley: BreakObject failed to fit!"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SizeGalley COL_THR: Up(y)!=LastUp(y)!"
	.size	.L.str.9, 38

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SizeGalley: missing COL_THR!"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SizeGalley/SPLIT: hor != thor!"
	.size	.L.str.11, 31

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SizeGalley COL_THR: Up(y) != LastUp(y)!"
	.size	.L.str.12, 40

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SizeObject: type(z) != SCALE!"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SizeObject: bc(constraint(z)) != 0"
	.size	.L.str.14, 35

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SizeObject SCALE: Down(z) == z!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s with unspecified scale factor in horizontal galley"
	.size	.L.str.16, 54

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"@Scale"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"replacing infinite scale factor (unconstrained width) by 1.0"
	.size	.L.str.18, 61

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"replacing infinite scale factor (zero width object) by 1.0"
	.size	.L.str.19, 59

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"replacing very large scale factor (over 100) by 1.0"
	.size	.L.str.20, 52

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"object deleted (scale factor is zero)"
	.size	.L.str.21, 38

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"object deleted (scale factor is smaller than 0.01)"
	.size	.L.str.22, 51

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.space	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%s replaced by %s (mark not shared)"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"%s replaced by %s (infinite scale factor)"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%s replaced by %s (zero scale factor)"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%s replaced by %s (insufficient space)"
	.size	.L.str.27, 39

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"assert failed in %s %s"
	.size	.L.str.28, 23

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SizeGalley:"
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SizeG: extras!"
	.size	.L.str.30, 15

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"unexpected absence of %s from the body of %s"
	.size	.L.str.31, 45

	.section	".note.GNU-stack","",@progbits
	.addrsig
