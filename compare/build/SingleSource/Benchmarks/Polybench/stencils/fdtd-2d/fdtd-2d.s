	.file	"fdtd-2d.c"
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
.LCPI7_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_2:
	.dword	0x408f400000000000              # double 1000
.LCPI7_3:
	.dword	0x4092c00000000000              # double 1200
.LCPI7_4:
	.dword	0xbfe6666666666666              # double -0.69999999999999996
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$zero, $sp, 112
	lu12i.w	$s7, 2343
	ori	$s5, $s7, 3072
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 112
	beqz	$fp, .LBB7_96
# %bb.1:                                # %entry
	bnez	$a0, .LBB7_96
# %bb.2:                                # %polybench_alloc_data.exit
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112
	beqz	$s0, .LBB7_96
# %bb.3:                                # %polybench_alloc_data.exit
	bnez	$a0, .LBB7_96
# %bb.4:                                # %polybench_alloc_data.exit37
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 112
	beqz	$s1, .LBB7_96
# %bb.5:                                # %polybench_alloc_data.exit37
	bnez	$a0, .LBB7_96
# %bb.6:                                # %polybench_alloc_data.exit44
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 112
	beqz	$s2, .LBB7_96
# %bb.7:                                # %polybench_alloc_data.exit44
	bnez	$a0, .LBB7_96
# %bb.8:                                # %polybench_alloc_data.exit51
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 112
	beqz	$s3, .LBB7_96
# %bb.9:                                # %polybench_alloc_data.exit51
	bnez	$a0, .LBB7_96
# %bb.10:                               # %polybench_alloc_data.exit58
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	move	$a2, $s5
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 112
	beqz	$s4, .LBB7_96
# %bb.11:                               # %polybench_alloc_data.exit58
	bnez	$a0, .LBB7_96
# %bb.12:                               # %polybench_alloc_data.exit65
	st.d	$zero, $sp, 112
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 112
	ori	$a2, $zero, 4000
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB7_96
# %bb.13:                               # %polybench_alloc_data.exit65
	bnez	$a0, .LBB7_96
# %bb.14:                               # %polybench_alloc_data.exit72
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 32
	ori	$a1, $zero, 496
	.p2align	4, , 16
.LBB7_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vext2xv.du.wu	$xr2, $xr0
	xvffint.d.lu	$xr2, $xr2
	vext2xv.du.wu	$xr1, $xr1
	xvffint.d.lu	$xr1, $xr1
	xvst	$xr2, $a0, -32
	xvst	$xr1, $a0, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB7_15
# %bb.16:                               # %for.body.i
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -65536
	lu52i.d	$a1, $a1, 1031
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	stptr.d	$a1, $a6, 3968
	ori	$a1, $zero, 0
	lu32i.d	$a1, -61440
	lu52i.d	$a1, $a1, 1031
	stptr.d	$a1, $a6, 3976
	ori	$a1, $zero, 0
	lu32i.d	$a1, -57344
	lu52i.d	$a1, $a1, 1031
	stptr.d	$a1, $a6, 3984
	lu32i.d	$a0, -53248
	lu52i.d	$a0, $a0, 1031
	stptr.d	$a0, $a6, 3992
	sub.d	$a0, $s0, $fp
	sub.d	$a1, $s1, $fp
	sub.d	$a6, $s1, $s0
	sltui	$a0, $a0, 16
	sltui	$a1, $a1, 16
	or	$a0, $a0, $a1
	sltui	$a1, $a6, 16
	or	$a6, $a0, $a1
	lu12i.w	$a0, -3
	ori	$a7, $a0, 2688
	pcalau12i	$a0, %pc_hi20(.LCPI7_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI7_2)
	pcalau12i	$a0, %pc_hi20(.LCPI7_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI7_3)
	lu12i.w	$a0, 2
	ori	$s8, $a0, 1408
	ori	$t0, $zero, 1000
	move	$t1, $fp
	move	$t2, $s0
	move	$t3, $s1
	pcalau12i	$t8, %pc_hi20(.LCPI7_1)
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %for.inc39.i
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$t3, $t3, $s8
	add.d	$t2, $t2, $s8
	add.d	$t1, $t1, $s8
	addi.w	$a4, $a4, 3
	addi.d	$a3, $a3, 1
	addi.w	$a2, $a2, 2
	beq	$a5, $t0, .LBB7_23
.LBB7_18:                               # %for.cond5.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_20 Depth 2
	beqz	$a6, .LBB7_21
# %bb.19:                               # %for.body8.i.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$t4, $zero
	move	$a1, $a7
	.p2align	4, , 16
.LBB7_20:                               # %for.body8.i
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t5, $a2, $t4
	add.d	$t6, $a4, $t4
	add.w	$t4, $a3, $t4
	bstrpick.d	$t7, $t4, 31, 0
	movgr2fr.d	$fa0, $t7
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t7, $t1, $a1
	fstx.d	$fa0, $t7, $s8
	bstrpick.d	$t5, $t5, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa2
	add.d	$t5, $t2, $a1
	fstx.d	$fa0, $t5, $s8
	bstrpick.d	$t5, $t6, 31, 0
	movgr2fr.d	$fa0, $t5
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	add.d	$t5, $t3, $a1
	addi.d	$a1, $a1, 8
	fstx.d	$fa0, $t5, $s8
	bnez	$a1, .LBB7_20
	b	.LBB7_17
	.p2align	4, , 16
.LBB7_21:                               # %vector.ph155
                                        #   in Loop: Header=BB7_18 Depth=1
	vld	$vr3, $t8, %pc_lo12(.LCPI7_1)
	vreplgr2vr.d	$vr0, $a5
	ori	$t4, $zero, 1200
	move	$t5, $t1
	move	$t6, $t2
	move	$t7, $t3
	.p2align	4, , 16
.LBB7_22:                               # %vector.body156
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr4, $vr3, 1
	vmul.d	$vr4, $vr4, $vr0
	vffint.d.lu	$vr4, $vr4
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	vreplgr2vr.d	$vr5, $a1
	vfdiv.d	$vr4, $vr4, $vr5
	vst	$vr4, $t5, 0
	vaddi.du	$vr4, $vr3, 3
	vaddi.du	$vr3, $vr3, 2
	vmul.d	$vr6, $vr3, $vr0
	vffint.d.lu	$vr6, $vr6
	ori	$a1, $zero, 0
	lu32i.d	$a1, 180224
	lu52i.d	$a1, $a1, 1033
	vreplgr2vr.d	$vr7, $a1
	vfdiv.d	$vr6, $vr6, $vr7
	vst	$vr6, $t6, 0
	vmul.d	$vr4, $vr4, $vr0
	vffint.d.lu	$vr4, $vr4
	vfdiv.d	$vr4, $vr4, $vr5
	vst	$vr4, $t7, 0
	addi.d	$t4, $t4, -2
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB7_22
	b	.LBB7_17
.LBB7_23:                               # %for.cond1.preheader.i.preheader
	st.d	$t8, $sp, 48                    # 8-byte Folded Spill
	move	$a7, $zero
	lu12i.w	$a1, 2341
	ori	$a2, $a1, 1656
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.d	$a2, $s1, $a2
	ori	$a1, $a1, 1664
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a1
	ori	$a3, $s7, 3064
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	add.d	$a3, $s0, $a3
	addi.d	$a4, $fp, 8
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a5, $fp, $t1
	add.d	$a6, $s1, $t1
	add.d	$t0, $s0, $s8
	add.d	$t1, $s0, $t1
	sltu	$t0, $t0, $a6
	sltu	$t1, $s1, $t1
	and	$t0, $t0, $t1
	sltu	$a4, $a4, $a6
	sltu	$a5, $s1, $a5
	and	$t1, $a4, $a5
	sltu	$a1, $s1, $a1
	sltu	$a4, $fp, $a2
	and	$a1, $a1, $a4
	sltu	$a3, $s1, $a3
	sltu	$a2, $s0, $a2
	and	$a2, $a3, $a2
	or	$t2, $a1, $a2
	addi.d	$a1, $s0, 32
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a6, $a0, 1440
	add.d	$a0, $s0, $a6
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 40
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 40
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$t5, $s1, 32
	addi.d	$t4, $fp, 32
	lu12i.w	$a0, -3
	ori	$ra, $a0, 2688
	lu12i.w	$a0, 4
	ori	$s7, $a0, 2816
	vldi	$vr4, -800
	ori	$a0, $zero, 1000
	ori	$a2, $zero, 999
	lu12i.w	$a1, 419430
	ori	$a1, $a1, 1638
	lu32i.d	$a1, 419430
	lu52i.d	$a1, $a1, -1026
	xvreplgr2vr.d	$xr0, $a1
	lu52i.d	$a1, $zero, -1026
	xvreplgr2vr.d	$xr5, $a1
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_24:                               # %vector.ph226
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_30 Depth 3
                                        #     Child Loop BB7_34 Depth 2
                                        #       Child Loop BB7_36 Depth 3
                                        #       Child Loop BB7_39 Depth 3
                                        #     Child Loop BB7_42 Depth 2
                                        #       Child Loop BB7_45 Depth 3
                                        #       Child Loop BB7_48 Depth 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	xvldrepl.d	$xr3, $a1, 0
	ori	$a1, $zero, 1200
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_25:                               # %vector.body229
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $a3, -32
	xvst	$xr3, $a3, 0
	addi.d	$a1, $a1, -8
	addi.d	$a3, $a3, 64
	bnez	$a1, .LBB7_25
# %bb.26:                               # %for.cond10.preheader.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	ori	$a4, $zero, 1
	move	$t7, $s0
	move	$t8, $s1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %for.inc33.i
                                        #   in Loop: Header=BB7_28 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$s0, $s0, $s8
	add.d	$t8, $t8, $s8
	add.d	$t7, $t7, $s8
	beq	$a4, $a0, .LBB7_33
.LBB7_28:                               # %for.cond10.preheader.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_32 Depth 3
                                        #       Child Loop BB7_30 Depth 3
	beqz	$t0, .LBB7_31
# %bb.29:                               # %for.body12.i.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	move	$a1, $ra
	.p2align	4, , 16
.LBB7_30:                               # %for.body12.i
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a3, $t7, $a1
	add.d	$a5, $t8, $a1
	fldx.d	$fa3, $a5, $s7
	fldx.d	$fa6, $a5, $s8
	fldx.d	$fa7, $a3, $s7
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	addi.d	$a1, $a1, 8
	fstx.d	$fa3, $a3, $s7
	bnez	$a1, .LBB7_30
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_31:                               # %vector.body214.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	ori	$a1, $zero, 1200
	move	$a3, $t8
	move	$a5, $s0
	.p2align	4, , 16
.LBB7_32:                               # %vector.body214
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t3, $a3, $s8
	xvldx	$xr3, $a3, $s8
	xvld	$xr6, $t3, 32
	xvld	$xr7, $a3, 0
	xvld	$xr8, $a3, 32
	xvld	$xr9, $a5, -32
	xvld	$xr10, $a5, 0
	xvfsub.d	$xr3, $xr3, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr3, $xr3, $xr5, $xr9
	xvfmadd.d	$xr6, $xr6, $xr5, $xr10
	xvst	$xr3, $a5, -32
	xvst	$xr6, $a5, 0
	addi.d	$a1, $a1, -8
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	bnez	$a1, .LBB7_32
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_33:                               # %for.cond39.preheader.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$a4, $zero
	move	$t7, $zero
	ld.d	$t8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_34:                               # %for.cond39.preheader.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_36 Depth 3
                                        #       Child Loop BB7_39 Depth 3
	ori	$a3, $zero, 1
	bnez	$t1, .LBB7_38
# %bb.35:                               # %vector.body195.preheader
                                        #   in Loop: Header=BB7_34 Depth=2
	ori	$a1, $zero, 1192
	move	$a3, $t8
	move	$a5, $s0
	.p2align	4, , 16
.LBB7_36:                               # %vector.body195
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $a5, -32
	xvld	$xr6, $a5, 0
	xvld	$xr7, $a5, -40
	xvld	$xr8, $a5, -8
	xvld	$xr9, $a3, -32
	xvld	$xr10, $a3, 0
	xvfsub.d	$xr3, $xr3, $xr7
	xvfsub.d	$xr6, $xr6, $xr8
	xvfmadd.d	$xr3, $xr3, $xr5, $xr9
	xvfmadd.d	$xr6, $xr6, $xr5, $xr10
	xvst	$xr3, $a3, -32
	xvst	$xr6, $a3, 0
	addi.d	$a1, $a1, -8
	addi.d	$a5, $a5, 64
	addi.d	$a3, $a3, 64
	bnez	$a1, .LBB7_36
# %bb.37:                               #   in Loop: Header=BB7_34 Depth=2
	ori	$a3, $zero, 1193
.LBB7_38:                               # %for.body41.i.preheader
                                        #   in Loop: Header=BB7_34 Depth=2
	addi.d	$a1, $a3, -1200
	alsl.d	$a3, $a3, $a4, 3
	.p2align	4, , 16
.LBB7_39:                               # %for.body41.i
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s1, $a3
	fldx.d	$fa3, $s1, $a3
	fld.d	$fa6, $a5, -8
	fldx.d	$fa7, $fp, $a3
	fsub.d	$fa3, $fa3, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa7
	fstx.d	$fa3, $fp, $a3
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB7_39
# %bb.40:                               # %for.inc63.i
                                        #   in Loop: Header=BB7_34 Depth=2
	addi.d	$t7, $t7, 1
	add.d	$s0, $s0, $s8
	add.d	$t8, $t8, $s8
	add.d	$a4, $a4, $s8
	bne	$t7, $a0, .LBB7_34
# %bb.41:                               # %for.cond70.preheader.i.preheader
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$s5, $zero
	move	$a4, $zero
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$s6, $s0
	move	$a5, $t4
	move	$a3, $t5
	.p2align	4, , 16
.LBB7_42:                               # %for.cond70.preheader.i
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_45 Depth 3
                                        #       Child Loop BB7_48 Depth 3
	beqz	$t2, .LBB7_44
# %bb.43:                               #   in Loop: Header=BB7_42 Depth=2
	move	$a1, $zero
	b	.LBB7_47
	.p2align	4, , 16
.LBB7_44:                               # %vector.body172.preheader
                                        #   in Loop: Header=BB7_42 Depth=2
	ori	$a1, $zero, 1192
	move	$s0, $s6
	ori	$t3, $zero, 1192
	move	$t8, $a5
	move	$t7, $a3
	.p2align	4, , 16
.LBB7_45:                               # %vector.body172
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $t7, -32
	xvld	$xr6, $t8, -24
	xvld	$xr7, $t8, 8
	xvld	$xr8, $t8, -32
	xvld	$xr9, $t8, 0
	add.d	$t6, $s0, $a6
	xvld	$xr10, $t6, -32
	xvfsub.d	$xr6, $xr6, $xr8
	xvfsub.d	$xr7, $xr7, $xr9
	xvldx	$xr8, $s0, $a6
	xvfadd.d	$xr6, $xr6, $xr10
	xvld	$xr9, $s0, 0
	xvld	$xr10, $s0, 32
	xvfadd.d	$xr7, $xr7, $xr8
	xvld	$xr8, $t7, 0
	xvfsub.d	$xr6, $xr6, $xr9
	xvfsub.d	$xr7, $xr7, $xr10
	xvfmadd.d	$xr3, $xr6, $xr0, $xr3
	xvfmadd.d	$xr6, $xr7, $xr0, $xr8
	xvst	$xr3, $t7, -32
	xvst	$xr6, $t7, 0
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$t3, $t3, -8
	addi.d	$s0, $s0, 64
	bnez	$t3, .LBB7_45
# %bb.46:                               #   in Loop: Header=BB7_42 Depth=2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
.LBB7_47:                               # %for.body73.i.preheader
                                        #   in Loop: Header=BB7_42 Depth=2
	alsl.d	$t3, $a1, $s5, 3
	addi.d	$a1, $a1, -1199
	.p2align	4, , 16
.LBB7_48:                               # %for.body73.i
                                        #   Parent Loop BB7_24 Depth=1
                                        #     Parent Loop BB7_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa6, $s1, $t3
	add.d	$t6, $fp, $t3
	fld.d	$fa7, $t6, 8
	fldx.d	$ft0, $fp, $t3
	add.d	$t6, $s0, $t3
	fldx.d	$ft1, $t6, $s8
	fldx.d	$ft2, $s0, $t3
	pcalau12i	$t6, %pc_hi20(.LCPI7_4)
	fld.d	$fa3, $t6, %pc_lo12(.LCPI7_4)
	fsub.d	$fa7, $fa7, $ft0
	fadd.d	$fa7, $fa7, $ft1
	fsub.d	$fa7, $fa7, $ft2
	fmadd.d	$fa6, $fa7, $fa3, $fa6
	fstx.d	$fa6, $s1, $t3
	addi.d	$a1, $a1, 1
	addi.d	$t3, $t3, 8
	bnez	$a1, .LBB7_48
# %bb.49:                               # %for.inc105.i
                                        #   in Loop: Header=BB7_42 Depth=2
	addi.d	$a4, $a4, 1
	add.d	$a3, $a3, $s8
	add.d	$a5, $a5, $s8
	add.d	$s6, $s6, $s8
	add.d	$s5, $s5, $s8
	bne	$a4, $a2, .LBB7_42
# %bb.50:                               # %for.inc108.i
                                        #   in Loop: Header=BB7_24 Depth=1
	addi.d	$a7, $a7, 1
	ori	$a1, $zero, 500
	bne	$a7, $a1, .LBB7_24
# %bb.51:                               # %vector.body236.preheader
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vld	$vr4, $a0, %pc_lo12(.LCPI7_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 32
	ori	$a1, $zero, 496
	.p2align	4, , 16
.LBB7_52:                               # %vector.body236
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr5, $vr4, 4
	vext2xv.du.wu	$xr6, $xr4
	xvffint.d.lu	$xr6, $xr6
	vext2xv.du.wu	$xr5, $xr5
	xvffint.d.lu	$xr5, $xr5
	xvst	$xr6, $a0, -32
	xvst	$xr5, $a0, 0
	vaddi.wu	$vr4, $vr4, 8
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 64
	bnez	$a1, .LBB7_52
# %bb.53:                               # %for.body.i77
	move	$a0, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a7, $zero
	ori	$a1, $zero, 0
	ori	$a4, $zero, 0
	lu32i.d	$a4, -65536
	lu52i.d	$a4, $a4, 1031
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	stptr.d	$a4, $a5, 3968
	ori	$a4, $zero, 0
	lu32i.d	$a4, -61440
	lu52i.d	$a4, $a4, 1031
	stptr.d	$a4, $a5, 3976
	ori	$a4, $zero, 0
	lu32i.d	$a4, -57344
	lu52i.d	$a4, $a4, 1031
	stptr.d	$a4, $a5, 3984
	lu32i.d	$a1, -53248
	lu52i.d	$a1, $a1, 1031
	stptr.d	$a1, $a5, 3992
	sub.d	$a1, $s3, $s2
	sub.d	$a4, $s4, $s2
	sub.d	$a5, $s4, $s3
	sltui	$a1, $a1, 16
	sltui	$a4, $a4, 16
	or	$a1, $a1, $a4
	sltui	$a4, $a5, 16
	or	$t0, $a1, $a4
	lu12i.w	$a1, -3
	ori	$t1, $a1, 2688
	ori	$t2, $zero, 1000
	move	$t3, $s2
	move	$t4, $s3
	move	$t5, $s4
	ld.d	$t8, $sp, 48                    # 8-byte Folded Reload
	b	.LBB7_55
	.p2align	4, , 16
.LBB7_54:                               # %for.inc39.i101
                                        #   in Loop: Header=BB7_55 Depth=1
	addi.d	$a7, $a7, 1
	add.d	$t5, $t5, $s8
	add.d	$t4, $t4, $s8
	add.d	$t3, $t3, $s8
	addi.w	$a3, $a3, 3
	addi.d	$a2, $a2, 1
	addi.w	$a0, $a0, 2
	beq	$a7, $t2, .LBB7_60
.LBB7_55:                               # %for.cond5.preheader.i83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_59 Depth 2
                                        #     Child Loop BB7_57 Depth 2
	beqz	$t0, .LBB7_58
# %bb.56:                               # %for.body8.i88.preheader
                                        #   in Loop: Header=BB7_55 Depth=1
	move	$a4, $zero
	move	$a1, $t1
	.p2align	4, , 16
.LBB7_57:                               # %for.body8.i88
                                        #   Parent Loop BB7_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $a0, $a4
	add.d	$t6, $a3, $a4
	add.w	$a4, $a2, $a4
	bstrpick.d	$t7, $a4, 31, 0
	movgr2fr.d	$fa4, $t7
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$t7, $t3, $a1
	fstx.d	$fa4, $t7, $s8
	bstrpick.d	$a5, $a5, 31, 0
	movgr2fr.d	$fa4, $a5
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa2
	add.d	$a5, $t4, $a1
	fstx.d	$fa4, $a5, $s8
	bstrpick.d	$a5, $t6, 31, 0
	movgr2fr.d	$fa4, $a5
	ffint.d.l	$fa4, $fa4
	fdiv.d	$fa4, $fa4, $fa1
	add.d	$a5, $t5, $a1
	addi.d	$a1, $a1, 8
	fstx.d	$fa4, $a5, $s8
	bnez	$a1, .LBB7_57
	b	.LBB7_54
	.p2align	4, , 16
.LBB7_58:                               # %vector.ph251
                                        #   in Loop: Header=BB7_55 Depth=1
	vld	$vr5, $t8, %pc_lo12(.LCPI7_1)
	vreplgr2vr.d	$vr4, $a7
	ori	$a4, $zero, 1200
	move	$a5, $t3
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB7_59:                               # %vector.body254
                                        #   Parent Loop BB7_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.du	$vr6, $vr5, 1
	vmul.d	$vr6, $vr6, $vr4
	vffint.d.lu	$vr6, $vr6
	ori	$a1, $zero, 0
	lu32i.d	$a1, -49152
	lu52i.d	$a1, $a1, 1032
	vreplgr2vr.d	$vr7, $a1
	vfdiv.d	$vr6, $vr6, $vr7
	vst	$vr6, $a5, 0
	vaddi.du	$vr6, $vr5, 3
	vaddi.du	$vr5, $vr5, 2
	vmul.d	$vr8, $vr5, $vr4
	vffint.d.lu	$vr8, $vr8
	ori	$a1, $zero, 0
	lu32i.d	$a1, 180224
	lu52i.d	$a1, $a1, 1033
	vreplgr2vr.d	$vr9, $a1
	vfdiv.d	$vr8, $vr8, $vr9
	vst	$vr8, $t6, 0
	vmul.d	$vr6, $vr6, $vr4
	vffint.d.lu	$vr6, $vr6
	vfdiv.d	$vr6, $vr6, $vr7
	vst	$vr6, $t7, 0
	addi.d	$a4, $a4, -2
	addi.d	$t7, $t7, 16
	addi.d	$t6, $t6, 16
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB7_59
	b	.LBB7_54
.LBB7_60:                               # %for.cond1.preheader.i105.preheader
	move	$a1, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $s4, $a0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $s2, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a5, $s3, $a3
	addi.d	$t1, $s2, 8
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a4, $s2, $t0
	add.d	$a7, $s4, $t0
	add.d	$a3, $s3, $s8
	add.d	$t0, $s3, $t0
	sltu	$a3, $a3, $a7
	sltu	$t0, $s4, $t0
	and	$a3, $a3, $t0
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	sltu	$a7, $t1, $a7
	sltu	$a4, $s4, $a4
	and	$a4, $a7, $a4
	sltu	$a2, $s4, $a2
	sltu	$a7, $s2, $a0
	and	$a2, $a2, $a7
	sltu	$a5, $s4, $a5
	sltu	$a0, $s3, $a0
	and	$a0, $a5, $a0
	or	$a0, $a2, $a0
	addi.d	$a5, $s3, 32
	add.d	$a6, $s3, $a6
	addi.d	$a7, $s4, 40
	addi.d	$t0, $s2, 40
	lu12i.w	$a2, -3
	ori	$t1, $a2, 2688
	vldi	$vr1, -800
	ori	$t2, $zero, 1000
	ori	$t3, $zero, 999
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr2, $a2
	.p2align	4, , 16
.LBB7_61:                               # %vector.ph325
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_62 Depth 2
                                        #     Child Loop BB7_65 Depth 2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_67 Depth 3
                                        #     Child Loop BB7_71 Depth 2
                                        #       Child Loop BB7_73 Depth 3
                                        #       Child Loop BB7_76 Depth 3
                                        #     Child Loop BB7_79 Depth 2
                                        #       Child Loop BB7_82 Depth 3
                                        #       Child Loop BB7_84 Depth 3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a2, 3
	xvldrepl.d	$xr4, $a2, 0
	ori	$a2, $zero, 1200
	move	$t4, $a5
	.p2align	4, , 16
.LBB7_62:                               # %vector.body328
                                        #   Parent Loop BB7_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr4, $t4, -32
	xvst	$xr4, $t4, 0
	addi.d	$a2, $a2, -8
	addi.d	$t4, $t4, 64
	bnez	$a2, .LBB7_62
# %bb.63:                               # %for.cond10.preheader.i114.preheader
                                        #   in Loop: Header=BB7_61 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $s3
	move	$t7, $s4
	move	$t8, $a6
	b	.LBB7_65
	.p2align	4, , 16
.LBB7_64:                               # %for.inc34.i
                                        #   in Loop: Header=BB7_65 Depth=2
	addi.d	$t5, $t5, 1
	add.d	$t8, $t8, $s8
	add.d	$t7, $t7, $s8
	add.d	$t6, $t6, $s8
	beq	$t5, $t2, .LBB7_70
.LBB7_65:                               # %for.cond10.preheader.i114
                                        #   Parent Loop BB7_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_69 Depth 3
                                        #       Child Loop BB7_67 Depth 3
	beqz	$a3, .LBB7_68
# %bb.66:                               # %for.body12.i119.preheader
                                        #   in Loop: Header=BB7_65 Depth=2
	move	$a2, $t1
	.p2align	4, , 16
.LBB7_67:                               # %for.body12.i119
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t4, $t7, $a2
	fldx.d	$fa4, $t4, $s7
	fldx.d	$fa5, $t4, $s8
	add.d	$t4, $t6, $a2
	fldx.d	$fa6, $t4, $s7
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	addi.d	$a2, $a2, 8
	fstx.d	$fa4, $t4, $s7
	bnez	$a2, .LBB7_67
	b	.LBB7_64
	.p2align	4, , 16
.LBB7_68:                               # %vector.body313.preheader
                                        #   in Loop: Header=BB7_65 Depth=2
	ori	$s0, $zero, 1200
	move	$s5, $t7
	move	$s6, $t8
	.p2align	4, , 16
.LBB7_69:                               # %vector.body313
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s5, $s8
	xvldx	$xr4, $s5, $s8
	xvld	$xr5, $a2, 32
	xvld	$xr6, $s5, 0
	xvld	$xr7, $s5, 32
	xvld	$xr8, $s6, -32
	xvld	$xr9, $s6, 0
	xvfsub.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfmul.d	$xr4, $xr4, $xr2
	xvfmul.d	$xr5, $xr5, $xr2
	xvfsub.d	$xr4, $xr8, $xr4
	xvfsub.d	$xr5, $xr9, $xr5
	xvst	$xr4, $s6, -32
	xvst	$xr5, $s6, 0
	addi.d	$s0, $s0, -8
	addi.d	$s6, $s6, 64
	addi.d	$s5, $s5, 64
	bnez	$s0, .LBB7_69
	b	.LBB7_64
	.p2align	4, , 16
.LBB7_70:                               # %for.cond40.preheader.i.preheader
                                        #   in Loop: Header=BB7_61 Depth=1
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $t0
	move	$t8, $a7
	.p2align	4, , 16
.LBB7_71:                               # %for.cond40.preheader.i
                                        #   Parent Loop BB7_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_73 Depth 3
                                        #       Child Loop BB7_76 Depth 3
	ori	$t4, $zero, 1
	bnez	$a4, .LBB7_75
# %bb.72:                               # %vector.body293.preheader
                                        #   in Loop: Header=BB7_71 Depth=2
	ori	$s0, $zero, 1192
	move	$s5, $t7
	move	$t4, $t8
	.p2align	4, , 16
.LBB7_73:                               # %vector.body293
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr4, $t4, -32
	xvld	$xr5, $t4, 0
	xvld	$xr6, $t4, -40
	xvld	$xr7, $t4, -8
	xvld	$xr8, $s5, -32
	xvld	$xr9, $s5, 0
	xvfsub.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr5, $xr5, $xr7
	xvfmul.d	$xr4, $xr4, $xr2
	xvfmul.d	$xr5, $xr5, $xr2
	xvfsub.d	$xr4, $xr8, $xr4
	xvfsub.d	$xr5, $xr9, $xr5
	xvst	$xr4, $s5, -32
	xvst	$xr5, $s5, 0
	addi.d	$s0, $s0, -8
	addi.d	$t4, $t4, 64
	addi.d	$s5, $s5, 64
	bnez	$s0, .LBB7_73
# %bb.74:                               #   in Loop: Header=BB7_71 Depth=2
	ori	$t4, $zero, 1193
.LBB7_75:                               # %for.body42.i.preheader
                                        #   in Loop: Header=BB7_71 Depth=2
	addi.d	$a2, $t4, -1200
	alsl.d	$t4, $t4, $t5, 3
	.p2align	4, , 16
.LBB7_76:                               # %for.body42.i
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s0, $s4, $t4
	fldx.d	$fa4, $s4, $t4
	fld.d	$fa5, $s0, -8
	fldx.d	$fa6, $s2, $t4
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa1
	fadd.d	$fa4, $fa6, $fa4
	fstx.d	$fa4, $s2, $t4
	addi.d	$a2, $a2, 1
	addi.d	$t4, $t4, 8
	bnez	$a2, .LBB7_76
# %bb.77:                               # %for.inc66.i
                                        #   in Loop: Header=BB7_71 Depth=2
	addi.d	$t6, $t6, 1
	add.d	$t8, $t8, $s8
	add.d	$t7, $t7, $s8
	add.d	$t5, $t5, $s8
	bne	$t6, $t2, .LBB7_71
# %bb.78:                               # %for.cond73.preheader.i.preheader
                                        #   in Loop: Header=BB7_61 Depth=1
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $s4
	move	$t8, $s3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_79:                               # %for.cond73.preheader.i
                                        #   Parent Loop BB7_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_82 Depth 3
                                        #       Child Loop BB7_84 Depth 3
	beqz	$a0, .LBB7_81
# %bb.80:                               #   in Loop: Header=BB7_79 Depth=2
	move	$s5, $zero
	b	.LBB7_83
	.p2align	4, , 16
.LBB7_81:                               # %vector.body274.preheader
                                        #   in Loop: Header=BB7_79 Depth=2
	ori	$s5, $zero, 1196
	move	$s6, $t7
	move	$ra, $t8
	ori	$t4, $zero, 1196
	move	$s0, $a2
	.p2align	4, , 16
.LBB7_82:                               # %vector.body274
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr4, $s0, 0
	xvld	$xr5, $s0, -8
	xvldx	$xr6, $ra, $s8
	xvld	$xr7, $ra, 0
	xvfsub.d	$xr4, $xr4, $xr5
	xvld	$xr5, $s6, 0
	xvfadd.d	$xr4, $xr4, $xr6
	xvfsub.d	$xr4, $xr4, $xr7
	xvfmul.d	$xr4, $xr4, $xr0
	xvfadd.d	$xr4, $xr5, $xr4
	xvst	$xr4, $s6, 0
	addi.d	$s0, $s0, 32
	addi.d	$t4, $t4, -4
	addi.d	$ra, $ra, 32
	addi.d	$s6, $s6, 32
	bnez	$t4, .LBB7_82
.LBB7_83:                               # %for.body76.i.preheader
                                        #   in Loop: Header=BB7_79 Depth=2
	alsl.d	$t4, $s5, $t5, 3
	addi.d	$s0, $s5, -1199
	.p2align	4, , 16
.LBB7_84:                               # %for.body76.i
                                        #   Parent Loop BB7_61 Depth=1
                                        #     Parent Loop BB7_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $s2, $t4
	fld.d	$fa4, $s5, 8
	fldx.d	$fa5, $s2, $t4
	add.d	$s5, $s3, $t4
	fldx.d	$fa6, $s5, $s8
	fldx.d	$fa7, $s3, $t4
	fsub.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $s4, $t4
	fadd.d	$fa4, $fa4, $fa6
	fsub.d	$fa4, $fa4, $fa7
	fmul.d	$fa4, $fa4, $fa3
	fadd.d	$fa4, $fa5, $fa4
	fstx.d	$fa4, $s4, $t4
	addi.d	$s0, $s0, 1
	addi.d	$t4, $t4, 8
	bnez	$s0, .LBB7_84
# %bb.85:                               # %for.inc110.i
                                        #   in Loop: Header=BB7_79 Depth=2
	addi.d	$t6, $t6, 1
	add.d	$a2, $a2, $s8
	add.d	$t8, $t8, $s8
	add.d	$t7, $t7, $s8
	add.d	$t5, $t5, $s8
	bne	$t6, $t3, .LBB7_79
# %bb.86:                               # %for.inc113.i
                                        #   in Loop: Header=BB7_61 Depth=1
	addi.d	$a1, $a1, 1
	ori	$a2, $zero, 500
	bne	$a1, $a2, .LBB7_61
# %bb.87:                               # %kernel_fdtd_2d_StrictFP.exit
	lu12i.w	$a0, 4
	ori	$a0, $a0, 2817
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$s0, $zero
	move	$s5, $zero
	stx.b	$zero, $a0, $s7
	addi.d	$a0, $a0, 7
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2688
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s7, $zero, 3
.LBB7_88:                               # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_89 Depth 2
                                        #     Child Loop BB7_91 Depth 2
                                        #     Child Loop BB7_93 Depth 2
	add.d	$a0, $s2, $s0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_89:                               # %for.body6.i
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s7, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_89
# %bb.90:                               # %for.end.i
                                        #   in Loop: Header=BB7_88 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_91:                               # %for.body16.i
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a2
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $a1, -7
	st.b	$a3, $a1, -6
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $a1, -5
	st.b	$a4, $a1, -4
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $a1, -3
	st.b	$a5, $a1, -2
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $a1, -1
	st.b	$a6, $a1, 0
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $a1, 1
	st.b	$a7, $a1, 2
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $a1, 3
	st.b	$t0, $a1, 4
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $a1, 5
	st.b	$t1, $a1, 6
	bstrins.d	$t2, $s7, 63, 4
	st.b	$t2, $a1, 7
	st.b	$t2, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 16
	bnez	$a2, .LBB7_91
# %bb.92:                               # %for.end24.i
                                        #   in Loop: Header=BB7_88 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s0
	lu12i.w	$a1, -3
	ori	$a1, $a1, 2688
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_93:                               # %for.body29.i
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a0, $a1
	ldptr.d	$a3, $a3, 9600
	srli.d	$a4, $a3, 8
	srli.d	$a5, $a3, 16
	srli.d	$a6, $a3, 24
	srli.d	$a7, $a3, 32
	srli.d	$t0, $a3, 40
	srli.d	$t1, $a3, 48
	srli.d	$t2, $a3, 56
	bstrins.d	$a3, $s7, 63, 4
	st.b	$a3, $a2, -7
	st.b	$a3, $a2, -6
	bstrins.d	$a4, $s7, 63, 4
	st.b	$a4, $a2, -5
	st.b	$a4, $a2, -4
	bstrins.d	$a5, $s7, 63, 4
	st.b	$a5, $a2, -3
	st.b	$a5, $a2, -2
	bstrins.d	$a6, $s7, 63, 4
	st.b	$a6, $a2, -1
	st.b	$a6, $a2, 0
	bstrins.d	$a7, $s7, 63, 4
	st.b	$a7, $a2, 1
	st.b	$a7, $a2, 2
	bstrins.d	$t0, $s7, 63, 4
	st.b	$t0, $a2, 3
	st.b	$t0, $a2, 4
	bstrins.d	$t1, $s7, 63, 4
	st.b	$t1, $a2, 5
	st.b	$t1, $a2, 6
	bstrins.d	$t2, $s7, 63, 4
	st.b	$t2, $a2, 7
	st.b	$t2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB7_93
# %bb.94:                               # %for.end37.i
                                        #   in Loop: Header=BB7_88 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	add.d	$s0, $s0, $s8
	ori	$a0, $zero, 1000
	bne	$s5, $a0, .LBB7_88
# %bb.95:                               # %print_array.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
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
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB7_96:                               # %if.then.i.i
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

	.section	".note.GNU-stack","",@progbits
	.addrsig
