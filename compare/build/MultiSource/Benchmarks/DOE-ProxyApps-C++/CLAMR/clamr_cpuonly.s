	.file	"clamr_cpuonly.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3f80000000000000              # double 0.0078125
.LCPI0_1:
	.dword	0x4059000000000000              # double 100
.LCPI0_2:
	.dword	0x3cacd2b297d889bc              # double 2.0E-16
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
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	pcaddu18i	$ra, %call36(_Z10parseInputiPPc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2800
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP11PowerParserC1Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont
	pcalau12i	$a0, %pc_hi20(_ZL5parse)
	st.d	$s0, $a0, %pc_lo12(_ZL5parse)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(crux_type)
	ld.w	$a1, $a1, %pc_lo12(crux_type)
	pcalau12i	$a2, %pc_hi20(num_of_rollback_states)
	ld.w	$a2, $a2, %pc_lo12(num_of_rollback_states)
	pcalau12i	$s2, %pc_hi20(restart)
	ld.bu	$a3, $s2, %pc_lo12(restart)
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4CruxC1Eiib)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont3
	pcalau12i	$s5, %pc_hi20(nx)
	ld.w	$fp, $s5, %pc_lo12(nx)
	movgr2fr.w	$fa0, $fp
	ffint.d.w	$fa0, $fa0
	vldi	$vr1, -1000
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI0_0)
	fmul.d	$fa0, $fa0, $fa1
	pcalau12i	$s1, %pc_hi20(_ZL4crux)
	st.d	$s0, $s1, %pc_lo12(_ZL4crux)
	fmul.d	$fa0, $fa0, $fa2
	pcalau12i	$s4, %pc_hi20(_ZL11circ_radius)
	ld.bu	$a0, $s2, %pc_lo12(restart)
	fst.d	$fa0, $s4, %pc_lo12(_ZL11circ_radius)
	ori	$a1, $zero, 1
	pcalau12i	$s2, %pc_hi20(_ZL4mesh)
	pcalau12i	$s3, %pc_hi20(_ZL5state)
	bne	$a0, $a1, .LBB0_7
# %bb.3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(restart_file)
	ld.d	$a1, $a0, %pc_lo12(restart_file)
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_Z27restore_crux_data_bootstrapP4CruxPci)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2288
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(nx)
	pcalau12i	$fp, %pc_hi20(ny)
	ld.w	$a2, $fp, %pc_lo12(ny)
	pcalau12i	$a3, %pc_hi20(levmx)
	ld.w	$a3, $a3, %pc_lo12(levmx)
	pcalau12i	$a4, %pc_hi20(ndim)
	ld.w	$a4, $a4, %pc_lo12(ndim)
	move	$s0, $a0
.Ltmp12:                                # EH_LABEL
	vldi	$vr0, -912
	vldi	$vr1, -912
	ori	$a5, $zero, 1
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN4MeshC1Eiiiiddiii)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.4:                                # %invoke.cont7
	ld.w	$a1, $s5, %pc_lo12(nx)
	ld.w	$a2, $fp, %pc_lo12(ny)
	fld.d	$fa0, $s4, %pc_lo12(_ZL11circ_radius)
	pcalau12i	$a0, %pc_hi20(initial_order)
	ld.w	$a3, $a0, %pc_lo12(initial_order)
	st.d	$s0, $s2, %pc_lo12(_ZL4mesh)
	move	$a0, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh4initEiid16partition_methodi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 368
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(_ZL4mesh)
	move	$s0, $a0
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5StateC1EP4Mesh)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.5:                                # %invoke.cont10
	ld.d	$fp, $s1, %pc_lo12(_ZL4crux)
	st.d	$s0, $s3, %pc_lo12(_ZL5state)
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN5State18restore_checkpointEP4Crux)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Crux11restore_endEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	ld.d	$a1, $a0, 864
	ld.d	$a3, $a0, 856
	ld.d	$a2, $a0, 1160
	sub.d	$a4, $a1, $a3
	srai.d	$a4, $a4, 2
	bgeu	$a4, $a2, .LBB0_11
# %bb.6:                                # %if.then.i
	addi.d	$a0, $a0, 856
	sub.d	$a1, $a2, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	b	.LBB0_14
.LBB0_7:                                # %if.else
	ori	$a0, $zero, 2288
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(ny)
	ld.w	$a2, $s6, %pc_lo12(ny)
	pcalau12i	$a1, %pc_hi20(levmx)
	ld.w	$a3, $a1, %pc_lo12(levmx)
	pcalau12i	$a1, %pc_hi20(ndim)
	ld.w	$a4, $a1, %pc_lo12(ndim)
	move	$s0, $a0
.Ltmp6:                                 # EH_LABEL
	vldi	$vr0, -912
	vldi	$vr1, -912
	ori	$a5, $zero, 1
	move	$a1, $fp
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(_ZN4MeshC1Eiiiiddiii)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:                                # %invoke.cont13
	ld.w	$a1, $s5, %pc_lo12(nx)
	ld.w	$a2, $s6, %pc_lo12(ny)
	fld.d	$fa0, $s4, %pc_lo12(_ZL11circ_radius)
	pcalau12i	$a0, %pc_hi20(initial_order)
	ld.w	$a3, $a0, %pc_lo12(initial_order)
	st.d	$s0, $s2, %pc_lo12(_ZL4mesh)
	move	$a0, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh4initEiid16partition_methodi)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 368
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(_ZL4mesh)
	move	$s0, $a0
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5StateC1EP4Mesh)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.9:                                # %invoke.cont16
	st.d	$s0, $s3, %pc_lo12(_ZL5state)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN5State4initEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	ld.d	$a1, $a0, 864
	ld.d	$a3, $a0, 856
	ld.d	$a2, $a0, 1160
	sub.d	$a4, $a1, $a3
	srai.d	$a4, $a4, 2
	bgeu	$a4, $a2, .LBB0_15
# %bb.10:                               # %if.then.i36
	addi.d	$a0, $a0, 856
	sub.d	$a1, $a2, $a4
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	b	.LBB0_18
.LBB0_11:                               # %if.else.i
	bgeu	$a2, $a4, .LBB0_14
# %bb.12:                               # %if.then5.i
	alsl.d	$a2, $a2, $a3, 2
	beq	$a1, $a2, .LBB0_14
# %bb.13:                               # %invoke.cont.i.i
	st.d	$a2, $a0, 864
.LBB0_14:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_distributionEi)
	jirl	$ra, $ra, 0
	b	.LBB0_19
.LBB0_15:                               # %if.else.i30
	bgeu	$a2, $a4, .LBB0_18
# %bb.16:                               # %if.then5.i32
	alsl.d	$a2, $a2, $a3, 2
	beq	$a1, $a2, .LBB0_18
# %bb.17:                               # %invoke.cont.i.i35
	st.d	$a2, $a0, 864
.LBB0_18:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit38
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(_ZN4Mesh17calc_distributionEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(_ZL5state)
	fld.d	$fa0, $s4, %pc_lo12(_ZL11circ_radius)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_1)
	vldi	$vr2, -996
	pcaddu18i	$ra, %call36(_ZN5State11fill_circleEddd)
	jirl	$ra, $ra, 0
.LBB0_19:                               # %if.end
	pcalau12i	$s4, %pc_hi20(graphic_outputInterval)
	ld.w	$a1, $s4, %pc_lo12(graphic_outputInterval)
	pcalau12i	$a0, %pc_hi20(niter)
	ld.w	$a0, $a0, %pc_lo12(niter)
	pcalau12i	$s5, %pc_hi20(_ZL19next_graphics_cycle)
	bge	$a0, $a1, .LBB0_21
# %bb.20:                               # %if.then21
	st.w	$a1, $s5, %pc_lo12(_ZL19next_graphics_cycle)
.LBB0_21:                               # %if.end22
	pcalau12i	$a1, %pc_hi20(checkpoint_outputInterval)
	ld.w	$a1, $a1, %pc_lo12(checkpoint_outputInterval)
	pcalau12i	$s0, %pc_hi20(_ZL13next_cp_cycle)
	bge	$a0, $a1, .LBB0_23
# %bb.22:                               # %if.then24
	st.w	$a1, $s0, %pc_lo12(_ZL13next_cp_cycle)
.LBB0_23:                               # %if.end25
	ld.d	$s7, $s2, %pc_lo12(_ZL4mesh)
	ld.d	$a0, $s3, %pc_lo12(_ZL5state)
	pcalau12i	$a1, %pc_hi20(enhanced_precision_sum)
	ld.w	$a1, $a1, %pc_lo12(enhanced_precision_sum)
	pcaddu18i	$ra, %call36(_ZN5State8mass_sumEi)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	movfr2gr.d	$fp, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(upper_mass_diff_percentage)
	fld.d	$fa0, $a0, %pc_lo12(upper_mass_diff_percentage)
	pcalau12i	$a1, %pc_hi20(_ZL13H_sum_initial)
	movgr2fr.d	$fa1, $zero
	fcmp.cule.d	$fcc0, $fa1, $fa0
	fst.d	$fs0, $a1, %pc_lo12(_ZL13H_sum_initial)
	bcnez	$fcc0, .LBB0_25
# %bb.24:                               # %if.then32
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $a0, %pc_lo12(upper_mass_diff_percentage)
.LBB0_25:                               # %if.end34
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(_ZL6ncycle)
	ld.w	$a1, $s6, %pc_lo12(_ZL6ncycle)
	beqz	$a1, .LBB0_27
# %bb.26:                               # %if.then39
	pcalau12i	$a0, %pc_hi20(_ZL6deltaT)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	ld.d	$a4, $s7, 1160
	ld.d	$a3, $a2, %pc_lo12(_ZL7simTime)
	ld.d	$a2, $a0, %pc_lo12(_ZL6deltaT)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a5, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_28
.LBB0_27:                               # %if.else41
	ld.d	$a1, $s7, 1160
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %if.end44
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 584
	addi.d	$a0, $a0, 200
	ori	$a2, $zero, 192
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL10tstart_cpu)
	addi.d	$fp, $a0, %pc_lo12(_ZL10tstart_cpu)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(_ZL6ncycle)
	ld.w	$a1, $s5, %pc_lo12(_ZL19next_graphics_cycle)
	pcalau12i	$s8, %pc_hi20(_ZL9view_mode)
	bne	$a0, $a1, .LBB0_30
# %bb.29:                               # %if.then57
	pcalau12i	$a0, %pc_hi20(outline)
	ld.bu	$a0, $a0, %pc_lo12(outline)
	pcaddu18i	$ra, %call36(set_graphics_outline)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	fld.d	$fa0, $a0, 1184
	fld.d	$fa1, $a0, 1192
	fld.d	$fa2, $a0, 1200
	fld.d	$fa3, $a0, 1208
	fcvt.s.d	$fa0, $fa0
	fcvt.s.d	$fa1, $fa1
	fcvt.s.d	$fa2, $fa2
	fcvt.s.d	$fa3, $fa3
	pcaddu18i	$ra, %call36(set_graphics_window)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 1160
	pcaddu18i	$ra, %call36(set_graphics_mysize)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, %pc_lo12(_ZL4mesh)
	pcalau12i	$a0, %pc_hi20(set_graphics_cell_coordinates)
	ld.d	$a4, $a0, %pc_lo12(set_graphics_cell_coordinates)
	ld.d	$a0, $a3, 1416
	ld.d	$a1, $a3, 1440
	ld.d	$a2, $a3, 1464
	ld.d	$a3, $a3, 1488
	jirl	$ra, $a4, 0
	ld.d	$a0, $s3, %pc_lo12(_ZL5state)
	pcalau12i	$a1, %pc_hi20(set_graphics_cell_data)
	ld.d	$a1, $a1, %pc_lo12(set_graphics_cell_data)
	ld.d	$a0, $a0, 200
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	ld.d	$a0, $a0, 856
	pcaddu18i	$ra, %call36(set_graphics_cell_proc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s8, %pc_lo12(_ZL9view_mode)
	pcaddu18i	$ra, %call36(set_graphics_viewmode)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(init_graphics_output)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(_ZL4mesh)
	ld.d	$a0, $a0, 856
	pcaddu18i	$ra, %call36(set_graphics_cell_proc)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(write_graphics_info)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, %pc_lo12(graphic_outputInterval)
	ld.w	$a1, $s5, %pc_lo12(_ZL19next_graphics_cycle)
	add.d	$a0, $a1, $a0
	st.w	$a0, $s5, %pc_lo12(_ZL19next_graphics_cycle)
.LBB0_30:                               # %if.end77
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL17cpu_time_graphics)
	fld.d	$fa1, $a0, %pc_lo12(_ZL17cpu_time_graphics)
	ld.w	$a1, $s6, %pc_lo12(_ZL6ncycle)
	ld.w	$a2, $s0, %pc_lo12(_ZL13next_cp_cycle)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, %pc_lo12(_ZL17cpu_time_graphics)
	ori	$a0, $zero, 1
	st.b	$a0, $s8, %pc_lo12(_ZL9view_mode)
	bne	$a1, $a2, .LBB0_32
# %bb.31:                               # %if.then82
	ld.d	$a0, $s1, %pc_lo12(_ZL4crux)
	pcaddu18i	$ra, %call36(_Z15store_crux_dataP4Cruxi)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %if.end83
	pcalau12i	$a0, %pc_hi20(_ZL6tstart)
	addi.d	$a0, $a0, %pc_lo12(_ZL6tstart)
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(_ZL6ncycle)
	pcalau12i	$fp, %pc_hi20(_ZL2it)
	lu12i.w	$a1, 2441
	ori	$s0, $a1, 1663
	st.w	$a0, $fp, %pc_lo12(_ZL2it)
	blt	$s0, $a0, .LBB0_34
	.p2align	4, , 16
.LBB0_33:                               # %for.body86
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(do_calc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, %pc_lo12(_ZL2it)
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, %pc_lo12(_ZL2it)
	blt	$a0, $s0, .LBB0_33
.LBB0_34:                               # %for.end89
	move	$a0, $zero
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
.LBB0_35:                               # %lpad15
.Ltmp11:                                # EH_LABEL
	b	.LBB0_37
.LBB0_36:                               # %lpad9
.Ltmp17:                                # EH_LABEL
.LBB0_37:                               # %ehcleanup93
	move	$fp, $a0
	ori	$a1, $zero, 368
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_38:                               # %lpad12
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_40
.LBB0_39:                               # %lpad6
.Ltmp14:                                # EH_LABEL
.LBB0_40:                               # %ehcleanup93
	move	$fp, $a0
	ori	$a1, $zero, 2288
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %lpad2
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_42:                               # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 2800
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp4                 #   Call between .Ltmp4 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp6-.Ltmp16                 #   Call between .Ltmp16 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 10 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 12 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Lfunc_end0-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z27restore_crux_data_bootstrapP4CruxPci # -- Begin function _Z27restore_crux_data_bootstrapP4CruxPci
	.p2align	5
	.type	_Z27restore_crux_data_bootstrapP4CruxPci,@function
_Z27restore_crux_data_bootstrapP4CruxPci: # @_Z27restore_crux_data_bootstrapP4CruxPci
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN4Crux13restore_beginEPci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(clamr_bootstrap_memory)
	addi.d	$s0, $a0, %pc_lo12(clamr_bootstrap_memory)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a4, $a0, %pc_lo12(.L.str.16)
	addi.d	$a1, $sp, 148
	ori	$a2, $zero, 15
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a4, $a0, %pc_lo12(.L.str.17)
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 5
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 16
	st.w	$zero, $sp, 16
	ld.d	$a1, $s0, 16
	st.d	$zero, $sp, 24
	st.d	$a2, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$zero, $sp, 48
	beqz	$a1, .LBB1_6
# %bb.1:                                # %if.then.i.i.i
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 208
	addi.d	$a3, $sp, 208
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_2:                                # %while.cond.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB1_2
# %bb.3:                                # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i.i
	st.d	$a1, $sp, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_4:                                # %while.cond.i5.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB1_4
# %bb.5:                                # %invoke.cont.i.i.i
	ld.d	$a2, $s0, 40
	st.d	$a1, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 24
.LBB1_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 64
	st.w	$zero, $sp, 64
	ld.d	$a1, $s0, 64
	st.d	$zero, $sp, 72
	st.d	$a2, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$zero, $sp, 96
	beqz	$a1, .LBB1_13
# %bb.7:                                # %if.then.i.i9.i
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 208
.Ltmp18:                                # EH_LABEL
	addi.d	$a3, $sp, 208
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.8:                                # %while.cond.i.i.i.i.i11.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_9:                                # %while.cond.i.i.i.i.i11.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB1_9
# %bb.10:                               # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i15.i
	st.d	$a1, $sp, 80
	move	$a2, $a0
	.p2align	4, , 16
.LBB1_11:                               # %while.cond.i5.i.i.i.i16.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB1_11
# %bb.12:                               # %invoke.cont.i.i20.i
	ld.d	$a2, $s0, 88
	st.d	$a1, $sp, 88
	st.d	$a2, $sp, 96
	st.d	$a0, $sp, 72
.LBB1_13:                               # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp21:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Crux18restore_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.14:                               # %invoke.cont
	ld.d	$a1, $sp, 72
	addi.d	$a0, $sp, 56
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 24
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	ld.w	$a1, $sp, 148
	ori	$a0, $zero, 101
	bne	$a1, $a0, .LBB1_18
# %bb.17:                               # %if.end
	ld.w	$a0, $sp, 152
	pcalau12i	$a1, %pc_hi20(nx)
	ld.w	$a2, $sp, 156
	st.w	$a0, $a1, %pc_lo12(nx)
	pcalau12i	$a0, %pc_hi20(ny)
	ld.w	$a1, $sp, 160
	st.w	$a2, $a0, %pc_lo12(ny)
	pcalau12i	$a0, %pc_hi20(levmx)
	ld.w	$a2, $sp, 164
	st.w	$a1, $a0, %pc_lo12(levmx)
	pcalau12i	$a0, %pc_hi20(ndim)
	ld.w	$a1, $sp, 168
	st.w	$a2, $a0, %pc_lo12(ndim)
	pcalau12i	$a0, %pc_hi20(outputInterval)
	ld.w	$a2, $sp, 172
	st.w	$a1, $a0, %pc_lo12(outputInterval)
	pcalau12i	$a0, %pc_hi20(enhanced_precision_sum)
	ld.w	$a1, $sp, 176
	st.w	$a2, $a0, %pc_lo12(enhanced_precision_sum)
	pcalau12i	$a0, %pc_hi20(niter)
	ld.w	$a2, $sp, 180
	st.w	$a1, $a0, %pc_lo12(niter)
	pcalau12i	$a0, %pc_hi20(_ZL2it)
	ld.w	$a3, $sp, 184
	st.w	$a2, $a0, %pc_lo12(_ZL2it)
	pcalau12i	$a0, %pc_hi20(_ZL6ncycle)
	ld.w	$a1, $sp, 188
	st.w	$a3, $a0, %pc_lo12(_ZL6ncycle)
	pcalau12i	$a0, %pc_hi20(crux_type)
	fld.d	$fa0, $sp, 104
	st.w	$a1, $a0, %pc_lo12(crux_type)
	ld.w	$a0, $sp, 192
	pcalau12i	$a2, %pc_hi20(_ZL11circ_radius)
	fst.d	$fa0, $a2, %pc_lo12(_ZL11circ_radius)
	pcalau12i	$a2, %pc_hi20(graphic_outputInterval)
	fld.d	$fa0, $sp, 112
	st.w	$a0, $a2, %pc_lo12(graphic_outputInterval)
	ld.w	$a0, $sp, 196
	pcalau12i	$a2, %pc_hi20(_ZL13H_sum_initial)
	fst.d	$fa0, $a2, %pc_lo12(_ZL13H_sum_initial)
	pcalau12i	$a2, %pc_hi20(checkpoint_outputInterval)
	fld.d	$fa0, $sp, 120
	st.w	$a0, $a2, %pc_lo12(checkpoint_outputInterval)
	ld.w	$a0, $sp, 200
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fst.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	pcalau12i	$a2, %pc_hi20(_ZL13next_cp_cycle)
	fld.d	$fa0, $sp, 128
	st.w	$a0, $a2, %pc_lo12(_ZL13next_cp_cycle)
	ld.w	$a0, $sp, 204
	pcalau12i	$a2, %pc_hi20(_ZL6deltaT)
	fst.d	$fa0, $a2, %pc_lo12(_ZL6deltaT)
	fld.d	$fa0, $sp, 136
	pcalau12i	$a2, %pc_hi20(_ZL19next_graphics_cycle)
	st.w	$a0, $a2, %pc_lo12(_ZL19next_graphics_cycle)
	pcalau12i	$a0, %pc_hi20(upper_mass_diff_percentage)
	fst.d	$fa0, $a0, %pc_lo12(upper_mass_diff_percentage)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Crux13set_crux_typeEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(clamr_bootstrap_memory)
	addi.d	$fp, $a0, %pc_lo12(clamr_bootstrap_memory)
	addi.d	$a1, $sp, 148
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB1_18:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 101
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %lpad.i
.Ltmp20:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %terminate.lpad.i.i2.i
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_21:                               # %terminate.lpad.i.i.i
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %lpad
.Ltmp23:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z27restore_crux_data_bootstrapP4CruxPci, .Lfunc_end1-_Z27restore_crux_data_bootstrapP4CruxPci
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end1-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z17restore_crux_dataP4Crux     # -- Begin function _Z17restore_crux_dataP4Crux
	.p2align	5
	.type	_Z17restore_crux_dataP4Crux,@function
_Z17restore_crux_dataP4Crux:            # @_Z17restore_crux_dataP4Crux
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a1, %pc_hi20(_ZL5state)
	ld.d	$a1, $a1, %pc_lo12(_ZL5state)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN5State18restore_checkpointEP4Crux)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN4Crux11restore_endEv)
	jr	$t8
.Lfunc_end2:
	.size	_Z17restore_crux_dataP4Crux, .Lfunc_end2-_Z17restore_crux_dataP4Crux
	.cfi_endproc
                                        # -- End function
	.globl	_Z15store_crux_dataP4Cruxi      # -- Begin function _Z15store_crux_dataP4Cruxi
	.p2align	5
	.type	_Z15store_crux_dataP4Cruxi,@function
_Z15store_crux_dataP4Cruxi:             # @_Z15store_crux_dataP4Cruxi
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcalau12i	$s3, %pc_hi20(_ZL5state)
	ld.d	$a2, $s3, %pc_lo12(_ZL5state)
	move	$s1, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN5State19get_checkpoint_sizeEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(checkpoint_outputInterval)
	ld.w	$a1, $a1, %pc_lo12(checkpoint_outputInterval)
	pcalau12i	$a3, %pc_hi20(_ZL13next_cp_cycle)
	ld.w	$a2, $a3, %pc_lo12(_ZL13next_cp_cycle)
	add.d	$a2, $a2, $a1
	st.w	$a2, $a3, %pc_lo12(_ZL13next_cp_cycle)
	pcalau12i	$a3, %pc_hi20(nx)
	ld.w	$a3, $a3, %pc_lo12(nx)
	pcalau12i	$a4, %pc_hi20(ny)
	ld.w	$a4, $a4, %pc_lo12(ny)
	ori	$a5, $zero, 101
	st.w	$a5, $sp, 156
	st.w	$a3, $sp, 160
	st.w	$a4, $sp, 164
	pcalau12i	$a3, %pc_hi20(levmx)
	ld.w	$a3, $a3, %pc_lo12(levmx)
	pcalau12i	$a4, %pc_hi20(ndim)
	ld.w	$a4, $a4, %pc_lo12(ndim)
	pcalau12i	$a5, %pc_hi20(outputInterval)
	ld.w	$a5, $a5, %pc_lo12(outputInterval)
	pcalau12i	$a6, %pc_hi20(enhanced_precision_sum)
	ld.w	$a6, $a6, %pc_lo12(enhanced_precision_sum)
	st.w	$a3, $sp, 168
	st.w	$a4, $sp, 172
	st.w	$a5, $sp, 176
	st.w	$a6, $sp, 180
	pcalau12i	$a3, %pc_hi20(niter)
	pcalau12i	$a4, %pc_hi20(_ZL11circ_radius)
	fld.d	$fa0, $a4, %pc_lo12(_ZL11circ_radius)
	ld.w	$a3, $a3, %pc_lo12(niter)
	pcalau12i	$a4, %pc_hi20(_ZL2it)
	ld.w	$a4, $a4, %pc_lo12(_ZL2it)
	fst.d	$fa0, $sp, 112
	pcalau12i	$a5, %pc_hi20(_ZL13H_sum_initial)
	fld.d	$fa0, $a5, %pc_lo12(_ZL13H_sum_initial)
	st.w	$a3, $sp, 184
	st.w	$a4, $sp, 188
	pcalau12i	$a3, %pc_hi20(crux_type)
	fst.d	$fa0, $sp, 120
	pcalau12i	$a4, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a4, %pc_lo12(_ZL7simTime)
	ld.w	$a3, $a3, %pc_lo12(crux_type)
	pcalau12i	$a4, %pc_hi20(graphic_outputInterval)
	ld.w	$a4, $a4, %pc_lo12(graphic_outputInterval)
	fst.d	$fa0, $sp, 128
	pcalau12i	$a5, %pc_hi20(_ZL6deltaT)
	fld.d	$fa0, $a5, %pc_lo12(_ZL6deltaT)
	st.w	$a3, $sp, 196
	addi.d	$s2, $a0, 100
	st.w	$a4, $sp, 200
	fst.d	$fa0, $sp, 136
	pcalau12i	$a0, %pc_hi20(upper_mass_diff_percentage)
	fld.d	$fa0, $a0, %pc_lo12(upper_mass_diff_percentage)
	pcalau12i	$a0, %pc_hi20(_ZL19next_graphics_cycle)
	ld.w	$a0, $a0, %pc_lo12(_ZL19next_graphics_cycle)
	st.w	$s1, $sp, 192
	st.w	$a1, $sp, 204
	st.w	$a2, $sp, 208
	st.w	$a0, $sp, 212
	fst.d	$fa0, $sp, 144
	pcalau12i	$a0, %pc_hi20(clamr_bootstrap_memory)
	addi.d	$s0, $a0, %pc_lo12(clamr_bootstrap_memory)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a4, $a0, %pc_lo12(.L.str.16)
	addi.d	$a1, $sp, 156
	ori	$a2, $zero, 15
	ori	$a3, $zero, 4
	ori	$a5, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a4, $a0, %pc_lo12(.L.str.17)
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 5
	ori	$a3, $zero, 8
	ori	$a5, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN4Crux11store_beginEmi)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 24
	st.w	$zero, $sp, 24
	ld.d	$a1, $s0, 16
	st.d	$zero, $sp, 32
	st.d	$a2, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$zero, $sp, 56
	beqz	$a1, .LBB3_6
# %bb.1:                                # %if.then.i.i.i
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 216
	addi.d	$a3, $sp, 216
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_2:                                # %while.cond.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB3_2
# %bb.3:                                # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i.i
	st.d	$a1, $sp, 40
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_4:                                # %while.cond.i5.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB3_4
# %bb.5:                                # %invoke.cont.i.i.i
	ld.d	$a2, $s0, 40
	st.d	$a1, $sp, 48
	st.d	$a2, $sp, 56
	st.d	$a0, $sp, 32
.LBB3_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit.i
	addi.d	$a2, $sp, 72
	st.w	$zero, $sp, 72
	ld.d	$a1, $s0, 64
	st.d	$zero, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$a2, $sp, 96
	st.d	$zero, $sp, 104
	beqz	$a1, .LBB3_13
# %bb.7:                                # %if.then.i.i9.i
	addi.d	$a0, $sp, 64
	st.d	$a0, $sp, 216
.Ltmp30:                                # EH_LABEL
	addi.d	$a3, $sp, 216
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.8:                                # %while.cond.i.i.i.i.i11.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_9:                                # %while.cond.i.i.i.i.i11.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB3_9
# %bb.10:                               # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i15.i
	st.d	$a1, $sp, 88
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_11:                               # %while.cond.i5.i.i.i.i16.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB3_11
# %bb.12:                               # %invoke.cont.i.i20.i
	ld.d	$a2, $s0, 88
	st.d	$a1, $sp, 96
	st.d	$a2, $sp, 104
	st.d	$a0, $sp, 80
.LBB3_13:                               # %_ZN10MallocPlusC2ERKS_.exit
.Ltmp33:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Crux16store_MallocPlusE10MallocPlus)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.14:                               # %invoke.cont
	ld.d	$a1, $sp, 80
	addi.d	$a0, $sp, 64
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $sp, 32
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.16:                               # %_ZN10MallocPlusD2Ev.exit
	ld.d	$a0, $s3, %pc_lo12(_ZL5state)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN5State16store_checkpointEP4Crux)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Crux9store_endEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(clamr_bootstrap_memory)
	addi.d	$fp, $a0, %pc_lo12(clamr_bootstrap_memory)
	addi.d	$a1, $sp, 156
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 112
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10MallocPlus13memory_removeEPv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB3_17:                               # %lpad.i
.Ltmp32:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_18:                               # %terminate.lpad.i.i2.i
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_19:                               # %terminate.lpad.i.i.i
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_20:                               # %lpad
.Ltmp35:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN10MallocPlusD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z15store_crux_dataP4Cruxi, .Lfunc_end3-_Z15store_crux_dataP4Cruxi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin2          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin2          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin2          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end3-.Ltmp40            #   Call between .Ltmp40 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function do_calc
.LCPI4_0:
	.dword	0x402399999999999a              # double 9.8000000000000007
.LCPI4_1:
	.dword	0x3fee666666666666              # double 0.94999999999999996
.LCPI4_2:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	do_calc
	.p2align	5
	.type	do_calc,@function
do_calc:                                # @do_calc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
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
	pcalau12i	$s6, %pc_hi20(_ZL4mesh)
	ld.d	$fp, $s6, %pc_lo12(_ZL4mesh)
	pcalau12i	$a0, %pc_hi20(_ZL13next_cp_cycle)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$s1, $a0, %pc_lo12(_ZL13next_cp_cycle)
	pcalau12i	$a0, %pc_hi20(niter)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$s2, $a0, %pc_lo12(niter)
	pcalau12i	$a0, %pc_hi20(_ZL19next_graphics_cycle)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s0, $a0, %pc_lo12(_ZL19next_graphics_cycle)
	st.d	$zero, $sp, 240
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	vst	$vr0, $sp, 224
.Ltmp42:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL10tstart_cpu)
	addi.d	$a0, $a0, %pc_lo12(_ZL10tstart_cpu)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.1:                                # %invoke.cont4
	pcalau12i	$a0, %pc_hi20(outputInterval)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(outputInterval)
	pcalau12i	$s7, %pc_hi20(_ZL6ncycle)
	pcalau12i	$s5, %pc_hi20(_ZL5state)
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	bltz	$a0, .LBB4_55
# %bb.2:                                # %invoke.cont4
	slt	$a1, $s1, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $s1, $a1
	or	$a2, $a1, $a2
	slt	$a3, $s0, $a2
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	bge	$a1, $a2, .LBB4_55
# %bb.3:                                # %for.body.lr.ph
	mod.w	$a0, $a1, $a0
	addi.w	$s8, $a0, 1
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_1)
	pcalau12i	$a0, %pc_hi20(_ZL6deltaT)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL7simTime)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL15tstart_partmeas)
	addi.d	$s0, $a0, %pc_lo12(_ZL15tstart_partmeas)
	pcalau12i	$a0, %pc_hi20(_ZL17cpu_time_partmeas)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(face_based)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp44:                                # EH_LABEL
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(_ZN5State12set_timestepEdd)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.5:                                # %invoke.cont7
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	fld.d	$fa1, $a3, %pc_lo12(_ZL7simTime)
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	ld.w	$a1, $fp, 1160
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	fst.d	$fa0, $a2, %pc_lo12(_ZL6deltaT)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, %pc_lo12(_ZL7simTime)
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh14calc_neighborsEi)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.6:                                # %invoke.cont9
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp48:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.7:                                # %invoke.cont10
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh17partition_measureEv)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.8:                                # %invoke.cont11
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.9:                                # %invoke.cont12
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(_ZL17cpu_time_partmeas)
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	ld.w	$a1, $fp, 1160
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, %pc_lo12(_ZL17cpu_time_partmeas)
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh10set_boundsEi)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.10:                               # %invoke.cont16
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a1, $a0, %pc_lo12(face_based)
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	fld.d	$fa0, $a2, %pc_lo12(_ZL6deltaT)
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_12
# %bb.11:                               # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State32calc_finite_difference_via_facesEd)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_12:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State22calc_finite_differenceEd)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
.LBB4_13:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp60:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State21remove_boundary_cellsEv)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.14:                               # %invoke.cont19
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 232
	ld.d	$a2, $sp, 224
	ld.d	$a1, $fp, 1160
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB4_16
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$a1, $a1, $a3
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 224
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_16:                               # %if.else.i
                                        #   in Loop: Header=BB4_4 Depth=1
	bgeu	$a1, $a3, .LBB4_19
# %bb.17:                               # %if.then5.i
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB4_19
# %bb.18:                               # %invoke.cont.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a1, $sp, 232
	.p2align	4, , 16
.LBB4_19:                               # %invoke.cont20
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp64:                                # EH_LABEL
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 252
	addi.d	$a3, $sp, 248
	pcaddu18i	$ra, %call36(_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.20:                               # %invoke.cont21
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 232
	ld.d	$s6, $sp, 224
	ld.d	$s2, $s5, %pc_lo12(_ZL5state)
	ld.w	$s3, $sp, 252
	ld.w	$s4, $sp, 248
	sub.d	$s5, $a0, $s6
	st.d	$zero, $sp, 200
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	beq	$a0, $s6, .LBB4_23
# %bb.21:                               # %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp66:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.22:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a0, $sp, 200
	st.d	$a0, $sp, 208
	add.d	$s7, $a0, $s5
	st.d	$s7, $sp, 216
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_23:                               # %invoke.cont.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s7, $zero
	st.d	$zero, $sp, 200
	st.d	$s5, $sp, 216
.LBB4_24:                               # %invoke.cont24
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$s7, $sp, 208
.Ltmp68:                                # EH_LABEL
	addi.d	$a3, $sp, 200
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZN5State10rezone_allEiiSt6vectorIiSaIiEE)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.25:                               # %invoke.cont26
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 200
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_27
# %bb.26:                               # %if.then.i.i.i64
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 216
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_27:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 224
	ld.d	$a1, $sp, 240
	st.d	$zero, $sp, 224
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 232
	beqz	$a0, .LBB4_29
# %bb.28:                               # %if.then.i.i.i73
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_29:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit78
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	st.d	$s1, $a0, 1160
	st.d	$s1, $fp, 1160
.Ltmp71:                                # EH_LABEL
	addi.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(_ZN4Mesh10set_boundsEi)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.30:                               # %invoke.cont29
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	ld.d	$a1, $a0, 864
	ld.d	$a3, $a0, 856
	ld.d	$a2, $fp, 1160
	sub.d	$a4, $a1, $a3
	srai.d	$a4, $a4, 2
	bgeu	$a4, $a2, .LBB4_32
# %bb.31:                               # %if.then.i92
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a0, $a0, 856
	sub.d	$a1, $a2, $a4
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_32:                               # %if.else.i86
                                        #   in Loop: Header=BB4_4 Depth=1
	bgeu	$a2, $a4, .LBB4_35
# %bb.33:                               # %if.then5.i88
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a2, $a2, $a3, 2
	beq	$a1, $a2, .LBB4_35
# %bb.34:                               # %invoke.cont.i.i91
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a2, $a0, 864
	.p2align	4, , 16
.LBB4_35:                               # %invoke.cont30
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $sp, 252
	beqz	$a0, .LBB4_53
# %bb.36:                               # %if.then31
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s2, $fp, 1160
	srli.d	$a0, $s2, 61
	bnez	$a0, .LBB4_105
# %bb.37:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$s2, .LBB4_41
# %bb.38:                               # %if.then.i.i.i.i3.i
                                        #   in Loop: Header=BB4_4 Depth=1
	slli.d	$s1, $s2, 2
.Ltmp76:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp77:                                # EH_LABEL
# %bb.39:                               # %call5.i.i.i2.i.i.noexc
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a1, $sp, 176
	alsl.d	$a0, $s2, $a1, 2
	st.d	$a0, $sp, 192
	st.w	$zero, $a1, 0
	addi.d	$a0, $a1, 4
	ori	$a2, $zero, 1
	beq	$s2, $a2, .LBB4_42
# %bb.40:                               # %if.end.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$s2, $a1, $s1
	addi.d	$a2, $s1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_41:                               # %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $zero
	st.d	$zero, $sp, 192
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 176
.LBB4_42:                               # %invoke.cont34
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a4, $s6, %pc_lo12(_ZL4mesh)
	pcalau12i	$a1, %pc_hi20(numpe)
	ld.w	$a1, $a1, %pc_lo12(numpe)
	pcalau12i	$a2, %pc_hi20(cycle_reorder)
	ld.w	$a3, $a2, %pc_lo12(cycle_reorder)
	st.d	$a0, $sp, 184
.Ltmp79:                                # EH_LABEL
	addi.d	$a2, $sp, 176
	move	$a0, $a4
	pcaddu18i	$ra, %call36(_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.43:                               # %invoke.cont36
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 184
	ld.d	$s3, $sp, 176
	ld.d	$s1, $s5, %pc_lo12(_ZL5state)
	sub.d	$s2, $a0, $s3
	st.d	$zero, $sp, 152
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	beq	$a0, $s3, .LBB4_46
# %bb.44:                               # %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i109
                                        #   in Loop: Header=BB4_4 Depth=1
.Ltmp81:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.45:                               # %if.then.i.i.i120
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a0, $sp, 152
	st.d	$a0, $sp, 160
	add.d	$s4, $a0, $s2
	st.d	$s4, $sp, 168
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_46:                               # %invoke.cont.i110
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s4, $zero
	st.d	$zero, $sp, 152
	st.d	$s2, $sp, 168
.LBB4_47:                               # %invoke.cont38
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$s4, $sp, 160
.Ltmp83:                                # EH_LABEL
	addi.d	$a1, $sp, 152
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN5State13state_reorderESt6vectorIiSaIiEE)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.48:                               # %invoke.cont40
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB4_50
# %bb.49:                               # %if.then.i.i.i127
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_50:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit132
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State17memory_reset_ptrsEv)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.51:                               # %invoke.cont41
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB4_53
# %bb.52:                               # %if.then.i.i.i135
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_53:                               # %if.end43
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s7, %pc_lo12(_ZL6ncycle)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(outputInterval)
	addi.w	$a0, $a0, 1
	st.w	$a0, $s7, %pc_lo12(_ZL6ncycle)
	bge	$s8, $a1, .LBB4_55
# %bb.54:                               # %if.end43
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$s8, $s8, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_4
.LBB4_55:                               # %for.cond.cleanup
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
.Ltmp92:                                # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.56:                               # %invoke.cont48
	pcalau12i	$a2, %pc_hi20(_ZL14cpu_time_calcs)
	fld.d	$fa1, $a2, %pc_lo12(_ZL14cpu_time_calcs)
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	pcalau12i	$a1, %pc_hi20(enhanced_precision_sum)
	ld.w	$a1, $a1, %pc_lo12(enhanced_precision_sum)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, %pc_lo12(_ZL14cpu_time_calcs)
.Ltmp94:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State8mass_sumEi)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.57:                               # %invoke.cont51
	fmov.d	$fs0, $fa0
	fcmp.cor.d	$fcc1, $fa0, $fa0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	bceqz	$fcc1, .LBB4_107
.LBB4_58:                               # %if.end59
	pcalau12i	$s1, %pc_hi20(_ZL13H_sum_initial)
	fld.d	$fa1, $s1, %pc_lo12(_ZL13H_sum_initial)
	fsub.d	$fa2, $fs0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI4_2)
	pcalau12i	$a0, %pc_hi20(upper_mass_diff_percentage)
	fld.d	$fa0, $a0, %pc_lo12(upper_mass_diff_percentage)
	fabs.d	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fmul.d	$fs1, $fa1, $fs2
	fcmp.cult.d	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB4_61
# %bb.59:                               # %if.end65
	bcnez	$fcc1, .LBB4_83
# %bb.60:
	ori	$s0, $zero, 1
	b	.LBB4_62
.LBB4_61:                               # %if.end65.thread
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	movfr2gr.d	$a2, $fs1
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 2
.LBB4_62:                               # %if.then67
	pcalau12i	$a0, %pc_hi20(crux_type)
	ld.w	$a0, $a0, %pc_lo12(crux_type)
	beqz	$a0, .LBB4_128
# %bb.63:                               # %if.then69
	pcalau12i	$s2, %pc_hi20(_ZZ7do_calcE16rollback_attempt)
	ld.w	$a1, $s2, %pc_lo12(_ZZ7do_calcE16rollback_attempt)
	pcalau12i	$s3, %pc_hi20(num_of_rollback_states)
	ld.w	$a2, $s3, %pc_lo12(num_of_rollback_states)
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, %pc_lo12(_ZZ7do_calcE16rollback_attempt)
	bge	$a1, $a2, .LBB4_129
# %bb.64:                               # %if.end86
	pcalau12i	$s4, %pc_hi20(graphic_outputInterval)
	ld.w	$a1, $s4, %pc_lo12(graphic_outputInterval)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(niter)
	blt	$a2, $a1, .LBB4_73
# %bb.65:                               # %if.then88
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
.Ltmp102:                               # EH_LABEL
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.66:                               # %invoke.cont89
	ld.w	$a0, $fp, 1160
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_mysize)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.67:                               # %invoke.cont91
	pcalau12i	$a0, %pc_hi20(_ZL9view_mode)
	ld.bu	$a0, $a0, %pc_lo12(_ZL9view_mode)
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_viewmode)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.68:                               # %invoke.cont92
	ld.d	$a3, $s6, %pc_lo12(_ZL4mesh)
	pcalau12i	$a0, %pc_hi20(set_graphics_cell_coordinates)
	ld.d	$a4, $a0, %pc_lo12(set_graphics_cell_coordinates)
	ld.d	$a0, $a3, 1416
	ld.d	$a1, $a3, 1440
	ld.d	$a2, $a3, 1464
	ld.d	$a3, $a3, 1488
.Ltmp108:                               # EH_LABEL
	jirl	$ra, $a4, 0
.Ltmp109:                               # EH_LABEL
# %bb.69:                               # %invoke.cont97
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	pcalau12i	$a1, %pc_hi20(set_graphics_cell_data)
	ld.d	$a1, $a1, %pc_lo12(set_graphics_cell_data)
	ld.d	$a0, $a0, 200
.Ltmp110:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp111:                               # EH_LABEL
# %bb.70:                               # %invoke.cont98
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	ld.d	$a0, $a0, 856
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_cell_proc)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.71:                               # %invoke.cont101
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	ld.w	$a0, $s4, %pc_lo12(graphic_outputInterval)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	ld.w	$a3, $s2, %pc_lo12(_ZZ7do_calcE16rollback_attempt)
	div.w	$a0, $a1, $a0
.Ltmp114:                               # EH_LABEL
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(write_graphics_info)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.72:                               # %invoke.cont101.if.end104_crit_edge
	ld.w	$a0, $s2, %pc_lo12(_ZZ7do_calcE16rollback_attempt)
.LBB4_73:                               # %if.end104
	pcalau12i	$a1, %pc_hi20(checkpoint_outputInterval)
	ld.w	$a1, $a1, %pc_lo12(checkpoint_outputInterval)
	ld.w	$a2, $s7, %pc_lo12(_ZL6ncycle)
	mul.d	$a0, $a1, $a0
	sub.w	$a1, $a2, $a0
	addi.w	$a0, $zero, -1
	bge	$a0, $a1, .LBB4_75
# %bb.74:                               # %if.else111
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB4_76
.LBB4_75:                               # %if.then108
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB4_76:                               # %if.end116
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	fld.d	$fa1, $s1, %pc_lo12(_ZL13H_sum_initial)
	ld.w	$a2, $s2, %pc_lo12(_ZZ7do_calcE16rollback_attempt)
	ld.w	$a3, $s3, %pc_lo12(num_of_rollback_states)
.Ltmp116:                               # EH_LABEL
	fmov.d	$fa2, $fs0
	fmov.d	$fa3, $fs1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN5State18print_rollback_logEiddddiii)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.77:                               # %invoke.cont117
	pcalau12i	$s0, %pc_hi20(_ZL4crux)
	ld.d	$a0, $s0, %pc_lo12(_ZL4crux)
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Crux19get_rollback_numberEv)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.78:                               # %invoke.cont119
	move	$a2, $a0
	ld.d	$a0, $s0, %pc_lo12(_ZL4crux)
.Ltmp120:                               # EH_LABEL
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_Z27restore_crux_data_bootstrapP4CruxPci)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.79:                               # %invoke.cont121
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh9terminateEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.80:                               # %invoke.cont122
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State9terminateEv)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.81:                               # %invoke.cont123
	ld.d	$s0, $s0, %pc_lo12(_ZL4crux)
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
.Ltmp126:                               # EH_LABEL
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN5State18restore_checkpointEP4Crux)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.82:                               # %.noexc170
.Ltmp128:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN4Crux11restore_endEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
.LBB4_83:                               # %land.lhs.true
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(outputInterval)
	mod.w	$a0, $a1, $a0
	beqz	$a0, .LBB4_85
# %bb.84:                               # %if.end139
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(_ZL13next_cp_cycle)
	beq	$a1, $a0, .LBB4_86
	b	.LBB4_87
.LBB4_85:                               # %if.then135
	pcalau12i	$a0, %pc_hi20(_ZL6deltaT)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	ld.d	$a4, $fp, 1160
	fld.d	$fa0, $s1, %pc_lo12(_ZL13H_sum_initial)
	ld.d	$a3, $a2, %pc_lo12(_ZL7simTime)
	ld.d	$a2, $a0, %pc_lo12(_ZL6deltaT)
	fsub.d	$fa0, $fs0, $fa0
	movfr2gr.d	$a6, $fa0
	movfr2gr.d	$a5, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(_ZL13next_cp_cycle)
	bne	$a1, $a0, .LBB4_87
.LBB4_86:                               # %if.then141
	pcalau12i	$a0, %pc_hi20(_ZL4crux)
	ld.d	$a0, $a0, %pc_lo12(_ZL4crux)
.Ltmp133:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z15store_crux_dataP4Cruxi)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
.LBB4_87:                               # %if.end143
.Ltmp135:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL10tstart_cpu)
	addi.d	$s0, $a0, %pc_lo12(_ZL10tstart_cpu)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.88:                               # %lor.lhs.false
	ld.w	$a0, $s7, %pc_lo12(_ZL6ncycle)
	ld.w	$a1, $s8, %pc_lo12(_ZL19next_graphics_cycle)
	beq	$a0, $a1, .LBB4_91
# %bb.89:                               # %lor.lhs.false147
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(niter)
	blt	$a0, $a1, .LBB4_100
# %bb.90:                               # %lor.lhs.false147
	pcalau12i	$a0, %pc_hi20(graphic_outputInterval)
	ld.w	$a0, $a0, %pc_lo12(graphic_outputInterval)
	bge	$a0, $a1, .LBB4_100
.LBB4_91:                               # %if.then151
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
.Ltmp137:                               # EH_LABEL
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN4Mesh24calc_spatial_coordinatesEi)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.92:                               # %if.end153
	ld.w	$a0, $s7, %pc_lo12(_ZL6ncycle)
	ld.w	$a1, $s8, %pc_lo12(_ZL19next_graphics_cycle)
	bne	$a0, $a1, .LBB4_100
# %bb.93:                               # %if.then155
	ld.w	$a0, $fp, 1160
.Ltmp139:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_mysize)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.94:                               # %invoke.cont157
	pcalau12i	$a0, %pc_hi20(_ZL9view_mode)
	ld.bu	$a0, $a0, %pc_lo12(_ZL9view_mode)
.Ltmp141:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_viewmode)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.95:                               # %invoke.cont158
	ld.d	$a3, $s6, %pc_lo12(_ZL4mesh)
	pcalau12i	$a0, %pc_hi20(set_graphics_cell_coordinates)
	ld.d	$a4, $a0, %pc_lo12(set_graphics_cell_coordinates)
	ld.d	$a0, $a3, 1416
	ld.d	$a1, $a3, 1440
	ld.d	$a2, $a3, 1464
	ld.d	$a3, $a3, 1488
.Ltmp143:                               # EH_LABEL
	jirl	$ra, $a4, 0
.Ltmp144:                               # EH_LABEL
# %bb.96:                               # %invoke.cont167
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	pcalau12i	$a1, %pc_hi20(set_graphics_cell_data)
	ld.d	$a1, $a1, %pc_lo12(set_graphics_cell_data)
	ld.d	$a0, $a0, 200
.Ltmp145:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp146:                               # EH_LABEL
# %bb.97:                               # %invoke.cont170
	ld.d	$a0, $s6, %pc_lo12(_ZL4mesh)
	ld.d	$a0, $a0, 856
.Ltmp147:                               # EH_LABEL
	pcaddu18i	$ra, %call36(set_graphics_cell_proc)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.98:                               # %invoke.cont173
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	pcalau12i	$fp, %pc_hi20(graphic_outputInterval)
	ld.w	$a0, $fp, %pc_lo12(graphic_outputInterval)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	div.w	$a0, $a1, $a0
.Ltmp149:                               # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(write_graphics_info)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.99:                               # %invoke.cont175
	ld.w	$a0, $fp, %pc_lo12(graphic_outputInterval)
	ld.w	$a1, $s8, %pc_lo12(_ZL19next_graphics_cycle)
	add.d	$a0, $a1, $a0
	st.w	$a0, $s8, %pc_lo12(_ZL19next_graphics_cycle)
.LBB4_100:                              # %if.end177
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s0, 8
.Ltmp151:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.101:                              # %invoke.cont179
	pcalau12i	$s0, %pc_hi20(_ZL17cpu_time_graphics)
	fld.d	$fa1, $s0, %pc_lo12(_ZL17cpu_time_graphics)
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(niter)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, %pc_lo12(_ZL17cpu_time_graphics)
	bge	$a1, $a0, .LBB4_108
# %bb.102:                              # %if.end255
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB4_104
# %bb.103:                              # %if.then.i.i.i184
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_104:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit189
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB4_105:                              # %if.then.i.i
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.106:                              # %.noexc101
.LBB4_107:                              # %if.then56
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	movcf2gr	$a2, $fcc1
	st.d	$a2, $sp, 128
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	movgr2cf	$fcc1, $a0
	b	.LBB4_58
.LBB4_108:                              # %if.then183
	pcalau12i	$s1, %pc_hi20(graphic_outputInterval)
	ld.w	$a1, $s1, %pc_lo12(graphic_outputInterval)
	bge	$a1, $a0, .LBB4_113
# %bb.109:                              # %if.then185
.Ltmp153:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZL10tstart_cpu)
	addi.d	$fp, $a0, %pc_lo12(_ZL10tstart_cpu)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cpu_timer_start)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
# %bb.110:                              # %if.then188
	ld.w	$a1, $a0, %pc_lo12(_ZL6ncycle)
	ld.w	$a0, $s1, %pc_lo12(graphic_outputInterval)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	div.w	$a0, $a1, $a0
.Ltmp155:                               # EH_LABEL
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(write_graphics_info)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.111:                              # %if.end191
	ld.w	$a2, $s1, %pc_lo12(graphic_outputInterval)
	ld.w	$a3, $s2, %pc_lo12(_ZL19next_graphics_cycle)
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	add.d	$a2, $a3, $a2
	st.w	$a2, $s2, %pc_lo12(_ZL19next_graphics_cycle)
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.112:                              # %invoke.cont194
	fld.d	$fa1, $s0, %pc_lo12(_ZL17cpu_time_graphics)
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, %pc_lo12(_ZL17cpu_time_graphics)
.LBB4_113:                              # %if.end197
	pcalau12i	$a0, %pc_hi20(_ZL6tstart)
	addi.d	$a1, $a0, %pc_lo12(_ZL6tstart)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.114:                              # %invoke.cont200
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZL5state)
.Ltmp162:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN5State18output_timing_infoEiid)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.115:                              # %invoke.cont202
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZL4mesh)
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh23print_partition_measureEv)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.116:                              # %invoke.cont203
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZL4mesh)
.Ltmp166:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh24print_calc_neighbor_typeEv)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.117:                              # %invoke.cont204
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZL4mesh)
.Ltmp168:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh20print_partition_typeEv)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.118:                              # %invoke.cont205
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $fp, %pc_lo12(_ZL4mesh)
	ld.w	$a0, $a0, 584
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $s0, %pc_lo12(_ZL6ncycle)
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs2
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(_ZL4mesh)
	ld.w	$a0, $a0, 592
	ld.w	$a1, $s0, %pc_lo12(_ZL6ncycle)
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs2
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(_ZL4mesh)
	ld.w	$a1, $a0, 588
	ld.w	$a0, $a0, 584
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(_ZL4mesh)
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN4Mesh9terminateEv)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.119:                              # %invoke.cont231
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZL5state)
.Ltmp172:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN5State9terminateEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.120:                              # %invoke.cont232
.Ltmp174:                               # EH_LABEL
	pcaddu18i	$ra, %call36(terminate_graphics_output)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.121:                              # %invoke.cont233
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(_ZL4mesh)
	bnez	$fp, .LBB4_132
# %bb.122:                              # %delete.end
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(_ZL5state)
	bnez	$fp, .LBB4_133
.LBB4_123:                              # %delete.end236
	pcalau12i	$a0, %pc_hi20(_ZL4crux)
	ld.d	$fp, $a0, %pc_lo12(_ZL4crux)
	bnez	$fp, .LBB4_134
.LBB4_124:                              # %delete.end239
	pcalau12i	$a0, %pc_hi20(_ZL5parse)
	ld.d	$fp, $a0, %pc_lo12(_ZL5parse)
	beqz	$fp, .LBB4_126
.LBB4_125:                              # %delete.notnull241
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2PP11PowerParserD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2800
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_126:                              # %delete.end242
	pcalau12i	$a0, %pc_hi20(total_exec)
	addi.d	$a1, $a0, %pc_lo12(total_exec)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.127:                              # %invoke.cont244
	pcalau12i	$fp, %pc_hi20(_ZZ7do_calcE18total_program_time)
	fst.d	$fa0, $fp, %pc_lo12(_ZZ7do_calcE18total_program_time)
	pcalau12i	$a0, %pc_hi20(total_sim_time_log)
	addi.d	$a0, $a0, %pc_lo12(total_sim_time_log)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, %pc_lo12(_ZZ7do_calcE18total_program_time)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_128:                              # %if.else126
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	fld.d	$fa1, $s1, %pc_lo12(_ZL13H_sum_initial)
.Ltmp131:                               # EH_LABEL
	ori	$a2, $zero, 1
	fmov.d	$fa2, $fs0
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(_ZN5State17print_failure_logEiddddb)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
	b	.LBB4_131
.LBB4_129:                              # %if.then72
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(total_exec)
	addi.d	$a1, $a0, %pc_lo12(total_exec)
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(cpu_timer_stop)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.130:                              # %invoke.cont76
	pcalau12i	$fp, %pc_hi20(_ZZ7do_calcE18total_program_time)
	fst.d	$fa0, $fp, %pc_lo12(_ZZ7do_calcE18total_program_time)
	pcalau12i	$a0, %pc_hi20(total_sim_time_log)
	addi.d	$a0, $a0, %pc_lo12(total_sim_time_log)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, %pc_lo12(_ZZ7do_calcE18total_program_time)
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(_ZL5state)
	ld.w	$a1, $s7, %pc_lo12(_ZL6ncycle)
	pcalau12i	$a2, %pc_hi20(_ZL7simTime)
	fld.d	$fa0, $a2, %pc_lo12(_ZL7simTime)
	fld.d	$fa1, $s1, %pc_lo12(_ZL13H_sum_initial)
.Ltmp99:                                # EH_LABEL
	ori	$a2, $zero, 1
	fmov.d	$fa2, $fs0
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(_ZN5State17print_failure_logEiddddb)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
.LBB4_131:                              # %invoke.cont84
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_132:                              # %delete.notnull
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4MeshD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2288
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(_ZL5state)
	beqz	$fp, .LBB4_123
.LBB4_133:                              # %delete.notnull235
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN5StateD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 368
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL4crux)
	ld.d	$fp, $a0, %pc_lo12(_ZL4crux)
	beqz	$fp, .LBB4_124
.LBB4_134:                              # %delete.notnull238
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4CruxD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZL5parse)
	ld.d	$fp, $a0, %pc_lo12(_ZL5parse)
	bnez	$fp, .LBB4_125
	b	.LBB4_126
.LBB4_135:                              # %lpad78
.Ltmp101:                               # EH_LABEL
	b	.LBB4_150
.LBB4_136:                              # %lpad199
.Ltmp178:                               # EH_LABEL
	b	.LBB4_150
.LBB4_137:                              # %lpad118
.Ltmp130:                               # EH_LABEL
	b	.LBB4_150
.LBB4_138:                              # %lpad
.Ltmp96:                                # EH_LABEL
	b	.LBB4_150
.LBB4_139:                              # %lpad33.loopexit
.Ltmp78:                                # EH_LABEL
	b	.LBB4_150
.LBB4_140:                              # %lpad62
.Ltmp159:                               # EH_LABEL
	b	.LBB4_150
.LBB4_141:                              # %lpad39
.Ltmp85:                                # EH_LABEL
	ld.d	$a2, $sp, 152
	move	$fp, $a0
	beqz	$a2, .LBB4_147
# %bb.142:                              # %if.then.i.i.i151
	ld.d	$a0, $sp, 168
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_147
.LBB4_143:                              # %lpad33.loopexit.split-lp
.Ltmp91:                                # EH_LABEL
	b	.LBB4_150
.LBB4_144:                              # %lpad25
.Ltmp70:                                # EH_LABEL
	ld.d	$a2, $sp, 200
	move	$fp, $a0
	beqz	$a2, .LBB4_151
# %bb.145:                              # %if.then.i.i.i143
	ld.d	$a0, $sp, 216
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_151
.LBB4_146:                              # %lpad35
.Ltmp88:                                # EH_LABEL
	move	$fp, $a0
.LBB4_147:                              # %ehcleanup
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB4_151
# %bb.148:                              # %if.then.i.i.i159
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_151
.LBB4_149:                              # %lpad6
.Ltmp75:                                # EH_LABEL
.LBB4_150:                              # %ehcleanup258
	move	$fp, $a0
.LBB4_151:                              # %ehcleanup258
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB4_153
# %bb.152:                              # %if.then.i.i.i192
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_153:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit197
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	do_calc, .Lfunc_end4-do_calc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp67-.Ltmp44                #   Call between .Ltmp44 and .Ltmp67
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp71-.Ltmp69                #   Call between .Ltmp69 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp74-.Ltmp71                #   Call between .Ltmp71 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin3          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin3          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp82-.Ltmp79                #   Call between .Ltmp79 and .Ltmp82
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin3          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp92-.Ltmp87                #   Call between .Ltmp87 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp95-.Ltmp92                #   Call between .Ltmp92 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin3          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp102-.Ltmp95               #   Call between .Ltmp95 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp115-.Ltmp102              #   Call between .Ltmp102 and .Ltmp115
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp129-.Ltmp118              #   Call between .Ltmp118 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin3         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp133-.Ltmp129              #   Call between .Ltmp129 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp152-.Ltmp133              #   Call between .Ltmp133 and .Ltmp152
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp89-.Ltmp152               #   Call between .Ltmp152 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin3          # >> Call Site 24 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin3          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 25 <<
	.uleb128 .Ltmp153-.Ltmp90               #   Call between .Ltmp90 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp158-.Ltmp153              #   Call between .Ltmp153 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp169-.Ltmp160              #   Call between .Ltmp160 and .Ltmp169
	.uleb128 .Ltmp178-.Lfunc_begin3         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp175-.Ltmp170              #   Call between .Ltmp170 and .Ltmp175
	.uleb128 .Ltmp178-.Lfunc_begin3         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin3         #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp131-.Ltmp177              #   Call between .Ltmp177 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Ltmp97-.Ltmp132               #   Call between .Ltmp132 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 35 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp159-.Lfunc_begin3         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin3          # >> Call Site 36 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin3          # >> Call Site 37 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin3         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 38 <<
	.uleb128 .Lfunc_end4-.Ltmp100           #   Call between .Ltmp100 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN4MeshD2Ev,"axG",@progbits,_ZN4MeshD2Ev,comdat
	.weak	_ZN4MeshD2Ev                    # -- Begin function _ZN4MeshD2Ev
	.p2align	2
	.type	_ZN4MeshD2Ev,@function
_ZN4MeshD2Ev:                           # @_ZN4MeshD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ldptr.d	$a0, $a0, 2264
	beqz	$a0, .LBB5_2
# %bb.1:                                # %if.then.i.i.i
	ldptr.d	$a1, $fp, 2280
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ldptr.d	$a0, $fp, 2240
	beqz	$a0, .LBB5_4
# %bb.3:                                # %if.then.i.i.i2
	ldptr.d	$a1, $fp, 2256
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit7
	ldptr.d	$a0, $fp, 2216
	beqz	$a0, .LBB5_6
# %bb.5:                                # %if.then.i.i.i9
	ldptr.d	$a1, $fp, 2232
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit14
	ldptr.d	$a0, $fp, 2192
	beqz	$a0, .LBB5_8
# %bb.7:                                # %if.then.i.i.i16
	ldptr.d	$a1, $fp, 2208
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit21
	ldptr.d	$a0, $fp, 2168
	beqz	$a0, .LBB5_10
# %bb.9:                                # %if.then.i.i.i23
	ldptr.d	$a1, $fp, 2184
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_10:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit28
	ldptr.d	$a0, $fp, 2144
	beqz	$a0, .LBB5_12
# %bb.11:                               # %if.then.i.i.i30
	ldptr.d	$a1, $fp, 2160
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit35
	ldptr.d	$a0, $fp, 2120
	beqz	$a0, .LBB5_14
# %bb.13:                               # %if.then.i.i.i37
	ldptr.d	$a1, $fp, 2136
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit42
	ldptr.d	$a0, $fp, 2096
	beqz	$a0, .LBB5_16
# %bb.15:                               # %if.then.i.i.i44
	ldptr.d	$a1, $fp, 2112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_16:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit49
	ldptr.d	$a0, $fp, 2072
	beqz	$a0, .LBB5_18
# %bb.17:                               # %if.then.i.i.i51
	ldptr.d	$a1, $fp, 2088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_18:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit56
	ldptr.d	$a0, $fp, 2048
	beqz	$a0, .LBB5_20
# %bb.19:                               # %if.then.i.i.i58
	ldptr.d	$a1, $fp, 2064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit63
	ld.d	$a0, $fp, 2024
	beqz	$a0, .LBB5_22
# %bb.21:                               # %if.then.i.i.i65
	ld.d	$a1, $fp, 2040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_22:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit70
	ld.d	$a0, $fp, 2000
	beqz	$a0, .LBB5_24
# %bb.23:                               # %if.then.i.i.i72
	ld.d	$a1, $fp, 2016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_24:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit77
	ld.d	$a0, $fp, 1976
	beqz	$a0, .LBB5_26
# %bb.25:                               # %if.then.i.i.i79
	ld.d	$a1, $fp, 1992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_26:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit84
	ld.d	$a0, $fp, 1952
	beqz	$a0, .LBB5_28
# %bb.27:                               # %if.then.i.i.i86
	ld.d	$a1, $fp, 1968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit91
	ld.d	$a0, $fp, 1928
	beqz	$a0, .LBB5_30
# %bb.29:                               # %if.then.i.i.i93
	ld.d	$a1, $fp, 1944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_30:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit98
	ld.d	$a0, $fp, 1904
	beqz	$a0, .LBB5_32
# %bb.31:                               # %if.then.i.i.i100
	ld.d	$a1, $fp, 1920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit105
	ld.d	$a0, $fp, 1880
	beqz	$a0, .LBB5_34
# %bb.33:                               # %if.then.i.i.i107
	ld.d	$a1, $fp, 1896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit112
	ld.d	$a0, $fp, 1856
	beqz	$a0, .LBB5_36
# %bb.35:                               # %if.then.i.i.i114
	ld.d	$a1, $fp, 1872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_36:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit119
	ld.d	$a0, $fp, 1832
	beqz	$a0, .LBB5_38
# %bb.37:                               # %if.then.i.i.i121
	ld.d	$a1, $fp, 1848
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit126
	ld.d	$a0, $fp, 1808
	beqz	$a0, .LBB5_40
# %bb.39:                               # %if.then.i.i.i128
	ld.d	$a1, $fp, 1824
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit133
	ld.d	$a0, $fp, 1784
	beqz	$a0, .LBB5_42
# %bb.41:                               # %if.then.i.i.i135
	ld.d	$a1, $fp, 1800
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_42:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit140
	ld.d	$a0, $fp, 1760
	beqz	$a0, .LBB5_44
# %bb.43:                               # %if.then.i.i.i142
	ld.d	$a1, $fp, 1776
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_44:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit147
	ld.d	$a0, $fp, 1736
	beqz	$a0, .LBB5_46
# %bb.45:                               # %if.then.i.i.i149
	ld.d	$a1, $fp, 1752
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_46:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit154
	ld.d	$a0, $fp, 1712
	beqz	$a0, .LBB5_48
# %bb.47:                               # %if.then.i.i.i156
	ld.d	$a1, $fp, 1728
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_48:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit161
	ld.d	$a0, $fp, 1688
	beqz	$a0, .LBB5_50
# %bb.49:                               # %if.then.i.i.i163
	ld.d	$a1, $fp, 1704
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_50:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit168
	ld.d	$a0, $fp, 1664
	beqz	$a0, .LBB5_52
# %bb.51:                               # %if.then.i.i.i170
	ld.d	$a1, $fp, 1680
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_52:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit175
	ld.d	$a0, $fp, 1640
	beqz	$a0, .LBB5_54
# %bb.53:                               # %if.then.i.i.i177
	ld.d	$a1, $fp, 1656
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit182
	ld.d	$a0, $fp, 1616
	beqz	$a0, .LBB5_56
# %bb.55:                               # %if.then.i.i.i184
	ld.d	$a1, $fp, 1632
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit189
	ld.d	$a0, $fp, 1592
	beqz	$a0, .LBB5_58
# %bb.57:                               # %if.then.i.i.i191
	ld.d	$a1, $fp, 1608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit196
	ld.d	$a0, $fp, 1568
	beqz	$a0, .LBB5_60
# %bb.59:                               # %if.then.i.i.i198
	ld.d	$a1, $fp, 1584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_60:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit203
	ld.d	$a0, $fp, 1536
	beqz	$a0, .LBB5_62
# %bb.61:                               # %if.then.i.i.i205
	ld.d	$a1, $fp, 1552
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $fp, 1512
	beqz	$a0, .LBB5_64
# %bb.63:                               # %if.then.i.i.i211
	ld.d	$a1, $fp, 1528
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit216
	ld.d	$a0, $fp, 1488
	beqz	$a0, .LBB5_66
# %bb.65:                               # %if.then.i.i.i218
	ld.d	$a1, $fp, 1504
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit223
	ld.d	$a0, $fp, 1464
	beqz	$a0, .LBB5_68
# %bb.67:                               # %if.then.i.i.i225
	ld.d	$a1, $fp, 1480
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_68:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit230
	ld.d	$a0, $fp, 1440
	beqz	$a0, .LBB5_70
# %bb.69:                               # %if.then.i.i.i232
	ld.d	$a1, $fp, 1456
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit237
	ld.d	$a0, $fp, 1416
	beqz	$a0, .LBB5_72
# %bb.71:                               # %if.then.i.i.i239
	ld.d	$a1, $fp, 1432
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit244
	ld.d	$a0, $fp, 1304
	beqz	$a0, .LBB5_74
# %bb.73:                               # %if.then.i.i.i246
	ld.d	$a1, $fp, 1320
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit251
	ld.d	$a0, $fp, 1096
	beqz	$a0, .LBB5_76
# %bb.75:                               # %if.then.i.i.i253
	ld.d	$a1, $fp, 1112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_76:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit258
	ld.d	$a0, $fp, 1072
	beqz	$a0, .LBB5_78
# %bb.77:                               # %if.then.i.i.i260
	ld.d	$a1, $fp, 1088
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit265
	ld.d	$a0, $fp, 1048
	beqz	$a0, .LBB5_80
# %bb.79:                               # %if.then.i.i.i267
	ld.d	$a1, $fp, 1064
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit272
	ld.d	$a0, $fp, 1024
	beqz	$a0, .LBB5_82
# %bb.81:                               # %if.then.i.i.i274
	ld.d	$a1, $fp, 1040
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_82:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit279
	ld.d	$a0, $fp, 1000
	beqz	$a0, .LBB5_84
# %bb.83:                               # %if.then.i.i.i281
	ld.d	$a1, $fp, 1016
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_84:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit286
	ld.d	$a0, $fp, 976
	beqz	$a0, .LBB5_86
# %bb.85:                               # %if.then.i.i.i288
	ld.d	$a1, $fp, 992
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit293
	ld.d	$a0, $fp, 952
	beqz	$a0, .LBB5_88
# %bb.87:                               # %if.then.i.i.i295
	ld.d	$a1, $fp, 968
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_88:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit300
	ld.d	$a0, $fp, 928
	beqz	$a0, .LBB5_90
# %bb.89:                               # %if.then.i.i.i302
	ld.d	$a1, $fp, 944
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_90:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit307
	ld.d	$a0, $fp, 904
	beqz	$a0, .LBB5_92
# %bb.91:                               # %if.then.i.i.i309
	ld.d	$a1, $fp, 920
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_92:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit314
	ld.d	$a0, $fp, 880
	beqz	$a0, .LBB5_94
# %bb.93:                               # %if.then.i.i.i316
	ld.d	$a1, $fp, 896
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_94:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit321
	ld.d	$a0, $fp, 856
	beqz	$a0, .LBB5_96
# %bb.95:                               # %if.then.i.i.i323
	ld.d	$a1, $fp, 872
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_96:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit328
	ld.d	$a0, $fp, 752
	beqz	$a0, .LBB5_98
# %bb.97:                               # %if.then.i.i.i330
	ld.d	$a1, $fp, 768
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_98:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit335
	ld.d	$a0, $fp, 728
	beqz	$a0, .LBB5_100
# %bb.99:                               # %if.then.i.i.i337
	ld.d	$a1, $fp, 744
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_100:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit342
	ld.d	$a0, $fp, 704
	beqz	$a0, .LBB5_102
# %bb.101:                              # %if.then.i.i.i344
	ld.d	$a1, $fp, 720
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_102:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit349
	ld.d	$a0, $fp, 680
	beqz	$a0, .LBB5_104
# %bb.103:                              # %if.then.i.i.i351
	ld.d	$a1, $fp, 696
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_104:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit356
	ld.d	$a1, $fp, 168
	addi.d	$a0, $fp, 152
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.105:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $fp, 120
	addi.d	$a0, $fp, 104
.Ltmp182:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.106:                              # %_ZN10MallocPlusD2Ev.exit
	ld.d	$a1, $fp, 72
	addi.d	$a0, $fp, 56
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.107:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i360
	ld.d	$a1, $fp, 24
	addi.d	$a0, $fp, 8
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.108:                              # %_ZN10MallocPlusD2Ev.exit363
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_109:                              # %terminate.lpad.i.i2.i362
.Ltmp190:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_110:                              # %terminate.lpad.i.i.i359
.Ltmp187:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_111:                              # %terminate.lpad.i.i2.i
.Ltmp184:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_112:                              # %terminate.lpad.i.i.i
.Ltmp181:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN4MeshD2Ev, .Lfunc_end5-_ZN4MeshD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN4MeshD2Ev,"aG",@progbits,_ZN4MeshD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp179-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin4         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin4         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin4         #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp188-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin4         #     jumps to .Ltmp190
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp189-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Lfunc_end5-.Ltmp189           #   Call between .Ltmp189 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN5StateD2Ev,"axG",@progbits,_ZN5StateD2Ev,comdat
	.weak	_ZN5StateD2Ev                   # -- Begin function _ZN5StateD2Ev
	.p2align	2
	.type	_ZN5StateD2Ev,@function
_ZN5StateD2Ev:                          # @_ZN5StateD2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 160
	addi.d	$a0, $a0, 144
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.1:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i
	ld.d	$a1, $fp, 112
	addi.d	$a0, $fp, 96
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.2:                                # %_ZN10MallocPlusD2Ev.exit
	ld.d	$a1, $fp, 64
	addi.d	$a0, $fp, 48
.Ltmp197:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.3:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit.i4
	ld.d	$a1, $fp, 16
.Ltmp200:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.4:                                # %_ZN10MallocPlusD2Ev.exit7
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_5:                                # %terminate.lpad.i.i2.i6
.Ltmp202:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %terminate.lpad.i.i.i3
.Ltmp199:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_7:                                # %terminate.lpad.i.i2.i
.Ltmp196:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %terminate.lpad.i.i.i
.Ltmp193:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN5StateD2Ev, .Lfunc_end6-_ZN5StateD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN5StateD2Ev,"aG",@progbits,_ZN5StateD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp191-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin5         #     jumps to .Ltmp193
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp194-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin5         #     jumps to .Ltmp196
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp197-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin5         #     jumps to .Ltmp199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp200-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin5         #     jumps to .Ltmp202
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp201-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp201           #   Call between .Ltmp201 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10MallocPlusD2Ev,"axG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.weak	_ZN10MallocPlusD2Ev             # -- Begin function _ZN10MallocPlusD2Ev
	.p2align	2
	.type	_ZN10MallocPlusD2Ev,@function
_ZN10MallocPlusD2Ev:                    # @_ZN10MallocPlusD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 64
	addi.d	$a0, $a0, 48
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.1:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
	ld.d	$a1, $fp, 16
.Ltmp206:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.2:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_3:                                # %terminate.lpad.i.i2
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %terminate.lpad.i.i
.Ltmp205:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN10MallocPlusD2Ev, .Lfunc_end7-_ZN10MallocPlusD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10MallocPlusD2Ev,"aG",@progbits,_ZN10MallocPlusD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp203-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin6         #     jumps to .Ltmp205
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp206-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin6         #     jumps to .Ltmp208
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp207           #   Call between .Ltmp207 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
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
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.p2align	2
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB9_2:                                # %terminate.lpad.i
.Ltmp211:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, .Lfunc_end9-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,"aG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp209-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp210-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Lfunc_end9-.Ltmp210           #   Call between .Ltmp210 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	2
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB10_4
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
.LBB10_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB10_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB10_4:                               # %while.end
	ret
.Lfunc_end10:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end10-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:                                # %entry
	beqz	$a1, .LBB11_6
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
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB11_5
.LBB11_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB11_2
# %bb.4:                                # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_2
.LBB11_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB11_6:                               # %while.end
	ret
.Lfunc_end11:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end11-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB12_3
# %bb.1:                                # %if.then
.Ltmp212:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.2:                                # %invoke.cont
	st.d	$a0, $s0, 24
.LBB12_3:                               # %if.end
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB12_11
# %bb.4:                                # %while.body.preheader
	move	$s5, $s0
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %if.end20
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB12_11
.LBB12_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp215:                               # EH_LABEL
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.7:                                # %call5.i.i.i.i.i25.noexc
                                        #   in Loop: Header=BB12_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp217:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.8:                                # %invoke.cont9
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB12_5
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB12_6 Depth=1
.Ltmp219:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.10:                               # %invoke.cont17
                                        #   in Loop: Header=BB12_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB12_5
.LBB12_11:                              # %try.cont
	move	$a0, $s0
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
.LBB12_12:                              # %lpad
.Ltmp214:                               # EH_LABEL
	b	.LBB12_14
.LBB12_13:                              # %lpad8
.Ltmp221:                               # EH_LABEL
.LBB12_14:                              # %catch
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.15:                               # %invoke.cont23
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.16:                               # %unreachable
.LBB12_17:                              # %lpad22
.Ltmp226:                               # EH_LABEL
	move	$fp, $a0
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.18:                               # %invoke.cont24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_19:                              # %terminate.lpad
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_, .Lfunc_end12-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp212-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin8         #     jumps to .Ltmp214
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp215-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp220-.Ltmp215              #   Call between .Ltmp215 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin8         #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp220-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp222-.Ltmp220              #   Call between .Ltmp220 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp225-.Ltmp222              #   Call between .Ltmp222 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin8         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin8         #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Lfunc_end12-.Ltmp228          #   Call between .Ltmp228 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	2
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$a1, $a2, 8
	ld.d	$s2, $a2, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB13_3
# %bb.1:                                # %if.then.i.i.i
.Ltmp230:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.2:                                # %call.i4.i.i.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB13_3:                               # %if.end.i.i.i
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB13_7
# %bb.4:                                # %if.end.i.i.i
	bnez	$a1, .LBB13_6
# %bb.5:                                # %if.then.i.i.i.i
	ld.b	$a0, $s2, 0
	st.b	$a0, $s1, 0
	b	.LBB13_7
.LBB13_6:                               # %if.end.i.i.i.i.i
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB13_7:                               # %try.cont
	ld.d	$a0, $sp, 8
	ld.d	$a1, $s0, 32
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 64
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB13_8:                               # %lpad
.Ltmp232:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.9:                                # %unreachable
.LBB13_10:                              # %lpad3
.Ltmp235:                               # EH_LABEL
	move	$fp, $a0
.Ltmp236:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.11:                               # %eh.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_12:                              # %terminate.lpad
.Ltmp238:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end13-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp230-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin9         #     jumps to .Ltmp232
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp233-.Ltmp231              #   Call between .Ltmp231 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin9         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin9         #     jumps to .Ltmp238
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp237-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Lfunc_end13-.Ltmp237          #   Call between .Ltmp237 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_ # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_
	.p2align	2
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, 32
	ld.w	$a2, $s2, 0
	move	$s0, $a0
	vst	$vr0, $a0, 32
	ld.d	$a1, $s2, 24
	st.w	$a2, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 16
	st.d	$s3, $a0, 8
	beqz	$a1, .LBB14_3
# %bb.1:                                # %if.then
.Ltmp239:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.2:                                # %invoke.cont
	st.d	$a0, $s0, 24
.LBB14_3:                               # %if.end
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB14_10
# %bb.4:                                # %while.body.preheader
	move	$s4, $s0
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_5:                               # %if.end20
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB14_10
.LBB14_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp242:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.7:                                # %invoke.cont9
                                        #   in Loop: Header=BB14_6 Depth=1
	move	$s2, $a0
	vld	$vr0, $s3, 32
	vst	$vr0, $a0, 32
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB14_5
# %bb.8:                                # %if.then15
                                        #   in Loop: Header=BB14_6 Depth=1
.Ltmp244:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.9:                                # %invoke.cont17
                                        #   in Loop: Header=BB14_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB14_5
.LBB14_10:                              # %try.cont
	move	$a0, $s0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB14_11:                              # %lpad
.Ltmp241:                               # EH_LABEL
	b	.LBB14_13
.LBB14_12:                              # %lpad8
.Ltmp246:                               # EH_LABEL
.LBB14_13:                              # %catch
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.14:                               # %invoke.cont23
.Ltmp249:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.15:                               # %unreachable
.LBB14_16:                              # %lpad22
.Ltmp251:                               # EH_LABEL
	move	$fp, $a0
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.17:                               # %invoke.cont24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_18:                              # %terminate.lpad
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_, .Lfunc_end14-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_,"aG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeIS5_ESF_RT0_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp239-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin10        #     jumps to .Ltmp241
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp242-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp245-.Ltmp242              #   Call between .Ltmp242 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin10        #     jumps to .Ltmp246
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp245-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp247-.Ltmp245              #   Call between .Ltmp245 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp250-.Ltmp247              #   Call between .Ltmp247 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin10        #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin10        #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp253-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp253          #   Call between .Ltmp253 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	2
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
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
	beqz	$a1, .LBB15_15
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 2
	bgeu	$a0, $s0, .LBB15_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB15_16
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
	ori	$s7, $zero, 1
	stx.w	$zero, $a0, $s2
	beq	$s0, $s7, .LBB15_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_5:                               # %invoke.cont
	blt	$s2, $s7, .LBB15_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_7:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB15_9
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_9:                               # %_ZNSt6vectorIiSaIiEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB15_15
.LBB15_10:                              # %if.then.i.i.i
	st.w	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 4
	bne	$s0, $a2, .LBB15_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB15_15
.LBB15_12:                              # %if.end.i.i.i.i
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 4
	alsl.d	$s0, $s0, $a1, 2
	beq	$a2, $a3, .LBB15_14
# %bb.13:                               # %for.body.i.preheader.i.i.i
	addi.d	$a2, $a2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_14:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB15_15:                              # %if.end45
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
.LBB15_16:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end15-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_clamr_cpuonly.cpp
	.type	_GLOBAL__sub_I_clamr_cpuonly.cpp,@function
_GLOBAL__sub_I_clamr_cpuonly.cpp:       # @_GLOBAL__sub_I_clamr_cpuonly.cpp
	.cfi_startproc
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(clamr_bootstrap_memory)
	addi.d	$a1, $a0, %pc_lo12(clamr_bootstrap_memory)
	st.w	$zero, $a1, 8
	addi.d	$a0, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$a0, $a1, 24
	st.d	$a0, $a1, 32
	st.d	$zero, $a1, 40
	st.w	$zero, $a1, 56
	addi.d	$a0, $a1, 56
	st.d	$zero, $a1, 64
	st.d	$a0, $a1, 72
	st.d	$a0, $a1, 80
	pcalau12i	$a0, %pc_hi20(_ZN10MallocPlusD2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZN10MallocPlusD2Ev)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	st.d	$zero, $a1, 88
	pcaddu18i	$t8, %call36(__cxa_atexit)
	jr	$t8
.Lfunc_end16:
	.size	_GLOBAL__sub_I_clamr_cpuonly.cpp, .Lfunc_end16-_GLOBAL__sub_I_clamr_cpuonly.cpp
	.cfi_endproc
                                        # -- End function
	.type	set_graphics_cell_coordinates,@object # @set_graphics_cell_coordinates
	.data
	.globl	set_graphics_cell_coordinates
	.p2align	3, 0x0
set_graphics_cell_coordinates:
	.dword	set_graphics_cell_coordinates_double
	.size	set_graphics_cell_coordinates, 8

	.type	set_graphics_cell_data,@object  # @set_graphics_cell_data
	.globl	set_graphics_cell_data
	.p2align	3, 0x0
set_graphics_cell_data:
	.dword	set_graphics_cell_data_double
	.size	set_graphics_cell_data, 8

	.type	restart,@object                 # @restart
	.bss
	.globl	restart
restart:
	.byte	0                               # 0x0
	.size	restart, 1

	.type	verbose,@object                 # @verbose
	.globl	verbose
verbose:
	.byte	0                               # 0x0
	.size	verbose, 1

	.type	localStencil,@object            # @localStencil
	.globl	localStencil
localStencil:
	.byte	0                               # 0x0
	.size	localStencil, 1

	.type	face_based,@object              # @face_based
	.globl	face_based
face_based:
	.byte	0                               # 0x0
	.size	face_based, 1

	.type	outline,@object                 # @outline
	.globl	outline
outline:
	.byte	0                               # 0x0
	.size	outline, 1

	.type	outputInterval,@object          # @outputInterval
	.globl	outputInterval
	.p2align	2, 0x0
outputInterval:
	.word	0                               # 0x0
	.size	outputInterval, 4

	.type	crux_type,@object               # @crux_type
	.globl	crux_type
	.p2align	2, 0x0
crux_type:
	.word	0                               # 0x0
	.size	crux_type, 4

	.type	enhanced_precision_sum,@object  # @enhanced_precision_sum
	.globl	enhanced_precision_sum
	.p2align	2, 0x0
enhanced_precision_sum:
	.word	0                               # 0x0
	.size	enhanced_precision_sum, 4

	.type	lttrace_on,@object              # @lttrace_on
	.globl	lttrace_on
	.p2align	2, 0x0
lttrace_on:
	.word	0                               # 0x0
	.size	lttrace_on, 4

	.type	do_quo_setup,@object            # @do_quo_setup
	.globl	do_quo_setup
	.p2align	2, 0x0
do_quo_setup:
	.word	0                               # 0x0
	.size	do_quo_setup, 4

	.type	levmx,@object                   # @levmx
	.globl	levmx
	.p2align	2, 0x0
levmx:
	.word	0                               # 0x0
	.size	levmx, 4

	.type	nx,@object                      # @nx
	.globl	nx
	.p2align	2, 0x0
nx:
	.word	0                               # 0x0
	.size	nx, 4

	.type	ny,@object                      # @ny
	.globl	ny
	.p2align	2, 0x0
ny:
	.word	0                               # 0x0
	.size	ny, 4

	.type	niter,@object                   # @niter
	.globl	niter
	.p2align	2, 0x0
niter:
	.word	0                               # 0x0
	.size	niter, 4

	.type	graphic_outputInterval,@object  # @graphic_outputInterval
	.globl	graphic_outputInterval
	.p2align	2, 0x0
graphic_outputInterval:
	.word	0                               # 0x0
	.size	graphic_outputInterval, 4

	.type	checkpoint_outputInterval,@object # @checkpoint_outputInterval
	.globl	checkpoint_outputInterval
	.p2align	2, 0x0
checkpoint_outputInterval:
	.word	0                               # 0x0
	.size	checkpoint_outputInterval, 4

	.type	num_of_rollback_states,@object  # @num_of_rollback_states
	.globl	num_of_rollback_states
	.p2align	2, 0x0
num_of_rollback_states:
	.word	0                               # 0x0
	.size	num_of_rollback_states, 4

	.type	backup_file_num,@object         # @backup_file_num
	.globl	backup_file_num
	.p2align	2, 0x0
backup_file_num:
	.word	0                               # 0x0
	.size	backup_file_num, 4

	.type	numpe,@object                   # @numpe
	.globl	numpe
	.p2align	2, 0x0
numpe:
	.word	0                               # 0x0
	.size	numpe, 4

	.type	ndim,@object                    # @ndim
	.data
	.globl	ndim
	.p2align	2, 0x0
ndim:
	.word	2                               # 0x2
	.size	ndim, 4

	.type	upper_mass_diff_percentage,@object # @upper_mass_diff_percentage
	.bss
	.globl	upper_mass_diff_percentage
	.p2align	3, 0x0
upper_mass_diff_percentage:
	.dword	0x0000000000000000              # double 0
	.size	upper_mass_diff_percentage, 8

	.type	restart_file,@object            # @restart_file
	.globl	restart_file
	.p2align	3, 0x0
restart_file:
	.dword	0
	.size	restart_file, 8

	.type	initial_order,@object           # @initial_order
	.globl	initial_order
	.p2align	2, 0x0
initial_order:
	.word	0                               # 0x0
	.size	initial_order, 4

	.type	cycle_reorder,@object           # @cycle_reorder
	.globl	cycle_reorder
	.p2align	2, 0x0
cycle_reorder:
	.word	0                               # 0x0
	.size	cycle_reorder, 4

	.type	total_sim_time_log,@object      # @total_sim_time_log
	.data
	.globl	total_sim_time_log
total_sim_time_log:
	.asciz	"total_execution_time.log"
	.size	total_sim_time_log, 25

	.type	total_exec,@object              # @total_exec
	.bss
	.globl	total_exec
	.p2align	3, 0x0
total_exec:
	.space	16
	.size	total_exec, 16

	.type	_ZL5parse,@object               # @_ZL5parse
	.local	_ZL5parse
	.comm	_ZL5parse,8,8
	.type	_ZL4crux,@object                # @_ZL4crux
	.local	_ZL4crux
	.comm	_ZL4crux,8,8
	.type	_ZL11circ_radius,@object        # @_ZL11circ_radius
	.local	_ZL11circ_radius
	.comm	_ZL11circ_radius,8,8
	.type	_ZL4mesh,@object                # @_ZL4mesh
	.local	_ZL4mesh
	.comm	_ZL4mesh,8,8
	.type	_ZL5state,@object               # @_ZL5state
	.local	_ZL5state
	.comm	_ZL5state,8,8
	.type	_ZL19next_graphics_cycle,@object # @_ZL19next_graphics_cycle
	.local	_ZL19next_graphics_cycle
	.comm	_ZL19next_graphics_cycle,4,4
	.type	_ZL13next_cp_cycle,@object      # @_ZL13next_cp_cycle
	.local	_ZL13next_cp_cycle
	.comm	_ZL13next_cp_cycle,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Mass of initialized cells equal to %14.12lg\n"
	.size	.L.str, 45

	.type	_ZL13H_sum_initial,@object      # @_ZL13H_sum_initial
	.local	_ZL13H_sum_initial
	.comm	_ZL13H_sum_initial,8,8
	.type	_ZL6ncycle,@object              # @_ZL6ncycle
	.local	_ZL6ncycle
	.comm	_ZL6ncycle,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Iteration %3d timestep %lf Sim Time %lf cells %ld Mass Sum %14.12lg\n"
	.size	.L.str.1, 69

	.type	_ZL6deltaT,@object              # @_ZL6deltaT
	.local	_ZL6deltaT
	.comm	_ZL6deltaT,8,8
	.type	_ZL7simTime,@object             # @_ZL7simTime
	.local	_ZL7simTime
	.comm	_ZL7simTime,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Iteration   0 timestep      n/a Sim Time      0.0 cells %ld Mass Sum %14.12lg\n"
	.size	.L.str.2, 79

	.type	_ZL10tstart_cpu,@object         # @_ZL10tstart_cpu
	.local	_ZL10tstart_cpu
	.comm	_ZL10tstart_cpu,16,8
	.type	_ZL9view_mode,@object           # @_ZL9view_mode
	.local	_ZL9view_mode
	.comm	_ZL9view_mode,1,4
	.type	_ZL17cpu_time_graphics,@object  # @_ZL17cpu_time_graphics
	.local	_ZL17cpu_time_graphics
	.comm	_ZL17cpu_time_graphics,8,8
	.type	_ZL6tstart,@object              # @_ZL6tstart
	.local	_ZL6tstart
	.comm	_ZL6tstart,16,8
	.type	_ZL2it,@object                  # @_ZL2it
	.local	_ZL2it
	.comm	_ZL2it,4,4
	.type	_ZZ7do_calcE16rollback_attempt,@object # @_ZZ7do_calcE16rollback_attempt
	.local	_ZZ7do_calcE16rollback_attempt
	.comm	_ZZ7do_calcE16rollback_attempt,4,4
	.type	_ZZ7do_calcE18total_program_time,@object # @_ZZ7do_calcE18total_program_time
	.local	_ZZ7do_calcE18total_program_time
	.comm	_ZZ7do_calcE18total_program_time,8,8
	.type	_ZL15tstart_partmeas,@object    # @_ZL15tstart_partmeas
	.local	_ZL15tstart_partmeas
	.comm	_ZL15tstart_partmeas,16,8
	.type	_ZL17cpu_time_partmeas,@object  # @_ZL17cpu_time_partmeas
	.local	_ZL17cpu_time_partmeas
	.comm	_ZL17cpu_time_partmeas,8,8
	.type	_ZL14cpu_time_calcs,@object     # @_ZL14cpu_time_calcs
	.local	_ZL14cpu_time_calcs
	.comm	_ZL14cpu_time_calcs,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Got a NAN on cycle %d\n"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Mass difference outside of acceptable range on cycle %d percent_mass_diff %lg upper limit %lg\n"
	.size	.L.str.4, 95

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"w"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"The total execution time of the program before failure was %g seconds\n"
	.size	.L.str.7, 71

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Rolling simulation back to to ncycle %d\n"
	.size	.L.str.9, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Iteration %3d timestep %lf Sim Time %lf cells %ld Mass Sum %14.12lg Mass Change %12.6lg\n"
	.size	.L.str.11, 89

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"CPU:  rezone frequency                \t %8.4f\tpercent\n"
	.size	.L.str.12, 55

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"CPU:  calc neigh frequency            \t %8.4f\tpercent\n"
	.size	.L.str.13, 55

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"CPU:  refine_smooth_iter per rezone   \t %8.4f\t\n"
	.size	.L.str.14, 48

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"The total execution time of the program was %g seconds\n"
	.size	.L.str.15, 56

	.type	clamr_bootstrap_memory,@object  # @clamr_bootstrap_memory
	.bss
	.globl	clamr_bootstrap_memory
	.p2align	3, 0x0
clamr_bootstrap_memory:
	.space	96
	.size	clamr_bootstrap_memory, 96

	.hidden	__dso_handle
	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"bootstrap_int_vals"
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"bootstrap_double_vals"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"CRUX version mismatch for clamr data, version on file is %d, version in code is %d\n"
	.size	.L.str.18, 84

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"vector::_M_default_append"
	.size	.L.str.19, 26

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.20, 49

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_clamr_cpuonly.cpp
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"failure.log has been created"
	.size	.Lstr, 29

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"Rolling simulation back to to ncycle 0"
	.size	.Lstr.1, 39

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Can not recover from error from back up files. Killing program..."
	.size	.Lstr.2, 66

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
	.addrsig_sym set_graphics_cell_coordinates_double
	.addrsig_sym set_graphics_cell_data_double
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_clamr_cpuonly.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym total_sim_time_log
	.addrsig_sym _ZL10tstart_cpu
	.addrsig_sym _ZL6tstart
	.addrsig_sym _ZL15tstart_partmeas
	.addrsig_sym clamr_bootstrap_memory
	.addrsig_sym __dso_handle
