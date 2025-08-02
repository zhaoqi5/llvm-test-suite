	.file	"smg3_setup_rap.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function hypre_SMG3CreateRAPOp
.LCPI0_0:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_1:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_2:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
.LCPI0_3:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_5:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI0_6:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_7:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	0                               # 0x0
.LCPI0_9:
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
.LCPI0_10:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	1                               # 0x1
.LCPI0_12:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
.LCPI0_13:
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI0_11:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.text
	.globl	hypre_SMG3CreateRAPOp
	.p2align	5
	.type	hypre_SMG3CreateRAPOp,@function
hypre_SMG3CreateRAPOp:                  # @hypre_SMG3CreateRAPOp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	addi.d	$a0, $a0, %pc_lo12(.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost)
	ld.d	$a2, $a0, 16
	vld	$vr0, $a0, 0
	move	$fp, $a1
	ld.d	$a0, $a1, 24
	st.d	$a2, $sp, 24
	vst	$vr0, $sp, 8
	ld.w	$a1, $a1, 72
	ld.w	$a0, $a0, 8
	move	$s0, $a3
	beqz	$a1, .LBB0_3
# %bb.1:                                # %if.else55
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB0_5
# %bb.2:                                # %for.inc84.2.2.1
	ori	$a0, $zero, 8
	ori	$a1, $zero, 12
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_6)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	xvst	$xr1, $a0, 32
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 76
	st.w	$zero, $a2, 92
	b	.LBB0_7
.LBB0_3:                                # %if.then
	ori	$s1, $zero, 15
	blt	$s1, $a0, .LBB0_6
# %bb.4:                                # %for.inc.2.2.2
	ori	$a0, $zero, 15
	ori	$a1, $zero, 12
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_5)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_6)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_6)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_12)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_12)
	xvst	$xr1, $a2, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $a2, 76
	xvst	$xr0, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_13)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_13)
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.d	$a0, $a2, 64
	st.w	$a0, $a2, 72
	st.w	$zero, $a2, 92
	xvst	$xr0, $a2, 128
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $a2, 160
	ori	$a0, $zero, 1
	st.w	$a0, $a2, 176
	b	.LBB0_7
.LBB0_5:                                # %for.inc128.1
	ori	$a0, $zero, 14
	ori	$a1, $zero, 12
	ori	$s1, $zero, 14
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	xvst	$xr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_1)
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_2)
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_3)
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr0, $a2, 32
	xvst	$xr1, $a2, 64
	xvst	$xr2, $a2, 96
	vst	$vr3, $a2, 128
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	st.w	$zero, $a2, 164
	b	.LBB0_7
.LBB0_6:                                # %if.else
	ori	$a0, $zero, 27
	ori	$a1, $zero, 12
	ori	$s1, $zero, 27
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_2)
	xvst	$xr1, $a2, 32
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_3)
	xvst	$xr0, $a2, 64
	pcalau12i	$a0, %pc_hi20(.LCPI0_4)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_4)
	xvst	$xr1, $a2, 96
	pcalau12i	$a0, %pc_hi20(.LCPI0_7)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_7)
	vst	$vr0, $a2, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $a2, 148
	xvst	$xr1, $a2, 168
	pcalau12i	$a0, %pc_hi20(.LCPI0_8)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_8)
	pcalau12i	$a0, %pc_hi20(.LCPI0_9)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_9)
	pcalau12i	$a0, %pc_hi20(.LCPI0_10)
	xvld	$xr2, $a0, %pc_lo12(.LCPI0_10)
	xvst	$xr0, $a2, 200
	xvst	$xr1, $a2, 232
	addi.w	$a0, $zero, -1
	xvst	$xr2, $a2, 264
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_11)
	lu32i.d	$a0, 0
	st.w	$a0, $a2, 144
	st.w	$zero, $a2, 164
	vst	$vr0, $a2, 296
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	st.d	$a1, $a2, 312
	st.w	$a0, $a2, 320
.LBB0_7:                                # %if.end132
	ori	$a0, $zero, 3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixCreate)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(hypre_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	st.w	$a0, $s0, 72
	beqz	$a0, .LBB0_9
# %bb.8:                                # %if.then140
	st.w	$zero, $sp, 12
	st.w	$zero, $sp, 20
	st.w	$zero, $sp, 28
.LBB0_9:                                # %if.end144
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	hypre_SMG3CreateRAPOp, .Lfunc_end0-hypre_SMG3CreateRAPOp
                                        # -- End function
	.globl	hypre_SMG3BuildRAPSym           # -- Begin function hypre_SMG3BuildRAPSym
	.p2align	5
	.type	hypre_SMG3BuildRAPSym,@function
hypre_SMG3BuildRAPSym:                  # @hypre_SMG3BuildRAPSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1392
	st.d	$ra, $sp, 1384                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1376                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1368                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1360                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1352                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1304                  # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s6, $zero, 1
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	blt	$a6, $s6, .LBB1_62
# %bb.1:                                # %while.cond.preheader.lr.ph
	move	$s7, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s7, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$s3, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc3882
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	bge	$a4, $a0, .LBB1_62
.LBB1_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_54 Depth 2
                                        #       Child Loop BB1_57 Depth 3
                                        #         Child Loop BB1_58 Depth 4
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #     Child Loop BB1_33 Depth 2
                                        #       Child Loop BB1_35 Depth 3
                                        #         Child Loop BB1_36 Depth 4
                                        #     Child Loop BB1_44 Depth 2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_47 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$fp, $a5, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$s4, $a2, -12
	.p2align	4, , 16
.LBB1_4:                                # %while.cond
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$fp, $fp, 1
	addi.d	$a1, $a1, 4
	addi.d	$s4, $s4, 24
	bne	$a2, $a0, .LBB1_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1280
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 40
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s1, 40
	ld.d	$a3, $a0, 0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 40
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1232                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s4
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$s8, $a0, 0
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1208                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s4
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	addi.w	$s5, $zero, -1
	st.d	$zero, $sp, 1292
	st.d	$s5, $sp, 1256                  # 8-byte Folded Spill
	lu32i.d	$s5, 0
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ori	$s2, $zero, 0
	lu32i.d	$s2, -1
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 736                   # 8-byte Folded Spill
	ori	$s0, $zero, 0
	lu32i.d	$s0, 1
	st.d	$s0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.d	$s8, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1240                  # 8-byte Folded Spill
	blt	$s3, $a0, .LBB1_10
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s5, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s6, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s3, $a0, .LBB1_10
# %bb.7:                                # %if.end137
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	st.d	$s8, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	move	$s1, $s8
	lu32i.d	$s1, 1
	st.d	$s1, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s3, $a0, .LBB1_9
# %bb.8:                                # %if.then139
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s8, $sp, 1292
	ori	$s5, $zero, 1
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, -1
	st.d	$s3, $sp, 1292
	st.w	$s5, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1292
	ld.d	$s8, $sp, 1240                  # 8-byte Folded Reload
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s8, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
.LBB1_9:                                # %if.end170
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s8, $sp, 1248                  # 8-byte Folded Reload
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	move	$s5, $zero
.LBB1_11:                               # %if.end170
                                        #   in Loop: Header=BB1_3 Depth=1
	add.d	$s1, $s8, $s4
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	st.d	$zero, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 1240                  # 8-byte Folded Reload
	st.d	$s7, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 1256                  # 8-byte Folded Reload
	beqz	$s5, .LBB1_13
# %bb.12:                               # %if.then212
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s3, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	move	$a0, $s3
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1292
	st.w	$s7, $sp, 1300
	addi.d	$a2, $sp, 1292
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
.LBB1_13:                               # %if.end243
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$zero, $sp, 1292
	st.w	$s6, $sp, 1300
	ld.d	$s5, $sp, 1224                  # 8-byte Folded Reload
	ld.w	$a0, $s5, 4
	ld.w	$a1, $s5, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$s2, $sp, 1232                  # 8-byte Folded Reload
	ldx.w	$a2, $s2, $s4
	ld.w	$a3, $s5, -12
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.w	$a3, $fp, 4
	ld.w	$a4, $fp, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s3, $a0
	ld.d	$s0, $sp, 1208                  # 8-byte Folded Reload
	ldx.w	$a2, $s0, $s4
	ld.w	$a3, $fp, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s3, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s3, $a2
	or	$a1, $a1, $a2
	st.d	$s6, $sp, 1296
	ldx.w	$a2, $s0, $s4
	ld.w	$a3, $fp, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1292
	st.w	$zero, $sp, 1300
	addi.d	$a1, $sp, 1268
	ld.d	$s7, $sp, 1216                  # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.w	$a4, $fp, -12
	ld.w	$a1, $s7, 4
	ld.w	$a2, $fp, -8
	ld.w	$a3, $s7, 8
	ld.w	$a5, $fp, -4
	ld.w	$a6, $fp, 4
	sub.d	$a7, $a0, $a4
	sub.d	$t0, $a1, $a2
	sub.d	$a5, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a6, $s3, $a2
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $s3, $a6
	or	$a2, $a2, $a6
	ldx.w	$a6, $s0, $s4
	addi.d	$a2, $a2, 1
	mul.d	$a5, $a2, $a5
	add.d	$a5, $t0, $a5
	sub.w	$a4, $a6, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 720                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	add.w	$s7, $a7, $a4
	ld.w	$a4, $s1, -12
	ld.w	$a5, $s1, -8
	ld.w	$a6, $s1, -4
	ld.w	$a7, $s1, 4
	sub.d	$t0, $a0, $a4
	sub.d	$t1, $a1, $a5
	sub.d	$a6, $a3, $a6
	sub.w	$a5, $a7, $a5
	slt	$a7, $s3, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s3, $a7
	or	$a5, $a5, $a7
	ld.d	$a7, $sp, 1248                  # 8-byte Folded Reload
	ldx.w	$t2, $a7, $s4
	addi.d	$a7, $a5, 1
	mul.d	$a5, $a7, $a6
	add.d	$a5, $t1, $a5
	sub.w	$a4, $t2, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 712                   # 8-byte Folded Spill
	mul.d	$a4, $a5, $a4
	add.w	$t7, $t0, $a4
	ld.w	$a4, $sp, 1280
	ld.w	$a5, $s5, -12
	ld.w	$a6, $sp, 1284
	ld.w	$t0, $s5, -8
	ld.w	$t1, $sp, 1288
	ld.w	$t2, $s5, -4
	ld.w	$t3, $s5, 4
	sub.d	$a4, $a4, $a5
	sub.d	$a6, $a6, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t2, $s3, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $s3, $t2
	or	$t0, $t0, $t2
	ldx.w	$t2, $s2, $s4
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a6, $a6, $t1
	sub.w	$a5, $t2, $a5
	slt	$t1, $s3, $a5
	maskeqz	$a5, $a5, $t1
	masknez	$t1, $s3, $t1
	or	$a5, $a5, $t1
	addi.d	$a5, $a5, 1
	mul.d	$a6, $a6, $a5
	add.w	$t2, $a4, $a6
	ld.w	$a4, $s8, 0
	ld.w	$a6, $s8, 4
	ld.w	$t1, $s8, 8
	ld.w	$t3, $s8, 16
	sub.d	$a0, $a0, $a4
	sub.d	$t4, $a1, $a6
	sub.d	$a3, $a3, $t1
	sub.w	$a1, $t3, $a6
	slt	$a6, $s3, $a1
	maskeqz	$a1, $a1, $a6
	masknez	$a6, $s3, $a6
	or	$a1, $a1, $a6
	ld.w	$a6, $s8, 12
	addi.d	$a1, $a1, 1
	mul.d	$a3, $a1, $a3
	add.d	$a3, $t4, $a3
	sub.w	$a4, $a6, $a4
	slt	$a6, $s3, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $s3, $a6
	or	$a4, $a4, $a6
	addi.d	$a4, $a4, 1
	st.d	$a4, $sp, 704                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a4
	add.w	$s4, $a0, $a3
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 4
	ld.w	$a3, $a3, 8
	ld.w	$a4, $sp, 1268
	st.d	$a4, $sp, 768                   # 8-byte Folded Spill
	ld.w	$a4, $sp, 1272
	st.d	$a4, $sp, 760                   # 8-byte Folded Spill
	ld.w	$s2, $sp, 1276
	mul.d	$a0, $a0, $a5
	mulw.d.w	$a4, $a5, $t0
	mul.d	$a6, $a4, $a3
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ori	$a3, $zero, 19
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	beq	$s3, $a3, .LBB1_39
# %bb.14:                               # %if.end243
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 15
	beq	$s3, $a3, .LBB1_28
# %bb.15:                               # %if.end243
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 7
	move	$s5, $t7
	bne	$s3, $a3, .LBB1_50
# %bb.16:                               # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.17:                               # %for.cond927.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$s1, $a2, $t1
	sub.d	$a2, $a7, $t7
	mul.d	$a7, $a2, $t3
	mul.d	$a2, $t7, $a0
	sub.d	$a6, $a6, $a2
	sub.d	$a1, $a1, $t7
	mul.d	$s8, $a1, $t4
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 968                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 960                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1144                  # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 1032                  # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a3, $a5, $a2
	st.d	$a3, $sp, 1120                  # 8-byte Folded Spill
	slli.d	$a3, $a0, 3
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a5, $a2
	st.d	$a2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1136                  # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 1104                  # 8-byte Folded Spill
	slli.d	$t0, $t5, 3
	ld.d	$a4, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 1088                  # 8-byte Folded Spill
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 1080                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1000                  # 8-byte Folded Spill
	st.d	$a7, $sp, 992                   # 8-byte Folded Spill
	st.d	$a6, $sp, 984                   # 8-byte Folded Spill
	st.d	$s8, $sp, 976                   # 8-byte Folded Spill
	st.d	$t0, $sp, 1096                  # 8-byte Folded Spill
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=2
	move	$s0, $s4
.LBB1_19:                               # %for.end1105
                                        #   in Loop: Header=BB1_20 Depth=2
	add.w	$s7, $s7, $s1
	add.w	$s5, $s5, $a7
	add.w	$t2, $a6, $t2
	addi.w	$t8, $t8, 1
	add.w	$s4, $s0, $s8
	beq	$t8, $s2, .LBB1_2
.LBB1_20:                               # %for.cond927.preheader
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_24 Depth 4
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_18
# %bb.21:                               # %for.cond930.preheader.lr.ph
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	move	$s0, $s4
	blt	$a0, $s6, .LBB1_27
# %bb.22:                               # %for.cond930.preheader.us.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	st.d	$t8, $sp, 1008                  # 8-byte Folded Spill
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_23:                               # %for.cond930.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_24 Depth 4
	st.d	$a2, $sp, 1152                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$ra, $zero
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$s5, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$t0, $s5, $a0, 3
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $t1, 3
	ld.d	$a6, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a6, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a5, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a3, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	alsl.d	$a4, $t2, $a1, 3
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	alsl.d	$t3, $t2, $a1, 3
	ld.d	$a1, $sp, 1048                  # 8-byte Folded Reload
	alsl.d	$t4, $t2, $a1, 3
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1144                  # 8-byte Folded Reload
	add.d	$t2, $a1, $t2
	ld.d	$a1, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$t7, $s7, $a1, 3
	ld.d	$t5, $sp, 1040                  # 8-byte Folded Reload
	alsl.d	$fp, $s7, $t5, 3
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1120                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1080                  # 8-byte Folded Reload
	alsl.d	$s4, $s7, $a1, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1072                  # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	alsl.d	$a1, $a1, $t5, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	alsl.d	$s7, $a0, $a5, 3
	alsl.d	$s8, $a0, $a3, 3
	alsl.d	$t8, $a0, $t1, 3
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t1, $s0, $a0, 3
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a5, $s0, $a0, 3
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a0, 3
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a1, $s0, $a0, 3
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a0, 3
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t5, $s0, $a0, 3
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t6, $s0, $a0, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$s0, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$s0, $s0, $a0, 3
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 1096                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_24:                               # %for.body932.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $a4, $s3
	ld.d	$s1, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $ra
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t1, $ra
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $t3, $s3
	add.d	$s1, $s4, $ra
	fld.d	$fa2, $s1, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a5, $ra
	fldx.d	$fa0, $a7, $ra
	fldx.d	$fa1, $t4, $s3
	fldx.d	$fa2, $s4, $ra
	fldx.d	$fa3, $a2, $s3
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa4, $s6, $s3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $a6, $ra
	fldx.d	$fa0, $a7, $ra
	ld.d	$s6, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa1, $s6, $s3
	fld.d	$fa2, $s1, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a1, $ra
	fldx.d	$fa0, $a7, $ra
	ld.d	$s1, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa1, $s1, $s3
	ld.d	$s1, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $ra
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a3, $ra
	ld.d	$s1, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $a4, $s3
	ld.d	$s1, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa3, $s1, $ra
	fldx.d	$fa4, $t0, $ra
	ld.d	$s1, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa5, $s1, $s3
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa6, $s1, $ra
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t5, $ra
	ld.d	$s1, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $t3, $s3
	add.d	$s1, $t7, $ra
	fld.d	$fa3, $s1, -8
	fldx.d	$fa4, $t0, $ra
	fldx.d	$fa5, $s7, $s3
	add.d	$s1, $fp, $ra
	fld.d	$fa6, $s1, -8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t6, $ra
	ld.d	$s1, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa0, $s1, $s3
	fldx.d	$fa1, $a7, $ra
	fldx.d	$fa2, $t4, $s3
	fldx.d	$fa3, $t7, $ra
	fldx.d	$fa4, $t0, $ra
	fldx.d	$fa5, $s8, $s3
	fldx.d	$fa6, $fp, $ra
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$s1, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa2, $s1, $s3
	fldx.d	$fa5, $t8, $s3
	fldx.d	$fa7, $a2, $s3
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$ft0, $s1, $s3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $s0, $ra
	addi.d	$ra, $ra, 8
	addi.w	$a0, $a0, -1
	add.w	$t2, $t2, $s2
	add.d	$s3, $s3, $s5
	bnez	$a0, .LBB1_24
# %bb.25:                               # %for.cond930.for.end_crit_edge.us
                                        #   in Loop: Header=BB1_23 Depth=3
	ld.d	$a1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 808                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	sub.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 800                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	sub.w	$s5, $a1, $a0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 792                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 1152                  # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	sub.w	$s0, $a1, $a0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB1_23
# %bb.26:                               # %for.end1105.loopexit
                                        #   in Loop: Header=BB1_20 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1000                  # 8-byte Folded Reload
	ld.d	$a7, $sp, 992                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 984                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 976                   # 8-byte Folded Reload
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_27:                               # %for.cond930.preheader.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 944                   # 8-byte Folded Reload
	add.d	$s0, $a0, $s0
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_28:                               # %sw.bb1124
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.29:                               # %for.cond1674.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	blt	$a3, $s6, .LBB1_2
# %bb.30:                               # %for.cond1674.preheader.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$fp, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$s0, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t8, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t8
	mul.d	$a2, $a2, $t1
	st.d	$a2, $sp, 840                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $t8
	mul.d	$a2, $a2, $t3
	st.d	$a2, $sp, 832                   # 8-byte Folded Spill
	mul.d	$a2, $t8, $a0
	sub.d	$a2, $a6, $a2
	st.d	$a2, $sp, 824                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $t8
	mul.d	$a1, $a1, $t4
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	addi.d	$a1, $t8, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 1016                  # 8-byte Folded Spill
	mul.d	$a2, $s0, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 1032                  # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	sub.d	$a3, $a5, $a2
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	slli.d	$a3, $a0, 3
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a5, $a2
	st.d	$a2, $sp, 984                   # 8-byte Folded Spill
	st.d	$a4, $sp, 1008                  # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	ld.d	$a4, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 968                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a3
	st.d	$a3, $sp, 960                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 864                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_31:                               # %for.cond1677.preheader.us2086.preheader
                                        #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	add.d	$t7, $a0, $t7
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
.LBB1_32:                               # %for.cond1674.for.end1934_crit_edge.us
                                        #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	add.w	$t7, $t7, $a0
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	add.w	$t2, $a0, $t2
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	beq	$fp, $s2, .LBB1_2
.LBB1_33:                               # %for.cond1674.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_35 Depth 3
                                        #         Child Loop BB1_36 Depth 4
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_31
# %bb.34:                               # %for.cond1677.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_33 Depth=2
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_35:                               # %for.cond1677.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_36 Depth 4
	st.d	$a1, $sp, 1024                  # 8-byte Folded Spill
	move	$a3, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s3, $t2, $a7, 3
	ld.d	$a6, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a4, $t2, $a6, 3
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$t8, $t2, $t5, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t4, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t3, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t1, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$t6, $t2, $a1, 3
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a1, 3
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $a1, 3
	ld.d	$a1, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	add.d	$t2, $a1, $t2
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	ld.d	$fp, $sp, 1040                  # 8-byte Folded Reload
	alsl.d	$a1, $a1, $fp, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t4, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a7, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t1, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	alsl.d	$a0, $a0, $t5, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$s8, $t7, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$t7, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$ra, $t7, $a0, 3
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	alsl.d	$t4, $s7, $a0, 3
	alsl.d	$t5, $s7, $fp, 3
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$t3, $s7, $a0, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$s6, $s4, $a1, 3
	ld.d	$a1, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$s1, $s4, $a1, 3
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a1, $s4, $a1, 3
	ld.d	$a6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$s5, $s4, $a6, 3
	ld.d	$a6, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t1, $s4, $a6, 3
	ld.d	$a6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$s7, $s4, $a6, 3
	ld.d	$a6, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$fp, $s4, $a6, 3
	ld.d	$a6, $sp, 672                   # 8-byte Folded Reload
	st.d	$s4, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$s0, $s4, $a6, 3
	ld.d	$a6, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 856                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_36:                               # %for.body1679.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_33 Depth=2
                                        #       Parent Loop BB1_35 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $t6, $a3
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa2, $s2, $a3
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $a5
	fldx.d	$fa4, $s3, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s6, $a5
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $a2, $a3
	add.d	$s2, $a0, $a5
	ld.d	$a7, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $a4, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s1, $a5
	fldx.d	$fa0, $s8, $a5
	fldx.d	$fa1, $t0, $a3
	fldx.d	$fa2, $a0, $a5
	fldx.d	$fa3, $t8, $a3
	ld.d	$a7, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa4, $a7, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $a1, $a5
	fldx.d	$fa0, $s8, $a5
	ld.d	$a7, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a3
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fld.d	$fa3, $s2, 8
	ld.d	$s2, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa4, $s2, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s5, $a5
	fldx.d	$fa0, $s8, $a5
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a3
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $a7, $a3
	fldx.d	$fa3, $t3, $a5
	ld.d	$s2, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa4, $s2, $a3
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t1, $a5
	ld.d	$s2, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $t6, $a3
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa3, $a7, $a5
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	ld.d	$a7, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa6, $a7, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $s3, $a3
	ld.d	$s2, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa5, $s2, $a3
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $a3
	ld.d	$a7, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s7, $a5
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $a2, $a3
	add.d	$s2, $t4, $a5
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	add.d	$s2, $t5, $a5
	fld.d	$fa6, $s2, -8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $a4, $a3
	ld.d	$s2, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa5, $s2, $a3
	ld.d	$s2, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s2, $a3
	ld.d	$a7, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a3
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $fp, $a5
	ld.d	$s2, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa0, $s2, $a3
	fldx.d	$fa1, $s8, $a5
	fldx.d	$fa2, $t0, $a3
	fldx.d	$fa3, $t4, $a5
	fldx.d	$fa4, $ra, $a5
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	fldx.d	$fa6, $t5, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$s2, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa2, $s2, $a3
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a3
	fldx.d	$fa7, $t8, $a3
	ld.d	$s2, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$ft0, $s2, $a3
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	fmadd.d	$fa0, $fa7, $fa3, $fa0
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $s0, $a5
	addi.d	$a5, $a5, 8
	addi.w	$a6, $a6, -1
	add.w	$t2, $t2, $s4
	add.d	$a3, $a3, $t7
	bnez	$a6, .LBB1_36
# %bb.37:                               # %for.cond1677.for.end1919_crit_edge.us.us
                                        #   in Loop: Header=BB1_35 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $a6
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$t7, $a0, $a6
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s4, $a0, $a6
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_35
# %bb.38:                               # %for.cond1674.for.end1934_crit_edge.us.loopexit
                                        #   in Loop: Header=BB1_33 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_39:                               # %sw.bb1953
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.40:                               # %for.cond2503.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	blt	$a3, $s6, .LBB1_2
# %bb.41:                               # %for.cond2503.preheader.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s1, $t7
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $t1
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	sub.d	$a2, $a7, $t7
	mul.d	$a2, $a2, $t3
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	mul.d	$a2, $t7, $a0
	sub.d	$a2, $a6, $a2
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $t7
	mul.d	$a1, $a1, $t4
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 912                   # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$a4, $a2, -8
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	addi.d	$a6, $a5, -8
	st.d	$a3, $sp, 904                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 856                   # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	st.d	$a4, $sp, 896                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a3
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	sub.d	$a4, $a6, $a3
	st.d	$a4, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	slli.d	$a4, $a0, 3
	sub.d	$a3, $a3, $a4
	st.d	$a6, $sp, 888                   # 8-byte Folded Spill
	add.d	$a3, $a6, $a3
	st.d	$a3, $sp, 816                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a4
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	b	.LBB1_44
	.p2align	4, , 16
.LBB1_42:                               # %for.cond2506.preheader.us2037.preheader
                                        #   in Loop: Header=BB1_44 Depth=2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$s1, $a0, $s1
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
.LBB1_43:                               # %for.cond2503.for.end2859_crit_edge.us
                                        #   in Loop: Header=BB1_44 Depth=2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.w	$s1, $s1, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.w	$t2, $a0, $t2
	addi.w	$t8, $t8, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	beq	$t8, $s2, .LBB1_2
.LBB1_44:                               # %for.cond2503.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_46 Depth 3
                                        #         Child Loop BB1_47 Depth 4
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_42
# %bb.45:                               # %for.cond2506.preheader.us.us.preheader
                                        #   in Loop: Header=BB1_44 Depth=2
	st.d	$t8, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_46:                               # %for.cond2506.preheader.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_47 Depth 4
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a3, $zero
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t3, $t2, $t5, 3
	ld.d	$t4, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a4, $t2, $t4, 3
	move	$ra, $s4
	ld.d	$s0, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s4, $t2, $s0, 3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a5, 3
	st.d	$a0, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $fp, 3
	st.d	$a0, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a7, 3
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$t8, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t8, 3
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $t6, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a0, $t2, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t2
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$t0, $t2, $a2, 3
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t7, $t2, $a2, 3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a2, 3
	st.d	$a2, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a6, $t2, $a2, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t1, $t2, $a2, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a2, $t2, $a2, 3
	st.d	$a2, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s5, $t2, $a2, 3
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	add.d	$t2, $a2, $t2
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	add.d	$a2, $a2, $s7
	ld.d	$s2, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$s6, $a2, $s2, 3
	alsl.d	$a2, $a0, $a5, 3
	st.d	$a2, $sp, 1080                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $fp, 3
	st.d	$a2, $sp, 1072                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t5, 3
	st.d	$a2, $sp, 1064                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $a7, 3
	st.d	$a2, $sp, 1056                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t8, 3
	st.d	$a2, $sp, 1048                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t4, 3
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	alsl.d	$a2, $a0, $t6, 3
	st.d	$a2, $sp, 1032                  # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t8, $s1, $a0, 3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$t4, $s1, $a0, 3
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$t5, $s7, $a0, 3
	alsl.d	$s2, $s7, $s2, 3
	ld.d	$a0, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t6, $s7, $a0, 3
	ld.d	$a0, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s8, $s7, $a0, 3
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a0, 3
	st.d	$s7, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a0, $ra, $a0, 3
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$fp, $ra, $a0, 3
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$ra, $ra, $a0, 3
	ld.d	$s0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_47:                               # %for.body2508.us.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_44 Depth=2
                                        #       Parent Loop BB1_46 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t0, $a1
	fldx.d	$fa2, $s6, $a3
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s7, $s6, $a3
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t7, $a1
	ld.d	$a0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	fldx.d	$fa4, $t3, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 1008                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $a6, $a1
	fld.d	$fa2, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t1, $a1
	add.d	$s7, $s1, $a3
	ld.d	$a0, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, -8
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $s1, $a3
	fldx.d	$fa3, $s4, $a1
	ld.d	$a0, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	ld.d	$a0, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 976                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	fldx.d	$fa2, $a5, $a3
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s7, $a5, $a3
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 968                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	ld.d	$a0, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fld.d	$fa3, $s7, 8
	ld.d	$a0, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$a0, $sp, 960                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	ld.d	$a0, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a1
	fld.d	$fa2, $s7, 16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$a0, $sp, 952                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t0, $a1
	ld.d	$a0, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fmul.d	$fa0, $fa0, $fa1
	fldx.d	$fa1, $t6, $a3
	fldx.d	$fa3, $t4, $a3
	ld.d	$a0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $a0, $a1
	add.d	$s7, $t6, $a3
	fldx.d	$fa5, $s8, $a3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmul.d	$fa1, $fa3, $fa4
	add.d	$a0, $s8, $a3
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ld.d	$a7, $sp, 944                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $a3
	ld.d	$a7, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa0, $a7, $a1
	fldx.d	$fa1, $t8, $a3
	fldx.d	$fa2, $t7, $a1
	fld.d	$fa3, $s7, 8
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $a1
	ld.d	$a7, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	ld.d	$a7, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa7, $a7, $a1
	ld.d	$a7, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$a7, $sp, 936                   # 8-byte Folded Reload
	fstx.d	$fa0, $a7, $a3
	fld.d	$fa0, $s7, 16
	ld.d	$a7, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a1
	fldx.d	$fa2, $t8, $a3
	fldx.d	$fa3, $a6, $a1
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 16
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa2, $fa0, $fa1
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	ld.d	$a0, $sp, 928                   # 8-byte Folded Reload
	fstx.d	$fa0, $a0, $a3
	fldx.d	$fa0, $t8, $a3
	fldx.d	$fa1, $t1, $a1
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa2, $a0, $a1
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $t5, $a3
	fldx.d	$fa4, $t4, $a3
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $a1
	fldx.d	$fa6, $s2, $a3
	add.d	$a0, $t5, $a3
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a4, $a1
	ld.d	$a7, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	ld.d	$s7, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s7, $a1
	ld.d	$a7, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$ft0, $a7, $a1
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $fp, $a3
	fld.d	$fa0, $a0, 8
	add.d	$a0, $s2, $a3
	ld.d	$a7, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa1, $a7, $a1
	fldx.d	$fa2, $t8, $a3
	fldx.d	$fa3, $s5, $a1
	fldx.d	$fa4, $t4, $a3
	ld.d	$a7, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa5, $a7, $a1
	fld.d	$fa6, $a0, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$a0, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa3, $a0, $a1
	ld.d	$a0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa5, $a0, $a1
	fldx.d	$fa7, $s4, $a1
	ld.d	$a0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$ft0, $a0, $a1
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $ra, $a3
	addi.d	$a3, $a3, 8
	addi.w	$s0, $s0, -1
	add.w	$t2, $t2, $a2
	add.d	$a1, $a1, $s3
	bnez	$s0, .LBB1_47
# %bb.48:                               # %for.cond2506.for.end2844_crit_edge.us.us
                                        #   in Loop: Header=BB1_46 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $s0
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s1, $a0, $s0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$s4, $a0, $s0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_46
# %bb.49:                               # %for.cond2503.for.end2859_crit_edge.us.loopexit
                                        #   in Loop: Header=BB1_44 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 344                   # 8-byte Folded Reload
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_50:                               # %sw.default
                                        #   in Loop: Header=BB1_3 Depth=1
	blt	$s2, $s6, .LBB1_2
# %bb.51:                               # %for.cond3427.preheader.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$t8, $zero
	ld.d	$t5, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 768                   # 8-byte Folded Reload
	mul.d	$a3, $t6, $t5
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	sub.d	$a4, $t1, $t6
	ld.d	$t3, $sp, 712                   # 8-byte Folded Reload
	sub.d	$a5, $t3, $t6
	sub.d	$fp, $a0, $a3
	ld.d	$t4, $sp, 704                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t6
	ld.d	$t7, $sp, 760                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $t7
	mul.d	$s0, $a2, $t1
	sub.d	$a2, $a7, $t7
	mul.d	$a7, $a2, $t3
	mul.d	$a2, $t7, $a0
	sub.d	$a6, $a6, $a2
	sub.d	$a1, $a1, $t7
	mul.d	$s1, $a1, $t4
	addi.d	$a1, $t7, -1
	mul.d	$a2, $a4, $a1
	add.d	$a2, $t1, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a2, $a5, $a1
	add.d	$a2, $t3, $a2
	sub.d	$a2, $a2, $t6
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	mul.d	$a2, $fp, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $a1
	add.d	$a0, $t4, $a0
	sub.d	$a0, $a0, $t6
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1240                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1192                  # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 1184                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 1032                  # 8-byte Folded Reload
	addi.d	$a4, $a2, -8
	ld.d	$a5, $sp, 1040                  # 8-byte Folded Reload
	addi.d	$t0, $a5, -8
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a2
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a3, $a1, 3
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	sub.d	$a4, $a4, $a3
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	sub.d	$a4, $t0, $a3
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 368                   # 8-byte Folded Spill
	slli.d	$a4, $a0, 3
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $a5, $a4
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a4, $a4, $a2
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	st.d	$t0, $sp, 424                   # 8-byte Folded Spill
	add.d	$a3, $t0, $a3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1168                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1176                  # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 736                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 744                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 752                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	slli.d	$a0, $t5, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_54
	.p2align	4, , 16
.LBB1_52:                               #   in Loop: Header=BB1_54 Depth=2
	move	$t0, $s4
.LBB1_53:                               # %for.end3863
                                        #   in Loop: Header=BB1_54 Depth=2
	add.w	$s7, $s7, $s0
	add.w	$s5, $s5, $a7
	add.w	$t2, $a6, $t2
	addi.w	$t8, $t8, 1
	add.w	$s4, $t0, $s1
	beq	$t8, $s2, .LBB1_2
.LBB1_54:                               # %for.cond3427.preheader
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_57 Depth 3
                                        #         Child Loop BB1_58 Depth 4
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB1_52
# %bb.55:                               # %for.cond3430.preheader.lr.ph
                                        #   in Loop: Header=BB1_54 Depth=2
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	move	$t0, $s4
	blt	$a0, $s6, .LBB1_61
# %bb.56:                               # %for.cond3430.preheader.us.preheader
                                        #   in Loop: Header=BB1_54 Depth=2
	st.d	$t8, $sp, 176                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_57:                               # %for.cond3430.preheader.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_58 Depth 4
	st.d	$a1, $sp, 504                   # 8-byte Folded Spill
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1248                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1240                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1232                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1224                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1216                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1208                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1200                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1192                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1184                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s4, $t2, $t6, 3
	ld.d	$t8, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$t3, $t2, $t8, 3
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$t4, $t2, $s8, 3
	ld.d	$a1, $sp, 776                   # 8-byte Folded Reload
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$a6, $t2, $a1, 3
	ld.d	$a1, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$s6, $t2, $a1, 3
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1176                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1168                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1160                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1152                  # 8-byte Folded Spill
	ld.d	$a7, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a7, 3
	st.d	$a1, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1136                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s3, 3
	st.d	$a1, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $t5, 3
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s2, 3
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $s0, 3
	st.d	$a1, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a1, $t2, $a1, 3
	st.d	$a1, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t2
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$fp, $t2, $a3, 3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$ra, $t2, $a3, 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$t7, $t2, $a3, 3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$s1, $t2, $a3, 3
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1040                  # 8-byte Folded Spill
	move	$a4, $s5
	move	$s5, $s7
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $t2, $a3, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $t2, $a3, 3
	st.d	$a3, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	add.d	$t2, $a3, $t2
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s5
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $a5, 3
	alsl.d	$a3, $a1, $a7, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t6, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s3, 3
	st.d	$a3, $sp, 984                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t8, 3
	st.d	$a3, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $t5, 3
	st.d	$a3, $sp, 968                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s8, 3
	st.d	$a3, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s2, 3
	st.d	$a3, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	st.d	$a3, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$a3, $a1, $s0, 3
	st.d	$a3, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a3, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $a1, 3
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	st.d	$a4, $sp, 800                   # 8-byte Folded Spill
	alsl.d	$a3, $a4, $a1, 3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$s3, $s5, $a1, 3
	alsl.d	$a1, $s5, $a5, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$s8, $s5, $a4, 3
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a5, $s5, $a4, 3
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	st.d	$s5, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a7, 3
	ld.d	$t6, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 920                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 912                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 904                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 896                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 648                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 888                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 880                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 872                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 864                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 856                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 848                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 840                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 832                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$t6, $t0, $t6, 3
	st.d	$t6, $sp, 824                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 672                   # 8-byte Folded Reload
	st.d	$t0, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $t6, 3
	ld.d	$s0, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 696                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_58:                               # %for.body3432.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_54 Depth=2
                                        #       Parent Loop BB1_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $fp, $a0
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t0, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fldx.d	$fa3, $t1, $a2
	fldx.d	$fa4, $s4, $a0
	add.d	$t8, $t1, $a2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 920                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $ra, $a0
	ld.d	$t0, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	fldx.d	$fa4, $t3, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 912                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $t7, $a0
	ld.d	$t0, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 16
	fldx.d	$fa4, $t4, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 904                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s1, $a0
	add.d	$t8, $a7, $a2
	ld.d	$t0, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, -8
	fldx.d	$fa4, $a6, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 896                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s7, $a0
	fldx.d	$fa2, $a7, $a2
	fldx.d	$fa3, $s6, $a0
	ld.d	$t0, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t0, $sp, 888                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	ld.d	$t0, $sp, 1176                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 880                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t0, $sp, 1184                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fldx.d	$fa3, $a4, $a2
	ld.d	$t0, $sp, 1168                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	add.d	$t8, $a4, $a2
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 872                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1192                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1200                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 8
	ld.d	$t0, $sp, 1160                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	ld.d	$t0, $sp, 1208                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	ld.d	$t0, $sp, 1216                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fld.d	$fa3, $t8, 16
	ld.d	$t0, $sp, 1152                  # 8-byte Folded Reload
	fldx.d	$fa4, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t0, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $fp, $a0
	ld.d	$t0, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $s8, $a2
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	add.d	$t8, $s8, $a2
	fldx.d	$fa6, $a5, $a2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	add.d	$s5, $a5, $a2
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $s4, $a0
	ld.d	$t0, $sp, 1136                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t0, $sp, 1224                  # 8-byte Folded Reload
	fldx.d	$fa7, $t0, $a0
	ld.d	$t0, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	ld.d	$t0, $sp, 1128                  # 8-byte Folded Reload
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $ra, $a0
	fld.d	$fa3, $t8, 8
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $s5, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	fldx.d	$fa2, $t3, $a0
	ld.d	$t0, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t0, $sp, 1232                  # 8-byte Folded Reload
	fldx.d	$fa7, $t0, $a0
	ld.d	$t0, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 840                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fld.d	$fa0, $t8, 16
	ld.d	$t0, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fldx.d	$fa2, $t5, $a2
	fldx.d	$fa3, $t7, $a0
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $s5, 16
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	fldx.d	$fa3, $t4, $a0
	ld.d	$t0, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$t8, $sp, 1240                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a0
	ld.d	$t0, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa0, $fa3, $fa0, $fa1
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa2, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 832                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fldx.d	$fa0, $t5, $a2
	fldx.d	$fa1, $s1, $a0
	ld.d	$t0, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t0, $a0
	fmul.d	$fa1, $fa0, $fa1
	fldx.d	$fa3, $s3, $a2
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fldx.d	$fa6, $a1, $a2
	add.d	$t8, $s3, $a2
	fmadd.d	$fa1, $fa1, $fa3, $fa2
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fldx.d	$fa2, $a6, $a0
	ld.d	$t0, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	ld.d	$s5, $sp, 1248                  # 8-byte Folded Reload
	fldx.d	$fa7, $s5, $a0
	ld.d	$t0, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa5, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa7, $fa1
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t0, $sp, 824                   # 8-byte Folded Reload
	fstx.d	$fa0, $t0, $a2
	fld.d	$fa0, $t8, 8
	add.d	$t8, $a1, $a2
	ld.d	$t0, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa1, $t0, $a0
	fldx.d	$fa2, $t5, $a2
	fldx.d	$fa3, $s7, $a0
	fldx.d	$fa4, $a3, $a2
	ld.d	$t0, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fld.d	$fa6, $t8, 8
	fmul.d	$fa3, $fa2, $fa3
	fmadd.d	$fa1, $fa3, $fa0, $fa1
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa1, $fa3, $fa6, $fa1
	ld.d	$t8, $sp, 1256                  # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a0
	ld.d	$t0, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa5, $t0, $a0
	fldx.d	$fa7, $s6, $a0
	ld.d	$t0, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$ft0, $t0, $a0
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fmadd.d	$fa1, $fa4, $fa5, $fa1
	fmadd.d	$fa0, $fa7, $fa0, $fa1
	fmadd.d	$fa0, $ft0, $fa6, $fa0
	fstx.d	$fa0, $t6, $a2
	addi.d	$a2, $a2, 8
	addi.w	$s0, $s0, -1
	add.w	$t2, $t2, $s2
	ld.d	$t0, $sp, 816                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	bnez	$s0, .LBB1_58
# %bb.59:                               # %for.cond3430.for.end3848_crit_edge.us
                                        #   in Loop: Header=BB1_57 Depth=3
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 808                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s7, $a0, $s0
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 800                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	sub.w	$s5, $a0, $s0
	ld.d	$a0, $sp, 704                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 792                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$t0, $a0, $s0
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_57
# %bb.60:                               # %for.end3863.loopexit
                                        #   in Loop: Header=BB1_54 Depth=2
	ori	$s6, $zero, 1
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_61:                               # %for.cond3430.preheader.preheader
                                        #   in Loop: Header=BB1_54 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$t2, $a0, $t2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$t0, $a0, $t0
	b	.LBB1_53
.LBB1_62:                               # %for.end3884
	move	$a0, $zero
	ld.d	$s8, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1352                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1360                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1368                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1376                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1384                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1392
	ret
.Lfunc_end1:
	.size	hypre_SMG3BuildRAPSym, .Lfunc_end1-hypre_SMG3BuildRAPSym
                                        # -- End function
	.globl	hypre_SMG3BuildRAPNoSym         # -- Begin function hypre_SMG3BuildRAPNoSym
	.p2align	5
	.type	hypre_SMG3BuildRAPNoSym,@function
hypre_SMG3BuildRAPNoSym:                # @hypre_SMG3BuildRAPNoSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1280
	st.d	$ra, $sp, 1272                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1256                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1248                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1240                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1192                  # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a3, $a3, 8
	ld.d	$a7, $a3, 8
	ld.w	$a6, $a7, 8
	ori	$s5, $zero, 1
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	blt	$a6, $s5, .LBB2_59
# %bb.1:                                # %while.cond.preheader.lr.ph
	move	$s6, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a1, $s6, 8
	move	$a4, $zero
	move	$a5, $zero
	ld.w	$s4, $a0, 8
	ld.d	$a0, $a1, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %for.inc3712
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a7, 8
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	bge	$a4, $a0, .LBB2_59
.LBB2_3:                                # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_52 Depth 2
                                        #       Child Loop BB2_55 Depth 3
                                        #         Child Loop BB2_56 Depth 4
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
                                        #     Child Loop BB2_31 Depth 2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
	slli.d	$a0, $a4, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$s1, $a5, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a5, 4
	alsl.d	$a2, $a5, $a2, 3
	addi.d	$a3, $a5, -1
	addi.d	$s0, $a2, -12
	.p2align	4, , 16
.LBB2_4:                                # %while.cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.w	$a3, $a3, 1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $a1, 4
	addi.d	$s0, $s0, 24
	bne	$a2, $a0, .LBB2_4
# %bb.5:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a7, 0
	slli.d	$a1, $a4, 4
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	addi.d	$a3, $sp, 1168
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMapCoarseToFine)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 40
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $s2, 40
	ld.d	$a3, $a0, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a1, 0
	st.d	$a3, $sp, 1104                  # 8-byte Folded Spill
	add.d	$a1, $a3, $s0
	st.d	$a1, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 1128                  # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	st.d	$a4, $sp, 1080                  # 8-byte Folded Spill
	add.d	$a0, $a4, $s0
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	addi.w	$s8, $zero, -1
	st.d	$zero, $sp, 1180
	move	$s3, $s8
	lu32i.d	$s3, 0
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1136                  # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 592                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ori	$fp, $zero, 0
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	st.d	$s8, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1120                  # 8-byte Folded Spill
	blt	$s4, $a0, .LBB2_9
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s3, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB2_9
# %bb.7:                                # %if.end132
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	move	$s2, $s8
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ori	$a0, $zero, 20
	bltu	$s4, $a0, .LBB2_10
# %bb.8:                                # %if.then134
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s8, $sp, 1180
	ori	$s3, $zero, 1
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	lu32i.d	$s4, 1
	st.d	$s4, $sp, 1180
	st.w	$s3, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s2, $sp, 1180
	ld.d	$s2, $sp, 1120                  # 8-byte Folded Reload
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 1180
	st.w	$s2, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	b	.LBB2_10
	.p2align	4, , 16
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	move	$s3, $zero
.LBB2_10:                               # %if.end165
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 1128                  # 8-byte Folded Reload
	add.d	$s2, $a0, $s0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1056                  # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	st.d	$s7, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s8
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 1112                  # 8-byte Folded Reload
	beqz	$s3, .LBB2_12
# %bb.11:                               # %if.then202
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $s8
	lu32i.d	$fp, 1
	st.d	$fp, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a0, $s4
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$fp, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 1180
	st.w	$s5, $sp, 1188
	addi.d	$a2, $sp, 1180
	move	$a0, $s4
	move	$a1, $s7
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
.LBB2_12:                               # %if.end233
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 1180
	st.w	$s5, $sp, 1188
	ld.d	$s3, $sp, 1096                  # 8-byte Folded Reload
	ld.w	$a0, $s3, 4
	ld.w	$a1, $s3, -8
	sub.w	$a0, $a0, $a1
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ldx.w	$a2, $fp, $s0
	ld.w	$a3, $s3, -12
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s8, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s8, $a2
	ld.d	$s6, $sp, 1072                  # 8-byte Folded Reload
	ld.w	$a3, $s6, 4
	ld.w	$a4, $s6, -8
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	sub.w	$a0, $a3, $a4
	slt	$a1, $s8, $a0
	ld.d	$s7, $sp, 1080                  # 8-byte Folded Reload
	ldx.w	$a2, $s7, $s0
	ld.w	$a3, $s6, -12
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	sub.w	$a1, $a2, $a3
	slt	$a2, $s8, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s8, $a2
	or	$a1, $a1, $a2
	st.d	$s5, $sp, 1184
	ldx.w	$a2, $s7, $s0
	ld.w	$a3, $s6, -12
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	mulw.d.w	$a0, $a1, $a0
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	sub.w	$a0, $a2, $a3
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1180
	st.w	$zero, $sp, 1188
	addi.d	$a1, $sp, 1156
	ld.d	$s4, $sp, 1088                  # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s6, -12
	ld.w	$a2, $s4, 4
	ld.w	$a3, $s6, -8
	ld.w	$a4, $s4, 8
	ld.w	$a5, $s6, -4
	ld.w	$a6, $s6, 4
	sub.d	$a7, $a0, $a1
	sub.d	$t0, $a2, $a3
	sub.d	$a5, $a4, $a5
	sub.w	$a3, $a6, $a3
	slt	$a6, $s8, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s8, $a6
	or	$a3, $a3, $a6
	ldx.w	$a6, $s7, $s0
	addi.d	$t4, $a3, 1
	mul.d	$a3, $t4, $a5
	add.d	$a3, $t0, $a3
	sub.w	$a1, $a6, $a1
	slt	$a5, $s8, $a1
	maskeqz	$a1, $a1, $a5
	masknez	$a5, $s8, $a5
	or	$a1, $a1, $a5
	addi.d	$a5, $a1, 1
	st.d	$a5, $sp, 952                   # 8-byte Folded Spill
	mul.d	$a3, $a3, $a5
	add.w	$s7, $a7, $a3
	ld.w	$a3, $s2, -12
	ld.w	$a5, $s2, -8
	ld.w	$a6, $s2, -4
	ld.w	$a7, $s2, 4
	sub.d	$t0, $a0, $a3
	sub.d	$t1, $a2, $a5
	sub.d	$a6, $a4, $a6
	sub.w	$a5, $a7, $a5
	slt	$a7, $s8, $a5
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $s8, $a7
	or	$a5, $a5, $a7
	ld.d	$a7, $sp, 1128                  # 8-byte Folded Reload
	ldx.w	$a7, $a7, $s0
	addi.d	$t5, $a5, 1
	mul.d	$a5, $t5, $a6
	add.d	$a5, $t1, $a5
	sub.w	$a3, $a7, $a3
	slt	$a6, $s8, $a3
	maskeqz	$a3, $a3, $a6
	masknez	$a6, $s8, $a6
	or	$a3, $a3, $a6
	addi.d	$a6, $a3, 1
	st.d	$a6, $sp, 944                   # 8-byte Folded Spill
	mul.d	$a5, $a5, $a6
	move	$t7, $s8
	add.w	$s8, $t0, $a5
	ld.w	$a5, $sp, 1168
	ld.w	$a6, $s3, -12
	ld.w	$a7, $sp, 1172
	ld.w	$t0, $s3, -8
	ld.w	$t1, $sp, 1176
	ld.w	$t2, $s3, -4
	ld.w	$t3, $s3, 4
	sub.d	$a5, $a5, $a6
	sub.d	$a7, $a7, $t0
	sub.d	$t1, $t1, $t2
	sub.w	$t0, $t3, $t0
	slt	$t2, $t7, $t0
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $t7, $t2
	or	$t0, $t0, $t2
	ldx.w	$t2, $fp, $s0
	addi.d	$t0, $t0, 1
	mul.d	$t1, $t0, $t1
	add.d	$a7, $a7, $t1
	sub.w	$a6, $t2, $a6
	slt	$t1, $t7, $a6
	maskeqz	$a6, $a6, $t1
	masknez	$t1, $t7, $t1
	or	$a6, $a6, $t1
	addi.d	$a6, $a6, 1
	mul.d	$a7, $a7, $a6
	add.w	$a7, $a5, $a7
	ld.w	$a5, $s1, 0
	ld.w	$t1, $s1, 4
	ld.w	$t2, $s1, 8
	ld.w	$t3, $s1, 16
	sub.d	$a0, $a0, $a5
	sub.d	$t6, $a2, $t1
	sub.d	$a4, $a4, $t2
	sub.w	$a2, $t3, $t1
	slt	$t1, $t7, $a2
	maskeqz	$a2, $a2, $t1
	masknez	$t1, $t7, $t1
	or	$a2, $a2, $t1
	ld.w	$t1, $s1, 12
	addi.d	$a2, $a2, 1
	mul.d	$a4, $a2, $a4
	add.d	$t2, $t6, $a4
	sub.w	$a4, $t1, $a5
	slt	$a5, $t7, $a4
	maskeqz	$a4, $a4, $a5
	masknez	$a5, $t7, $a5
	or	$a4, $a4, $a5
	addi.d	$a5, $a4, 1
	st.d	$a5, $sp, 936                   # 8-byte Folded Spill
	mul.d	$a5, $t2, $a5
	add.w	$ra, $a0, $a5
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.w	$t6, $a5, 0
	ld.w	$a0, $a5, 4
	ld.w	$a5, $a5, 8
	ld.w	$s0, $sp, 1156
	ld.w	$t1, $sp, 1160
	st.d	$t1, $sp, 648                   # 8-byte Folded Spill
	ld.w	$t8, $sp, 1164
	mul.d	$a0, $a0, $a6
	mulw.d.w	$a6, $a6, $t0
	mul.d	$a6, $a6, $a5
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ori	$a5, $zero, 19
	st.d	$t6, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s0, $sp, 640                   # 8-byte Folded Spill
	st.d	$t8, $sp, 160                   # 8-byte Folded Spill
	beq	$s4, $a5, .LBB2_37
# %bb.13:                               # %if.end233
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a5, $zero, 15
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	beq	$s4, $a5, .LBB2_26
# %bb.14:                               # %if.end233
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a5, $zero, 7
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	bne	$s4, $a5, .LBB2_48
# %bb.15:                               # %sw.bb
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$t8, $s5, .LBB2_2
# %bb.16:                               # %for.cond917.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $zero
	mul.d	$a1, $s0, $t6
	ld.d	$t2, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a3, $t2, $s0
	ld.d	$t3, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a4, $t3, $s0
	sub.d	$s1, $a0, $a1
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a5, $t7, $s0
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t1
	mul.d	$t4, $t0, $t2
	sub.d	$t0, $t5, $t1
	mul.d	$t5, $t0, $t3
	mul.d	$t0, $t1, $a0
	sub.d	$a6, $a6, $t0
	sub.d	$a2, $a2, $t1
	mul.d	$t0, $a2, $t7
	addi.d	$a2, $t1, -1
	mul.d	$a3, $a3, $a2
	add.d	$a3, $t2, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 912                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a2
	add.d	$a3, $t3, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 904                   # 8-byte Folded Spill
	st.d	$s1, $sp, 1056                  # 8-byte Folded Spill
	mul.d	$a3, $s1, $a2
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 896                   # 8-byte Folded Spill
	mul.d	$a0, $a5, $a2
	add.d	$a0, $t7, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 3
	st.d	$a4, $sp, 1024                  # 8-byte Folded Spill
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	sub.d	$a3, $a2, $a3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	st.d	$a2, $sp, 1040                  # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	slli.d	$a2, $t6, 3
	st.d	$a1, $sp, 1048                  # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	st.d	$t4, $sp, 968                   # 8-byte Folded Spill
	st.d	$t5, $sp, 960                   # 8-byte Folded Spill
	st.d	$a6, $sp, 928                   # 8-byte Folded Spill
	st.d	$t0, $sp, 920                   # 8-byte Folded Spill
	st.d	$a2, $sp, 1000                  # 8-byte Folded Spill
	b	.LBB2_19
	.p2align	4, , 16
.LBB2_17:                               # %for.cond920.preheader.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	ld.d	$a0, $sp, 912                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 888                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_18:                               # %for.end1055
                                        #   in Loop: Header=BB2_19 Depth=2
	add.w	$s7, $s7, $t4
	add.w	$s8, $s8, $t5
	add.w	$a7, $a6, $a7
	addi.w	$fp, $fp, 1
	add.w	$ra, $ra, $t0
	beq	$fp, $t8, .LBB2_2
.LBB2_19:                               # %for.cond917.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_22 Depth 3
                                        #         Child Loop BB2_23 Depth 4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $s5, .LBB2_18
# %bb.20:                               # %for.cond920.preheader.lr.ph
                                        #   in Loop: Header=BB2_19 Depth=2
	blt	$s0, $s5, .LBB2_17
# %bb.21:                               # %for.cond920.preheader.us.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_22:                               # %for.cond920.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_23 Depth 4
	st.d	$a1, $sp, 1064                  # 8-byte Folded Spill
	move	$t0, $zero
	move	$t1, $zero
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t2, $s8, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$s6, $s8, $a0, 3
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a0, $s7, $a1, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1032                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1040                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 1016                  # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$a2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s2, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$fp, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $fp, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t3, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	move	$a1, $s3
	ld.d	$a3, $sp, 1048                  # 8-byte Folded Reload
	add.d	$s3, $a3, $a7
	ld.d	$a0, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a0, 3
	ld.d	$a0, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a0, 3
	ld.d	$a3, $sp, 1056                  # 8-byte Folded Reload
	add.d	$a7, $a3, $a7
	ld.d	$a3, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a3, 3
	alsl.d	$a2, $s7, $a2, 3
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a1, $s7, $a1, 3
	ld.d	$a3, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a3, $ra, $a3, 3
	ld.d	$t6, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t6, $ra, $t6, 3
	ld.d	$t7, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t7, $ra, $t7, 3
	ld.d	$t8, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t8, $ra, $t8, 3
	ld.d	$s0, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s0, $ra, $s0, 3
	alsl.d	$s1, $s3, $fp, 3
	alsl.d	$s4, $s3, $t3, 3
	ld.d	$t3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$fp, $s3, $t3, 3
	alsl.d	$s5, $s3, $s2, 3
	ld.d	$t3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$s2, $s3, $t3, 3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s7, $s3, $t3, 3
	ld.d	$t3, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s8, $ra, $t3, 3
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$ra, $ra, $t3, 3
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 1000                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_23:                               # %for.body922.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        #       Parent Loop BB2_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s1, $t0
	ld.d	$t3, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa2, $t3, $t1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $a3, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s4, $t0
	add.d	$t3, $a6, $t1
	fld.d	$fa2, $t3, 8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t6, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $fp, $t0
	fldx.d	$fa2, $a6, $t1
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $t0
	fldx.d	$fa4, $s5, $t0
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $t7, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s2, $t0
	fld.d	$fa2, $t3, -8
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t8, $t1
	fldx.d	$fa0, $t2, $t1
	fldx.d	$fa1, $s7, $t0
	ld.d	$t3, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t3, $t1
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s0, $t1
	ld.d	$t3, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa0, $t3, $t0
	fldx.d	$fa1, $s6, $t1
	fldx.d	$fa2, $a4, $t0
	ld.d	$t3, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa3, $t3, $t1
	fldx.d	$fa4, $t2, $t1
	fldx.d	$fa5, $s1, $t0
	ld.d	$t3, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa6, $t3, $t1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $s8, $t1
	ld.d	$t3, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa0, $t3, $t0
	fldx.d	$fa1, $s6, $t1
	fldx.d	$fa2, $a5, $t0
	add.d	$t3, $a2, $t1
	fld.d	$fa3, $t3, 8
	fldx.d	$fa4, $t2, $t1
	fldx.d	$fa5, $s4, $t0
	add.d	$t3, $a1, $t1
	fld.d	$fa6, $t3, 8
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $ra, $t1
	addi.d	$t1, $t1, 8
	addi.w	$s3, $s3, -1
	add.w	$a7, $a7, $t4
	add.d	$t0, $t0, $a0
	bnez	$s3, .LBB2_23
# %bb.24:                               # %for.cond920.for.end_crit_edge.us
                                        #   in Loop: Header=BB2_22 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s7, $a0, $s3
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s8, $a0, $s3
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 1064                  # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$ra, $a0, $s3
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_22
# %bb.25:                               # %for.end1055.loopexit
                                        #   in Loop: Header=BB2_19 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 968                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 928                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 920                   # 8-byte Folded Reload
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_26:                               # %sw.bb1074
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$t8, $s5, .LBB2_2
# %bb.27:                               # %for.cond1624.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	blt	$a1, $s5, .LBB2_2
# %bb.28:                               # %for.cond1624.preheader.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$fp, $zero
	mul.d	$a1, $s0, $t6
	ld.d	$t2, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a3, $t2, $s0
	ld.d	$t3, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a4, $t3, $s0
	sub.d	$s1, $a0, $a1
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a5, $t7, $s0
	ld.d	$t1, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t0, $t4, $t1
	mul.d	$t0, $t0, $t2
	st.d	$t0, $sp, 816                   # 8-byte Folded Spill
	sub.d	$t0, $t5, $t1
	mul.d	$t0, $t0, $t3
	st.d	$t0, $sp, 808                   # 8-byte Folded Spill
	mul.d	$t0, $t1, $a0
	sub.d	$a6, $a6, $t0
	st.d	$a6, $sp, 800                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t1
	mul.d	$a2, $a2, $t7
	st.d	$a2, $sp, 792                   # 8-byte Folded Spill
	addi.d	$a2, $t1, -1
	mul.d	$a3, $a3, $a2
	add.d	$a3, $t2, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 784                   # 8-byte Folded Spill
	mul.d	$a3, $a4, $a2
	add.d	$a3, $t3, $a3
	sub.d	$a3, $a3, $s0
	st.d	$a3, $sp, 776                   # 8-byte Folded Spill
	st.d	$s1, $sp, 920                   # 8-byte Folded Spill
	mul.d	$a3, $s1, $a2
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	mul.d	$a0, $a5, $a2
	add.d	$a0, $t7, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a3, $a0, 31, 0
	ld.d	$a0, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a0, 3
	st.d	$a4, $sp, 888                   # 8-byte Folded Spill
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	sub.d	$a3, $a2, $a3
	st.d	$a3, $sp, 880                   # 8-byte Folded Spill
	st.d	$a2, $sp, 904                   # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 872                   # 8-byte Folded Spill
	slli.d	$a2, $t6, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 832                   # 8-byte Folded Spill
	st.d	$a2, $sp, 864                   # 8-byte Folded Spill
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_29:                               # %for.cond1627.preheader.us1956.preheader
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a0, $sp, 784                   # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 776                   # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 768                   # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 760                   # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_30:                               # %for.cond1624.for.end1844_crit_edge.us
                                        #   in Loop: Header=BB2_31 Depth=2
	ld.d	$a0, $sp, 816                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 808                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a0
	ld.d	$a0, $sp, 800                   # 8-byte Folded Reload
	add.w	$a7, $a0, $a7
	addi.w	$fp, $fp, 1
	ld.d	$a0, $sp, 792                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a0
	beq	$fp, $t8, .LBB2_2
.LBB2_31:                               # %for.cond1624.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_33 Depth 3
                                        #         Child Loop BB2_34 Depth 4
	blt	$s0, $s5, .LBB2_29
# %bb.32:                               # %for.cond1627.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_31 Depth=2
	st.d	$fp, $sp, 824                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_33:                               # %for.cond1627.preheader.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_34 Depth 4
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 896                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$t7, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t7, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 880                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	ld.d	$t2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t2, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a6, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s4, $a7, $a6, 3
	ld.d	$a3, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$s5, $a7, $a3, 3
	ld.d	$t6, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t6, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a4, $a7, $a0, 3
	st.d	$a4, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a4, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a4, 3
	st.d	$a5, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t4, 3
	st.d	$a5, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t1, 3
	st.d	$a5, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t3, 3
	st.d	$a5, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $t0, 3
	st.d	$a5, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 912                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$t5, $a7, $t5, 3
	st.d	$t5, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	add.d	$a7, $t5, $a7
	alsl.d	$s1, $a5, $t4, 3
	alsl.d	$a6, $a5, $a6, 3
	st.d	$a6, $sp, 1008                  # 8-byte Folded Spill
	alsl.d	$t5, $a5, $t3, 3
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$a3, $a5, $t6, 3
	st.d	$a3, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a3, $a5, $a3, 3
	st.d	$a3, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a0, 3
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a0, $a5, $a3, 3
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a3, $a5, $a4, 3
	alsl.d	$a6, $a5, $t1, 3
	alsl.d	$s2, $a5, $t0, 3
	ld.d	$a4, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a4, 3
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$s8, $s8, $a4, 3
	alsl.d	$t7, $s7, $t7, 3
	ld.d	$a4, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a4, 3
	alsl.d	$t0, $s7, $t2, 3
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$t2, $s7, $s3, 3
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t3, $ra, $a4, 3
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	move	$t1, $ra
	alsl.d	$ra, $ra, $a4, 3
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$fp, $t1, $a4, 3
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t8, $t1, $a4, 3
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$s7, $t1, $a4, 3
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t6, $t1, $a4, 3
	ld.d	$a4, $sp, 568                   # 8-byte Folded Reload
	st.d	$t1, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$s3, $t1, $a4, 3
	move	$t1, $s0
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a0, $sp, 864                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_34:                               # %for.body1629.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $s6, $a2
	fldx.d	$fa1, $s1, $a1
	ld.d	$a4, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	ld.d	$a4, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa3, $a4, $a2
	fldx.d	$fa4, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t3, $a2
	fldx.d	$fa0, $s6, $a2
	fldx.d	$fa1, $t5, $a1
	add.d	$a4, $a5, $a2
	ld.d	$t4, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $a4, 8
	fldx.d	$fa4, $s5, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $ra, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$t4, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $a1
	fldx.d	$fa2, $a5, $a2
	ld.d	$t4, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa3, $t4, $a1
	ld.d	$t4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa4, $t4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	fstx.d	$fa0, $fp, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$t4, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa1, $t4, $a1
	ld.d	$t4, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $t4, $a1
	fld.d	$fa3, $a4, -8
	ld.d	$a4, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $s6, $a2
	ld.d	$a4, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa1, $a4, $a1
	fldx.d	$fa2, $a3, $a1
	ld.d	$a4, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa3, $a4, $a2
	ld.d	$a4, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $a4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $s7, $a2
	ld.d	$a4, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s8, $a2
	ld.d	$a4, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa3, $t7, $a2
	fldx.d	$fa4, $s6, $a2
	fldx.d	$fa5, $s1, $a1
	ld.d	$a4, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa6, $a4, $a2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a4, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa5, $s4, $a1
	ld.d	$a4, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $a1
	fldx.d	$ft0, $a6, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t6, $a2
	ld.d	$a4, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa0, $a4, $a1
	fldx.d	$fa1, $s8, $a2
	ld.d	$a4, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	add.d	$a4, $t0, $a2
	fld.d	$fa3, $a4, 8
	fldx.d	$fa4, $s6, $a2
	fldx.d	$fa5, $t5, $a1
	add.d	$a4, $t2, $a2
	fld.d	$fa6, $a4, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$a4, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa2, $a4, $a1
	fldx.d	$fa5, $s5, $a1
	ld.d	$a4, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa7, $a4, $a1
	fldx.d	$ft0, $s2, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s3, $a2
	addi.d	$a2, $a2, 8
	addi.w	$t1, $t1, -1
	add.w	$a7, $a7, $s0
	add.d	$a1, $a1, $a0
	bnez	$t1, .LBB2_34
# %bb.35:                               # %for.cond1627.for.end1829_crit_edge.us.us
                                        #   in Loop: Header=BB2_33 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s7, $a0, $t1
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$s8, $a0, $t1
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	sub.w	$ra, $a0, $t1
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_33
# %bb.36:                               # %for.cond1624.for.end1844_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_31 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 824                   # 8-byte Folded Reload
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_37:                               # %sw.bb1863
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	blt	$t8, $s5, .LBB2_2
# %bb.38:                               # %for.cond2413.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a5, $sp, 648                   # 8-byte Folded Reload
	blt	$a5, $s5, .LBB2_2
# %bb.39:                               # %for.cond2413.preheader.us.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 320                 # 8-byte Folded Spill
	mul.d	$a5, $s0, $t6
	ld.d	$fp, $sp, 952                   # 8-byte Folded Reload
	sub.d	$t0, $fp, $s0
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$t1, $s1, $s0
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	sub.d	$a1, $a0, $a5
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t2, $s2, $s0
	ld.d	$t7, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t3, $t4, $t7
	mul.d	$t3, $t3, $fp
	st.d	$t3, $sp, 312                   # 8-byte Folded Spill
	sub.d	$t3, $t5, $t7
	mul.d	$t3, $t3, $s1
	st.d	$t3, $sp, 304                   # 8-byte Folded Spill
	mul.d	$t3, $t7, $a0
	sub.d	$a6, $a6, $t3
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $s2
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	addi.d	$a2, $t7, -1
	mul.d	$a6, $t0, $a2
	add.d	$a6, $fp, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 280                   # 8-byte Folded Spill
	mul.d	$a6, $t1, $a2
	add.d	$a6, $s1, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 272                   # 8-byte Folded Spill
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	mul.d	$a6, $a1, $a2
	add.d	$a0, $a6, $a0
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	mul.d	$a0, $t2, $a2
	add.d	$a0, $s2, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a5, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a6, $a0, 31, 0
	sub.d	$a0, $a3, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a3, 3
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 760                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 752                   # 8-byte Folded Spill
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	slli.d	$t0, $t6, 3
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	st.d	$a6, $sp, 784                   # 8-byte Folded Spill
	sub.d	$a1, $a5, $a6
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	st.d	$a5, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a1, $a5, $a3, 3
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	sub.d	$a1, $a4, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.d	$t0, $sp, 736                   # 8-byte Folded Spill
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_40:                               # %for.cond2416.preheader.us1907.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$s7, $a1, $s7
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$s8, $a1, $s8
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$ra, $a1, $ra
.LBB2_41:                               # %for.cond2413.for.end2729_crit_edge.us
                                        #   in Loop: Header=BB2_42 Depth=2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a1
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.w	$a7, $a1, $a7
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a1
	beq	$a0, $t8, .LBB2_2
.LBB2_42:                               # %for.cond2413.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
	blt	$s0, $s5, .LBB2_40
# %bb.43:                               # %for.cond2416.preheader.us.us.preheader
                                        #   in Loop: Header=BB2_42 Depth=2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$a2, $zero
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_44:                               # %for.cond2416.preheader.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_45 Depth 4
	st.d	$a2, $sp, 816                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $zero
	move	$a0, $zero
	ld.d	$a3, $sp, 784                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	alsl.d	$a3, $a3, $s3, 3
	st.d	$a3, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 744                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$t3, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s4, $a7, $t3, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$s5, $a7, $a6, 3
	ld.d	$t8, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t8, 3
	st.d	$a3, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a5, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a5, 3
	st.d	$a3, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$t1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t1, 3
	st.d	$a3, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t0, 3
	st.d	$a3, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t5, 3
	st.d	$a3, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$t6, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t6, 3
	st.d	$a3, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$t2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t2, 3
	st.d	$a3, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$t7, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t7, 3
	st.d	$a3, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t4, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $t4, 3
	st.d	$a3, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 800                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a7
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a7, $a3, 3
	st.d	$a3, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a3, $sp, 808                   # 8-byte Folded Reload
	add.d	$a7, $a3, $a7
	ld.d	$a3, $sp, 792                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	alsl.d	$s0, $a3, $fp, 3
	ld.d	$a3, $sp, 720                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s7
	ld.d	$fp, $sp, 760                   # 8-byte Folded Reload
	alsl.d	$fp, $a3, $fp, 3
	move	$s2, $ra
	alsl.d	$ra, $a4, $t0, 3
	alsl.d	$t0, $a4, $t5, 3
	alsl.d	$a3, $a4, $t3, 3
	st.d	$a3, $sp, 992                   # 8-byte Folded Spill
	alsl.d	$t5, $a4, $t2, 3
	alsl.d	$a3, $a4, $t7, 3
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 976                   # 8-byte Folded Spill
	alsl.d	$a6, $a4, $t8, 3
	st.d	$a6, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a6, $sp, 960                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t1, 3
	st.d	$a5, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $a5, 3
	st.d	$a5, $sp, 920                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $t6, 3
	st.d	$a5, $sp, 912                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $t4, 3
	st.d	$a4, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $a4, 3
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$a5, $s8, $a4, 3
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	add.d	$a4, $a4, $s7
	st.d	$a4, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$a4, $s7, $a4, 3
	st.d	$a4, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s1, $s7, $a4, 3
	alsl.d	$a4, $s7, $s6, 3
	st.d	$a4, $sp, 880                   # 8-byte Folded Spill
	st.d	$s7, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a4, $s7, $s3, 3
	st.d	$a4, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t2, $s2, $a4, 3
	ld.d	$a4, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t4, $s2, $a4, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t6, $s2, $a4, 3
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t3, $s2, $a4, 3
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$s7, $s2, $a4, 3
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a4, $s2, $a4, 3
	ld.d	$a6, $sp, 568                   # 8-byte Folded Reload
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$a6, $s2, $a6, 3
	ld.d	$s8, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 736                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_45:                               # %for.body2418.us.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        #       Parent Loop BB2_44 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $ra, $a1
	fldx.d	$fa2, $s0, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s2, $s0, $a2
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 864                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $t0, $a1
	ld.d	$t8, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	fldx.d	$fa4, $s4, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 856                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $t5, $a1
	fld.d	$fa2, $s2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	ld.d	$t8, $sp, 848                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	fldx.d	$fa1, $a3, $a1
	add.d	$s2, $s1, $a2
	ld.d	$t8, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, 8
	fldx.d	$fa4, $s5, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 840                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fldx.d	$fa2, $s1, $a2
	ld.d	$t8, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a1
	ld.d	$t8, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t8, $sp, 832                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	ld.d	$t8, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	ld.d	$t8, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t8, $sp, 824                   # 8-byte Folded Reload
	fstx.d	$fa0, $t8, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fldx.d	$fa2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s2, $fp, $a2
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t2, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	ld.d	$t8, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fld.d	$fa3, $s2, -8
	ld.d	$t8, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa4, $t8, $a1
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	fstx.d	$fa0, $t4, $a2
	fldx.d	$fa0, $t7, $a2
	ld.d	$t8, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t8, $a1
	fld.d	$fa2, $s2, -16
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $t6, $a2
	ld.d	$t8, $sp, 896                   # 8-byte Folded Reload
	add.w	$s2, $t8, $a0
	addi.w	$s3, $s2, 2
	ld.d	$t8, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	slli.d	$s3, $s3, 3
	fldx.d	$fa3, $s6, $s3
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $ra, $a1
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $s6, $s3
	ld.d	$s6, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1144                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $t3, $a2
	ld.d	$t8, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	ld.d	$t8, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa3, $t8, $a2
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $t0, $a1
	ld.d	$t8, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa6, $t8, $a2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t8, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fldx.d	$fa5, $s4, $a1
	ld.d	$t8, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a1
	ld.d	$t8, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $s7, $a2
	ld.d	$t8, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	slli.d	$s2, $s2, 3
	fldx.d	$fa3, $s6, $s2
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $t5, $a1
	fldx.d	$fa6, $s3, $s2
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmul.d	$fa1, $fa4, $fa5
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fstx.d	$fa0, $a4, $a2
	ld.d	$t8, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa0, $t8, $a1
	fldx.d	$fa1, $a5, $a2
	ld.d	$t8, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	ld.d	$t8, $sp, 880                   # 8-byte Folded Reload
	add.d	$s2, $t8, $a2
	fld.d	$fa3, $s2, 8
	fldx.d	$fa4, $t7, $a2
	fldx.d	$fa5, $a3, $a1
	ld.d	$t8, $sp, 872                   # 8-byte Folded Reload
	add.d	$s2, $t8, $a2
	fld.d	$fa6, $s2, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t8, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa2, $t8, $a1
	fldx.d	$fa5, $s5, $a1
	ld.d	$t8, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa7, $t8, $a1
	ld.d	$t8, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$ft0, $t8, $a1
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a6, $a2
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	ld.d	$s2, $sp, 1128                  # 8-byte Folded Reload
	add.w	$a7, $a7, $s2
	add.d	$a1, $a1, $t1
	bne	$s8, $a0, .LBB2_45
# %bb.46:                               # %for.cond2416.for.end2714_crit_edge.us.us
                                        #   in Loop: Header=BB2_44 Depth=3
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.w	$s7, $a1, $a0
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 776                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.w	$s8, $a1, $a0
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 816                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	add.w	$ra, $a1, $a0
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB2_44
# %bb.47:                               # %for.cond2413.for.end2729_crit_edge.us.loopexit
                                        #   in Loop: Header=BB2_42 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_48:                               # %sw.default
                                        #   in Loop: Header=BB2_3 Depth=1
	blt	$t8, $s5, .LBB2_2
# %bb.49:                               # %for.cond3297.preheader.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	mul.d	$a5, $s0, $t6
	ld.d	$fp, $sp, 952                   # 8-byte Folded Reload
	sub.d	$t0, $fp, $s0
	ld.d	$s1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$t1, $s1, $s0
	st.d	$a1, $sp, 1112                  # 8-byte Folded Spill
	sub.d	$a1, $a0, $a5
	ld.d	$s2, $sp, 936                   # 8-byte Folded Reload
	sub.d	$t2, $s2, $s0
	ld.d	$t7, $sp, 648                   # 8-byte Folded Reload
	sub.d	$t3, $t4, $t7
	mul.d	$t4, $t3, $fp
	sub.d	$t3, $t5, $t7
	mul.d	$t5, $t3, $s1
	mul.d	$t3, $t7, $a0
	sub.d	$t3, $a6, $t3
	sub.d	$a2, $a2, $t7
	mul.d	$a2, $a2, $s2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $t7, -1
	mul.d	$a6, $t0, $a2
	add.d	$a6, $fp, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	mul.d	$a6, $t1, $a2
	add.d	$a6, $s1, $a6
	sub.d	$a6, $a6, $s0
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	mul.d	$a6, $a1, $a2
	add.d	$a0, $a6, $a0
	sub.d	$a0, $a0, $a5
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	mul.d	$a0, $t2, $a2
	add.d	$a0, $s2, $a0
	sub.d	$a0, $a0, $s0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1120                  # 8-byte Folded Reload
	bstrpick.d	$a1, $a0, 31, 0
	ld.d	$a0, $sp, 1064                  # 8-byte Folded Reload
	bstrpick.d	$a5, $a0, 31, 0
	ld.d	$a0, $sp, 1048                  # 8-byte Folded Reload
	bstrpick.d	$a6, $a0, 31, 0
	sub.d	$a0, $a3, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a3, 3
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$a0, $a6, $a0, 3
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a2, $sp, 512                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 3
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 1112                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	sub.d	$a1, $a4, $s0
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	sub.d	$a0, $a1, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a6, $sp, 328                   # 8-byte Folded Spill
	sub.d	$a0, $a5, $a6
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	alsl.d	$a0, $a5, $a3, 3
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	st.d	$t5, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_50:                               # %for.cond3300.preheader.preheader
                                        #   in Loop: Header=BB2_52 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$s7, $a0, $s7
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s8, $a0, $s8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a7, $a0, $a7
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$ra, $a0, $ra
.LBB2_51:                               # %for.end3693
                                        #   in Loop: Header=BB2_52 Depth=2
	add.w	$s7, $s7, $t4
	add.w	$s8, $s8, $t5
	add.w	$a7, $t3, $a7
	addi.w	$a1, $a1, 1
	add.w	$ra, $ra, $a2
	beq	$a1, $t8, .LBB2_2
.LBB2_52:                               # %for.cond3297.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_55 Depth 3
                                        #         Child Loop BB2_56 Depth 4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	blt	$a0, $s5, .LBB2_51
# %bb.53:                               # %for.cond3300.preheader.lr.ph
                                        #   in Loop: Header=BB2_52 Depth=2
	blt	$s0, $s5, .LBB2_50
# %bb.54:                               # %for.cond3300.preheader.us.preheader
                                        #   in Loop: Header=BB2_52 Depth=2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$a1, $zero
	.p2align	4, , 16
.LBB2_55:                               # %for.cond3300.preheader.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_56 Depth 4
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	move	$a2, $s7
	move	$s7, $zero
	move	$a5, $zero
	move	$fp, $zero
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a0, $s3, 3
	st.d	$a0, $sp, 1144                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1120                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1112                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1104                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1096                  # 8-byte Folded Spill
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s0, $a7, $s2, 3
	ld.d	$t7, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t7, 3
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$t1, $a7, $t8, 3
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$t6, $a7, $a6, 3
	ld.d	$t3, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t3, 3
	st.d	$a0, $sp, 1088                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1080                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1072                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1064                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1056                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t0, 3
	st.d	$a0, $sp, 1048                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1040                  # 8-byte Folded Spill
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s5, 3
	st.d	$a0, $sp, 1032                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 1024                  # 8-byte Folded Spill
	ld.d	$t5, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $t5, 3
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s4, 3
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s6, 3
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $a7, $s1, 3
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a1, $a7, $a1, 3
	st.d	$a1, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	add.d	$a7, $a1, $a7
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$t4, $a1, $a3, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 3
	alsl.d	$t0, $a0, $t0, 3
	alsl.d	$a1, $a0, $s2, 3
	st.d	$a1, $sp, 952                   # 8-byte Folded Spill
	move	$a4, $s3
	alsl.d	$s3, $a0, $s5, 3
	alsl.d	$a1, $a0, $t7, 3
	st.d	$a1, $sp, 944                   # 8-byte Folded Spill
	alsl.d	$s5, $a0, $t5, 3
	alsl.d	$a1, $a0, $t8, 3
	st.d	$a1, $sp, 936                   # 8-byte Folded Spill
	alsl.d	$s6, $a0, $s6, 3
	alsl.d	$a1, $a0, $a6, 3
	st.d	$a1, $sp, 928                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 920                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $t3, 3
	st.d	$a1, $sp, 912                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 896                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 872                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 864                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	st.d	$a1, $sp, 832                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	st.d	$a1, $sp, 824                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s1, 3
	st.d	$a0, $sp, 816                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 616                   # 8-byte Folded Reload
	alsl.d	$t7, $s8, $a0, 3
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	st.d	$s8, $sp, 688                   # 8-byte Folded Spill
	alsl.d	$a0, $s8, $a0, 3
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s8, $a2, $a1, 3
	ld.d	$s2, $sp, 1136                  # 8-byte Folded Reload
	alsl.d	$a1, $a2, $s2, 3
	st.d	$a1, $sp, 792                   # 8-byte Folded Spill
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a4, 3
	st.d	$a1, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 776                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 744                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 736                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a1, 3
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a1, $ra, $a2, 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t8, $ra, $a2, 3
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	ld.d	$t3, $sp, 568                   # 8-byte Folded Reload
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	alsl.d	$t3, $ra, $t3, 3
	ld.d	$a1, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$a6, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_56:                               # %for.body3302.us
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_52 Depth=2
                                        #       Parent Loop BB2_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $t0, $s7
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa3, $t4, $a5
	fldx.d	$fa4, $s0, $s7
	add.d	$s1, $t4, $a5
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 776                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s3, $s7
	ld.d	$t5, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	fldx.d	$fa4, $t2, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 768                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s5, $s7
	ld.d	$t5, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -16
	fldx.d	$fa4, $t1, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 760                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	fldx.d	$fa1, $s6, $s7
	add.d	$s1, $s8, $a5
	ld.d	$t5, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, 8
	fldx.d	$fa4, $t6, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 752                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	fldx.d	$fa2, $s8, $a5
	ld.d	$t5, $sp, 1088                  # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $s7
	ld.d	$t5, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa2, $fa1
	fmadd.d	$fa1, $fa3, $fa2, $fa1
	fmadd.d	$fa0, $fa0, $fa4, $fa1
	ld.d	$t5, $sp, 744                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	ld.d	$t5, $sp, 1080                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 736                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa3, $a3, $a5
	ld.d	$t5, $sp, 1072                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	add.d	$s1, $a3, $a5
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 728                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -8
	ld.d	$t5, $sp, 1064                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 720                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	fldx.d	$fa0, $t7, $a5
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $s7
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fld.d	$fa3, $s1, -16
	ld.d	$t5, $sp, 1056                  # 8-byte Folded Reload
	fldx.d	$fa4, $t5, $s7
	fmul.d	$fa1, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	fmadd.d	$fa0, $fa4, $fa3, $fa0
	ld.d	$t5, $sp, 712                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	ld.d	$t5, $sp, 808                   # 8-byte Folded Reload
	add.w	$s1, $t5, $fp
	addi.w	$t5, $s1, 2
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	fldx.d	$fa0, $s4, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$s4, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa2, $s4, $s7
	slli.d	$t5, $t5, 3
	fldx.d	$fa3, $s2, $t5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $t0, $s7
	fldx.d	$fa6, $a4, $t5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1040                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $s0, $s7
	ld.d	$t5, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	ld.d	$t5, $sp, 704                   # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a5
	ld.d	$t5, $sp, 1032                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	ld.d	$t5, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s3, $s7
	ld.d	$t5, $sp, 1144                  # 8-byte Folded Reload
	fldx.d	$fa6, $t5, $a5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t2, $s7
	ld.d	$t5, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t8, $a5
	ld.d	$t5, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 1096                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	slli.d	$t5, $s1, 3
	fldx.d	$fa3, $s2, $t5
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s5, $s7
	fldx.d	$fa6, $a4, $t5
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t1, $s7
	ld.d	$t5, $sp, 1104                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $a2, $a5
	ld.d	$t5, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa0, $t5, $s7
	fldx.d	$fa1, $a0, $a5
	ld.d	$t5, $sp, 1112                  # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	ld.d	$t5, $sp, 792                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a5
	fld.d	$fa3, $t5, 8
	fldx.d	$fa4, $t7, $a5
	fldx.d	$fa5, $s6, $s7
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a5
	fld.d	$fa6, $t5, 8
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmul.d	$fa2, $fa4, $fa5
	fmadd.d	$fa0, $fa2, $fa6, $fa0
	ld.d	$t5, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $s7
	fldx.d	$fa5, $t6, $s7
	ld.d	$t5, $sp, 1120                  # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $s7
	ld.d	$t5, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $s7
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa1, $fa7, $fa0
	fmadd.d	$fa0, $fa4, $ft0, $fa0
	fstx.d	$fa0, $t3, $a5
	addi.w	$fp, $fp, 1
	addi.d	$a5, $a5, 8
	add.w	$a7, $a7, $a1
	add.d	$s7, $s7, $ra
	bne	$a6, $fp, .LBB2_56
# %bb.57:                               # %for.cond3300.for.end3678_crit_edge.us
                                        #   in Loop: Header=BB2_55 Depth=3
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.w	$s7, $a0, $fp
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.w	$s8, $a0, $fp
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	add.w	$ra, $a0, $fp
	move	$s3, $a4
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB2_55
# %bb.58:                               # %for.end3693.loopexit
                                        #   in Loop: Header=BB2_52 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 640                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB2_51
.LBB2_59:                               # %for.end3714
	move	$a0, $zero
	ld.d	$s8, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1240                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1248                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1272                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1280
	ret
.Lfunc_end2:
	.size	hypre_SMG3BuildRAPNoSym, .Lfunc_end2-hypre_SMG3BuildRAPNoSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicSym        # -- Begin function hypre_SMG3RAPPeriodicSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicSym,@function
hypre_SMG3RAPPeriodicSym:               # @hypre_SMG3RAPPeriodicSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	ld.w	$a1, $a2, 64
	ori	$fp, $zero, 1
	bne	$a1, $fp, .LBB3_110
# %bb.1:                                # %if.then
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 24
	ld.w	$a1, $a1, 8
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s0, $a2, 8
	pcaddu18i	$ra, %call36(hypre_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 8
	blt	$a0, $fp, .LBB3_110
# %bb.2:                                # %for.body.lr.ph
	move	$a1, $s0
	move	$s0, $zero
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	lu32i.d	$a2, 0
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ori	$s7, $zero, 16
	lu52i.d	$a0, $zero, 1024
	xvreplgr2vr.d	$xr6, $a0
	xvrepli.b	$xr7, 0
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
                                        # implicit-def: $r27
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	xvst	$xr6, $sp, 32                   # 32-byte Folded Spill
	xvst	$xr7, $sp, 96                   # 32-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.inc1094
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB3_110
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
                                        #     Child Loop BB3_56 Depth 2
                                        #       Child Loop BB3_59 Depth 3
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_65 Depth 4
                                        #     Child Loop BB3_72 Depth 2
                                        #       Child Loop BB3_74 Depth 3
                                        #         Child Loop BB3_91 Depth 4
                                        #         Child Loop BB3_77 Depth 4
                                        #     Child Loop BB3_100 Depth 2
                                        #       Child Loop BB3_103 Depth 3
                                        #         Child Loop BB3_106 Depth 4
                                        #         Child Loop BB3_109 Depth 4
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a1, $s0, 4
	alsl.d	$a2, $s0, $a1, 3
	add.d	$a1, $a0, $a2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.d	$s2, $sp, 444
	st.w	$zero, $sp, 452
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 12
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ldx.w	$a0, $a0, $a2
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $sp, 448
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	st.d	$s6, $sp, 444
	st.w	$s6, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 444
	st.w	$s6, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$s1, $sp, 444
	st.w	$s6, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s2, $sp, 444
	st.w	$s6, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $sp, 444
	st.w	$zero, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 444
	st.w	$zero, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 444
	st.w	$zero, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $fp
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_6
# %bb.5:                                # %if.then133
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	st.d	$s2, $sp, 444
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	st.w	$s4, $sp, 452
	addi.d	$a2, $sp, 444
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu32i.d	$fp, -1
	st.d	$fp, $sp, 444
	st.w	$s4, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	move	$a0, $s2
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 444
	st.w	$s4, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 444
	st.w	$s4, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s2, $sp, 444
	st.w	$zero, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$fp, $sp, 444
	st.w	$zero, $sp, 452
	addi.d	$a2, $sp, 444
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 432
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $a3
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 440
	ori	$a0, $zero, 1
	vldi	$vr5, -1024
	xvld	$xr6, $sp, 32                   # 32-byte Folded Reload
	xvld	$xr7, $sp, 96                   # 32-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_66
# %bb.7:                                # %for.cond343.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a3, $sp, 436
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB3_66
# %bb.8:                                # %for.cond343.preheader.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $zero
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 0
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $t0, 0
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	ld.w	$a3, $a1, 4
	ld.w	$a4, $t0, 4
	ld.w	$a5, $a1, 8
	ld.w	$a6, $t0, 8
	ld.w	$a7, $t0, 16
	sub.d	$a0, $a0, $a2
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.w	$a4, $a7, $a4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	slt	$a6, $a1, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a1, $a6
	or	$a4, $a4, $a6
	ld.w	$a6, $t0, 12
	addi.d	$a4, $a4, 1
	mul.d	$a5, $a4, $a5
	add.d	$a3, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a5, $a1, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a1, $a5
	or	$a2, $a2, $a5
	addi.d	$a5, $a2, 1
	ld.wu	$a2, $sp, 432
	mul.d	$a3, $a3, $a5
	add.w	$t5, $a3, $a0
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a0, $s6, -8
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	sub.d	$a1, $a5, $a2
	sub.d	$a0, $a4, $a3
	mul.d	$a0, $a5, $a0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a3, -1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $a1, $a0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a2, -1
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	nor	$t4, $a1, $zero
	bstrpick.d	$a4, $a0, 31, 0
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $s0, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $s1, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a5, $a4, $t2, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s8, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $s2, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a1, $s6, -8
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $s6, 3
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a5, $a4, $ra, 3
	addi.d	$a1, $a5, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a4, $a4, $s5, 3
	addi.d	$a1, $a4, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	move	$a6, $t5
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_9:                                # %for.cond346.preheader.us499.preheader
                                        #   in Loop: Header=BB3_11 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB3_10:                               # %for.cond343.for.end378_crit_edge.us
                                        #   in Loop: Header=BB3_11 Depth=2
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB3_53
.LBB3_11:                               # %for.cond343.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_13 Depth 3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	addi.w	$a1, $a2, 0
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_9
# %bb.12:                               # %for.cond346.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_11 Depth=2
	move	$t6, $zero
	.p2align	4, , 16
.LBB3_13:                               # %for.cond346.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_38 Depth 4
                                        #         Child Loop BB3_17 Depth 4
	bltu	$a2, $s7, .LBB3_15
# %bb.14:                               # %vector.scevcheck747
                                        #   in Loop: Header=BB3_13 Depth=3
	add.w	$t8, $a6, $t4
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.w	$a0, $a6, $a0
	bge	$a0, $t8, .LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=3
	move	$a5, $zero
.LBB3_16:                               # %for.body348.us.us.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	slli.d	$a0, $a6, 3
	add.w	$a4, $t4, $a6
	sub.d	$a5, $a2, $a5
	move	$a7, $t2
	move	$t0, $ra
	move	$t1, $s1
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	move	$t7, $s2
	move	$t8, $s0
	move	$fp, $s8
	.p2align	4, , 16
.LBB3_17:                               # %for.body348.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a0
	fldx.d	$fa1, $t8, $a0
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fstx.d	$fa0, $t8, $a0
	fldx.d	$fa0, $t7, $a0
	fldx.d	$fa1, $t3, $a0
	fldx.d	$fa2, $t1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a0
	fldx.d	$fa0, $t0, $a0
	slli.d	$a1, $a4, 3
	fldx.d	$fa1, $s5, $a1
	fldx.d	$fa2, $a7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a7, $a0
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.w	$a5, $a5, -1
	addi.w	$a4, $a4, 1
	bnez	$a5, .LBB3_17
.LBB3_18:                               # %for.cond346.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB3_13 Depth=3
	addi.w	$t6, $t6, 1
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	bne	$t6, $a3, .LBB3_13
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_19:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$ra, $a6, $s0, 3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	alsl.d	$t0, $a6, $s1, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 3
	sltu	$a0, $ra, $t7
	sltu	$a4, $t0, $t2
	and	$a0, $a0, $a4
	move	$a5, $zero
	bnez	$a0, .LBB3_52
# %bb.20:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a0, 3
	sltu	$a0, $ra, $a4
	sltu	$t1, $a7, $t2
	and	$a0, $a0, $t1
	bnez	$a0, .LBB3_52
# %bb.21:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$t3, $a6, $s8, 3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	sltu	$a0, $ra, $s6
	sltu	$t1, $t3, $t2
	and	$a0, $a0, $t1
	bnez	$a0, .LBB3_51
# %bb.22:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$a0, $a6, $s2, 3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a1, 3
	sltu	$t1, $ra, $s1
	sltu	$fp, $a0, $t2
	and	$t1, $t1, $fp
	bnez	$t1, .LBB3_50
# %bb.23:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a1, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a1, 3
	sltu	$fp, $ra, $s2
	sltu	$s0, $t1, $t2
	and	$fp, $fp, $s0
	bnez	$fp, .LBB3_49
# %bb.24:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	move	$a3, $s8
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a1, 3
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a1, 3
	sltu	$s0, $ra, $s7
	sltu	$s8, $fp, $t2
	and	$s0, $s0, $s8
	bnez	$s0, .LBB3_45
# %bb.25:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	alsl.d	$s8, $t8, $s5, 3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a1, 3
	sltu	$a1, $ra, $s0
	sltu	$t2, $s8, $t2
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.26:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $a4
	sltu	$t2, $a7, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.27:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s6
	sltu	$t2, $t3, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.28:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s1
	sltu	$t2, $a0, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.29:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s2
	sltu	$t2, $t1, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.30:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s7
	sltu	$t2, $fp, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.31:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $t0, $s0
	sltu	$t2, $s8, $t7
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.32:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $a7, $s6
	sltu	$t2, $t3, $a4
	and	$a1, $a1, $t2
	bnez	$a1, .LBB3_45
# %bb.33:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $a7, $s1
	sltu	$t2, $a0, $a4
	and	$a1, $a1, $t2
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_44
# %bb.34:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $a7, $s2
	sltu	$t2, $t1, $a4
	and	$a1, $a1, $t2
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_42
# %bb.35:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $a7, $s7
	sltu	$t2, $fp, $a4
	and	$a1, $a1, $t2
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_41
# %bb.36:                               # %vector.memcheck748
                                        #   in Loop: Header=BB3_13 Depth=3
	sltu	$a1, $a7, $s0
	sltu	$a4, $s8, $a4
	and	$a1, $a1, $a4
	ori	$s7, $zero, 16
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_40
# %bb.37:                               # %vector.ph854
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	move	$s8, $a3
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_38:                               # %vector.body857
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        #       Parent Loop BB3_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t3, 0
	xvld	$xr1, $ra, 0
	xvld	$xr2, $a0, 0
	xvld	$xr3, $t1, 0
	xvfmadd.d	$xr0, $xr0, $xr6, $xr1
	xvst	$xr0, $ra, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvld	$xr1, $t0, 0
	xvld	$xr2, $fp, 0
	slli.d	$a1, $t8, 3
	xvldx	$xr3, $s5, $a1
	xvld	$xr4, $a7, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $t0, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $a7, 0
	addi.w	$t8, $t8, 4
	addi.d	$a4, $a4, -4
	addi.d	$a7, $a7, 32
	addi.d	$fp, $fp, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$a0, $a0, 32
	addi.d	$ra, $ra, 32
	addi.d	$t3, $t3, 32
	bnez	$a4, .LBB3_38
# %bb.39:                               # %middle.block870
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	move	$a5, $a0
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB3_16
	b	.LBB3_18
.LBB3_40:                               #   in Loop: Header=BB3_13 Depth=3
	move	$s8, $a3
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	b	.LBB3_43
.LBB3_42:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
.LBB3_43:                               # %for.body348.us.us.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_44:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_45:                               #   in Loop: Header=BB3_13 Depth=3
	ori	$s7, $zero, 16
	move	$s8, $a3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
.LBB3_46:                               # %for.body348.us.us.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 328                   # 8-byte Folded Reload
.LBB3_47:                               # %for.body348.us.us.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
.LBB3_48:                               # %for.body348.us.us.preheader
                                        #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_16
.LBB3_49:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	b	.LBB3_47
.LBB3_50:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	b	.LBB3_48
.LBB3_51:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
.LBB3_52:                               #   in Loop: Header=BB3_13 Depth=3
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 384                   # 8-byte Folded Reload
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_53:                               # %for.cond584.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	sub.d	$a4, $a1, $a2
	sub.d	$a1, $s2, $s8
	sub.d	$a5, $s6, $s8
	sub.d	$a6, $ra, $s8
	sub.d	$a7, $s5, $s8
	sub.d	$t0, $s6, $s2
	sub.d	$t1, $ra, $s2
	sub.d	$t2, $s5, $s2
	sub.d	$t3, $ra, $s6
	sub.d	$t4, $s5, $s6
	sltui	$a1, $a1, 64
	sltui	$a5, $a5, 64
	or	$a1, $a1, $a5
	sub.d	$a5, $s5, $ra
	sltui	$a6, $a6, 64
	or	$a1, $a1, $a6
	sltui	$a6, $a7, 64
	or	$a1, $a1, $a6
	sltui	$a6, $t0, 64
	or	$a1, $a1, $a6
	sltui	$a6, $t1, 64
	or	$a1, $a1, $a6
	sltui	$a6, $t2, 64
	or	$a1, $a1, $a6
	sltui	$a6, $t3, 64
	or	$a1, $a1, $a6
	sltui	$a6, $t4, 64
	or	$a1, $a1, $a6
	sltui	$a5, $a5, 64
	or	$a5, $a1, $a5
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a6, $a1, 3
	addi.d	$a7, $s8, 32
	addi.d	$t0, $s5, 32
	addi.d	$t1, $s2, 32
	addi.d	$t2, $ra, 32
	addi.d	$t3, $s6, 32
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_54:                               # %for.cond587.preheader.us518.preheader
                                        #   in Loop: Header=BB3_56 Depth=2
	add.d	$t5, $a4, $t5
.LBB3_55:                               # %for.cond584.for.end609_crit_edge.us
                                        #   in Loop: Header=BB3_56 Depth=2
	addi.w	$a0, $a0, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.w	$t5, $t5, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_66
.LBB3_56:                               # %for.cond584.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_59 Depth 3
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_65 Depth 4
	ori	$a1, $zero, 1
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	blt	$t4, $a1, .LBB3_54
# %bb.57:                               # %for.cond587.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_56 Depth=2
	move	$t4, $zero
	b	.LBB3_59
	.p2align	4, , 16
.LBB3_58:                               # %for.cond587.for.end603_crit_edge.us.us
                                        #   in Loop: Header=BB3_59 Depth=3
	addi.w	$t4, $t4, 1
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	add.w	$t5, $a1, $t6
	beq	$t4, $a3, .LBB3_55
.LBB3_59:                               # %for.cond587.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_62 Depth 4
                                        #         Child Loop BB3_65 Depth 4
	sltui	$a1, $a2, 12
	or	$a1, $a1, $a5
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_61
# %bb.60:                               #   in Loop: Header=BB3_59 Depth=3
	move	$s1, $zero
	move	$t6, $t5
	b	.LBB3_64
	.p2align	4, , 16
.LBB3_61:                               # %vector.ph736
                                        #   in Loop: Header=BB3_59 Depth=3
	add.d	$t6, $a6, $t5
	alsl.d	$t7, $t5, $a7, 3
	alsl.d	$t8, $t5, $t0, 3
	alsl.d	$fp, $t5, $t1, 3
	alsl.d	$s0, $t5, $t2, 3
	alsl.d	$t5, $t5, $t3, 3
	move	$s1, $a6
	.p2align	4, , 16
.LBB3_62:                               # %vector.body739
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_56 Depth=2
                                        #       Parent Loop BB3_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr7, $t7, -32
	xvst	$xr7, $t7, 0
	xvst	$xr7, $fp, -32
	xvst	$xr7, $fp, 0
	xvst	$xr7, $t5, -32
	xvst	$xr7, $t5, 0
	xvst	$xr7, $s0, -32
	xvst	$xr7, $s0, 0
	xvst	$xr7, $t8, -32
	xvst	$xr7, $t8, 0
	addi.d	$s1, $s1, -8
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	addi.d	$fp, $fp, 64
	addi.d	$s0, $s0, 64
	addi.d	$t5, $t5, 64
	bnez	$s1, .LBB3_62
# %bb.63:                               # %middle.block743
                                        #   in Loop: Header=BB3_59 Depth=3
	move	$s1, $a6
	beq	$a6, $a2, .LBB3_58
.LBB3_64:                               # %for.body589.us.us.preheader
                                        #   in Loop: Header=BB3_59 Depth=3
	alsl.d	$t5, $t6, $s8, 3
	alsl.d	$t7, $t6, $s2, 3
	alsl.d	$t8, $t6, $s6, 3
	alsl.d	$fp, $t6, $ra, 3
	alsl.d	$s0, $t6, $s5, 3
	sub.d	$s1, $a2, $s1
	.p2align	4, , 16
.LBB3_65:                               # %for.body589.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_56 Depth=2
                                        #       Parent Loop BB3_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $t5, 0
	st.d	$zero, $t7, 0
	st.d	$zero, $t8, 0
	st.d	$zero, $fp, 0
	st.d	$zero, $s0, 0
	addi.d	$t6, $t6, 1
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB3_65
	b	.LBB3_58
	.p2align	4, , 16
.LBB3_66:                               # %for.end618
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB3_3
# %bb.67:                               # %if.then620
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 432
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 96                   # 32-byte Folded Reload
	ld.w	$s6, $sp, 440
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB3_3
# %bb.68:                               # %for.cond819.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $sp, 436
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_3
# %bb.69:                               # %for.cond819.preheader.us.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a5, 0
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $t1, 0
	ld.w	$a3, $a5, 4
	ld.w	$a4, $t1, 4
	ld.w	$a5, $a5, 8
	ld.w	$a6, $t1, 8
	ld.w	$a7, $t1, 16
	sub.d	$a0, $a0, $a2
	sub.d	$a3, $a3, $a4
	sub.d	$a5, $a5, $a6
	sub.w	$a4, $a7, $a4
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	ld.w	$a6, $t1, 12
	addi.d	$a4, $a4, 1
	mul.d	$a5, $a4, $a5
	add.d	$a3, $a3, $a5
	sub.w	$a2, $a6, $a2
	slt	$a5, $a7, $a2
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a7, $a5
	or	$a5, $a2, $a5
	ld.wu	$a2, $sp, 432
	addi.d	$a5, $a5, 1
	mul.d	$a3, $a3, $a5
	add.w	$a6, $a3, $a0
	sub.d	$a3, $a5, $a2
	sub.d	$a0, $a4, $a1
	mul.d	$s8, $a5, $a0
	addi.d	$a0, $a1, -1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	mul.d	$a0, $a3, $a0
	st.d	$a5, $sp, 320                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a0
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	addi.w	$t3, $a2, -1
	bstrpick.d	$a0, $t3, 31, 0
	ld.d	$t6, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $t6, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 424                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $t7, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$a4, $a0, $s4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $s3, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	addi.d	$s0, $a2, -3
	bstrpick.d	$a0, $a2, 30, 2
	slli.d	$s1, $a0, 2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	sub.d	$s2, $zero, $a0
	move	$s5, $a6
	ori	$t8, $zero, 12
	st.d	$s6, $sp, 360                   # 8-byte Folded Spill
	st.d	$s8, $sp, 344                   # 8-byte Folded Spill
	b	.LBB3_72
	.p2align	4, , 16
.LBB3_70:                               # %for.cond822.preheader.us539.preheader
                                        #   in Loop: Header=BB3_72 Depth=2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$s5, $a0, $s5
.LBB3_71:                               # %for.cond819.for.end854_crit_edge.us
                                        #   in Loop: Header=BB3_72 Depth=2
	addi.w	$t0, $t0, 1
	ld.d	$s8, $sp, 344                   # 8-byte Folded Reload
	add.w	$s5, $s5, $s8
	ld.d	$s6, $sp, 360                   # 8-byte Folded Reload
	beq	$t0, $s6, .LBB3_97
.LBB3_72:                               # %for.cond819.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_74 Depth 3
                                        #         Child Loop BB3_91 Depth 4
                                        #         Child Loop BB3_77 Depth 4
	addi.w	$a4, $a2, 0
	ori	$a0, $zero, 1
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	blt	$a4, $a0, .LBB3_70
# %bb.73:                               # %for.cond822.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_72 Depth=2
	move	$s6, $zero
	.p2align	4, , 16
.LBB3_74:                               # %for.cond822.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_91 Depth 4
                                        #         Child Loop BB3_77 Depth 4
	bgeu	$a2, $t8, .LBB3_79
# %bb.75:                               #   in Loop: Header=BB3_74 Depth=3
	move	$s8, $zero
.LBB3_76:                               # %for.body824.us.us.preheader
                                        #   in Loop: Header=BB3_74 Depth=3
	add.w	$a7, $s2, $s5
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$t1, $s5, $a0, 3
	alsl.d	$t2, $s5, $t6, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$s7, $s5, $a0, 3
	alsl.d	$ra, $s5, $t7, 3
	sub.d	$a0, $a2, $s8
	.p2align	4, , 16
.LBB3_77:                               # %for.body824.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_72 Depth=2
                                        #       Parent Loop BB3_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a4, $a7, -2
	fld.d	$fa0, $t1, 0
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $s4, $a4
	fld.d	$fa2, $t2, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $t2, 0
	fld.d	$fa0, $s7, 0
	slli.d	$a4, $a7, 3
	fldx.d	$fa1, $s3, $a4
	fld.d	$fa2, $ra, 0
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$s5, $s5, 1
	fadd.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $ra, 0
	addi.w	$a7, $a7, 1
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$s7, $s7, 8
	addi.w	$a0, $a0, -1
	addi.d	$ra, $ra, 8
	bnez	$a0, .LBB3_77
.LBB3_78:                               # %for.cond822.for.end848_crit_edge.us.us
                                        #   in Loop: Header=BB3_74 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s5, $a3, $s5
	bne	$s6, $a1, .LBB3_74
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_79:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	sub.w	$s7, $s5, $a0
	addi.w	$t2, $s7, -2
	add.w	$a0, $s7, $s0
	move	$s8, $zero
	blt	$a0, $t2, .LBB3_76
# %bb.80:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_74 Depth=3
	add.w	$a0, $s7, $t3
	blt	$a0, $s7, .LBB3_76
# %bb.81:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	alsl.d	$ra, $s5, $t6, 3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a0, 3
	alsl.d	$t1, $s5, $t7, 3
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 3
	sltu	$a5, $ra, $a0
	sltu	$a7, $t1, $a4
	and	$a5, $a5, $a7
	move	$s8, $zero
	bnez	$a5, .LBB3_76
# %bb.82:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	ld.d	$a5, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a7, $s5, $a5, 3
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a5, $s5, $a5, 3
	sltu	$t4, $ra, $a5
	sltu	$t5, $a7, $a4
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_76
# %bb.83:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	alsl.d	$t4, $t2, $s4, 3
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$t5, $t2, $t5, 3
	sltu	$t2, $ra, $t5
	sltu	$t6, $t4, $a4
	and	$t2, $t2, $t6
	bnez	$t2, .LBB3_96
# %bb.84:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$t2, $s5, $t2, 3
	ld.d	$t6, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$t6, $s5, $t6, 3
	sltu	$t7, $ra, $t6
	sltu	$fp, $t2, $a4
	and	$t7, $t7, $fp
	bnez	$t7, .LBB3_95
# %bb.85:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	alsl.d	$t7, $s7, $s3, 3
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$fp, $s7, $t8, 3
	sltu	$t8, $ra, $fp
	sltu	$a4, $t7, $a4
	and	$a4, $t8, $a4
	bnez	$a4, .LBB3_94
# %bb.86:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	sltu	$a4, $t1, $a5
	sltu	$a5, $a7, $a0
	and	$a4, $a4, $a5
	ori	$t8, $zero, 12
	bnez	$a4, .LBB3_95
# %bb.87:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	sltu	$a4, $t1, $t5
	sltu	$a5, $t4, $a0
	and	$a4, $a4, $a5
	bnez	$a4, .LBB3_95
# %bb.88:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	sltu	$a4, $t1, $t6
	sltu	$a5, $t2, $a0
	and	$a4, $a4, $a5
	bnez	$a4, .LBB3_95
# %bb.89:                               # %vector.memcheck634
                                        #   in Loop: Header=BB3_74 Depth=3
	sltu	$a4, $t1, $fp
	sltu	$a0, $t7, $a0
	and	$a0, $a4, $a0
	ld.d	$t6, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_93
# %bb.90:                               # %vector.ph692
                                        #   in Loop: Header=BB3_74 Depth=3
	add.d	$s5, $s1, $s5
	move	$a0, $s1
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_91:                               # %vector.body695
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_72 Depth=2
                                        #       Parent Loop BB3_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a4, $s7, -2
	xvld	$xr0, $a7, 0
	slli.d	$a4, $a4, 3
	xvldx	$xr1, $s4, $a4
	xvfadd.d	$xr0, $xr0, $xr1
	xvld	$xr1, $ra, 0
	xvld	$xr2, $t2, 0
	slli.d	$a4, $s7, 3
	xvldx	$xr3, $s3, $a4
	xvld	$xr4, $t1, 0
	xvfadd.d	$xr0, $xr1, $xr0
	xvst	$xr0, $ra, 0
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvst	$xr0, $t1, 0
	addi.w	$s7, $s7, 4
	addi.d	$a0, $a0, -4
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	addi.d	$ra, $ra, 32
	addi.d	$a7, $a7, 32
	bnez	$a0, .LBB3_91
# %bb.92:                               # %middle.block705
                                        #   in Loop: Header=BB3_74 Depth=3
	move	$s8, $s1
	bne	$s1, $a2, .LBB3_76
	b	.LBB3_78
.LBB3_93:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_76
.LBB3_94:                               #   in Loop: Header=BB3_74 Depth=3
	ori	$t8, $zero, 12
.LBB3_95:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$t6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_76
.LBB3_96:                               #   in Loop: Header=BB3_74 Depth=3
	ld.d	$t6, $sp, 240                   # 8-byte Folded Reload
	b	.LBB3_76
.LBB3_97:                               # %for.cond1060.preheader.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a0
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	sub.d	$a7, $a0, $a2
	ld.d	$t4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 408                   # 8-byte Folded Reload
	sub.d	$a0, $t5, $t4
	sub.d	$a4, $s3, $t4
	sub.d	$a5, $s4, $t4
	sub.d	$t1, $s3, $t5
	sub.d	$t2, $s4, $t5
	sub.d	$t3, $s4, $s3
	sltui	$a0, $a0, 64
	sltui	$a4, $a4, 64
	or	$a0, $a0, $a4
	sltui	$a4, $a5, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t1, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t2, 64
	or	$a0, $a0, $a4
	sltui	$a4, $t3, 64
	or	$t1, $a0, $a4
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$t2, $a0, 3
	addi.d	$t3, $t4, 32
	addi.d	$t4, $s4, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $s3, 32
	ori	$s7, $zero, 16
	ld.d	$s2, $sp, 336                   # 8-byte Folded Reload
	b	.LBB3_100
	.p2align	4, , 16
.LBB3_98:                               # %for.cond1063.preheader.us560.preheader
                                        #   in Loop: Header=BB3_100 Depth=2
	add.d	$a6, $a7, $a6
.LBB3_99:                               # %for.cond1060.for.end1083_crit_edge.us
                                        #   in Loop: Header=BB3_100 Depth=2
	addi.w	$t0, $t0, 1
	add.w	$a6, $a6, $s8
	beq	$t0, $s6, .LBB3_3
.LBB3_100:                              # %for.cond1060.preheader.us
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_103 Depth 3
                                        #         Child Loop BB3_106 Depth 4
                                        #         Child Loop BB3_109 Depth 4
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_98
# %bb.101:                              # %for.cond1063.preheader.us.us.preheader
                                        #   in Loop: Header=BB3_100 Depth=2
	move	$t7, $zero
	b	.LBB3_103
	.p2align	4, , 16
.LBB3_102:                              # %for.cond1063.for.end1077_crit_edge.us.us
                                        #   in Loop: Header=BB3_103 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$a6, $a3, $t8
	beq	$t7, $a1, .LBB3_99
.LBB3_103:                              # %for.cond1063.preheader.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_100 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_106 Depth 4
                                        #         Child Loop BB3_109 Depth 4
	sltui	$a0, $a2, 8
	or	$a0, $a0, $t1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_105
# %bb.104:                              #   in Loop: Header=BB3_103 Depth=3
	move	$a4, $zero
	move	$t8, $a6
	b	.LBB3_108
	.p2align	4, , 16
.LBB3_105:                              # %vector.ph
                                        #   in Loop: Header=BB3_103 Depth=3
	add.d	$t8, $t2, $a6
	alsl.d	$a0, $a6, $t3, 3
	alsl.d	$a4, $a6, $t4, 3
	alsl.d	$fp, $a6, $t5, 3
	alsl.d	$a6, $a6, $t6, 3
	move	$a5, $t2
	.p2align	4, , 16
.LBB3_106:                              # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_100 Depth=2
                                        #       Parent Loop BB3_103 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr7, $a0, -32
	xvst	$xr7, $a0, 0
	xvst	$xr7, $fp, -32
	xvst	$xr7, $fp, 0
	xvst	$xr7, $a6, -32
	xvst	$xr7, $a6, 0
	xvst	$xr7, $a4, -32
	xvst	$xr7, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a0, $a0, 64
	addi.d	$a4, $a4, 64
	addi.d	$fp, $fp, 64
	addi.d	$a6, $a6, 64
	bnez	$a5, .LBB3_106
# %bb.107:                              # %middle.block
                                        #   in Loop: Header=BB3_103 Depth=3
	move	$a4, $t2
	beq	$t2, $a2, .LBB3_102
.LBB3_108:                              # %for.body1065.us.us.preheader
                                        #   in Loop: Header=BB3_103 Depth=3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a0, $t8, $a0, 3
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a6, $t8, $a5, 3
	alsl.d	$fp, $t8, $s3, 3
	alsl.d	$s0, $t8, $s4, 3
	sub.d	$s1, $a2, $a4
	.p2align	4, , 16
.LBB3_109:                              # %for.body1065.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_100 Depth=2
                                        #       Parent Loop BB3_103 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.d	$zero, $a0, 0
	st.d	$zero, $a6, 0
	st.d	$zero, $fp, 0
	st.d	$zero, $s0, 0
	addi.d	$t8, $t8, 1
	addi.d	$a0, $a0, 8
	addi.d	$a6, $a6, 8
	addi.d	$fp, $fp, 8
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB3_109
	b	.LBB3_102
.LBB3_110:                              # %if.end1097
	move	$a0, $zero
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.Lfunc_end3:
	.size	hypre_SMG3RAPPeriodicSym, .Lfunc_end3-hypre_SMG3RAPPeriodicSym
                                        # -- End function
	.globl	hypre_SMG3RAPPeriodicNoSym      # -- Begin function hypre_SMG3RAPPeriodicNoSym
	.p2align	5
	.type	hypre_SMG3RAPPeriodicNoSym,@function
hypre_SMG3RAPPeriodicNoSym:             # @hypre_SMG3RAPPeriodicNoSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -768
	st.d	$ra, $sp, 760                   # 8-byte Folded Spill
	st.d	$fp, $sp, 752                   # 8-byte Folded Spill
	st.d	$s0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s1, $sp, 736                   # 8-byte Folded Spill
	st.d	$s2, $sp, 728                   # 8-byte Folded Spill
	st.d	$s3, $sp, 720                   # 8-byte Folded Spill
	st.d	$s4, $sp, 712                   # 8-byte Folded Spill
	st.d	$s5, $sp, 704                   # 8-byte Folded Spill
	st.d	$s6, $sp, 696                   # 8-byte Folded Spill
	st.d	$s7, $sp, 688                   # 8-byte Folded Spill
	st.d	$s8, $sp, 680                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 672                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 664                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 656                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 648                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 640                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 632                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 624                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 616                  # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 64
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB4_93
# %bb.1:                                # %for.cond.preheader
	ld.d	$a2, $a0, 8
	ld.w	$a0, $a2, 8
	blt	$a0, $a1, .LBB4_93
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	move	$s3, $zero
	addi.w	$a1, $zero, -1
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                # %for.inc675
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a2, 8
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_93
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_69 Depth 4
                                        #     Child Loop BB4_80 Depth 2
                                        #       Child Loop BB4_83 Depth 3
                                        #         Child Loop BB4_91 Depth 4
                                        #         Child Loop BB4_86 Depth 4
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a2, 0
	slli.d	$a2, $s3, 4
	ori	$s7, $zero, 1
	alsl.d	$fp, $s3, $a2, 3
	ld.d	$s0, $a0, 0
	add.d	$a0, $a1, $fp
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $sp, 604
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.w	$s2, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s2, $sp, 604
	st.w	$s2, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s7, $sp, 604
	st.w	$s2, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	st.d	$s5, $sp, 604
	st.w	$s2, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $sp, 604
	st.w	$s2, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	st.d	$zero, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s2, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s7, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	st.d	$zero, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s2, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$s5, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s4, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                # %if.then87
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$s5, $sp, 604
	st.d	$fp, $sp, 584                   # 8-byte Folded Spill
	move	$fp, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	st.w	$s6, $sp, 612
	addi.d	$a2, $sp, 604
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu32i.d	$s1, -1
	st.d	$s1, $sp, 604
	st.w	$s6, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	move	$s2, $s5
	lu32i.d	$s2, 1
	st.d	$s2, $sp, 604
	st.w	$s6, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$s3, $zero, 1
	lu32i.d	$s3, 1
	st.d	$s3, $sp, 604
	st.w	$s6, $sp, 612
	move	$s6, $s0
	move	$s0, $fp
	ld.d	$fp, $sp, 584                   # 8-byte Folded Reload
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	st.d	$s5, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 604
	st.w	$zero, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	st.d	$s5, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 604
	st.w	$s7, $sp, 612
	addi.d	$a2, $sp, 604
	move	$a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_StructMatrixExtractPointerByIndex)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s0, $fp
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 592
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 600
	xvrepli.b	$xr27, 0
	ori	$fp, $zero, 1
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	blt	$a0, $fp, .LBB4_74
# %bb.7:                                # %for.cond319.preheader.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $sp, 596
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	blt	$a0, $fp, .LBB4_74
# %bb.8:                                # %for.cond319.preheader.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $t0, 4
	ld.w	$a1, $t0, 16
	move	$t2, $zero
	ld.wu	$t3, $sp, 592
	ld.w	$a2, $t0, 0
	sub.w	$a1, $a1, $a0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	slt	$a3, $a5, $a1
	maskeqz	$a1, $a1, $a3
	ld.w	$a4, $t0, 12
	masknez	$a3, $a5, $a3
	or	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	sub.w	$a3, $a4, $a2
	slt	$a4, $a5, $a3
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a5, $a4
	or	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	sub.d	$t4, $a3, $t3
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	sub.d	$a4, $a1, $t1
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a5, $a7, 0
	ld.w	$a6, $a7, 4
	ld.w	$a7, $a7, 8
	ld.w	$t0, $t0, 8
	mulw.d.w	$a4, $a3, $a4
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a2, $a5, $a2
	sub.d	$a0, $a6, $a0
	sub.d	$a4, $a7, $t0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $a3
	add.w	$a6, $a2, $a0
	addi.d	$a0, $t1, -1
	st.d	$t4, $sp, 472                   # 8-byte Folded Spill
	mul.d	$a0, $t4, $a0
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a0, $t3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $t3, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s8, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s5, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s6, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s0, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $ra, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s3, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s2, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s4, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $s7, 3
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t3, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t3, $sp, 576                   # 8-byte Folded Spill
	slli.d	$a0, $t3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 464                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_9:                                # %for.cond322.preheader.us347.preheader
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB4_10:                               # %for.cond319.for.end391_crit_edge.us
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$t2, $a0, .LBB4_74
.LBB4_11:                               # %for.cond319.preheader.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_69 Depth 4
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blt	$a0, $fp, .LBB4_9
# %bb.12:                               # %for.cond322.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_11 Depth=2
	move	$a1, $zero
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               # %for.cond322.for.end_crit_edge.us.us
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	add.w	$a6, $a0, $a6
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_10
.LBB4_14:                               # %for.cond322.preheader.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_59 Depth 4
                                        #         Child Loop BB4_69 Depth 4
	st.d	$a1, $sp, 568                   # 8-byte Folded Spill
	ori	$a0, $zero, 40
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=3
	move	$a3, $zero
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_16:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	alsl.d	$t4, $a6, $s5, 3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $a0, 3
	alsl.d	$t5, $a6, $s6, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s0
	alsl.d	$s0, $a6, $a0, 3
	alsl.d	$t6, $a6, $a1, 3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $a0, 3
	alsl.d	$t7, $a6, $ra, 3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s4
	alsl.d	$s4, $a6, $a0, 3
	alsl.d	$t8, $a6, $s1, 3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	alsl.d	$ra, $a6, $s3, 3
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s3, $a6, $a0, 3
	alsl.d	$a5, $a6, $s2, 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	alsl.d	$a0, $a6, $a1, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a1, 3
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a1, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $s7
	alsl.d	$s7, $a6, $a1, 3
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $a1, 3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a1, 3
	alsl.d	$t1, $a6, $a3, 3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a4, $a6, $a1, 3
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$a1, $a6, $a1, 3
	xvinsgr2vr.d	$xr5, $a2, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a3, 3
	xvori.b	$xr2, $xr5, 0
	xvinsgr2vr.d	$xr2, $t6, 1
	xvinsgr2vr.d	$xr2, $t1, 2
	xvinsgr2vr.d	$xr6, $ra, 0
	xvinsgr2vr.d	$xr2, $t6, 3
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $t6, 1
	xvinsgr2vr.d	$xr3, $a5, 2
	xvinsgr2vr.d	$xr3, $t6, 3
	xvinsgr2vr.d	$xr8, $t1, 0
	xvinsgr2vr.d	$xr8, $t5, 1
	xvinsgr2vr.d	$xr8, $t7, 2
	xvinsgr2vr.d	$xr8, $t6, 3
	xvinsgr2vr.d	$xr11, $a5, 0
	xvinsgr2vr.d	$xr11, $t5, 1
	xvinsgr2vr.d	$xr11, $a2, 2
	xvinsgr2vr.d	$xr1, $t7, 0
	xvinsgr2vr.d	$xr11, $t5, 3
	xvori.b	$xr13, $xr1, 0
	xvinsgr2vr.d	$xr13, $t5, 1
	xvinsgr2vr.d	$xr13, $ra, 2
	xvinsgr2vr.d	$xr9, $t4, 0
	xvinsgr2vr.d	$xr13, $t5, 3
	xvori.b	$xr15, $xr9, 0
	xvinsgr2vr.d	$xr15, $t1, 1
	xvinsgr2vr.d	$xr15, $t4, 2
	xvinsgr2vr.d	$xr15, $t5, 3
	xvori.b	$xr17, $xr9, 0
	xvinsgr2vr.d	$xr17, $a5, 1
	xvinsgr2vr.d	$xr17, $t4, 2
	xvinsgr2vr.d	$xr17, $a2, 3
	xvinsgr2vr.d	$xr9, $t7, 1
	xvinsgr2vr.d	$xr9, $t4, 2
	xvinsgr2vr.d	$xr18, $t3, 0
	xvinsgr2vr.d	$xr9, $ra, 3
	xvori.b	$xr7, $xr18, 0
	xvinsgr2vr.d	$xr7, $t2, 1
	xvinsgr2vr.d	$xr7, $t3, 2
	xvinsgr2vr.d	$xr7, $s5, 3
	xvori.b	$xr10, $xr18, 0
	xvinsgr2vr.d	$xr10, $s3, 1
	xvinsgr2vr.d	$xr10, $t3, 2
	xvinsgr2vr.d	$xr16, $s0, 0
	xvinsgr2vr.d	$xr10, $s1, 3
	xvori.b	$xr12, $xr16, 0
	xvinsgr2vr.d	$xr12, $s5, 1
	xvinsgr2vr.d	$xr12, $t3, 2
	xvinsgr2vr.d	$xr12, $s6, 3
	xvori.b	$xr14, $xr16, 0
	xvinsgr2vr.d	$xr14, $s1, 1
	xvinsgr2vr.d	$xr14, $s0, 2
	xvinsgr2vr.d	$xr14, $t2, 3
	xvinsgr2vr.d	$xr16, $s6, 1
	xvinsgr2vr.d	$xr16, $s0, 2
	xvinsgr2vr.d	$xr4, $t2, 0
	xvinsgr2vr.d	$xr16, $s3, 3
	xvori.b	$xr19, $xr4, 0
	xvinsgr2vr.d	$xr19, $fp, 1
	xvinsgr2vr.d	$xr19, $s5, 2
	xvinsgr2vr.d	$xr0, $s3, 0
	xvinsgr2vr.d	$xr19, $t3, 3
	xvori.b	$xr20, $xr0, 0
	xvinsgr2vr.d	$xr20, $fp, 1
	xvinsgr2vr.d	$xr20, $s1, 2
	xvinsgr2vr.d	$xr20, $fp, 3
	xvinsgr2vr.d	$xr18, $fp, 1
	xvinsgr2vr.d	$xr18, $s6, 2
	xvinsgr2vr.d	$xr18, $fp, 3
	xvslt.du	$xr18, $xr9, $xr18
	xvpickve2gr.d	$a3, $xr18, 0
	vinsgr2vr.b	$vr9, $a3, 0
	xvpickve2gr.d	$a3, $xr18, 1
	vinsgr2vr.b	$vr9, $a3, 1
	xvpickve2gr.d	$a3, $xr18, 2
	vinsgr2vr.b	$vr9, $a3, 2
	xvpickve2gr.d	$a3, $xr18, 3
	vinsgr2vr.b	$vr9, $a3, 3
	xvslt.du	$xr17, $xr17, $xr20
	xvpickve2gr.d	$a3, $xr17, 0
	vinsgr2vr.b	$vr9, $a3, 4
	xvpickve2gr.d	$a3, $xr17, 1
	vinsgr2vr.b	$vr9, $a3, 5
	xvpickve2gr.d	$a3, $xr17, 2
	vinsgr2vr.b	$vr9, $a3, 6
	xvpickve2gr.d	$a3, $xr17, 3
	vinsgr2vr.b	$vr9, $a3, 7
	xvslt.du	$xr15, $xr15, $xr19
	xvpickve2gr.d	$a3, $xr15, 0
	vinsgr2vr.b	$vr9, $a3, 8
	xvpickve2gr.d	$a3, $xr15, 1
	vinsgr2vr.b	$vr9, $a3, 9
	xvpickve2gr.d	$a3, $xr15, 2
	vinsgr2vr.b	$vr9, $a3, 10
	xvpickve2gr.d	$a3, $xr15, 3
	vinsgr2vr.b	$vr9, $a3, 11
	xvslt.du	$xr13, $xr13, $xr16
	xvpickve2gr.d	$a3, $xr13, 0
	vinsgr2vr.b	$vr9, $a3, 12
	xvpickve2gr.d	$a3, $xr13, 1
	vinsgr2vr.b	$vr9, $a3, 13
	xvpickve2gr.d	$a3, $xr13, 2
	vinsgr2vr.b	$vr9, $a3, 14
	xvpickve2gr.d	$a3, $xr13, 3
	vinsgr2vr.b	$vr9, $a3, 15
	xvslt.du	$xr11, $xr11, $xr14
	xvpickve2gr.d	$a3, $xr11, 0
	xvpermi.d	$xr13, $xr9, 14
	vinsgr2vr.b	$vr13, $a3, 0
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a3, $xr11, 1
	xvpermi.d	$xr13, $xr9, 14
	vinsgr2vr.b	$vr13, $a3, 1
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a3, $xr11, 2
	xvpermi.d	$xr13, $xr9, 14
	vinsgr2vr.b	$vr13, $a3, 2
	xvpermi.q	$xr9, $xr13, 2
	xvpickve2gr.d	$a3, $xr11, 3
	xvpermi.d	$xr11, $xr9, 14
	vinsgr2vr.b	$vr11, $a3, 3
	xvpermi.q	$xr9, $xr11, 2
	xvslt.du	$xr8, $xr8, $xr12
	xvpickve2gr.d	$a3, $xr8, 0
	xvpermi.d	$xr11, $xr9, 14
	vinsgr2vr.b	$vr11, $a3, 4
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a3, $xr8, 1
	xvpermi.d	$xr11, $xr9, 14
	vinsgr2vr.b	$vr11, $a3, 5
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a3, $xr8, 2
	xvpermi.d	$xr11, $xr9, 14
	vinsgr2vr.b	$vr11, $a3, 6
	xvpermi.q	$xr9, $xr11, 2
	xvpickve2gr.d	$a3, $xr8, 3
	xvpermi.d	$xr8, $xr9, 14
	vinsgr2vr.b	$vr8, $a3, 7
	xvpermi.q	$xr9, $xr8, 2
	xvslt.du	$xr3, $xr3, $xr10
	xvpickve2gr.d	$a3, $xr3, 0
	xvpermi.d	$xr8, $xr9, 14
	vinsgr2vr.b	$vr8, $a3, 8
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a3, $xr3, 1
	xvpermi.d	$xr8, $xr9, 14
	vinsgr2vr.b	$vr8, $a3, 9
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a3, $xr3, 2
	xvpermi.d	$xr8, $xr9, 14
	vinsgr2vr.b	$vr8, $a3, 10
	xvpermi.q	$xr9, $xr8, 2
	xvpickve2gr.d	$a3, $xr3, 3
	xvpermi.d	$xr3, $xr9, 14
	vinsgr2vr.b	$vr3, $a3, 11
	xvpermi.q	$xr9, $xr3, 2
	xvslt.du	$xr2, $xr2, $xr7
	xvpickve2gr.d	$a3, $xr2, 0
	xvpermi.d	$xr3, $xr9, 14
	vinsgr2vr.b	$vr3, $a3, 12
	xvpermi.q	$xr9, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 1
	xvpermi.d	$xr3, $xr9, 14
	vinsgr2vr.b	$vr3, $a3, 13
	xvpermi.q	$xr9, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 2
	xvpermi.d	$xr3, $xr9, 14
	vinsgr2vr.b	$vr3, $a3, 14
	xvpermi.q	$xr9, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 3
	xvpermi.d	$xr2, $xr9, 14
	vinsgr2vr.b	$vr2, $a3, 15
	xvinsgr2vr.d	$xr15, $t6, 0
	xvpermi.q	$xr9, $xr2, 2
	xvori.b	$xr11, $xr15, 0
	xvinsgr2vr.d	$xr11, $t0, 1
	xvinsgr2vr.d	$xr11, $t6, 2
	xvinsgr2vr.d	$xr11, $a1, 3
	xvori.b	$xr12, $xr15, 0
	xvinsgr2vr.d	$xr12, $a7, 1
	xvinsgr2vr.d	$xr12, $t6, 2
	xvinsgr2vr.d	$xr18, $t5, 0
	xvinsgr2vr.d	$xr12, $a0, 3
	xvori.b	$xr14, $xr18, 0
	xvinsgr2vr.d	$xr14, $a1, 1
	xvinsgr2vr.d	$xr14, $t6, 2
	xvinsgr2vr.d	$xr14, $t8, 3
	xvori.b	$xr17, $xr18, 0
	xvinsgr2vr.d	$xr17, $a0, 1
	xvinsgr2vr.d	$xr17, $t5, 2
	xvinsgr2vr.d	$xr17, $t0, 3
	xvinsgr2vr.d	$xr18, $t8, 1
	xvinsgr2vr.d	$xr18, $t5, 2
	xvinsgr2vr.d	$xr2, $t0, 0
	xvinsgr2vr.d	$xr18, $a7, 3
	xvori.b	$xr20, $xr2, 0
	xvinsgr2vr.d	$xr20, $t4, 1
	xvinsgr2vr.d	$xr20, $a1, 2
	xvinsgr2vr.d	$xr3, $a7, 0
	xvinsgr2vr.d	$xr20, $t6, 3
	xvori.b	$xr22, $xr3, 0
	xvinsgr2vr.d	$xr22, $t4, 1
	xvinsgr2vr.d	$xr22, $a0, 2
	xvinsgr2vr.d	$xr22, $t4, 3
	xvinsgr2vr.d	$xr15, $t4, 1
	xvinsgr2vr.d	$xr15, $t8, 2
	xvinsgr2vr.d	$xr7, $s7, 0
	xvinsgr2vr.d	$xr15, $t4, 3
	xvori.b	$xr13, $xr7, 0
	xvinsgr2vr.d	$xr13, $t3, 1
	xvinsgr2vr.d	$xr13, $a4, 2
	xvinsgr2vr.d	$xr8, $s8, 0
	xvinsgr2vr.d	$xr13, $t3, 3
	xvori.b	$xr16, $xr8, 0
	xvinsgr2vr.d	$xr16, $t3, 1
	xvinsgr2vr.d	$xr16, $s2, 2
	xvinsgr2vr.d	$xr16, $t3, 3
	xvinsgr2vr.d	$xr19, $a4, 0
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $s4, 2
	xvinsgr2vr.d	$xr19, $t3, 3
	xvinsgr2vr.d	$xr21, $s2, 0
	xvinsgr2vr.d	$xr21, $s0, 1
	xvinsgr2vr.d	$xr21, $s7, 2
	xvinsgr2vr.d	$xr10, $s4, 0
	xvinsgr2vr.d	$xr21, $s0, 3
	xvori.b	$xr23, $xr10, 0
	xvinsgr2vr.d	$xr23, $s0, 1
	xvinsgr2vr.d	$xr23, $s8, 2
	xvinsgr2vr.d	$xr24, $fp, 0
	xvinsgr2vr.d	$xr23, $s0, 3
	xvori.b	$xr25, $xr24, 0
	xvinsgr2vr.d	$xr25, $a4, 1
	xvinsgr2vr.d	$xr25, $fp, 2
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr25, $s0, 3
	xvori.b	$xr26, $xr24, 0
	xvinsgr2vr.d	$xr26, $s2, 1
	xvinsgr2vr.d	$xr26, $fp, 2
	xvinsgr2vr.d	$xr26, $s7, 3
	xvinsgr2vr.d	$xr24, $s4, 1
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr24, $fp, 2
	xvinsgr2vr.d	$xr24, $s8, 3
	xvslt.du	$xr24, $xr15, $xr24
	xvpickve2gr.d	$a3, $xr24, 0
	vinsgr2vr.b	$vr15, $a3, 0
	xvpickve2gr.d	$a3, $xr24, 1
	vinsgr2vr.b	$vr15, $a3, 1
	xvpickve2gr.d	$a3, $xr24, 2
	vinsgr2vr.b	$vr15, $a3, 2
	xvpickve2gr.d	$a3, $xr24, 3
	vinsgr2vr.b	$vr15, $a3, 3
	xvslt.du	$xr22, $xr22, $xr26
	xvpickve2gr.d	$a3, $xr22, 0
	vinsgr2vr.b	$vr15, $a3, 4
	xvpickve2gr.d	$a3, $xr22, 1
	vinsgr2vr.b	$vr15, $a3, 5
	xvpickve2gr.d	$a3, $xr22, 2
	vinsgr2vr.b	$vr15, $a3, 6
	xvpickve2gr.d	$a3, $xr22, 3
	vinsgr2vr.b	$vr15, $a3, 7
	xvslt.du	$xr20, $xr20, $xr25
	xvpickve2gr.d	$a3, $xr20, 0
	vinsgr2vr.b	$vr15, $a3, 8
	xvpickve2gr.d	$a3, $xr20, 1
	vinsgr2vr.b	$vr15, $a3, 9
	xvpickve2gr.d	$a3, $xr20, 2
	vinsgr2vr.b	$vr15, $a3, 10
	xvpickve2gr.d	$a3, $xr20, 3
	vinsgr2vr.b	$vr15, $a3, 11
	xvslt.du	$xr18, $xr18, $xr23
	xvpickve2gr.d	$a3, $xr18, 0
	vinsgr2vr.b	$vr15, $a3, 12
	xvpickve2gr.d	$a3, $xr18, 1
	vinsgr2vr.b	$vr15, $a3, 13
	xvpickve2gr.d	$a3, $xr18, 2
	vinsgr2vr.b	$vr15, $a3, 14
	xvpickve2gr.d	$a3, $xr18, 3
	vinsgr2vr.b	$vr15, $a3, 15
	xvslt.du	$xr17, $xr17, $xr21
	xvpickve2gr.d	$a3, $xr17, 0
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $a3, 0
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a3, $xr17, 1
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $a3, 1
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a3, $xr17, 2
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $a3, 2
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$a3, $xr17, 3
	xvpermi.d	$xr17, $xr15, 14
	vinsgr2vr.b	$vr17, $a3, 3
	xvpermi.q	$xr15, $xr17, 2
	xvslt.du	$xr14, $xr14, $xr19
	xvpickve2gr.d	$a3, $xr14, 0
	xvpermi.d	$xr17, $xr15, 14
	vinsgr2vr.b	$vr17, $a3, 4
	xvpermi.q	$xr15, $xr17, 2
	xvpickve2gr.d	$a3, $xr14, 1
	xvpermi.d	$xr17, $xr15, 14
	vinsgr2vr.b	$vr17, $a3, 5
	xvpermi.q	$xr15, $xr17, 2
	xvpickve2gr.d	$a3, $xr14, 2
	xvpermi.d	$xr17, $xr15, 14
	vinsgr2vr.b	$vr17, $a3, 6
	xvpermi.q	$xr15, $xr17, 2
	xvpickve2gr.d	$a3, $xr14, 3
	xvpermi.d	$xr14, $xr15, 14
	vinsgr2vr.b	$vr14, $a3, 7
	xvpermi.q	$xr15, $xr14, 2
	xvslt.du	$xr12, $xr12, $xr16
	xvpickve2gr.d	$a3, $xr12, 0
	xvpermi.d	$xr14, $xr15, 14
	vinsgr2vr.b	$vr14, $a3, 8
	xvpermi.q	$xr15, $xr14, 2
	xvpickve2gr.d	$a3, $xr12, 1
	xvpermi.d	$xr14, $xr15, 14
	vinsgr2vr.b	$vr14, $a3, 9
	xvpermi.q	$xr15, $xr14, 2
	xvpickve2gr.d	$a3, $xr12, 2
	xvpermi.d	$xr14, $xr15, 14
	vinsgr2vr.b	$vr14, $a3, 10
	xvpermi.q	$xr15, $xr14, 2
	xvpickve2gr.d	$a3, $xr12, 3
	xvpermi.d	$xr12, $xr15, 14
	vinsgr2vr.b	$vr12, $a3, 11
	xvpermi.q	$xr15, $xr12, 2
	xvslt.du	$xr11, $xr11, $xr13
	xvpickve2gr.d	$a3, $xr11, 0
	xvpermi.d	$xr12, $xr15, 14
	vinsgr2vr.b	$vr12, $a3, 12
	xvpermi.q	$xr15, $xr12, 2
	xvpickve2gr.d	$a3, $xr11, 1
	xvpermi.d	$xr12, $xr15, 14
	vinsgr2vr.b	$vr12, $a3, 13
	xvpermi.q	$xr15, $xr12, 2
	xvpickve2gr.d	$a3, $xr11, 2
	xvpermi.d	$xr12, $xr15, 14
	vinsgr2vr.b	$vr12, $a3, 14
	xvpermi.q	$xr15, $xr12, 2
	xvpickve2gr.d	$a3, $xr11, 3
	xvpermi.d	$xr11, $xr15, 14
	vinsgr2vr.b	$vr11, $a3, 15
	xvpermi.q	$xr15, $xr11, 2
	xvand.v	$xr9, $xr9, $xr15
	xvori.b	$xr11, $xr3, 0
	xvinsgr2vr.d	$xr11, $a5, 1
	xvinsgr2vr.d	$xr11, $a2, 2
	xvinsgr2vr.d	$xr11, $a5, 3
	xvori.b	$xr12, $xr3, 0
	xvinsgr2vr.d	$xr12, $a2, 1
	xvinsgr2vr.d	$xr12, $a7, 2
	xvinsgr2vr.d	$xr12, $t1, 3
	xvori.b	$xr14, $xr6, 0
	xvinsgr2vr.d	$xr14, $t1, 1
	xvinsgr2vr.d	$xr14, $ra, 2
	xvinsgr2vr.d	$xr14, $a5, 3
	xvori.b	$xr16, $xr6, 0
	xvinsgr2vr.d	$xr16, $a5, 1
	xvinsgr2vr.d	$xr16, $ra, 2
	xvinsgr2vr.d	$xr16, $a2, 3
	xvori.b	$xr17, $xr5, 0
	xvinsgr2vr.d	$xr17, $t8, 1
	xvinsgr2vr.d	$xr17, $t1, 2
	xvinsgr2vr.d	$xr17, $t8, 3
	xvori.b	$xr19, $xr6, 0
	xvinsgr2vr.d	$xr19, $t8, 1
	xvinsgr2vr.d	$xr19, $a5, 2
	xvinsgr2vr.d	$xr19, $t8, 3
	xvinsgr2vr.d	$xr5, $t7, 1
	xvinsgr2vr.d	$xr5, $t1, 2
	xvinsgr2vr.d	$xr5, $t7, 3
	xvinsgr2vr.d	$xr6, $t7, 1
	xvinsgr2vr.d	$xr6, $a5, 2
	xvinsgr2vr.d	$xr6, $t7, 3
	xvinsgr2vr.d	$xr13, $s5, 0
	xvinsgr2vr.d	$xr13, $s1, 1
	xvinsgr2vr.d	$xr13, $s2, 2
	xvinsgr2vr.d	$xr13, $t2, 3
	xvinsgr2vr.d	$xr15, $s1, 0
	xvinsgr2vr.d	$xr15, $s3, 1
	xvinsgr2vr.d	$xr15, $t2, 2
	xvinsgr2vr.d	$xr15, $s3, 3
	xvinsgr2vr.d	$xr4, $s8, 1
	xvinsgr2vr.d	$xr4, $s5, 2
	xvinsgr2vr.d	$xr4, $s3, 3
	xvori.b	$xr18, $xr0, 0
	xvinsgr2vr.d	$xr18, $s8, 1
	xvinsgr2vr.d	$xr18, $s1, 2
	xvinsgr2vr.d	$xr21, $s6, 0
	xvinsgr2vr.d	$xr18, $s8, 3
	xvori.b	$xr20, $xr21, 0
	xvinsgr2vr.d	$xr20, $t2, 1
	xvinsgr2vr.d	$xr20, $s6, 2
	xvinsgr2vr.d	$xr20, $s5, 3
	xvinsgr2vr.d	$xr21, $s3, 1
	xvinsgr2vr.d	$xr21, $s6, 2
	xvinsgr2vr.d	$xr21, $s1, 3
	xvori.b	$xr22, $xr10, 0
	st.d	$t2, $sp, 544                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $t2, 1
	xvinsgr2vr.d	$xr22, $s4, 2
	st.d	$s5, $sp, 584                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr22, $s5, 3
	xvinsgr2vr.d	$xr10, $s3, 1
	xvinsgr2vr.d	$xr10, $s4, 2
	xvinsgr2vr.d	$xr10, $s1, 3
	xvslt.du	$xr10, $xr6, $xr10
	xvpickve2gr.d	$a3, $xr10, 0
	vinsgr2vr.b	$vr6, $a3, 0
	xvpickve2gr.d	$a3, $xr10, 1
	vinsgr2vr.b	$vr6, $a3, 1
	xvpickve2gr.d	$a3, $xr10, 2
	vinsgr2vr.b	$vr6, $a3, 2
	xvpickve2gr.d	$a3, $xr10, 3
	vinsgr2vr.b	$vr6, $a3, 3
	xvslt.du	$xr5, $xr5, $xr22
	xvpickve2gr.d	$a3, $xr5, 0
	vinsgr2vr.b	$vr6, $a3, 4
	xvpickve2gr.d	$a3, $xr5, 1
	vinsgr2vr.b	$vr6, $a3, 5
	xvpickve2gr.d	$a3, $xr5, 2
	vinsgr2vr.b	$vr6, $a3, 6
	xvpickve2gr.d	$a3, $xr5, 3
	vinsgr2vr.b	$vr6, $a3, 7
	xvslt.du	$xr5, $xr19, $xr21
	xvpickve2gr.d	$a3, $xr5, 0
	vinsgr2vr.b	$vr6, $a3, 8
	xvpickve2gr.d	$a3, $xr5, 1
	vinsgr2vr.b	$vr6, $a3, 9
	xvpickve2gr.d	$a3, $xr5, 2
	vinsgr2vr.b	$vr6, $a3, 10
	xvpickve2gr.d	$a3, $xr5, 3
	vinsgr2vr.b	$vr6, $a3, 11
	xvslt.du	$xr5, $xr17, $xr20
	xvpickve2gr.d	$a3, $xr5, 0
	vinsgr2vr.b	$vr6, $a3, 12
	xvpickve2gr.d	$a3, $xr5, 1
	vinsgr2vr.b	$vr6, $a3, 13
	xvpickve2gr.d	$a3, $xr5, 2
	vinsgr2vr.b	$vr6, $a3, 14
	xvpickve2gr.d	$a3, $xr5, 3
	vinsgr2vr.b	$vr6, $a3, 15
	xvslt.du	$xr5, $xr16, $xr18
	xvpickve2gr.d	$a3, $xr5, 0
	xvpermi.d	$xr10, $xr6, 14
	vinsgr2vr.b	$vr10, $a3, 0
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a3, $xr5, 1
	xvpermi.d	$xr10, $xr6, 14
	vinsgr2vr.b	$vr10, $a3, 1
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a3, $xr5, 2
	xvpermi.d	$xr10, $xr6, 14
	vinsgr2vr.b	$vr10, $a3, 2
	xvpermi.q	$xr6, $xr10, 2
	xvpickve2gr.d	$a3, $xr5, 3
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 3
	xvpermi.q	$xr6, $xr5, 2
	xvslt.du	$xr4, $xr14, $xr4
	xvpickve2gr.d	$a3, $xr4, 0
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 4
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 1
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 5
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 2
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 6
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 3
	xvpermi.d	$xr4, $xr6, 14
	vinsgr2vr.b	$vr4, $a3, 7
	xvpermi.q	$xr6, $xr4, 2
	xvslt.du	$xr4, $xr12, $xr15
	xvpickve2gr.d	$a3, $xr4, 0
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 8
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 1
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 9
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 2
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 10
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 3
	xvpermi.d	$xr4, $xr6, 14
	vinsgr2vr.b	$vr4, $a3, 11
	xvpermi.q	$xr6, $xr4, 2
	xvslt.du	$xr4, $xr11, $xr13
	xvpickve2gr.d	$a3, $xr4, 0
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 12
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 1
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 13
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 2
	xvpermi.d	$xr5, $xr6, 14
	vinsgr2vr.b	$vr5, $a3, 14
	xvpermi.q	$xr6, $xr5, 2
	xvpickve2gr.d	$a3, $xr4, 3
	xvpermi.d	$xr4, $xr6, 14
	vinsgr2vr.b	$vr4, $a3, 15
	xvpermi.q	$xr6, $xr4, 2
	xvinsgr2vr.d	$xr4, $a1, 0
	xvinsgr2vr.d	$xr4, $a0, 1
	xvinsgr2vr.d	$xr4, $a5, 2
	xvinsgr2vr.d	$xr4, $t0, 3
	xvinsgr2vr.d	$xr5, $a0, 0
	xvinsgr2vr.d	$xr5, $a7, 1
	xvinsgr2vr.d	$xr5, $t0, 2
	xvinsgr2vr.d	$xr5, $a7, 3
	xvinsgr2vr.d	$xr2, $ra, 1
	xvinsgr2vr.d	$xr2, $a1, 2
	xvinsgr2vr.d	$xr2, $a7, 3
	xvinsgr2vr.d	$xr3, $ra, 1
	xvinsgr2vr.d	$xr3, $a0, 2
	xvinsgr2vr.d	$xr13, $t8, 0
	xvinsgr2vr.d	$xr3, $ra, 3
	xvori.b	$xr12, $xr13, 0
	xvinsgr2vr.d	$xr12, $t0, 1
	xvinsgr2vr.d	$xr12, $t8, 2
	xvinsgr2vr.d	$xr12, $a1, 3
	xvinsgr2vr.d	$xr13, $a7, 1
	xvinsgr2vr.d	$xr13, $t8, 2
	xvinsgr2vr.d	$xr13, $a0, 3
	xvori.b	$xr16, $xr1, 0
	xvinsgr2vr.d	$xr16, $t0, 1
	xvinsgr2vr.d	$xr16, $t7, 2
	xvinsgr2vr.d	$xr16, $a1, 3
	xvinsgr2vr.d	$xr1, $a7, 1
	xvinsgr2vr.d	$xr1, $t7, 2
	xvinsgr2vr.d	$xr1, $a0, 3
	xvori.b	$xr10, $xr0, 0
	xvinsgr2vr.d	$xr10, $s2, 1
	xvinsgr2vr.d	$xr10, $s7, 2
	xvinsgr2vr.d	$xr10, $s2, 3
	xvinsgr2vr.d	$xr0, $s7, 1
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr0, $s3, 2
	xvinsgr2vr.d	$xr0, $a4, 3
	xvori.b	$xr11, $xr8, 0
	xvinsgr2vr.d	$xr11, $a4, 1
	xvinsgr2vr.d	$xr11, $s8, 2
	xvinsgr2vr.d	$xr11, $s2, 3
	xvori.b	$xr14, $xr8, 0
	xvinsgr2vr.d	$xr14, $s2, 1
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	xvinsgr2vr.d	$xr14, $s8, 2
	xvinsgr2vr.d	$xr14, $s7, 3
	xvori.b	$xr15, $xr7, 0
	xvinsgr2vr.d	$xr15, $s6, 1
	xvinsgr2vr.d	$xr15, $a4, 2
	xvinsgr2vr.d	$xr15, $s6, 3
	xvori.b	$xr17, $xr8, 0
	xvinsgr2vr.d	$xr17, $s6, 1
	xvinsgr2vr.d	$xr17, $s2, 2
	xvinsgr2vr.d	$xr17, $s6, 3
	xvinsgr2vr.d	$xr7, $s4, 1
	xvinsgr2vr.d	$xr7, $a4, 2
	xvinsgr2vr.d	$xr7, $s4, 3
	xvinsgr2vr.d	$xr8, $s4, 1
	xvinsgr2vr.d	$xr8, $s2, 2
	xvinsgr2vr.d	$xr8, $s4, 3
	xvslt.du	$xr8, $xr1, $xr8
	xvpickve2gr.d	$a3, $xr8, 0
	vinsgr2vr.b	$vr1, $a3, 0
	xvpickve2gr.d	$a3, $xr8, 1
	vinsgr2vr.b	$vr1, $a3, 1
	xvpickve2gr.d	$a3, $xr8, 2
	vinsgr2vr.b	$vr1, $a3, 2
	xvpickve2gr.d	$a3, $xr8, 3
	vinsgr2vr.b	$vr1, $a3, 3
	xvslt.du	$xr7, $xr16, $xr7
	xvpickve2gr.d	$a3, $xr7, 0
	vinsgr2vr.b	$vr1, $a3, 4
	xvpickve2gr.d	$a3, $xr7, 1
	vinsgr2vr.b	$vr1, $a3, 5
	xvpickve2gr.d	$a3, $xr7, 2
	vinsgr2vr.b	$vr1, $a3, 6
	xvpickve2gr.d	$a3, $xr7, 3
	vinsgr2vr.b	$vr1, $a3, 7
	xvslt.du	$xr7, $xr13, $xr17
	xvpickve2gr.d	$a3, $xr7, 0
	vinsgr2vr.b	$vr1, $a3, 8
	xvpickve2gr.d	$a3, $xr7, 1
	vinsgr2vr.b	$vr1, $a3, 9
	xvpickve2gr.d	$a3, $xr7, 2
	vinsgr2vr.b	$vr1, $a3, 10
	xvpickve2gr.d	$a3, $xr7, 3
	vinsgr2vr.b	$vr1, $a3, 11
	xvslt.du	$xr7, $xr12, $xr15
	xvpickve2gr.d	$a3, $xr7, 0
	vinsgr2vr.b	$vr1, $a3, 12
	xvpickve2gr.d	$a3, $xr7, 1
	vinsgr2vr.b	$vr1, $a3, 13
	xvpickve2gr.d	$a3, $xr7, 2
	vinsgr2vr.b	$vr1, $a3, 14
	xvpickve2gr.d	$a3, $xr7, 3
	vinsgr2vr.b	$vr1, $a3, 15
	xvslt.du	$xr3, $xr3, $xr14
	xvpickve2gr.d	$a3, $xr3, 0
	xvpermi.d	$xr7, $xr1, 14
	vinsgr2vr.b	$vr7, $a3, 0
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a3, $xr3, 1
	xvpermi.d	$xr7, $xr1, 14
	vinsgr2vr.b	$vr7, $a3, 1
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a3, $xr3, 2
	xvpermi.d	$xr7, $xr1, 14
	vinsgr2vr.b	$vr7, $a3, 2
	xvpermi.q	$xr1, $xr7, 2
	xvpickve2gr.d	$a3, $xr3, 3
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $a3, 3
	xvpermi.q	$xr1, $xr3, 2
	xvslt.du	$xr2, $xr2, $xr11
	xvpickve2gr.d	$a3, $xr2, 0
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $a3, 4
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 1
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $a3, 5
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 2
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $a3, 6
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$a3, $xr2, 3
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 7
	xvpermi.q	$xr1, $xr2, 2
	xvslt.du	$xr0, $xr5, $xr0
	xvpickve2gr.d	$a3, $xr0, 0
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 8
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 1
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 9
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 2
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 10
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 3
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $a3, 11
	xvpermi.q	$xr1, $xr0, 2
	xvslt.du	$xr0, $xr4, $xr10
	xvpickve2gr.d	$a3, $xr0, 0
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 12
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 1
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 13
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 2
	xvpermi.d	$xr2, $xr1, 14
	vinsgr2vr.b	$vr2, $a3, 14
	xvpermi.q	$xr1, $xr2, 2
	xvpickve2gr.d	$a3, $xr0, 3
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $a3, 15
	xvpermi.q	$xr1, $xr0, 2
	xvand.v	$xr0, $xr6, $xr1
	xvor.v	$xr0, $xr9, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$a3, $xr0, 0
	xvpickve2gr.wu	$t2, $xr0, 4
	bstrins.d	$a3, $t2, 31, 16
	addi.w	$t2, $a3, 0
	move	$a3, $zero
	bnez	$t2, .LBB4_72
# %bb.17:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$fp, $s7
	move	$s5, $s4
	ld.d	$t2, $sp, 488                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $t2, 3
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $t2, 3
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $t2, 3
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $s3, 3
	sltu	$s4, $s0, $s8
	sltu	$s3, $t2, $s7
	and	$s3, $s4, $s3
	bnez	$s3, .LBB4_62
# %bb.18:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $t4, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.19:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 552                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $t5, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.20:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $t3
	sltu	$s4, $t6, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.21:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $s5
	sltu	$s4, $t7, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.22:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $s6
	sltu	$s4, $t8, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.23:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 536                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $ra, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.24:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $a7, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.25:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $s2
	sltu	$s4, $a5, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.26:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $s1
	sltu	$s4, $a0, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.27:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $fp
	sltu	$s4, $a2, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.28:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $t0, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.29:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$s3, $s0, $a4
	sltu	$s4, $t1, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.30:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 584                   # 8-byte Folded Reload
	sltu	$s3, $s0, $s3
	sltu	$s4, $a1, $s7
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_62
# %bb.31:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	sltu	$s3, $t2, $s3
	sltu	$s4, $t4, $s8
	and	$s3, $s3, $s4
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	bnez	$s3, .LBB4_71
# %bb.32:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s3, $sp, 552                   # 8-byte Folded Reload
	sltu	$s3, $t2, $s3
	sltu	$s4, $t5, $s8
	and	$s3, $s3, $s4
	bnez	$s3, .LBB4_71
# %bb.33:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $t3
	sltu	$s3, $t6, $s8
	and	$t3, $t3, $s3
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_63
# %bb.34:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s5
	sltu	$s3, $t7, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.35:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s6
	sltu	$s3, $t8, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.36:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$s3, $ra, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.37:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$s3, $a7, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.38:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s2
	sltu	$s3, $a5, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.39:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $s1
	sltu	$s3, $a0, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.40:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $fp
	sltu	$s3, $a2, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.41:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 544                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$s3, $t0, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.42:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t2, $a4
	sltu	$s3, $t1, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.43:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	sltu	$t3, $t2, $t3
	sltu	$s3, $a1, $s8
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_63
# %bb.44:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 552                   # 8-byte Folded Reload
	sltu	$t3, $t4, $t3
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	sltu	$s3, $t5, $s3
	and	$t3, $t3, $s3
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_64
# %bb.45:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t7, $s6
	sltu	$s3, $t8, $s5
	and	$t3, $t3, $s3
	bnez	$t3, .LBB4_64
# %bb.46:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a5, $a4
	sltu	$s3, $t1, $s2
	and	$t3, $t3, $s3
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_73
# %bb.47:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	sltu	$t3, $a5, $t3
	sltu	$s2, $a1, $s2
	and	$t3, $t3, $s2
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_70
# %bb.48:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a0, $fp
	sltu	$s2, $a2, $s1
	and	$t3, $t3, $s2
	bnez	$t3, .LBB4_70
# %bb.49:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	sltu	$t3, $a0, $s5
	sltu	$s2, $t0, $s1
	and	$t3, $t3, $s2
	bnez	$t3, .LBB4_70
# %bb.50:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a0, $a4
	sltu	$s2, $t1, $s1
	and	$t3, $t3, $s2
	bnez	$t3, .LBB4_70
# %bb.51:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	sltu	$t3, $a0, $t3
	sltu	$s1, $a1, $s1
	and	$t3, $t3, $s1
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	bnez	$t3, .LBB4_61
# %bb.52:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a2, $s5
	sltu	$s1, $t0, $fp
	and	$t3, $t3, $s1
	bnez	$t3, .LBB4_61
# %bb.53:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $a2, $a4
	sltu	$s1, $t1, $fp
	and	$t3, $t3, $s1
	bnez	$t3, .LBB4_61
# %bb.54:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	sltu	$t3, $a2, $t3
	sltu	$s1, $a1, $fp
	and	$t3, $t3, $s1
	bnez	$t3, .LBB4_61
# %bb.55:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t0, $a4
	sltu	$s1, $t1, $s5
	and	$t3, $t3, $s1
	bnez	$t3, .LBB4_61
# %bb.56:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$fp, $sp, 584                   # 8-byte Folded Reload
	sltu	$t3, $t0, $fp
	sltu	$s1, $a1, $s5
	and	$t3, $t3, $s1
	bnez	$t3, .LBB4_61
# %bb.57:                               # %vector.memcheck724
                                        #   in Loop: Header=BB4_14 Depth=3
	sltu	$t3, $t1, $fp
	sltu	$a4, $a1, $a4
	and	$a4, $t3, $a4
	bnez	$a4, .LBB4_61
# %bb.58:                               # %vector.ph1206
                                        #   in Loop: Header=BB4_14 Depth=3
	move	$a3, $zero
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_59:                               # %vector.body1209
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $t2, $a3
	xvldx	$xr1, $t4, $a3
	xvldx	$xr2, $s0, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t6, $a3
	xvldx	$xr3, $t7, $a3
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s0, $a3
	xvldx	$xr0, $t5, $a3
	xvfadd.d	$xr1, $xr1, $xr3
	xvldx	$xr2, $ra, $a3
	xvldx	$xr3, $a7, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t5, $a3
	xvldx	$xr0, $t8, $a3
	xvfadd.d	$xr1, $xr2, $xr3
	xvldx	$xr2, $a0, $a3
	xvldx	$xr3, $a2, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $t8, $a3
	xvldx	$xr0, $a5, $a3
	xvfadd.d	$xr1, $xr2, $xr3
	xvstx	$xr27, $t2, $a3
	xvstx	$xr27, $t4, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvstx	$xr0, $a5, $a3
	xvldx	$xr0, $t1, $a3
	xvldx	$xr1, $a1, $a3
	xvstx	$xr27, $t6, $a3
	xvstx	$xr27, $t7, $a3
	xvstx	$xr27, $ra, $a3
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t0, $a3
	xvstx	$xr27, $a7, $a3
	xvstx	$xr27, $a0, $a3
	xvstx	$xr27, $a2, $a3
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t0, $a3
	xvstx	$xr27, $t1, $a3
	xvstx	$xr27, $a1, $a3
	addi.d	$a3, $a3, 32
	bne	$a4, $a3, .LBB4_59
# %bb.60:                               # %middle.block1228
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $a1
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_13
	b	.LBB4_68
.LBB4_61:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	b	.LBB4_67
.LBB4_62:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	b	.LBB4_65
.LBB4_63:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
.LBB4_64:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
.LBB4_65:                               # %for.body324.us.us.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB4_66:                               # %for.body324.us.us.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
.LBB4_67:                               # %for.body324.us.us.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
.LBB4_68:                               # %for.body324.us.us.preheader
                                        #   in Loop: Header=BB4_14 Depth=3
	slli.d	$a0, $a6, 3
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	ld.d	$a2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s2
	ld.d	$a7, $sp, 504                   # 8-byte Folded Reload
	move	$t0, $s4
	move	$t1, $s1
	ld.d	$t2, $sp, 512                   # 8-byte Folded Reload
	move	$t3, $s3
	move	$t4, $s6
	move	$t5, $ra
	move	$t6, $s0
	ld.d	$t7, $sp, 488                   # 8-byte Folded Reload
	move	$t8, $s5
	move	$fp, $s8
	.p2align	4, , 16
.LBB4_69:                               # %for.body324.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a0
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $t7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a0
	stx.d	$zero, $fp, $a0
	stx.d	$zero, $t8, $a0
	fldx.d	$fa0, $t6, $a0
	fldx.d	$fa1, $t5, $a0
	fldx.d	$fa2, $t4, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a0
	stx.d	$zero, $t6, $a0
	stx.d	$zero, $t5, $a0
	fldx.d	$fa0, $t3, $a0
	fldx.d	$fa1, $t2, $a0
	fldx.d	$fa2, $t1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a0
	stx.d	$zero, $t3, $a0
	stx.d	$zero, $t2, $a0
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $a7, $a0
	fldx.d	$fa2, $a5, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a0
	stx.d	$zero, $t0, $a0
	stx.d	$zero, $a7, $a0
	fldx.d	$fa0, $a4, $a0
	fldx.d	$fa1, $a3, $a0
	fldx.d	$fa2, $a2, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a2, $a0
	stx.d	$zero, $a4, $a0
	stx.d	$zero, $a3, $a0
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 8
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_69
	b	.LBB4_13
.LBB4_70:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	b	.LBB4_66
.LBB4_71:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	b	.LBB4_65
.LBB4_72:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	b	.LBB4_68
.LBB4_73:                               #   in Loop: Header=BB4_14 Depth=3
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	b	.LBB4_66
	.p2align	4, , 16
.LBB4_74:                               # %for.end400
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 27
	bne	$a0, $a1, .LBB4_3
# %bb.75:                               # %if.then402
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $sp, 592
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	xvst	$xr27, $sp, 320                 # 32-byte Folded Spill
	pcaddu18i	$ra, %call36(hypre_BoxGetSize)
	jirl	$ra, $ra, 0
	xvld	$xr31, $sp, 320                 # 32-byte Folded Reload
	ld.w	$a0, $sp, 600
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	blt	$a0, $fp, .LBB4_3
# %bb.76:                               # %for.cond601.preheader.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a1, $sp, 596
	blt	$a1, $fp, .LBB4_3
# %bb.77:                               # %for.cond601.preheader.us.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $t3, 4
	ld.w	$a2, $t3, 16
	move	$t4, $zero
	ld.wu	$a3, $sp, 592
	ld.w	$a5, $t3, 0
	sub.w	$a2, $a2, $a0
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	slt	$a4, $a7, $a2
	maskeqz	$a2, $a2, $a4
	ld.w	$a6, $t3, 12
	masknez	$a4, $a7, $a4
	or	$a2, $a2, $a4
	addi.d	$a2, $a2, 1
	sub.w	$a4, $a6, $a5
	slt	$a6, $a7, $a4
	maskeqz	$a4, $a4, $a6
	masknez	$a6, $a7, $a6
	or	$a4, $a4, $a6
	addi.d	$a7, $a4, 1
	sub.d	$a4, $a7, $a3
	sub.d	$a6, $a2, $a1
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t0, $t2, 0
	ld.w	$t1, $t2, 4
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	mulw.d.w	$a6, $a7, $a6
	st.d	$a6, $sp, 464                   # 8-byte Folded Spill
	sub.d	$a5, $t0, $a5
	sub.d	$a0, $t1, $a0
	sub.d	$a6, $t2, $t3
	mul.d	$a2, $a2, $a6
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $a7
	add.w	$a6, $a5, $a0
	addi.d	$a0, $a1, -1
	mul.d	$a0, $a4, $a0
	add.d	$a0, $a7, $a0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	addi.d	$a0, $a3, -1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a2, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 576                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 568                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 560                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 3
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 3
	bstrpick.d	$a0, $a0, 33, 5
	slli.d	$s3, $a0, 5
	b	.LBB4_80
	.p2align	4, , 16
.LBB4_78:                               # %for.cond604.preheader.us366.preheader
                                        #   in Loop: Header=BB4_80 Depth=2
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	add.d	$a6, $a0, $a6
.LBB4_79:                               # %for.cond601.for.end664_crit_edge.us
                                        #   in Loop: Header=BB4_80 Depth=2
	ld.d	$t4, $sp, 480                   # 8-byte Folded Reload
	addi.w	$t4, $t4, 1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a0
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beq	$t4, $a0, .LBB4_3
.LBB4_80:                               # %for.cond601.preheader.us
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_83 Depth 3
                                        #         Child Loop BB4_91 Depth 4
                                        #         Child Loop BB4_86 Depth 4
	st.d	$t4, $sp, 480                   # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	blt	$a0, $fp, .LBB4_78
# %bb.81:                               # %for.cond604.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_80 Depth=2
	move	$s4, $zero
	b	.LBB4_83
	.p2align	4, , 16
.LBB4_82:                               # %for.cond604.for.end658_crit_edge.us.us
                                        #   in Loop: Header=BB4_83 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$a6, $a4, $a6
	beq	$s4, $a1, .LBB4_79
.LBB4_83:                               # %for.cond604.preheader.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_80 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_91 Depth 4
                                        #         Child Loop BB4_86 Depth 4
	ori	$a0, $zero, 32
	bgeu	$a3, $a0, .LBB4_87
# %bb.84:                               #   in Loop: Header=BB4_83 Depth=3
	move	$t4, $zero
.LBB4_85:                               # %for.body606.us.us.preheader
                                        #   in Loop: Header=BB4_83 Depth=3
	slli.d	$a0, $a6, 3
	sub.d	$a2, $a3, $t4
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 456                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_86:                               # %for.body606.us.us
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_80 Depth=2
                                        #       Parent Loop BB4_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fldx.d	$fa0, $fp, $a0
	fldx.d	$fa1, $t8, $a0
	fldx.d	$fa2, $t7, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t7, $a0
	stx.d	$zero, $fp, $a0
	stx.d	$zero, $t8, $a0
	fldx.d	$fa0, $t6, $a0
	fldx.d	$fa1, $t5, $a0
	fldx.d	$fa2, $t4, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t4, $a0
	stx.d	$zero, $t6, $a0
	stx.d	$zero, $t5, $a0
	fldx.d	$fa0, $t3, $a0
	fldx.d	$fa1, $t2, $a0
	fldx.d	$fa2, $t1, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $t1, $a0
	stx.d	$zero, $t3, $a0
	stx.d	$zero, $t2, $a0
	fldx.d	$fa0, $t0, $a0
	fldx.d	$fa1, $a7, $a0
	fldx.d	$fa2, $a5, $a0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fa2, $fa0
	fstx.d	$fa0, $a5, $a0
	stx.d	$zero, $t0, $a0
	stx.d	$zero, $a7, $a0
	addi.d	$a6, $a6, 1
	addi.d	$fp, $fp, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.w	$a2, $a2, -1
	addi.d	$a5, $a5, 8
	bnez	$a2, .LBB4_86
	b	.LBB4_82
	.p2align	4, , 16
.LBB4_87:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_83 Depth=3
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$s5, $a6, $a0, 3
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	alsl.d	$s2, $a6, $a0, 3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$s6, $a6, $a0, 3
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $a0, 3
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	alsl.d	$s7, $a6, $a0, 3
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $a0, 3
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$s8, $a6, $a0, 3
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $a0, 3
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$ra, $a6, $a0, 3
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	alsl.d	$t4, $a6, $a0, 3
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	alsl.d	$a7, $a6, $a0, 3
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a0, 3
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a0, 3
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	alsl.d	$t2, $a6, $a0, 3
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a0, 3
	ld.d	$a2, $sp, 528                   # 8-byte Folded Reload
	alsl.d	$t8, $a6, $a2, 3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	ld.d	$t0, $sp, 520                   # 8-byte Folded Reload
	alsl.d	$t5, $a6, $t0, 3
	ld.d	$t0, $sp, 512                   # 8-byte Folded Reload
	alsl.d	$fp, $a6, $t0, 3
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t0, $a6, $t0, 3
	xvinsgr2vr.d	$xr3, $t0, 0
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	alsl.d	$t3, $a6, $t3, 3
	xvori.b	$xr6, $xr3, 0
	xvinsgr2vr.d	$xr6, $s7, 1
	xvinsgr2vr.d	$xr6, $ra, 2
	xvinsgr2vr.d	$xr4, $a5, 0
	xvinsgr2vr.d	$xr6, $s8, 3
	xvori.b	$xr7, $xr4, 0
	xvinsgr2vr.d	$xr7, $s7, 1
	xvinsgr2vr.d	$xr7, $a2, 2
	xvinsgr2vr.d	$xr15, $s6, 0
	xvinsgr2vr.d	$xr7, $s7, 3
	xvori.b	$xr9, $xr15, 0
	xvinsgr2vr.d	$xr9, $s7, 1
	xvinsgr2vr.d	$xr9, $ra, 2
	xvinsgr2vr.d	$xr9, $s7, 3
	xvori.b	$xr13, $xr15, 0
	xvinsgr2vr.d	$xr13, $a2, 1
	xvinsgr2vr.d	$xr13, $s6, 2
	xvinsgr2vr.d	$xr13, $t0, 3
	xvori.b	$xr17, $xr15, 0
	xvinsgr2vr.d	$xr17, $ra, 1
	xvinsgr2vr.d	$xr17, $s6, 2
	xvinsgr2vr.d	$xr2, $s5, 0
	xvinsgr2vr.d	$xr17, $a5, 3
	xvori.b	$xr18, $xr2, 0
	xvinsgr2vr.d	$xr18, $t0, 1
	xvinsgr2vr.d	$xr18, $s5, 2
	xvinsgr2vr.d	$xr18, $s7, 3
	xvori.b	$xr20, $xr2, 0
	xvinsgr2vr.d	$xr20, $a5, 1
	xvinsgr2vr.d	$xr20, $s5, 2
	xvinsgr2vr.d	$xr20, $a2, 3
	xvinsgr2vr.d	$xr2, $s7, 1
	xvinsgr2vr.d	$xr2, $s5, 2
	xvinsgr2vr.d	$xr12, $s0, 0
	xvinsgr2vr.d	$xr2, $ra, 3
	xvori.b	$xr8, $xr12, 0
	xvinsgr2vr.d	$xr8, $t3, 1
	xvinsgr2vr.d	$xr8, $t1, 2
	xvinsgr2vr.d	$xr8, $t7, 3
	xvinsgr2vr.d	$xr12, $t8, 1
	xvinsgr2vr.d	$xr12, $s0, 2
	xvinsgr2vr.d	$xr11, $t3, 0
	xvinsgr2vr.d	$xr12, $fp, 3
	xvori.b	$xr14, $xr11, 0
	xvinsgr2vr.d	$xr14, $t1, 1
	xvinsgr2vr.d	$xr14, $s0, 2
	xvinsgr2vr.d	$xr0, $t8, 0
	xvinsgr2vr.d	$xr14, $t7, 3
	xvori.b	$xr19, $xr0, 0
	xvinsgr2vr.d	$xr19, $s1, 1
	xvinsgr2vr.d	$xr19, $fp, 2
	xvinsgr2vr.d	$xr1, $t1, 0
	xvinsgr2vr.d	$xr19, $s1, 3
	xvori.b	$xr21, $xr1, 0
	xvinsgr2vr.d	$xr21, $s1, 1
	xvinsgr2vr.d	$xr21, $t7, 2
	xvinsgr2vr.d	$xr5, $fp, 0
	xvinsgr2vr.d	$xr21, $s1, 3
	xvori.b	$xr22, $xr5, 0
	xvinsgr2vr.d	$xr22, $s2, 1
	xvinsgr2vr.d	$xr22, $t3, 2
	xvinsgr2vr.d	$xr10, $t7, 0
	xvinsgr2vr.d	$xr22, $s1, 3
	xvori.b	$xr23, $xr10, 0
	xvinsgr2vr.d	$xr23, $s2, 1
	xvinsgr2vr.d	$xr23, $t8, 2
	xvinsgr2vr.d	$xr16, $s1, 0
	xvinsgr2vr.d	$xr23, $s2, 3
	xvori.b	$xr24, $xr16, 0
	xvinsgr2vr.d	$xr24, $s2, 1
	xvinsgr2vr.d	$xr24, $t1, 2
	xvinsgr2vr.d	$xr24, $s2, 3
	xvslt.du	$xr24, $xr2, $xr24
	xvpickve2gr.d	$t6, $xr24, 0
	vinsgr2vr.b	$vr2, $t6, 0
	xvpickve2gr.d	$t6, $xr24, 1
	vinsgr2vr.b	$vr2, $t6, 1
	xvpickve2gr.d	$t6, $xr24, 2
	vinsgr2vr.b	$vr2, $t6, 2
	xvpickve2gr.d	$t6, $xr24, 3
	vinsgr2vr.b	$vr2, $t6, 3
	xvslt.du	$xr20, $xr20, $xr23
	xvpickve2gr.d	$t6, $xr20, 0
	vinsgr2vr.b	$vr2, $t6, 4
	xvpickve2gr.d	$t6, $xr20, 1
	vinsgr2vr.b	$vr2, $t6, 5
	xvpickve2gr.d	$t6, $xr20, 2
	vinsgr2vr.b	$vr2, $t6, 6
	xvpickve2gr.d	$t6, $xr20, 3
	vinsgr2vr.b	$vr2, $t6, 7
	xvslt.du	$xr18, $xr18, $xr22
	xvpickve2gr.d	$t6, $xr18, 0
	vinsgr2vr.b	$vr2, $t6, 8
	xvpickve2gr.d	$t6, $xr18, 1
	vinsgr2vr.b	$vr2, $t6, 9
	xvpickve2gr.d	$t6, $xr18, 2
	vinsgr2vr.b	$vr2, $t6, 10
	xvpickve2gr.d	$t6, $xr18, 3
	vinsgr2vr.b	$vr2, $t6, 11
	xvslt.du	$xr17, $xr17, $xr21
	xvpickve2gr.d	$t6, $xr17, 0
	vinsgr2vr.b	$vr2, $t6, 12
	xvpickve2gr.d	$t6, $xr17, 1
	vinsgr2vr.b	$vr2, $t6, 13
	xvpickve2gr.d	$t6, $xr17, 2
	vinsgr2vr.b	$vr2, $t6, 14
	xvpickve2gr.d	$t6, $xr17, 3
	vinsgr2vr.b	$vr2, $t6, 15
	xvslt.du	$xr13, $xr13, $xr19
	xvpickve2gr.d	$t6, $xr13, 0
	xvpermi.d	$xr17, $xr2, 14
	vinsgr2vr.b	$vr17, $t6, 0
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t6, $xr13, 1
	xvpermi.d	$xr17, $xr2, 14
	vinsgr2vr.b	$vr17, $t6, 1
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t6, $xr13, 2
	xvpermi.d	$xr17, $xr2, 14
	vinsgr2vr.b	$vr17, $t6, 2
	xvpermi.q	$xr2, $xr17, 2
	xvpickve2gr.d	$t6, $xr13, 3
	xvpermi.d	$xr13, $xr2, 14
	vinsgr2vr.b	$vr13, $t6, 3
	xvpermi.q	$xr2, $xr13, 2
	xvslt.du	$xr9, $xr9, $xr14
	xvpickve2gr.d	$t6, $xr9, 0
	xvpermi.d	$xr13, $xr2, 14
	vinsgr2vr.b	$vr13, $t6, 4
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t6, $xr9, 1
	xvpermi.d	$xr13, $xr2, 14
	vinsgr2vr.b	$vr13, $t6, 5
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t6, $xr9, 2
	xvpermi.d	$xr13, $xr2, 14
	vinsgr2vr.b	$vr13, $t6, 6
	xvpermi.q	$xr2, $xr13, 2
	xvpickve2gr.d	$t6, $xr9, 3
	xvpermi.d	$xr9, $xr2, 14
	vinsgr2vr.b	$vr9, $t6, 7
	xvpermi.q	$xr2, $xr9, 2
	xvslt.du	$xr7, $xr7, $xr12
	xvpickve2gr.d	$t6, $xr7, 0
	xvpermi.d	$xr9, $xr2, 14
	vinsgr2vr.b	$vr9, $t6, 8
	xvpermi.q	$xr2, $xr9, 2
	xvpickve2gr.d	$t6, $xr7, 1
	xvpermi.d	$xr9, $xr2, 14
	vinsgr2vr.b	$vr9, $t6, 9
	xvpermi.q	$xr2, $xr9, 2
	xvpickve2gr.d	$t6, $xr7, 2
	xvpermi.d	$xr9, $xr2, 14
	vinsgr2vr.b	$vr9, $t6, 10
	xvpermi.q	$xr2, $xr9, 2
	xvpickve2gr.d	$t6, $xr7, 3
	xvpermi.d	$xr7, $xr2, 14
	vinsgr2vr.b	$vr7, $t6, 11
	xvpermi.q	$xr2, $xr7, 2
	xvslt.du	$xr6, $xr6, $xr8
	xvpickve2gr.d	$t6, $xr6, 0
	xvpermi.d	$xr7, $xr2, 14
	vinsgr2vr.b	$vr7, $t6, 12
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t6, $xr6, 1
	xvpermi.d	$xr7, $xr2, 14
	vinsgr2vr.b	$vr7, $t6, 13
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t6, $xr6, 2
	xvpermi.d	$xr7, $xr2, 14
	vinsgr2vr.b	$vr7, $t6, 14
	xvpermi.q	$xr2, $xr7, 2
	xvpickve2gr.d	$t6, $xr6, 3
	xvpermi.d	$xr9, $xr2, 14
	vinsgr2vr.b	$vr9, $t6, 15
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t6, $a6, $t6, 3
	xvori.b	$xr22, $xr16, 0
	xvori.b	$xr23, $xr16, 0
	xvinsgr2vr.d	$xr23, $t5, 1
	xvinsgr2vr.d	$xr23, $s1, 2
	xvinsgr2vr.d	$xr16, $t4, 1
	xvinsgr2vr.d	$xr16, $s1, 2
	ld.d	$s1, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$s1, $a6, $s1, 3
	xvinsgr2vr.d	$xr6, $s1, 0
	xvinsgr2vr.d	$xr20, $s7, 0
	xvori.b	$xr18, $xr6, 0
	xvinsgr2vr.d	$xr8, $t2, 0
	xvinsgr2vr.d	$xr18, $s0, 1
	xvori.b	$xr21, $xr8, 0
	xvinsgr2vr.d	$xr21, $s0, 1
	xvinsgr2vr.d	$xr21, $t5, 2
	xvinsgr2vr.d	$xr21, $s0, 3
	xvinsgr2vr.d	$xr22, $s0, 1
	xvinsgr2vr.d	$xr22, $t4, 2
	xvinsgr2vr.d	$xr29, $s2, 0
	xvinsgr2vr.d	$xr22, $s0, 3
	xvori.b	$xr26, $xr29, 0
	xvinsgr2vr.d	$xr26, $s1, 1
	xvinsgr2vr.d	$xr26, $s2, 2
	xvinsgr2vr.d	$xr26, $s0, 3
	xvori.b	$xr28, $xr29, 0
	xvinsgr2vr.d	$xr29, $s0, 1
	ld.d	$s0, $sp, 368                   # 8-byte Folded Reload
	alsl.d	$s0, $a6, $s0, 3
	xvori.b	$xr19, $xr20, 0
	xvinsgr2vr.d	$xr19, $s0, 1
	xvinsgr2vr.d	$xr19, $s8, 2
	xvinsgr2vr.d	$xr19, $a7, 3
	xvinsgr2vr.d	$xr20, $a0, 1
	xvinsgr2vr.d	$xr20, $s7, 2
	xvinsgr2vr.d	$xr13, $s0, 0
	xvinsgr2vr.d	$xr20, $t6, 3
	xvori.b	$xr24, $xr13, 0
	xvinsgr2vr.d	$xr24, $s8, 1
	xvinsgr2vr.d	$xr24, $s7, 2
	xvinsgr2vr.d	$xr14, $a0, 0
	xvinsgr2vr.d	$xr24, $a7, 3
	xvori.b	$xr25, $xr14, 0
	xvinsgr2vr.d	$xr25, $s6, 1
	xvinsgr2vr.d	$xr25, $t6, 2
	xvinsgr2vr.d	$xr17, $s8, 0
	xvinsgr2vr.d	$xr25, $s6, 3
	xvori.b	$xr27, $xr17, 0
	xvinsgr2vr.d	$xr27, $s6, 1
	xvinsgr2vr.d	$xr27, $a7, 2
	xvinsgr2vr.d	$xr7, $t6, 0
	xvinsgr2vr.d	$xr27, $s6, 3
	xvori.b	$xr30, $xr7, 0
	xvinsgr2vr.d	$xr30, $s5, 1
	xvinsgr2vr.d	$xr30, $s0, 2
	xvinsgr2vr.d	$xr30, $s6, 3
	xvinsgr2vr.d	$xr12, $a7, 0
	xvinsgr2vr.d	$xr15, $s5, 1
	xvinsgr2vr.d	$xr15, $s8, 2
	xvinsgr2vr.d	$xr15, $s5, 3
	xvinsgr2vr.d	$xr28, $t2, 1
	xvinsgr2vr.d	$xr28, $s2, 2
	xvinsgr2vr.d	$xr29, $s2, 2
	xvinsgr2vr.d	$xr29, $t4, 3
	xvslt.du	$xr29, $xr15, $xr29
	xvpickve2gr.d	$s2, $xr29, 0
	vinsgr2vr.b	$vr15, $s2, 0
	xvpickve2gr.d	$s2, $xr29, 1
	vinsgr2vr.b	$vr15, $s2, 1
	xvpickve2gr.d	$s2, $xr29, 2
	vinsgr2vr.b	$vr15, $s2, 2
	xvpickve2gr.d	$s2, $xr29, 3
	xvori.b	$xr29, $xr12, 0
	xvinsgr2vr.d	$xr29, $s5, 1
	xvinsgr2vr.d	$xr29, $a0, 2
	xvinsgr2vr.d	$xr29, $s5, 3
	xvinsgr2vr.d	$xr18, $t4, 2
	xvinsgr2vr.d	$xr18, $t1, 3
	xvinsgr2vr.d	$xr23, $s1, 3
	xvinsgr2vr.d	$xr16, $t2, 3
	xvinsgr2vr.d	$xr28, $t5, 3
	vinsgr2vr.b	$vr15, $s2, 3
	xvslt.du	$xr28, $xr29, $xr28
	xvpickve2gr.d	$s2, $xr28, 0
	vinsgr2vr.b	$vr15, $s2, 4
	xvpickve2gr.d	$s2, $xr28, 1
	vinsgr2vr.b	$vr15, $s2, 5
	xvpickve2gr.d	$s2, $xr28, 2
	vinsgr2vr.b	$vr15, $s2, 6
	xvpickve2gr.d	$s2, $xr28, 3
	vinsgr2vr.b	$vr15, $s2, 7
	xvslt.du	$xr26, $xr30, $xr26
	xvpickve2gr.d	$s2, $xr26, 0
	vinsgr2vr.b	$vr15, $s2, 8
	xvpickve2gr.d	$s2, $xr26, 1
	vinsgr2vr.b	$vr15, $s2, 9
	xvpickve2gr.d	$s2, $xr26, 2
	vinsgr2vr.b	$vr15, $s2, 10
	xvpickve2gr.d	$s2, $xr26, 3
	vinsgr2vr.b	$vr15, $s2, 11
	xvslt.du	$xr16, $xr27, $xr16
	xvpickve2gr.d	$s2, $xr16, 0
	vinsgr2vr.b	$vr15, $s2, 12
	xvpickve2gr.d	$s2, $xr16, 1
	vinsgr2vr.b	$vr15, $s2, 13
	xvpickve2gr.d	$s2, $xr16, 2
	vinsgr2vr.b	$vr15, $s2, 14
	xvpickve2gr.d	$s2, $xr16, 3
	vinsgr2vr.b	$vr15, $s2, 15
	xvslt.du	$xr16, $xr25, $xr23
	xvpickve2gr.d	$s2, $xr16, 0
	xvpermi.d	$xr23, $xr15, 14
	vinsgr2vr.b	$vr23, $s2, 0
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$s2, $xr16, 1
	xvpermi.d	$xr23, $xr15, 14
	vinsgr2vr.b	$vr23, $s2, 1
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$s2, $xr16, 2
	xvpermi.d	$xr23, $xr15, 14
	vinsgr2vr.b	$vr23, $s2, 2
	xvpermi.q	$xr15, $xr23, 2
	xvpickve2gr.d	$s2, $xr16, 3
	xvpermi.d	$xr16, $xr15, 14
	vinsgr2vr.b	$vr16, $s2, 3
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr24, $xr22
	xvpickve2gr.d	$s2, $xr16, 0
	xvpermi.d	$xr22, $xr15, 14
	vinsgr2vr.b	$vr22, $s2, 4
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$s2, $xr16, 1
	xvpermi.d	$xr22, $xr15, 14
	vinsgr2vr.b	$vr22, $s2, 5
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$s2, $xr16, 2
	xvpermi.d	$xr22, $xr15, 14
	vinsgr2vr.b	$vr22, $s2, 6
	xvpermi.q	$xr15, $xr22, 2
	xvpickve2gr.d	$s2, $xr16, 3
	xvpermi.d	$xr16, $xr15, 14
	vinsgr2vr.b	$vr16, $s2, 7
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr20, $xr21
	xvpickve2gr.d	$s2, $xr16, 0
	xvpermi.d	$xr20, $xr15, 14
	vinsgr2vr.b	$vr20, $s2, 8
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$s2, $xr16, 1
	xvpermi.d	$xr20, $xr15, 14
	vinsgr2vr.b	$vr20, $s2, 9
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$s2, $xr16, 2
	xvpermi.d	$xr20, $xr15, 14
	vinsgr2vr.b	$vr20, $s2, 10
	xvpermi.q	$xr15, $xr20, 2
	xvpickve2gr.d	$s2, $xr16, 3
	xvpermi.d	$xr16, $xr15, 14
	vinsgr2vr.b	$vr16, $s2, 11
	xvpermi.q	$xr15, $xr16, 2
	xvslt.du	$xr16, $xr19, $xr18
	xvpickve2gr.d	$s2, $xr16, 0
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $s2, 12
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$s2, $xr16, 1
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $s2, 13
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$s2, $xr16, 2
	xvpermi.d	$xr18, $xr15, 14
	vinsgr2vr.b	$vr18, $s2, 14
	xvpermi.q	$xr15, $xr18, 2
	xvpickve2gr.d	$s2, $xr16, 3
	xvpermi.d	$xr19, $xr15, 14
	vinsgr2vr.b	$vr19, $s2, 15
	xvori.b	$xr20, $xr3, 0
	xvinsgr2vr.d	$xr20, $a2, 1
	xvinsgr2vr.d	$xr20, $t0, 2
	xvinsgr2vr.d	$xr20, $t6, 3
	xvori.b	$xr21, $xr14, 0
	xvinsgr2vr.d	$xr21, $t0, 1
	xvinsgr2vr.d	$xr21, $a0, 2
	xvinsgr2vr.d	$xr21, $a2, 3
	xvori.b	$xr23, $xr4, 0
	xvinsgr2vr.d	$xr23, $t0, 1
	xvinsgr2vr.d	$xr23, $a5, 2
	xvinsgr2vr.d	$xr23, $a2, 3
	xvinsgr2vr.d	$xr3, $a7, 1
	xvinsgr2vr.d	$xr3, $a5, 2
	xvinsgr2vr.d	$xr3, $a2, 3
	xvinsgr2vr.d	$xr4, $a7, 1
	xvinsgr2vr.d	$xr4, $a2, 2
	xvinsgr2vr.d	$xr16, $a2, 0
	xvinsgr2vr.d	$xr4, $a7, 3
	xvori.b	$xr26, $xr16, 0
	xvinsgr2vr.d	$xr26, $ra, 1
	xvinsgr2vr.d	$xr26, $t0, 2
	xvinsgr2vr.d	$xr26, $ra, 3
	xvori.b	$xr27, $xr17, 0
	xvinsgr2vr.d	$xr27, $ra, 1
	xvinsgr2vr.d	$xr27, $a5, 2
	xvinsgr2vr.d	$xr27, $ra, 3
	xvinsgr2vr.d	$xr17, $a2, 1
	xvinsgr2vr.d	$xr17, $s8, 2
	xvinsgr2vr.d	$xr18, $t5, 0
	xvinsgr2vr.d	$xr17, $t0, 3
	xvori.b	$xr22, $xr18, 0
	xvinsgr2vr.d	$xr22, $t3, 1
	xvinsgr2vr.d	$xr22, $fp, 2
	xvinsgr2vr.d	$xr22, $t3, 3
	xvori.b	$xr24, $xr5, 0
	xvinsgr2vr.d	$xr24, $t8, 1
	xvinsgr2vr.d	$xr24, $t3, 2
	xvinsgr2vr.d	$xr24, $fp, 3
	xvinsgr2vr.d	$xr5, $t2, 1
	xvinsgr2vr.d	$xr5, $t3, 2
	xvinsgr2vr.d	$xr5, $t8, 3
	xvori.b	$xr25, $xr10, 0
	xvinsgr2vr.d	$xr25, $t3, 1
	xvinsgr2vr.d	$xr25, $t8, 2
	xvinsgr2vr.d	$xr25, $t2, 3
	xvinsgr2vr.d	$xr10, $t8, 1
	xvinsgr2vr.d	$xr10, $t7, 2
	xvinsgr2vr.d	$xr10, $fp, 3
	xvinsgr2vr.d	$xr28, $t4, 0
	xvinsgr2vr.d	$xr28, $fp, 1
	xvinsgr2vr.d	$xr28, $t4, 2
	xvinsgr2vr.d	$xr28, $t3, 3
	xvinsgr2vr.d	$xr11, $t7, 1
	xvinsgr2vr.d	$xr11, $t4, 2
	xvinsgr2vr.d	$xr11, $t8, 3
	xvori.b	$xr29, $xr0, 0
	xvinsgr2vr.d	$xr29, $t1, 1
	xvinsgr2vr.d	$xr29, $fp, 2
	xvinsgr2vr.d	$xr29, $t1, 3
	xvslt.du	$xr29, $xr17, $xr29
	xvpickve2gr.d	$s2, $xr29, 0
	vinsgr2vr.b	$vr17, $s2, 0
	xvpickve2gr.d	$s2, $xr29, 1
	vinsgr2vr.b	$vr17, $s2, 1
	xvpickve2gr.d	$s2, $xr29, 2
	vinsgr2vr.b	$vr17, $s2, 2
	xvpickve2gr.d	$s2, $xr29, 3
	vinsgr2vr.b	$vr17, $s2, 3
	xvslt.du	$xr11, $xr27, $xr11
	xvpickve2gr.d	$s2, $xr11, 0
	vinsgr2vr.b	$vr17, $s2, 4
	xvpickve2gr.d	$s2, $xr11, 1
	vinsgr2vr.b	$vr17, $s2, 5
	xvpickve2gr.d	$s2, $xr11, 2
	vinsgr2vr.b	$vr17, $s2, 6
	xvpickve2gr.d	$s2, $xr11, 3
	vinsgr2vr.b	$vr17, $s2, 7
	xvslt.du	$xr11, $xr26, $xr28
	xvpickve2gr.d	$s2, $xr11, 0
	vinsgr2vr.b	$vr17, $s2, 8
	xvpickve2gr.d	$s2, $xr11, 1
	vinsgr2vr.b	$vr17, $s2, 9
	xvpickve2gr.d	$s2, $xr11, 2
	vinsgr2vr.b	$vr17, $s2, 10
	xvpickve2gr.d	$s2, $xr11, 3
	vinsgr2vr.b	$vr17, $s2, 11
	xvslt.du	$xr4, $xr4, $xr10
	xvpickve2gr.d	$s2, $xr4, 0
	vinsgr2vr.b	$vr17, $s2, 12
	xvpickve2gr.d	$s2, $xr4, 1
	vinsgr2vr.b	$vr17, $s2, 13
	xvpickve2gr.d	$s2, $xr4, 2
	vinsgr2vr.b	$vr17, $s2, 14
	xvpickve2gr.d	$s2, $xr4, 3
	vinsgr2vr.b	$vr17, $s2, 15
	xvslt.du	$xr3, $xr3, $xr25
	xvpickve2gr.d	$s2, $xr3, 0
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 0
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 1
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 1
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 2
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 2
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 3
	xvpermi.d	$xr3, $xr17, 14
	vinsgr2vr.b	$vr3, $s2, 3
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr23, $xr5
	xvpickve2gr.d	$s2, $xr3, 0
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 4
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 1
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 5
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 2
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 6
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 3
	xvpermi.d	$xr3, $xr17, 14
	vinsgr2vr.b	$vr3, $s2, 7
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr21, $xr24
	xvpickve2gr.d	$s2, $xr3, 0
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 8
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 1
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 9
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 2
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 10
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 3
	xvpermi.d	$xr3, $xr17, 14
	vinsgr2vr.b	$vr3, $s2, 11
	xvpermi.q	$xr17, $xr3, 2
	xvslt.du	$xr3, $xr20, $xr22
	xvpickve2gr.d	$s2, $xr3, 0
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 12
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 1
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 13
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 2
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 14
	xvpermi.q	$xr17, $xr4, 2
	xvpickve2gr.d	$s2, $xr3, 3
	xvpermi.d	$xr4, $xr17, 14
	vinsgr2vr.b	$vr4, $s2, 15
	xvori.b	$xr3, $xr6, 0
	xvinsgr2vr.d	$xr3, $t5, 1
	xvinsgr2vr.d	$xr3, $s1, 2
	xvinsgr2vr.d	$xr3, $fp, 3
	xvinsgr2vr.d	$xr0, $s1, 1
	xvinsgr2vr.d	$xr0, $t8, 2
	xvori.b	$xr5, $xr8, 0
	xvinsgr2vr.d	$xr6, $t7, 1
	xvinsgr2vr.d	$xr8, $t7, 1
	xvinsgr2vr.d	$xr8, $t5, 2
	xvinsgr2vr.d	$xr8, $t7, 3
	xvpermi.q	$xr2, $xr9, 2
	xvpermi.q	$xr15, $xr19, 2
	xvand.v	$xr2, $xr2, $xr15
	xvpermi.q	$xr17, $xr4, 2
	xvinsgr2vr.d	$xr16, $s0, 1
	xvinsgr2vr.d	$xr16, $t6, 2
	xvinsgr2vr.d	$xr16, $s0, 3
	xvori.b	$xr4, $xr7, 0
	xvinsgr2vr.d	$xr4, $a0, 1
	xvinsgr2vr.d	$xr4, $s0, 2
	xvinsgr2vr.d	$xr4, $t6, 3
	xvinsgr2vr.d	$xr7, $a5, 1
	xvinsgr2vr.d	$xr7, $s0, 2
	xvinsgr2vr.d	$xr7, $a0, 3
	xvori.b	$xr9, $xr12, 0
	xvinsgr2vr.d	$xr9, $s0, 1
	xvinsgr2vr.d	$xr9, $a0, 2
	xvinsgr2vr.d	$xr9, $a5, 3
	xvinsgr2vr.d	$xr12, $a0, 1
	xvinsgr2vr.d	$xr12, $a7, 2
	xvinsgr2vr.d	$xr12, $t6, 3
	xvinsgr2vr.d	$xr10, $ra, 0
	xvinsgr2vr.d	$xr10, $t6, 1
	xvinsgr2vr.d	$xr10, $ra, 2
	xvinsgr2vr.d	$xr10, $s0, 3
	xvinsgr2vr.d	$xr13, $a7, 1
	xvinsgr2vr.d	$xr13, $ra, 2
	xvinsgr2vr.d	$xr13, $a0, 3
	xvinsgr2vr.d	$xr14, $s8, 1
	xvinsgr2vr.d	$xr14, $t6, 2
	xvinsgr2vr.d	$xr14, $s8, 3
	xvinsgr2vr.d	$xr0, $t5, 3
	xvinsgr2vr.d	$xr5, $s1, 1
	xvinsgr2vr.d	$xr5, $t2, 2
	xvinsgr2vr.d	$xr5, $t5, 3
	xvinsgr2vr.d	$xr6, $t2, 2
	xvinsgr2vr.d	$xr6, $t5, 3
	xvinsgr2vr.d	$xr18, $t4, 1
	xvinsgr2vr.d	$xr18, $s1, 2
	xvinsgr2vr.d	$xr18, $t4, 3
	xvori.b	$xr11, $xr1, 0
	xvinsgr2vr.d	$xr11, $t4, 1
	xvinsgr2vr.d	$xr11, $t2, 2
	xvinsgr2vr.d	$xr11, $t4, 3
	xvinsgr2vr.d	$xr1, $t5, 1
	xvinsgr2vr.d	$xr1, $t1, 2
	xvinsgr2vr.d	$xr1, $s1, 3
	xvslt.du	$xr14, $xr14, $xr1
	xvpickve2gr.d	$t4, $xr14, 0
	vinsgr2vr.b	$vr1, $t4, 0
	xvpickve2gr.d	$t4, $xr14, 1
	vinsgr2vr.b	$vr1, $t4, 1
	xvpickve2gr.d	$t4, $xr14, 2
	vinsgr2vr.b	$vr1, $t4, 2
	xvpickve2gr.d	$t4, $xr14, 3
	vinsgr2vr.b	$vr1, $t4, 3
	xvslt.du	$xr11, $xr13, $xr11
	xvpickve2gr.d	$t4, $xr11, 0
	vinsgr2vr.b	$vr1, $t4, 4
	xvpickve2gr.d	$t4, $xr11, 1
	vinsgr2vr.b	$vr1, $t4, 5
	xvpickve2gr.d	$t4, $xr11, 2
	vinsgr2vr.b	$vr1, $t4, 6
	xvpickve2gr.d	$t4, $xr11, 3
	vinsgr2vr.b	$vr1, $t4, 7
	xvslt.du	$xr10, $xr10, $xr18
	xvpickve2gr.d	$t4, $xr10, 0
	vinsgr2vr.b	$vr1, $t4, 8
	xvpickve2gr.d	$t4, $xr10, 1
	vinsgr2vr.b	$vr1, $t4, 9
	xvpickve2gr.d	$t4, $xr10, 2
	vinsgr2vr.b	$vr1, $t4, 10
	xvpickve2gr.d	$t4, $xr10, 3
	vinsgr2vr.b	$vr1, $t4, 11
	xvslt.du	$xr8, $xr12, $xr8
	xvpickve2gr.d	$t4, $xr8, 0
	vinsgr2vr.b	$vr1, $t4, 12
	xvpickve2gr.d	$t4, $xr8, 1
	vinsgr2vr.b	$vr1, $t4, 13
	xvpickve2gr.d	$t4, $xr8, 2
	vinsgr2vr.b	$vr1, $t4, 14
	xvpickve2gr.d	$t4, $xr8, 3
	vinsgr2vr.b	$vr1, $t4, 15
	xvslt.du	$xr6, $xr9, $xr6
	xvpickve2gr.d	$t4, $xr6, 0
	xvpermi.d	$xr8, $xr1, 14
	vinsgr2vr.b	$vr8, $t4, 0
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$t4, $xr6, 1
	xvpermi.d	$xr8, $xr1, 14
	vinsgr2vr.b	$vr8, $t4, 1
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$t4, $xr6, 2
	xvpermi.d	$xr8, $xr1, 14
	vinsgr2vr.b	$vr8, $t4, 2
	xvpermi.q	$xr1, $xr8, 2
	xvpickve2gr.d	$t4, $xr6, 3
	xvpermi.d	$xr6, $xr1, 14
	vinsgr2vr.b	$vr6, $t4, 3
	xvpermi.q	$xr1, $xr6, 2
	xvslt.du	$xr5, $xr7, $xr5
	xvpickve2gr.d	$t4, $xr5, 0
	xvpermi.d	$xr6, $xr1, 14
	vinsgr2vr.b	$vr6, $t4, 4
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$t4, $xr5, 1
	xvpermi.d	$xr6, $xr1, 14
	vinsgr2vr.b	$vr6, $t4, 5
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$t4, $xr5, 2
	xvpermi.d	$xr6, $xr1, 14
	vinsgr2vr.b	$vr6, $t4, 6
	xvpermi.q	$xr1, $xr6, 2
	xvpickve2gr.d	$t4, $xr5, 3
	xvpermi.d	$xr5, $xr1, 14
	vinsgr2vr.b	$vr5, $t4, 7
	xvpermi.q	$xr1, $xr5, 2
	xvslt.du	$xr0, $xr4, $xr0
	xvpickve2gr.d	$t4, $xr0, 0
	xvpermi.d	$xr4, $xr1, 14
	vinsgr2vr.b	$vr4, $t4, 8
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$t4, $xr0, 1
	xvpermi.d	$xr4, $xr1, 14
	vinsgr2vr.b	$vr4, $t4, 9
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$t4, $xr0, 2
	xvpermi.d	$xr4, $xr1, 14
	vinsgr2vr.b	$vr4, $t4, 10
	xvpermi.q	$xr1, $xr4, 2
	xvpickve2gr.d	$t4, $xr0, 3
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $t4, 11
	xvpermi.q	$xr1, $xr0, 2
	xvslt.du	$xr0, $xr16, $xr3
	xvpickve2gr.d	$t4, $xr0, 0
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $t4, 12
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$t4, $xr0, 1
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $t4, 13
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$t4, $xr0, 2
	xvpermi.d	$xr3, $xr1, 14
	vinsgr2vr.b	$vr3, $t4, 14
	xvpermi.q	$xr1, $xr3, 2
	xvpickve2gr.d	$t4, $xr0, 3
	xvpermi.d	$xr0, $xr1, 14
	vinsgr2vr.b	$vr0, $t4, 15
	xvpermi.q	$xr1, $xr0, 2
	xvand.v	$xr0, $xr17, $xr1
	xvor.v	$xr0, $xr2, $xr0
	xvslli.b	$xr0, $xr0, 7
	xvmskltz.b	$xr0, $xr0
	xvpickve2gr.wu	$t4, $xr0, 0
	xvpickve2gr.wu	$t5, $xr0, 4
	bstrins.d	$t4, $t5, 31, 16
	addi.w	$t5, $t4, 0
	move	$t4, $zero
	bnez	$t5, .LBB4_85
# %bb.88:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_83 Depth=3
	sltu	$t2, $s8, $t2
	sltu	$t1, $a5, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB4_85
# %bb.89:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_83 Depth=3
	sltu	$t1, $t0, $t3
	sltu	$t2, $s0, $s1
	and	$t1, $t1, $t2
	bnez	$t1, .LBB4_85
# %bb.90:                               # %vector.ph
                                        #   in Loop: Header=BB4_83 Depth=3
	move	$t1, $zero
	ld.d	$t2, $sp, 488                   # 8-byte Folded Reload
	add.d	$a6, $t2, $a6
	.p2align	4, , 16
.LBB4_91:                               # %vector.body
                                        #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_80 Depth=2
                                        #       Parent Loop BB4_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvldx	$xr0, $s6, $t1
	xvldx	$xr1, $s7, $t1
	xvldx	$xr2, $s5, $t1
	xvldx	$xr3, $ra, $t1
	xvldx	$xr4, $a7, $t1
	xvfadd.d	$xr0, $xr0, $xr1
	xvfadd.d	$xr0, $xr2, $xr0
	xvstx	$xr0, $s5, $t1
	xvfadd.d	$xr0, $xr3, $xr4
	xvldx	$xr1, $s8, $t1
	xvldx	$xr2, $a0, $t1
	xvldx	$xr3, $a2, $t1
	xvldx	$xr4, $a5, $t1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $s8, $t1
	xvfadd.d	$xr0, $xr2, $xr3
	xvfadd.d	$xr0, $xr4, $xr0
	xvstx	$xr0, $a5, $t1
	xvldx	$xr0, $t0, $t1
	xvldx	$xr1, $s0, $t1
	xvstx	$xr31, $s6, $t1
	xvstx	$xr31, $s7, $t1
	xvstx	$xr31, $ra, $t1
	xvfadd.d	$xr0, $xr0, $xr1
	xvldx	$xr1, $t6, $t1
	xvstx	$xr31, $a7, $t1
	xvstx	$xr31, $a0, $t1
	xvstx	$xr31, $a2, $t1
	xvfadd.d	$xr0, $xr1, $xr0
	xvstx	$xr0, $t6, $t1
	xvstx	$xr31, $t0, $t1
	xvstx	$xr31, $s0, $t1
	addi.d	$t1, $t1, 32
	bne	$s3, $t1, .LBB4_91
# %bb.92:                               # %middle.block
                                        #   in Loop: Header=BB4_83 Depth=3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	move	$t4, $a0
	beq	$a0, $a3, .LBB4_82
	b	.LBB4_85
.LBB4_93:                               # %if.end678
	move	$a0, $zero
	fld.d	$fs7, $sp, 616                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 624                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 632                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 640                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 648                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 656                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 664                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 672                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 760                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 768
	ret
.Lfunc_end4:
	.size	hypre_SMG3RAPPeriodicNoSym, .Lfunc_end4-hypre_SMG3RAPPeriodicNoSym
                                        # -- End function
	.type	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost,@object # @__const.hypre_SMG3CreateRAPOp.RAP_num_ghost
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.hypre_SMG3CreateRAPOp.RAP_num_ghost, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
