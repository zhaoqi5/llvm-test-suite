	.file	"deriche.c"
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI7_2:
	.word	0x3de1b54c                      # float 0.110209078
.LCPI7_3:
	.word	0xbe4135c4                      # float -0.188681662
.LCPI7_4:
	.word	0x3f5744fd                      # float 0.840896427
.LCPI7_5:
	.word	0xbf1b4598                      # float -0.606530666
.LCPI7_6:
	.word	0x3dea6028                      # float 0.114441216
.LCPI7_7:
	.word	0xbe3c1714                      # float -0.183681786
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_8:
	.dword	0x3ee4f8b588e368f1              # double 1.0000000000000001E-5
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48
	beqz	$fp, .LBB7_90
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_90
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	beqz	$s0, .LBB7_90
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_90
# %bb.4:                                # %polybench_alloc_data.exit31
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48
	beqz	$s1, .LBB7_90
# %bb.5:                                # %polybench_alloc_data.exit31
	bnez	$a0, .LBB7_90
# %bb.6:                                # %polybench_alloc_data.exit38
	st.d	$zero, $sp, 48
	lu12i.w	$a1, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 48
	beqz	$s2, .LBB7_90
# %bb.7:                                # %polybench_alloc_data.exit38
	bnez	$a0, .LBB7_90
# %bb.8:                                # %polybench_alloc_data.exit45
	st.d	$zero, $sp, 48
	lu12i.w	$s4, 1
	lu12i.w	$a2, 8640
	addi.d	$a0, $sp, 48
	move	$a1, $s4
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 48
	beqz	$s3, .LBB7_90
# %bb.9:                                # %polybench_alloc_data.exit45
	bnez	$a0, .LBB7_90
# %bb.10:                               # %polybench_alloc_data.exit52
	move	$a1, $zero
	ori	$a4, $zero, 313
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI7_0)
	pcalau12i	$a3, %pc_hi20(.LCPI7_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI7_1)
	ori	$a0, $zero, 991
	xvreplgr2vr.d	$xr2, $a0
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	xvreplgr2vr.w	$xr6, $a0
	lu12i.w	$a0, 292863
	ori	$a0, $a0, 3840
	xvreplgr2vr.w	$xr7, $a0
	lu12i.w	$a0, 2
	ori	$s5, $a0, 448
	move	$a5, $fp
	.p2align	4, , 16
.LBB7_11:                               # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
	mul.d	$a6, $a1, $a4
	xvreplgr2vr.d	$xr3, $a6
	ori	$a6, $zero, 2160
	move	$a7, $a5
	xvori.b	$xr4, $xr1, 0
	xvori.b	$xr5, $xr0, 0
	.p2align	4, , 16
.LBB7_12:                               # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr8, $xr3, 0
	xvmadd.d	$xr8, $xr5, $xr2
	xvori.b	$xr9, $xr3, 0
	xvmadd.d	$xr9, $xr4, $xr2
	xvpickve2gr.d	$t0, $xr9, 0
	xvinsgr2vr.w	$xr10, $t0, 0
	xvpickve2gr.d	$t0, $xr9, 1
	xvinsgr2vr.w	$xr10, $t0, 1
	xvpickve2gr.d	$t0, $xr9, 2
	xvinsgr2vr.w	$xr10, $t0, 2
	xvpickve2gr.d	$t0, $xr9, 3
	xvinsgr2vr.w	$xr10, $t0, 3
	xvpickve2gr.d	$t0, $xr8, 0
	xvinsgr2vr.w	$xr10, $t0, 4
	xvpickve2gr.d	$t0, $xr8, 1
	xvinsgr2vr.w	$xr10, $t0, 5
	xvpickve2gr.d	$t0, $xr8, 2
	xvinsgr2vr.w	$xr10, $t0, 6
	xvpickve2gr.d	$t0, $xr8, 3
	xvinsgr2vr.w	$xr10, $t0, 7
	xvand.v	$xr8, $xr10, $xr6
	xvffint.s.wu	$xr8, $xr8
	xvfdiv.s	$xr8, $xr8, $xr7
	xvst	$xr8, $a7, 0
	xvaddi.du	$xr4, $xr4, 8
	xvaddi.du	$xr5, $xr5, 8
	addi.d	$a6, $a6, -8
	addi.d	$a7, $a7, 32
	bnez	$a6, .LBB7_12
# %bb.13:                               # %for.inc7.i
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a5, $a5, $s5
	bne	$a1, $s4, .LBB7_11
# %bb.14:                               # %for.cond29.preheader.i.preheader
	move	$a1, $zero
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(.LCPI7_2)
	fld.s	$fa4, $a5, %pc_lo12(.LCPI7_2)
	pcalau12i	$a5, %pc_hi20(.LCPI7_3)
	fld.s	$fa5, $a5, %pc_lo12(.LCPI7_3)
	pcalau12i	$a5, %pc_hi20(.LCPI7_4)
	fld.s	$fa0, $a5, %pc_lo12(.LCPI7_4)
	pcalau12i	$a5, %pc_hi20(.LCPI7_5)
	fld.s	$fa1, $a5, %pc_lo12(.LCPI7_5)
	movgr2fr.w	$fa2, $zero
	lu12i.w	$s8, -3
	ori	$a5, $s8, 3648
	.p2align	4, , 16
.LBB7_15:                               # %for.cond29.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	add.d	$a6, $s2, $a1
	add.d	$a7, $fp, $a1
	move	$t0, $a5
	fmov.s	$ft0, $fa2
	fmov.s	$fa3, $fa2
	fmov.s	$ft1, $fa2
	.p2align	4, , 16
.LBB7_16:                               # %for.body31.i
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t1, $a7, $t0
	fldx.s	$ft2, $t1, $s5
	fmov.s	$ft3, $fa3
	fmul.s	$fa3, $ft0, $fa4
	fmadd.s	$fa3, $ft2, $fa5, $fa3
	fmadd.s	$fa3, $ft3, $fa0, $fa3
	fmadd.s	$fa3, $ft1, $fa1, $fa3
	add.d	$t2, $a6, $t0
	fstx.s	$fa3, $t2, $s5
	fldx.s	$ft0, $t1, $s5
	addi.d	$t0, $t0, 4
	fmov.s	$ft1, $ft3
	bnez	$t0, .LBB7_16
# %bb.17:                               # %for.inc50.i
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$a1, $a1, $s5
	bne	$a4, $s4, .LBB7_15
# %bb.18:                               # %for.cond57.preheader.i.preheader
	move	$a4, $zero
	move	$a5, $zero
	pcalau12i	$a1, %pc_hi20(.LCPI7_6)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI7_6)
	pcalau12i	$a1, %pc_hi20(.LCPI7_7)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI7_7)
	movgr2fr.w	$ft0, $zero
	ori	$a6, $a0, 444
	addi.w	$a1, $zero, -4
	.p2align	4, , 16
.LBB7_19:                               # %for.cond57.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	add.d	$a7, $fp, $a4
	add.d	$t0, $s3, $a4
	move	$t1, $a6
	fmov.s	$ft1, $ft0
	fmov.s	$ft3, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft4, $ft0
	.p2align	4, , 16
.LBB7_20:                               # %for.body59.i
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$ft5, $ft2
	fmul.s	$ft2, $ft3, $fa2
	fmov.s	$ft3, $ft1
	fmadd.s	$ft1, $ft1, $fa3, $ft2
	fmadd.s	$ft1, $ft5, $fa0, $ft1
	fmadd.s	$ft2, $ft4, $fa1, $ft1
	fstx.s	$ft2, $t0, $t1
	fldx.s	$ft1, $a7, $t1
	addi.d	$t1, $t1, -4
	fmov.s	$ft4, $ft5
	bne	$t1, $a1, .LBB7_20
# %bb.21:                               # %for.inc78.i
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a4, $a4, $s5
	bne	$a5, $s4, .LBB7_19
# %bb.22:                               # %for.cond84.preheader.i.preheader
	move	$a4, $zero
	sub.d	$a5, $s0, $s2
	sub.d	$a6, $s0, $s3
	sltui	$a5, $a5, 64
	sltui	$a6, $a6, 64
	or	$a6, $a5, $a6
	addi.d	$a5, $s2, 32
	addi.d	$a7, $s0, 32
	addi.d	$t0, $s3, 32
	ori	$t1, $s8, 3648
	move	$t2, $s2
	move	$t3, $s3
	move	$t4, $s0
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_23:                               # %for.inc104.i
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$a5, $a5, $s5
	add.d	$a7, $a7, $s5
	add.d	$t0, $t0, $s5
	add.d	$t4, $t4, $s5
	add.d	$t3, $t3, $s5
	add.d	$t2, $t2, $s5
	beq	$a4, $s4, .LBB7_29
.LBB7_24:                               # %for.cond84.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_26 Depth 2
	beqz	$a6, .LBB7_27
# %bb.25:                               # %for.body86.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$t5, $t1
	.p2align	4, , 16
.LBB7_26:                               # %for.body86.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t6, $t2, $t5
	fldx.s	$ft0, $t6, $s5
	add.d	$t6, $t3, $t5
	fldx.s	$ft1, $t6, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$t6, $t4, $t5
	addi.d	$t5, $t5, 4
	fstx.s	$ft0, $t6, $s5
	bnez	$t5, .LBB7_26
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_27:                               # %vector.body184.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	ori	$t5, $zero, 2160
	move	$t6, $t0
	move	$t7, $a7
	move	$t8, $a5
	.p2align	4, , 16
.LBB7_28:                               # %vector.body184
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr8, $t8, -32
	xvld	$xr9, $t8, 0
	xvld	$xr10, $t6, -32
	xvld	$xr11, $t6, 0
	xvfadd.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr9, $xr9, $xr11
	xvst	$xr8, $t7, -32
	xvst	$xr9, $t7, 0
	addi.d	$t5, $t5, -16
	addi.d	$t8, $t8, 64
	addi.d	$t7, $t7, 64
	addi.d	$t6, $t6, 64
	bnez	$t5, .LBB7_28
	b	.LBB7_23
.LBB7_29:                               # %for.cond110.preheader.i.preheader
	move	$a4, $zero
	move	$a5, $zero
	movgr2fr.w	$ft0, $zero
	ori	$a7, $zero, 2160
	.p2align	4, , 16
.LBB7_30:                               # %for.cond110.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
	move	$t0, $a4
	move	$t1, $s4
	fmov.s	$ft1, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft3, $ft0
	.p2align	4, , 16
.LBB7_31:                               # %for.body112.i
                                        #   Parent Loop BB7_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft4, $s0, $t0
	fmov.s	$ft5, $ft2
	fmul.s	$ft1, $ft1, $fa4
	fmadd.s	$ft1, $ft4, $fa5, $ft1
	fmadd.s	$ft1, $ft2, $fa0, $ft1
	fmadd.s	$ft2, $ft3, $fa1, $ft1
	fstx.s	$ft2, $s2, $t0
	fldx.s	$ft1, $s0, $t0
	addi.d	$t1, $t1, -1
	add.d	$t0, $t0, $s5
	fmov.s	$ft3, $ft5
	bnez	$t1, .LBB7_31
# %bb.32:                               # %for.inc136.i
                                        #   in Loop: Header=BB7_30 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	bne	$a5, $a7, .LBB7_30
# %bb.33:                               # %for.cond143.preheader.i.preheader
	move	$a5, $zero
	lu12i.w	$a4, 8637
	ori	$t0, $a4, 3648
	movgr2fr.w	$ft0, $zero
	lu12i.w	$t1, -1
	ori	$a7, $s8, 3648
	ori	$t2, $zero, 2160
	.p2align	4, , 16
.LBB7_34:                               # %for.cond143.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_35 Depth 2
	move	$t3, $t0
	move	$t4, $t1
	fmov.s	$ft1, $ft0
	fmov.s	$ft3, $ft0
	fmov.s	$ft2, $ft0
	fmov.s	$ft4, $ft0
	.p2align	4, , 16
.LBB7_35:                               # %for.body145.i
                                        #   Parent Loop BB7_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.s	$ft5, $ft2
	fmul.s	$ft2, $ft3, $fa2
	fmov.s	$ft3, $ft1
	fmadd.s	$ft1, $ft1, $fa3, $ft2
	fmadd.s	$ft1, $ft5, $fa0, $ft1
	fmadd.s	$ft2, $ft4, $fa1, $ft1
	fstx.s	$ft2, $s3, $t3
	fldx.s	$ft1, $s0, $t3
	addi.d	$t4, $t4, 1
	add.d	$t3, $t3, $a7
	fmov.s	$ft4, $ft5
	bnez	$t4, .LBB7_35
# %bb.36:                               # %for.inc165.i
                                        #   in Loop: Header=BB7_34 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$t0, $t0, 4
	bne	$a5, $t2, .LBB7_34
# %bb.37:                               # %for.cond171.preheader.i.preheader
	move	$t0, $zero
	addi.d	$t1, $s2, 32
	addi.d	$t2, $s0, 32
	addi.d	$t3, $s3, 32
	lu12i.w	$a5, 1
	move	$t4, $s2
	move	$t5, $s3
	move	$t6, $s0
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_38:                               # %for.inc191.i
                                        #   in Loop: Header=BB7_39 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$t1, $t1, $s5
	add.d	$t2, $t2, $s5
	add.d	$t3, $t3, $s5
	add.d	$t6, $t6, $s5
	add.d	$t5, $t5, $s5
	add.d	$t4, $t4, $s5
	beq	$t0, $a5, .LBB7_44
.LBB7_39:                               # %for.cond171.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_43 Depth 2
                                        #     Child Loop BB7_41 Depth 2
	beqz	$a6, .LBB7_42
# %bb.40:                               # %for.body173.i.preheader
                                        #   in Loop: Header=BB7_39 Depth=1
	move	$t7, $a7
	.p2align	4, , 16
.LBB7_41:                               # %for.body173.i
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t8, $t4, $t7
	fldx.s	$ft0, $t8, $s5
	add.d	$t8, $t5, $t7
	fldx.s	$ft1, $t8, $s5
	fadd.s	$ft0, $ft0, $ft1
	add.d	$t8, $t6, $t7
	addi.d	$t7, $t7, 4
	fstx.s	$ft0, $t8, $s5
	bnez	$t7, .LBB7_41
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_42:                               # %vector.body198.preheader
                                        #   in Loop: Header=BB7_39 Depth=1
	ori	$t7, $zero, 2160
	move	$t8, $t3
	move	$s4, $t2
	move	$s6, $t1
	.p2align	4, , 16
.LBB7_43:                               # %vector.body198
                                        #   Parent Loop BB7_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr8, $s6, -32
	xvld	$xr9, $s6, 0
	xvld	$xr10, $t8, -32
	xvld	$xr11, $t8, 0
	xvfadd.s	$xr8, $xr8, $xr10
	xvfadd.s	$xr9, $xr9, $xr11
	xvst	$xr8, $s4, -32
	xvst	$xr9, $s4, 0
	addi.d	$t7, $t7, -16
	addi.d	$s6, $s6, 64
	addi.d	$s4, $s4, 64
	addi.d	$t8, $t8, 64
	bnez	$t7, .LBB7_43
	b	.LBB7_38
.LBB7_44:                               # %for.cond1.preheader.i58.preheader
	move	$a6, $zero
	xvld	$xr8, $a2, %pc_lo12(.LCPI7_0)
	xvld	$xr9, $a3, %pc_lo12(.LCPI7_1)
	ori	$a2, $zero, 313
	ori	$a3, $zero, 991
	xvreplgr2vr.d	$xr10, $a3
	move	$a3, $fp
	.p2align	4, , 16
.LBB7_45:                               # %for.cond1.preheader.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
	mul.d	$a7, $a6, $a2
	xvreplgr2vr.d	$xr11, $a7
	ori	$a7, $zero, 2160
	move	$t0, $a3
	xvori.b	$xr12, $xr9, 0
	xvori.b	$xr13, $xr8, 0
	.p2align	4, , 16
.LBB7_46:                               # %vector.body211
                                        #   Parent Loop BB7_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvori.b	$xr14, $xr11, 0
	xvmadd.d	$xr14, $xr13, $xr10
	xvori.b	$xr15, $xr11, 0
	xvmadd.d	$xr15, $xr12, $xr10
	xvpickve2gr.d	$t1, $xr15, 0
	xvinsgr2vr.w	$xr16, $t1, 0
	xvpickve2gr.d	$t1, $xr15, 1
	xvinsgr2vr.w	$xr16, $t1, 1
	xvpickve2gr.d	$t1, $xr15, 2
	xvinsgr2vr.w	$xr16, $t1, 2
	xvpickve2gr.d	$t1, $xr15, 3
	xvinsgr2vr.w	$xr16, $t1, 3
	xvpickve2gr.d	$t1, $xr14, 0
	xvinsgr2vr.w	$xr16, $t1, 4
	xvpickve2gr.d	$t1, $xr14, 1
	xvinsgr2vr.w	$xr16, $t1, 5
	xvpickve2gr.d	$t1, $xr14, 2
	xvinsgr2vr.w	$xr16, $t1, 6
	xvpickve2gr.d	$t1, $xr14, 3
	xvinsgr2vr.w	$xr16, $t1, 7
	xvand.v	$xr14, $xr16, $xr6
	xvffint.s.wu	$xr14, $xr14
	xvfdiv.s	$xr14, $xr14, $xr7
	xvst	$xr14, $t0, 0
	xvaddi.du	$xr12, $xr12, 8
	xvaddi.du	$xr13, $xr13, 8
	addi.d	$a7, $a7, -8
	addi.d	$t0, $t0, 32
	bnez	$a7, .LBB7_46
# %bb.47:                               # %for.inc7.i69
                                        #   in Loop: Header=BB7_45 Depth=1
	addi.d	$a6, $a6, 1
	add.d	$a3, $a3, $s5
	bne	$a6, $a5, .LBB7_45
# %bb.48:                               # %for.cond30.preheader.i.preheader
	move	$a2, $zero
	move	$a3, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a6, $s8, 3648
	.p2align	4, , 16
.LBB7_49:                               # %for.cond30.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	add.d	$a7, $s2, $a2
	add.d	$t0, $fp, $a2
	move	$t1, $a6
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_50:                               # %for.body32.i
                                        #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $t0, $t1
	fldx.s	$ft2, $t2, $s5
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	add.d	$t3, $a7, $t1
	fstx.s	$ft0, $t3, $s5
	fldx.s	$fa7, $t2, $s5
	addi.d	$t1, $t1, 4
	fmov.s	$ft1, $ft3
	bnez	$t1, .LBB7_50
# %bb.51:                               # %for.inc54.i
                                        #   in Loop: Header=BB7_49 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a2, $a2, $s5
	bne	$a3, $a5, .LBB7_49
# %bb.52:                               # %for.cond61.preheader.i.preheader
	move	$a2, $zero
	move	$a3, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a0, $a0, 444
	.p2align	4, , 16
.LBB7_53:                               # %for.cond61.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_54 Depth 2
	add.d	$a6, $fp, $a2
	add.d	$a7, $s3, $a2
	move	$t0, $a0
	fmov.s	$fa7, $fa6
	fmov.s	$ft1, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft2, $fa6
	.p2align	4, , 16
.LBB7_54:                               # %for.body63.i
                                        #   Parent Loop BB7_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmul.s	$ft2, $ft2, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft1, $fa2
	fmov.s	$ft1, $fa7
	fmul.s	$fa7, $fa7, $fa3
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft2
	fstx.s	$ft0, $a7, $t0
	fldx.s	$fa7, $a6, $t0
	addi.d	$t0, $t0, -4
	fmov.s	$ft2, $ft3
	bne	$t0, $a1, .LBB7_54
# %bb.55:                               # %for.inc85.i
                                        #   in Loop: Header=BB7_53 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a2, $a2, $s5
	bne	$a3, $a5, .LBB7_53
# %bb.56:                               # %for.cond91.preheader.i.preheader
	move	$a1, $zero
	sub.d	$a0, $s1, $s2
	sub.d	$a2, $s1, $s3
	sltui	$a0, $a0, 64
	sltui	$a2, $a2, 64
	or	$a0, $a0, $a2
	addi.d	$a2, $s2, 32
	addi.d	$a3, $s1, 32
	addi.d	$a6, $s3, 32
	ori	$a7, $s8, 3648
	move	$t0, $s2
	move	$t1, $s3
	move	$t2, $s1
	b	.LBB7_58
	.p2align	4, , 16
.LBB7_57:                               # %for.inc111.i
                                        #   in Loop: Header=BB7_58 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a2, $a2, $s5
	add.d	$a3, $a3, $s5
	add.d	$a6, $a6, $s5
	add.d	$t2, $t2, $s5
	add.d	$t1, $t1, $s5
	add.d	$t0, $t0, $s5
	beq	$a1, $a5, .LBB7_63
.LBB7_58:                               # %for.cond91.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_62 Depth 2
                                        #     Child Loop BB7_60 Depth 2
	beqz	$a0, .LBB7_61
# %bb.59:                               # %for.body93.i.preheader
                                        #   in Loop: Header=BB7_58 Depth=1
	move	$t3, $a7
	.p2align	4, , 16
.LBB7_60:                               # %for.body93.i
                                        #   Parent Loop BB7_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t4, $t0, $t3
	fldx.s	$fa6, $t4, $s5
	add.d	$t4, $t1, $t3
	fldx.s	$fa7, $t4, $s5
	fadd.s	$fa6, $fa6, $fa7
	add.d	$t4, $t2, $t3
	addi.d	$t3, $t3, 4
	fstx.s	$fa6, $t4, $s5
	bnez	$t3, .LBB7_60
	b	.LBB7_57
	.p2align	4, , 16
.LBB7_61:                               # %vector.body224.preheader
                                        #   in Loop: Header=BB7_58 Depth=1
	ori	$t3, $zero, 2160
	move	$t4, $a6
	move	$t5, $a3
	move	$t6, $a2
	.p2align	4, , 16
.LBB7_62:                               # %vector.body224
                                        #   Parent Loop BB7_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr6, $t6, -32
	xvld	$xr7, $t6, 0
	xvld	$xr8, $t4, -32
	xvld	$xr9, $t4, 0
	xvfadd.s	$xr6, $xr6, $xr8
	xvfadd.s	$xr7, $xr7, $xr9
	xvst	$xr6, $t5, -32
	xvst	$xr7, $t5, 0
	addi.d	$t3, $t3, -16
	addi.d	$t6, $t6, 64
	addi.d	$t5, $t5, 64
	addi.d	$t4, $t4, 64
	bnez	$t3, .LBB7_62
	b	.LBB7_57
.LBB7_63:                               # %for.cond117.preheader.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	movgr2fr.w	$fa6, $zero
	ori	$a3, $zero, 2160
	.p2align	4, , 16
.LBB7_64:                               # %for.cond117.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_65 Depth 2
	move	$a6, $a1
	move	$a7, $a5
	fmov.s	$fa7, $fa6
	fmov.s	$ft0, $fa6
	fmov.s	$ft1, $fa6
	.p2align	4, , 16
.LBB7_65:                               # %for.body119.i
                                        #   Parent Loop BB7_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s1, $a6
	fmul.s	$ft1, $ft1, $fa1
	fmov.s	$ft3, $ft0
	fmul.s	$ft0, $ft2, $fa5
	fmul.s	$fa7, $fa7, $fa4
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $fa0
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$ft0, $fa7, $ft1
	fstx.s	$ft0, $s2, $a6
	fldx.s	$fa7, $s1, $a6
	fmov.s	$ft1, $ft3
	addi.d	$a7, $a7, -1
	add.d	$a6, $a6, $s5
	bnez	$a7, .LBB7_65
# %bb.66:                               # %for.inc146.i
                                        #   in Loop: Header=BB7_64 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	bne	$a2, $a3, .LBB7_64
# %bb.67:                               # %for.cond153.preheader.i.preheader
	move	$a2, $zero
	ori	$a3, $a4, 3648
	movgr2fr.w	$fa4, $zero
	lu12i.w	$a4, -1
	ori	$a1, $s8, 3648
	ori	$a5, $zero, 2160
	.p2align	4, , 16
.LBB7_68:                               # %for.cond153.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_69 Depth 2
	move	$a6, $a3
	move	$a7, $a4
	fmov.s	$fa5, $fa4
	fmov.s	$fa7, $fa4
	fmov.s	$fa6, $fa4
	fmov.s	$ft0, $fa4
	.p2align	4, , 16
.LBB7_69:                               # %for.body155.i
                                        #   Parent Loop BB7_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmul.s	$ft0, $ft0, $fa1
	fmov.s	$ft1, $fa6
	fmul.s	$fa6, $fa7, $fa2
	fmov.s	$fa7, $fa5
	fmul.s	$fa5, $fa5, $fa3
	fadd.s	$fa5, $fa6, $fa5
	fmul.s	$fa6, $ft1, $fa0
	fadd.s	$fa5, $fa6, $fa5
	fadd.s	$fa6, $fa5, $ft0
	fstx.s	$fa6, $s3, $a6
	fldx.s	$fa5, $s1, $a6
	fmov.s	$ft0, $ft1
	addi.d	$a7, $a7, 1
	add.d	$a6, $a6, $a1
	bnez	$a7, .LBB7_69
# %bb.70:                               # %for.inc178.i
                                        #   in Loop: Header=BB7_68 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bne	$a2, $a5, .LBB7_68
# %bb.71:                               # %for.cond184.preheader.i.preheader
	move	$a2, $zero
	addi.d	$a3, $s2, 32
	addi.d	$a4, $s1, 32
	addi.d	$a5, $s3, 32
	lu12i.w	$s7, 1
	move	$a6, $s2
	move	$a7, $s3
	move	$t0, $s1
	b	.LBB7_73
	.p2align	4, , 16
.LBB7_72:                               # %for.inc204.i
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $s5
	add.d	$a4, $a4, $s5
	add.d	$a5, $a5, $s5
	add.d	$t0, $t0, $s5
	add.d	$a7, $a7, $s5
	add.d	$a6, $a6, $s5
	beq	$a2, $s7, .LBB7_78
.LBB7_73:                               # %for.cond184.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_77 Depth 2
                                        #     Child Loop BB7_75 Depth 2
	beqz	$a0, .LBB7_76
# %bb.74:                               # %for.body186.i.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$t1, $a1
	.p2align	4, , 16
.LBB7_75:                               # %for.body186.i
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a6, $t1
	fldx.s	$fa0, $t2, $s5
	add.d	$t2, $a7, $t1
	fldx.s	$fa1, $t2, $s5
	fadd.s	$fa0, $fa0, $fa1
	add.d	$t2, $t0, $t1
	addi.d	$t1, $t1, 4
	fstx.s	$fa0, $t2, $s5
	bnez	$t1, .LBB7_75
	b	.LBB7_72
	.p2align	4, , 16
.LBB7_76:                               # %vector.body239.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	ori	$t1, $zero, 2160
	move	$t2, $a5
	move	$t3, $a4
	move	$t4, $a3
	.p2align	4, , 16
.LBB7_77:                               # %vector.body239
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t4, -32
	xvld	$xr1, $t4, 0
	xvld	$xr2, $t2, -32
	xvld	$xr3, $t2, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $t3, -32
	xvst	$xr1, $t3, 0
	addi.d	$t1, $t1, -16
	addi.d	$t4, $t4, 64
	addi.d	$t3, $t3, 64
	addi.d	$t2, $t2, 64
	bnez	$t1, .LBB7_77
	b	.LBB7_72
.LBB7_78:                               # %for.cond1.preheader.i145.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI7_8)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI7_8)
	move	$a0, $zero
	move	$a2, $zero
	ori	$a1, $s8, 3648
	.p2align	4, , 16
.LBB7_79:                               # %for.cond1.preheader.i145
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_80 Depth 2
	move	$a3, $zero
	add.d	$a4, $s1, $a0
	add.d	$a5, $s0, $a0
	move	$a6, $a1
	.p2align	4, , 16
.LBB7_80:                               # %for.body3.i147
                                        #   Parent Loop BB7_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $a5, $a6
	fldx.s	$fa1, $a7, $s5
	add.d	$a7, $a4, $a6
	fldx.s	$fa2, $a7, $s5
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa3, $fa1, $fa2
	fabs.d	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa0
	bceqz	$fcc0, .LBB7_88
# %bb.81:                               # %for.inc.i
                                        #   in Loop: Header=BB7_80 Depth=2
	addi.d	$a6, $a6, 4
	addi.w	$a3, $a3, 1
	bnez	$a6, .LBB7_80
# %bb.82:                               # %for.inc15.i
                                        #   in Loop: Header=BB7_79 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a0, $a0, $s5
	bne	$a2, $s7, .LBB7_79
# %bb.83:                               # %if.end
	lu12i.w	$s4, 16
	ori	$a0, $s4, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s8
	move	$s8, $zero
	move	$s6, $zero
	stx.b	$zero, $a0, $s4
	pcalau12i	$a2, %got_pc_hi20(stderr)
	ld.d	$a2, $a2, %got_pc_lo12(stderr)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $a1, 3648
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s4, $zero, 3
.LBB7_84:                               # %for.cond4.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_85 Depth 2
	add.d	$a0, $s1, $s8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_85:                               # %for.body7.i
                                        #   Parent Loop BB7_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	fldx.s	$fa0, $a3, $s5
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s4, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s4, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s4, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s4, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s4, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s4, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s4, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s4, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_85
# %bb.86:                               # %for.end.i
                                        #   in Loop: Header=BB7_84 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	add.d	$s8, $s8, $s5
	bne	$s6, $s7, .LBB7_84
# %bb.87:                               # %print_array.exit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB7_89
.LBB7_88:                               # %check_FP.exit.thread
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
.LBB7_89:                               # %cleanup
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
.LBB7_90:                               # %if.then.i.i
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
