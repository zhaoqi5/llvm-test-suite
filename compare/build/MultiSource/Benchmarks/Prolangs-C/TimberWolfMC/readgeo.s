	.file	"readgeo.c"
	.text
	.globl	readgeo                         # -- Begin function readgeo
	.p2align	5
	.type	readgeo,@function
readgeo:                                # @readgeo
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(bbr)
	ld.d	$s2, $a0, %got_pc_lo12(bbr)
	pcalau12i	$a0, %got_pc_hi20(bbt)
	ld.d	$s7, $a0, %got_pc_lo12(bbt)
	pcalau12i	$a0, %got_pc_hi20(bbl)
	ld.d	$s8, $a0, %got_pc_lo12(bbl)
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	pcalau12i	$a1, %got_pc_hi20(bbb)
	ld.d	$s4, $a1, %got_pc_lo12(bbb)
	st.w	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(hFixedEdgeRoot)
	ld.d	$a1, $a1, %got_pc_lo12(hFixedEdgeRoot)
	st.w	$a0, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(vFixedEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vFixedEdgeRoot)
	st.d	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(hEdgeRoot)
	ld.d	$a1, $a1, %got_pc_lo12(hEdgeRoot)
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(edgeCount)
	ld.d	$s0, $a0, %got_pc_lo12(edgeCount)
	st.d	$zero, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(vEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vEdgeRoot)
	st.w	$zero, $s2, 0
	st.w	$zero, $s7, 0
	st.w	$zero, $s0, 0
	st.d	$zero, $a0, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3752
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(edgeList)
	ld.d	$a1, $a1, %got_pc_lo12(edgeList)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 400
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cellList)
	ld.d	$a1, $a1, %got_pc_lo12(cellList)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	addi.d	$a0, $a0, 8
	ori	$a2, $zero, 392
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 168
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s1, $zero
	bne	$a0, $a1, .LBB0_30
# %bb.1:                                # %while.body.preheader
	move	$s5, $zero
	move	$s6, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -251659
	ori	$a0, $a0, 3113
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 20971
	ori	$a0, $a0, 2129
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then180
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a1, $s3, 401
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ori	$s6, $zero, 1
.LBB0_3:                                # %if.end185
                                        #   in Loop: Header=BB0_4 Depth=1
	ori	$a4, $zero, 40
	mul.d	$a1, $fp, $a4
	stx.w	$s1, $a0, $a1
	ld.w	$a1, $sp, 160
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	slt	$a2, $a5, $a1
	ld.w	$a3, $s0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a5, $a2
	or	$a1, $a2, $a1
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 4
	ld.w	$a1, $sp, 160
	slt	$a2, $a1, $a5
	ld.w	$a3, $s0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a5, $a2
	or	$a1, $a2, $a1
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 8
	ld.w	$a1, $s0, 0
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a0, $a1
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	st.w	$s3, $a1, 12
	ld.w	$a1, $sp, 160
	sub.w	$a1, $a5, $a1
	ld.w	$a2, $s0, 0
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.d	$a1, $a1, $a3
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 16
	ld.w	$a1, $sp, 160
	ld.w	$a2, $s0, 0
	slt	$a1, $a1, $a5
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 20
	ld.w	$a1, $s0, 0
	addi.d	$a2, $a1, -1
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a0, $a1
	st.w	$a2, $a1, 28
	ld.w	$a1, $sp, 164
	ld.w	$a2, $s0, 0
	sub.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 1
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 32
	ld.w	$a1, $s0, 0
	mul.d	$a1, $a1, $a4
	add.d	$a0, $a0, $a1
	ori	$fp, $zero, 1
	st.w	$fp, $a0, 24
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(hFixedEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hFixedEdgeRoot)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(hEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hEdgeRoot)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 168
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$s5, $s1
	bne	$a0, $fp, .LBB0_30
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_31
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a0, $a1, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_7
# %bb.6:                                # %if.then9
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	slli.d	$fp, $s5, 3
	addi.d	$a1, $fp, 408
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	add.d	$a0, $a0, $fp
	addi.d	$a0, $a0, 8
	ori	$a2, $zero, 400
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a2, $sp, 168
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 164
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 168
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	move	$s6, $zero
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $sp, 164
	move	$fp, $s3
	bge	$s3, $a0, .LBB0_28
.LBB0_9:                                # %for.body29
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 156
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 160
	ld.w	$a1, $s2, 0
	blt	$a1, $a0, .LBB0_14
# %bb.10:                               # %if.end34
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a1, $s8, 0
	blt	$a0, $a1, .LBB0_15
.LBB0_11:                               # %if.end38
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a1, $sp, 156
	ld.w	$a2, $s7, 0
	blt	$a2, $a1, .LBB0_16
.LBB0_12:                               # %if.end42
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a2, $s4, 0
	blt	$a1, $a2, .LBB0_17
.LBB0_13:                               # %if.end46
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.w	$s3, $fp, 1
	bnez	$fp, .LBB0_18
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_14:                               # %if.then33
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a0, $s2, 0
	ld.w	$a1, $s8, 0
	bge	$a0, $a1, .LBB0_11
.LBB0_15:                               # %if.then37
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a0, $s8, 0
	ld.w	$a1, $sp, 156
	ld.w	$a2, $s7, 0
	bge	$a2, $a1, .LBB0_12
.LBB0_16:                               # %if.then41
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a1, $s7, 0
	ld.w	$a2, $s4, 0
	bge	$a1, $a2, .LBB0_13
.LBB0_17:                               # %if.then45
                                        #   in Loop: Header=BB0_9 Depth=2
	st.w	$a1, $s4, 0
	addi.w	$s3, $fp, 1
	beqz	$fp, .LBB0_8
.LBB0_18:                               # %if.else
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s1, $s4
	move	$s4, $s8
	move	$s8, $s2
	ld.w	$s7, $s0, 0
	addi.d	$s2, $s7, 1
	st.w	$s2, $s0, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s6, .LBB0_20
# %bb.19:                               # %if.else59
                                        #   in Loop: Header=BB0_9 Depth=2
	st.d	$s5, $s6, 32
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               # %if.then53
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	stx.d	$s5, $a0, $a1
.LBB0_21:                               # %if.end62
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	st.d	$zero, $s5, 32
	st.w	$s2, $s5, 0
	st.w	$zero, $s5, 4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $s5, 24
	ori	$a0, $zero, 400
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_9 Depth=2
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %if.then67
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	addi.w	$a1, $s7, 401
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB0_24:                               # %if.end72
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s2, $s8
	ld.w	$a1, $s0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$a2, $s3, 1
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a0, $a1
	addi.d	$a1, $a1, 4
	addi.w	$s6, $a6, 0
	addi.w	$s7, $a5, 0
	move	$s8, $s4
	bnez	$a2, .LBB0_26
# %bb.25:                               # %if.then76
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a2, $sp, 156
	slt	$a3, $s6, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s6, $a3
	or	$a2, $a3, $a2
	st.w	$a2, $a1, 0
	ld.w	$a1, $sp, 156
	slt	$a2, $a1, $s6
	ld.w	$a3, $s0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
	or	$a1, $a2, $a1
	ori	$a4, $zero, 40
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 8
	ld.w	$a1, $s0, 0
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a0, $a1
	st.w	$a5, $a1, 12
	ld.w	$a1, $sp, 156
	sub.w	$a1, $a6, $a1
	ld.w	$a2, $s0, 0
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.d	$a1, $a1, $a3
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 16
	ld.w	$a1, $sp, 156
	ld.w	$a2, $s0, 0
	slt	$a1, $a1, $s6
	ori	$s6, $zero, 40
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	mul.d	$a2, $a2, $s6
	add.d	$a0, $a0, $a2
	st.w	$a1, $a0, 20
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(vFixedEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vFixedEdgeRoot)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(vEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(vEdgeRoot)
	move	$a1, $s7
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %if.else105
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a2, $sp, 160
	slt	$a3, $s7, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s7, $a3
	or	$a2, $a3, $a2
	st.w	$a2, $a1, 0
	ld.w	$a1, $sp, 160
	slt	$a2, $a1, $s7
	ld.w	$a3, $s0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	ori	$a4, $zero, 40
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 8
	ld.w	$a1, $s0, 0
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a0, $a1
	st.w	$a6, $a1, 12
	ld.w	$a1, $sp, 160
	sub.w	$a1, $a5, $a1
	ld.w	$a2, $s0, 0
	srai.d	$a3, $a1, 31
	xor	$a1, $a1, $a3
	sub.d	$a1, $a1, $a3
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a0, $a2
	st.w	$a1, $a2, 16
	ld.w	$a1, $sp, 160
	ld.w	$a2, $s0, 0
	slt	$a1, $a1, $s7
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	mul.d	$a2, $a2, $a4
	add.d	$a0, $a0, $a2
	st.w	$a1, $a0, 20
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(hFixedEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hFixedEdgeRoot)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(hEdgeRoot)
	ld.d	$a0, $a0, %got_pc_lo12(hEdgeRoot)
	move	$a1, $s6
	ori	$s6, $zero, 40
.LBB0_27:                               # %if.end144
                                        #   in Loop: Header=BB0_9 Depth=2
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	move	$s4, $s1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	mul.d	$a0, $a0, $s6
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $s0, 0
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 24
	ld.w	$a0, $s0, 0
	addi.d	$a2, $a0, 1
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 32
	ld.w	$a0, $s0, 0
	ld.w	$a2, $sp, 164
	addi.d	$a3, $fp, -1
	sltui	$a3, $a3, 1
	addi.d	$a4, $a0, -1
	add.d	$a2, $a4, $a2
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a1, $a0
	st.w	$a2, $a0, 28
	ld.w	$a0, $sp, 160
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 156
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$s6, $s5
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $sp, 164
	move	$fp, $s3
	blt	$s3, $a0, .LBB0_9
.LBB0_28:                               # %for.end169
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$s3, $s0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $sp, 160
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 156
	addi.w	$fp, $s3, 1
	st.w	$fp, $s0, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$a0, $s6, 32
	st.d	$zero, $a0, 32
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.w	$fp, $a1, 0
	st.w	$zero, $a1, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a1, 24
	ori	$a1, $zero, 400
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	bge	$s6, $a1, .LBB0_2
# %bb.29:                               #   in Loop: Header=BB0_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB0_3
.LBB0_30:                               # %while.end
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$a0, $a0, %got_pc_lo12(numberCells)
	ld.w	$a1, $s4, 0
	st.w	$s1, $a0, 0
	ld.w	$a0, $s7, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, 0
	ld.w	$a1, $s8, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, 0
	ld.w	$a0, $s2, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s8, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	alsl.d	$a1, $a1, $a1, 1
	addi.w	$a1, $a1, 5
	ori	$fp, $zero, 40
	mul.d	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s0, 0
	st.d	$a0, $s1, 0
	ld.w	$a2, $s4, 0
	addi.w	$a1, $a4, 1
	mul.d	$a5, $a1, $fp
	ld.w	$a6, $s7, 0
	ld.w	$a7, $s8, 0
	add.d	$t0, $a0, $a5
	st.w	$a2, $t0, 4
	st.w	$a6, $t0, 8
	st.w	$a7, $t0, 12
	sub.d	$t1, $a6, $a2
	addi.w	$a3, $zero, -1
	st.w	$t1, $t0, 16
	move	$t2, $a3
	lu32i.d	$t2, 1
	st.d	$t2, $t0, 20
	addi.w	$t2, $a4, 2
	st.w	$t2, $t0, 28
	addi.w	$t3, $a4, 4
	st.w	$t3, $t0, 32
	lu32i.d	$a3, 0
	stx.w	$a3, $a0, $a5
	ld.w	$a5, $s2, 0
	mul.d	$t0, $t2, $fp
	add.d	$t4, $a0, $t0
	st.w	$a7, $t4, 4
	st.w	$a5, $t4, 8
	st.w	$a6, $t4, 12
	sub.d	$t5, $a5, $a7
	st.w	$t5, $t4, 16
	ori	$t6, $zero, 1
	st.w	$t6, $t4, 24
	st.w	$a3, $t4, 20
	addi.w	$a4, $a4, 3
	st.w	$a4, $t4, 28
	st.w	$a1, $t4, 32
	stx.w	$a3, $a0, $t0
	mul.d	$t0, $a4, $fp
	add.d	$t4, $a0, $t0
	st.w	$a2, $t4, 4
	st.w	$a6, $t4, 8
	st.w	$a5, $t4, 12
	st.w	$t1, $t4, 16
	ori	$a6, $zero, 1
	lu32i.d	$a6, 1
	st.d	$a6, $t4, 20
	st.w	$t3, $t4, 28
	st.w	$t2, $t4, 32
	stx.w	$a3, $a0, $t0
	st.w	$t3, $s0, 0
	mul.d	$a6, $t3, $fp
	add.d	$t0, $a0, $a6
	st.w	$a7, $t0, 4
	st.w	$a5, $t0, 8
	st.w	$a2, $t0, 12
	st.w	$t5, $t0, 16
	st.w	$t6, $t0, 24
	st.w	$t6, $t0, 20
	pcalau12i	$a2, %got_pc_hi20(numProbes)
	ld.d	$a2, $a2, %got_pc_lo12(numProbes)
	st.w	$a1, $t0, 28
	st.w	$a4, $t0, 32
	stx.w	$a3, $a0, $a6
	st.w	$zero, $a2, 0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.LBB0_31:                               # %if.else239
	pcalau12i	$a0, %got_pc_hi20(fpdebug)
	ld.d	$fp, $a0, %got_pc_lo12(fpdebug)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	addi.d	$a2, $sp, 168
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	readgeo, .Lfunc_end0-readgeo
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %s "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cell"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %d "
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" %d %d "
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Found unparsable keyword: < %s > in "
	.size	.L.str.4, 37

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"the .geo file\n"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Current cell: %d\n"
	.size	.L.str.6, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hFixedEdgeRoot
	.addrsig_sym vFixedEdgeRoot
	.addrsig_sym hEdgeRoot
	.addrsig_sym vEdgeRoot
