	.file	"functs.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function speedup_test
.LCPI0_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI0_1:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	speedup_test
	.p2align	5
	.type	speedup_test,@function
speedup_test:                           # @speedup_test
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 244
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 69
	.p2align	4, , 16
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 244
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 244
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 244
	bne	$a0, $s0, .LBB0_1
# %bb.2:                                # %do.end
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 144
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 16
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 244
	addi.d	$a2, $sp, 44
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	sub.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(loop_time)
	st.d	$a1, $a0, %pc_lo12(loop_time)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(prog_time)
	st.d	$a1, $a0, %pc_lo12(prog_time)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI0_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	lu12i.w	$a1, 275200
	ld.d	$a3, $sp, 8
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $a3, 32
	or	$a0, $a0, $a2
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a3, $a1, 63, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_1)
	movgr2fr.d	$fa3, $a3
	fadd.d	$fa0, $fa3, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa2
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end0:
	.size	speedup_test, .Lfunc_end0-speedup_test
                                        # -- End function
	.globl	imix_test                       # -- Begin function imix_test
	.p2align	5
	.type	imix_test,@function
imix_test:                              # @imix_test
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 236
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 236
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	ori	$s1, $zero, 69
	.p2align	4, , 16
.LBB1_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $sp, 238
	addi.d	$a0, $a0, -58
	sltui	$a0, $a0, 1
	add.d	$s0, $s0, $a0
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 236
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 236
	ori	$a1, $zero, 100
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 236
	bne	$a0, $s1, .LBB1_1
# %bb.2:                                # %do.end
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 136
	addi.d	$a2, $sp, 36
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 8
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end1:
	.size	imix_test, .Lfunc_end1-imix_test
                                        # -- End function
	.globl	find_hard_raws                  # -- Begin function find_hard_raws
	.p2align	5
	.type	find_hard_raws,@function
find_hard_raws:                         # @find_hard_raws
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(hard_raw_list)
	ld.d	$a0, $a0, %got_pc_lo12(hard_raw_list)
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_4
.LBB2_1:                                # %while.end
	ret
	.p2align	4, , 16
.LBB2_2:                                # %while.body.if.end8_crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $a0, 0
.LBB2_3:                                # %if.end8
                                        #   in Loop: Header=BB2_4 Depth=1
	beqz	$a0, .LBB2_1
.LBB2_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a0, 48
	ld.d	$a2, $a0, 32
	bgeu	$a2, $a1, .LBB2_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	beqz	$a1, .LBB2_3
# %bb.6:                                # %if.then3
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB2_3
.Lfunc_end2:
	.size	find_hard_raws, .Lfunc_end2-find_hard_raws
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function specul_time_o
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	specul_time_o
	.p2align	5
	.type	specul_time_o,@function
specul_time_o:                          # @specul_time_o
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
	ori	$a6, $zero, 1
	move	$s1, $a5
	move	$s2, $a4
	move	$s0, $a3
	move	$fp, $a2
	move	$s3, $a1
	blt	$a1, $a6, .LBB3_8
# %bb.1:                                # %for.body.preheader
	bne	$s3, $a6, .LBB3_3
# %bb.2:
	move	$a1, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a0, 80
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -48
	ld.d	$a5, $a2, 8
	ld.d	$a6, $a2, -56
	ld.d	$a7, $a2, 0
	sub.d	$a4, $a4, $a6
	sub.d	$a5, $a5, $a7
	st.d	$a4, $a2, -40
	st.d	$a5, $a2, 16
	st.d	$zero, $a2, -32
	st.d	$zero, $a2, 24
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a1, $s3, .LBB3_8
.LBB3_6:                                # %for.body.preheader106
	sub.d	$a2, $s3, $a1
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 48
	.p2align	4, , 16
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -16
	ld.d	$a4, $a1, -24
	sub.d	$a3, $a3, $a4
	st.d	$a3, $a1, -8
	st.d	$zero, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 56
	bnez	$a2, .LBB3_7
.LBB3_8:                                # %while.cond.preheader
	pcalau12i	$a1, %got_pc_hi20(hard_raw_list)
	ld.d	$a1, $a1, %got_pc_lo12(hard_raw_list)
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_13
# %bb.9:                                # %while.body.preheader
	move	$s4, $zero
	ori	$a2, $zero, 56
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_10:                               # %if.end
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB3_14
.LBB3_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 24
	ld.d	$a4, $a1, 32
	ld.w	$a5, $a1, 40
	mul.d	$a3, $a3, $a2
	add.d	$a3, $a0, $a3
	ld.d	$a6, $a3, 48
	mul.d	$a3, $a5, $a2
	add.d	$a3, $a0, $a3
	ld.d	$a5, $a3, 48
	add.d	$a4, $a6, $a4
	bgeu	$a5, $a4, .LBB3_10
# %bb.12:                               # %if.then
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.d	$a3, $a3, 48
	st.d	$a4, $a3, 0
	addi.d	$s4, $s4, 1
	b	.LBB3_10
.LBB3_13:
	move	$s4, $zero
.LBB3_14:                               # %for.cond26.preheader
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB3_17
# %bb.15:                               # %for.body28.preheader
	bne	$s3, $a1, .LBB3_18
# %bb.16:
	move	$a1, $zero
	b	.LBB3_21
.LBB3_17:                               # %for.end41
	ld.d	$s5, $a0, 40
	b	.LBB3_30
.LBB3_18:                               # %vector.ph82
	bstrpick.d	$a1, $s3, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $a0, 96
	move	$a3, $a1
	.p2align	4, , 16
.LBB3_19:                               # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -56
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, -48
	ld.d	$a7, $a2, 8
	add.d	$a4, $a6, $a4
	add.d	$a5, $a7, $a5
	st.d	$a4, $a2, -56
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB3_19
# %bb.20:                               # %middle.block88
	beq	$a1, $s3, .LBB3_23
.LBB3_21:                               # %for.body28.preheader105
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 40
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB3_22:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 56
	bnez	$a1, .LBB3_22
.LBB3_23:                               # %for.body46.preheader
	ld.d	$s5, $a0, 40
	ori	$a1, $zero, 8
	bgeu	$s3, $a1, .LBB3_25
# %bb.24:
	move	$a1, $zero
	b	.LBB3_28
.LBB3_25:                               # %vector.ph93
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$a1, $a1, 3
	xvreplgr2vr.d	$xr0, $s5
	addi.d	$a2, $a0, 264
	move	$a3, $a1
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB3_26:                               # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -112
	ld.d	$a5, $a2, -56
	ld.d	$a6, $a2, -224
	ld.d	$a7, $a2, -168
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	xvpermi.q	$xr3, $xr2, 2
	ld.d	$a4, $a2, 112
	ld.d	$a5, $a2, 168
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a2, 56
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr4, $a6, 0
	vinsgr2vr.d	$vr4, $a7, 1
	xvpermi.q	$xr4, $xr2, 2
	xvmax.du	$xr0, $xr3, $xr0
	xvmax.du	$xr1, $xr4, $xr1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 448
	bnez	$a3, .LBB3_26
# %bb.27:                               # %middle.block100
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	xvld	$xr2, $a2, %pc_lo12(.LCPI3_0)
	xvmax.du	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.du	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.du	$xr0, $xr0, $xr1
	xvpickve2gr.d	$s5, $xr0, 0
	beq	$a1, $s3, .LBB3_30
.LBB3_28:                               # %for.body46.preheader103
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	add.d	$a0, $a2, $a0
	addi.d	$a0, $a0, 40
	sub.d	$a1, $s3, $a1
	.p2align	4, , 16
.LBB3_29:                               # %for.body46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	sltu	$a3, $s5, $a2
	masknez	$a4, $s5, $a3
	maskeqz	$a2, $a2, $a3
	or	$s5, $a2, $a4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB3_29
.LBB3_30:                               # %for.end58
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s3
	mul.d	$a0, $a0, $s2
	mul.w	$a1, $s1, $s3
	add.d	$a0, $a0, $a1
	add.d	$s1, $a0, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s6, $s0
	bstrins.d	$s6, $zero, 1, 1
	ori	$a0, $zero, 1
	pcalau12i	$s4, %pc_hi20(loop_time)
	lu52i.d	$s3, $zero, 1107
	pcalau12i	$s5, %pc_hi20(.LCPI3_1)
	lu12i.w	$s2, 275200
	beq	$s6, $a0, .LBB3_33
# %bb.31:                               # %if.end74
	bstrins.d	$s0, $zero, 0, 0
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB3_34
.LBB3_32:                               # %if.end87
	bnez	$fp, .LBB3_35
	b	.LBB3_39
.LBB3_33:                               # %if.then70
	ld.d	$a0, $s4, %pc_lo12(loop_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s1, 32
	or	$a0, $a0, $s3
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrins.d	$s0, $zero, 0, 0
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB3_32
.LBB3_34:                               # %if.then80
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa0, $a1
	fld.d	$fa1, $s5, %pc_lo12(.LCPI3_1)
	add.d	$a1, $a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	ld.d	$a2, $s4, %pc_lo12(loop_time)
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa2, $fa1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_39
.LBB3_35:                               # %if.then90
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB3_37
# %bb.36:                               # %if.then96
	ld.d	$a0, $s4, %pc_lo12(loop_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s1, 32
	or	$a0, $a0, $s3
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s1
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %if.end101
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB3_39
# %bb.38:                               # %if.then107
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	fld.d	$fa0, $s5, %pc_lo12(.LCPI3_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	add.d	$a1, $a0, $s1
	ld.d	$a2, $s4, %pc_lo12(loop_time)
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a0, $s2, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB3_39:                               # %if.end115
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
.Lfunc_end3:
	.size	specul_time_o, .Lfunc_end3-specul_time_o
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function specul_time_r
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	specul_time_r
	.p2align	5
	.type	specul_time_r,@function
specul_time_r:                          # @specul_time_r
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
	move	$s0, $a6
	move	$s1, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s4, $a1
	move	$s5, $a0
	beqz	$a2, .LBB4_4
# %bb.1:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB4_12
# %bb.2:                                # %for.body67.preheader
	bne	$s4, $a0, .LBB4_7
# %bb.3:
	move	$a0, $zero
	b	.LBB4_10
.LBB4_4:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB4_56
# %bb.5:                                # %for.body.preheader
	bne	$s4, $a0, .LBB4_51
# %bb.6:
	move	$a0, $zero
	b	.LBB4_54
.LBB4_7:                                # %vector.ph
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $s5, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -48
	ld.d	$a4, $a1, 8
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	sub.d	$a3, $a3, $a5
	sub.d	$a4, $a4, $a6
	st.d	$a3, $a1, -40
	st.d	$a4, $a1, 16
	st.d	$zero, $a1, -32
	st.d	$zero, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 112
	bnez	$a2, .LBB4_8
# %bb.9:                                # %middle.block
	beq	$a0, $s4, .LBB4_12
.LBB4_10:                               # %for.body67.preheader312
	sub.d	$a1, $s4, $a0
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 48
	.p2align	4, , 16
.LBB4_11:                               # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, -16
	ld.d	$a3, $a0, -24
	sub.d	$a2, $a2, $a3
	st.d	$a2, $a0, -8
	st.d	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB4_11
.LBB4_12:                               # %for.cond84.preheader
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bge	$fp, $s4, .LBB4_30
# %bb.13:                               # %for.body86.preheader
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $fp, 1
	addi.d	$a4, $s5, 264
	addi.d	$a5, $s5, 48
	slli.d	$a6, $fp, 1
	sub.d	$a7, $zero, $fp
	ori	$t0, $zero, 56
	mul.d	$t1, $fp, $t0
	add.d	$t2, $t1, $s5
	addi.d	$s3, $t2, 104
	ori	$t3, $zero, 1
	ori	$t4, $zero, 8
	ori	$t5, $zero, 2
	xvrepli.b	$xr0, 0
	move	$t6, $a3
	move	$t7, $fp
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_14:                               # %for.cond111.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$s2, $t7
.LBB4_15:                               # %for.cond84.loopexit
                                        #   in Loop: Header=BB4_16 Depth=1
	add.w	$a2, $a2, $fp
	addi.d	$a1, $a1, 1
	add.d	$a6, $a6, $fp
	add.d	$t6, $t6, $fp
	sub.d	$a7, $a7, $fp
	add.d	$s3, $s3, $t1
	bge	$s2, $s4, .LBB4_30
.LBB4_16:                               # %for.body86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_29 Depth 2
	move	$t8, $t7
	add.d	$t7, $t7, $fp
	blt	$fp, $t3, .LBB4_14
# %bb.17:                               # %for.body90.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	addi.d	$t2, $a2, 1
	slt	$s2, $t2, $t8
	masknez	$t2, $t2, $s2
	maskeqz	$s2, $t8, $s2
	or	$t2, $s2, $t2
	sub.d	$s7, $t2, $a2
	bgeu	$s7, $t4, .LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_16 Depth=1
	move	$ra, $zero
	move	$s6, $a2
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_19:                               # %vector.ph221
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$ra, $s7
	bstrins.d	$ra, $zero, 2, 0
	mul.d	$t2, $a2, $t0
	add.d	$s2, $a4, $t2
	move	$s8, $s7
	bstrins.d	$s8, $zero, 2, 0
	add.d	$s6, $s8, $a2
	xvori.b	$xr1, $xr0, 0
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB4_20:                               # %vector.body224
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $s2, -112
	ld.d	$s0, $s2, -56
	ld.d	$s1, $s2, -224
	ld.d	$a0, $s2, -168
	vinsgr2vr.d	$vr3, $t2, 0
	vinsgr2vr.d	$vr3, $s0, 1
	vinsgr2vr.d	$vr4, $s1, 0
	vinsgr2vr.d	$vr4, $a0, 1
	xvpermi.q	$xr4, $xr3, 2
	ld.d	$a0, $s2, 112
	ld.d	$t2, $s2, 168
	ld.d	$s0, $s2, 0
	ld.d	$s1, $s2, 56
	vinsgr2vr.d	$vr3, $a0, 0
	vinsgr2vr.d	$vr3, $t2, 1
	vinsgr2vr.d	$vr5, $s0, 0
	vinsgr2vr.d	$vr5, $s1, 1
	xvpermi.q	$xr5, $xr3, 2
	ld.d	$a0, $s2, -104
	ld.d	$t2, $s2, -48
	ld.d	$s0, $s2, -216
	ld.d	$s1, $s2, -160
	vinsgr2vr.d	$vr3, $a0, 0
	vinsgr2vr.d	$vr3, $t2, 1
	vinsgr2vr.d	$vr6, $s0, 0
	vinsgr2vr.d	$vr6, $s1, 1
	xvpermi.q	$xr6, $xr3, 2
	ld.d	$a0, $s2, 120
	ld.d	$t2, $s2, 176
	ld.d	$s0, $s2, 8
	ld.d	$s1, $s2, 64
	vinsgr2vr.d	$vr3, $a0, 0
	vinsgr2vr.d	$vr3, $t2, 1
	vinsgr2vr.d	$vr7, $s0, 0
	vinsgr2vr.d	$vr7, $s1, 1
	xvpermi.q	$xr7, $xr3, 2
	xvadd.d	$xr3, $xr6, $xr4
	xvadd.d	$xr4, $xr7, $xr5
	xvmax.du	$xr1, $xr3, $xr1
	xvmax.du	$xr2, $xr4, $xr2
	addi.d	$ra, $ra, -8
	addi.d	$s2, $s2, 448
	bnez	$ra, .LBB4_20
# %bb.21:                               # %middle.block229
                                        #   in Loop: Header=BB4_16 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	xvld	$xr3, $a0, %pc_lo12(.LCPI4_0)
	xvmax.du	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 78
	xvshuf.d	$xr3, $xr0, $xr2
	xvmax.du	$xr1, $xr1, $xr3
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.d	$xr2, $xr2, 1
	xvmax.du	$xr1, $xr1, $xr2
	xvpickve2gr.d	$ra, $xr1, 0
	beq	$s7, $s8, .LBB4_24
.LBB4_22:                               # %for.body90.preheader308
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a0, $s6, $t0
	add.d	$s2, $a5, $a0
	.p2align	4, , 16
.LBB4_23:                               # %for.body90
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, -8
	ld.d	$t2, $s2, 0
	add.d	$a0, $t2, $a0
	sltu	$t2, $ra, $a0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $ra, $t2
	or	$ra, $a0, $t2
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 56
	blt	$s6, $t8, .LBB4_23
.LBB4_24:                               # %for.body114.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a0, $a1, $fp
	addi.d	$t2, $a1, 2
	mul.d	$t2, $t2, $fp
	add.d	$a0, $a3, $a0
	slt	$s0, $a0, $t2
	masknez	$a0, $a0, $s0
	maskeqz	$t2, $t2, $s0
	or	$a0, $t2, $a0
	nor	$t2, $a1, $zero
	mul.d	$t2, $t2, $fp
	add.d	$s6, $a0, $t2
	add.d	$s2, $t8, $fp
	bltu	$s6, $t5, .LBB4_28
# %bb.25:                               # %vector.ph209
                                        #   in Loop: Header=BB4_16 Depth=1
	slt	$a0, $t6, $a6
	masknez	$t2, $t6, $a0
	maskeqz	$a0, $a6, $a0
	or	$a0, $a0, $t2
	add.d	$s7, $a0, $a7
	bstrins.d	$s7, $zero, 0, 0
	move	$s8, $s6
	bstrins.d	$s8, $zero, 0, 0
	add.d	$t8, $t8, $s8
	move	$t2, $s3
	.p2align	4, , 16
.LBB4_26:                               # %vector.body212
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$ra, $t2, -56
	st.d	$ra, $t2, 0
	addi.d	$s7, $s7, -2
	addi.d	$t2, $t2, 112
	bnez	$s7, .LBB4_26
# %bb.27:                               # %middle.block215
                                        #   in Loop: Header=BB4_16 Depth=1
	beq	$s6, $s8, .LBB4_15
.LBB4_28:                               # %for.body114.preheader307
                                        #   in Loop: Header=BB4_16 Depth=1
	mul.d	$a0, $t8, $t0
	add.d	$t2, $a5, $a0
	.p2align	4, , 16
.LBB4_29:                               # %for.body114
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$ra, $t2, 0
	addi.d	$t8, $t8, 1
	addi.d	$t2, $t2, 56
	blt	$t8, $s2, .LBB4_29
	b	.LBB4_15
.LBB4_30:                               # %while.cond125.preheader
	pcalau12i	$a1, %got_pc_hi20(hard_raw_list)
	ld.d	$a1, $a1, %got_pc_lo12(hard_raw_list)
	ld.d	$a2, $a1, 0
	beqz	$a2, .LBB4_35
# %bb.31:                               # %while.body127.preheader
	move	$a1, $zero
	ori	$a3, $zero, 56
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               # %if.end155
                                        #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a2, $a2, 0
	beqz	$a2, .LBB4_36
.LBB4_33:                               # %while.body127
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $a2, 24
	ld.d	$t0, $a2, 32
	ld.w	$a6, $a2, 40
	mul.d	$a0, $a0, $a3
	add.d	$a5, $s5, $a0
	ld.d	$a4, $a5, 48
	mul.d	$a0, $a6, $a3
	add.d	$a7, $s5, $a0
	ld.d	$a6, $a7, 48
	add.d	$a0, $a4, $t0
	bgeu	$a6, $a0, .LBB4_32
# %bb.34:                               # %if.then139
                                        #   in Loop: Header=BB4_33 Depth=1
	ld.d	$a0, $a5, 40
	addi.d	$a5, $a7, 48
	add.d	$a4, $a6, $a4
	add.d	$a0, $a4, $a0
	st.d	$a0, $a5, 0
	addi.d	$a1, $a1, 1
	b	.LBB4_32
.LBB4_35:
	move	$a1, $zero
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
.LBB4_36:                               # %for.cond158.preheader
	ori	$a2, $zero, 1
	blt	$s4, $a2, .LBB4_65
# %bb.37:                               # %for.body160.preheader
	bne	$s4, $a2, .LBB4_39
# %bb.38:
	move	$a2, $zero
	b	.LBB4_42
.LBB4_39:                               # %vector.ph234
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a2, $a0, 1
	addi.d	$a3, $s5, 96
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_40:                               # %vector.body237
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, -56
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a3, -48
	ld.d	$a7, $a3, 8
	add.d	$a0, $a6, $a0
	add.d	$a5, $a7, $a5
	st.d	$a0, $a3, -56
	st.d	$a5, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 112
	bnez	$a4, .LBB4_40
# %bb.41:                               # %middle.block240
	beq	$a2, $s4, .LBB4_44
.LBB4_42:                               # %for.body160.preheader306
	ori	$a0, $zero, 56
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $s5
	addi.d	$a3, $a0, 40
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB4_43:                               # %for.body160
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a3, 8
	add.d	$a0, $a4, $a0
	st.d	$a0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 56
	bnez	$a2, .LBB4_43
.LBB4_44:                               # %for.body178.preheader
	ld.d	$a2, $s5, 40
	ori	$a0, $zero, 8
	bgeu	$s4, $a0, .LBB4_46
# %bb.45:
	move	$a3, $zero
	b	.LBB4_49
.LBB4_46:                               # %vector.ph245
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a3, $a0, 3
	xvreplgr2vr.d	$xr0, $a2
	addi.d	$a2, $s5, 264
	move	$a4, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB4_47:                               # %vector.body248
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, -112
	ld.d	$a5, $a2, -56
	ld.d	$a6, $a2, -224
	ld.d	$a7, $a2, -168
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	xvpermi.q	$xr3, $xr2, 2
	ld.d	$a0, $a2, 112
	ld.d	$a5, $a2, 168
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a2, 56
	vinsgr2vr.d	$vr2, $a0, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr4, $a6, 0
	vinsgr2vr.d	$vr4, $a7, 1
	xvpermi.q	$xr4, $xr2, 2
	xvmax.du	$xr0, $xr3, $xr0
	xvmax.du	$xr1, $xr4, $xr1
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 448
	bnez	$a4, .LBB4_47
# %bb.48:                               # %middle.block253
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	xvld	$xr2, $a0, %pc_lo12(.LCPI4_0)
	xvmax.du	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.du	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.du	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a3, $s4, .LBB4_78
.LBB4_49:                               # %for.body178.preheader302
	ori	$a0, $zero, 56
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 40
	sub.d	$a3, $s4, $a3
	.p2align	4, , 16
.LBB4_50:                               # %for.body178
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	sltu	$a5, $a2, $a4
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 56
	bnez	$a3, .LBB4_50
	b	.LBB4_78
.LBB4_51:                               # %vector.ph260
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $s5, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB4_52:                               # %vector.body263
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -48
	ld.d	$a4, $a1, 8
	ld.d	$a5, $a1, -56
	ld.d	$a6, $a1, 0
	sub.d	$a3, $a3, $a5
	sub.d	$a4, $a4, $a6
	st.d	$a3, $a1, -40
	st.d	$a4, $a1, 16
	st.d	$zero, $a1, -32
	st.d	$zero, $a1, 24
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 112
	bnez	$a2, .LBB4_52
# %bb.53:                               # %middle.block266
	beq	$a0, $s4, .LBB4_56
.LBB4_54:                               # %for.body.preheader301
	sub.d	$a1, $s4, $a0
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 48
	.p2align	4, , 16
.LBB4_55:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, -16
	ld.d	$a3, $a0, -24
	sub.d	$a2, $a2, $a3
	st.d	$a2, $a0, -8
	st.d	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 56
	bnez	$a1, .LBB4_55
.LBB4_56:                               # %while.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(hard_raw_list)
	ld.d	$a0, $a0, %got_pc_lo12(hard_raw_list)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB4_61
# %bb.57:                               # %while.body.preheader
	move	$a1, $zero
	ori	$a2, $zero, 56
	b	.LBB4_59
	.p2align	4, , 16
.LBB4_58:                               # %if.end
                                        #   in Loop: Header=BB4_59 Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB4_62
.LBB4_59:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 24
	ld.d	$a6, $a0, 32
	ld.w	$a5, $a0, 40
	mul.d	$a3, $a3, $a2
	add.d	$a4, $s5, $a3
	ld.d	$a3, $a4, 48
	mul.d	$a5, $a5, $a2
	add.d	$a5, $s5, $a5
	ld.d	$a7, $a5, 48
	add.d	$a6, $a3, $a6
	bgeu	$a7, $a6, .LBB4_58
# %bb.60:                               # %if.then16
                                        #   in Loop: Header=BB4_59 Depth=1
	ld.d	$a4, $a4, 40
	addi.d	$a5, $a5, 48
	add.d	$a3, $a4, $a3
	st.d	$a3, $a5, 0
	addi.d	$a1, $a1, 1
	b	.LBB4_58
.LBB4_61:
	move	$a1, $zero
.LBB4_62:                               # %for.cond31.preheader
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB4_65
# %bb.63:                               # %for.body33.preheader
	bne	$s4, $a0, .LBB4_66
# %bb.64:
	move	$a0, $zero
	b	.LBB4_69
.LBB4_65:                               # %if.end191.sink.split
	ld.d	$a2, $s5, 40
	b	.LBB4_78
.LBB4_66:                               # %vector.ph271
	bstrpick.d	$a0, $s4, 30, 1
	slli.d	$a0, $a0, 1
	addi.d	$a2, $s5, 96
	move	$a3, $a0
	.p2align	4, , 16
.LBB4_67:                               # %vector.body274
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -56
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a2, -48
	ld.d	$a7, $a2, 8
	add.d	$a4, $a6, $a4
	add.d	$a5, $a7, $a5
	st.d	$a4, $a2, -56
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -2
	addi.d	$a2, $a2, 112
	bnez	$a3, .LBB4_67
# %bb.68:                               # %middle.block277
	beq	$a0, $s4, .LBB4_71
.LBB4_69:                               # %for.body33.preheader300
	ori	$a2, $zero, 56
	mul.d	$a2, $a0, $a2
	add.d	$a2, $a2, $s5
	addi.d	$a2, $a2, 40
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB4_70:                               # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.d	$a4, $a2, 8
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 56
	bnez	$a0, .LBB4_70
.LBB4_71:                               # %for.body51.preheader
	ld.d	$a2, $s5, 40
	ori	$a0, $zero, 8
	bgeu	$s4, $a0, .LBB4_73
# %bb.72:
	move	$a0, $zero
	b	.LBB4_76
.LBB4_73:                               # %vector.ph282
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	xvreplgr2vr.d	$xr0, $a2
	addi.d	$a2, $s5, 264
	move	$a3, $a0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB4_74:                               # %vector.body287
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -112
	ld.d	$a5, $a2, -56
	ld.d	$a6, $a2, -224
	ld.d	$a7, $a2, -168
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.d	$vr3, $a7, 1
	xvpermi.q	$xr3, $xr2, 2
	ld.d	$a4, $a2, 112
	ld.d	$a5, $a2, 168
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a2, 56
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 1
	vinsgr2vr.d	$vr4, $a6, 0
	vinsgr2vr.d	$vr4, $a7, 1
	xvpermi.q	$xr4, $xr2, 2
	xvmax.du	$xr0, $xr3, $xr0
	xvmax.du	$xr1, $xr4, $xr1
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 448
	bnez	$a3, .LBB4_74
# %bb.75:                               # %middle.block292
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	xvld	$xr2, $a2, %pc_lo12(.LCPI4_0)
	xvmax.du	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvmax.du	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmax.du	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a0, $s4, .LBB4_78
.LBB4_76:                               # %for.body51.preheader298
	ori	$a3, $zero, 56
	mul.d	$a3, $a0, $a3
	add.d	$a3, $a3, $s5
	addi.d	$a3, $a3, 40
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB4_77:                               # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	sltu	$a5, $a2, $a4
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 56
	bnez	$a0, .LBB4_77
.LBB4_78:                               # %if.end191
	add.d	$a0, $a1, $s4
	mul.d	$a0, $a0, $s1
	mul.w	$a1, $s0, $s4
	add.d	$a1, $a2, $a1
	add.d	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$s7, $a4
	bstrins.d	$s7, $zero, 1, 1
	ori	$a0, $zero, 1
	pcalau12i	$s5, %pc_hi20(loop_time)
	lu52i.d	$s4, $zero, 1107
	pcalau12i	$s6, %pc_hi20(.LCPI4_1)
	lu12i.w	$s3, 275200
	beq	$s7, $a0, .LBB4_81
# %bb.79:                               # %if.end207
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $zero, 2
	beq	$a4, $a0, .LBB4_82
.LBB4_80:                               # %if.end220
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_83
	b	.LBB4_87
.LBB4_81:                               # %if.then203
	ld.d	$a0, $s5, %pc_lo12(loop_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s2, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bstrins.d	$a4, $zero, 0, 0
	ori	$a0, $zero, 2
	bne	$a4, $a0, .LBB4_80
.LBB4_82:                               # %if.then213
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa0, $a1
	fld.d	$fa1, $s6, %pc_lo12(.LCPI4_1)
	add.d	$a1, $a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	ld.d	$a2, $s5, %pc_lo12(loop_time)
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa2, $fa1
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$s0, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a4, $s0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_87
.LBB4_83:                               # %if.then223
	ori	$a0, $zero, 1
	bne	$s7, $a0, .LBB4_85
# %bb.84:                               # %if.then229
	ld.d	$a0, $s5, %pc_lo12(loop_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	srli.d	$a0, $s2, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa2, $a0
	fsub.d	$fa0, $fa2, $fa0
	move	$a0, $s2
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
	move	$s0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s0
.LBB4_85:                               # %if.end234
	ori	$a0, $zero, 2
	bne	$a4, $a0, .LBB4_87
# %bb.86:                               # %if.then240
	pcalau12i	$a0, %pc_hi20(prog_time)
	ld.d	$a0, $a0, %pc_lo12(prog_time)
	fld.d	$fa0, $s6, %pc_lo12(.LCPI4_1)
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa1, $fa1, $fa0
	add.d	$a1, $a0, $s2
	ld.d	$a2, $s5, %pc_lo12(loop_time)
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	sub.d	$a0, $a1, $a2
	srli.d	$a1, $a0, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa0, $fa2, $fa0
	bstrins.d	$a0, $s3, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa0, $fa2, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $fp
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB4_87:                               # %if.end248
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
.Lfunc_end4:
	.size	specul_time_r, .Lfunc_end4-specul_time_r
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s %lu"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s %lx %lu"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s %lu %lu"
	.size	.L.str.2, 11

	.type	loop_time,@object               # @loop_time
	.bss
	.globl	loop_time
	.p2align	3, 0x0
loop_time:
	.dword	0                               # 0x0
	.size	loop_time, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Time for loop: %lu issues\n"
	.size	.L.str.3, 27

	.type	prog_time,@object               # @prog_time
	.bss
	.globl	prog_time
	.p2align	3, 0x0
prog_time:
	.dword	0                               # 0x0
	.size	prog_time, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Time for program: %lu issues\n"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Loop is %0.3g %% of program\n"
	.size	.L.str.5, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Time for speculative loop is %lu issues\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Potential speedup for loop: %0.3g times\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Potential speedup for program: %0.3g times\n"
	.size	.L.str.9, 44

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"optloop: %0.3g\n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"optprog: %0.3g\n"
	.size	.L.str.11, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"REALISTIC RESTART RESULTS -- %d CPUs\n"
	.size	.L.str.13, 38

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"realloop: %d %0.3g\n"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"realprog: %d %0.3g\n"
	.size	.L.str.15, 20

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"OPTIMUM RESTART RESULTS"
	.size	.Lstr, 24

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs"
	.size	.Lstr.1, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
