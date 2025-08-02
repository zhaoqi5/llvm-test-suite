	.file	"gramschmidt.c"
	.text
	.globl	polybench_flush_cache           # -- Begin function polybench_flush_cache
	.p2align	5
	.type	polybench_flush_cache,@function
polybench_flush_cache:                  # @polybench_flush_cache
# %bb.0:                                # %entry
	ret
.Lfunc_end0:
	.size	polybench_flush_cache, .Lfunc_end0-polybench_flush_cache
                                        # -- End function
	.globl	polybench_prepare_instruments   # -- Begin function polybench_prepare_instruments
	.p2align	5
	.type	polybench_prepare_instruments,@function
polybench_prepare_instruments:          # @polybench_prepare_instruments
# %bb.0:                                # %entry
	ret
.Lfunc_end1:
	.size	polybench_prepare_instruments, .Lfunc_end1-polybench_prepare_instruments
                                        # -- End function
	.globl	polybench_timer_start           # -- Begin function polybench_timer_start
	.p2align	5
	.type	polybench_timer_start,@function
polybench_timer_start:                  # @polybench_timer_start
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	st.d	$zero, $a0, %pc_lo12(polybench_t_start)
	ret
.Lfunc_end2:
	.size	polybench_timer_start, .Lfunc_end2-polybench_timer_start
                                        # -- End function
	.globl	polybench_timer_stop            # -- Begin function polybench_timer_stop
	.p2align	5
	.type	polybench_timer_stop,@function
polybench_timer_stop:                   # @polybench_timer_stop
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	st.d	$zero, $a0, %pc_lo12(polybench_t_end)
	ret
.Lfunc_end3:
	.size	polybench_timer_stop, .Lfunc_end3-polybench_timer_stop
                                        # -- End function
	.globl	polybench_timer_print           # -- Begin function polybench_timer_print
	.p2align	5
	.type	polybench_timer_print,@function
polybench_timer_print:                  # @polybench_timer_print
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(polybench_t_end)
	fld.d	$fa0, $a0, %pc_lo12(polybench_t_end)
	pcalau12i	$a0, %pc_hi20(polybench_t_start)
	fld.d	$fa1, $a0, %pc_lo12(polybench_t_start)
	fsub.d	$fa0, $fa0, $fa1
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end4:
	.size	polybench_timer_print, .Lfunc_end4-polybench_timer_print
                                        # -- End function
	.globl	polybench_free_data             # -- Begin function polybench_free_data
	.p2align	5
	.type	polybench_free_data,@function
polybench_free_data:                    # @polybench_free_data
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	polybench_free_data, .Lfunc_end5-polybench_free_data
                                        # -- End function
	.globl	polybench_alloc_data            # -- Begin function polybench_alloc_data
	.p2align	5
	.type	polybench_alloc_data,@function
polybench_alloc_data:                   # @polybench_alloc_data
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	mul.d	$a2, $a0, $a1
	st.d	$zero, $sp, 0
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	beqz	$a1, .LBB6_3
# %bb.1:                                # %entry
	bnez	$a0, .LBB6_3
# %bb.2:                                # %xmalloc.exit
	move	$a0, $a1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	polybench_alloc_data, .Lfunc_end6-polybench_alloc_data
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x408f400000000000              # double 1000
.LCPI7_2:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	st.d	$zero, $sp, 152
	lu12i.w	$a0, 2343
	ori	$s2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 152
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 152
	beqz	$s0, .LBB7_35
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_35
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 152
	lu12i.w	$a0, 2812
	ori	$s3, $a0, 2048
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 152
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_35
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_35
# %bb.4:                                # %polybench_alloc_data.exit20
	st.d	$zero, $sp, 152
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 152
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 152
	beqz	$t1, .LBB7_35
# %bb.5:                                # %polybench_alloc_data.exit20
	bnez	$a0, .LBB7_35
# %bb.6:                                # %polybench_alloc_data.exit27
	move	$t4, $zero
	move	$a1, $zero
	sub.d	$a2, $t1, $s0
	ori	$a3, $zero, 31
	lu12i.w	$fp, -3
	ori	$a4, $fp, 2688
	lu12i.w	$a5, 67108
	ori	$a5, $a5, 3539
	ori	$a6, $zero, 1000
	pcalau12i	$a7, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a7, %pc_lo12(.LCPI7_1)
	pcalau12i	$a7, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a7, %pc_lo12(.LCPI7_2)
	vldi	$vr2, -988
	lu12i.w	$s1, 2
	ori	$s4, $s1, 1408
	pcalau12i	$a7, %pc_hi20(.LCPI7_0)
	xvld	$xr3, $a7, %pc_lo12(.LCPI7_0)
	vreplgr2vr.w	$vr4, $a5
	vreplgr2vr.w	$vr5, $a6
	ori	$a7, $zero, 0
	ori	$t0, $zero, 0
	lu32i.d	$t0, -49152
	lu52i.d	$t0, $t0, 1032
	xvreplgr2vr.d	$xr6, $t0
	ori	$t0, $zero, 0
	lu32i.d	$t0, -458752
	lu52i.d	$t0, $t0, 1029
	xvreplgr2vr.d	$xr7, $t0
	lu32i.d	$a7, 262144
	lu52i.d	$a7, $a7, 1026
	xvreplgr2vr.d	$xr8, $a7
	xvrepli.b	$xr9, 0
	move	$a7, $s0
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	move	$t0, $t1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %for.inc12.i
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t0, $t0, $s4
	add.d	$a7, $a7, $s4
	addi.d	$t4, $t4, 1
	beq	$a1, $a6, .LBB7_13
.LBB7_8:                                # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bltu	$a3, $a2, .LBB7_11
# %bb.9:                                # %for.body3.i.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$t1, $zero
	move	$t2, $a4
	.p2align	4, , 16
.LBB7_10:                               # %for.body3.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t3, $t1, 31, 0
	mul.d	$t3, $t3, $a5
	srli.d	$t3, $t3, 38
	mul.d	$t3, $t3, $a6
	sub.d	$t3, $t1, $t3
	bstrpick.d	$t3, $t3, 31, 0
	movgr2fr.d	$ft2, $t3
	ffint.d.l	$ft2, $ft2
	fdiv.d	$ft2, $ft2, $fa0
	fmul.d	$ft2, $ft2, $fa1
	fadd.d	$ft2, $ft2, $fa2
	add.d	$t3, $a7, $t2
	fstx.d	$ft2, $t3, $s4
	add.d	$t3, $t0, $t2
	stptr.d	$zero, $t3, 9600
	addi.d	$t2, $t2, 8
	add.w	$t1, $t1, $t4
	bnez	$t2, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	xvreplgr2vr.d	$xr10, $a1
	move	$t1, $a4
	xvori.b	$xr11, $xr3, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr12, $xr11, $xr10
	xvpickve2gr.d	$t2, $xr12, 0
	vinsgr2vr.w	$vr13, $t2, 0
	xvpickve2gr.d	$t2, $xr12, 1
	vinsgr2vr.w	$vr13, $t2, 1
	xvpickve2gr.d	$t2, $xr12, 2
	vinsgr2vr.w	$vr13, $t2, 2
	xvpickve2gr.d	$t2, $xr12, 3
	vinsgr2vr.w	$vr13, $t2, 3
	vmuh.wu	$vr12, $vr13, $vr4
	vsrli.w	$vr12, $vr12, 6
	vmsub.w	$vr13, $vr12, $vr5
	vext2xv.du.wu	$xr12, $xr13
	xvffint.d.lu	$xr12, $xr12
	xvfdiv.d	$xr12, $xr12, $xr6
	xvfmul.d	$xr12, $xr12, $xr7
	xvfadd.d	$xr12, $xr12, $xr8
	add.d	$t2, $a7, $t1
	xvstx	$xr12, $t2, $s4
	add.d	$t2, $t0, $t1
	xvstx	$xr9, $t2, $s4
	addi.d	$t1, $t1, 32
	xvaddi.du	$xr11, $xr11, 4
	bnez	$t1, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %init_array.exit
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	move	$s5, $zero
	add.d	$t6, $s0, $s2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $s2
	add.d	$a4, $t4, $s3
	addi.d	$t7, $s0, 8
	lu12i.w	$a2, 2341
	ori	$a2, $a2, 1672
	add.d	$t8, $a1, $a2
	addi.d	$ra, $t4, 8
	add.d	$a2, $t4, $s4
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	sltu	$a2, $a1, $t6
	sltu	$a3, $s0, $a0
	and	$a2, $a2, $a3
	sltu	$a3, $a1, $a4
	sltu	$a0, $t4, $a0
	and	$a0, $a3, $a0
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	move	$a2, $s0
	lu12i.w	$s0, 4
	ori	$a0, $s0, 2824
	add.d	$s2, $a2, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $s1, 1416
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	movgr2fr.d	$fs0, $zero
	lu12i.w	$a0, -5
	ori	$s7, $a0, 1280
	ori	$s8, $fp, 2688
	lu12i.w	$a0, 7
	ori	$fp, $a0, 128
	lu12i.w	$a0, 9
	ori	$s3, $a0, 1536
	st.d	$t7, $sp, 136                   # 8-byte Folded Spill
	move	$s6, $a1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	move	$s1, $a2
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %for.cond.loopexit.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s1, $s1, 8
	addi.d	$s6, $s6, 8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$s2, $s2, 8
	ori	$a0, $zero, 1200
	beq	$s5, $a0, .LBB7_34
.LBB7_15:                               # %for.cond1.preheader.i28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_26 Depth 2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_30 Depth 3
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$t0, $s5, $t7, 3
	alsl.d	$t1, $s5, $a1, 3
	alsl.d	$t3, $s5, $t8, 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $s5, $a0
	add.d	$t2, $ra, $a0
	mul.d	$s2, $s5, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.d	$t5, $a0, $s2
	ori	$a0, $zero, 1000
	move	$a2, $s1
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_16:                               # %for.body3.i29
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a2, 0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a0, $a0, -1
	add.d	$a2, $a2, $s4
	bnez	$a0, .LBB7_16
# %bb.17:                               # %for.end.i
                                        #   in Loop: Header=BB7_15 Depth=1
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bceqz	$fcc0, .LBB7_33
.LBB7_18:                               # %for.end.i.split
                                        #   in Loop: Header=BB7_15 Depth=1
	add.d	$a0, $t4, $s2
	alsl.d	$a4, $s5, $a0, 3
	slli.d	$a2, $s5, 3
	fstx.d	$fa1, $a0, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beqz	$a2, .LBB7_21
# %bb.19:                               # %for.body16.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 1000
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_20:                               # %for.body16.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $s1, $a2
	fld.d	$fa1, $a4, 0
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s6, $a2
	addi.d	$a3, $a3, -1
	add.d	$a2, $a2, $s4
	bnez	$a3, .LBB7_20
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_21:                               # %vector.body66.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	xvldrepl.d	$xr0, $a4, 0
	ori	$a7, $s0, 2816
	ori	$a2, $zero, 1000
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_22:                               # %vector.body66
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $s1, $a7
	fldx.d	$fa1, $a3, $s7
	fldx.d	$fa2, $a3, $s8
	fldx.d	$fa3, $s1, $a7
	fldx.d	$fa4, $a3, $s4
	xvinsve0.d	$xr1, $xr2, 1
	xvinsve0.d	$xr1, $xr3, 2
	xvinsve0.d	$xr1, $xr4, 3
	xvfdiv.d	$xr1, $xr1, $xr0
	add.d	$a3, $s6, $a7
	add.d	$a4, $a3, $s7
	add.d	$a5, $a3, $s8
	add.d	$a6, $a3, $s4
	xvstelm.d	$xr1, $a4, 0, 0
	xvstelm.d	$xr1, $a5, 0, 1
	xvstelm.d	$xr1, $a3, 0, 2
	xvstelm.d	$xr1, $a6, 0, 3
	addi.d	$a2, $a2, -4
	add.d	$a7, $a7, $s3
	bnez	$a2, .LBB7_22
.LBB7_23:                               # %for.end31.i
                                        #   in Loop: Header=BB7_15 Depth=1
	ori	$a2, $zero, 1198
	bltu	$a2, $s5, .LBB7_14
# %bb.24:                               # %for.body35.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	sltu	$a3, $t0, $t3
	sltu	$a2, $t1, $t6
	and	$a4, $a3, $a2
	sltu	$a2, $t0, $t5
	sltu	$a3, $t2, $t6
	and	$a2, $a2, $a3
	or	$t5, $a4, $a2
	move	$a2, $s2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_26
	.p2align	4, , 16
.LBB7_25:                               # %for.inc83.i
                                        #   in Loop: Header=BB7_26 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	ori	$a5, $zero, 1200
	beq	$a4, $a5, .LBB7_14
.LBB7_26:                               # %for.body35.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_27 Depth 3
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_30 Depth 3
	move	$a6, $zero
	alsl.d	$a5, $a4, $a0, 3
	slli.d	$a7, $a4, 3
	stx.d	$zero, $a0, $a7
	ori	$a7, $zero, 1000
	fmov.d	$fa0, $fs0
	.p2align	4, , 16
.LBB7_27:                               # %for.body42.i
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s6, $a6
	fldx.d	$fa2, $a3, $a6
	fmul.d	$fa1, $fa1, $fa2
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a5, 0
	addi.d	$a7, $a7, -1
	add.d	$a6, $a6, $s4
	bnez	$a7, .LBB7_27
# %bb.28:                               # %vector.memcheck36
                                        #   in Loop: Header=BB7_26 Depth=2
	beqz	$t5, .LBB7_31
# %bb.29:                               # %for.body62.i.preheader
                                        #   in Loop: Header=BB7_26 Depth=2
	move	$a6, $zero
	ori	$a7, $zero, 1000
	.p2align	4, , 16
.LBB7_30:                               # %for.body62.i
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa0, $s6, $a6
	fld.d	$fa1, $a5, 0
	fldx.d	$fa2, $a3, $a6
	fmul.d	$fa0, $fa0, $fa1
	fsub.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a3, $a6
	addi.d	$a7, $a7, -1
	add.d	$a6, $a6, $s4
	bnez	$a7, .LBB7_30
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_31:                               # %vector.body47.preheader
                                        #   in Loop: Header=BB7_26 Depth=2
	xvldrepl.d	$xr0, $a5, 0
	move	$a5, $zero
	ori	$a6, $zero, 1000
	.p2align	4, , 16
.LBB7_32:                               # %vector.body47
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a2, $a5
	add.d	$t0, $a7, $s7
	fldx.d	$fa1, $a7, $s7
	fldx.d	$fa2, $a7, $s8
	fldx.d	$fa3, $a2, $a5
	fldx.d	$fa4, $a7, $s4
	add.d	$t1, $a7, $s8
	xvinsve0.d	$xr1, $xr2, 1
	xvinsve0.d	$xr1, $xr3, 2
	xvinsve0.d	$xr1, $xr4, 3
	add.d	$t2, $s6, $a5
	fldx.d	$fa2, $s6, $a5
	fldx.d	$fa3, $t2, $s4
	ori	$t3, $s0, 2816
	fldx.d	$fa4, $t2, $t3
	fldx.d	$fa5, $t2, $fp
	add.d	$t2, $a7, $s4
	xvinsve0.d	$xr2, $xr3, 1
	xvinsve0.d	$xr2, $xr4, 2
	xvinsve0.d	$xr2, $xr5, 3
	xvfmul.d	$xr2, $xr2, $xr0
	xvfsub.d	$xr1, $xr1, $xr2
	xvstelm.d	$xr1, $t0, 0, 0
	xvstelm.d	$xr1, $t1, 0, 1
	xvstelm.d	$xr1, $a7, 0, 2
	xvstelm.d	$xr1, $t2, 0, 3
	addi.d	$a6, $a6, -4
	add.d	$a5, $a5, $s3
	bnez	$a6, .LBB7_32
	b	.LBB7_25
.LBB7_33:                               # %call.sqrt
                                        #   in Loop: Header=BB7_15 Depth=1
	st.d	$t6, $sp, 72                    # 8-byte Folded Spill
	st.d	$t7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t8, $sp, 56                    # 8-byte Folded Spill
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 96                    # 8-byte Folded Reload
	fmov.d	$fa1, $fa0
	b	.LBB7_18
.LBB7_34:                               # %kernel_gramschmidt.exit
	move	$a0, $t4
	move	$fp, $t4
	move	$s0, $a1
	pcaddu18i	$ra, %call36(print_array)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB7_35:                               # %if.then.i.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function print_array
	.type	print_array,@function
print_array:                            # @print_array
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
	pcalau12i	$a2, %got_pc_hi20(stderr)
	ld.d	$s2, $a2, %got_pc_lo12(stderr)
	ld.d	$a3, $s2, 0
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	move	$s3, $zero
	move	$s8, $zero
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s1, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1408
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	move	$s6, $s4
	move	$s7, $s3
.LBB8_2:                                # %for.body4
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s7, $a0
	bnez	$a0, .LBB8_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $s0, $s5
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 8
	addi.w	$s6, $s6, 1
	bnez	$s5, .LBB8_2
# %bb.5:                                # %for.inc10
                                        #   in Loop: Header=BB8_1 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s3, $s3, -1200
	addi.w	$s4, $s4, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	ori	$a0, $zero, 1200
	bne	$s8, $a0, .LBB8_1
# %bb.6:                                # %for.end12
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$s5, $zero
	move	$s6, $zero
	lu12i.w	$a0, -3
	ori	$s8, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB8_7:                                # %for.cond18.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	move	$s7, $s8
	move	$s4, $s1
	move	$s3, $s5
.LBB8_8:                                # %for.body20
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 36
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	add.w	$a0, $s3, $a0
	bnez	$a0, .LBB8_10
# %bb.9:                                # %if.then25
                                        #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB8_10:                               # %if.end27
                                        #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a0, $s2, 0
	add.d	$a1, $fp, $s7
	ldptr.d	$a2, $a1, 9600
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s7, $s7, 8
	addi.w	$s4, $s4, 1
	bnez	$s7, .LBB8_8
# %bb.11:                               # %for.inc36
                                        #   in Loop: Header=BB8_7 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, -1200
	addi.w	$s1, $s1, 1200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ori	$a0, $zero, 1000
	bne	$s6, $a0, .LBB8_7
# %bb.12:                               # %for.end38
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end8:
	.size	print_array, .Lfunc_end8-print_array
                                        # -- End function
	.type	polybench_papi_counters_threadid,@object # @polybench_papi_counters_threadid
	.bss
	.globl	polybench_papi_counters_threadid
	.p2align	2, 0x0
polybench_papi_counters_threadid:
	.word	0                               # 0x0
	.size	polybench_papi_counters_threadid, 4

	.type	polybench_program_total_flops,@object # @polybench_program_total_flops
	.globl	polybench_program_total_flops
	.p2align	3, 0x0
polybench_program_total_flops:
	.dword	0x0000000000000000              # double 0
	.size	polybench_program_total_flops, 8

	.type	polybench_t_start,@object       # @polybench_t_start
	.globl	polybench_t_start
	.p2align	3, 0x0
polybench_t_start:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_start, 8

	.type	polybench_t_end,@object         # @polybench_t_end
	.globl	polybench_t_end
	.p2align	3, 0x0
polybench_t_end:
	.dword	0x0000000000000000              # double 0
	.size	polybench_t_end, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%0.6f\n"
	.size	.L.str, 7

	.type	polybench_c_start,@object       # @polybench_c_start
	.bss
	.globl	polybench_c_start
	.p2align	3, 0x0
polybench_c_start:
	.dword	0                               # 0x0
	.size	polybench_c_start, 8

	.type	polybench_c_end,@object         # @polybench_c_end
	.globl	polybench_c_end
	.p2align	3, 0x0
polybench_c_end:
	.dword	0                               # 0x0
	.size	polybench_c_end, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"[PolyBench] posix_memalign: cannot allocate memory"
	.size	.L.str.1, 51

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"==BEGIN DUMP_ARRAYS==\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"begin dump: %s"
	.size	.L.str.3, 15

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"R"
	.size	.L.str.4, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%0.2lf "
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nend   dump: %s\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Q"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"==END   DUMP_ARRAYS==\n"
	.size	.L.str.9, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
