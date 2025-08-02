	.file	"gemm.c"
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
	.dword	0x3ff3333333333333              # double 1.2
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
	lu12i.w	$a0, 2148
	ori	$s0, $a0, 1792
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_59
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_59
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 32
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s0
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 32
	beqz	$s0, .LBB7_59
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_59
# %bb.4:                                # %polybench_alloc_data.exit30
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2343
	ori	$a2, $a0, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	beqz	$s1, .LBB7_59
# %bb.5:                                # %polybench_alloc_data.exit30
	bnez	$a0, .LBB7_59
# %bb.6:                                # %polybench_alloc_data.exit37
	st.d	$zero, $sp, 32
	lu12i.w	$a0, 2578
	ori	$s3, $a0, 512
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 32
	move	$a2, $s3
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 32
	beqz	$s2, .LBB7_59
# %bb.7:                                # %polybench_alloc_data.exit37
	bnez	$a0, .LBB7_59
# %bb.8:                                # %polybench_alloc_data.exit44
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a3, $s0, $t2
	ori	$a4, $zero, 31
	lu12i.w	$a1, -3
	ori	$a5, $a1, 3488
	lu12i.w	$a1, 67108
	ori	$a7, $a1, 3539
	ori	$t0, $zero, 1000
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI7_1)
	lu12i.w	$a6, 2
	ori	$s4, $a6, 608
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI7_0)
	vreplgr2vr.w	$vr2, $a7
	vreplgr2vr.w	$vr3, $t0
	ori	$t1, $zero, 0
	lu32i.d	$t1, -49152
	lu52i.d	$t1, $t1, 1032
	xvreplgr2vr.d	$xr4, $t1
	move	$t1, $t2
	move	$t2, $s0
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %for.inc11.i
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$t2, $t2, $s4
	add.d	$t1, $t1, $s4
	addi.d	$a0, $a0, 1
	beq	$a2, $t0, .LBB7_15
.LBB7_10:                               # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	bltu	$a4, $a3, .LBB7_13
# %bb.11:                               # %for.body3.i.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	ori	$t3, $zero, 1
	move	$t4, $a5
	.p2align	4, , 16
.LBB7_12:                               # %for.body3.i
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $t3, 31, 0
	mul.d	$t5, $t5, $a7
	srli.d	$t5, $t5, 38
	mul.d	$t5, $t5, $t0
	sub.d	$t5, $t3, $t5
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa5, $t5
	ffint.d.l	$fa5, $fa5
	fdiv.d	$fa5, $fa5, $fa0
	add.d	$t5, $t1, $t4
	fstx.d	$fa5, $t5, $s4
	add.d	$t5, $t2, $t4
	fstx.d	$fa5, $t5, $s4
	addi.d	$t4, $t4, 8
	add.w	$t3, $t3, $a0
	bnez	$t4, .LBB7_12
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_13:                               # %vector.ph
                                        #   in Loop: Header=BB7_10 Depth=1
	xvreplgr2vr.d	$xr5, $a2
	ori	$t3, $zero, 1100
	move	$t4, $t1
	move	$t5, $t2
	xvori.b	$xr6, $xr1, 0
	.p2align	4, , 16
.LBB7_14:                               # %vector.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr7, $xr6, $xr5
	xvpickve2gr.d	$t6, $xr7, 0
	vinsgr2vr.w	$vr8, $t6, 0
	xvpickve2gr.d	$t6, $xr7, 1
	vinsgr2vr.w	$vr8, $t6, 1
	xvpickve2gr.d	$t6, $xr7, 2
	vinsgr2vr.w	$vr8, $t6, 2
	xvpickve2gr.d	$t6, $xr7, 3
	vinsgr2vr.w	$vr8, $t6, 3
	vaddi.wu	$vr7, $vr8, 1
	vmuh.wu	$vr8, $vr7, $vr2
	vsrli.w	$vr8, $vr8, 6
	vmsub.w	$vr7, $vr8, $vr3
	vext2xv.du.wu	$xr7, $xr7
	xvffint.d.lu	$xr7, $xr7
	xvfdiv.d	$xr7, $xr7, $xr4
	xvst	$xr7, $t4, 0
	xvst	$xr7, $t5, 0
	xvaddi.du	$xr6, $xr6, 4
	addi.d	$t3, $t3, -4
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	bnez	$t3, .LBB7_14
	b	.LBB7_9
.LBB7_15:                               # %for.cond18.preheader.i.preheader
	move	$a2, $zero
	xvld	$xr0, $a1, %pc_lo12(.LCPI7_0)
	lu12i.w	$a0, 111848
	ori	$a0, $a0, 437
	vreplgr2vr.w	$vr1, $a0
	ori	$a0, $zero, 1200
	vreplgr2vr.w	$vr2, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 180224
	lu52i.d	$a0, $a0, 1033
	xvreplgr2vr.d	$xr3, $a0
	ori	$a0, $a6, 1408
	ori	$a3, $zero, 1000
	move	$a4, $s1
	.p2align	4, , 16
.LBB7_16:                               # %for.cond18.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	xvreplgr2vr.d	$xr4, $a2
	move	$a5, $a4
	ori	$a7, $zero, 1200
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB7_17:                               # %vector.body121
                                        #   Parent Loop BB7_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr6, $xr5, 1
	xvmul.d	$xr6, $xr6, $xr4
	xvpickve2gr.d	$t0, $xr6, 0
	vinsgr2vr.w	$vr7, $t0, 0
	xvpickve2gr.d	$t0, $xr6, 1
	vinsgr2vr.w	$vr7, $t0, 1
	xvpickve2gr.d	$t0, $xr6, 2
	vinsgr2vr.w	$vr7, $t0, 2
	xvpickve2gr.d	$t0, $xr6, 3
	vinsgr2vr.w	$vr7, $t0, 3
	vmuh.wu	$vr6, $vr7, $vr1
	vsrli.w	$vr6, $vr6, 7
	vmsub.w	$vr7, $vr6, $vr2
	vext2xv.du.wu	$xr6, $xr7
	xvffint.d.lu	$xr6, $xr6
	xvfdiv.d	$xr6, $xr6, $xr3
	xvst	$xr6, $a5, 0
	xvaddi.du	$xr5, $xr5, 4
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB7_17
# %bb.18:                               # %for.inc35.i
                                        #   in Loop: Header=BB7_16 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a4, $a4, $a0
	bne	$a2, $a3, .LBB7_16
# %bb.19:                               # %for.cond42.preheader.i.preheader
	move	$a2, $zero
	xvld	$xr0, $a1, %pc_lo12(.LCPI7_0)
	lu12i.w	$a1, 122016
	ori	$a1, $a1, 477
	vreplgr2vr.w	$vr1, $a1
	ori	$a1, $zero, 1100
	vreplgr2vr.w	$vr2, $a1
	ori	$a1, $zero, 0
	lu32i.d	$a1, 77824
	lu52i.d	$a1, $a1, 1033
	xvreplgr2vr.d	$xr3, $a1
	ori	$a1, $zero, 1200
	move	$a3, $s2
	.p2align	4, , 16
.LBB7_20:                               # %for.cond42.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
	xvreplgr2vr.d	$xr4, $a2
	move	$a4, $a3
	ori	$a5, $zero, 1100
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB7_21:                               # %vector.body132
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.du	$xr6, $xr5, 2
	xvmul.d	$xr6, $xr6, $xr4
	xvpickve2gr.d	$a7, $xr6, 0
	vinsgr2vr.w	$vr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	vinsgr2vr.w	$vr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	vinsgr2vr.w	$vr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	vinsgr2vr.w	$vr7, $a7, 3
	vsrli.w	$vr6, $vr7, 2
	vmuh.wu	$vr6, $vr6, $vr1
	vsrli.w	$vr6, $vr6, 5
	vmsub.w	$vr7, $vr6, $vr2
	vext2xv.du.wu	$xr6, $xr7
	xvffint.d.lu	$xr6, $xr6
	xvfdiv.d	$xr6, $xr6, $xr3
	xvst	$xr6, $a4, 0
	xvaddi.du	$xr5, $xr5, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB7_21
# %bb.22:                               # %for.inc59.i
                                        #   in Loop: Header=BB7_20 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $s4
	bne	$a2, $a1, .LBB7_20
# %bb.23:                               # %for.cond1.preheader.i45.preheader
	move	$a7, $zero
	add.d	$a1, $s2, $s3
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	add.d	$t0, $t6, $s4
	add.d	$a2, $s1, $a0
	addi.d	$t1, $t6, 32
	addi.d	$t2, $s2, 32
	lu12i.w	$a3, 209715
	ori	$a3, $a3, 819
	lu32i.d	$a3, 209715
	lu52i.d	$a3, $a3, 1023
	xvreplgr2vr.d	$xr0, $a3
	ori	$a3, $a6, 576
	pcalau12i	$a4, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI7_2)
	ori	$a4, $a6, 584
	ori	$a5, $a6, 592
	ori	$a6, $a6, 600
	vldi	$vr2, -904
	ori	$t3, $zero, 1200
	ori	$t4, $zero, 1000
	ori	$t5, $zero, 0
	lu32i.d	$t5, -524288
	lu52i.d	$t5, $t5, 1023
	xvreplgr2vr.d	$xr3, $t5
	move	$t5, $t6
	.p2align	4, , 16
.LBB7_24:                               # %for.cond1.preheader.i45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_27 Depth 2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_32 Depth 3
	mul.d	$t6, $a7, $s4
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	add.d	$s3, $t7, $t6
	add.d	$t8, $t0, $t6
	mul.d	$t7, $a7, $a0
	add.d	$t6, $s1, $t7
	add.d	$s5, $a2, $t7
	ori	$t7, $zero, 1096
	move	$fp, $t1
	.p2align	4, , 16
.LBB7_25:                               # %vector.body161
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $fp, -32
	xvld	$xr5, $fp, 0
	xvfmul.d	$xr4, $xr4, $xr0
	xvfmul.d	$xr5, $xr5, $xr0
	xvst	$xr4, $fp, -32
	xvst	$xr5, $fp, 0
	addi.d	$t7, $t7, -8
	addi.d	$fp, $fp, 64
	bnez	$t7, .LBB7_25
# %bb.26:                               # %for.body3.i47
                                        #   in Loop: Header=BB7_24 Depth=1
	fldx.d	$fa4, $s3, $a3
	move	$t7, $zero
	fldx.d	$fa5, $s3, $a4
	fmul.d	$fa4, $fa4, $fa1
	fldx.d	$fa6, $s3, $a5
	fstx.d	$fa4, $s3, $a3
	fmul.d	$fa4, $fa5, $fa1
	fstx.d	$fa4, $s3, $a4
	fmul.d	$fa4, $fa6, $fa1
	fstx.d	$fa4, $s3, $a5
	fldx.d	$fa4, $s3, $a6
	sltu	$fp, $s3, $s5
	sltu	$s5, $t6, $t8
	and	$fp, $fp, $s5
	fmul.d	$fa4, $fa4, $fa1
	fstx.d	$fa4, $s3, $a6
	sltu	$s3, $s3, $a1
	sltu	$t8, $s2, $t8
	and	$t8, $s3, $t8
	or	$t8, $fp, $t8
	move	$s3, $s2
	move	$s5, $t2
	.p2align	4, , 16
.LBB7_27:                               # %for.cond9.preheader.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_30 Depth 3
                                        #       Child Loop BB7_32 Depth 3
	alsl.d	$s6, $t7, $t6, 3
	beqz	$t8, .LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_27 Depth=2
	move	$s7, $zero
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_29:                               # %vector.body149.preheader
                                        #   in Loop: Header=BB7_27 Depth=2
	xvldrepl.d	$xr4, $s6, 0
	xvfmul.d	$xr4, $xr4, $xr3
	ori	$s7, $zero, 1096
	move	$fp, $s5
	move	$s8, $t1
	ori	$ra, $zero, 1096
	.p2align	4, , 16
.LBB7_30:                               # %vector.body149
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr5, $fp, -32
	xvld	$xr6, $fp, 0
	xvld	$xr7, $s8, -32
	xvld	$xr8, $s8, 0
	xvfmadd.d	$xr5, $xr4, $xr5, $xr7
	xvfmadd.d	$xr6, $xr4, $xr6, $xr8
	xvst	$xr5, $s8, -32
	xvst	$xr6, $s8, 0
	addi.d	$ra, $ra, -8
	addi.d	$s8, $s8, 64
	addi.d	$fp, $fp, 64
	bnez	$ra, .LBB7_30
.LBB7_31:                               # %for.body11.i.preheader
                                        #   in Loop: Header=BB7_27 Depth=2
	addi.d	$s8, $s7, -1100
	alsl.d	$ra, $s7, $t5, 3
	alsl.d	$fp, $s7, $s3, 3
	.p2align	4, , 16
.LBB7_32:                               # %for.body11.i
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa4, $s6, 0
	fld.d	$fa5, $fp, 0
	fld.d	$fa6, $ra, 0
	fmul.d	$fa4, $fa4, $fa2
	fmadd.d	$fa4, $fa4, $fa5, $fa6
	fst.d	$fa4, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$ra, $ra, 8
	addi.d	$fp, $fp, 8
	bnez	$s8, .LBB7_32
# %bb.33:                               # %for.inc29.i
                                        #   in Loop: Header=BB7_27 Depth=2
	addi.d	$t7, $t7, 1
	add.d	$s5, $s5, $s4
	add.d	$s3, $s3, $s4
	bne	$t7, $t3, .LBB7_27
# %bb.34:                               # %for.inc32.i
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t1, $t1, $s4
	add.d	$t5, $t5, $s4
	bne	$a7, $t4, .LBB7_24
# %bb.35:                               # %for.cond1.preheader.i51.preheader
	move	$a7, $zero
	add.d	$t0, $s0, $s4
	addi.d	$t1, $s0, 32
	addi.d	$t2, $s2, 32
	vldi	$vr2, -904
	ori	$t3, $zero, 1200
	ori	$t4, $zero, 1000
	ori	$t5, $zero, 0
	lu32i.d	$t5, -524288
	lu52i.d	$t5, $t5, 1023
	xvreplgr2vr.d	$xr3, $t5
	move	$t5, $s0
	.p2align	4, , 16
.LBB7_36:                               # %for.cond1.preheader.i51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_39 Depth 2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_44 Depth 3
	mul.d	$t6, $a7, $s4
	add.d	$s3, $s0, $t6
	add.d	$t8, $t0, $t6
	mul.d	$t7, $a7, $a0
	add.d	$t6, $s1, $t7
	add.d	$s5, $a2, $t7
	ori	$t7, $zero, 1096
	move	$fp, $t1
	.p2align	4, , 16
.LBB7_37:                               # %vector.body196
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $fp, -32
	xvld	$xr5, $fp, 0
	xvfmul.d	$xr4, $xr4, $xr0
	xvfmul.d	$xr5, $xr5, $xr0
	xvst	$xr4, $fp, -32
	xvst	$xr5, $fp, 0
	addi.d	$t7, $t7, -8
	addi.d	$fp, $fp, 64
	bnez	$t7, .LBB7_37
# %bb.38:                               # %for.body3.i54
                                        #   in Loop: Header=BB7_36 Depth=1
	fldx.d	$fa4, $s3, $a3
	move	$t7, $zero
	fldx.d	$fa5, $s3, $a4
	fmul.d	$fa4, $fa4, $fa1
	fldx.d	$fa6, $s3, $a5
	fstx.d	$fa4, $s3, $a3
	fmul.d	$fa4, $fa5, $fa1
	fstx.d	$fa4, $s3, $a4
	fmul.d	$fa4, $fa6, $fa1
	fstx.d	$fa4, $s3, $a5
	fldx.d	$fa4, $s3, $a6
	sltu	$fp, $s3, $s5
	sltu	$s5, $t6, $t8
	and	$fp, $fp, $s5
	fmul.d	$fa4, $fa4, $fa1
	fstx.d	$fa4, $s3, $a6
	sltu	$s3, $s3, $a1
	sltu	$t8, $s2, $t8
	and	$t8, $s3, $t8
	or	$t8, $fp, $t8
	move	$s3, $s2
	move	$s5, $t2
	.p2align	4, , 16
.LBB7_39:                               # %for.cond9.preheader.i62
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
                                        #       Child Loop BB7_44 Depth 3
	alsl.d	$s6, $t7, $t6, 3
	beqz	$t8, .LBB7_41
# %bb.40:                               #   in Loop: Header=BB7_39 Depth=2
	move	$s7, $zero
	b	.LBB7_43
	.p2align	4, , 16
.LBB7_41:                               # %vector.body183.preheader
                                        #   in Loop: Header=BB7_39 Depth=2
	xvldrepl.d	$xr4, $s6, 0
	xvfmul.d	$xr4, $xr4, $xr3
	ori	$s7, $zero, 1096
	move	$s8, $s5
	move	$ra, $t1
	ori	$fp, $zero, 1096
	.p2align	4, , 16
.LBB7_42:                               # %vector.body183
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr5, $s8, -32
	xvld	$xr6, $s8, 0
	xvld	$xr7, $ra, -32
	xvld	$xr8, $ra, 0
	xvfmul.d	$xr5, $xr4, $xr5
	xvfmul.d	$xr6, $xr4, $xr6
	xvfadd.d	$xr5, $xr7, $xr5
	xvfadd.d	$xr6, $xr8, $xr6
	xvst	$xr5, $ra, -32
	xvst	$xr6, $ra, 0
	addi.d	$fp, $fp, -8
	addi.d	$ra, $ra, 64
	addi.d	$s8, $s8, 64
	bnez	$fp, .LBB7_42
.LBB7_43:                               # %for.body11.i66.preheader
                                        #   in Loop: Header=BB7_39 Depth=2
	addi.d	$s8, $s7, -1100
	alsl.d	$ra, $s7, $t5, 3
	alsl.d	$s7, $s7, $s3, 3
	.p2align	4, , 16
.LBB7_44:                               # %for.body11.i66
                                        #   Parent Loop BB7_36 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa4, $s6, 0
	fld.d	$fa5, $s7, 0
	fld.d	$fa6, $ra, 0
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $fa6, $fa4
	fst.d	$fa4, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$ra, $ra, 8
	addi.d	$s7, $s7, 8
	bnez	$s8, .LBB7_44
# %bb.45:                               # %for.inc29.i73
                                        #   in Loop: Header=BB7_39 Depth=2
	addi.d	$t7, $t7, 1
	add.d	$s5, $s5, $s4
	add.d	$s3, $s3, $s4
	bne	$t7, $t3, .LBB7_39
# %bb.46:                               # %for.inc32.i76
                                        #   in Loop: Header=BB7_36 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t1, $t1, $s4
	add.d	$t5, $t5, $s4
	bne	$a7, $t4, .LBB7_36
# %bb.47:                               # %for.cond1.preheader.i79.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a0, $zero
	move	$a2, $zero
	lu12i.w	$s5, -3
	ori	$a1, $s5, 3488
	ori	$a4, $zero, 1000
	.p2align	4, , 16
.LBB7_48:                               # %for.cond1.preheader.i79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_49 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_49:                               # %for.body3.i81
                                        #   Parent Loop BB7_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	fldx.d	$fa1, $t0, $s4
	add.d	$t0, $a5, $a7
	fldx.d	$fa2, $t0, $s4
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_57
# %bb.50:                               # %for.inc.i
                                        #   in Loop: Header=BB7_49 Depth=2
	addi.d	$a7, $a7, 8
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_49
# %bb.51:                               # %for.inc13.i
                                        #   in Loop: Header=BB7_48 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s4
	bne	$a2, $a4, .LBB7_48
# %bb.52:                               # %if.end
	lu12i.w	$fp, 4
	ori	$a0, $fp, 1217
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s6, $zero
	move	$s7, $zero
	ori	$a0, $fp, 1216
	stx.b	$zero, $s3, $a0
	addi.d	$fp, $s3, 7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $s5, 3488
	ori	$s5, $zero, 3
.LBB7_53:                               # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_54 Depth 2
	add.d	$a0, $s0, $s6
	move	$a1, $fp
	move	$a2, $s8
	.p2align	4, , 16
.LBB7_54:                               # %for.body6.i
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 8800
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
	bnez	$a2, .LBB7_54
# %bb.55:                               # %for.end.i
                                        #   in Loop: Header=BB7_53 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	add.d	$s6, $s6, $s4
	ori	$a0, $zero, 1000
	bne	$s7, $a0, .LBB7_53
# %bb.56:                               # %print_array.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_58
.LBB7_57:                               # %check_FP.exit.thread
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
.LBB7_58:                               # %cleanup
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
.LBB7_59:                               # %if.then.i.i
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
