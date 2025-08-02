	.file	"himenobmtxpa.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.word	1                               # 0x1
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_1:
	.word	4                               # 0x4
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_2:
	.word	3                               # 0x3
	.word	64                              # 0x40
	.word	64                              # 0x40
	.word	128                             # 0x80
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_3:
	.word	0x45781000                      # float 3969
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %for.cond1.preheader.lr.ph.split.us.i
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 64
	ori	$a2, $zero, 64
	ori	$a3, $zero, 128
	ori	$s3, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 63
	ori	$a2, $zero, 63
	ori	$a3, $zero, 127
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(p)
	addi.d	$fp, $a0, %pc_lo12(p)
	vst	$vr0, $fp, 8
	lu12i.w	$s0, 512
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(bnd)
	addi.d	$fp, $a0, %pc_lo12(bnd)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(wrk1)
	addi.d	$fp, $a0, %pc_lo12(wrk1)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(wrk2)
	addi.d	$fp, $a0, %pc_lo12(wrk2)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$s1, $a0, %pc_lo12(a)
	vst	$vr0, $s1, 8
	lu12i.w	$a0, 2048
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addu16i.d	$a0, $a0, 96
	addi.d	$s0, $a0, 256
	addu16i.d	$a0, $s4, 64
	addi.d	$fp, $a0, 256
	addu16i.d	$a0, $s4, 32
	addi.d	$s2, $a0, 256
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	st.d	$s4, $s1, 0
	pcalau12i	$a0, %pc_hi20(b)
	addi.d	$s7, $a0, %pc_lo12(b)
	vst	$vr0, $s7, 8
	lu12i.w	$s1, 1536
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $s7, 0
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$s5, $a0, %pc_lo12(c)
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s5, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $zero
	addu16i.d	$a1, $s1, 64
	addi.d	$s7, $a1, 256
	addu16i.d	$a1, $s1, 32
	addi.d	$s8, $a1, 256
	st.d	$s1, $s5, 0
	addi.d	$a1, $s6, 256
	lu12i.w	$s6, 8
	.p2align	4, , 16
.LBB0_1:                                # %for.cond4.preheader.lr.ph.split.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	pcalau12i	$a2, %pc_hi20(.LCPI0_3)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI0_3)
	mul.d	$a2, $a0, $a0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa1, $fa0
	xvreplve0.w	$xr0, $xr0
	move	$a2, $a1
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_2:                                # %for.cond4.preheader.us.us.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_2
# %bb.3:                                # %for.cond1.for.inc29_crit_edge.us.i
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $s3, .LBB0_1
# %bb.4:                                # %for.cond4.preheader.lr.ph.split.us.us.i52.preheader
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a1, $a1, 256
	lu12i.w	$a2, 260096
	xvreplgr2vr.w	$xr0, $a2
	ori	$a2, $zero, 64
	.p2align	4, , 16
.LBB0_5:                                # %for.cond4.preheader.lr.ph.split.us.us.i52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_6:                                # %for.cond4.preheader.us.us.i53
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_6
# %bb.7:                                # %for.cond1.for.inc23_crit_edge.us.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_5
# %bb.8:                                # %for.cond4.preheader.lr.ph.split.us.us.i75.preheader
	lu12i.w	$s5, 512
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s5
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	move	$a0, $zero
	addi.d	$a1, $s4, 256
	ori	$a2, $zero, 64
	.p2align	4, , 16
.LBB0_9:                                # %for.cond4.preheader.lr.ph.split.us.us.i131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_10:                               # %for.cond4.preheader.us.us.i132
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_10
# %bb.11:                               # %for.cond1.for.inc23_crit_edge.us.i128
                                        #   in Loop: Header=BB0_9 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_9
# %bb.12:                               # %for.cond4.preheader.lr.ph.split.us.us.i159.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_13:                               # %for.cond4.preheader.lr.ph.split.us.us.i159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	move	$a2, $s2
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_14:                               # %for.cond4.preheader.us.us.i160
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_14
# %bb.15:                               # %for.cond1.for.inc23_crit_edge.us.i156
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s2, $s2, $s6
	bne	$a0, $a1, .LBB0_13
# %bb.16:                               # %for.cond4.preheader.lr.ph.split.us.us.i188.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_17:                               # %for.cond4.preheader.lr.ph.split.us.us.i188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	move	$a2, $fp
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_18:                               # %for.cond4.preheader.us.us.i189
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_18
# %bb.19:                               # %for.cond1.for.inc23_crit_edge.us.i185
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$fp, $fp, $s6
	bne	$a0, $a1, .LBB0_17
# %bb.20:                               # %for.cond4.preheader.lr.ph.split.us.us.i218.preheader
	move	$a0, $zero
	lu12i.w	$a1, 254634
	ori	$a1, $a1, 2731
	xvreplgr2vr.w	$xr0, $a1
	ori	$a1, $zero, 64
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_21:                               # %for.cond4.preheader.lr.ph.split.us.us.i218
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	move	$a2, $s0
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_22:                               # %for.cond4.preheader.us.us.i219
                                        #   Parent Loop BB0_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_22
# %bb.23:                               # %for.cond1.for.inc23_crit_edge.us.i215
                                        #   in Loop: Header=BB0_21 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s0, $s0, $s6
	bne	$a0, $a1, .LBB0_21
# %bb.24:                               # %for.cond4.preheader.lr.ph.split.us.us.i248.preheader
	lu12i.w	$a2, 1536
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $s1, 256
	ori	$a2, $zero, 64
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB0_25:                               # %for.cond4.preheader.lr.ph.split.us.us.i338
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
	move	$a3, $a1
	ori	$a4, $zero, 64
	.p2align	4, , 16
.LBB0_26:                               # %for.cond4.preheader.us.us.i339
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a3, -256
	xvst	$xr0, $a3, -224
	xvst	$xr0, $a3, -192
	xvst	$xr0, $a3, -160
	xvst	$xr0, $a3, -128
	xvst	$xr0, $a3, -96
	xvst	$xr0, $a3, -64
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	xvst	$xr0, $a3, 64
	xvst	$xr0, $a3, 96
	xvst	$xr0, $a3, 128
	xvst	$xr0, $a3, 160
	xvst	$xr0, $a3, 192
	xvst	$xr0, $a3, 224
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 512
	bnez	$a4, .LBB0_26
# %bb.27:                               # %for.cond1.for.inc23_crit_edge.us.i335
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$a1, $a1, $s6
	bne	$a0, $a2, .LBB0_25
# %bb.28:                               # %for.cond4.preheader.lr.ph.split.us.us.i368.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_29:                               # %for.cond4.preheader.lr.ph.split.us.us.i368
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	move	$a2, $s8
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_30:                               # %for.cond4.preheader.us.us.i369
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_30
# %bb.31:                               # %for.cond1.for.inc23_crit_edge.us.i365
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s8, $s8, $s6
	bne	$a0, $a1, .LBB0_29
# %bb.32:                               # %for.cond4.preheader.lr.ph.split.us.us.i398.preheader
	move	$a0, $zero
	ori	$a1, $zero, 64
	.p2align	4, , 16
.LBB0_33:                               # %for.cond4.preheader.lr.ph.split.us.us.i398
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	move	$a2, $s7
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB0_34:                               # %for.cond4.preheader.us.us.i399
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $a2, -256
	xvst	$xr0, $a2, -224
	xvst	$xr0, $a2, -192
	xvst	$xr0, $a2, -160
	xvst	$xr0, $a2, -128
	xvst	$xr0, $a2, -96
	xvst	$xr0, $a2, -64
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 512
	bnez	$a3, .LBB0_34
# %bb.35:                               # %for.cond1.for.inc23_crit_edge.us.i395
                                        #   in Loop: Header=BB0_33 Depth=1
	addi.w	$a0, $a0, 1
	add.d	$s7, $s7, $s6
	bne	$a0, $a1, .LBB0_33
# %bb.36:                               # %mat_set.exit412
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$s2, $a0, %pc_lo12(a)
	pcalau12i	$a0, %pc_hi20(b)
	addi.d	$s1, $a0, %pc_lo12(b)
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$s0, $a0, %pc_lo12(c)
	pcalau12i	$a0, %pc_hi20(bnd)
	addi.d	$s5, $a0, %pc_lo12(bnd)
	pcalau12i	$a0, %pc_hi20(wrk1)
	addi.d	$s4, $a0, %pc_lo12(wrk1)
	pcalau12i	$a0, %pc_hi20(wrk2)
	addi.d	$s3, $a0, %pc_lo12(wrk2)
	ori	$a0, $zero, 64
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	move	$a5, $s5
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(jacobi)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB0_38
# %bb.37:                               # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_38:                               # %clearMat.exit
	ld.d	$a0, $s5, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	beqz	$a0, .LBB0_40
# %bb.39:                               # %if.then.i414
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %clearMat.exit415
	ld.d	$a0, $s4, 0
	st.d	$zero, $s5, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	beqz	$a0, .LBB0_42
# %bb.41:                               # %if.then.i417
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_42:                               # %clearMat.exit418
	ld.d	$a0, $s3, 0
	st.d	$zero, $s4, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s4, 0
	beqz	$a0, .LBB0_44
# %bb.43:                               # %if.then.i420
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %clearMat.exit421
	ld.d	$a0, $s2, 0
	st.d	$zero, $s3, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s3, 0
	beqz	$a0, .LBB0_46
# %bb.45:                               # %if.then.i423
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %clearMat.exit424
	ld.d	$a0, $s1, 0
	st.d	$zero, $s2, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	beqz	$a0, .LBB0_48
# %bb.47:                               # %if.then.i426
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %clearMat.exit427
	ld.d	$a0, $s0, 0
	st.d	$zero, $s1, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s1, 0
	beqz	$a0, .LBB0_50
# %bb.49:                               # %if.then.i429
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %clearMat.exit430
	st.d	$zero, $s0, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $s0, 0
	move	$a0, $zero
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.globl	newMat                          # -- Begin function newMat
	.p2align	5
	.type	newMat,@function
newMat:                                 # @newMat
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	st.w	$a1, $a0, 8
	st.w	$a2, $a0, 12
	st.w	$a3, $a0, 16
	st.w	$a4, $a0, 20
	mul.d	$a0, $a2, $a1
	mul.d	$a0, $a0, $a3
	mul.w	$a0, $a0, $a4
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	sltu	$a1, $zero, $a0
	st.d	$a0, $fp, 0
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	newMat, .Lfunc_end1-newMat
                                        # -- End function
	.globl	mat_set_init                    # -- Begin function mat_set_init
	.p2align	5
	.type	mat_set_init,@function
mat_set_init:                           # @mat_set_init
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 12
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB2_21
# %bb.1:                                # %for.cond1.preheader.lr.ph
	ld.w	$a2, $a0, 16
	blt	$a2, $a3, .LBB2_21
# %bb.2:                                # %for.cond1.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	move	$a3, $zero
	move	$a4, $zero
	addi.d	$a5, $a1, -1
	mul.d	$a6, $a5, $a5
	ld.wu	$a5, $a0, 20
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.d	$fa0, $a6
	ffint.s.l	$fa0, $fa0
	bstrpick.d	$a6, $a5, 30, 4
	slli.d	$a6, $a6, 4
	andi	$a7, $a5, 12
	bstrpick.d	$t0, $a5, 30, 2
	slli.d	$t0, $t0, 2
	mul.d	$t1, $a2, $a5
	sub.d	$t2, $zero, $t0
	addi.w	$t3, $a5, 0
	ori	$t4, $zero, 4
	ori	$t5, $zero, 16
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.cond1.for.inc29_crit_edge.us
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a4, $a4, 1
	add.w	$a3, $a3, $t1
	beq	$a4, $a1, .LBB2_20
.LBB2_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_19 Depth 3
	blez	$t3, .LBB2_3
# %bb.5:                                # %for.cond4.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$t6, $zero
	mul.d	$t7, $a4, $a4
	movgr2fr.d	$fa1, $t7
	ffint.s.l	$fa1, $fa1
	ld.d	$t7, $a0, 0
	fdiv.s	$fa1, $fa1, $fa0
	xvreplve0.w	$xr2, $xr1
	vreplvei.w	$vr3, $vr1, 0
	addi.d	$t8, $t7, 32
	move	$fp, $a3
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                # %for.cond4.for.inc26_crit_edge.us.us
                                        #   in Loop: Header=BB2_7 Depth=2
	addi.d	$t6, $t6, 1
	add.w	$fp, $fp, $a5
	beq	$t6, $a2, .LBB2_3
.LBB2_7:                                # %iter.check
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_19 Depth 3
	slli.d	$s0, $fp, 2
	bgeu	$a5, $t4, .LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	move	$s1, $zero
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_9:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_7 Depth=2
	bgeu	$a5, $t5, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=2
	move	$s2, $zero
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$s1, $fp, $t8, 2
	move	$s2, $a6
	.p2align	4, , 16
.LBB2_12:                               # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr2, $s1, -32
	xvst	$xr2, $s1, 0
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB2_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB2_7 Depth=2
	beq	$a6, $a5, .LBB2_6
# %bb.14:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$s2, $a6
	move	$s1, $a6
	beqz	$a7, .LBB2_18
.LBB2_15:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB2_7 Depth=2
	add.d	$s1, $t2, $s2
	alsl.d	$s2, $s2, $s0, 2
	add.d	$s2, $t7, $s2
	.p2align	4, , 16
.LBB2_16:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr3, $s2, 0
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB2_16
# %bb.17:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB2_7 Depth=2
	move	$s1, $t0
	beq	$t0, $a5, .LBB2_6
.LBB2_18:                               # %for.body6.us.us.preheader
                                        #   in Loop: Header=BB2_7 Depth=2
	alsl.d	$s0, $s1, $s0, 2
	add.d	$s0, $t7, $s0
	sub.d	$s1, $a5, $s1
	.p2align	4, , 16
.LBB2_19:                               # %for.body6.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.s	$fa1, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 4
	bnez	$s1, .LBB2_19
	b	.LBB2_6
.LBB2_20:
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB2_21:                               # %for.end31
	ret
.Lfunc_end2:
	.size	mat_set_init, .Lfunc_end2-mat_set_init
                                        # -- End function
	.globl	mat_set                         # -- Begin function mat_set
	.p2align	5
	.type	mat_set,@function
mat_set:                                # @mat_set
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 12
	ori	$a4, $zero, 1
                                        # kill: def $f0 killed $f0 def $xr0
	blt	$a2, $a4, .LBB3_21
# %bb.1:                                # %for.cond1.preheader.lr.ph
	ld.w	$a3, $a0, 16
	blt	$a3, $a4, .LBB3_21
# %bb.2:                                # %for.cond1.preheader.lr.ph.split.us
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$a4, $a0, 20
	move	$a5, $zero
	bstrpick.d	$a6, $a4, 30, 4
	slli.d	$a6, $a6, 4
	xvreplve0.w	$xr1, $xr0
	andi	$a7, $a4, 12
	bstrpick.d	$t0, $a4, 30, 2
	slli.d	$t0, $t0, 2
	vreplvei.w	$vr2, $vr0, 0
	mul.d	$t1, $a3, $a4
	mul.d	$t2, $t1, $a2
	mul.w	$a1, $t2, $a1
	sub.d	$t2, $zero, $t0
	addi.w	$t3, $a4, 0
	ori	$t4, $zero, 4
	ori	$t5, $zero, 16
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.cond1.for.inc23_crit_edge.us
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a5, $a5, 1
	add.w	$a1, $a1, $t1
	beq	$a5, $a2, .LBB3_20
.LBB3_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_19 Depth 3
	blez	$t3, .LBB3_3
# %bb.5:                                # %for.cond4.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t6, $a0, 0
	move	$t7, $zero
	addi.d	$t8, $t6, 32
	move	$fp, $a1
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %for.cond4.for.inc20_crit_edge.us.us
                                        #   in Loop: Header=BB3_7 Depth=2
	addi.d	$t7, $t7, 1
	add.w	$fp, $fp, $a4
	beq	$t7, $a3, .LBB3_3
.LBB3_7:                                # %iter.check
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_19 Depth 3
	slli.d	$s0, $fp, 2
	bgeu	$a4, $t4, .LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	move	$s1, $zero
	b	.LBB3_18
	.p2align	4, , 16
.LBB3_9:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_7 Depth=2
	bgeu	$a4, $t5, .LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_7 Depth=2
	move	$s2, $zero
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	alsl.d	$s1, $fp, $t8, 2
	move	$s2, $a6
	.p2align	4, , 16
.LBB3_12:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr1, $s1, -32
	xvst	$xr1, $s1, 0
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB3_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB3_7 Depth=2
	beq	$a6, $a4, .LBB3_6
# %bb.14:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$s2, $a6
	move	$s1, $a6
	beqz	$a7, .LBB3_18
.LBB3_15:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_7 Depth=2
	add.d	$s1, $t2, $s2
	alsl.d	$s2, $s2, $s0, 2
	add.d	$s2, $t6, $s2
	.p2align	4, , 16
.LBB3_16:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr2, $s2, 0
	addi.d	$s1, $s1, 4
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB3_16
# %bb.17:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_7 Depth=2
	move	$s1, $t0
	beq	$t0, $a4, .LBB3_6
.LBB3_18:                               # %for.body6.us.us.preheader
                                        #   in Loop: Header=BB3_7 Depth=2
	alsl.d	$s0, $s1, $s0, 2
	add.d	$s0, $t6, $s0
	sub.d	$s1, $a4, $s1
	.p2align	4, , 16
.LBB3_19:                               # %for.body6.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fst.s	$fa0, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 4
	bnez	$s1, .LBB3_19
	b	.LBB3_6
.LBB3_20:
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB3_21:                               # %for.end25
	ret
.Lfunc_end3:
	.size	mat_set, .Lfunc_end3-mat_set
                                        # -- End function
	.globl	jacobi                          # -- Begin function jacobi
	.p2align	5
	.type	jacobi,@function
jacobi:                                 # @jacobi
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	ori	$t0, $zero, 1
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	blt	$a0, $t0, .LBB4_32
# %bb.1:                                # %for.cond3.preheader.lr.ph
	ld.w	$s6, $a4, 20
	ld.w	$a6, $a4, 16
	ld.w	$a1, $a4, 12
	move	$a7, $zero
	addi.d	$a2, $s6, -1
	addi.d	$a3, $a6, -1
	addi.w	$a5, $a1, -1
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	slti	$a1, $a1, 3
	slti	$a5, $a6, 3
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	bstrpick.d	$s7, $a2, 31, 0
	addi.d	$a2, $a6, 1
	mul.w	$a2, $s6, $a2
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	mul.w	$a2, $a6, $s6
	addi.d	$ra, $s7, -1
	or	$a3, $a1, $a5
	move	$a1, $ra
	bstrins.d	$a1, $zero, 3, 0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	move	$a1, $ra
	bstrins.d	$a1, $t0, 3, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	andi	$a1, $ra, 12
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -4
	and	$a5, $ra, $a1
	move	$a1, $ra
	bstrins.d	$a1, $t0, 1, 0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a1, $s7, 2
	addi.d	$s4, $a1, -4
	slli.d	$a1, $s6, 2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $s6, 3
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	slli.w	$a1, $a2, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a5
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	movgr2fr.w	$fa1, $zero
	st.d	$s6, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
.LBB4_3:                                # %for.inc714
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.w	$a7, $a7, 1
	beq	$a7, $a0, .LBB4_33
.LBB4_4:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_10 Depth 4
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_18 Depth 3
                                        #         Child Loop BB4_23 Depth 4
                                        #         Child Loop BB4_27 Depth 4
                                        #         Child Loop BB4_30 Depth 4
	fmov.s	$fa0, $fa1
	bnez	$a3, .LBB4_3
# %bb.5:                                # %for.cond6.preheader.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $zero
	ori	$s3, $zero, 1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	fmov.s	$fa0, $fa1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %for.cond6.for.inc657_crit_edge.us
                                        #   in Loop: Header=BB4_7 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a0
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_12
.LBB4_7:                                # %for.cond6.preheader.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_10 Depth 4
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 200                   # 8-byte Folded Spill
	bge	$a0, $s6, .LBB4_6
# %bb.8:                                # %for.cond9.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB4_7 Depth=2
	slli.d	$a1, $a5, 2
	add.d	$a0, $s6, $a3
	slli.d	$a2, $a0, 2
	add.d	$a0, $s6, $a4
	slli.d	$a7, $a0, 2
	slli.d	$t0, $a3, 2
	slli.d	$t2, $a4, 2
	add.d	$a0, $s6, $a5
	slli.d	$t1, $a0, 2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 0
	ld.w	$s6, $a3, 12
	ld.w	$t7, $a3, 16
	ld.w	$s5, $a3, 20
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t5, $a3, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $a3, 0
	ld.w	$a6, $a3, 12
	ld.w	$a5, $a3, 16
	ld.w	$s8, $a3, 20
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t6, $a3, 0
	ld.w	$t8, $a3, 16
	ld.w	$a4, $a3, 20
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $s2, 0
	ld.w	$t4, $s2, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $s1, 0
	ld.w	$s0, $s1, 16
	ld.w	$s2, $s2, 20
	ld.w	$s1, $s1, 20
	addi.d	$fp, $fp, 4
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	mul.d	$fp, $s0, $s3
	addi.d	$fp, $fp, 1
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	mul.w	$s1, $s1, $fp
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	mul.d	$a3, $t4, $s3
	addi.d	$a3, $a3, 1
	st.d	$s2, $sp, 320                   # 8-byte Folded Spill
	mul.w	$ra, $s2, $a3
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	add.d	$s2, $s6, $s3
	st.d	$s2, $sp, 464                   # 8-byte Folded Spill
	move	$a0, $s6
	add.d	$a3, $t5, $a1
	add.d	$a2, $t5, $a2
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	add.d	$t4, $t5, $t4
	add.d	$a1, $t4, $a1
	addi.d	$s0, $t5, 4
	add.d	$fp, $s0, $a7
	add.d	$a7, $s0, $t2
	add.d	$s6, $t4, $t2
	add.d	$s7, $t4, $t0
	add.d	$t4, $t5, $t0
	add.d	$t5, $t5, $t1
	alsl.d	$t0, $a0, $s2, 1
	mul.d	$t0, $t7, $t0
	addi.d	$t0, $t0, 1
	move	$s2, $s5
	mul.w	$t2, $s5, $t0
	addi.d	$t0, $t6, 4
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	mul.d	$t0, $t8, $s3
	addi.d	$t0, $t0, 1
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	mul.w	$s5, $a4, $t0
	addi.d	$t0, $t3, 4
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$t0, $a6, $s3, 1
	mul.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 1
	mul.w	$t3, $s8, $t0
	add.d	$a6, $a6, $s3
	mul.d	$a6, $a5, $a6
	addi.d	$a6, $a6, 1
	mul.w	$s0, $s8, $a6
	mul.d	$a5, $a5, $s3
	addi.d	$a5, $a5, 1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $t1, 0
	st.d	$s8, $sp, 336                   # 8-byte Folded Spill
	mul.w	$t6, $s8, $a5
	ld.w	$a5, $t1, 12
	ld.w	$t0, $t1, 16
	addi.d	$a6, $a6, 4
	st.d	$a6, $sp, 264                   # 8-byte Folded Spill
	ld.w	$t1, $t1, 20
	alsl.d	$a6, $a5, $s3, 1
	mul.d	$a6, $t0, $a6
	addi.d	$a6, $a6, 1
	mul.w	$a6, $t1, $a6
	add.d	$a5, $a5, $s3
	mul.d	$a5, $t0, $a5
	addi.d	$a5, $a5, 1
	mul.w	$t8, $t1, $a5
	mul.d	$a5, $t0, $s3
	move	$t0, $a6
	addi.d	$a5, $a5, 1
	st.d	$t1, $sp, 256                   # 8-byte Folded Spill
	mul.w	$a5, $t1, $a5
	move	$t1, $t8
	alsl.d	$a4, $a0, $s3, 1
	mul.d	$a4, $t7, $a4
	addi.d	$a4, $a4, 1
	mul.w	$a6, $s2, $a4
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a0, $t7, $a0
	addi.d	$a0, $a0, 1
	move	$a4, $s2
	mul.w	$s2, $s2, $a0
	mul.d	$a0, $t7, $s3
	move	$t7, $a5
	addi.d	$a0, $a0, 1
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	mul.w	$a4, $a4, $a0
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB4_9:                                # %for.cond9.preheader.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_10 Depth 4
	move	$s3, $zero
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	alsl.d	$t8, $s1, $a0, 2
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	alsl.d	$a0, $ra, $a0, 2
	move	$s4, $a4
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	st.d	$t2, $sp, 448                   # 8-byte Folded Spill
	alsl.d	$ra, $t2, $a4, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	alsl.d	$s5, $s5, $a5, 2
	move	$s1, $a6
	ld.d	$a6, $sp, 272                   # 8-byte Folded Reload
	st.d	$t3, $sp, 432                   # 8-byte Folded Spill
	alsl.d	$t2, $t3, $a6, 2
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	alsl.d	$a5, $s0, $a6, 2
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	alsl.d	$s0, $t6, $a6, 2
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	st.d	$t0, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $a6, 2
	st.d	$t1, $sp, 400                   # 8-byte Folded Spill
	alsl.d	$t0, $t1, $a6, 2
	st.d	$t7, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$t1, $t7, $a6, 2
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$t3, $s1, $a4, 2
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a6, $s2, $a4, 2
	st.d	$s4, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$s2, $s4, $a4, 2
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_10:                               # %for.body11.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.s	$fa2, $s2, $s3
	add.d	$s1, $fp, $s3
	fldx.s	$fa3, $fp, $s3
	fldx.s	$fa4, $a6, $s3
	fldx.s	$fa5, $a1, $s3
	fldx.s	$fa6, $t3, $s3
	add.d	$s8, $t5, $s3
	fld.s	$fa7, $s8, 8
	add.d	$a4, $a1, $s3
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fmadd.s	$fa2, $fa6, $fa7, $fa2
	fldx.s	$fa3, $s6, $s3
	fldx.s	$fa4, $a7, $s3
	fldx.s	$fa5, $s7, $s3
	add.d	$t7, $t4, $s3
	fld.s	$fa6, $t7, 4
	fldx.s	$fa7, $t1, $s3
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa3, $a4, 4
	add.d	$t7, $a3, $s3
	fld.s	$fa4, $t7, 8
	fld.s	$fa5, $a4, -4
	fldx.s	$fa6, $a3, $s3
	fldx.s	$fa7, $t0, $s3
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa3, $s1, 4
	add.d	$a4, $a2, $s3
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $s1, -4
	fldx.s	$fa6, $a2, $s3
	fldx.s	$fa7, $t6, $s3
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa3, $fa3, $fa5
	fadd.s	$fa3, $fa3, $fa6
	fldx.s	$fa4, $s0, $s3
	fld.s	$fa5, $a4, 4
	fldx.s	$fa6, $a5, $s3
	fld.s	$ft0, $t7, 4
	fldx.s	$ft1, $t2, $s3
	fldx.s	$ft2, $t5, $s3
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmadd.s	$fa2, $fa6, $ft0, $fa2
	fmadd.s	$fa2, $ft1, $ft2, $fa2
	fldx.s	$fa3, $s5, $s3
	fldx.s	$fa4, $ra, $s3
	fld.s	$fa5, $s8, 4
	fldx.s	$fa6, $a0, $s3
	pcalau12i	$a4, %pc_hi20(omega)
	fld.s	$fa7, $a4, %pc_lo12(omega)
	fadd.s	$fa2, $fa2, $fa3
	fmsub.s	$fa2, $fa2, $fa4, $fa5
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa3, $fa7, $fa2, $fa5
	fstx.s	$fa3, $t8, $s3
	addi.d	$s3, $s3, 4
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	bne	$s4, $s3, .LBB4_10
# %bb.11:                               # %for.cond9.for.inc654_crit_edge.us.us
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	add.w	$s1, $s1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a0
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 448                   # 8-byte Folded Reload
	add.w	$t2, $t2, $a4
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 440                   # 8-byte Folded Reload
	add.w	$s5, $s5, $a0
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 432                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a5
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	add.w	$s0, $s0, $a5
	add.d	$a2, $a2, $a0
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	add.w	$t6, $t6, $a5
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	add.w	$t0, $t0, $a5
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	add.w	$t1, $t1, $a5
	ld.d	$t7, $sp, 392                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a5
	ld.d	$a6, $sp, 384                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a4
	add.d	$a1, $a1, $a0
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	add.w	$s2, $s2, $a4
	add.d	$fp, $fp, $a0
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	add.w	$a4, $a5, $a4
	add.d	$t4, $t4, $a0
	add.d	$s7, $s7, $a0
	add.d	$a7, $a7, $a0
	add.d	$s6, $s6, $a0
	add.d	$t5, $t5, $a0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	bne	$s8, $a0, .LBB4_9
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_12:                               # %for.cond660.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	bnez	$a3, .LBB4_2
# %bb.13:                               # %for.cond663.preheader.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $zero
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	ori	$s8, $zero, 4
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %for.cond663.for.inc711_crit_edge.us
                                        #   in Loop: Header=BB4_15 Depth=2
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a5
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	beq	$a3, $a5, .LBB4_31
.LBB4_15:                               # %for.cond663.preheader.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_18 Depth 3
                                        #         Child Loop BB4_23 Depth 4
                                        #         Child Loop BB4_27 Depth 4
                                        #         Child Loop BB4_30 Depth 4
	ori	$a5, $zero, 2
	bge	$a5, $s6, .LBB4_14
# %bb.16:                               # %for.cond666.preheader.lr.ph.split.us.us
                                        #   in Loop: Header=BB4_15 Depth=2
	move	$s5, $zero
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	mul.d	$a5, $a5, $a0
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t3, $a7, 16
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	ld.d	$a6, $a7, 0
	ld.w	$a7, $a7, 20
	mul.d	$t1, $t3, $a3
	ld.d	$t0, $a4, 0
	addi.d	$t1, $t1, 1
	addi.d	$t2, $a6, 36
	mul.d	$t3, $t3, $a1
	addi.d	$t3, $t3, 1
	mul.w	$t3, $a7, $t3
	addi.d	$t4, $t0, 36
	addi.d	$t5, $a6, 4
	addi.d	$t6, $t0, 4
	ori	$t7, $zero, 1
	move	$t8, $a2
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               # %for.cond666.for.inc708_crit_edge.us.us
                                        #   in Loop: Header=BB4_18 Depth=3
	addi.d	$t7, $t7, 1
	addi.d	$s5, $s5, 1
	add.w	$t3, $t3, $a7
	add.w	$t8, $t8, $s6
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	beq	$t7, $fp, .LBB4_14
.LBB4_18:                               # %iter.check
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_23 Depth 4
                                        #         Child Loop BB4_27 Depth 4
                                        #         Child Loop BB4_30 Depth 4
	slli.d	$s0, $t8, 2
	slli.d	$fp, $t3, 2
	ori	$s1, $zero, 1
	bltu	$ra, $s8, .LBB4_29
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_18 Depth=3
	add.d	$s1, $t1, $s5
	mul.w	$s1, $a7, $s1
	mul.d	$s2, $s6, $s5
	add.w	$s2, $a5, $s2
	alsl.d	$s2, $s2, $t0, 2
	alsl.d	$s1, $s1, $a6, 2
	sub.d	$s2, $s2, $s1
	ori	$s1, $zero, 1
	ori	$s3, $zero, 64
	bltu	$s2, $s3, .LBB4_29
# %bb.20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_18 Depth=3
	ori	$s1, $zero, 16
	bgeu	$ra, $s1, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_18 Depth=3
	move	$s3, $zero
	b	.LBB4_26
.LBB4_22:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_18 Depth=3
	alsl.d	$s1, $t3, $t2, 2
	alsl.d	$s2, $t8, $t4, 2
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_23:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr2, $s1, -32
	xvld	$xr3, $s1, 0
	xvst	$xr2, $s2, -32
	xvst	$xr3, $s2, 0
	addi.d	$s1, $s1, 64
	addi.d	$s3, $s3, -16
	addi.d	$s2, $s2, 64
	bnez	$s3, .LBB4_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	beq	$ra, $s1, .LBB4_17
# %bb.25:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	beqz	$s2, .LBB4_29
.LBB4_26:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_18 Depth=3
	alsl.d	$s1, $s3, $fp, 2
	add.d	$s1, $t5, $s1
	alsl.d	$s2, $s3, $s0, 2
	add.d	$s2, $t6, $s2
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	add.d	$s3, $s8, $s3
	.p2align	4, , 16
.LBB4_27:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr2, $s1, 0
	vst	$vr2, $s2, 0
	addi.d	$s1, $s1, 16
	addi.d	$s3, $s3, 4
	addi.d	$s2, $s2, 16
	bnez	$s3, .LBB4_27
# %bb.28:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_18 Depth=3
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ori	$s8, $zero, 4
	beq	$ra, $s2, .LBB4_17
	.p2align	4, , 16
.LBB4_29:                               # %for.body668.us.us.preheader
                                        #   in Loop: Header=BB4_18 Depth=3
	alsl.d	$s0, $s1, $s0, 2
	add.d	$s0, $t0, $s0
	alsl.d	$fp, $s1, $fp, 2
	add.d	$fp, $a6, $fp
	sub.d	$s1, $s7, $s1
	.p2align	4, , 16
.LBB4_30:                               # %for.body668.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.s	$fa2, $fp, 0
	fst.s	$fa2, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB4_30
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_31:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB4_3
.LBB4_32:
                                        # implicit-def: $f0
.LBB4_33:                               # %for.end716
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end4:
	.size	jacobi, .Lfunc_end4-jacobi
                                        # -- End function
	.globl	clearMat                        # -- Begin function clearMat
	.p2align	5
	.type	clearMat,@function
clearMat:                               # @clearMat
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB5_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %if.end
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	clearMat, .Lfunc_end5-clearMat
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function fflop
.LCPI6_0:
	.dword	0x4041000000000000              # double 34
	.text
	.globl	fflop
	.p2align	5
	.type	fflop,@function
fflop:                                  # @fflop
# %bb.0:                                # %entry
	addi.d	$a2, $a2, -2
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	addi.d	$a1, $a1, -2
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	addi.d	$a0, $a0, -2
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end6:
	.size	fflop, .Lfunc_end6-fflop
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function mflops
.LCPI7_0:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	mflops
	.p2align	5
	.type	mflops,@function
mflops:                                 # @mflops
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(.LCPI7_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI7_0)
	fdiv.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa2
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end7:
	.size	mflops, .Lfunc_end7-mflops
                                        # -- End function
	.globl	set_param                       # -- Begin function set_param
	.p2align	5
	.type	set_param,@function
set_param:                              # @set_param
# %bb.0:                                # %entry
	ld.bu	$a2, $a1, 0
	addi.d	$a2, $a2, -76
	ori	$a3, $zero, 44
	bltu	$a3, $a2, .LBB8_17
# %bb.1:                                # %entry
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI8_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI8_0)
	ldx.w	$a2, $a3, $a2
	add.d	$a2, $a3, $a2
	jr	$a2
.LBB8_2:                                # %if.end24.tail
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.3:
	ori	$a1, $zero, 512
	ori	$a2, $zero, 256
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_4:                                # %if.end.tail
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.5:
	ori	$a1, $zero, 128
	ori	$a2, $zero, 64
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_6:                                # %if.end14.tail
	ld.bu	$a1, $a1, 1
	bnez	$a1, .LBB8_17
# %bb.7:
	ori	$a1, $zero, 256
	ori	$a2, $zero, 128
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_8:                                # %sub_125
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 115
	bne	$a2, $a3, .LBB8_10
# %bb.9:                                # %lor.lhs.false.tail
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB8_16
.LBB8_10:                               # %sub_151
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 108
	beq	$a2, $a3, .LBB8_14
	b	.LBB8_17
.LBB8_11:                               # %sub_1
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 83
	bne	$a2, $a3, .LBB8_13
# %bb.12:                               # %entry.tail
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB8_16
.LBB8_13:                               # %sub_147
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 76
	bne	$a2, $a3, .LBB8_17
.LBB8_14:                               # %if.end34.tail
	ld.bu	$a1, $a1, 2
	bnez	$a1, .LBB8_17
# %bb.15:
	ori	$a1, $zero, 1024
	ori	$a2, $zero, 512
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_16:
	ori	$a1, $zero, 64
	ori	$a2, $zero, 32
	st.w	$a2, $a0, 0
	st.w	$a2, $a0, 4
	st.w	$a1, $a0, 8
	ret
.LBB8_17:                               # %if.else
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	set_param, .Lfunc_end8-set_param
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_6-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_4-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_11-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_2-.LJTI8_0
	.word	.LBB8_6-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_4-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_17-.LJTI8_0
	.word	.LBB8_8-.LJTI8_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function second
.LCPI9_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	second
	.p2align	5
	.type	second,@function
second:                                 # @second
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(second.base_sec)
	ld.w	$a3, $a1, %pc_lo12(second.base_sec)
	pcalau12i	$a2, %pc_hi20(second.base_usec)
	ld.w	$a0, $a2, %pc_lo12(second.base_usec)
	ld.d	$a4, $sp, 8
	or	$a5, $a3, $a0
	bnez	$a5, .LBB9_2
# %bb.1:                                # %if.then
	ld.d	$a0, $sp, 16
	st.w	$a4, $a1, %pc_lo12(second.base_sec)
	st.w	$a0, $a2, %pc_lo12(second.base_usec)
	movgr2fr.d	$fa0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:                                # %if.else
	sub.d	$a1, $a4, $a3
	movgr2fr.d	$fa0, $a1
	ld.d	$a1, $sp, 16
	ffint.d.l	$fa0, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI9_0)
	sub.d	$a0, $a1, $a0
	movgr2fr.d	$fa2, $a0
	ffint.d.l	$fa2, $fa2
	fdiv.d	$fa1, $fa2, $fa1
	fadd.d	$fa0, $fa1, $fa0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	second, .Lfunc_end9-second
                                        # -- End function
	.type	omega,@object                   # @omega
	.data
	.globl	omega
	.p2align	2, 0x0
omega:
	.word	0x3f4ccccd                      # float 0.800000011
	.size	omega, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mimax = %d mjmax = %d mkmax = %d\n"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"imax = %d jmax = %d kmax =%d\n"
	.size	.L.str.1, 30

	.type	p,@object                       # @p
	.bss
	.globl	p
	.p2align	3, 0x0
p:
	.space	24
	.size	p, 24

	.type	bnd,@object                     # @bnd
	.globl	bnd
	.p2align	3, 0x0
bnd:
	.space	24
	.size	bnd, 24

	.type	wrk1,@object                    # @wrk1
	.globl	wrk1
	.p2align	3, 0x0
wrk1:
	.space	24
	.size	wrk1, 24

	.type	wrk2,@object                    # @wrk2
	.globl	wrk2
	.p2align	3, 0x0
wrk2:
	.space	24
	.size	wrk2, 24

	.type	a,@object                       # @a
	.globl	a
	.p2align	3, 0x0
a:
	.space	24
	.size	a, 24

	.type	b,@object                       # @b
	.globl	b
	.p2align	3, 0x0
b:
	.space	24
	.size	b, 24

	.type	c,@object                       # @c
	.globl	c
	.p2align	3, 0x0
c:
	.space	24
	.size	c, 24

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" Loop executed for %d times\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" Gosa : %e \n"
	.size	.L.str.3, 13

	.type	second.base_sec,@object         # @second.base_sec
	.local	second.base_sec
	.comm	second.base_sec,4,4
	.type	second.base_usec,@object        # @second.base_usec
	.local	second.base_usec
	.comm	second.base_usec,4,4
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Invalid input character !!"
	.size	.Lstr, 27

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym p
	.addrsig_sym bnd
	.addrsig_sym wrk1
	.addrsig_sym wrk2
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym c
