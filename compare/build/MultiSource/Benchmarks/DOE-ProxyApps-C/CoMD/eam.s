	.file	"eam.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function initEamPot
.LCPI0_0:
	.dword	0x4059e921dd37dc65              # double 103.64269190268676
.LCPI0_2:
	.dword	0x402ccc9e3fcf6bae              # double 14.399644846029187
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.text
	.globl	initEamPot
	.p2align	5
	.type	initEamPot,@function
initEamPot:                             # @initEamPot
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
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
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -304
	move	$s7, $a2
	move	$s5, $a1
	move	$s6, $a0
	ori	$a0, $zero, 120
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(eamForce)
	addi.d	$a0, $a0, %pc_lo12(eamForce)
	st.d	$a0, $fp, 40
	pcalau12i	$a0, %pc_hi20(eamPrint)
	addi.d	$a0, $a0, %pc_lo12(eamPrint)
	st.d	$a0, $fp, 48
	pcalau12i	$a0, %pc_hi20(eamDestroy)
	addi.d	$a0, $a0, %pc_lo12(eamDestroy)
	st.d	$a0, $fp, 56
	addi.d	$s1, $fp, 64
	addi.d	$s8, $fp, 72
	addi.d	$s4, $fp, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 64
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	xvst	$xr0, $fp, 80
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 32
	addi.d	$s2, $fp, 24
	beqz	$a0, .LBB0_3
# %bb.1:                                # %if.end10
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
.LBB0_2:                                # %eamBcastPotential.exit
	addi.d	$a0, $sp, 192
	ori	$a1, $zero, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(bcastParallel)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 192
	fld.d	$fa1, $sp, 208
	ld.w	$a0, $sp, 228
	vst	$vr0, $fp, 0
	fst.d	$fa1, $fp, 16
	st.w	$a0, $fp, 36
	addi.d	$a1, $sp, 216
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 224
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcastInterpolationObject)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcastInterpolationObject)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcastInterpolationObject)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 320
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
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
.LBB0_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_11
# %bb.4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_60
# %bb.5:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 192
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_61
# %bb.6:                                # %if.end.i31
	move	$s5, $a0
	lu12i.w	$s6, 1
	addi.d	$a0, $sp, 192
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 124
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 124
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 188
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 168
	addi.d	$a5, $sp, 160
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 188
	fld.d	$fa0, $sp, 168
	fld.d	$fa1, $sp, 176
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $fp, 36
	fst.d	$fa0, $fp, 16
	fmul.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $fp, 8
	addi.d	$a1, $sp, 160
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 156
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 152
	addi.d	$a5, $sp, 136
	addi.d	$a6, $sp, 128
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 128
	ld.w	$s3, $sp, 156
	ld.w	$a0, $sp, 152
	fst.d	$fa0, $fp, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 1
	move	$s6, $a0
	blt	$s3, $s8, .LBB0_9
# %bb.7:                                # %for.body.i70.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_8:                                # %for.body.i70
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 156
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s3, .LBB0_8
.LBB0_9:                                # %for.cond.cleanup.i39
	fld.d	$fs0, $sp, 144
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$s7, $s3, 3
	addi.d	$a1, $s7, 24
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s1, $a0, 8
	st.d	$s1, $s0, 24
	st.w	$s3, $s0, 0
	frecip.d	$fa0, $fs0
	fst.d	$fa0, $s0, 16
	st.d	$zero, $s0, 8
	blt	$s3, $s8, .LBB0_18
# %bb.10:                               # %for.body.preheader.i.i68
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	b	.LBB0_19
.LBB0_11:                               # %if.then4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 192
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_62
# %bb.12:                               # %if.end.i
	move	$s6, $a0
	lu12i.w	$s0, 1
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 188
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 188
	ori	$s1, $zero, 1
	bne	$a0, $s1, .LBB0_63
# %bb.13:                               # %if.end16.i
	lu12i.w	$s0, 1
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 156
	addi.d	$a3, $sp, 176
	addi.d	$a4, $sp, 152
	addi.d	$a5, $sp, 168
	addi.d	$a6, $sp, 160
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 160
	fst.d	$fa0, $fp, 0
	addi.d	$a0, $sp, 192
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 192
	addi.d	$a2, $sp, 124
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 136
	addi.d	$a5, $sp, 128
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 124
	fld.d	$fa0, $sp, 136
	fld.d	$fa1, $sp, 144
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $fp, 36
	fst.d	$fa0, $fp, 16
	fmul.d	$fa0, $fa1, $fa2
	fst.d	$fa0, $fp, 8
	addi.d	$a1, $sp, 128
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 156
	ld.w	$a0, $sp, 152
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	blt	$s3, $s1, .LBB0_16
# %bb.14:                               # %for.body.i.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s5
	.p2align	4, , 16
.LBB0_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 156
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s3, .LBB0_15
.LBB0_16:                               # %for.cond.cleanup.i
	fld.d	$fs0, $sp, 176
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.d	$s0, $s3, 3
	addi.d	$a1, $s0, 24
	ori	$a0, $zero, 1
	ori	$s8, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s1, $a0, 8
	st.d	$s1, $s7, 24
	st.w	$s3, $s7, 0
	frecip.d	$fa0, $fs0
	fst.d	$fa0, $s7, 16
	st.d	$zero, $s7, 8
	blt	$s3, $s8, .LBB0_39
# %bb.17:                               # %for.body.preheader.i.i
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	b	.LBB0_40
.LBB0_18:
	movgr2fr.d	$fa0, $zero
.LBB0_19:                               # %initInterpolationObject.exit.i51
	fst.d	$fa0, $s2, 0
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa0, $a0, -8
	ld.w	$s3, $sp, 152
	fstx.d	$fa0, $s1, $s7
	fst.d	$fa0, $a0, 8
	ori	$a0, $zero, 1
	st.d	$s0, $s4, 0
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	blt	$s3, $a0, .LBB0_29
# %bb.20:                               # %for.body41.i.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_21:                               # %for.body41.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 152
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s3, .LBB0_21
# %bb.22:                               # %for.cond49.preheader.i
	fld.d	$fa6, $sp, 136
	ori	$a0, $zero, 2
	xvst	$xr6, $sp, 16                   # 32-byte Folded Spill
	blt	$s3, $a0, .LBB0_30
# %bb.23:                               # %for.body53.lr.ph.i
	ori	$a1, $zero, 5
	ori	$a0, $zero, 1
	bltu	$s3, $a1, .LBB0_27
# %bb.24:                               # %vector.ph
	addi.d	$a1, $s3, -1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$a0, $a1
	bstrins.d	$a0, $a3, 1, 0
	xvreplve0.d	$xr0, $xr6
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI0_1)
	addi.d	$a3, $s6, 8
	lu12i.w	$a4, 261366
	ori	$a4, $a4, 2990
	lu32i.d	$a4, -209762
	lu52i.d	$a4, $a4, 1026
	xvreplgr2vr.d	$xr2, $a4
	move	$a4, $a2
	xvld	$xr5, $sp, 80                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB0_25:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a3, 0
	vext2xv.du.wu	$xr4, $xr1
	xvffint.d.lu	$xr4, $xr4
	xvfmadd.d	$xr4, $xr4, $xr0, $xr5
	xvfdiv.d	$xr4, $xr3, $xr4
	xvfmul.d	$xr3, $xr3, $xr4
	xvfmul.d	$xr3, $xr3, $xr2
	xvst	$xr3, $a3, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_25
# %bb.26:                               # %middle.block
	beq	$a1, $a2, .LBB0_30
.LBB0_27:                               # %for.body53.i.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_2)
	sub.d	$a1, $s3, $a0
	alsl.d	$a2, $a0, $s6, 3
	movgr2fr.d	$fa1, $zero
	.p2align	4, , 16
.LBB0_28:                               # %for.body53.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	fld.d	$fa2, $a2, 0
	movgr2fr.d	$fa3, $a3
	ffint.d.l	$fa3, $fa3
	fmadd.d	$fa3, $fa3, $fa6, $fa1
	fdiv.d	$fa3, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa0
	fst.d	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB0_28
	b	.LBB0_30
.LBB0_29:                               # %for.cond49.preheader.thread.i
	fld.d	$fa0, $sp, 136
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
.LBB0_30:                               # %for.cond.cleanup52.i
	fld.d	$fa0, $s6, 8
	fld.d	$fa1, $s6, 16
	fsub.d	$fa1, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s6, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.d	$s0, $s3, 3
	addi.d	$s8, $s0, 24
	ori	$a0, $zero, 1
	ori	$s4, $zero, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	addi.d	$s1, $a0, 8
	st.d	$s1, $s7, 24
	st.w	$s3, $s7, 0
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	frecip.d	$fs0, $fa0
	fst.d	$fs0, $s7, 16
	st.d	$zero, $s7, 8
	blt	$s3, $s4, .LBB0_34
# %bb.31:                               # %for.body.preheader.i56.i
	move	$s2, $a0
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 8
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa1, $a0, -8
	move	$s8, $zero
	fst.d	$fa0, $s2, 0
	fstx.d	$fa1, $s1, $s0
	fst.d	$fa1, $a0, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s6
	.p2align	4, , 16
.LBB0_32:                               # %for.body75.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 152
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	blt	$s8, $s3, .LBB0_32
# %bb.33:                               # %for.cond.cleanup74.loopexit.i
	fld.d	$fa0, $sp, 136
	slli.d	$a0, $s3, 3
	addi.d	$s8, $a0, 24
	frecip.d	$fs0, $fa0
	b	.LBB0_35
.LBB0_34:                               # %for.cond.cleanup74.critedge.i
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa0, $a0, -8
	fstx.d	$fa0, $s1, $s0
	fst.d	$fa0, $a0, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s7, $a0, 0
.LBB0_35:                               # %for.cond.cleanup74.i
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$s4, $zero, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s1, $a0, 8
	st.d	$s1, $s0, 24
	st.w	$s3, $s0, 0
	fst.d	$fs0, $s0, 16
	st.d	$zero, $s0, 8
	slli.d	$s5, $s3, 3
	blt	$s3, $s4, .LBB0_37
# %bb.36:                               # %for.body.preheader.i72.i
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	b	.LBB0_38
.LBB0_37:
	movgr2fr.d	$fa0, $zero
.LBB0_38:                               # %eamReadFuncfl.exit
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	fst.d	$fa0, $s2, 0
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa0, $a0, -8
	fstx.d	$fa0, $s1, $s5
	fst.d	$fa0, $a0, 8
	st.d	$s0, $s8, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_58
.LBB0_39:
	movgr2fr.d	$fa0, $zero
.LBB0_40:                               # %initInterpolationObject.exit.i
	fst.d	$fa0, $s2, 0
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa0, $a0, -8
	ld.w	$s3, $sp, 152
	fstx.d	$fa0, $s1, $s0
	fst.d	$fa0, $a0, 8
	st.d	$s7, $s4, 0
	blt	$s3, $s8, .LBB0_43
# %bb.41:                               # %for.body45.i.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s5
	.p2align	4, , 16
.LBB0_42:                               # %for.body45.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 152
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s3, .LBB0_42
.LBB0_43:                               # %for.cond.cleanup44.i
	fld.d	$fa0, $sp, 168
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.d	$s0, $s3, 3
	addi.d	$a1, $s0, 24
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	addi.d	$s8, $a0, 8
	st.d	$s8, $s7, 24
	st.w	$s3, $s7, 0
	frecip.d	$fa0, $fa1
	fst.d	$fa0, $s7, 16
	st.d	$zero, $s7, 8
	blt	$s3, $s2, .LBB0_53
# %bb.44:                               # %for.body.preheader.i54.i
	move	$s1, $a0
	move	$a0, $s8
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 8
	alsl.d	$a0, $s3, $s8, 3
	fld.d	$fa1, $a0, -8
	move	$s2, $zero
	fst.d	$fa0, $s1, 0
	fstx.d	$fa1, $s8, $s0
	fst.d	$fa1, $a0, 8
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.d	$s7, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s0, $a0, %pc_lo12(.L.str.16)
	move	$s1, $s5
	.p2align	4, , 16
.LBB0_45:                               # %for.body58.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 152
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	blt	$s2, $s3, .LBB0_45
# %bb.46:                               # %for.cond66.preheader.i
	fld.d	$fa5, $sp, 168
	ori	$a0, $zero, 2
	xvst	$xr5, $sp, 16                   # 32-byte Folded Spill
	blt	$s3, $a0, .LBB0_54
# %bb.47:                               # %for.body70.lr.ph.i
	ori	$a1, $zero, 5
	ori	$a0, $zero, 1
	bltu	$s3, $a1, .LBB0_51
# %bb.48:                               # %vector.ph113
	addi.d	$a1, $s3, -1
	move	$a2, $a1
	bstrins.d	$a2, $zero, 1, 0
	ori	$a3, $zero, 1
	move	$a0, $a1
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_1)
	bstrins.d	$a0, $a3, 1, 0
	xvreplve0.d	$xr1, $xr5
	addi.d	$a3, $s5, 8
	move	$a4, $a2
	xvld	$xr4, $sp, 80                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB0_49:                               # %vector.body118
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, 0
	vext2xv.du.wu	$xr3, $xr0
	xvffint.d.lu	$xr3, $xr3
	xvfmadd.d	$xr3, $xr3, $xr1, $xr4
	xvfdiv.d	$xr2, $xr2, $xr3
	xvst	$xr2, $a3, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_49
# %bb.50:                               # %middle.block125
	beq	$a1, $a2, .LBB0_54
.LBB0_51:                               # %for.body70.i.preheader
	sub.d	$a1, $s3, $a0
	alsl.d	$a2, $a0, $s5, 3
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB0_52:                               # %for.body70.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	fld.d	$fa1, $a2, 0
	movgr2fr.d	$fa2, $a3
	ffint.d.l	$fa2, $fa2
	fmadd.d	$fa2, $fa2, $fa5, $fa0
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.w	$a0, $a0, 1
	bnez	$a1, .LBB0_52
	b	.LBB0_54
.LBB0_53:                               # %for.cond.cleanup69.critedge.i
	alsl.d	$a0, $s3, $s8, 3
	fld.d	$fa0, $a0, -8
	fstx.d	$fa0, $s8, $s0
	fst.d	$fa0, $a0, 8
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.d	$s7, $s8, 0
.LBB0_54:                               # %for.cond.cleanup69.i
	fld.d	$fa0, $s5, 8
	fld.d	$fa1, $s5, 16
	fsub.d	$fa1, $fa0, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s5, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	slli.d	$s6, $s3, 3
	addi.d	$a1, $s6, 24
	ori	$a0, $zero, 1
	ori	$s7, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s1, $a0, 8
	st.d	$s1, $s0, 24
	st.w	$s3, $s0, 0
	xvld	$xr0, $sp, 16                   # 32-byte Folded Reload
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $s0, 16
	st.d	$zero, $s0, 8
	blt	$s3, $s7, .LBB0_56
# %bb.55:                               # %for.body.preheader.i70.i
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	b	.LBB0_57
.LBB0_56:
	movgr2fr.d	$fa0, $zero
.LBB0_57:                               # %eamReadSetfl.exit
	fst.d	$fa0, $s2, 0
	alsl.d	$a0, $s3, $s1, 3
	fld.d	$fa0, $a0, -8
	fstx.d	$fa0, $s1, $s6
	fst.d	$fa0, $a0, 8
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	st.d	$s0, $s1, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_58:                               # %if.end10
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
.LBB0_59:                               # %if.then.i82
	vld	$vr0, $fp, 0
	fld.d	$fa1, $fp, 16
	ld.w	$a0, $fp, 36
	vst	$vr0, $sp, 192
	fst.d	$fa1, $sp, 208
	st.w	$a0, $sp, 228
	addi.d	$a0, $sp, 216
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 224
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_60:                               # %if.else8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(typeNotSupported)
	jirl	$ra, $ra, 0
.LBB0_61:                               # %if.then.i74
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(fileNotFound)
	jirl	$ra, $ra, 0
.LBB0_62:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	addi.d	$a1, $sp, 192
	pcaddu18i	$ra, %call36(fileNotFound)
	jirl	$ra, $ra, 0
.LBB0_63:                               # %if.then15.i
	pcaddu18i	$ra, %call36(notAlloyReady)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	initEamPot, .Lfunc_end0-initEamPot
                                        # -- End function
	.p2align	5                               # -- Begin function eamForce
	.type	eamForce,@function
eamForce:                               # @eamForce
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
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
	move	$a2, $a0
	ld.d	$a3, $a0, 64
	ld.d	$a0, $a3, 104
	ld.d	$s0, $a2, 24
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	bnez	$a0, .LBB1_2
# %bb.1:                                # %if.then
	ld.w	$a0, $s0, 20
	slli.w	$a0, $a0, 6
	slli.d	$s1, $a0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 96
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a2, 88
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(initForceHaloExchange)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, 104
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 96
	ld.d	$s0, $a2, 24
	st.d	$a0, $a3, 112
	st.d	$a1, $a0, 0
	st.d	$s0, $a0, 8
.LBB1_2:                                # %if.end
	fld.d	$fa0, $a3, 0
	ld.d	$a0, $a2, 32
	ld.w	$a1, $s0, 20
	fmul.d	$fs0, $fa0, $fa0
	ld.d	$a0, $a0, 40
	slli.w	$a1, $a1, 6
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	move	$fp, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	ld.w	$a2, $a0, 20
	ld.d	$a0, $a1, 48
	slli.w	$a1, $a2, 6
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 20
	ld.d	$a0, $fp, 96
	slli.w	$a1, $a1, 6
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 20
	ld.d	$a0, $fp, 88
	slli.w	$a1, $a1, 6
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	ld.w	$a1, $a0, 12
	ori	$s2, $zero, 1
	blt	$a1, $s2, .LBB1_34
# %bb.3:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$fp, $zero
	movgr2fr.d	$fs2, $zero
	fmov.d	$fs1, $fs2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
.LBB1_5:                                # %for.cond.cleanup50
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a0, $t6, 24
	ld.w	$a1, $a0, 12
	addi.d	$s0, $s0, 1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	addi.w	$fp, $fp, 64
	bge	$s0, $a1, .LBB1_26
.LBB1_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_17 Depth 4
	ld.d	$a1, $a0, 120
	slli.d	$a2, $s0, 2
	ldx.w	$s1, $a1, $a2
	addi.d	$a2, $sp, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getNeighborBoxes)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $s2, .LBB1_4
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	blt	$s1, $s2, .LBB1_4
# %bb.8:                                # %for.body51.us.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a6, $s1
	move	$a7, $zero
	bstrpick.d	$t0, $fp, 31, 0
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a5, $sp, 92
	vldi	$vr14, -928
	vldi	$vr15, -896
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %cleanup177.us
                                        #   in Loop: Header=BB1_10 Depth=2
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB1_5
.LBB1_10:                               # %for.body51.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_17 Depth 4
	slli.d	$a1, $a7, 2
	ldx.wu	$s8, $a1, $a5
	addi.w	$t1, $s8, 0
	blt	$t1, $s0, .LBB1_9
# %bb.11:                               # %if.end57.us
                                        #   in Loop: Header=BB1_10 Depth=2
	ld.d	$t2, $t6, 24
	ld.d	$a1, $t2, 120
	slli.d	$a2, $t1, 2
	ldx.w	$s3, $a1, $a2
	blt	$s3, $s2, .LBB1_9
# %bb.12:                               # %for.body67.us.us.preheader
                                        #   in Loop: Header=BB1_10 Depth=2
	move	$s4, $zero
	slli.w	$a1, $t1, 6
	slli.d	$t3, $a1, 3
	slli.d	$a2, $a1, 4
	alsl.d	$t4, $a1, $a2, 3
	move	$s6, $t0
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %for.cond69.for.cond.cleanup72_crit_edge.us.us
                                        #   in Loop: Header=BB1_14 Depth=3
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	beq	$s4, $a6, .LBB1_9
.LBB1_14:                               # %for.body67.us.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_17 Depth 4
	move	$s5, $zero
	move	$s7, $t4
	move	$s1, $t3
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               # %interpolate.exit180.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	fsub.d	$ft2, $fa7, $ft0
	fsub.d	$ft3, $fa5, $fa6
	fsub.d	$fa7, $ft1, $fa3
	fsub.d	$fa7, $fa7, $ft3
	fmadd.d	$fa7, $ft2, $fa7, $ft3
	fmul.d	$fa7, $fa7, $ft6
	fmul.d	$ft1, $fa2, $fa7
	alsl.d	$a3, $a2, $a1, 3
	slli.d	$a2, $a2, 3
	fld.d	$fa7, $a3, 8
	ld.d	$a4, $fp, 40
	fld.d	$ft0, $a3, -8
	slli.d	$a3, $s6, 4
	alsl.d	$a3, $s6, $a3, 3
	fldx.d	$ft4, $a4, $a3
	fldx.d	$fa2, $a1, $a2
	fmul.d	$ft5, $ft1, $fs5
	fdiv.d	$ft5, $ft5, $fa0
	fsub.d	$ft4, $ft4, $ft5
	fstx.d	$ft4, $a4, $a3
	fldx.d	$ft4, $a4, $s7
	fadd.d	$ft4, $ft5, $ft4
	add.d	$a1, $a4, $a3
	fstx.d	$ft4, $a4, $s7
	fld.d	$ft4, $a1, 8
	add.d	$a2, $a4, $s7
	fmul.d	$ft5, $ft1, $fs4
	fdiv.d	$ft5, $ft5, $fa0
	fsub.d	$ft4, $ft4, $ft5
	fst.d	$ft4, $a1, 8
	fld.d	$ft4, $a2, 8
	fadd.d	$fa5, $fa5, $fa6
	fadd.d	$fa6, $ft5, $ft4
	fst.d	$fa6, $a2, 8
	fld.d	$fa6, $a1, 16
	fmul.d	$ft4, $ft2, $ft6
	fmul.d	$ft1, $ft1, $fs3
	fdiv.d	$fa0, $ft1, $fa0
	fsub.d	$fa6, $fa6, $fa0
	fst.d	$fa6, $a1, 16
	fld.d	$fa6, $a2, 16
	fmadd.d	$fa5, $fa3, $ft7, $fa5
	fmadd.d	$fa5, $ft2, $fa5, $ft3
	fmadd.d	$fa3, $ft4, $fa5, $fa3
	fadd.d	$fa0, $fa0, $fa6
	ld.d	$a1, $fp, 48
	fst.d	$fa0, $a2, 16
	fsub.d	$fa0, $fa1, $fa4
	slli.d	$a2, $s6, 3
	fldx.d	$fa1, $a1, $a2
	fsub.d	$fa4, $fa7, $ft0
	fmul.d	$fa5, $fa0, $ft6
	fadd.d	$fa6, $fa7, $ft0
	fmadd.d	$fa1, $fa3, $ft6, $fa1
	fstx.d	$fa1, $a1, $a2
	fldx.d	$fa1, $a1, $s1
	fmadd.d	$fa6, $fa2, $ft7, $fa6
	ld.d	$a3, $t7, 88
	ld.w	$a4, $t2, 12
	fmadd.d	$fa1, $fa3, $ft6, $fa1
	fstx.d	$fa1, $a1, $s1
	fldx.d	$fa1, $a3, $a2
	fmadd.d	$fa0, $fa0, $fa6, $fa4
	fmadd.d	$fa0, $fa5, $fa0, $fa2
	slt	$a1, $t1, $a4
	fadd.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $a3, $a2
	fldx.d	$fa1, $a3, $s1
	fadd.d	$fa2, $fs1, $fa3
	fmadd.d	$fa3, $fa3, $ft6, $fs1
	movgr2cf	$fcc0, $a1
	fsel	$fs1, $fa3, $fa2, $fcc0
	fadd.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a3, $s1
.LBB1_16:                               # %for.inc165.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	addi.w	$s5, $s5, 1
	addi.d	$s1, $s1, 8
	addi.d	$s7, $s7, 24
	beq	$s3, $s5, .LBB1_13
.LBB1_17:                               # %for.body73.us.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_10 Depth=2
                                        #       Parent Loop BB1_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s0, $s8, .LBB1_19
# %bb.18:                               # %for.body73.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	bgeu	$s4, $s5, .LBB1_16
.LBB1_19:                               # %if.end79.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	ld.d	$fp, $t6, 32
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $s6, $s6, 1
	slli.d	$a2, $a2, 3
	add.d	$a3, $a1, $a2
	fldx.d	$fa0, $a1, $a2
	fldx.d	$fa1, $a1, $s7
	add.d	$a1, $a1, $s7
	fld.d	$fa2, $a3, 8
	fld.d	$fa3, $a1, 8
	fsub.d	$fs5, $fa0, $fa1
	fld.d	$fa0, $a3, 16
	fld.d	$fa1, $a1, 16
	fsub.d	$fs4, $fa2, $fa3
	fmadd.d	$fa2, $fs5, $fs5, $fs2
	fmadd.d	$fa2, $fs4, $fs4, $fa2
	fsub.d	$fs3, $fa0, $fa1
	fmadd.d	$fa1, $fs3, $fs3, $fa2
	fcmp.clt.d	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB1_16
# %bb.20:                               # %if.end106.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_25
.LBB1_21:                               # %if.end106.us.us.split
                                        #   in Loop: Header=BB1_17 Depth=4
	ld.d	$a2, $t7, 64
	fld.d	$fa1, $a2, 8
	ld.d	$a1, $a2, 24
	fld.d	$fa2, $a2, 16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa3, $fa0, $fa1, $fcc0
	fsub.d	$fa1, $fa3, $fa1
	fmul.d	$fa7, $fa2, $fa1
	vreplvei.d	$vr1, $vr7, 0
	ld.w	$a3, $a2, 0
	vfrintrm.d	$vr8, $vr1
	ftintrz.w.d	$fa1, $ft0
	movfr2gr.s	$a2, $fa1
	bge	$a3, $a2, .LBB1_23
# %bb.22:                               # %if.then5.i.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa7, $fa1, $fa2
	vreplvei.d	$vr1, $vr7, 0
	vfrintrm.d	$vr8, $vr1
	move	$a2, $a3
.LBB1_23:                               # %interpolate.exit.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	alsl.d	$a3, $a2, $a1, 3
	fld.d	$fa5, $a3, 8
	ld.d	$a4, $t7, 72
	fld.d	$fa6, $a3, -8
	fld.d	$ft1, $a3, 16
	slli.d	$a2, $a2, 3
	fld.d	$fa1, $a4, 8
	fldx.d	$fa3, $a1, $a2
	ld.d	$a1, $a4, 24
	fld.d	$ft2, $a4, 16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa4, $fa0, $fa1, $fcc0
	fsub.d	$fa1, $fa4, $fa1
	fmul.d	$fa1, $ft2, $fa1
	vreplvei.d	$vr4, $vr1, 0
	ld.w	$a3, $a4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.w.d	$ft3, $fa4
	movfr2gr.s	$a2, $ft3
	bge	$a3, $a2, .LBB1_15
# %bb.24:                               # %if.then5.i176.us.us
                                        #   in Loop: Header=BB1_17 Depth=4
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $ft2
	vreplvei.d	$vr4, $vr1, 0
	vfrintrm.d	$vr4, $vr4
	move	$a2, $a3
	b	.LBB1_15
.LBB1_25:                               # %call.sqrt
                                        #   in Loop: Header=BB1_17 Depth=4
	fmov.d	$fa0, $fa1
	move	$s2, $a0
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$t4, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	vldi	$vr15, -896
	vldi	$vr14, -928
	addi.d	$a5, $sp, 92
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s2
	ori	$s2, $zero, 1
	b	.LBB1_21
.LBB1_26:                               # %for.cond189.preheader
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB1_35
# %bb.27:                               # %for.body195.lr.ph
	ld.d	$a0, $a0, 120
	move	$a3, $zero
	move	$a4, $zero
	vldi	$vr0, -928
	vldi	$vr1, -896
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %for.cond.cleanup208
                                        #   in Loop: Header=BB1_29 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, 64
	beq	$a3, $a1, .LBB1_35
.LBB1_29:                               # %for.body195
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_32 Depth 2
	slli.d	$a5, $a3, 2
	ldx.w	$a5, $a0, $a5
	blt	$a5, $a2, .LBB1_28
# %bb.30:                               # %for.body209.lr.ph
                                        #   in Loop: Header=BB1_29 Depth=1
	bstrpick.d	$a7, $a4, 31, 0
	ld.d	$a6, $t7, 80
	slli.d	$t3, $a7, 3
	ld.d	$t1, $t6, 32
	ld.d	$t4, $t7, 88
	ld.w	$a7, $a6, 0
	ld.d	$t0, $a6, 24
	ld.d	$t1, $t1, 48
	ld.d	$t2, $t7, 96
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	add.d	$t1, $t1, $t3
	add.d	$t2, $t2, $t3
	add.d	$t3, $t4, $t3
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_31:                               # %interpolate.exit208
                                        #   in Loop: Header=BB1_32 Depth=2
	alsl.d	$t5, $t4, $t0, 3
	slli.d	$t4, $t4, 3
	fld.d	$fa6, $t5, 8
	fld.d	$fa7, $t5, -8
	fld.d	$ft0, $t5, 16
	fldx.d	$ft1, $t0, $t4
	fsub.d	$fa4, $fa4, $fa5
	fsub.d	$fa5, $fa6, $fa7
	fsub.d	$ft0, $ft0, $ft1
	fmul.d	$ft2, $fa4, $fa0
	fadd.d	$fa6, $fa6, $fa7
	fmadd.d	$fa6, $ft1, $fa1, $fa6
	fsub.d	$fa7, $ft0, $fa5
	fmadd.d	$fa7, $fa4, $fa7, $fa5
	fmul.d	$fa7, $fa7, $fa0
	fmul.d	$fa3, $fa3, $fa7
	fst.d	$fa3, $t2, 0
	fld.d	$fa3, $t1, 0
	fmadd.d	$fa4, $fa4, $fa6, $fa5
	fmadd.d	$fa4, $ft2, $fa4, $ft1
	fadd.d	$fs1, $fs1, $fa4
	fadd.d	$fa3, $fa4, $fa3
	fst.d	$fa3, $t1, 0
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.w	$a5, $a5, -1
	addi.d	$t3, $t3, 8
	beqz	$a5, .LBB1_28
.LBB1_32:                               # %for.body209
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $t3, 0
	fld.d	$fa5, $a6, 8
	fld.d	$fa3, $a6, 16
	fcmp.clt.d	$fcc0, $fa4, $fa5
	fsel	$fa4, $fa4, $fa5, $fcc0
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa3, $fa4
	vreplvei.d	$vr5, $vr4, 0
	vfrintrm.d	$vr5, $vr5
	ftintrz.w.d	$fa6, $fa5
	movfr2gr.s	$t4, $fa6
	bge	$a7, $t4, .LBB1_31
# %bb.33:                               # %if.then5.i204
                                        #   in Loop: Header=BB1_32 Depth=2
	fdiv.d	$fa4, $fa2, $fa3
	vreplvei.d	$vr5, $vr4, 0
	vfrintrm.d	$vr5, $vr5
	move	$t4, $a7
	b	.LBB1_31
.LBB1_34:
	movgr2fr.d	$fs1, $zero
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
.LBB1_35:                               # %for.cond.cleanup194
	ori	$a0, $zero, 8
	move	$fp, $t7
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 104
	ld.d	$a1, $fp, 112
	pcaddu18i	$ra, %call36(haloExchange)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a5, 24
	ld.w	$a1, $a0, 12
	blt	$a1, $s2, .LBB1_56
# %bb.36:                               # %for.body246.lr.ph
	move	$s0, $zero
	move	$a7, $zero
	movgr2fr.d	$fs2, $zero
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_37:                               # %for.cond.cleanup260
                                        #   in Loop: Header=BB1_38 Depth=1
	ld.d	$a0, $a5, 24
	ld.w	$a1, $a0, 12
	addi.d	$s0, $s0, 1
	addi.w	$a7, $a7, 64
	bge	$s0, $a1, .LBB1_56
.LBB1_38:                               # %for.body246
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_42 Depth 2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 120
	slli.d	$a2, $s0, 2
	ldx.w	$fp, $a1, $a2
	addi.d	$a2, $sp, 92
	move	$a1, $s0
	pcaddu18i	$ra, %call36(getNeighborBoxes)
	jirl	$ra, $ra, 0
	vldi	$vr8, -928
	ori	$t1, $zero, 1
	addi.d	$t0, $sp, 92
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	blt	$a0, $t1, .LBB1_37
# %bb.39:                               # %for.body246
                                        #   in Loop: Header=BB1_38 Depth=1
	move	$t2, $fp
	blt	$fp, $t1, .LBB1_37
# %bb.40:                               # %for.body261.us.preheader
                                        #   in Loop: Header=BB1_38 Depth=1
	move	$t3, $zero
	bstrpick.d	$t4, $a7, 31, 0
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_41:                               # %cleanup402.us
                                        #   in Loop: Header=BB1_42 Depth=2
	addi.d	$t3, $t3, 1
	beq	$t3, $a0, .LBB1_37
.LBB1_42:                               # %for.body261.us
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_49 Depth 4
	slli.d	$a1, $t3, 2
	ldx.w	$a1, $a1, $t0
	blt	$a1, $s0, .LBB1_41
# %bb.43:                               # %if.end268.us
                                        #   in Loop: Header=BB1_42 Depth=2
	ld.d	$a2, $a5, 24
	ld.d	$a2, $a2, 120
	slli.d	$a3, $a1, 2
	ldx.w	$s8, $a2, $a3
	blt	$s8, $t1, .LBB1_41
# %bb.44:                               # %for.body281.us.us.preheader
                                        #   in Loop: Header=BB1_42 Depth=2
	move	$s4, $zero
	bstrpick.d	$s7, $a1, 31, 0
	slli.w	$a1, $a1, 6
	slli.d	$t5, $a1, 3
	slli.d	$a2, $a1, 4
	alsl.d	$t6, $a1, $a2, 3
	move	$s6, $t4
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %for.cond285.for.cond.cleanup288_crit_edge.us.us
                                        #   in Loop: Header=BB1_46 Depth=3
	addi.w	$s4, $s4, 1
	addi.d	$s6, $s6, 1
	beq	$s4, $t2, .LBB1_41
.LBB1_46:                               # %for.body281.us.us
                                        #   Parent Loop BB1_38 Depth=1
                                        #     Parent Loop BB1_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_49 Depth 4
	move	$fp, $zero
	alsl.d	$a1, $s6, $s6, 1
	slli.d	$s5, $a1, 3
	move	$s3, $t6
	move	$s1, $t5
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_47:                               # %interpolate.exit236.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	alsl.d	$a2, $a3, $a1, 3
	slli.d	$a3, $a3, 3
	fld.d	$fa4, $a2, 8
	fld.d	$fa5, $a2, -8
	fld.d	$fa6, $a2, 16
	fldx.d	$fa7, $a1, $a3
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa3, $fa4, $fa5
	fsub.d	$fa4, $fa6, $fa7
	fsub.d	$fa4, $fa4, $fa3
	fmadd.d	$fa2, $fa2, $fa4, $fa3
	ld.d	$a1, $a6, 96
	fmul.d	$fa2, $fa2, $ft0
	fmul.d	$fa1, $fa1, $fa2
	slli.d	$a2, $s6, 3
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	ld.d	$a3, $s2, 40
	slli.d	$a4, $s6, 4
	alsl.d	$a4, $s6, $a4, 3
	fadd.d	$fa2, $fa2, $fa3
	fldx.d	$fa3, $a3, $a4
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fs5, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa3, $fa2
	fstx.d	$fa2, $a3, $a4
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	fadd.d	$fa2, $fa2, $fa3
	fldx.d	$fa3, $a3, $s3
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fs5, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa2, $fa3, $fa2
	fstx.d	$fa2, $a3, $s3
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	add.d	$a4, $a3, $a4
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $a4, 8
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fs4, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a4, 8
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	add.d	$a3, $a3, $s3
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $a3, 8
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fs4, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a3, 8
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $a4, 16
	fmul.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fs3, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fsub.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $a4, 16
	fldx.d	$fa2, $a1, $a2
	fldx.d	$fa3, $a1, $s1
	fadd.d	$fa2, $fa2, $fa3
	fld.d	$fa3, $a3, 16
	fmul.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fs3, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	fadd.d	$fa0, $fa3, $fa0
	fst.d	$fa0, $a3, 16
.LBB1_48:                               # %for.inc390.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	addi.w	$fp, $fp, 1
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, 24
	beq	$s8, $fp, .LBB1_45
.LBB1_49:                               # %for.body289.us.us
                                        #   Parent Loop BB1_38 Depth=1
                                        #     Parent Loop BB1_42 Depth=2
                                        #       Parent Loop BB1_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s0, $s7, .LBB1_51
# %bb.50:                               # %for.body289.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	bgeu	$s4, $fp, .LBB1_48
.LBB1_51:                               # %if.end296.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	ld.d	$s2, $a5, 32
	ld.d	$a1, $s2, 24
	add.d	$a2, $a1, $s5
	fldx.d	$fa0, $a1, $s5
	fldx.d	$fa1, $a1, $s3
	add.d	$a1, $a1, $s3
	fld.d	$fa2, $a2, 8
	fld.d	$fa3, $a1, 8
	fsub.d	$fs5, $fa0, $fa1
	fld.d	$fa0, $a2, 16
	fld.d	$fa1, $a1, 16
	fsub.d	$fs4, $fa2, $fa3
	fmadd.d	$fa2, $fs5, $fs5, $fs2
	fmadd.d	$fa2, $fs4, $fs4, $fa2
	fsub.d	$fs3, $fa0, $fa1
	fmadd.d	$fa1, $fs3, $fs3, $fa2
	fcmp.cle.d	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB1_48
# %bb.52:                               # %if.end332.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_55
.LBB1_53:                               # %if.end332.us.us.split
                                        #   in Loop: Header=BB1_49 Depth=4
	ld.d	$a2, $a6, 72
	fld.d	$fa2, $a2, 8
	ld.d	$a1, $a2, 24
	fld.d	$fa1, $a2, 16
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa3, $fa0, $fa2, $fcc0
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa1, $fa2
	vreplvei.d	$vr3, $vr2, 0
	ld.w	$a2, $a2, 0
	vfrintrm.d	$vr3, $vr3
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a3, $fa4
	bge	$a2, $a3, .LBB1_47
# %bb.54:                               # %if.then5.i232.us.us
                                        #   in Loop: Header=BB1_49 Depth=4
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	vreplvei.d	$vr3, $vr2, 0
	vfrintrm.d	$vr3, $vr3
	move	$a3, $a2
	b	.LBB1_47
.LBB1_55:                               # %call.sqrt406
                                        #   in Loop: Header=BB1_49 Depth=4
	fmov.d	$fa0, $fa1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	st.d	$t5, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	vldi	$vr8, -928
	ori	$t1, $zero, 1
	addi.d	$t0, $sp, 92
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_53
.LBB1_56:                               # %for.cond.cleanup245
	fst.d	$fs1, $a5, 48
	move	$a0, $zero
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
.Lfunc_end1:
	.size	eamForce, .Lfunc_end1-eamForce
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function eamPrint
.LCPI2_0:
	.dword	0x4059e921dd37dc65              # double 103.64269190268676
	.text
	.p2align	5
	.type	eamPrint,@function
eamPrint:                               # @eamPrint
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 36
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI2_0)
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $s0, 24
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end2:
	.size	eamPrint, .Lfunc_end2-eamPrint
                                        # -- End function
	.p2align	5                               # -- Begin function eamDestroy
	.type	eamDestroy,@function
eamDestroy:                             # @eamDestroy
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_16
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB3_15
# %bb.2:                                # %if.end3
	ld.d	$a0, $s0, 64
	beqz	$a0, .LBB3_6
# %bb.3:                                # %if.end3.i
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB3_5
# %bb.4:                                # %if.then5.i
	addi.d	$a1, $a1, -8
	st.d	$a1, $a0, 24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 64
.LBB3_5:                                # %if.end8.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 64
.LBB3_6:                                # %destroyInterpolationObject.exit
	ld.d	$a0, $s0, 72
	beqz	$a0, .LBB3_10
# %bb.7:                                # %if.end3.i9
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB3_9
# %bb.8:                                # %if.then5.i12
	addi.d	$a1, $a1, -8
	st.d	$a1, $a0, 24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 72
.LBB3_9:                                # %if.end8.i15
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 72
.LBB3_10:                               # %destroyInterpolationObject.exit16
	ld.d	$a0, $s0, 80
	beqz	$a0, .LBB3_14
# %bb.11:                               # %if.end3.i18
	ld.d	$a1, $a0, 24
	beqz	$a1, .LBB3_13
# %bb.12:                               # %if.then5.i21
	addi.d	$a1, $a1, -8
	st.d	$a1, $a0, 24
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
.LBB3_13:                               # %if.end8.i24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 80
.LBB3_14:                               # %destroyInterpolationObject.exit25
	addi.d	$a0, $s0, 104
	pcaddu18i	$ra, %call36(destroyHaloExchange)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB3_15:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_16:                               # %return
	ret
.Lfunc_end3:
	.size	eamDestroy, .Lfunc_end3-eamDestroy
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function typeNotSupported
	.type	typeNotSupported,@function
typeNotSupported:                       # @typeNotSupported
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a4, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	typeNotSupported, .Lfunc_end4-typeNotSupported
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function bcastInterpolationObject
	.type	bcastInterpolationObject,@function
bcastInterpolationObject:               # @bcastInterpolationObject
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 0
	vld	$vr0, $a0, 8
	st.w	$a1, $sp, 8
	vst	$vr0, $sp, 16
.LBB5_2:                                # %if.end
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 24
	move	$a2, $zero
	pcaddu18i	$ra, %call36(bcastParallel)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(getMyRank)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_4
# %bb.3:                                # %if.then6
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 8
	vld	$vr0, $sp, 16
	move	$s0, $a0
	st.d	$a0, $fp, 0
	st.w	$s1, $a0, 0
	vst	$vr0, $a0, 8
	slli.d	$a0, $s1, 3
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $s0, 24
	b	.LBB5_5
.LBB5_4:                                # %if.end.if.end17_crit_edge
	ld.d	$a0, $fp, 0
	ld.w	$s1, $a0, 0
	ld.d	$a0, $a0, 24
.LBB5_5:                                # %if.end17
	ori	$a1, $zero, 24
	alsl.w	$a1, $s1, $a1, 3
	addi.d	$a0, $a0, -8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(bcastParallel)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	bcastInterpolationObject, .Lfunc_end5-bcastInterpolationObject
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function fileNotFound
	.type	fileNotFound,@function
fileNotFound:                           # @fileNotFound
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(stdout)
	ld.d	$a2, $a2, %got_pc_lo12(stdout)
	ld.d	$a2, $a2, 0
	move	$a3, $a1
	move	$a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $a2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	fileNotFound, .Lfunc_end6-fileNotFound
                                        # -- End function
	.p2align	5                               # -- Begin function notAlloyReady
	.type	notAlloyReady,@function
notAlloyReady:                          # @notAlloyReady
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$a2, $a2, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	notAlloyReady, .Lfunc_end7-notAlloyReady
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setfl"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"funcfl"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"initEamPot"
	.size	.L.str.2, 11

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"  Potential type  : EAM\n"
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"  Species name    : %s\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  Atomic number   : %d\n"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"  Mass            : %lg amu\n"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  Lattice type    : %s\n"
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"  Lattice spacing : %lg Angstroms\n"
	.size	.L.str.8, 35

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"  Cutoff          : %lg Angstroms\n"
	.size	.L.str.9, 35

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s/%s"
	.size	.L.str.10, 6

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"eamReadSetfl"
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%d"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%d %le %d %le %le"
	.size	.L.str.14, 18

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"%d %le %le %s"
	.size	.L.str.15, 14

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%lg"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%s: Can't open file %s.  Fatal Error.\n"
	.size	.L.str.17, 39

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s: CoMD 1.1 does not support alloys and cannot\n   read setfl files with multiple species.  Fatal Error.\n"
	.size	.L.str.18, 106

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"eamReadFuncfl"
	.size	.L.str.19, 14

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%s"
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s: Potential type %s not supported. Fatal Error.\n"
	.size	.L.str.21, 51

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym eamForce
	.addrsig_sym eamPrint
	.addrsig_sym eamDestroy
