	.file	"floyd-warshall.c"
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
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 16
	lu12i.w	$a0, 7656
	ori	$s1, $a0, 1024
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16
	beqz	$fp, .LBB7_42
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_42
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 16
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 16
	beqz	$s0, .LBB7_42
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_42
# %bb.4:                                # %polybench_alloc_data.exit19
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	xvld	$xr8, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a1, %pc_hi20(.LCPI7_1)
	xvld	$xr9, $a1, %pc_lo12(.LCPI7_1)
	lu12i.w	$a3, 149796
	ori	$a4, $a3, 2341
	xvreplgr2vr.w	$xr0, $a4
	xvrepli.w	$xr1, 7
	lu12i.w	$a4, -241980
	ori	$a4, $a4, 3781
	xvreplgr2vr.w	$xr2, $a4
	lu12i.w	$a4, 80659
	ori	$a4, $a4, 2835
	xvreplgr2vr.w	$xr3, $a4
	lu12i.w	$a4, -299594
	ori	$a4, $a4, 3511
	xvreplgr2vr.w	$xr4, $a4
	ori	$a3, $a3, 2340
	xvreplgr2vr.w	$xr5, $a3
	lu12i.w	$a3, -285976
	ori	$a3, $a3, 2979
	xvreplgr2vr.w	$xr6, $a3
	lu12i.w	$a3, 95325
	ori	$a3, $a3, 372
	xvreplgr2vr.w	$xr7, $a3
	ori	$a3, $zero, 999
	xvreplgr2vr.w	$xr10, $a3
	lu12i.w	$a3, 2
	ori	$s2, $a3, 3008
	ori	$a3, $zero, 2800
	move	$a4, $fp
	.p2align	4, , 16
.LBB7_5:                                # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	xvreplgr2vr.d	$xr11, $a2
	move	$a5, $a4
	ori	$a6, $zero, 2800
	xvori.b	$xr12, $xr9, 0
	xvori.b	$xr13, $xr8, 0
	.p2align	4, , 16
.LBB7_6:                                # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr14, $xr13, $xr11
	xvmul.d	$xr15, $xr12, $xr11
	xvpickve2gr.d	$a7, $xr15, 0
	xvinsgr2vr.w	$xr16, $a7, 0
	xvpickve2gr.d	$a7, $xr15, 1
	xvinsgr2vr.w	$xr16, $a7, 1
	xvpickve2gr.d	$a7, $xr15, 2
	xvinsgr2vr.w	$xr16, $a7, 2
	xvpickve2gr.d	$a7, $xr15, 3
	xvinsgr2vr.w	$xr16, $a7, 3
	xvpickve2gr.d	$a7, $xr14, 0
	xvinsgr2vr.w	$xr16, $a7, 4
	xvpickve2gr.d	$a7, $xr14, 1
	xvinsgr2vr.w	$xr16, $a7, 5
	xvpickve2gr.d	$a7, $xr14, 2
	xvinsgr2vr.w	$xr16, $a7, 6
	xvpickve2gr.d	$a7, $xr14, 3
	xvinsgr2vr.w	$xr16, $a7, 7
	xvmuh.wu	$xr14, $xr16, $xr0
	xvsub.w	$xr15, $xr16, $xr14
	xvsrli.w	$xr15, $xr15, 1
	xvadd.w	$xr14, $xr15, $xr14
	xvsrli.w	$xr14, $xr14, 2
	xvmsub.w	$xr16, $xr14, $xr1
	xvaddi.wu	$xr14, $xr16, 1
	xvadd.d	$xr15, $xr13, $xr11
	xvadd.d	$xr16, $xr12, $xr11
	xvpickve2gr.d	$a7, $xr16, 0
	xvinsgr2vr.w	$xr17, $a7, 0
	xvpickve2gr.d	$a7, $xr16, 1
	xvinsgr2vr.w	$xr17, $a7, 1
	xvpickve2gr.d	$a7, $xr16, 2
	xvinsgr2vr.w	$xr17, $a7, 2
	xvpickve2gr.d	$a7, $xr16, 3
	xvinsgr2vr.w	$xr17, $a7, 3
	xvpickve2gr.d	$a7, $xr15, 0
	xvinsgr2vr.w	$xr17, $a7, 4
	xvpickve2gr.d	$a7, $xr15, 1
	xvinsgr2vr.w	$xr17, $a7, 5
	xvpickve2gr.d	$a7, $xr15, 2
	xvinsgr2vr.w	$xr17, $a7, 6
	xvpickve2gr.d	$a7, $xr15, 3
	xvinsgr2vr.w	$xr17, $a7, 7
	xvmul.w	$xr15, $xr17, $xr2
	xvsle.wu	$xr15, $xr15, $xr3
	xvmul.w	$xr16, $xr17, $xr4
	xvsle.wu	$xr16, $xr16, $xr5
	xvor.v	$xr15, $xr15, $xr16
	xvmul.w	$xr16, $xr17, $xr6
	xvsle.wu	$xr16, $xr16, $xr7
	xvor.v	$xr15, $xr16, $xr15
	xvbitsel.v	$xr14, $xr14, $xr10, $xr15
	xvst	$xr14, $a5, 0
	xvaddi.du	$xr12, $xr12, 8
	xvaddi.du	$xr13, $xr13, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_6
# %bb.7:                                # %for.inc20.i
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a4, $a4, $s2
	bne	$a2, $a3, .LBB7_5
# %bb.8:                                # %for.cond1.preheader.i20.preheader
	move	$a3, $zero
	add.d	$a4, $fp, $s1
	lu12i.w	$a2, 7653
	ori	$a2, $a2, 2116
	add.d	$a5, $fp, $a2
	add.d	$a6, $fp, $s2
	addi.d	$a7, $fp, 32
	lu12i.w	$s3, -3
	ori	$t0, $s3, 1088
	ori	$t1, $zero, 2800
	move	$t2, $fp
	move	$t3, $a7
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_9:                                # %for.inc38.i
                                        #   in Loop: Header=BB7_10 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t3, $t3, $s2
	add.d	$t2, $t2, $s2
	beq	$a3, $t1, .LBB7_17
.LBB7_10:                               # %for.cond1.preheader.i20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	move	$t4, $zero
	alsl.d	$t5, $a3, $fp, 2
	alsl.d	$t6, $a3, $a5, 2
	mul.d	$t7, $a3, $s2
	sltu	$t6, $fp, $t6
	sltu	$t5, $t5, $a4
	and	$t5, $t6, $t5
	add.d	$t6, $fp, $t7
	add.d	$t7, $a6, $t7
	sltu	$t7, $fp, $t7
	sltu	$t6, $t6, $a4
	and	$t6, $t7, $t6
	or	$t5, $t5, $t6
	move	$t6, $fp
	move	$t7, $a7
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               # %for.inc35.i
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$t4, $t4, 1
	add.d	$t7, $t7, $s2
	add.d	$t6, $t6, $s2
	beq	$t4, $t1, .LBB7_9
.LBB7_12:                               # %for.cond4.preheader.i
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_16 Depth 3
                                        #       Child Loop BB7_14 Depth 3
	mul.d	$t8, $t4, $s2
	add.d	$t8, $fp, $t8
	alsl.d	$t8, $a3, $t8, 2
	beqz	$t5, .LBB7_15
# %bb.13:                               # %for.body6.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	move	$s4, $t0
	.p2align	4, , 16
.LBB7_14:                               # %for.body6.i
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $t6, $s4
	ld.w	$s6, $t8, 0
	add.d	$s7, $t2, $s4
	ldx.w	$s7, $s7, $s2
	ldptr.w	$s8, $s5, 11200
	add.w	$s6, $s7, $s6
	slt	$s7, $s8, $s6
	masknez	$s6, $s6, $s7
	maskeqz	$s7, $s8, $s7
	or	$s6, $s7, $s6
	addi.d	$s4, $s4, 4
	stptr.w	$s6, $s5, 11200
	bnez	$s4, .LBB7_14
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_15:                               # %vector.body112.preheader
                                        #   in Loop: Header=BB7_12 Depth=2
	xvldrepl.w	$xr8, $t8, 0
	ori	$t8, $zero, 2800
	move	$s4, $t7
	move	$s5, $t3
	.p2align	4, , 16
.LBB7_16:                               # %vector.body112
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr9, $s5, -32
	xvld	$xr10, $s5, 0
	xvld	$xr11, $s4, -32
	xvld	$xr12, $s4, 0
	xvadd.w	$xr9, $xr9, $xr8
	xvadd.w	$xr10, $xr10, $xr8
	xvmin.w	$xr9, $xr11, $xr9
	xvmin.w	$xr10, $xr12, $xr10
	xvst	$xr9, $s4, -32
	xvst	$xr10, $s4, 0
	addi.d	$t8, $t8, -16
	addi.d	$s5, $s5, 64
	addi.d	$s4, $s4, 64
	bnez	$t8, .LBB7_16
	b	.LBB7_11
.LBB7_17:                               # %for.cond1.preheader.i26.preheader
	move	$a3, $zero
	xvld	$xr8, $a0, %pc_lo12(.LCPI7_0)
	xvld	$xr9, $a1, %pc_lo12(.LCPI7_1)
	ori	$a0, $zero, 999
	xvreplgr2vr.w	$xr10, $a0
	ori	$a0, $zero, 2800
	move	$a1, $s0
	.p2align	4, , 16
.LBB7_18:                               # %for.cond1.preheader.i26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	xvreplgr2vr.d	$xr11, $a3
	move	$a4, $a1
	ori	$a5, $zero, 2800
	xvori.b	$xr12, $xr9, 0
	xvori.b	$xr13, $xr8, 0
	.p2align	4, , 16
.LBB7_19:                               # %vector.body126
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvmul.d	$xr14, $xr13, $xr11
	xvmul.d	$xr15, $xr12, $xr11
	xvpickve2gr.d	$a6, $xr15, 0
	xvinsgr2vr.w	$xr16, $a6, 0
	xvpickve2gr.d	$a6, $xr15, 1
	xvinsgr2vr.w	$xr16, $a6, 1
	xvpickve2gr.d	$a6, $xr15, 2
	xvinsgr2vr.w	$xr16, $a6, 2
	xvpickve2gr.d	$a6, $xr15, 3
	xvinsgr2vr.w	$xr16, $a6, 3
	xvpickve2gr.d	$a6, $xr14, 0
	xvinsgr2vr.w	$xr16, $a6, 4
	xvpickve2gr.d	$a6, $xr14, 1
	xvinsgr2vr.w	$xr16, $a6, 5
	xvpickve2gr.d	$a6, $xr14, 2
	xvinsgr2vr.w	$xr16, $a6, 6
	xvpickve2gr.d	$a6, $xr14, 3
	xvinsgr2vr.w	$xr16, $a6, 7
	xvmuh.wu	$xr14, $xr16, $xr0
	xvsub.w	$xr15, $xr16, $xr14
	xvsrli.w	$xr15, $xr15, 1
	xvadd.w	$xr14, $xr15, $xr14
	xvsrli.w	$xr14, $xr14, 2
	xvmsub.w	$xr16, $xr14, $xr1
	xvaddi.wu	$xr14, $xr16, 1
	xvadd.d	$xr15, $xr13, $xr11
	xvadd.d	$xr16, $xr12, $xr11
	xvpickve2gr.d	$a6, $xr16, 0
	xvinsgr2vr.w	$xr17, $a6, 0
	xvpickve2gr.d	$a6, $xr16, 1
	xvinsgr2vr.w	$xr17, $a6, 1
	xvpickve2gr.d	$a6, $xr16, 2
	xvinsgr2vr.w	$xr17, $a6, 2
	xvpickve2gr.d	$a6, $xr16, 3
	xvinsgr2vr.w	$xr17, $a6, 3
	xvpickve2gr.d	$a6, $xr15, 0
	xvinsgr2vr.w	$xr17, $a6, 4
	xvpickve2gr.d	$a6, $xr15, 1
	xvinsgr2vr.w	$xr17, $a6, 5
	xvpickve2gr.d	$a6, $xr15, 2
	xvinsgr2vr.w	$xr17, $a6, 6
	xvpickve2gr.d	$a6, $xr15, 3
	xvinsgr2vr.w	$xr17, $a6, 7
	xvmul.w	$xr15, $xr17, $xr2
	xvsle.wu	$xr15, $xr15, $xr3
	xvmul.w	$xr16, $xr17, $xr4
	xvsle.wu	$xr16, $xr16, $xr5
	xvor.v	$xr15, $xr15, $xr16
	xvmul.w	$xr16, $xr17, $xr6
	xvsle.wu	$xr16, $xr16, $xr7
	xvor.v	$xr15, $xr16, $xr15
	xvbitsel.v	$xr14, $xr14, $xr10, $xr15
	xvst	$xr14, $a4, 0
	xvaddi.du	$xr12, $xr12, 8
	xvaddi.du	$xr13, $xr13, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB7_19
# %bb.20:                               # %for.inc20.i45
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $s2
	bne	$a3, $a0, .LBB7_18
# %bb.21:                               # %for.cond1.preheader.i49.preheader
	move	$a0, $zero
	add.d	$a1, $s0, $s1
	add.d	$a2, $s0, $a2
	add.d	$a3, $s0, $s2
	addi.d	$a4, $s0, 32
	ori	$a5, $s3, 1088
	ori	$a6, $zero, 2800
	move	$a7, $s0
	move	$t0, $a4
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %for.inc38.i67
                                        #   in Loop: Header=BB7_23 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$t0, $t0, $s2
	add.d	$a7, $a7, $s2
	beq	$a0, $a6, .LBB7_30
.LBB7_23:                               # %for.cond1.preheader.i49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	move	$t1, $zero
	alsl.d	$t2, $a0, $s0, 2
	alsl.d	$t3, $a0, $a2, 2
	mul.d	$t4, $a0, $s2
	sltu	$t3, $s0, $t3
	sltu	$t2, $t2, $a1
	and	$t2, $t3, $t2
	add.d	$t3, $s0, $t4
	add.d	$t4, $a3, $t4
	sltu	$t4, $s0, $t4
	sltu	$t3, $t3, $a1
	and	$t3, $t4, $t3
	or	$t2, $t2, $t3
	move	$t3, $s0
	move	$t4, $a4
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %for.inc35.i64
                                        #   in Loop: Header=BB7_25 Depth=2
	addi.d	$t1, $t1, 1
	add.d	$t4, $t4, $s2
	add.d	$t3, $t3, $s2
	beq	$t1, $a6, .LBB7_22
.LBB7_25:                               # %for.cond4.preheader.i52
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_27 Depth 3
	mul.d	$t5, $t1, $s2
	add.d	$t5, $s0, $t5
	alsl.d	$t5, $a0, $t5, 2
	beqz	$t2, .LBB7_28
# %bb.26:                               # %for.body6.i56.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	move	$t6, $a5
	.p2align	4, , 16
.LBB7_27:                               # %for.body6.i56
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t7, $t3, $t6
	ld.w	$t8, $t5, 0
	add.d	$s1, $a7, $t6
	ldx.w	$s1, $s1, $s2
	ldptr.w	$s4, $t7, 11200
	add.w	$t8, $s1, $t8
	slt	$s1, $s4, $t8
	masknez	$t8, $t8, $s1
	maskeqz	$s1, $s4, $s1
	or	$t8, $s1, $t8
	addi.d	$t6, $t6, 4
	stptr.w	$t8, $t7, 11200
	bnez	$t6, .LBB7_27
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_28:                               # %vector.body148.preheader
                                        #   in Loop: Header=BB7_25 Depth=2
	xvldrepl.w	$xr0, $t5, 0
	ori	$t5, $zero, 2800
	move	$t6, $t4
	move	$t7, $t0
	.p2align	4, , 16
.LBB7_29:                               # %vector.body148
                                        #   Parent Loop BB7_23 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $t7, -32
	xvld	$xr2, $t7, 0
	xvld	$xr3, $t6, -32
	xvld	$xr4, $t6, 0
	xvadd.w	$xr1, $xr1, $xr0
	xvadd.w	$xr2, $xr2, $xr0
	xvmin.w	$xr1, $xr3, $xr1
	xvmin.w	$xr2, $xr4, $xr2
	xvst	$xr1, $t6, -32
	xvst	$xr2, $t6, 0
	addi.d	$t5, $t5, -16
	addi.d	$t7, $t7, 64
	addi.d	$t6, $t6, 64
	bnez	$t5, .LBB7_29
	b	.LBB7_24
.LBB7_30:                               # %for.cond1.preheader.i70.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_2)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s3, 1088
	ori	$a4, $zero, 2800
	.p2align	4, , 16
.LBB7_31:                               # %for.cond1.preheader.i70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	move	$a3, $zero
	add.d	$a5, $s0, $a0
	add.d	$a6, $fp, $a0
	move	$a7, $a1
	.p2align	4, , 16
.LBB7_32:                               # %for.body3.i72
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldptr.w	$t0, $t0, 11200
	add.d	$t1, $a5, $a7
	ldptr.w	$t1, $t1, 11200
	movgr2fr.w	$fa1, $t0
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_40
# %bb.33:                               # %for.inc.i
                                        #   in Loop: Header=BB7_32 Depth=2
	addi.d	$a7, $a7, 4
	addi.w	$a3, $a3, 1
	bnez	$a7, .LBB7_32
# %bb.34:                               # %for.inc15.i
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s2
	bne	$a2, $a4, .LBB7_31
# %bb.35:                               # %if.end
	lu12i.w	$s6, 10
	ori	$a0, $s6, 3841
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s4, $zero
	move	$s5, $zero
	ori	$a0, $s6, 3840
	stx.b	$zero, $s1, $a0
	addi.d	$s6, $s1, 7
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ori	$s3, $s3, 1088
	ori	$s8, $zero, 3
.LBB7_36:                               # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_37 Depth 2
	add.d	$a0, $s0, $s4
	move	$a1, $s6
	move	$a2, $s3
	.p2align	4, , 16
.LBB7_37:                               # %for.body6.i81
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.w	$a3, $a3, 11200
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s8, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s8, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s8, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s8, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s8, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s8, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s8, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s8, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_37
# %bb.38:                               # %for.end.i
                                        #   in Loop: Header=BB7_36 Depth=1
	ld.d	$a1, $s7, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s4, $s4, $s2
	ori	$a0, $zero, 2800
	bne	$s5, $a0, .LBB7_36
# %bb.39:                               # %print_array.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_41
.LBB7_40:                               # %check_FP.exit.thread
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
.LBB7_41:                               # %cleanup
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB7_42:                               # %if.then.i.i
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
