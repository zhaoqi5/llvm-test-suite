	.file	"jacobi-2d.c"
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x4094500000000000              # double 1300
.LCPI7_2:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 32
	lu12i.w	$s2, 3300
	ori	$s1, $s2, 3200
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 32
	beqz	$fp, .LBB7_68
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_68
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_68
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_68
# %bb.4:                                # %polybench_alloc_data.exit24
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	beqz	$s1, .LBB7_68
# %bb.5:                                # %polybench_alloc_data.exit24
	bnez	$a0, .LBB7_68
# %bb.6:                                # %polybench_alloc_data.exit31
	move	$a0, $zero
	move	$a1, $zero
	sub.d	$a2, $s1, $fp
	ori	$a3, $zero, 3
	ori	$a5, $zero, 2
	ori	$a6, $zero, 15
	lu12i.w	$a4, -3
	ori	$a7, $a4, 1888
	pcalau12i	$a4, %pc_hi20(.LCPI7_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI7_1)
	lu12i.w	$t3, 2
	ori	$s3, $t3, 2208
	ori	$t0, $zero, 1300
	pcalau12i	$a4, %pc_hi20(.LCPI7_0)
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	vld	$vr0, $a4, %pc_lo12(.LCPI7_0)
	ori	$a4, $zero, 0
	lu32i.d	$a4, 282624
	lu52i.d	$a4, $a4, 1033
	vreplgr2vr.d	$vr2, $a4
	move	$t1, $fp
	move	$t2, $s1
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %for.inc20.i
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$t2, $t2, $s3
	add.d	$t1, $t1, $s3
	addi.w	$a3, $a3, 3
	addi.d	$a0, $a0, 1
	addi.w	$a5, $a5, 2
	beq	$a1, $t0, .LBB7_13
.LBB7_8:                                # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	bltu	$a6, $a2, .LBB7_11
# %bb.9:                                # %for.body3.i.preheader
                                        #   in Loop: Header=BB7_8 Depth=1
	move	$a4, $zero
	move	$t4, $a7
	.p2align	4, , 16
.LBB7_10:                               # %for.body3.i
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a5, $a4
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	add.d	$t5, $t1, $t4
	fstx.d	$fa3, $t5, $s3
	add.d	$t5, $a3, $a4
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa3, $t5
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa1
	add.d	$t5, $t2, $t4
	fstx.d	$fa3, $t5, $s3
	addi.d	$t4, $t4, 8
	add.w	$a4, $a4, $a0
	bnez	$t4, .LBB7_10
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_11:                               # %vector.ph
                                        #   in Loop: Header=BB7_8 Depth=1
	vreplgr2vr.d	$vr3, $a1
	ori	$t4, $zero, 1300
	move	$t5, $t1
	move	$t6, $t2
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr5, $vr4, 3
	vaddi.du	$vr4, $vr4, 2
	vmul.d	$vr6, $vr4, $vr3
	vshuf4i.w	$vr6, $vr6, 8
	vaddi.wu	$vr6, $vr6, 2
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	vfdiv.d	$vr6, $vr6, $vr2
	vst	$vr6, $t5, 0
	vmul.d	$vr5, $vr5, $vr3
	vshuf4i.w	$vr5, $vr5, 8
	vaddi.wu	$vr5, $vr5, 3
	vext2xv.du.wu	$xr5, $xr5
	xvffint.d.lu	$xr5, $xr5
	vfdiv.d	$vr5, $vr5, $vr2
	vst	$vr5, $t6, 0
	addi.d	$t4, $t4, -2
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB7_12
	b	.LBB7_7
.LBB7_13:                               # %for.cond1.preheader.i32.preheader
	move	$t4, $zero
	ori	$a1, $t3, 2216
	add.d	$a0, $fp, $a1
	lu12i.w	$a2, 3298
	ori	$a7, $a2, 984
	add.d	$a2, $fp, $a7
	addi.d	$a5, $s1, 8
	ori	$t0, $s2, 3192
	add.d	$a6, $s1, $t0
	add.d	$t1, $s1, $a1
	add.d	$t2, $s1, $a7
	addi.d	$a3, $fp, 8
	add.d	$a4, $fp, $t0
	sltu	$a4, $t1, $a4
	sltu	$a3, $a3, $t2
	and	$t5, $a4, $a3
	sltu	$a0, $a0, $a6
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	sltu	$a2, $a5, $a2
	and	$t6, $a0, $a2
	lu12i.w	$a0, 5
	ori	$s5, $a0, 320
	ori	$t7, $zero, 1299
	lu12i.w	$a2, -419431
	ori	$a2, $a2, 2458
	lu32i.d	$a2, -419431
	lu52i.d	$a2, $a2, 1020
	xvreplgr2vr.d	$xr0, $a2
	ori	$t8, $zero, 500
	.p2align	4, , 16
.LBB7_14:                               # %for.cond1.preheader.i32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_20 Depth 3
                                        #     Child Loop BB7_23 Depth 2
                                        #       Child Loop BB7_25 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	move	$s2, $zero
	ori	$s6, $zero, 1
	move	$s7, $fp
	move	$s8, $s1
	.p2align	4, , 16
.LBB7_15:                               # %for.cond4.preheader.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_17 Depth 3
                                        #       Child Loop BB7_20 Depth 3
	ori	$a2, $a0, 328
	ori	$a3, $zero, 1
	bnez	$t5, .LBB7_19
# %bb.16:                               # %vector.body169.preheader
                                        #   in Loop: Header=BB7_15 Depth=2
	ori	$a3, $zero, 1296
	move	$s4, $s7
	move	$ra, $s8
	.p2align	4, , 16
.LBB7_17:                               # %vector.body169
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a4, $s4, $a1
	xvldx	$xr2, $s4, $a1
	xvld	$xr3, $a4, -8
	xvld	$xr4, $a4, 8
	xvldx	$xr5, $s4, $a2
	xvld	$xr6, $s4, 8
	xvfadd.d	$xr2, $xr2, $xr3
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr2, $xr2, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfmul.d	$xr2, $xr2, $xr0
	xvstx	$xr2, $ra, $a1
	addi.d	$a3, $a3, -4
	addi.d	$ra, $ra, 32
	addi.d	$s4, $s4, 32
	bnez	$a3, .LBB7_17
# %bb.18:                               #   in Loop: Header=BB7_15 Depth=2
	ori	$a3, $zero, 1297
.LBB7_19:                               # %for.body7.i.preheader
                                        #   in Loop: Header=BB7_15 Depth=2
	alsl.d	$s4, $a3, $s2, 3
	addi.d	$ra, $a3, -1299
	.p2align	4, , 16
.LBB7_20:                               # %for.body7.i
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a4, $fp, $s4
	fldx.d	$fa2, $a4, $s3
	ori	$a3, $t3, 2200
	fldx.d	$fa3, $a4, $a3
	fadd.d	$fa3, $fa2, $fa3
	fldx.d	$fa4, $a4, $a1
	fldx.d	$fa5, $a4, $s5
	fldx.d	$fa6, $fp, $s4
	pcalau12i	$a4, %pc_hi20(.LCPI7_2)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI7_2)
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa2
	add.d	$a4, $s1, $s4
	fstx.d	$fa3, $a4, $s3
	addi.d	$ra, $ra, 1
	addi.d	$s4, $s4, 8
	bnez	$ra, .LBB7_20
# %bb.21:                               # %for.inc37.i
                                        #   in Loop: Header=BB7_15 Depth=2
	addi.d	$s6, $s6, 1
	add.d	$s8, $s8, $s3
	add.d	$s7, $s7, $s3
	add.d	$s2, $s2, $s3
	bne	$s6, $t7, .LBB7_15
# %bb.22:                               # %for.cond44.preheader.i.preheader
                                        #   in Loop: Header=BB7_14 Depth=1
	move	$s2, $zero
	ori	$s6, $zero, 1
	move	$s7, $s1
	move	$a4, $fp
	.p2align	4, , 16
.LBB7_23:                               # %for.cond44.preheader.i
                                        #   Parent Loop BB7_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_25 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	ori	$s8, $zero, 1
	bnez	$t6, .LBB7_27
# %bb.24:                               # %vector.body150.preheader
                                        #   in Loop: Header=BB7_23 Depth=2
	ori	$s4, $zero, 1296
	move	$ra, $s7
	move	$s8, $a4
	.p2align	4, , 16
.LBB7_25:                               # %vector.body150
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $ra, $a1
	xvldx	$xr3, $ra, $a1
	xvld	$xr4, $a5, -8
	xvld	$xr5, $a5, 8
	xvldx	$xr6, $ra, $a2
	xvld	$xr7, $ra, 8
	xvfadd.d	$xr3, $xr3, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr3, $xr3, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr3, $xr3, $xr0
	xvstx	$xr3, $s8, $a1
	addi.d	$s4, $s4, -4
	addi.d	$s8, $s8, 32
	addi.d	$ra, $ra, 32
	bnez	$s4, .LBB7_25
# %bb.26:                               #   in Loop: Header=BB7_23 Depth=2
	ori	$s8, $zero, 1297
.LBB7_27:                               # %for.body47.i.preheader
                                        #   in Loop: Header=BB7_23 Depth=2
	alsl.d	$s4, $s8, $s2, 3
	addi.d	$ra, $s8, -1299
	.p2align	4, , 16
.LBB7_28:                               # %for.body47.i
                                        #   Parent Loop BB7_14 Depth=1
                                        #     Parent Loop BB7_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s1, $s4
	fldx.d	$fa3, $a5, $s3
	fldx.d	$fa4, $a5, $a3
	fldx.d	$fa5, $a5, $a1
	fldx.d	$fa6, $a5, $s5
	fldx.d	$fa7, $s1, $s4
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fadd.d	$fa3, $fa3, $fa7
	fmul.d	$fa3, $fa3, $fa2
	add.d	$a5, $fp, $s4
	fstx.d	$fa3, $a5, $s3
	addi.d	$ra, $ra, 1
	addi.d	$s4, $s4, 8
	bnez	$ra, .LBB7_28
# %bb.29:                               # %for.inc84.i
                                        #   in Loop: Header=BB7_23 Depth=2
	addi.d	$s6, $s6, 1
	add.d	$a4, $a4, $s3
	add.d	$s7, $s7, $s3
	add.d	$s2, $s2, $s3
	bne	$s6, $t7, .LBB7_23
# %bb.30:                               # %for.inc87.i
                                        #   in Loop: Header=BB7_14 Depth=1
	addi.w	$t4, $t4, 1
	bne	$t4, $t8, .LBB7_14
# %bb.31:                               # %for.cond1.preheader.i38.preheader
	move	$t3, $zero
	move	$t4, $zero
	sub.d	$t5, $s1, $s0
	ori	$t6, $zero, 3
	ori	$t7, $zero, 2
	ori	$t8, $zero, 15
	lu12i.w	$a4, -3
	ori	$s2, $a4, 1888
	ori	$s6, $zero, 1300
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	vld	$vr3, $a4, %pc_lo12(.LCPI7_0)
	ori	$a4, $zero, 0
	lu32i.d	$a4, 282624
	lu52i.d	$a4, $a4, 1033
	vreplgr2vr.d	$vr4, $a4
	move	$a4, $s0
	move	$s4, $s1
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %for.inc20.i52
                                        #   in Loop: Header=BB7_33 Depth=1
	addi.d	$t4, $t4, 1
	add.d	$s4, $s4, $s3
	add.d	$a4, $a4, $s3
	addi.w	$t6, $t6, 3
	addi.d	$t3, $t3, 1
	addi.w	$t7, $t7, 2
	beq	$t4, $s6, .LBB7_38
.LBB7_33:                               # %for.cond1.preheader.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_35 Depth 2
	bltu	$t8, $t5, .LBB7_36
# %bb.34:                               # %for.body3.i42.preheader
                                        #   in Loop: Header=BB7_33 Depth=1
	move	$s7, $zero
	move	$s8, $s2
	.p2align	4, , 16
.LBB7_35:                               # %for.body3.i42
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $t7, $s7
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa5, $a5
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$a5, $a4, $s8
	fstx.d	$fa5, $a5, $s3
	add.d	$a5, $t6, $s7
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa5, $a5
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa1
	add.d	$a5, $s4, $s8
	fstx.d	$fa5, $a5, $s3
	addi.d	$s8, $s8, 8
	add.w	$s7, $s7, $t3
	bnez	$s8, .LBB7_35
	b	.LBB7_32
	.p2align	4, , 16
.LBB7_36:                               # %vector.ph183
                                        #   in Loop: Header=BB7_33 Depth=1
	vreplgr2vr.d	$vr5, $t4
	ori	$s8, $zero, 1300
	move	$ra, $a4
	move	$s7, $s4
	vori.b	$vr6, $vr3, 0
	.p2align	4, , 16
.LBB7_37:                               # %vector.body186
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr7, $vr6, 3
	vaddi.du	$vr6, $vr6, 2
	vmul.d	$vr8, $vr6, $vr5
	vshuf4i.w	$vr8, $vr8, 8
	vaddi.wu	$vr8, $vr8, 2
	vext2xv.du.wu	$xr8, $xr8
	xvffint.d.lu	$xr8, $xr8
	vfdiv.d	$vr8, $vr8, $vr4
	vst	$vr8, $ra, 0
	vmul.d	$vr7, $vr7, $vr5
	vshuf4i.w	$vr7, $vr7, 8
	vaddi.wu	$vr7, $vr7, 3
	vext2xv.du.wu	$xr7, $xr7
	xvffint.d.lu	$xr7, $xr7
	vfdiv.d	$vr7, $vr7, $vr4
	vst	$vr7, $s7, 0
	addi.d	$s8, $s8, -2
	addi.d	$s7, $s7, 16
	addi.d	$ra, $ra, 16
	bnez	$s8, .LBB7_37
	b	.LBB7_32
.LBB7_38:                               # %for.cond1.preheader.i56.preheader
	move	$a4, $zero
	add.d	$a5, $s0, $a1
	add.d	$t3, $s0, $a7
	addi.d	$a7, $s0, 8
	add.d	$t0, $s0, $t0
	sltu	$t0, $t1, $t0
	sltu	$a7, $a7, $t2
	and	$a7, $t0, $a7
	sltu	$a5, $a5, $a6
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	sltu	$a6, $a6, $t3
	and	$a5, $a5, $a6
	ori	$a6, $zero, 1299
	ori	$t0, $zero, 500
	.p2align	4, , 16
.LBB7_39:                               # %for.cond1.preheader.i56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_40 Depth 2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_45 Depth 3
                                        #     Child Loop BB7_48 Depth 2
                                        #       Child Loop BB7_50 Depth 3
                                        #       Child Loop BB7_53 Depth 3
	move	$t1, $zero
	ori	$t2, $zero, 1
	move	$t3, $s0
	move	$t4, $s1
	.p2align	4, , 16
.LBB7_40:                               # %for.cond4.preheader.i58
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_45 Depth 3
	ori	$t6, $zero, 1
	bnez	$a7, .LBB7_44
# %bb.41:                               # %vector.body224.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	ori	$t5, $zero, 1296
	move	$t6, $t3
	move	$t7, $t4
	.p2align	4, , 16
.LBB7_42:                               # %vector.body224
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t6, $a1
	xvldx	$xr1, $t6, $a1
	xvld	$xr3, $t8, -8
	xvld	$xr4, $t8, 8
	xvldx	$xr5, $t6, $a2
	xvld	$xr6, $t6, 8
	xvfadd.d	$xr1, $xr1, $xr3
	xvfadd.d	$xr1, $xr1, $xr4
	xvfadd.d	$xr1, $xr1, $xr5
	xvfadd.d	$xr1, $xr1, $xr6
	xvfmul.d	$xr1, $xr1, $xr0
	xvstx	$xr1, $t7, $a1
	addi.d	$t5, $t5, -4
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	bnez	$t5, .LBB7_42
# %bb.43:                               #   in Loop: Header=BB7_40 Depth=2
	ori	$t6, $zero, 1297
.LBB7_44:                               # %for.body7.i64.preheader
                                        #   in Loop: Header=BB7_40 Depth=2
	alsl.d	$t5, $t6, $t1, 3
	addi.d	$t6, $t6, -1299
	.p2align	4, , 16
.LBB7_45:                               # %for.body7.i64
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s0, $t5
	fldx.d	$fa1, $t7, $s3
	fldx.d	$fa3, $t7, $a3
	fldx.d	$fa4, $t7, $a1
	fldx.d	$fa5, $t7, $s5
	fldx.d	$fa6, $s0, $t5
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fmul.d	$fa1, $fa1, $fa2
	add.d	$t7, $s1, $t5
	fstx.d	$fa1, $t7, $s3
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB7_45
# %bb.46:                               # %for.inc37.i79
                                        #   in Loop: Header=BB7_40 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t4, $t4, $s3
	add.d	$t3, $t3, $s3
	add.d	$t1, $t1, $s3
	bne	$t2, $a6, .LBB7_40
# %bb.47:                               # %for.cond44.preheader.i82.preheader
                                        #   in Loop: Header=BB7_39 Depth=1
	move	$t1, $zero
	ori	$t2, $zero, 1
	move	$t3, $s1
	move	$t4, $s0
	.p2align	4, , 16
.LBB7_48:                               # %for.cond44.preheader.i82
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_50 Depth 3
                                        #       Child Loop BB7_53 Depth 3
	ori	$t6, $zero, 1
	bnez	$a5, .LBB7_52
# %bb.49:                               # %vector.body203.preheader
                                        #   in Loop: Header=BB7_48 Depth=2
	ori	$t5, $zero, 1296
	move	$t6, $t3
	move	$t7, $t4
	.p2align	4, , 16
.LBB7_50:                               # %vector.body203
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t8, $t6, $a1
	xvldx	$xr1, $t6, $a1
	xvld	$xr3, $t8, -8
	xvld	$xr4, $t8, 8
	xvldx	$xr5, $t6, $a2
	xvld	$xr6, $t6, 8
	xvfadd.d	$xr1, $xr1, $xr3
	xvfadd.d	$xr1, $xr1, $xr4
	xvfadd.d	$xr1, $xr1, $xr5
	xvfadd.d	$xr1, $xr1, $xr6
	xvfmul.d	$xr1, $xr1, $xr0
	xvstx	$xr1, $t7, $a1
	addi.d	$t5, $t5, -4
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	bnez	$t5, .LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_48 Depth=2
	ori	$t6, $zero, 1297
.LBB7_52:                               # %for.body47.i88.preheader
                                        #   in Loop: Header=BB7_48 Depth=2
	alsl.d	$t5, $t6, $t1, 3
	addi.d	$t6, $t6, -1299
	.p2align	4, , 16
.LBB7_53:                               # %for.body47.i88
                                        #   Parent Loop BB7_39 Depth=1
                                        #     Parent Loop BB7_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $s1, $t5
	fldx.d	$fa1, $t7, $s3
	fldx.d	$fa3, $t7, $a3
	fldx.d	$fa4, $t7, $a1
	fldx.d	$fa5, $t7, $s5
	fldx.d	$fa6, $s1, $t5
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fadd.d	$fa1, $fa1, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fmul.d	$fa1, $fa1, $fa2
	add.d	$t7, $s0, $t5
	fstx.d	$fa1, $t7, $s3
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	bnez	$t6, .LBB7_53
# %bb.54:                               # %for.inc84.i103
                                        #   in Loop: Header=BB7_48 Depth=2
	addi.d	$t2, $t2, 1
	add.d	$t4, $t4, $s3
	add.d	$t3, $t3, $s3
	add.d	$t1, $t1, $s3
	bne	$t2, $a6, .LBB7_48
# %bb.55:                               # %for.inc87.i106
                                        #   in Loop: Header=BB7_39 Depth=1
	addi.w	$a4, $a4, 1
	bne	$a4, $t0, .LBB7_39
# %bb.56:                               # %for.cond1.preheader.i109.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_3)
	move	$a1, $zero
	move	$a2, $zero
	lu12i.w	$a3, -3
	ori	$a4, $a3, 1888
	ori	$a5, $zero, 1300
	.p2align	4, , 16
.LBB7_57:                               # %for.cond1.preheader.i109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_58 Depth 2
	move	$a3, $zero
	add.d	$a6, $s0, $a1
	add.d	$a7, $fp, $a1
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_58:                               # %for.body3.i111
                                        #   Parent Loop BB7_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	fldx.d	$fa1, $t1, $s3
	add.d	$t1, $a6, $t0
	fldx.d	$fa2, $t1, $s3
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_66
# %bb.59:                               # %for.inc.i
                                        #   in Loop: Header=BB7_58 Depth=2
	addi.d	$t0, $t0, 8
	addi.w	$a3, $a3, 1
	bnez	$t0, .LBB7_58
# %bb.60:                               # %for.inc13.i
                                        #   in Loop: Header=BB7_57 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a1, $a1, $s3
	bne	$a2, $a5, .LBB7_57
# %bb.61:                               # %if.end
	ori	$a0, $a0, 321
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s6, $zero
	move	$s7, $zero
	stx.b	$zero, $a0, $s5
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s8, $a0, %got_pc_lo12(stderr)
	lu12i.w	$a0, -3
	ori	$s4, $a0, 1888
	ori	$s5, $zero, 3
.LBB7_62:                               # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_63 Depth 2
	add.d	$a0, $s0, $s6
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s4
	.p2align	4, , 16
.LBB7_63:                               # %for.body6.i
                                        #   Parent Loop BB7_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 10400
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s5, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s5, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s5, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s5, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s5, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s5, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s5, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s5, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_63
# %bb.64:                               # %for.end.i
                                        #   in Loop: Header=BB7_62 Depth=1
	ld.d	$a1, $s8, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	add.d	$s6, $s6, $s3
	ori	$a0, $zero, 1300
	bne	$s7, $a0, .LBB7_62
# %bb.65:                               # %print_array.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_67
.LBB7_66:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, -487882
	ori	$a1, $a1, 2289
	lu32i.d	$a1, 325813
	lu52i.d	$a5, $a1, 1006
	movfr2gr.d	$a4, $fa1
	movfr2gr.d	$a7, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	st.d	$a5, $sp, 0
	move	$a5, $a2
	move	$a6, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_67:                               # %cleanup
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
.LBB7_68:                               # %if.then.i.i
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
	.asciz	"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 76

	.section	".note.GNU-stack","",@progbits
	.addrsig
