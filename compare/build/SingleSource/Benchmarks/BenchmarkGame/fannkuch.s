	.file	"fannkuch.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
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
	ori	$a0, $zero, 11
	ori	$a1, $zero, 4
	ori	$s4, $zero, 11
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 11
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 11
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$s1, $a0
	move	$s5, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	addi.d	$a0, $s0, 4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	xvst	$xr0, $s0, 4
	ori	$a0, $zero, 9
	lu32i.d	$a0, 10
	st.d	$a0, $s0, 36
	addi.d	$s6, $fp, 4
	addi.d	$a0, $s1, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s8, $fp, -4
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$t3, $zero, 29
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	ori	$s7, $zero, 2
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %for.cond7.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_10 Depth 3
	blt	$t3, $s2, .LBB0_3
# %bb.2:                                # %for.body14.preheader.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a0, $s0, 0
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 4
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 32
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 36
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 29
	addi.w	$s2, $s2, 1
.LBB0_3:                                # %if.end23.i
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a0, $s5, 1
	beqz	$a0, .LBB0_11
.LBB0_4:                                # %for.end32.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB0_22
# %bb.5:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 10
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ori	$a2, $zero, 10
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	beq	$a1, $a3, .LBB0_22
# %bb.6:                                # %for.body44.preheader.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 32
	xvld	$xr0, $a1, 0
	move	$a1, $zero
	st.d	$a2, $s6, 32
	xvst	$xr0, $s6, 0
	move	$a2, $a0
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %for.end69.i
                                        #   in Loop: Header=BB0_8 Depth=2
	slli.d	$a3, $a2, 2
	ldx.w	$a4, $fp, $a3
	addi.d	$a1, $a1, 1
	stx.w	$a2, $fp, $a3
	move	$a2, $a4
	beqz	$a4, .LBB0_21
.LBB0_8:                                # %do.body.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
	bge	$s7, $a2, .LBB0_7
# %bb.9:                                # %for.body57.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a5, $a2, -2
	alsl.d	$a3, $a2, $s8, 2
	ori	$a4, $zero, 1
	move	$a6, $s6
	.p2align	4, , 16
.LBB0_10:                               # %for.body57.i
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a3, 0
	ld.w	$t0, $a6, 0
	move	$t1, $a5
	st.w	$a7, $a6, 0
	st.w	$t0, $a3, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -4
	blt	$a4, $t1, .LBB0_10
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_11:                               # %for.body27.preheader.i
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	bstrpick.d	$a2, $s4, 31, 0
	addi.d	$a1, $s4, 2
	andi	$a1, $a1, 28
	addi.d	$a3, $a2, -2
	xvreplgr2vr.d	$xr0, $a3
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 2
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %pred.store.continue10
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a0, $a0, 4
	addi.d	$s4, $s4, -4
	addi.d	$a2, $a2, -16
	beq	$a1, $a0, .LBB0_4
.LBB0_13:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a3, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a3, %pc_lo12(.LCPI0_1)
	xvreplgr2vr.d	$xr2, $a0
	xvor.v	$xr1, $xr2, $xr1
	xvsle.du	$xr1, $xr1, $xr0
	xvpickve2gr.d	$a3, $xr1, 0
	andi	$a3, $a3, 1
	bnez	$a3, .LBB0_17
# %bb.14:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_13 Depth=2
	xvpickve2gr.d	$a3, $xr1, 1
	andi	$a3, $a3, 1
	bnez	$a3, .LBB0_18
.LBB0_15:                               # %pred.store.continue6
                                        #   in Loop: Header=BB0_13 Depth=2
	xvpickve2gr.d	$a3, $xr1, 2
	andi	$a3, $a3, 1
	bnez	$a3, .LBB0_19
.LBB0_16:                               # %pred.store.continue8
                                        #   in Loop: Header=BB0_13 Depth=2
	xvpickve2gr.d	$a3, $xr1, 3
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_12
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_17:                               # %pred.store.if
                                        #   in Loop: Header=BB0_13 Depth=2
	st.w	$s4, $a2, 4
	xvpickve2gr.d	$a3, $xr1, 1
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_15
.LBB0_18:                               # %pred.store.if5
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a3, $s4, -1
	st.w	$a3, $a2, 0
	xvpickve2gr.d	$a3, $xr1, 2
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_16
.LBB0_19:                               # %pred.store.if7
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a3, $s4, -2
	st.w	$a3, $a2, -4
	xvpickve2gr.d	$a3, $xr1, 3
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_12
.LBB0_20:                               # %pred.store.if9
                                        #   in Loop: Header=BB0_13 Depth=2
	addi.d	$a3, $s4, -3
	st.w	$a3, $a2, -8
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_21:                               # %do.end.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	slt	$a2, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
.LBB0_22:                               # %if.end79.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a1, $s0, 4
	ld.w	$a2, $s1, 4
	st.w	$a1, $s0, 0
	st.w	$a0, $s0, 4
	addi.d	$a0, $a2, -1
	st.w	$a0, $s1, 4
	ori	$s4, $zero, 1
	slt	$s5, $s4, $a2
	blt	$s4, $a2, .LBB0_1
# %bb.23:                               # %if.end101.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s0, 4
	ld.w	$a2, $s1, 8
	st.d	$a0, $s0, 0
	st.w	$a1, $s0, 8
	addi.d	$a1, $a2, -1
	st.w	$a1, $s1, 8
	ori	$s4, $zero, 2
	ori	$a1, $zero, 1
	blt	$a1, $a2, .LBB0_1
# %bb.24:                               # %if.end101.1.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 8
	ld.d	$a2, $a2, 0
	ld.w	$a3, $s1, 12
	st.w	$a1, $s0, 8
	st.d	$a2, $s0, 0
	st.w	$a0, $s0, 12
	addi.d	$a0, $a3, -1
	st.w	$a0, $s1, 12
	ori	$s4, $zero, 3
	ori	$a0, $zero, 1
	blt	$a0, $a3, .LBB0_1
# %bb.25:                               # %if.end101.2.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 16
	vst	$vr0, $s0, 0
	st.w	$a0, $s0, 16
	addi.d	$a0, $a1, -1
	st.w	$a0, $s1, 16
	ori	$s4, $zero, 4
	ori	$a0, $zero, 1
	blt	$a0, $a1, .LBB0_1
# %bb.26:                               # %if.end101.3.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 16
	vld	$vr0, $a1, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s1, 20
	st.w	$a0, $s0, 16
	vst	$vr0, $s0, 0
	st.w	$a1, $s0, 20
	addi.d	$a0, $a2, -1
	st.w	$a0, $s1, 20
	ori	$s4, $zero, 5
	ori	$a0, $zero, 1
	blt	$a0, $a2, .LBB0_1
# %bb.27:                               # %if.end101.4.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	vld	$vr0, $a1, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s1, 24
	st.d	$a0, $s0, 16
	vst	$vr0, $s0, 0
	st.w	$a1, $s0, 24
	addi.d	$a0, $a2, -1
	st.w	$a0, $s1, 24
	ori	$s4, $zero, 6
	ori	$a0, $zero, 1
	blt	$a0, $a2, .LBB0_1
# %bb.28:                               # %if.end101.5.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $s0, 0
	ld.w	$a3, $s1, 28
	st.w	$a1, $s0, 24
	st.d	$a2, $s0, 16
	st.w	$a0, $s0, 28
	addi.d	$a0, $a3, -1
	st.w	$a0, $s1, 28
	ori	$s4, $zero, 7
	ori	$a0, $zero, 1
	blt	$a0, $a3, .LBB0_1
# %bb.29:                               # %if.end101.6.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr0, $a0, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s1, 32
	xvst	$xr0, $s0, 0
	st.w	$a0, $s0, 32
	addi.d	$a0, $a1, -1
	st.w	$a0, $s1, 32
	ori	$s4, $zero, 8
	ori	$a0, $zero, 1
	blt	$a0, $a1, .LBB0_1
# %bb.30:                               # %if.end101.7.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 32
	xvld	$xr0, $a1, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s1, 36
	st.w	$a0, $s0, 32
	xvst	$xr0, $s0, 0
	st.w	$a1, $s0, 36
	addi.d	$a0, $a2, -1
	st.w	$a0, $s1, 36
	ori	$s4, $zero, 9
	ori	$a0, $zero, 1
	blt	$a0, $a2, .LBB0_1
# %bb.31:                               # %if.end101.8.i
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 32
	xvld	$xr0, $a1, 0
	ld.w	$a2, $s0, 0
	ld.w	$a1, $s1, 40
	st.d	$a0, $s0, 32
	xvst	$xr0, $s0, 0
	st.w	$a2, $s0, 40
	addi.d	$a0, $a1, -1
	st.w	$a0, $s1, 40
	ori	$s4, $zero, 10
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	blt	$a0, $a1, .LBB0_1
# %bb.32:                               # %fannkuch.exit
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 11
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Pfannkuchen(%d) = %ld\n"
	.size	.L.str, 23

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
