	.file	"t4.c"
	.text
	.globl	getspec                         # -- Begin function getspec
	.p2align	5
	.type	getspec,@function
getspec:                                # @getspec
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(sep)
	ld.d	$a0, $a0, %got_pc_lo12(sep)
	ori	$a1, $zero, 255
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(evenup)
	ld.d	$a0, $a0, %got_pc_lo12(evenup)
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcalau12i	$a1, %got_pc_hi20(csize)
	ld.d	$a1, $a1, %got_pc_lo12(csize)
	pcalau12i	$a2, %got_pc_hi20(vsize)
	ld.d	$a2, $a2, %got_pc_lo12(vsize)
	pcalau12i	$a3, %got_pc_hi20(lefline)
	ld.d	$a3, $a3, %got_pc_lo12(lefline)
	pcalau12i	$a4, %got_pc_hi20(font)
	ld.d	$a4, $a4, %got_pc_lo12(font)
	pcalau12i	$a5, %got_pc_hi20(ctop)
	ld.d	$a5, $a5, %got_pc_lo12(ctop)
	pcalau12i	$a6, %got_pc_hi20(style)
	ld.d	$a6, $a6, %got_pc_lo12(style)
	pcalau12i	$a7, %got_pc_hi20(cll)
	ld.d	$a7, $a7, %got_pc_lo12(cll)
	lu12i.w	$t0, -2
	ori	$t0, $t0, 192
	lu12i.w	$t2, 1
	ori	$t1, $t2, 3904
	ori	$t2, $t2, 3984
	ori	$t3, $zero, 108
	ori	$t4, $zero, 20
	.p2align	4, , 16
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	slli.d	$t5, $a0, 3
	alsl.d	$t5, $a0, $t5, 1
	stx.b	$zero, $a7, $t5
	move	$t5, $a4
	move	$t6, $t0
	.p2align	4, , 16
.LBB0_2:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a1, $t6
	stx.b	$zero, $t7, $t1
	stx.b	$zero, $t7, $t2
	add.d	$t7, $a2, $t6
	stx.b	$zero, $t7, $t1
	stx.b	$zero, $t7, $t2
	add.d	$t7, $a3, $t6
	stptr.w	$zero, $t7, 8000
	stptr.w	$zero, $t7, 8080
	st.b	$zero, $t5, 0
	st.b	$zero, $t5, 40
	add.d	$t7, $a5, $t6
	stptr.w	$zero, $t7, 8000
	stptr.w	$zero, $t7, 8080
	add.d	$t7, $a6, $t6
	stptr.w	$t3, $t7, 8000
	stptr.w	$t3, $t7, 8080
	addi.d	$t6, $t6, 160
	addi.d	$t5, $t5, 80
	bnez	$t6, .LBB0_2
# %bb.3:                                # %for.inc36
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	bne	$a0, $t4, .LBB0_1
# %bb.4:                                # %for.end38
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$s0, $a0, %got_pc_lo12(ncol)
	pcalau12i	$a0, %got_pc_hi20(nclin)
	ld.d	$a0, $a0, %got_pc_lo12(nclin)
	st.w	$zero, $s0, 0
	st.w	$zero, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(rightl)
	ld.d	$a0, $a0, %got_pc_lo12(rightl)
	pcalau12i	$a1, %got_pc_hi20(left1flg)
	ld.d	$a1, $a1, %got_pc_lo12(left1flg)
	pcalau12i	$a2, %pc_hi20(oncol)
	st.w	$zero, $a2, %pc_lo12(oncol)
	st.w	$zero, $a0, 0
	st.w	$zero, $a1, 0
	pcaddu18i	$ra, %call36(readspec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$s1, $a0, %got_pc_lo12(tabout)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	blt	$a0, $fp, .LBB0_7
# %bb.5:                                # %for.body41.preheader
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$fp, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_6:                                # %for.body41
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	addi.w	$a2, $s2, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB0_6
.LBB0_7:                                # %for.end45
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.Lfunc_end0:
	.size	getspec, .Lfunc_end0-getspec
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function readspec
.LCPI1_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI1_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	readspec
	.p2align	5
	.type	readspec,@function
readspec:                               # @readspec
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
	move	$s6, $zero
	move	$s2, $zero
	pcalau12i	$a0, %got_pc_hi20(tab)
	ld.d	$a0, $a0, %got_pc_lo12(tab)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI1_0)
	addi.d	$s0, $a0, %pc_lo12(.LJTI1_0)
	pcalau12i	$a0, %got_pc_hi20(ncol)
	ld.d	$a0, $a0, %got_pc_lo12(ncol)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nclin)
	ld.d	$s1, $a0, %got_pc_lo12(nclin)
	pcalau12i	$a0, %got_pc_hi20(lefline)
	ld.d	$a0, $a0, %got_pc_lo12(lefline)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(rightl)
	ld.d	$a0, $a0, %got_pc_lo12(rightl)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(style)
	ld.d	$a0, $a0, %got_pc_lo12(style)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(tabout)
	ld.d	$a0, $a0, %got_pc_lo12(tabout)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s3, $sp, 110
	b	.LBB1_5
.LBB1_1:                                # %sw.bb109
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a0, $a0, -32
.LBB1_2:                                # %sw.bb111
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $zero
	move	$s2, $fp
	beqz	$s4, .LBB1_5
# %bb.3:                                # %if.end114
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(font)
	ld.d	$a2, $a2, %got_pc_lo12(font)
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $s4, $a1, 1
	addi.d	$a0, $a0, -73
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 51
	st.b	$a0, $a1, -2
	st.b	$zero, $a1, -1
	.p2align	4, , 16
.LBB1_4:                                # %while.cond
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
.LBB1_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_95 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_8 Depth 2
	move	$fp, $s2
	move	$s4, $s6
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 124
	bltu	$a1, $a0, .LBB1_84
# %bb.6:                                # %while.cond
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $s0, $a1
	add.d	$a2, $s0, $a1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a1, $zero, 45
	jr	$a2
.LBB1_7:                                # %sw.bb385
                                        #   in Loop: Header=BB1_5 Depth=1
	st.b	$a0, $sp, 110
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB1_8:                                # %while.cond389
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.b	$a0, $s2, $s3
	ext.w.b	$a0, $a0
	pcaddu18i	$ra, %call36(digit)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	bnez	$a0, .LBB1_8
# %bb.9:                                # %while.end397
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(sep)
	ld.d	$a0, $a0, %got_pc_lo12(sep)
	alsl.d	$s2, $s4, $a0, 2
	ld.w	$s5, $s2, -4
	addi.d	$a0, $sp, 110
	pcaddu18i	$ra, %call36(numb)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(max)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, -4
	b	.LBB1_4
.LBB1_10:                               # %sw.bb55.thread217
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a1, $a0, 32
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $a1
.LBB1_12:                               # %sw.bb59
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a1, $s1, 0
	slli.d	$a2, $a1, 6
	alsl.d	$a2, $a1, $a2, 4
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $s2, $a2
	slli.d	$a3, $s4, 2
	stx.w	$a0, $a2, $a3
	ori	$a2, $zero, 115
	bne	$a0, $a2, .LBB1_15
# %bb.13:                               # %sw.bb59
                                        #   in Loop: Header=BB1_5 Depth=1
	bgtz	$s4, .LBB1_15
# %bb.14:                               # %if.end68.thread
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	b	.LBB1_16
.LBB1_15:                               # %if.end68
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a2, $zero, 115
	bne	$a0, $a2, .LBB1_20
.LBB1_16:                               # %land.lhs.true70
                                        #   in Loop: Header=BB1_5 Depth=1
	slli.d	$a0, $a1, 6
	alsl.d	$a0, $a1, $a0, 4
	add.d	$a0, $s2, $a0
	addi.w	$a1, $s4, -1
	slli.d	$fp, $a1, 2
	ldx.w	$a0, $a0, $fp
	ori	$a1, $zero, 110
	beq	$a0, $a1, .LBB1_19
# %bb.17:                               # %land.lhs.true70
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 97
	bne	$a0, $a1, .LBB1_23
# %bb.18:                               # %land.lhs.true85.thread
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s2, $a0
	ori	$a1, $zero, 108
	stx.w	$a1, $a0, $fp
	b	.LBB1_23
.LBB1_19:                               # %if.then92
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	add.d	$a0, $s2, $a0
	ori	$a1, $zero, 99
	stx.w	$a1, $a0, $fp
	b	.LBB1_23
.LBB1_20:                               # %if.end99
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a2, $zero, 94
	bne	$a0, $a2, .LBB1_23
# %bb.21:                               # %if.end99
                                        #   in Loop: Header=BB1_5 Depth=1
	bgtz	$a1, .LBB1_23
# %bb.22:                               # %if.then104
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_23:                               # %if.end105
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$s6, $s4, 1
	ori	$s2, $zero, 1
	ori	$a0, $zero, 19
	blt	$s4, $a0, .LBB1_5
# %bb.24:                               # %if.then107
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_5
.LBB1_25:                               # %sw.bb270
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_5
# %bb.26:                               # %if.end274
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(vsize)
	ld.d	$a1, $a1, %got_pc_lo12(vsize)
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$s2, $a1, $a0, 2
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bstrins.d	$a1, $zero, 5, 5
	beqz	$a1, .LBB1_99
# %bb.27:                               # %lor.lhs.false287.lr.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $zero
	move	$s8, $s2
	b	.LBB1_29
	.p2align	4, , 16
.LBB1_28:                               # %if.end323
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$s8, $s8, 1
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	bstrins.d	$a1, $zero, 5, 5
	beqz	$a1, .LBB1_103
.LBB1_29:                               # %lor.lhs.false287
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s7, $s2, $s6
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB1_104
# %bb.30:                               # %lor.lhs.false287
                                        #   in Loop: Header=BB1_29 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beq	$a0, $a1, .LBB1_104
# %bb.31:                               # %if.end294
                                        #   in Loop: Header=BB1_29 Depth=2
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_33
# %bb.32:                               # %if.end294
                                        #   in Loop: Header=BB1_29 Depth=2
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB1_34
.LBB1_33:                               # %if.then300
                                        #   in Loop: Header=BB1_29 Depth=2
	bgeu	$s2, $s7, .LBB1_35
	b	.LBB1_101
	.p2align	4, , 16
.LBB1_34:                               # %if.else308
                                        #   in Loop: Header=BB1_29 Depth=2
	move	$s5, $a0
	pcaddu18i	$ra, %call36(digit)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	beqz	$a1, .LBB1_101
.LBB1_35:                               # %if.end316
                                        #   in Loop: Header=BB1_29 Depth=2
	addi.d	$s6, $s6, 1
	st.b	$a0, $s7, 0
	ori	$a0, $zero, 5
	blt	$s6, $a0, .LBB1_28
# %bb.36:                               # %if.then322
                                        #   in Loop: Header=BB1_29 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_28
.LBB1_37:                               # %sw.bb144
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $zero
	move	$s2, $fp
	beqz	$s4, .LBB1_5
# %bb.38:                               # %if.end148
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(font)
	ld.d	$a1, $a1, %got_pc_lo12(font)
	slli.d	$a2, $a0, 5
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	alsl.d	$s8, $s4, $a0, 1
	st.h	$zero, $s8, -2
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a3, $zero
	ori	$a1, $zero, 40
	bne	$a0, $a1, .LBB1_40
# %bb.39:                               # %if.then167.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 41
.LBB1_40:                               # %if.end169.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	beqz	$a0, .LBB1_117
# %bb.41:                               # %if.end173.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $a3, .LBB1_5
# %bb.42:                               # %if.end177.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 40
	beq	$s5, $a1, .LBB1_45
# %bb.43:                               # %if.then180.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_5
# %bb.44:                               # %if.then180.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $a1, .LBB1_5
.LBB1_45:                               # %if.end188.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB1_109
.LBB1_46:                               # %if.then191
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a0, $zero, 10
	move	$s2, $a3
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	b	.LBB1_117
.LBB1_47:                               # %sw.bb214
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_5
# %bb.48:                               # %if.end218
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(csize)
	ld.d	$a1, $a1, %got_pc_lo12(csize)
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$s7, $a1, $a0, 2
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	bstrins.d	$a0, $zero, 5, 5
	beqz	$a0, .LBB1_100
# %bb.49:                               # %lor.lhs.false231.lr.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $zero
	move	$s8, $s7
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_50:                               # %if.end263
                                        #   in Loop: Header=BB1_51 Depth=2
	addi.d	$s8, $s8, 1
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	bstrins.d	$a0, $zero, 5, 5
	beqz	$a0, .LBB1_105
.LBB1_51:                               # %lor.lhs.false231
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s5, $s7, $s2
	ori	$a0, $zero, 10
	beq	$s6, $a0, .LBB1_106
# %bb.52:                               # %lor.lhs.false231
                                        #   in Loop: Header=BB1_51 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$s6, $a0, .LBB1_106
# %bb.53:                               # %if.end238
                                        #   in Loop: Header=BB1_51 Depth=2
	ori	$a0, $zero, 45
	beq	$s6, $a0, .LBB1_55
# %bb.54:                               # %if.end238
                                        #   in Loop: Header=BB1_51 Depth=2
	ori	$a0, $zero, 43
	bne	$s6, $a0, .LBB1_56
.LBB1_55:                               # %if.then244
                                        #   in Loop: Header=BB1_51 Depth=2
	bgeu	$s7, $s5, .LBB1_57
	b	.LBB1_102
	.p2align	4, , 16
.LBB1_56:                               # %if.else251
                                        #   in Loop: Header=BB1_51 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(digit)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_102
.LBB1_57:                               # %if.end259
                                        #   in Loop: Header=BB1_51 Depth=2
	addi.d	$s2, $s2, 1
	st.b	$s6, $s5, 0
	ori	$a0, $zero, 5
	blt	$s2, $a0, .LBB1_50
# %bb.58:                               # %if.then262
                                        #   in Loop: Header=BB1_51 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_50
.LBB1_59:                               # %sw.bb377
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_5
# %bb.60:                               # %if.end381
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(evenup)
	ld.d	$a0, $a0, %got_pc_lo12(evenup)
	pcalau12i	$a1, %got_pc_hi20(evenflg)
	ld.d	$a1, $a1, %got_pc_lo12(evenflg)
	alsl.d	$a0, $s4, $a0, 2
	ori	$a2, $zero, 1
	st.w	$a2, $a0, -4
	st.w	$a2, $a1, 0
	b	.LBB1_4
.LBB1_61:                               # %sw.bb124
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_5
# %bb.62:                               # %if.then127
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(ctop)
	ld.d	$a1, $a1, %got_pc_lo12(ctop)
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	alsl.d	$a0, $s4, $a0, 2
	ori	$a1, $zero, 1
	b	.LBB1_65
.LBB1_63:                               # %sw.bb134
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_5
# %bb.64:                               # %if.then137
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(ctop)
	ld.d	$a1, $a1, %got_pc_lo12(ctop)
	slli.d	$a2, $a0, 6
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a0, $a1, $a0
	alsl.d	$a0, $s4, $a0, 2
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
.LBB1_65:                               # %while.cond
                                        #   in Loop: Header=BB1_5 Depth=1
	st.w	$a1, $a0, -4
	b	.LBB1_4
.LBB1_66:                               # %sw.bb325
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(cll)
	ld.d	$a0, $a0, %got_pc_lo12(cll)
	addi.w	$a1, $s4, -1
	slli.d	$a2, $a1, 3
	alsl.d	$a1, $a1, $a2, 1
	add.d	$s2, $a0, $a1
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_86
# %bb.67:                               # %while.body333.lr.ph.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s8, $zero
	addi.d	$s6, $s2, 1
	ori	$s5, $zero, 1
	ori	$s7, $zero, 40
	.p2align	4, , 16
.LBB1_68:                               # %while.body333.lr.ph
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$a0, $s7, .LBB1_92
# %bb.69:                               # %while.cond330.outer.loopexit
                                        #   in Loop: Header=BB1_68 Depth=2
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	ori	$s8, $zero, 41
	bnez	$a0, .LBB1_68
# %bb.70:                               #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $zero
	move	$a0, $zero
	b	.LBB1_87
.LBB1_71:                               # %sw.bb407
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a0, $s1, 0
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s4, 2
	ldx.w	$a2, $a0, $a1
	addi.d	$a2, $a2, 1
	stx.w	$a2, $a0, $a1
	move	$s6, $s4
	move	$s2, $fp
	bnez	$s4, .LBB1_5
# %bb.72:                               # %if.then415
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %got_pc_hi20(left1flg)
	ld.d	$a0, $a0, %got_pc_lo12(left1flg)
	move	$s6, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	move	$s2, $fp
	b	.LBB1_5
.LBB1_73:                               # %sw.bb1
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $zero
	move	$s6, $s4
	beqz	$fp, .LBB1_5
.LBB1_74:                               # %sw.bb5
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $a0
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s5, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(max)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	slli.d	$a2, $a1, 6
	alsl.d	$a2, $a1, $a2, 4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $a0, 2
	ldx.w	$a2, $a2, $a3
	st.w	$a0, $s5, 0
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB1_76
# %bb.75:                               # %if.then10
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s5, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a3, 0
.LBB1_76:                               # %if.end12
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a2, $s2
	beqz	$fp, .LBB1_78
# %bb.77:                               # %if.then14
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s1, 0
.LBB1_78:                               # %if.end16
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a3, $zero, 100
	blt	$a1, $a3, .LBB1_80
# %bb.79:                               # %if.then18
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	ld.w	$a0, $s5, 0
	ld.w	$a1, $s1, 0
.LBB1_80:                               # %if.end19
                                        #   in Loop: Header=BB1_5 Depth=1
	beqz	$a0, .LBB1_83
# %bb.81:                               # %if.end19
                                        #   in Loop: Header=BB1_5 Depth=1
	beqz	$a1, .LBB1_83
# %bb.82:                               # %if.end23
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $zero
	move	$s2, $zero
	ori	$a0, $zero, 46
	bne	$a2, $a0, .LBB1_5
	b	.LBB1_121
.LBB1_83:                               # %if.then22
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$s6, $zero
	move	$s2, $zero
	ori	$a0, $zero, 46
	bne	$a2, $a0, .LBB1_5
	b	.LBB1_121
.LBB1_84:                               # %sw.default
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $a1, .LBB1_5
# %bb.85:                               # %if.then
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_86:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $zero
	ori	$s5, $zero, 1
.LBB1_87:                               # %while.end362
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s2
.LBB1_88:                               # %while.end362
                                        #   in Loop: Header=BB1_5 Depth=1
	sub.d	$a1, $s6, $s2
	st.b	$zero, $s6, 0
	ori	$a2, $zero, 11
	blt	$a1, $a2, .LBB1_90
# %bb.89:                               # %if.then372
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB1_90:                               # %if.end373
                                        #   in Loop: Header=BB1_5 Depth=1
	andi	$a1, $s5, 1
	move	$s6, $s4
	move	$s2, $fp
	beqz	$a1, .LBB1_5
# %bb.91:                               # %if.then375
                                        #   in Loop: Header=BB1_5 Depth=1
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_92:                               # %if.end344.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	beq	$a0, $s8, .LBB1_87
# %bb.93:                               # %if.end344.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a1, $a0, -58
	sltui	$a1, $a1, -10
	and	$a1, $s5, $a1
	bnez	$a1, .LBB1_87
# %bb.94:                               # %if.end359.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	st.b	$a0, $s2, 0
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_120
	.p2align	4, , 16
.LBB1_95:                               # %while.body333
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB1_88
# %bb.96:                               # %while.body333
                                        #   in Loop: Header=BB1_95 Depth=2
	addi.w	$a1, $a0, -58
	sltui	$a1, $a1, -10
	and	$a1, $s5, $a1
	bnez	$a1, .LBB1_88
# %bb.97:                               # %if.end359
                                        #   in Loop: Header=BB1_95 Depth=2
	addi.d	$s7, $s6, 1
	st.b	$a0, $s6, 0
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s6, $s7
	bnez	$a0, .LBB1_95
# %bb.98:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $zero
	move	$s6, $s7
	b	.LBB1_88
.LBB1_99:                               #   in Loop: Header=BB1_5 Depth=1
	st.b	$zero, $s2, 0
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_100:                              #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $s7
	b	.LBB1_106
.LBB1_101:                              #   in Loop: Header=BB1_5 Depth=1
	st.b	$zero, $s8, 0
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_102:                              #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $s8
	b	.LBB1_106
.LBB1_103:                              # %if.end323.while.end324.loopexitsplit_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$s7, $s2, $s6
.LBB1_104:                              # %while.end324
                                        #   in Loop: Header=BB1_5 Depth=1
	st.b	$zero, $s7, 0
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_105:                              # %if.end263.while.end264.loopexitsplit_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$s5, $s7, $s2
.LBB1_106:                              # %while.end264
                                        #   in Loop: Header=BB1_5 Depth=1
	st.b	$zero, $s5, 0
	ori	$a2, $zero, 10
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 37
	blt	$a0, $a1, .LBB1_108
# %bb.107:                              # %if.then268
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_108:                              # %if.end269
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(un1getc)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_109:                              # %if.end192.peel
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s7, $s8, -2
	addi.w	$a1, $a0, -58
	addi.w	$a2, $zero, -11
	st.b	$a0, $s7, 0
	bltu	$a2, $a1, .LBB1_117
# %bb.110:                              # %if.end148.peel.newph
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s2, $a3
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	beqz	$a0, .LBB1_117
# %bb.111:                              # %if.end173
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $a3, .LBB1_5
# %bb.112:                              # %if.end177
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 40
	beq	$s5, $a1, .LBB1_115
# %bb.113:                              # %if.then180
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_5
# %bb.114:                              # %if.then180
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $a1, .LBB1_5
.LBB1_115:                              # %if.end188
                                        #   in Loop: Header=BB1_5 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB1_46
# %bb.116:                              # %if.end192
                                        #   in Loop: Header=BB1_5 Depth=1
	st.b	$a0, $s7, 1
.LBB1_117:                              # %for.end205
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s6, $s4
	move	$s2, $fp
	ori	$a0, $zero, 40
	bne	$s5, $a0, .LBB1_5
# %bb.118:                              # %if.then207
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$s5, $a3
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	move	$s2, $fp
	beq	$a0, $s5, .LBB1_5
# %bb.119:                              # %if.then211
                                        #   in Loop: Header=BB1_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_120:                              #   in Loop: Header=BB1_5 Depth=1
	move	$a0, $zero
	b	.LBB1_88
.LBB1_121:                              # %while.cond26.preheader
	ori	$s0, $zero, 32
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$fp, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.LJTI1_1)
	addi.d	$s1, $a0, %pc_lo12(.LJTI1_1)
	b	.LBB1_123
	.p2align	4, , 16
.LBB1_122:                              # %if.then33
                                        #   in Loop: Header=BB1_123 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_123:                              # %while.cond26
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(get1char)
	jirl	$ra, $ra, 0
	bltu	$s0, $a0, .LBB1_122
# %bb.124:                              # %while.cond26
                                        #   in Loop: Header=BB1_123 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s1, $a0
	add.d	$a0, $s1, $a0
	jr	$a0
.LBB1_125:                              # %while.end
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_148
# %bb.126:                              # %for.body.preheader
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB1_129
# %bb.127:
	move	$a1, $zero
	b	.LBB1_152
.LBB1_128:                              # %while.end417
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB1_151
.LBB1_129:                              # %vector.ph
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	pcalau12i	$a2, %got_pc_hi20(sep)
	ld.d	$a2, $a2, %got_pc_lo12(sep)
	xvld	$xr0, $a1, %pc_lo12(.LCPI1_0)
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI1_1)
	addi.d	$a2, $a2, 16
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 3
	move	$a5, $a1
	b	.LBB1_131
	.p2align	4, , 16
.LBB1_130:                              # %pred.store.continue245
                                        #   in Loop: Header=BB1_131 Depth=1
	xvaddi.du	$xr1, $xr1, 8
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 32
	beqz	$a5, .LBB1_147
.LBB1_131:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -16
	xvslti.w	$xr2, $xr2, 0
	xvpickve2gr.w	$a6, $xr2, 0
	andi	$a6, $a6, 1
	xvaddi.du	$xr3, $xr1, 1
	beqz	$a6, .LBB1_139
# %bb.132:                              # %pred.store.if
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 0
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, -16
	xvpickve2gr.w	$a6, $xr2, 1
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_140
.LBB1_133:                              # %pred.store.continue233
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 2
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_141
.LBB1_134:                              # %pred.store.if234
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 2
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, -8
	xvpickve2gr.w	$a6, $xr2, 3
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_142
.LBB1_135:                              # %pred.store.continue237
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 4
	andi	$a6, $a6, 1
	xvaddi.du	$xr3, $xr0, 1
	beqz	$a6, .LBB1_143
.LBB1_136:                              # %pred.store.if238
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 0
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, 0
	xvpickve2gr.w	$a6, $xr2, 5
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_144
.LBB1_137:                              # %pred.store.continue241
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_145
.LBB1_138:                              # %pred.store.if242
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 2
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, 8
	xvpickve2gr.w	$a6, $xr2, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_130
	b	.LBB1_146
	.p2align	4, , 16
.LBB1_139:                              # %pred.store.continue
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 1
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_133
.LBB1_140:                              # %pred.store.if232
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 1
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, -12
	xvpickve2gr.w	$a6, $xr2, 2
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_134
.LBB1_141:                              # %pred.store.continue235
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_135
.LBB1_142:                              # %pred.store.if236
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 3
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, -4
	xvpickve2gr.w	$a6, $xr2, 4
	andi	$a6, $a6, 1
	xvaddi.du	$xr3, $xr0, 1
	bnez	$a6, .LBB1_136
.LBB1_143:                              # %pred.store.continue239
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_137
.LBB1_144:                              # %pred.store.if240
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 1
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, 4
	xvpickve2gr.w	$a6, $xr2, 6
	andi	$a6, $a6, 1
	bnez	$a6, .LBB1_138
.LBB1_145:                              # %pred.store.continue243
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.w	$a6, $xr2, 7
	andi	$a6, $a6, 1
	beqz	$a6, .LBB1_130
.LBB1_146:                              # %pred.store.if244
                                        #   in Loop: Header=BB1_131 Depth=1
	xvpickve2gr.d	$a6, $xr3, 3
	sltu	$a6, $a6, $a0
	masknez	$a7, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, 12
	b	.LBB1_130
.LBB1_147:                              # %middle.block
	bne	$a1, $a0, .LBB1_152
.LBB1_148:                              # %for.end
	pcalau12i	$a1, %pc_hi20(oncol)
	ld.w	$a2, $a1, %pc_lo12(oncol)
	beqz	$a2, .LBB1_156
# %bb.149:                              # %if.else
	addi.w	$a1, $a2, 2
	bge	$a1, $a0, .LBB1_157
# %bb.150:                              # %if.then49
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
.LBB1_151:                              # %cleanup
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_157
.LBB1_152:                              # %for.body.preheader246
	pcalau12i	$a2, %got_pc_hi20(sep)
	ld.d	$a2, $a2, %got_pc_lo12(sep)
	alsl.d	$a2, $a1, $a2, 2
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 3
	b	.LBB1_154
	.p2align	4, , 16
.LBB1_153:                              # %for.inc
                                        #   in Loop: Header=BB1_154 Depth=1
	addi.d	$a2, $a2, 4
	beq	$a0, $a1, .LBB1_148
.LBB1_154:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, 0
	addi.d	$a1, $a1, 1
	blt	$a3, $a6, .LBB1_153
# %bb.155:                              # %if.then39
                                        #   in Loop: Header=BB1_154 Depth=1
	sltu	$a6, $a1, $a0
	masknez	$a7, $a4, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a7
	st.w	$a6, $a2, 0
	b	.LBB1_153
.LBB1_156:                              # %if.then46
	st.w	$a0, $a1, %pc_lo12(oncol)
.LBB1_157:                              # %cleanup
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
.Lfunc_end1:
	.size	readspec, .Lfunc_end1-readspec
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_128-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_73-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_74-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_74-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_63-.LJTI1_0
	.word	.LBB1_59-.LJTI1_0
	.word	.LBB1_37-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_47-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_66-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_1-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_63-.LJTI1_0
	.word	.LBB1_59-.LJTI1_0
	.word	.LBB1_37-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_1-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_47-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_61-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_66-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_84-.LJTI1_0
	.word	.LBB1_71-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_125-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_123-.LJTI1_1
	.word	.LBB1_125-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_122-.LJTI1_1
	.word	.LBB1_123-.LJTI1_1
                                        # -- End function
	.type	oncol,@object                   # @oncol
	.bss
	.globl	oncol
	.p2align	2, 0x0
oncol:
	.word	0                               # 0x0
	.size	oncol, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".rm"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" %02d"
	.size	.L.str.1, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"bad table specification character"
	.size	.L.str.3, 34

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"too many lines in specification"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"no specification"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"dot not last character on format line"
	.size	.L.str.6, 38

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"tried to widen table in T&, not allowed"
	.size	.L.str.7, 40

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"first column can not be S-type"
	.size	.L.str.8, 31

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	".tm warning: can't span a-type cols, changed to l\n"
	.size	.L.str.9, 51

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	".tm warning: can't span n-type cols, changed to c\n"
	.size	.L.str.10, 51

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"first row can not contain vertical span"
	.size	.L.str.11, 40

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"too many columns in table"
	.size	.L.str.12, 26

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Nonterminated font name"
	.size	.L.str.13, 24

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"point size too large"
	.size	.L.str.14, 21

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"point size unreasonable"
	.size	.L.str.15, 24

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vertical spacing value too large"
	.size	.L.str.16, 33

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"column width too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"EOF reading table specification"
	.size	.L.str.18, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cll
	.addrsig_sym csize
	.addrsig_sym vsize
