	.file	"jacobi-1d.c"
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
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_1:
	.dword	0x409f400000000000              # double 2000
.LCPI7_2:
	.dword	0x3fd555475a31a4be              # double 0.33333000000000002
.LCPI7_3:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 8
	lu12i.w	$s4, 3
	ori	$s2, $s4, 3712
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8
	beqz	$fp, .LBB7_52
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_52
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	beqz	$s0, .LBB7_52
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_52
# %bb.4:                                # %polybench_alloc_data.exit24
	st.d	$zero, $sp, 8
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 8
	beqz	$s1, .LBB7_52
# %bb.5:                                # %polybench_alloc_data.exit24
	bnez	$a0, .LBB7_52
# %bb.6:                                # %polybench_alloc_data.exit31
	sub.d	$a0, $s1, $fp
	ori	$a3, $zero, 32
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	lu12i.w	$s3, -4
	pcalau12i	$a2, %pc_hi20(.LCPI7_1)
	bgeu	$a0, $a3, .LBB7_9
# %bb.7:                                # %for.body.i.preheader
	fld.d	$fa0, $a2, %pc_lo12(.LCPI7_1)
	ori	$a0, $zero, 3
	ori	$a3, $s3, 384
	.p2align	4, , 16
.LBB7_8:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a5, $a0, -1
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa1, $a5
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	add.d	$a5, $fp, $a3
	fstx.d	$fa1, $a5, $s2
	movgr2fr.d	$fa1, $a4
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	add.d	$a4, $s1, $a3
	fstx.d	$fa1, $a4, $s2
	addi.d	$a3, $a3, 8
	addi.w	$a0, $a0, 1
	bnez	$a3, .LBB7_8
	b	.LBB7_11
.LBB7_9:                                # %vector.body.preheader
	vld	$vr0, $a1, %pc_lo12(.LCPI7_0)
	ori	$a0, $zero, 2000
	ori	$a3, $zero, 0
	lu32i.d	$a3, -49152
	lu52i.d	$a3, $a3, 1033
	xvreplgr2vr.d	$xr1, $a3
	move	$a3, $fp
	move	$a4, $s1
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr2, $vr0, 2
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvfdiv.d	$xr2, $xr2, $xr1
	xvst	$xr2, $a3, 0
	vaddi.wu	$vr2, $vr0, 3
	vext2xv.du.wu	$xr2, $xr2
	xvffint.d.lu	$xr2, $xr2
	xvfdiv.d	$xr2, $xr2, $xr1
	xvst	$xr2, $a4, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a0, $a0, -4
	addi.d	$a4, $a4, 32
	addi.d	$a3, $a3, 32
	bnez	$a0, .LBB7_10
.LBB7_11:                               # %for.cond1.preheader.i.preheader
	move	$a6, $zero
	addi.d	$t0, $fp, 8
	ori	$a0, $s4, 3704
	add.d	$t1, $fp, $a0
	add.d	$a3, $s1, $s2
	addi.d	$a4, $s1, 8
	add.d	$a5, $s1, $a0
	add.d	$a7, $fp, $s2
	sltu	$a7, $a4, $a7
	sltu	$t2, $fp, $a5
	and	$a7, $a7, $t2
	sltu	$t0, $t0, $a3
	sltu	$t1, $s1, $t1
	and	$t0, $t0, $t1
	addi.d	$t1, $s1, 40
	addi.d	$t2, $fp, 32
	addi.d	$t3, $fp, 40
	addi.d	$t4, $s1, 32
	pcalau12i	$t5, %pc_hi20(.LCPI7_2)
	fld.d	$fa0, $t5, %pc_lo12(.LCPI7_2)
	lu12i.w	$t5, 369434
	ori	$t5, $t5, 1214
	lu32i.d	$t5, 349511
	lu52i.d	$t5, $t5, 1021
	xvreplgr2vr.d	$xr1, $t5
	ori	$t5, $zero, 500
	.p2align	4, , 16
.LBB7_12:                               # %vector.memcheck117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_23 Depth 2
	ori	$s4, $zero, 1
	bnez	$a7, .LBB7_16
# %bb.13:                               # %vector.body126.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$t6, $zero, 1992
	move	$t7, $t2
	move	$t8, $t1
	.p2align	4, , 16
.LBB7_14:                               # %vector.body126
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t7, -32
	xvld	$xr3, $t7, 0
	xvld	$xr4, $t7, -24
	xvld	$xr5, $t7, 8
	xvld	$xr6, $t7, -16
	xvld	$xr7, $t7, 16
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvst	$xr2, $t8, -32
	xvst	$xr3, $t8, 0
	addi.d	$t6, $t6, -8
	addi.d	$t8, $t8, 64
	addi.d	$t7, $t7, 64
	bnez	$t6, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_12 Depth=1
	ori	$s4, $zero, 1993
.LBB7_16:                               # %for.body3.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t6, $zero
	slli.d	$t7, $s4, 3
	alsl.d	$t8, $s4, $s1, 3
	alsl.d	$s4, $s4, $fp, 3
	.p2align	4, , 16
.LBB7_17:                               # %for.body3.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s5, $s4, $t6
	fld.d	$fa2, $s5, -8
	fldx.d	$fa3, $s4, $t6
	fld.d	$fa4, $s5, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t8, $t6
	addi.d	$t6, $t6, 8
	add.d	$s5, $t7, $t6
	bne	$s5, $a0, .LBB7_17
# %bb.18:                               # %vector.memcheck102
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$s4, $zero, 1
	bnez	$t0, .LBB7_22
# %bb.19:                               # %vector.body107.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	ori	$t6, $zero, 1992
	move	$t7, $t4
	move	$t8, $t3
	.p2align	4, , 16
.LBB7_20:                               # %vector.body107
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t7, -32
	xvld	$xr3, $t7, 0
	xvld	$xr4, $t7, -24
	xvld	$xr5, $t7, 8
	xvld	$xr6, $t7, -16
	xvld	$xr7, $t7, 16
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvst	$xr2, $t8, -32
	xvst	$xr3, $t8, 0
	addi.d	$t6, $t6, -8
	addi.d	$t8, $t8, 64
	addi.d	$t7, $t7, 64
	bnez	$t6, .LBB7_20
# %bb.21:                               #   in Loop: Header=BB7_12 Depth=1
	ori	$s4, $zero, 1993
.LBB7_22:                               # %for.body16.i.preheader
                                        #   in Loop: Header=BB7_12 Depth=1
	move	$t6, $zero
	slli.d	$t7, $s4, 3
	alsl.d	$t8, $s4, $fp, 3
	alsl.d	$s4, $s4, $s1, 3
	.p2align	4, , 16
.LBB7_23:                               # %for.body16.i
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s5, $s4, $t6
	fld.d	$fa2, $s5, -8
	fldx.d	$fa3, $s4, $t6
	fld.d	$fa4, $s5, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t8, $t6
	addi.d	$t6, $t6, 8
	add.d	$s5, $t7, $t6
	bne	$s5, $a0, .LBB7_23
# %bb.24:                               # %for.inc33.i
                                        #   in Loop: Header=BB7_12 Depth=1
	addi.w	$a6, $a6, 1
	bne	$a6, $t5, .LBB7_12
# %bb.25:                               # %vector.memcheck138
	sub.d	$a6, $s1, $s0
	ori	$a7, $zero, 32
	bgeu	$a6, $a7, .LBB7_28
# %bb.26:                               # %for.body.i37.preheader
	fld.d	$fa2, $a2, %pc_lo12(.LCPI7_1)
	ori	$a1, $zero, 3
	ori	$a2, $s3, 384
	.p2align	4, , 16
.LBB7_27:                               # %for.body.i37
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a1, 31, 0
	addi.d	$a7, $a1, -1
	bstrpick.d	$a7, $a7, 31, 0
	movgr2fr.d	$fa3, $a7
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	add.d	$a7, $s0, $a2
	fstx.d	$fa3, $a7, $s2
	movgr2fr.d	$fa3, $a6
	ffint.d.l	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa2
	add.d	$a6, $s1, $a2
	fstx.d	$fa3, $a6, $s2
	addi.d	$a2, $a2, 8
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB7_27
	b	.LBB7_30
.LBB7_28:                               # %vector.body142.preheader
	vld	$vr2, $a1, %pc_lo12(.LCPI7_0)
	ori	$a1, $zero, 2000
	ori	$a2, $zero, 0
	lu32i.d	$a2, -49152
	lu52i.d	$a2, $a2, 1033
	xvreplgr2vr.d	$xr3, $a2
	move	$a2, $s0
	move	$a6, $s1
	.p2align	4, , 16
.LBB7_29:                               # %vector.body142
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr4, $vr2, 2
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvfdiv.d	$xr4, $xr4, $xr3
	xvst	$xr4, $a2, 0
	vaddi.wu	$vr4, $vr2, 3
	vext2xv.du.wu	$xr4, $xr4
	xvffint.d.lu	$xr4, $xr4
	xvfdiv.d	$xr4, $xr4, $xr3
	xvst	$xr4, $a6, 0
	vaddi.wu	$vr2, $vr2, 4
	addi.d	$a1, $a1, -4
	addi.d	$a6, $a6, 32
	addi.d	$a2, $a2, 32
	bnez	$a1, .LBB7_29
.LBB7_30:                               # %for.cond1.preheader.i48.preheader
	move	$a1, $zero
	addi.d	$a6, $s0, 8
	add.d	$a7, $s0, $a0
	add.d	$a2, $s0, $s2
	sltu	$a2, $a4, $a2
	sltu	$a4, $s0, $a5
	and	$a2, $a2, $a4
	sltu	$a3, $a6, $a3
	sltu	$a4, $s1, $a7
	and	$a3, $a3, $a4
	addi.d	$a4, $s1, 40
	addi.d	$a5, $s0, 32
	addi.d	$a6, $s0, 40
	addi.d	$a7, $s1, 32
	ori	$t0, $zero, 500
	.p2align	4, , 16
.LBB7_31:                               # %vector.memcheck170
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_33 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_39 Depth 2
                                        #     Child Loop BB7_42 Depth 2
	ori	$t4, $zero, 1
	bnez	$a2, .LBB7_35
# %bb.32:                               # %vector.body179.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	ori	$t1, $zero, 1992
	move	$t2, $a5
	move	$t3, $a4
	.p2align	4, , 16
.LBB7_33:                               # %vector.body179
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvld	$xr4, $t2, -24
	xvld	$xr5, $t2, 8
	xvld	$xr6, $t2, -16
	xvld	$xr7, $t2, 16
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t1, $t1, -8
	addi.d	$t3, $t3, 64
	addi.d	$t2, $t2, 64
	bnez	$t1, .LBB7_33
# %bb.34:                               #   in Loop: Header=BB7_31 Depth=1
	ori	$t4, $zero, 1993
.LBB7_35:                               # %for.body3.i50.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t1, $zero
	slli.d	$t2, $t4, 3
	alsl.d	$t3, $t4, $s1, 3
	alsl.d	$t4, $t4, $s0, 3
	.p2align	4, , 16
.LBB7_36:                               # %for.body3.i50
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t4, $t1
	fld.d	$fa2, $t5, -8
	fldx.d	$fa3, $t4, $t1
	fld.d	$fa4, $t5, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t3, $t1
	addi.d	$t1, $t1, 8
	add.d	$t5, $t2, $t1
	bne	$t5, $a0, .LBB7_36
# %bb.37:                               # %vector.memcheck149
                                        #   in Loop: Header=BB7_31 Depth=1
	ori	$t4, $zero, 1
	bnez	$a3, .LBB7_41
# %bb.38:                               # %vector.body158.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	ori	$t1, $zero, 1992
	move	$t2, $a7
	move	$t3, $a6
	.p2align	4, , 16
.LBB7_39:                               # %vector.body158
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvld	$xr4, $t2, -24
	xvld	$xr5, $t2, 8
	xvld	$xr6, $t2, -16
	xvld	$xr7, $t2, 16
	xvfadd.d	$xr2, $xr2, $xr4
	xvfadd.d	$xr3, $xr3, $xr5
	xvfadd.d	$xr2, $xr2, $xr6
	xvfadd.d	$xr3, $xr3, $xr7
	xvfmul.d	$xr2, $xr2, $xr1
	xvfmul.d	$xr3, $xr3, $xr1
	xvst	$xr2, $t3, -32
	xvst	$xr3, $t3, 0
	addi.d	$t1, $t1, -8
	addi.d	$t3, $t3, 64
	addi.d	$t2, $t2, 64
	bnez	$t1, .LBB7_39
# %bb.40:                               #   in Loop: Header=BB7_31 Depth=1
	ori	$t4, $zero, 1993
.LBB7_41:                               # %for.body16.i60.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$t1, $zero
	slli.d	$t2, $t4, 3
	alsl.d	$t3, $t4, $s0, 3
	alsl.d	$t4, $t4, $s1, 3
	.p2align	4, , 16
.LBB7_42:                               # %for.body16.i60
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $t4, $t1
	fld.d	$fa2, $t5, -8
	fldx.d	$fa3, $t4, $t1
	fld.d	$fa4, $t5, 8
	fadd.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t3, $t1
	addi.d	$t1, $t1, 8
	add.d	$t5, $t2, $t1
	bne	$t5, $a0, .LBB7_42
# %bb.43:                               # %for.inc33.i70
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.w	$a1, $a1, 1
	bne	$a1, $t0, .LBB7_31
# %bb.44:                               # %for.body.i73.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_3)
	move	$a2, $zero
	ori	$a0, $s3, 384
	.p2align	4, , 16
.LBB7_45:                               # %for.body.i73
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	fldx.d	$fa1, $a1, $s2
	add.d	$a1, $s0, $a0
	fldx.d	$fa2, $a1, $s2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_50
# %bb.46:                               # %for.inc.i
                                        #   in Loop: Header=BB7_45 Depth=1
	addi.d	$a0, $a0, 8
	addi.w	$a2, $a2, 1
	bnez	$a0, .LBB7_45
# %bb.47:                               # %if.end
	lu12i.w	$s2, 7
	ori	$a0, $s2, 3329
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $s2, 3328
	stx.b	$zero, $a0, $a1
	addi.d	$a1, $a0, 7
	ori	$a2, $s3, 384
	ori	$a3, $zero, 3
	.p2align	4, , 16
.LBB7_48:                               # %for.body.i80
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $s0, $a2
	ldptr.d	$a4, $a4, 16000
	srli.d	$a5, $a4, 8
	srli.d	$a6, $a4, 16
	srli.d	$a7, $a4, 24
	srli.d	$t0, $a4, 32
	srli.d	$t1, $a4, 40
	srli.d	$t2, $a4, 48
	srli.d	$t3, $a4, 56
	bstrins.d	$a4, $a3, 63, 4
	st.b	$a4, $a1, -7
	st.b	$a4, $a1, -6
	bstrins.d	$a5, $a3, 63, 4
	st.b	$a5, $a1, -5
	st.b	$a5, $a1, -4
	bstrins.d	$a6, $a3, 63, 4
	st.b	$a6, $a1, -3
	st.b	$a6, $a1, -2
	bstrins.d	$a7, $a3, 63, 4
	st.b	$a7, $a1, -1
	st.b	$a7, $a1, 0
	bstrins.d	$t0, $a3, 63, 4
	st.b	$t0, $a1, 1
	st.b	$t0, $a1, 2
	bstrins.d	$t1, $a3, 63, 4
	st.b	$t1, $a1, 3
	st.b	$t1, $a1, 4
	bstrins.d	$t2, $a3, 63, 4
	st.b	$t2, $a1, 5
	st.b	$t2, $a1, 6
	bstrins.d	$t3, $a3, 63, 4
	st.b	$t3, $a1, 7
	st.b	$t3, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_48
# %bb.49:                               # %print_array.exit
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	ld.d	$a1, $a1, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
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
	b	.LBB7_51
.LBB7_50:                               # %check_FP.exit.thread
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	movfr2gr.d	$a3, $fa1
	movfr2gr.d	$a5, $fa2
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	lu12i.w	$a4, -487882
	ori	$a4, $a4, 2289
	lu32i.d	$a4, 325813
	lu52i.d	$a6, $a4, 1006
	move	$a4, $a2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB7_51:                               # %cleanup
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
.LBB7_52:                               # %if.then.i.i
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
	.asciz	"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\n"
	.size	.L.str.2, 68

	.section	".note.GNU-stack","",@progbits
	.addrsig
