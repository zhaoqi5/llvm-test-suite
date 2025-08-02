	.file	"transform8x8.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock
.LCPI0_0:
	.dword	0x3fdffe5c91d14e3c              # double 0.49990000000000001
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock
	.p2align	5
	.type	Mode_Decision_for_new_Intra8x8Macroblock,@function
Mode_Decision_for_new_Intra8x8Macroblock: # @Mode_Decision_for_new_Intra8x8Macroblock
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI0_0)
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	vldi	$vr0, -1000
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 0
	addi.d	$a1, $sp, 12
	move	$a0, $zero
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_8x8IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ld.w	$a2, $fp, 0
	sltu	$s0, $zero, $a0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_8x8IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ld.w	$a2, $fp, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 1
	or	$s0, $a0, $s0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_8x8IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ld.w	$a2, $fp, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 2
	or	$s0, $a0, $s0
	add.d	$a0, $a2, $a1
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 12
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(Mode_Decision_for_new_8x8IntraBlocks)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	ld.w	$a2, $fp, 0
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 3
	or	$a0, $a0, $s0
	add.d	$a1, $a2, $a1
	st.w	$a1, $fp, 0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	Mode_Decision_for_new_Intra8x8Macroblock, .Lfunc_end0-Mode_Decision_for_new_Intra8x8Macroblock
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Mode_Decision_for_new_8x8IntraBlocks
.LCPI1_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks
	.p2align	5
	.type	Mode_Decision_for_new_8x8IntraBlocks,@function
Mode_Decision_for_new_8x8IntraBlocks:   # @Mode_Decision_for_new_8x8IntraBlocks
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -672
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$s5, $a2, %got_pc_lo12(img)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	ld.d	$a3, $s5, 0
	andi	$s8, $a0, 1
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	slli.d	$s1, $a0, 2
	slli.d	$fp, $s8, 3
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a1, $a3, 176
	bstrins.d	$s1, $zero, 2, 0
	ld.w	$a0, $a3, 180
	addi.w	$a2, $s1, 0
	alsl.d	$s3, $s8, $a1, 3
	alsl.w	$a4, $s8, $a1, 3
	add.w	$a5, $a0, $s1
	ld.w	$s0, $a3, 192
	ld.w	$s2, $a3, 196
	pcalau12i	$a1, %pc_hi20(imgY_org)
	ld.d	$s7, $a1, %pc_lo12(imgY_org)
	ldptr.d	$a1, $a3, 14224
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a3, 12
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	bstrpick.d	$s6, $a4, 62, 61
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$s4, $a5, 62, 61
	addi.d	$a1, $fp, -1
	addi.d	$a3, $sp, 372
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 12
	addi.w	$a2, $s1, -1
	addi.d	$a3, $sp, 348
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 272
	beqz	$a0, .LBB1_7
# %bb.1:                                # %if.then
	ld.w	$a0, $sp, 348
	beqz	$a0, .LBB1_4
# %bb.2:                                # %cond.true
	ld.d	$a0, $s5, 0
	ld.w	$a1, $sp, 352
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.w	$a1, $sp, 372
	st.w	$a0, $sp, 348
	beqz	$a1, .LBB1_5
.LBB1_3:                                # %cond.true15
	ld.d	$a0, $s5, 0
	ld.w	$a1, $sp, 376
	ldptr.d	$a0, $a0, 14240
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB1_6
.LBB1_4:
	move	$a0, $zero
	ld.w	$a1, $sp, 372
	st.w	$a0, $sp, 348
	bnez	$a1, .LBB1_3
.LBB1_5:
	move	$a0, $zero
.LBB1_6:                                # %cond.end21
	st.w	$a0, $sp, 372
.LBB1_7:                                # %if.end
	add.w	$a0, $s3, $s6
	ld.w	$a4, $sp, 348
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.w	$a1, $a1, $s4
	add.w	$s1, $s2, $s1
	ori	$a2, $zero, 255
	ori	$a3, $zero, 255
	beqz	$a4, .LBB1_9
# %bb.8:                                # %if.end52.sink.split
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	sltui	$a3, $a3, 2
	ori	$a4, $zero, 136
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 128
	ld.d	$a6, $s5, 0
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	ld.w	$a4, $sp, 368
	ldx.d	$a3, $a6, $a3
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 364
	ldx.bu	$a3, $a3, $a4
.LBB1_9:                                # %if.end52
	ld.w	$a4, $sp, 372
	beqz	$a4, .LBB1_11
# %bb.10:                               # %if.end87.sink.split
	sltui	$a2, $s8, 1
	ori	$a4, $zero, 136
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 128
	ld.d	$a6, $s5, 0
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	ld.w	$a4, $sp, 392
	ldx.d	$a2, $a6, $a2
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 388
	ldx.bu	$a2, $a2, $a4
.LBB1_11:                               # %if.end87
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	alsl.w	$s4, $s8, $s0, 3
	srai.d	$a0, $a0, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	srai.d	$a0, $a1, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	or	$a0, $a3, $a2
	ext.w.b	$a0, $a0
	ext.w.b	$a1, $a3
	ext.w.b	$a2, $a2
	slti	$a0, $a0, 0
	slt	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 2
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4095
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	addi.d	$a2, $sp, 404
	addi.d	$a3, $sp, 400
	addi.d	$a4, $sp, 396
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(intrapred_luma8x8)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	ld.w	$a0, $sp, 400
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 404
	ld.w	$a1, $sp, 396
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 1432
	alsl.d	$a2, $fp, $a1, 2
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr0, -1008
	fmul.d	$fa0, $fs0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$s0, $s1, $s7, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ori	$a2, $a2, 7
	addi.w	$s7, $a2, 0
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	addi.d	$t3, $a4, 1
	addi.d	$t2, $a4, 2
	addi.d	$t1, $a4, 3
	addi.d	$t0, $a4, 4
	addi.d	$a7, $a4, 5
	addi.d	$a6, $a4, 6
	addi.d	$a5, $a4, 7
	slli.d	$a2, $a4, 6
	addi.d	$a3, $a4, -1
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	bstrins.d	$a2, $a3, 5, 5
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fs2, $a1, %pc_lo12(.LCPI1_0)
	slli.d	$a1, $a4, 3
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 288                  # 16-byte Folded Spill
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3280
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	lu12i.w	$s6, 3
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $t3, 5
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$t2, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $t2, 5
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $t1, 5
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $t0, 5
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a7, 5
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a6, 5
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a5, 5
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_12:                               # %if.end287
                                        #   in Loop: Header=BB1_15 Depth=1
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	fmov.d	$fs2, $fs1
	move	$s2, $s8
.LBB1_13:                               # %if.end288
                                        #   in Loop: Header=BB1_15 Depth=1
	pcaddu18i	$ra, %call36(reset_coding_state_cs_cm)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %for.inc291
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 9
	beq	$s8, $a0, .LBB1_27
.LBB1_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	slli.d	$s1, $fp, 2
	ori	$a0, $zero, 2
	beq	$s8, $a0, .LBB1_18
# %bb.16:                               # %lor.lhs.false111
                                        #   in Loop: Header=BB1_15 Depth=1
	sltu	$a0, $zero, $s8
	andi	$a1, $s8, 11
	addi.d	$a1, $a1, -3
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_25
# %bb.17:                               # %lor.lhs.false111
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_25
.LBB1_18:                               # %if.then131
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 4168
	ld.d	$a1, $s5, 0
	slli.d	$a0, $s8, 7
	beqz	$a2, .LBB1_23
# %bb.19:                               # %for.body180
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 5
	add.d	$a3, $a1, $a0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	vldx	$vr0, $a3, $a4
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $fp, $a1, 1
	ori	$a2, $s6, 336
	vstx	$vr0, $a1, $a2
	ld.d	$a3, $s0, 0
	ld.d	$a4, $s5, 0
	slli.d	$a1, $s4, 1
	ldx.d	$a5, $a3, $a1
	add.d	$a6, $a4, $a0
	ldptr.d	$a7, $a6, 7376
	alsl.d	$a3, $s4, $a3, 1
	vinsgr2vr.d	$vr0, $a5, 0
	vld	$vr3, $sp, 288                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	ld.d	$a3, $a3, 8
	vilvl.h	$vr1, $vr3, $vr1
	ldptr.d	$a5, $a6, 7384
	vsub.w	$vr0, $vr0, $vr1
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr1, $vr3, $vr1
	vinsgr2vr.d	$vr2, $a5, 0
	vilvl.h	$vr2, $vr3, $vr2
	vsub.w	$vr1, $vr1, $vr2
	ori	$a3, $s6, 848
	add.d	$a5, $a4, $a3
	vst	$vr1, $a5, 16
	lu12i.w	$t1, 1
	ori	$a5, $t1, 3296
	vldx	$vr1, $a6, $a5
	vstx	$vr0, $a4, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 8
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 912
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7392
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7400
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3312
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 16
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 976
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7408
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7416
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3328
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 24
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1040
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7424
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7432
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3344
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 32
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1104
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7440
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7448
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3360
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 40
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1168
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7456
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7464
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3376
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a3, $s0, 48
	ldx.d	$a4, $a3, $a1
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1232
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7472
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7480
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ori	$a3, $t1, 3392
	vldx	$vr1, $a4, $a3
	vst	$vr0, $t0, 16
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $fp, $a3, 1
	vstx	$vr1, $a3, $a2
	ld.d	$a2, $s5, 0
	ld.d	$a3, $s0, 56
	ori	$a4, $s6, 1296
	add.d	$a5, $a2, $a4
	ldx.d	$a1, $a3, $a1
	add.d	$a0, $a2, $a0
	ldptr.d	$a6, $a0, 7488
	alsl.d	$a3, $s4, $a3, 1
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr3, $vr1
	ld.d	$a1, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a0, $a0, 7496
	vstx	$vr0, $a2, $a4
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr3, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 16
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	move	$a2, $s8
	fmov.d	$fa0, $fs0
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(RDCost_for_8x8IntraBlocks)
	jirl	$ra, $ra, 0
	fcmp.cule.d	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB1_13
# %bb.20:                               # %for.cond229.preheader.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	fmov.d	$fs1, $fa0
	pcalau12i	$a0, %got_pc_hi20(cofAC8x8)
	ld.d	$s2, $a0, %got_pc_lo12(cofAC8x8)
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	slli.d	$s3, $a2, 3
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 8
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 16
	ld.d	$a2, $a0, 16
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a0, $a0, 14160
	ldx.d	$a1, $a1, $s3
	ldx.d	$a0, $a0, $s3
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6440
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a0, $a1
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a2, $a0, 8
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 1
	vldx	$vr0, $a1, $a3
	vldx	$vr1, $a2, $a3
	ld.d	$a1, $a0, 16
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	ld.d	$a2, $a0, 24
	ori	$a4, $zero, 2472
	add.d	$a4, $sp, $a4
	vst	$vr1, $a4, 0
	vldx	$vr0, $a1, $a3
	ld.d	$a1, $a0, 32
	vldx	$vr1, $a2, $a3
	ld.d	$a2, $a0, 40
	ori	$a4, $zero, 2488
	add.d	$a4, $sp, $a4
	vst	$vr0, $a4, 0
	vldx	$vr0, $a1, $a3
	ld.d	$a1, $a0, 48
	vldx	$vr2, $a2, $a3
	ld.d	$a2, $a0, 56
	ld.d	$a0, $s5, 0
	vldx	$vr3, $a1, $a3
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	vst	$vr1, $a1, 0
	vldx	$vr1, $a2, $a3
	ldptr.w	$a1, $a0, 15260
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	vst	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	vst	$vr2, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	vst	$vr3, $a2, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	vst	$vr1, $a2, 0
	beqz	$a1, .LBB1_12
# %bb.21:                               # %for.cond268.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_22:                               # %for.body272
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a0, 0
	xvldx	$xr0, $a3, $s1
	xvst	$xr0, $a1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 64
	blt	$a2, $s7, .LBB1_22
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_23:                               # %for.cond138.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a3, $s0, 0
	slli.d	$a2, $s4, 1
	vldx	$vr1, $a3, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a4
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vldx	$vr2, $a0, $a4
	vpickve2gr.h	$a0, $vr1, 7
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr0, $a0, 7
	vpickve2gr.h	$a0, $vr2, 0
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 0
	vpickve2gr.h	$a0, $vr2, 1
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 1
	vpickve2gr.h	$a0, $vr2, 2
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 2
	vpickve2gr.h	$a0, $vr2, 3
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 3
	vpickve2gr.h	$a0, $vr2, 4
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 4
	vpickve2gr.h	$a0, $vr2, 5
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 5
	vpickve2gr.h	$a0, $vr2, 6
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 6
	vpickve2gr.h	$a0, $vr2, 7
	ld.d	$a3, $s0, 8
	bstrpick.d	$a0, $a0, 15, 0
	xvinsgr2vr.w	$xr1, $a0, 7
	xvsub.w	$xr0, $xr0, $xr1
	vldx	$vr1, $a3, $a2
	pcalau12i	$a0, %pc_hi20(diff64)
	addi.d	$a0, $a0, %pc_lo12(diff64)
	xvst	$xr0, $a0, 0
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr2, $a1, 16
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	ld.d	$a4, $s0, 16
	xvinsgr2vr.w	$xr1, $a3, 6
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	vldx	$vr2, $a4, $a2
	xvinsgr2vr.w	$xr1, $a3, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $a0, 32
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr1, $a1, 32
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	ld.d	$a4, $s0, 24
	xvinsgr2vr.w	$xr2, $a3, 6
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a3, $a3, 15, 0
	vldx	$vr1, $a4, $a2
	xvinsgr2vr.w	$xr2, $a3, 7
	xvsub.w	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 64
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr2, $a1, 48
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	ld.d	$a4, $s0, 32
	xvinsgr2vr.w	$xr1, $a3, 6
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	vldx	$vr2, $a4, $a2
	xvinsgr2vr.w	$xr1, $a3, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $a0, 96
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr1, $a1, 64
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr2, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	ld.d	$a4, $s0, 40
	xvinsgr2vr.w	$xr2, $a3, 6
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a3, $a3, 15, 0
	vldx	$vr1, $a4, $a2
	xvinsgr2vr.w	$xr2, $a3, 7
	xvsub.w	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 128
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr1, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr1, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr1, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr1, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr2, $a1, 80
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	ld.d	$a4, $s0, 48
	xvinsgr2vr.w	$xr1, $a3, 6
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	vldx	$vr2, $a4, $a2
	xvinsgr2vr.w	$xr1, $a3, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $a0, 160
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 0
	vpickve2gr.h	$a3, $vr2, 1
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 1
	vpickve2gr.h	$a3, $vr2, 2
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 2
	vpickve2gr.h	$a3, $vr2, 3
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 3
	vpickve2gr.h	$a3, $vr2, 4
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 4
	vpickve2gr.h	$a3, $vr2, 5
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 5
	vpickve2gr.h	$a3, $vr2, 6
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 6
	vld	$vr1, $a1, 96
	vpickve2gr.h	$a3, $vr2, 7
	bstrpick.d	$a3, $a3, 15, 0
	xvinsgr2vr.w	$xr0, $a3, 7
	vpickve2gr.h	$a3, $vr1, 0
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.h	$a4, $vr1, 1
	vpickve2gr.h	$a5, $vr1, 2
	ld.d	$a6, $s0, 56
	vpickve2gr.h	$a7, $vr1, 3
	vpickve2gr.h	$t0, $vr1, 4
	vpickve2gr.h	$t1, $vr1, 5
	vldx	$vr2, $a6, $a2
	vpickve2gr.h	$a2, $vr1, 6
	vpickve2gr.h	$a6, $vr1, 7
	xvinsgr2vr.w	$xr1, $a3, 0
	bstrpick.d	$a3, $a4, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 1
	bstrpick.d	$a3, $a5, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 2
	bstrpick.d	$a3, $a7, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 3
	bstrpick.d	$a3, $t0, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 4
	bstrpick.d	$a3, $t1, 15, 0
	xvinsgr2vr.w	$xr1, $a3, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 6
	bstrpick.d	$a2, $a6, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $a0, 192
	vpickve2gr.h	$a2, $vr2, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 0
	vpickve2gr.h	$a2, $vr2, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 1
	vpickve2gr.h	$a2, $vr2, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 2
	vpickve2gr.h	$a2, $vr2, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 3
	vpickve2gr.h	$a2, $vr2, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 4
	vpickve2gr.h	$a2, $vr2, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 5
	vpickve2gr.h	$a2, $vr2, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 6
	vld	$vr1, $a1, 112
	vpickve2gr.h	$a1, $vr2, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr0, $a1, 7
	vpickve2gr.h	$a1, $vr1, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr1, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr1, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr1, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr1, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 4
	vpickve2gr.h	$a1, $vr1, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 5
	vpickve2gr.h	$a1, $vr1, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 6
	vpickve2gr.h	$a1, $vr1, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr2, $a1, 7
	xvsub.w	$xr0, $xr0, $xr2
	xvst	$xr0, $a0, 224
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	xor	$a1, $s8, $a1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	masknez	$s3, $a2, $a1
	pcaddu18i	$ra, %call36(distortion8x8)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	add.w	$a0, $a0, $s3
	bge	$a0, $a1, .LBB1_14
# %bb.24:                               # %if.then174
                                        #   in Loop: Header=BB1_15 Depth=1
	st.w	$a0, $a2, 0
	move	$s2, $s8
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_25:                               # %lor.lhs.false121
                                        #   in Loop: Header=BB1_15 Depth=1
	addi.d	$a0, $s8, -1
	sltui	$a0, $a0, 1
	addi.d	$a1, $s8, -8
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	bnez	$a0, .LBB1_18
# %bb.26:                               # %lor.lhs.false121
                                        #   in Loop: Header=BB1_15 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB1_14
	b	.LBB1_18
.LBB1_27:                               # %for.end293
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, 136
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	addi.w	$s7, $s2, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	stx.b	$s2, $a0, $a1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	xor	$a0, $a1, $s7
	sltui	$a0, $a0, 1
	slt	$a1, $s7, $a1
	xori	$a1, $a1, 1
	sub.d	$a1, $s2, $a1
	masknez	$a1, $a1, $a0
	addi.d	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 536
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 348
	ld.d	$a2, $s5, 0
	ld.w	$a1, $a2, 164
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 0, 0
	alsl.w	$a4, $a1, $a3, 2
	addi.d	$a0, $a3, 2
	alsl.w	$a5, $a1, $a0, 2
	bge	$a4, $a5, .LBB1_30
# %bb.28:                               # %for.body330.lr.ph
	slli.w	$a4, $a1, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.w	$a1, $a1, 1
	add.d	$a3, $a4, $a3
	slli.d	$a4, $a3, 3
	bstrins.d	$s2, $s2, 63, 8
	.p2align	4, , 16
.LBB1_29:                               # %for.body330
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a2, 136
	ld.w	$a2, $a2, 160
	ldx.d	$a5, $a5, $a4
	slli.w	$a2, $a2, 2
	or	$a2, $a2, $a1
	stx.h	$s2, $a5, $a2
	ld.d	$a2, $s5, 0
	ld.w	$a5, $a2, 164
	addi.d	$a3, $a3, 1
	alsl.w	$a5, $a5, $a0, 2
	addi.d	$a4, $a4, 8
	blt	$a3, $a5, .LBB1_29
.LBB1_30:                               # %for.end342
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4168
	beqz	$a0, .LBB1_33
# %bb.31:                               # %for.cond395.preheader
	pcalau12i	$a0, %got_pc_hi20(cofAC8x8)
	ld.d	$s0, $a0, %got_pc_lo12(cofAC8x8)
	ldptr.d	$a0, $a2, 14160
	ld.d	$a1, $s0, 0
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	slli.d	$s2, $a2, 3
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a1, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14160
	ld.d	$a1, $s0, 0
	ldx.d	$a0, $a0, $s2
	ldx.d	$a1, $a1, $s2
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 260
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB1_34
# %bb.32:                               # %for.cond425.preheader
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a1, $t7, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t7, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t6, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $t5, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	slli.d	$a1, $t4, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t4, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a1, $t3, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t3, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a1, $t2, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t2, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	ld.d	$a0, $s5, 0
	ldptr.d	$a0, $a0, 14184
	ld.d	$a0, $a0, 8
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$a1, $t1, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t1, 6
	xvldx	$xr0, $a2, $a1
	xvstx	$xr0, $a0, $s1
	b	.LBB1_35
.LBB1_33:                               # %for.body349
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a3, $a0, 3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a1, $a0, 5
	slli.d	$a0, $s7, 7
	add.d	$a4, $a2, $a0
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	vldx	$vr0, $a4, $a5
	add.d	$a2, $a2, $a1
	alsl.d	$a2, $fp, $a2, 1
	ori	$a4, $s6, 336
	vstx	$vr0, $a2, $a4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a3
	slli.d	$a2, $s4, 1
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 848
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7376
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vld	$vr2, $sp, 288                  # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7384
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	lu12i.w	$t1, 1
	ori	$a3, $t1, 3296
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 368
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 8
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 912
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7392
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7400
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3312
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 400
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 16
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 976
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7408
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7416
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3328
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 432
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 24
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1040
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7424
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7432
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3344
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 464
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 32
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1104
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7440
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7448
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3360
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 496
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 40
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1168
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7456
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7464
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3376
	vldx	$vr0, $a4, $a3
	add.d	$a3, $a5, $a1
	alsl.d	$a3, $fp, $a3, 1
	ori	$a4, $s6, 528
	vstx	$vr0, $a3, $a4
	ld.d	$a3, $s0, 48
	ldx.d	$a4, $a3, $a2
	ld.d	$a5, $s5, 0
	ori	$a6, $s6, 1232
	vinsgr2vr.d	$vr0, $a4, 0
	add.d	$a4, $a5, $a0
	ldptr.d	$a7, $a4, 7472
	add.d	$t0, $a5, $a6
	alsl.d	$a3, $s4, $a3, 1
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a3, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a7, $a4, 7480
	vstx	$vr0, $a5, $a6
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a7, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $t0, 16
	ori	$a3, $t1, 3392
	vldx	$vr0, $a4, $a3
	add.d	$a1, $a5, $a1
	alsl.d	$a1, $fp, $a1, 1
	ori	$a3, $s6, 560
	vstx	$vr0, $a1, $a3
	ld.d	$a1, $s5, 0
	ld.d	$a3, $s0, 56
	ori	$a4, $s6, 1296
	add.d	$a5, $a1, $a4
	ldx.d	$a2, $a3, $a2
	add.d	$a0, $a1, $a0
	ldptr.d	$a6, $a0, 7488
	alsl.d	$a3, $s4, $a3, 1
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a6, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a2, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ldptr.d	$a0, $a0, 7496
	vstx	$vr0, $a1, $a4
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a5, 16
	ori	$a0, $zero, 2588
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(dct_luma8x8)
	jirl	$ra, $ra, 0
	b	.LBB1_36
.LBB1_34:                               # %for.cond395.preheader.if.end445_crit_edge
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
.LBB1_35:                               # %if.end445
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	ldptr.d	$a1, $a1, 6440
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	slli.d	$a2, $t0, 3
	ldx.d	$a2, $a1, $a2
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	vld	$vr0, $a1, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 1
	vstx	$vr0, $a2, $a1
	ld.d	$a2, $s5, 0
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	slli.d	$a4, $a3, 5
	slli.d	$a3, $s7, 7
	add.d	$a5, $a2, $a3
	ld.d	$a6, $sp, 328                   # 8-byte Folded Reload
	vldx	$vr0, $a5, $a6
	add.d	$a2, $a2, $a4
	alsl.d	$a4, $fp, $a2, 1
	ori	$a2, $s6, 336
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 8
	ori	$a5, $zero, 2472
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	lu12i.w	$a7, 1
	ori	$a6, $a7, 3296
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t7, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 16
	ori	$a5, $zero, 2488
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	ori	$a6, $a7, 3312
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t6, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 24
	ori	$a5, $zero, 2504
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	ori	$a6, $a7, 3328
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t5, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 32
	ori	$a5, $zero, 2520
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	ori	$a6, $a7, 3344
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t4, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 40
	ori	$a5, $zero, 2536
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	ori	$a6, $a7, 3360
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t3, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a4, $a0, 0
	ldptr.d	$a4, $a4, 6440
	alsl.d	$a4, $t0, $a4, 3
	ld.d	$a4, $a4, 48
	ori	$a5, $zero, 2552
	add.d	$a5, $sp, $a5
	vld	$vr0, $a5, 0
	vstx	$vr0, $a4, $a1
	ld.d	$a4, $s5, 0
	add.d	$a5, $a4, $a3
	ori	$a6, $a7, 3376
	vldx	$vr0, $a5, $a6
	slli.d	$a5, $t2, 5
	add.d	$a4, $a4, $a5
	alsl.d	$a4, $fp, $a4, 1
	vstx	$vr0, $a4, $a2
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 6440
	alsl.d	$a0, $t0, $a0, 3
	ld.d	$a0, $a0, 56
	ori	$a4, $zero, 2568
	add.d	$a4, $sp, $a4
	vld	$vr0, $a4, 0
	vstx	$vr0, $a0, $a1
	ld.d	$a0, $s5, 0
	add.d	$a1, $a0, $a3
	ori	$a3, $a7, 3392
	vldx	$vr0, $a1, $a3
	slli.d	$a1, $t1, 5
	add.d	$a0, $a0, $a1
	alsl.d	$a0, $fp, $a0, 1
	vstx	$vr0, $a0, $a2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
.LBB1_36:                               # %if.end474
	addi.d	$sp, $sp, 672
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	Mode_Decision_for_new_8x8IntraBlocks, .Lfunc_end1-Mode_Decision_for_new_8x8IntraBlocks
                                        # -- End function
	.globl	intrapred_luma8x8               # -- Begin function intrapred_luma8x8
	.p2align	5
	.type	intrapred_luma8x8,@function
intrapred_luma8x8:                      # @intrapred_luma8x8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -464
	st.d	$ra, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 448                   # 8-byte Folded Spill
	st.d	$s0, $sp, 440                   # 8-byte Folded Spill
	st.d	$s1, $sp, 432                   # 8-byte Folded Spill
	st.d	$s2, $sp, 424                   # 8-byte Folded Spill
	st.d	$s3, $sp, 416                   # 8-byte Folded Spill
	st.d	$s4, $sp, 408                   # 8-byte Folded Spill
	st.d	$s5, $sp, 400                   # 8-byte Folded Spill
	st.d	$s6, $sp, 392                   # 8-byte Folded Spill
	st.d	$s7, $sp, 384                   # 8-byte Folded Spill
	st.d	$s8, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(enc_picture)
	ld.d	$a5, $a5, %got_pc_lo12(enc_picture)
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$fp, $a6, %got_pc_lo12(img)
	ld.d	$a5, $a5, 0
	ld.d	$a6, $fp, 0
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$s3, $a3
	move	$s4, $a2
	ldptr.d	$s7, $a5, 6440
	ld.w	$s2, $a6, 12
	pcalau12i	$s8, %pc_hi20(getNeighbour)
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	andi	$s1, $a0, 15
	andi	$s0, $a1, 15
	addi.d	$s5, $s1, -1
	addi.d	$a4, $sp, 184
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 1
	addi.d	$a4, $sp, 208
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 2
	addi.d	$a4, $sp, 232
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 3
	addi.d	$a4, $sp, 256
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 4
	addi.d	$a4, $sp, 280
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 5
	addi.d	$a4, $sp, 304
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 6
	addi.d	$a4, $sp, 328
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a2, $s0, 7
	addi.d	$a4, $sp, 352
	move	$a0, $s2
	move	$a1, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$s6, $s0, -1
	addi.d	$a4, $sp, 160
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a1, $s1, 8
	addi.d	$a4, $sp, 136
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 112
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 136
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	sltu	$a0, $zero, $a0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $s1, -8
	sltu	$a2, $zero, $a2
	addi.d	$a3, $s0, -8
	ld.w	$a1, $a1, 272
	sltu	$a3, $zero, $a3
	or	$a2, $a2, $a3
	and	$a0, $a2, $a0
	st.w	$a0, $sp, 136
	beqz	$a1, .LBB2_13
# %bb.1:                                # %for.cond14.preheader
	ld.w	$a2, $sp, 184
	ld.d	$a1, $fp, 0
	move	$a7, $fp
	beqz	$a2, .LBB2_14
# %bb.2:                                # %cond.true
	ld.w	$a2, $sp, 188
	ldptr.d	$a3, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.wu	$a2, $a3, $a2
	andi	$a2, $a2, 1
	ld.w	$a3, $sp, 208
	beqz	$a3, .LBB2_15
.LBB2_3:                                # %cond.true.1
	ld.w	$a3, $sp, 212
	ldptr.d	$a4, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a4, $a3
	ld.w	$a3, $sp, 232
	beqz	$a3, .LBB2_16
.LBB2_4:                                # %cond.true.2
	ld.w	$a3, $sp, 236
	ldptr.d	$a5, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $a5, $a3
	ld.w	$a3, $sp, 256
	beqz	$a3, .LBB2_17
.LBB2_5:                                # %cond.true.3
	ld.w	$a3, $sp, 260
	ldptr.d	$a6, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a6, $a3
	ld.w	$a6, $sp, 280
	and	$a2, $a4, $a2
	beqz	$a6, .LBB2_18
.LBB2_6:                                # %cond.true.4
	ld.w	$a4, $sp, 284
	ldptr.d	$a6, $a1, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a6, $a4
	ld.w	$a6, $sp, 304
	and	$a5, $a5, $a2
	beqz	$a6, .LBB2_19
.LBB2_7:                                # %cond.true.5
	ld.w	$a2, $sp, 308
	ldptr.d	$a6, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a6, $a2
	ld.w	$a6, $sp, 328
	and	$a5, $a3, $a5
	beqz	$a6, .LBB2_20
.LBB2_8:                                # %cond.true.6
	ld.w	$a3, $sp, 332
	ldptr.d	$a6, $a1, 14240
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a6, $a3
	ld.w	$a6, $sp, 352
	and	$a5, $a4, $a5
	beqz	$a6, .LBB2_21
.LBB2_9:                                # %cond.true.7
	ld.w	$a4, $sp, 356
	ldptr.d	$a6, $a1, 14240
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a6, $a4
	ld.w	$a6, $sp, 160
	and	$a2, $a2, $a5
	beqz	$a6, .LBB2_22
.LBB2_10:                               # %cond.true31
	ld.w	$a5, $sp, 164
	ldptr.d	$a6, $a1, 14240
	slli.d	$a5, $a5, 2
	ldx.w	$s2, $a6, $a5
	and	$a2, $a3, $a2
	beqz	$a0, .LBB2_23
.LBB2_11:                               # %cond.true41
	ld.w	$a0, $sp, 140
	ldptr.d	$a3, $a1, 14240
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	ld.w	$a5, $sp, 112
	and	$a3, $a4, $a2
	beqz	$a5, .LBB2_24
.LBB2_12:                               # %cond.true51
	ld.w	$a2, $sp, 116
	ldptr.d	$a1, $a1, 14240
	slli.d	$a2, $a2, 2
	ldx.w	$a5, $a1, $a2
	b	.LBB2_25
.LBB2_13:                               # %if.else
	ld.w	$a3, $sp, 184
	ld.w	$s2, $sp, 160
	ld.w	$a5, $sp, 112
	move	$a7, $fp
	b	.LBB2_25
.LBB2_14:
	move	$a2, $zero
	ld.w	$a3, $sp, 208
	bnez	$a3, .LBB2_3
.LBB2_15:
	move	$a4, $zero
	ld.w	$a3, $sp, 232
	bnez	$a3, .LBB2_4
.LBB2_16:
	move	$a5, $zero
	ld.w	$a3, $sp, 256
	bnez	$a3, .LBB2_5
.LBB2_17:
	move	$a3, $zero
	ld.w	$a6, $sp, 280
	and	$a2, $a4, $a2
	bnez	$a6, .LBB2_6
.LBB2_18:
	move	$a4, $zero
	ld.w	$a6, $sp, 304
	and	$a5, $a5, $a2
	bnez	$a6, .LBB2_7
.LBB2_19:
	move	$a2, $zero
	ld.w	$a6, $sp, 328
	and	$a5, $a3, $a5
	bnez	$a6, .LBB2_8
.LBB2_20:
	move	$a3, $zero
	ld.w	$a6, $sp, 352
	and	$a5, $a4, $a5
	bnez	$a6, .LBB2_9
.LBB2_21:
	move	$a4, $zero
	ld.w	$a6, $sp, 160
	and	$a2, $a2, $a5
	bnez	$a6, .LBB2_10
.LBB2_22:
	move	$s2, $zero
	and	$a2, $a3, $a2
	bnez	$a0, .LBB2_11
.LBB2_23:
	move	$a0, $zero
	ld.w	$a5, $sp, 112
	and	$a3, $a4, $a2
	bnez	$a5, .LBB2_12
.LBB2_24:
	move	$a5, $zero
.LBB2_25:                               # %if.end
	st.w	$a3, $s4, 0
	st.w	$s2, $s3, 0
	sltu	$a1, $zero, $s2
	sltu	$a2, $zero, $a3
	and	$a2, $a1, $a2
	sltu	$a1, $zero, $a5
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	and	$a1, $a2, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	pcalau12i	$a1, %pc_hi20(intrapred_luma8x8.PredPel)
	addi.d	$fp, $a1, %pc_lo12(intrapred_luma8x8.PredPel)
	beqz	$s2, .LBB2_30
# %bb.26:                               # %if.then73
	ld.w	$a1, $sp, 180
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 176
	ldx.d	$a1, $s7, $a1
	slli.d	$a4, $a2, 1
	ldx.h	$a4, $a1, $a4
	alsl.d	$a1, $a2, $a1, 1
	st.h	$a4, $fp, 2
	ld.h	$a2, $a1, 2
	st.h	$a2, $fp, 4
	ld.h	$a2, $a1, 4
	st.h	$a2, $fp, 6
	ld.h	$a2, $a1, 6
	st.h	$a2, $fp, 8
	ld.h	$a2, $a1, 8
	st.h	$a2, $fp, 10
	ld.h	$a2, $a1, 10
	st.h	$a2, $fp, 12
	ld.h	$a2, $a1, 12
	st.h	$a2, $fp, 14
	ld.hu	$a1, $a1, 14
	st.h	$a1, $fp, 16
	beqz	$a0, .LBB2_31
.LBB2_27:                               # %if.then87
	ld.w	$a0, $sp, 156
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 152
	ldx.d	$a0, $s7, $a0
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.h	$a2, $fp, 18
	ld.h	$a1, $a0, 2
	st.h	$a1, $fp, 20
	ld.h	$a1, $a0, 4
	st.h	$a1, $fp, 22
	ld.h	$a1, $a0, 6
	st.h	$a1, $fp, 24
	ld.h	$a1, $a0, 8
	st.h	$a1, $fp, 26
	ld.h	$a1, $a0, 10
	st.h	$a1, $fp, 28
	ld.h	$a1, $a0, 12
	st.h	$a1, $fp, 30
	ld.h	$a0, $a0, 14
	st.h	$a0, $fp, 32
	beqz	$a3, .LBB2_32
.LBB2_28:                               # %if.then104
	ld.w	$a0, $sp, 204
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 200
	ldx.d	$a0, $s7, $a0
	ld.w	$a2, $sp, 228
	slli.d	$a1, $a1, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 224
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 252
	st.h	$a0, $fp, 34
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 248
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 276
	st.h	$a0, $fp, 36
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 272
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 300
	st.h	$a0, $fp, 38
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 296
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 324
	st.h	$a0, $fp, 40
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 320
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 348
	st.h	$a0, $fp, 42
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 344
	ldx.d	$a1, $s7, $a1
	ld.w	$a4, $sp, 372
	st.h	$a0, $fp, 44
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a4, 3
	ld.w	$a2, $sp, 368
	ldx.d	$a1, $s7, $a1
	st.h	$a0, $fp, 46
	slli.d	$a0, $a2, 1
	ldx.hu	$a0, $a1, $a0
	st.h	$a0, $fp, 48
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	beqz	$a5, .LBB2_33
.LBB2_29:                               # %if.then174
	ld.w	$a0, $sp, 132
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 128
	ldx.d	$a0, $s7, $a0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	ld.d	$s4, $a7, 0
	b	.LBB2_34
.LBB2_30:                               # %if.else84
	ld.d	$a1, $a7, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3224
	ldx.h	$a1, $a1, $a2
	st.h	$a1, $fp, 14
	st.h	$a1, $fp, 12
	st.h	$a1, $fp, 10
	st.h	$a1, $fp, 8
	st.h	$a1, $fp, 6
	st.h	$a1, $fp, 4
	st.h	$a1, $fp, 2
	st.h	$a1, $fp, 16
	bnez	$a0, .LBB2_27
.LBB2_31:                               # %if.else101
	st.h	$a1, $fp, 32
	st.h	$a1, $fp, 30
	st.h	$a1, $fp, 28
	st.h	$a1, $fp, 26
	st.h	$a1, $fp, 24
	st.h	$a1, $fp, 22
	st.h	$a1, $fp, 20
	st.h	$a1, $fp, 18
	bnez	$a3, .LBB2_28
.LBB2_32:                               # %if.else169
	ld.d	$a0, $a7, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3224
	ldx.h	$a0, $a0, $a1
	st.h	$a0, $fp, 46
	st.h	$a0, $fp, 44
	st.h	$a0, $fp, 42
	st.h	$a0, $fp, 40
	st.h	$a0, $fp, 38
	st.h	$a0, $fp, 36
	st.h	$a0, $fp, 34
	st.h	$a0, $fp, 48
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	bnez	$a5, .LBB2_29
.LBB2_33:                               # %if.else181
	ld.d	$s4, $a7, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3224
	ldx.h	$a0, $s4, $a0
.LBB2_34:                               # %if.end184
	lu12i.w	$s5, 1
	ori	$a1, $s5, 3280
	add.d	$s6, $s4, $a1
	st.h	$a0, $fp, 0
	lu12i.w	$a0, 15
	ori	$s7, $a0, 4095
	stx.h	$s7, $s4, $a1
	ori	$s1, $s5, 3408
	stx.h	$s7, $s4, $s1
	ori	$s0, $s5, 3536
	stx.h	$s7, $s4, $s0
	ori	$s8, $s5, 3664
	stx.h	$s7, $s4, $s8
	ori	$a0, $s5, 3792
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	stx.h	$s7, $s4, $a0
	ori	$a0, $s5, 3920
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	stx.h	$s7, $s4, $a0
	ori	$a0, $s5, 4048
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	stx.h	$s7, $s4, $a0
	lu12i.w	$s3, 2
	ori	$a0, $s3, 80
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	stx.h	$s7, $s4, $a0
	ori	$a0, $s3, 208
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	stx.h	$s7, $s4, $a0
	move	$a0, $fp
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $a5
	move	$a2, $s2
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(LowPassForIntra8x8Pred)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_36
# %bb.35:                               # %if.then199
	ld.hu	$a0, $fp, 2
	ld.hu	$a1, $fp, 4
	ld.hu	$a2, $fp, 6
	ld.hu	$a3, $fp, 8
	ld.hu	$a4, $fp, 10
	ld.hu	$a5, $fp, 12
	ld.hu	$a6, $fp, 14
	ld.hu	$a7, $fp, 16
	ld.hu	$t0, $fp, 34
	ld.hu	$t1, $fp, 36
	ld.hu	$t2, $fp, 38
	ld.hu	$t3, $fp, 40
	ld.hu	$t4, $fp, 42
	ld.hu	$t5, $fp, 44
	ld.hu	$t6, $fp, 46
	ld.hu	$t7, $fp, 48
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t2
	add.w	$a0, $a0, $t3
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $t7
	addi.d	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 31, 4
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB2_44
.LBB2_36:                               # %if.else231
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	bnez	$s2, .LBB2_39
# %bb.37:                               # %if.else231
	beqz	$t0, .LBB2_39
# %bb.38:                               # %if.then235
	ld.hu	$a0, $fp, 34
	ld.hu	$a1, $fp, 36
	ld.hu	$a2, $fp, 38
	ld.hu	$a3, $fp, 40
	ld.hu	$a4, $fp, 42
	ld.hu	$a5, $fp, 44
	ld.hu	$a6, $fp, 46
	ld.hu	$a7, $fp, 48
	b	.LBB2_42
.LBB2_39:                               # %if.else252
	beqz	$s2, .LBB2_43
# %bb.40:                               # %if.else252
	bnez	$t0, .LBB2_43
# %bb.41:                               # %if.then256
	ld.hu	$a0, $fp, 2
	ld.hu	$a1, $fp, 4
	ld.hu	$a2, $fp, 6
	ld.hu	$a3, $fp, 8
	ld.hu	$a4, $fp, 10
	ld.hu	$a5, $fp, 12
	ld.hu	$a6, $fp, 14
	ld.hu	$a7, $fp, 16
.LBB2_42:                               # %if.end277
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 4
	bstrpick.d	$a0, $a0, 31, 3
	b	.LBB2_44
.LBB2_43:                               # %if.else273
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3224
	ldx.w	$a0, $s4, $a0
.LBB2_44:                               # %if.end277
	stx.h	$a0, $s4, $s0
	ori	$a1, $s5, 3552
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3568
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3584
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3600
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3616
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3632
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3648
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 258
	st.h	$a0, $s6, 274
	st.h	$a0, $s6, 290
	st.h	$a0, $s6, 306
	st.h	$a0, $s6, 322
	st.h	$a0, $s6, 338
	st.h	$a0, $s6, 354
	st.h	$a0, $s6, 370
	ori	$a1, $s5, 3540
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3556
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3572
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3588
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3604
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3620
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3636
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3652
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 262
	st.h	$a0, $s6, 278
	st.h	$a0, $s6, 294
	st.h	$a0, $s6, 310
	st.h	$a0, $s6, 326
	st.h	$a0, $s6, 342
	st.h	$a0, $s6, 358
	st.h	$a0, $s6, 374
	ori	$a1, $s5, 3544
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3560
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3576
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3592
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3608
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3624
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3640
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3656
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 266
	st.h	$a0, $s6, 282
	st.h	$a0, $s6, 298
	st.h	$a0, $s6, 314
	st.h	$a0, $s6, 330
	st.h	$a0, $s6, 346
	st.h	$a0, $s6, 362
	st.h	$a0, $s6, 378
	ori	$a1, $s5, 3548
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3564
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3580
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3596
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3612
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3628
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3644
	st.h	$a0, $s6, 270
	st.h	$a0, $s6, 286
	st.h	$a0, $s6, 302
	st.h	$a0, $s6, 318
	st.h	$a0, $s6, 334
	st.h	$a0, $s6, 350
	st.h	$a0, $s6, 366
	st.h	$a0, $s6, 382
	vld	$vr0, $fp, 2
	stx.h	$a0, $s4, $a1
	ori	$a1, $s5, 3660
	stx.h	$a0, $s4, $a1
	vst	$vr0, $s6, 112
	vst	$vr0, $s6, 96
	vst	$vr0, $s6, 80
	vst	$vr0, $s6, 64
	vst	$vr0, $s6, 48
	vst	$vr0, $s6, 32
	vst	$vr0, $s6, 16
	vst	$vr0, $s6, 0
	bnez	$s2, .LBB2_46
# %bb.45:                               # %if.then336
	st.h	$s7, $s6, 0
.LBB2_46:                               # %if.end339
	ld.h	$a0, $fp, 34
	st.h	$a0, $s6, 142
	st.h	$a0, $s6, 138
	st.h	$a0, $s6, 134
	st.h	$a0, $s6, 130
	ld.h	$a1, $fp, 36
	st.h	$a1, $s6, 158
	ori	$a2, $s5, 3436
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 154
	ori	$a2, $s5, 3432
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 150
	ori	$a2, $s5, 3428
	st.h	$a1, $s6, 146
	ld.h	$a3, $fp, 38
	stx.h	$a1, $s4, $a2
	ori	$a2, $s5, 3424
	stx.h	$a1, $s4, $a2
	st.h	$a3, $s6, 174
	ori	$a1, $s5, 3452
	stx.h	$a3, $s4, $a1
	st.h	$a3, $s6, 170
	ori	$a1, $s5, 3448
	stx.h	$a3, $s4, $a1
	st.h	$a3, $s6, 166
	ori	$a1, $s5, 3444
	st.h	$a3, $s6, 162
	ld.h	$a2, $fp, 40
	stx.h	$a3, $s4, $a1
	ori	$a1, $s5, 3440
	stx.h	$a3, $s4, $a1
	st.h	$a2, $s6, 190
	ori	$a1, $s5, 3468
	stx.h	$a2, $s4, $a1
	st.h	$a2, $s6, 186
	ori	$a1, $s5, 3464
	stx.h	$a2, $s4, $a1
	st.h	$a2, $s6, 182
	ori	$a1, $s5, 3460
	st.h	$a2, $s6, 178
	ld.h	$a3, $fp, 42
	stx.h	$a2, $s4, $a1
	ori	$a1, $s5, 3456
	stx.h	$a2, $s4, $a1
	st.h	$a3, $s6, 206
	ori	$a1, $s5, 3484
	stx.h	$a3, $s4, $a1
	st.h	$a3, $s6, 202
	ori	$a1, $s5, 3480
	stx.h	$a3, $s4, $a1
	st.h	$a3, $s6, 198
	ori	$a1, $s5, 3476
	stx.h	$a3, $s4, $a1
	st.h	$a3, $s6, 194
	ld.h	$a1, $fp, 44
	ori	$a2, $s5, 3472
	stx.h	$a3, $s4, $a2
	ori	$a2, $s5, 3500
	stx.h	$a1, $s4, $a2
	ori	$a2, $s5, 3496
	stx.h	$a1, $s4, $a2
	ori	$a2, $s5, 3492
	stx.h	$a1, $s4, $a2
	ori	$a2, $s5, 3488
	stx.h	$a1, $s4, $a2
	ori	$a2, $s5, 3420
	st.h	$a1, $s6, 222
	st.h	$a1, $s6, 218
	st.h	$a1, $s6, 214
	st.h	$a1, $s6, 210
	ld.h	$a1, $fp, 46
	stx.h	$a0, $s4, $a2
	ori	$a2, $s5, 3416
	stx.h	$a0, $s4, $a2
	st.h	$a1, $s6, 238
	ori	$a2, $s5, 3516
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 234
	ori	$a2, $s5, 3512
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 230
	ori	$a2, $s5, 3508
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 226
	ori	$a2, $s5, 3504
	stx.h	$a1, $s4, $a2
	ld.h	$a1, $fp, 48
	ori	$a2, $s5, 3412
	stx.h	$a0, $s4, $a2
	stx.h	$a0, $s4, $s1
	st.h	$a1, $s6, 254
	ori	$a0, $s5, 3532
	stx.h	$a1, $s4, $a0
	st.h	$a1, $s6, 250
	ori	$a0, $s5, 3528
	stx.h	$a1, $s4, $a0
	st.h	$a1, $s6, 246
	ori	$a0, $s5, 3524
	stx.h	$a1, $s4, $a0
	st.h	$a1, $s6, 242
	ori	$a0, $s5, 3520
	stx.h	$a1, $s4, $a0
	bnez	$t0, .LBB2_48
# %bb.47:                               # %if.then377
	stx.h	$s7, $s4, $s1
.LBB2_48:                               # %if.end380
	beqz	$s2, .LBB2_50
# %bb.49:                               # %if.then382
	ld.hu	$s2, $fp, 4
	ld.hu	$t6, $fp, 8
	ld.hu	$s7, $fp, 6
	ld.hu	$ra, $fp, 2
	add.d	$a0, $t6, $s2
	alsl.d	$a0, $s7, $a0, 1
	addi.d	$a0, $a0, 2
	srli.d	$a6, $a0, 2
	st.h	$a6, $s6, 386
	ld.hu	$t7, $fp, 10
	addi.d	$a1, $s7, 2
	add.d	$a3, $a1, $ra
	alsl.d	$a1, $t6, $a1, 1
	add.d	$a1, $a1, $t7
	srli.d	$a2, $a1, 2
	st.h	$a2, $s6, 402
	ld.hu	$t8, $fp, 12
	alsl.d	$a1, $s2, $a3, 1
	srli.d	$a0, $a1, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	stx.h	$a0, $s4, $s8
	addi.d	$a3, $t8, 2
	alsl.d	$a0, $t7, $a3, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $a0, $t6
	srli.d	$a1, $a1, 2
	ori	$a4, $s5, 3712
	st.h	$a1, $s6, 418
	st.h	$a1, $s6, 390
	ld.hu	$s1, $fp, 14
	stx.h	$a1, $s4, $a4
	ori	$a4, $s5, 3684
	stx.h	$a1, $s4, $a4
	addi.d	$a7, $s1, 2
	add.d	$a1, $a7, $t7
	alsl.d	$a1, $t8, $a1, 1
	srli.d	$a4, $a1, 2
	ori	$a1, $s5, 3728
	stx.h	$a4, $s4, $a1
	st.h	$a4, $s6, 434
	ori	$a1, $s5, 3700
	stx.h	$a4, $s4, $a1
	st.h	$a4, $s6, 406
	ld.hu	$a5, $fp, 16
	ori	$t0, $s5, 3672
	stx.h	$a4, $s4, $t0
	alsl.d	$a3, $s1, $a3, 1
	add.d	$a3, $a3, $a5
	srli.d	$a4, $a3, 2
	ori	$a3, $s5, 3744
	stx.h	$a4, $s4, $a3
	st.h	$a4, $s6, 450
	ori	$a3, $s5, 3716
	stx.h	$a4, $s4, $a3
	st.h	$a4, $s6, 422
	st.h	$a4, $s6, 394
	ld.hu	$a3, $fp, 18
	ori	$t0, $s5, 3688
	stx.h	$a4, $s4, $t0
	alsl.d	$a4, $a5, $a7, 1
	add.d	$a4, $a4, $a3
	srli.d	$t0, $a4, 2
	ori	$a4, $s5, 3760
	stx.h	$t0, $s4, $a4
	st.h	$t0, $s6, 466
	ori	$a4, $s5, 3732
	stx.h	$t0, $s4, $a4
	st.h	$t0, $s6, 438
	ori	$a4, $s5, 3704
	stx.h	$t0, $s4, $a4
	st.h	$t0, $s6, 410
	ori	$t1, $s5, 3676
	ld.hu	$a4, $fp, 20
	stx.h	$t0, $s4, $t1
	addi.d	$a0, $a5, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$t0, $a3, $a0, 1
	add.d	$t0, $t0, $a4
	srli.d	$t0, $t0, 2
	ori	$t2, $s5, 3776
	stx.h	$t0, $s4, $t2
	st.h	$t0, $s6, 482
	ori	$t2, $s5, 3748
	stx.h	$t0, $s4, $t2
	st.h	$t0, $s6, 454
	ori	$t2, $s5, 3720
	stx.h	$t0, $s4, $t2
	st.h	$t0, $s6, 426
	ori	$t2, $s5, 3692
	st.h	$t0, $s6, 398
	ld.hu	$s8, $fp, 22
	stx.h	$t0, $s4, $t2
	addi.d	$a0, $a3, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$t0, $a4, $a0, 1
	add.d	$t0, $t0, $s8
	srli.d	$t2, $t0, 2
	st.h	$t2, $s6, 498
	ori	$t0, $s5, 3764
	stx.h	$t2, $s4, $t0
	st.h	$t2, $s6, 470
	ori	$t0, $s5, 3736
	stx.h	$t2, $s4, $t0
	st.h	$t2, $s6, 442
	st.h	$t2, $s6, 414
	ld.hu	$s0, $fp, 24
	ori	$t5, $s5, 3708
	addi.d	$t4, $a4, 2
	alsl.d	$t0, $s8, $t4, 1
	add.d	$t0, $t0, $s0
	srli.d	$t0, $t0, 2
	st.h	$t0, $s6, 486
	st.h	$t0, $s6, 458
	st.h	$t0, $s6, 430
	ld.hu	$a0, $fp, 26
	stx.h	$t2, $s4, $t5
	addi.d	$t5, $s8, 2
	alsl.d	$t2, $s0, $t5, 1
	add.d	$t2, $t2, $a0
	srli.d	$t2, $t2, 2
	st.h	$t2, $s6, 502
	st.h	$t2, $s6, 474
	st.h	$t2, $s6, 446
	ld.hu	$a1, $fp, 28
	ori	$t1, $s5, 3680
	stx.h	$a6, $s4, $t1
	alsl.d	$t1, $a0, $s0, 1
	add.d	$t1, $t1, $a1
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	ori	$t3, $s5, 3784
	stx.h	$t1, $s4, $t3
	ori	$t3, $s5, 3756
	stx.h	$t1, $s4, $t3
	st.h	$t1, $s6, 490
	st.h	$t1, $s6, 462
	ld.hu	$t1, $fp, 30
	ori	$t3, $s5, 3696
	stx.h	$a2, $s4, $t3
	alsl.d	$a0, $a1, $a0, 1
	add.d	$a0, $a0, $t1
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	ori	$t3, $s5, 3772
	stx.h	$a0, $s4, $t3
	st.h	$a0, $s6, 506
	st.h	$a0, $s6, 478
	add.d	$a0, $s2, $ra
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	stx.h	$a0, $s4, $t3
	ld.hu	$a0, $fp, 32
	ori	$t3, $s5, 3668
	stx.h	$a2, $s4, $t3
	alsl.d	$a1, $t1, $a1, 1
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	ori	$t3, $s5, 3788
	stx.h	$a1, $s4, $t3
	st.h	$a1, $s6, 494
	alsl.d	$a0, $a0, $a0, 1
	add.d	$a0, $t1, $a0
	addi.d	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.h	$a0, $s6, 510
	add.d	$a0, $s7, $s2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 112
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 898
	add.d	$a0, $s7, $t6
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 144
	stx.h	$a0, $s4, $a1
	ori	$a1, $s3, 84
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 930
	add.d	$a0, $t6, $t7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 176
	stx.h	$a0, $s4, $a1
	ori	$a1, $s3, 116
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 962
	st.h	$a0, $s6, 902
	add.d	$a0, $t7, $t8
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 148
	stx.h	$a0, $s4, $a1
	ori	$a1, $s3, 88
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 994
	st.h	$a0, $s6, 934
	add.d	$a0, $t8, $s1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 180
	stx.h	$a0, $s4, $a1
	ori	$a1, $s3, 120
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 966
	st.h	$a0, $s6, 906
	add.d	$a0, $s1, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $s6, 998
	ori	$a1, $s3, 152
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 938
	ori	$a1, $s3, 92
	stx.h	$a0, $s4, $a1
	add.d	$a0, $a5, $a3
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 184
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 970
	ori	$a1, $s3, 124
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 910
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 156
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 1002
	st.h	$a0, $s6, 942
	ori	$a0, $s3, 96
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	stx.h	$a1, $s4, $a0
	add.d	$a0, $a4, $s8
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	ori	$a1, $s3, 188
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 974
	add.d	$a0, $s8, $s0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	st.h	$a0, $s6, 1006
	ori	$a0, $s3, 128
	stx.h	$a6, $s4, $a0
	st.h	$a6, $s6, 914
	ori	$a0, $s3, 160
	stx.h	$a2, $s4, $a0
	st.h	$a2, $s6, 946
	ori	$a0, $s3, 100
	ld.hu	$a1, $fp, 8
	stx.h	$a2, $s4, $a0
	ori	$a0, $s5, 3780
	stx.h	$t0, $s4, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	ori	$a1, $s3, 192
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 978
	ori	$a1, $s3, 132
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 918
	ld.hu	$a0, $fp, 10
	ld.hu	$a1, $fp, 12
	ori	$a2, $s5, 3752
	stx.h	$t0, $s4, $a2
	add.d	$a0, $a7, $a0
	alsl.d	$a0, $a1, $a0, 1
	srli.d	$a0, $a0, 2
	st.h	$a0, $s6, 1010
	ori	$a2, $s3, 164
	stx.h	$a0, $s4, $a2
	st.h	$a0, $s6, 950
	ori	$a2, $s3, 104
	stx.h	$a0, $s4, $a2
	ld.hu	$a0, $fp, 14
	ori	$a2, $s5, 3724
	stx.h	$t0, $s4, $a2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	srli.d	$a1, $a1, 2
	ori	$a2, $s3, 196
	stx.h	$a1, $s4, $a2
	ori	$a2, $s3, 136
	stx.h	$a1, $s4, $a2
	st.h	$a1, $s6, 982
	st.h	$a1, $s6, 922
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 2
	st.h	$a0, $s6, 1014
	ori	$a1, $s3, 168
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 954
	ori	$a1, $s3, 108
	stx.h	$a0, $s4, $a1
	ld.hu	$a0, $fp, 16
	ori	$a1, $s5, 3768
	stx.h	$t2, $s4, $a1
	alsl.d	$a1, $a3, $t4, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 2
	ori	$a1, $s3, 200
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 986
	ori	$a1, $s3, 140
	stx.h	$a0, $s4, $a1
	st.h	$a0, $s6, 926
	ld.hu	$a0, $fp, 18
	ori	$a1, $s5, 3740
	stx.h	$t2, $s4, $a1
	alsl.d	$a1, $a4, $t5, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 2
	ori	$a1, $s3, 172
	stx.h	$a0, $s4, $a1
	ori	$a1, $s3, 204
	stx.h	$t0, $s4, $a1
	st.h	$a0, $s6, 1018
	st.h	$a0, $s6, 958
	st.h	$t0, $s6, 990
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	st.h	$t2, $s6, 1022
.LBB2_50:                               # %if.end941
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	xori	$a1, $a1, 1
	or	$a0, $a1, $a0
	bnez	$a0, .LBB2_52
# %bb.51:                               # %if.end1824.thread
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s6, 0
	ori	$a5, $s5, 3794
	ld.hu	$a2, $fp, 44
	ld.hu	$a3, $fp, 48
	ld.hu	$a4, $fp, 46
	add.d	$a1, $a0, $a5
	addi.d	$a6, $a2, 2
	add.d	$a3, $a6, $a3
	alsl.d	$a3, $a4, $a3, 1
	ld.hu	$a7, $fp, 42
	srli.d	$a3, $a3, 2
	ori	$t0, $s5, 3904
	stx.h	$a3, $a0, $t0
	addi.d	$a3, $a7, 2
	add.d	$a4, $a3, $a4
	alsl.d	$a2, $a2, $a4, 1
	srli.d	$a2, $a2, 2
	st.h	$a2, $a1, 112
	ld.hu	$a4, $fp, 40
	ori	$t0, $s5, 3888
	stx.h	$a2, $a0, $t0
	alsl.d	$a2, $a7, $a6, 1
	add.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 2
	ori	$a6, $s5, 3908
	stx.h	$a2, $a0, $a6
	st.h	$a2, $a1, 96
	ld.hu	$a6, $fp, 38
	ori	$a7, $s5, 3872
	stx.h	$a2, $a0, $a7
	alsl.d	$a2, $a4, $a3, 1
	add.d	$a2, $a2, $a6
	srli.d	$a2, $a2, 2
	st.h	$a2, $a1, 116
	ori	$a3, $s5, 3892
	stx.h	$a2, $a0, $a3
	st.h	$a2, $a1, 80
	ld.hu	$a3, $fp, 36
	ori	$a7, $s5, 3856
	stx.h	$a2, $a0, $a7
	alsl.d	$a2, $a6, $a4, 1
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	ori	$a4, $s5, 3912
	stx.h	$a2, $a0, $a4
	st.h	$a2, $a1, 100
	ori	$a4, $s5, 3876
	stx.h	$a2, $a0, $a4
	st.h	$a2, $a1, 64
	ld.hu	$a4, $fp, 34
	ori	$a7, $s5, 3840
	stx.h	$a2, $a0, $a7
	alsl.d	$a2, $a3, $a6, 1
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a1, 120
	ori	$a6, $s5, 3896
	stx.h	$a2, $a0, $a6
	st.h	$a2, $a1, 84
	ori	$a6, $s5, 3860
	st.h	$a2, $a1, 48
	ld.hu	$t0, $fp, 0
	stx.h	$a2, $a0, $a6
	ori	$a6, $s5, 3824
	stx.h	$a2, $a0, $a6
	addi.d	$a2, $t0, 2
	add.d	$a3, $a2, $a3
	alsl.d	$a3, $a4, $a3, 1
	srli.d	$a3, $a3, 2
	ori	$a6, $s5, 3916
	stx.h	$a3, $a0, $a6
	st.h	$a3, $a1, 104
	ori	$a6, $s5, 3880
	stx.h	$a3, $a0, $a6
	st.h	$a3, $a1, 68
	ori	$a6, $s5, 3844
	stx.h	$a3, $a0, $a6
	st.h	$a3, $a1, 32
	ld.hu	$t2, $fp, 2
	ori	$a6, $s5, 3808
	stx.h	$a3, $a0, $a6
	alsl.d	$a3, $t0, $a4, 1
	add.d	$a3, $a3, $t2
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.h	$a3, $a1, 124
	ori	$a4, $s5, 3900
	stx.h	$a3, $a0, $a4
	st.h	$a3, $a1, 88
	ori	$a4, $s5, 3864
	stx.h	$a3, $a0, $a4
	st.h	$a3, $a1, 52
	ori	$a4, $s5, 3828
	st.h	$a3, $a1, 16
	ld.hu	$t4, $fp, 4
	stx.h	$a3, $a0, $a4
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	stx.h	$a3, $a0, $a4
	alsl.d	$a4, $t2, $a2, 1
	add.d	$a4, $a4, $t4
	srli.d	$a4, $a4, 2
	st.h	$a4, $a1, 108
	ori	$a6, $s5, 3884
	stx.h	$a4, $a0, $a6
	st.h	$a4, $a1, 72
	ori	$a6, $s5, 3848
	stx.h	$a4, $a0, $a6
	st.h	$a4, $a1, 36
	stx.h	$a4, $a0, $a5
	ld.hu	$t6, $fp, 6
	ori	$a5, $s5, 3812
	stx.h	$a4, $a0, $a5
	alsl.d	$a5, $t4, $t2, 1
	add.d	$a5, $a5, $t6
	addi.d	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	st.h	$a5, $a1, 92
	ori	$a6, $s5, 3868
	stx.h	$a5, $a0, $a6
	st.h	$a5, $a1, 56
	ori	$a6, $s5, 3832
	stx.h	$a5, $a0, $a6
	st.h	$a5, $a1, 20
	ld.hu	$t7, $fp, 8
	ori	$a6, $s5, 3796
	stx.h	$a5, $a0, $a6
	alsl.d	$a6, $t6, $t4, 1
	add.d	$a6, $a6, $t7
	addi.d	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	st.h	$a6, $a1, 76
	ori	$a7, $s5, 3852
	stx.h	$a6, $a0, $a7
	st.h	$a6, $a1, 40
	st.h	$a6, $a1, 4
	ld.hu	$t8, $fp, 10
	ori	$a7, $s5, 3816
	stx.h	$a6, $a0, $a7
	alsl.d	$a7, $t7, $t6, 1
	add.d	$a7, $a7, $t8
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.h	$a7, $a1, 60
	ori	$t1, $s5, 3836
	stx.h	$a7, $a0, $t1
	st.h	$a7, $a1, 24
	ld.hu	$s0, $fp, 12
	ori	$t1, $s5, 3800
	stx.h	$a7, $a0, $t1
	alsl.d	$t1, $t8, $t7, 1
	add.d	$t1, $t1, $s0
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.h	$t1, $a1, 44
	st.h	$t1, $a1, 8
	ld.hu	$s1, $fp, 14
	ori	$t3, $s5, 3820
	stx.h	$t1, $a0, $t3
	alsl.d	$t3, $s0, $t8, 1
	add.d	$t3, $t3, $s1
	addi.d	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.h	$t3, $a1, 28
	ld.hu	$s2, $fp, 16
	ori	$t5, $s5, 3804
	stx.h	$t3, $a0, $t5
	alsl.d	$t5, $s1, $s0, 1
	add.d	$t5, $t5, $s2
	addi.d	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	st.h	$t5, $a1, 12
	add.d	$t0, $t2, $t0
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 228
	ori	$s4, $s5, 3988
	stx.h	$t0, $a0, $s4
	st.h	$t0, $a1, 160
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	stx.h	$t0, $a0, $s4
	add.d	$t0, $t2, $t4
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	ori	$t2, $s5, 4024
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 196
	ori	$t2, $s5, 3956
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 128
	add.d	$t0, $t4, $t6
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 232
	ori	$t2, $s5, 3992
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 164
	ori	$t2, $s5, 3924
	stx.h	$t0, $a0, $t2
	add.d	$t0, $t6, $t7
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	ori	$t2, $s5, 4028
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 200
	ori	$t2, $s5, 3960
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 132
	add.d	$t0, $t7, $t8
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 236
	ori	$t2, $s5, 3996
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 168
	ori	$t2, $s5, 3928
	stx.h	$t0, $a0, $t2
	add.d	$t0, $t8, $s0
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 204
	ori	$t2, $s5, 3964
	stx.h	$t0, $a0, $t2
	st.h	$t0, $a1, 136
	add.d	$t0, $s0, $s1
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 172
	ori	$t2, $s5, 3932
	stx.h	$t0, $a0, $t2
	add.d	$t0, $s1, $s2
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 1
	st.h	$t0, $a1, 140
	st.h	$a3, $a1, 244
	ori	$t0, $s5, 4004
	stx.h	$a3, $a0, $t0
	st.h	$a3, $a1, 176
	ori	$t0, $s5, 3936
	stx.h	$a3, $a0, $t0
	ori	$a3, $s5, 4040
	stx.h	$a4, $a0, $a3
	st.h	$a4, $a1, 212
	ori	$a3, $s5, 3972
	stx.h	$a4, $a0, $a3
	st.h	$a4, $a1, 144
	st.h	$a5, $a1, 248
	ori	$a3, $s5, 4008
	stx.h	$a5, $a0, $a3
	st.h	$a5, $a1, 180
	ori	$a3, $s5, 3940
	stx.h	$a5, $a0, $a3
	ori	$a3, $s5, 4044
	stx.h	$a6, $a0, $a3
	st.h	$a6, $a1, 216
	ori	$a3, $s5, 3976
	stx.h	$a6, $a0, $a3
	st.h	$a6, $a1, 148
	st.h	$a7, $a1, 252
	ori	$a3, $s5, 4012
	stx.h	$a7, $a0, $a3
	st.h	$a7, $a1, 184
	ori	$a3, $s5, 3944
	stx.h	$a7, $a0, $a3
	st.h	$t1, $a1, 220
	ori	$a3, $s5, 3980
	stx.h	$t1, $a0, $a3
	st.h	$t1, $a1, 152
	st.h	$t3, $a1, 188
	st.h	$t5, $a1, 156
	ld.hu	$t6, $fp, 36
	ld.hu	$a3, $fp, 34
	ori	$a4, $s5, 3948
	stx.h	$t3, $a0, $a4
	add.d	$a2, $a2, $t6
	alsl.d	$a2, $a3, $a2, 1
	srli.d	$a2, $a2, 2
	ori	$a4, $s5, 4020
	stx.h	$a2, $a0, $a4
	st.h	$a2, $a1, 192
	ori	$a4, $s5, 3952
	ld.hu	$t8, $fp, 38
	stx.h	$a2, $a0, $a4
	addi.d	$a7, $a3, 2
	alsl.d	$a2, $t6, $a7, 1
	add.d	$a2, $a2, $t8
	srli.d	$a2, $a2, 2
	ori	$a4, $s5, 4036
	stx.h	$a2, $a0, $a4
	st.h	$a2, $a1, 208
	ori	$a4, $s5, 3968
	ld.hu	$s0, $fp, 40
	stx.h	$a2, $a0, $a4
	addi.d	$t0, $t6, 2
	alsl.d	$a4, $t8, $t0, 1
	add.d	$a4, $a4, $s0
	srli.d	$a4, $a4, 2
	st.h	$a4, $a1, 224
	ld.hu	$t7, $fp, 42
	ori	$a5, $s5, 3984
	stx.h	$a4, $a0, $a5
	alsl.d	$a5, $s0, $t8, 1
	add.d	$a5, $a5, $t7
	addi.d	$a5, $a5, 2
	srli.d	$a6, $a5, 2
	st.h	$a6, $a1, 240
	ld.hu	$a5, $fp, 44
	ori	$a1, $s5, 4000
	stx.h	$a6, $a0, $a1
	alsl.d	$a1, $t7, $s0, 1
	add.d	$a1, $a1, $a5
	addi.d	$a1, $a1, 2
	srli.d	$t1, $a1, 2
	ld.hu	$t2, $fp, 46
	ori	$a1, $s5, 4016
	stx.h	$t1, $a0, $a1
	alsl.d	$a1, $a5, $t7, 1
	add.d	$a1, $a1, $t2
	addi.d	$a1, $a1, 2
	srli.d	$t4, $a1, 2
	ori	$t5, $s5, 4032
	ld.d	$a1, $s6, 0
	ld.hu	$t3, $fp, 0
	stx.h	$t4, $a0, $t5
	ori	$t5, $s5, 4050
	add.d	$a0, $a1, $t5
	add.d	$s1, $a3, $t3
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	ori	$s2, $s3, 12
	stx.h	$s1, $a1, $s2
	ori	$s2, $s5, 4088
	stx.h	$s1, $a1, $s2
	ori	$s2, $s5, 4068
	stx.h	$s1, $a1, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	stx.h	$s1, $a1, $s2
	add.d	$s1, $t6, $a3
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	ori	$s2, $s3, 28
	stx.h	$s1, $a1, $s2
	ori	$s2, $s3, 8
	stx.h	$s1, $a1, $s2
	ori	$s2, $s5, 4084
	stx.h	$s1, $a1, $s2
	ori	$s2, $s5, 4064
	stx.h	$s1, $a1, $s2
	add.d	$t6, $t6, $t8
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	ori	$s1, $s3, 44
	stx.h	$t6, $a1, $s1
	ori	$s1, $s3, 24
	stx.h	$t6, $a1, $s1
	ori	$s1, $s3, 4
	stx.h	$t6, $a1, $s1
	ori	$s1, $s5, 4080
	stx.h	$t6, $a1, $s1
	add.d	$t6, $t8, $s0
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	ori	$t8, $s3, 60
	stx.h	$t6, $a1, $t8
	ori	$t8, $s3, 40
	stx.h	$t6, $a1, $t8
	ori	$t8, $s3, 20
	stx.h	$t6, $a1, $t8
	stx.h	$t6, $a1, $s3
	add.d	$t6, $s0, $t7
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	ori	$t8, $s3, 76
	stx.h	$t6, $a1, $t8
	ori	$t8, $s3, 56
	stx.h	$t6, $a1, $t8
	ori	$t8, $s3, 36
	stx.h	$t6, $a1, $t8
	ori	$t8, $s3, 16
	stx.h	$t6, $a1, $t8
	add.d	$t6, $t7, $a5
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	ori	$t7, $s3, 72
	stx.h	$t6, $a1, $t7
	ori	$t7, $s3, 52
	stx.h	$t6, $a1, $t7
	ori	$t7, $s3, 32
	stx.h	$t6, $a1, $t7
	add.d	$t6, $a5, $t2
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	ori	$t7, $s3, 68
	ld.hu	$t8, $fp, 48
	stx.h	$t6, $a1, $t7
	ori	$t7, $s3, 48
	stx.h	$t6, $a1, $t7
	add.d	$t6, $t2, $t8
	ld.hu	$t7, $fp, 2
	addi.d	$t6, $t6, 1
	srli.d	$t6, $t6, 1
	alsl.d	$a7, $t3, $a7, 1
	add.d	$a7, $a7, $t7
	srli.d	$a7, $a7, 2
	st.h	$a7, $a0, 60
	st.h	$a7, $a0, 40
	st.h	$a7, $a0, 20
	stx.h	$a7, $a1, $t5
	alsl.d	$a3, $a3, $t0, 1
	add.d	$a3, $a3, $t3
	srli.d	$a3, $a3, 2
	st.h	$a3, $a0, 76
	st.h	$a3, $a0, 56
	st.h	$a3, $a0, 36
	st.h	$a3, $a0, 16
	st.h	$a2, $a0, 92
	st.h	$a2, $a0, 72
	st.h	$a2, $a0, 52
	st.h	$a2, $a0, 32
	st.h	$a4, $a0, 108
	st.h	$a4, $a0, 88
	st.h	$a4, $a0, 68
	st.h	$a4, $a0, 48
	st.h	$a6, $a0, 124
	st.h	$a6, $a0, 104
	st.h	$a6, $a0, 84
	st.h	$a6, $a0, 64
	st.h	$t1, $a0, 120
	st.h	$t1, $a0, 100
	st.h	$t1, $a0, 80
	st.h	$t4, $a0, 116
	st.h	$t4, $a0, 96
	alsl.d	$a2, $t2, $a5, 1
	add.d	$a2, $a2, $t8
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.h	$a2, $a0, 112
	ld.hu	$a2, $fp, 4
	ori	$a3, $s3, 64
	stx.h	$t6, $a1, $a3
	alsl.d	$a3, $t7, $t3, 1
	add.d	$a3, $a3, $a2
	addi.d	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	ori	$a4, $s5, 4092
	stx.h	$a3, $a1, $a4
	ld.hu	$a4, $fp, 6
	ori	$a5, $s5, 4072
	stx.h	$a3, $a1, $a5
	alsl.d	$a5, $a2, $t7, 1
	add.d	$a5, $a5, $a4
	addi.d	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	st.h	$a5, $a0, 44
	st.h	$a5, $a0, 24
	st.h	$a5, $a0, 4
	ld.hu	$a5, $fp, 8
	ori	$a6, $s5, 4052
	stx.h	$a3, $a1, $a6
	alsl.d	$a2, $a4, $a2, 1
	add.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	ld.hu	$a3, $fp, 10
	ori	$a6, $s5, 4076
	stx.h	$a2, $a1, $a6
	alsl.d	$a4, $a5, $a4, 1
	add.d	$a4, $a4, $a3
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.h	$a4, $a0, 28
	st.h	$a4, $a0, 8
	ld.hu	$a4, $fp, 12
	ori	$a6, $s5, 4056
	stx.h	$a2, $a1, $a6
	alsl.d	$a2, $a3, $a5, 1
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	ld.hu	$a5, $fp, 14
	ori	$a6, $s5, 4060
	stx.h	$a2, $a1, $a6
	alsl.d	$a1, $a4, $a3, 1
	add.d	$a1, $a1, $a5
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.h	$a1, $a0, 12
	b	.LBB2_53
.LBB2_52:                               # %if.end1824
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	beqz	$t0, .LBB2_54
.LBB2_53:                               # %if.then1826
	ld.d	$a0, $s6, 0
	ld.hu	$a2, $fp, 34
	ld.hu	$a3, $fp, 36
	ori	$a1, $s3, 210
	add.d	$a4, $a0, $a1
	add.d	$a6, $a3, $a2
	ld.hu	$a5, $fp, 38
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	stx.h	$a6, $a0, $a7
	add.d	$a6, $a3, $a5
	addi.d	$a6, $a6, 1
	srli.d	$a7, $a6, 1
	ori	$t0, $s3, 212
	ld.hu	$a6, $fp, 40
	stx.h	$a7, $a0, $t0
	ori	$t0, $s3, 224
	stx.h	$a7, $a0, $t0
	add.d	$a7, $a5, $a6
	addi.d	$a7, $a7, 1
	srli.d	$t0, $a7, 1
	ori	$a7, $s3, 216
	stx.h	$t0, $a0, $a7
	ori	$t1, $s3, 228
	ld.hu	$a7, $fp, 42
	stx.h	$t0, $a0, $t1
	ori	$t1, $s3, 240
	stx.h	$t0, $a0, $t1
	add.d	$t0, $a6, $a7
	addi.d	$t0, $t0, 1
	srli.d	$t1, $t0, 1
	ori	$t0, $s3, 220
	stx.h	$t1, $a0, $t0
	ori	$t0, $s3, 232
	stx.h	$t1, $a0, $t0
	ori	$t2, $s3, 244
	ld.hu	$t0, $fp, 44
	stx.h	$t1, $a0, $t2
	ori	$t2, $s3, 256
	stx.h	$t1, $a0, $t2
	add.d	$t1, $a7, $t0
	addi.d	$t1, $t1, 1
	srli.d	$t2, $t1, 1
	ori	$t1, $s3, 236
	stx.h	$t2, $a0, $t1
	ori	$t1, $s3, 248
	stx.h	$t2, $a0, $t1
	ori	$t3, $s3, 260
	ld.hu	$t1, $fp, 46
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 272
	stx.h	$t2, $a0, $t3
	add.d	$t2, $t0, $t1
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	ori	$t3, $s3, 252
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 264
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 276
	ld.hu	$t4, $fp, 48
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 288
	stx.h	$t2, $a0, $t3
	add.d	$t2, $t1, $t4
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	ori	$t3, $s3, 268
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 280
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 292
	stx.h	$t2, $a0, $t3
	ori	$t3, $s3, 304
	stx.h	$t2, $a0, $t3
	st.h	$t4, $a4, 124
	ori	$t2, $s3, 332
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 120
	ori	$t2, $s3, 328
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 116
	ori	$t2, $s3, 324
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 112
	ori	$t2, $s3, 320
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 108
	ori	$t2, $s3, 316
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 104
	ori	$t2, $s3, 312
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 100
	ori	$t2, $s3, 308
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 92
	ori	$t2, $s3, 300
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 88
	ori	$t2, $s3, 296
	stx.h	$t4, $a0, $t2
	st.h	$t4, $a4, 76
	ori	$t2, $s3, 284
	stx.h	$t4, $a0, $t2
	alsl.d	$t2, $t4, $t4, 1
	addi.d	$t3, $t1, 2
	add.d	$t2, $t3, $t2
	srli.d	$t2, $t2, 2
	st.h	$t2, $a4, 60
	st.h	$t2, $a4, 72
	st.h	$t2, $a4, 84
	st.h	$t2, $a4, 96
	alsl.d	$t1, $t1, $t0, 1
	add.d	$t1, $t1, $t4
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.h	$t1, $a4, 44
	st.h	$t1, $a4, 56
	st.h	$t1, $a4, 68
	st.h	$t1, $a4, 80
	alsl.d	$t1, $t0, $a7, 1
	add.d	$t1, $t3, $t1
	srli.d	$t1, $t1, 2
	st.h	$t1, $a4, 28
	st.h	$t1, $a4, 40
	st.h	$t1, $a4, 52
	st.h	$t1, $a4, 64
	addi.d	$t1, $a6, 2
	alsl.d	$t2, $a7, $t1, 1
	add.d	$t0, $t2, $t0
	srli.d	$t0, $t0, 2
	st.h	$t0, $a4, 12
	st.h	$t0, $a4, 24
	st.h	$t0, $a4, 36
	st.h	$t0, $a4, 48
	addi.d	$t0, $a5, 2
	alsl.d	$a6, $a6, $t0, 1
	add.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 2
	st.h	$a6, $a4, 8
	st.h	$a6, $a4, 20
	st.h	$a6, $a4, 32
	add.d	$a6, $t1, $a3
	alsl.d	$a5, $a5, $a6, 1
	srli.d	$a5, $a5, 2
	st.h	$a5, $a4, 4
	st.h	$a5, $a4, 16
	add.d	$a2, $t0, $a2
	alsl.d	$a2, $a3, $a2, 1
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a0, $a1
.LBB2_54:                               # %if.end2061
	ld.d	$s8, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 464
	ret
.Lfunc_end2:
	.size	intrapred_luma8x8, .Lfunc_end2-intrapred_luma8x8
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks       # -- Begin function RDCost_for_8x8IntraBlocks
	.p2align	5
	.type	RDCost_for_8x8IntraBlocks,@function
RDCost_for_8x8IntraBlocks:              # @RDCost_for_8x8IntraBlocks
# %bb.0:                                # %entry
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
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$s6, $a4, %got_pc_lo12(img)
	ld.d	$a4, $s6, 0
	move	$s1, $a3
	fmov.d	$fs0, $fa0
	move	$s0, $a2
	move	$fp, $a1
	move	$s2, $a0
	slli.d	$a0, $a1, 3
	andi	$a0, $a0, 8
	ld.w	$a1, $a4, 176
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a3, $a2, %got_pc_lo12(input)
	slli.d	$a2, $fp, 2
	bstrins.d	$a2, $zero, 2, 0
	add.w	$s7, $a1, $a0
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 0
	ld.w	$a1, $a4, 180
	pcalau12i	$a3, %got_pc_hi20(enc_picture)
	ld.d	$a3, $a3, %got_pc_lo12(enc_picture)
	ldptr.w	$a0, $a0, 4016
	pcalau12i	$a5, %got_pc_hi20(assignSE2partition)
	ld.d	$a5, $a5, %got_pc_lo12(assignSE2partition)
	ld.w	$a6, $a4, 196
	ld.d	$a3, $a3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a5, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(imgY_org)
	ld.d	$s8, $a0, %pc_lo12(imgY_org)
	ldptr.d	$s4, $a3, 6440
	ldptr.d	$a0, $a4, 14216
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.w	$s5, $a1, $a2
	add.w	$s3, $a6, $a2
	st.w	$zero, $sp, 76
	addi.d	$a1, $sp, 76
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dct_luma8x8)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	move	$a2, $zero
	move	$s6, $zero
	st.w	$a0, $s2, 0
	ldptr.d	$a0, $a1, 14232
	addi.d	$a6, $s7, 1
	alsl.d	$a3, $s3, $s8, 3
	alsl.d	$a4, $s5, $s4, 3
	addi.d	$a7, $s7, 2
	addi.d	$t0, $s7, 3
	addi.d	$t1, $s7, 4
	addi.d	$t2, $s7, 5
	addi.d	$t3, $s7, 6
	addi.d	$t4, $s7, 7
	slli.d	$a5, $s7, 1
	slli.d	$a6, $a6, 1
	slli.d	$a7, $a7, 1
	slli.d	$t0, $t0, 1
	slli.d	$t1, $t1, 1
	slli.d	$t2, $t2, 1
	slli.d	$t3, $t3, 1
	slli.d	$t4, $t4, 1
	ori	$t5, $zero, 64
	.p2align	4, , 16
.LBB3_1:                                # %for.inc24
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$t6, $a3, $a2
	ldx.d	$t7, $a4, $a2
	ldx.hu	$t8, $t6, $a5
	ldx.hu	$s2, $t7, $a5
	sub.d	$t8, $t8, $s2
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a0, $t8
	ldx.hu	$s2, $t6, $a6
	ldx.hu	$s3, $t7, $a6
	add.d	$t8, $s6, $t8
	ldx.hu	$s4, $t6, $a7
	ldx.hu	$s5, $t7, $a7
	sub.d	$s2, $s2, $s3
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a0, $s2
	sub.d	$s3, $s4, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a0, $s3
	add.d	$t8, $t8, $s2
	ldx.hu	$s2, $t6, $t0
	ldx.hu	$s4, $t7, $t0
	add.d	$t8, $t8, $s3
	ldx.hu	$s3, $t6, $t1
	ldx.hu	$s5, $t7, $t1
	sub.d	$s2, $s2, $s4
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a0, $s2
	sub.d	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a0, $s3
	ldx.hu	$s4, $t6, $t2
	ldx.hu	$s5, $t7, $t2
	ldx.hu	$s6, $t6, $t3
	ldx.hu	$s7, $t7, $t3
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s3
	sub.d	$s2, $s4, $s5
	sub.d	$s3, $s6, $s7
	slli.d	$s2, $s2, 2
	ldx.hu	$t6, $t6, $t4
	ldx.hu	$t7, $t7, $t4
	ldx.w	$s2, $a0, $s2
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $a0, $s3
	sub.d	$t6, $t6, $t7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a0, $t6
	add.d	$t7, $t8, $s2
	add.d	$t7, $t7, $s3
	addi.d	$a2, $a2, 8
	add.d	$s6, $t7, $t6
	bne	$a2, $t5, .LBB3_1
# %bb.2:                                # %for.end26
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	slt	$a2, $s0, $s1
	xori	$a2, $a2, 1
	sub.d	$a2, $s0, $a2
	masknez	$a2, $a2, $a0
	addi.d	$a3, $zero, -1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.w	$a0, $sp, 36
	ld.w	$a0, $a1, 20
	st.w	$fp, $sp, 56
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 32
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 16
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 64
	maskeqz	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a2, $a2, %got_pc_lo12(writeIntraPredMode)
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 104
	mul.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a0
	addi.d	$a0, $sp, 32
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	ld.w	$s0, $sp, 44
	beqz	$a0, .LBB3_4
# %bb.3:                                # %if.else58
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(writeLumaCoeff8x8_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_4:                                # %for.body52.preheader
	move	$a0, $zero
	move	$a1, $fp
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ori	$a2, $zero, 1
	move	$a0, $zero
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ori	$a2, $zero, 2
	move	$a0, $zero
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	ori	$a2, $zero, 3
	move	$a0, $zero
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(writeCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
.LBB3_5:                                # %if.end61
	add.w	$a0, $a0, $s0
	movgr2fr.d	$fa0, $s6
	ffint.d.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmadd.d	$fa0, $fs0, $fa1, $fa0
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
.Lfunc_end3:
	.size	RDCost_for_8x8IntraBlocks, .Lfunc_end3-RDCost_for_8x8IntraBlocks
                                        # -- End function
	.globl	dct_luma8x8                     # -- Begin function dct_luma8x8
	.p2align	5
	.type	dct_luma8x8,@function
dct_luma8x8:                            # @dct_luma8x8
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	ldptr.d	$a5, $a4, 14160
	slli.d	$a3, $a0, 3
	ldx.d	$a5, $a5, $a3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$t4, 3
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a5, 0
	ld.w	$a5, $a4, 12
	ldptr.d	$a6, $a4, 14224
	ld.w	$a0, $a4, 44
	ori	$a7, $zero, 536
	mul.d	$a5, $a5, $a7
	ori	$s4, $t4, 848
	add.d	$a5, $a6, $a5
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB4_2
# %bb.1:
	move	$a7, $zero
	b	.LBB4_3
.LBB4_2:                                # %land.rhs
	ldptr.w	$a5, $a4, 15540
	addi.d	$a5, $a5, -1
	sltui	$a7, $a5, 1
.LBB4_3:                                # %land.end
	andi	$a5, $a3, 8
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	bstrins.d	$a3, $zero, 2, 0
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 428
	add.d	$t0, $a4, $s4
	ld.d	$a6, $a2, 0
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 8
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	sltui	$a2, $a3, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a3, $a3, $a2
	pcalau12i	$a6, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a6, $a6, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a2, $a6, $a2
	or	$t7, $a2, $a3
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	beqz	$a7, .LBB4_14
# %bb.4:                                # %if.else572
	move	$a0, $zero
	move	$t8, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.w	$a6, $zero, -1
	st.d	$a6, $sp, 128
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	st.d	$a6, $sp, 120
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 136
	ld.d	$t1, $a2, 0
	addi.d	$t2, $t7, 1
	addi.d	$t6, $sp, 120
	ori	$t7, $zero, 64
	lu12i.w	$a2, 244
	ori	$fp, $a2, 575
	addi.d	$s0, $sp, 136
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_5:                                # %if.else661
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.w	$a2, $a1, 0
	add.d	$a2, $a2, $fp
	st.w	$a2, $a1, 0
	ld.w	$a2, $t4, 0
	slti	$a2, $a2, 0
	sub.d	$a7, $zero, $a3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a7, $a2
	or	$a2, $a2, $a3
	slli.d	$a3, $t8, 2
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a2, $a7, $a3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	stx.w	$a6, $a2, $a3
	addi.w	$t8, $t8, 1
	addi.d	$a6, $zero, -1
.LBB4_6:                                # %for.inc682
                                        #   in Loop: Header=BB4_8 Depth=1
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
.LBB4_7:                                # %for.inc682
                                        #   in Loop: Header=BB4_8 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$t2, $t2, 2
	beq	$a0, $t7, .LBB4_33
.LBB4_8:                                # %for.body584
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t4, $t2, -1
	ld.bu	$s2, $t2, 0
	andi	$t3, $a0, 3
	slli.d	$a2, $t3, 2
	ldx.w	$a3, $a2, $t6
	slli.d	$a7, $s2, 6
	add.d	$t5, $t0, $a7
	slli.d	$a7, $t4, 2
	ldptr.w	$s3, $a4, 15260
	ldx.w	$s1, $t5, $a7
	addi.d	$a7, $a3, 1
	stx.w	$a7, $a2, $t6
	beqz	$s3, .LBB4_10
# %bb.9:                                # %if.then606
                                        #   in Loop: Header=BB4_8 Depth=1
	ldptr.d	$a3, $a4, 14184
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 3
	ldx.d	$a3, $a3, $s3
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	add.w	$s2, $s3, $s2
	slli.d	$s2, $s2, 3
	ldx.d	$a3, $a3, $s2
	add.d	$s2, $a5, $t4
	slli.d	$s2, $s2, 2
	stx.w	$zero, $a3, $s2
.LBB4_10:                               # %if.end616
                                        #   in Loop: Header=BB4_8 Depth=1
	addi.d	$a6, $a6, 1
	beqz	$s1, .LBB4_7
# %bb.11:                               # %if.then619
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s2, $a3, 472
	alsl.d	$t4, $t4, $t5, 2
	srai.d	$a3, $s1, 31
	xor	$t5, $s1, $a3
	sub.d	$a3, $t5, $a3
	beqz	$s2, .LBB4_5
# %bb.12:                               # %land.lhs.true622
                                        #   in Loop: Header=BB4_8 Depth=1
	ldptr.w	$t5, $t1, 4008
	bnez	$t5, .LBB4_5
# %bb.13:                               # %if.then626
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.w	$t5, $a1, 0
	add.d	$t5, $t5, $fp
	st.w	$t5, $a1, 0
	ld.w	$t4, $t4, 0
	alsl.d	$t5, $t3, $t6, 2
	slti	$t4, $t4, 0
	sub.d	$s1, $zero, $a3
	slli.d	$t3, $t3, 3
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$t3, $s2, $t3
	masknez	$a3, $a3, $t4
	maskeqz	$t4, $s1, $t4
	ldx.w	$s1, $a2, $s0
	ld.d	$s2, $t3, 0
	ld.d	$t3, $t3, 8
	or	$a3, $t4, $a3
	slli.d	$t4, $s1, 2
	stx.w	$a3, $s2, $t4
	stx.w	$a7, $t3, $t4
	addi.d	$a3, $s1, 1
	stx.w	$a3, $a2, $s0
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $t5, 0
	b	.LBB4_6
.LBB4_14:                               # %for.cond.preheader
	pcalau12i	$a2, %got_pc_hi20(qp_per_matrix)
	ld.d	$a2, $a2, %got_pc_lo12(qp_per_matrix)
	pcalau12i	$a3, %got_pc_hi20(qp_rem_matrix)
	ld.d	$a3, $a3, %got_pc_lo12(qp_rem_matrix)
	ld.d	$a2, $a2, 0
	slli.d	$s0, $a0, 2
	ld.d	$s1, $a3, 0
	ldx.w	$t5, $a2, $s0
	move	$fp, $zero
	move	$t8, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ldx.w	$a0, $s1, $s0
	addi.d	$s0, $t5, 16
	pcalau12i	$a2, %got_pc_hi20(LevelScale8x8Luma)
	ld.d	$a2, $a2, %got_pc_lo12(LevelScale8x8Luma)
	pcalau12i	$a3, %got_pc_hi20(LevelOffset8x8Luma)
	ld.d	$a3, $a3, %got_pc_lo12(LevelOffset8x8Luma)
	pcalau12i	$a6, %got_pc_hi20(InvLevelScale8x8Luma)
	ld.d	$a6, $a6, %got_pc_lo12(InvLevelScale8x8Luma)
	ld.d	$a2, $a2, 0
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	ld.d	$a3, $a3, 0
	ld.d	$a6, $a6, 0
	ldx.d	$a2, $a2, $a7
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a3, $a7
	ldx.d	$a6, $a6, $a7
	ldx.d	$a2, $a2, $a0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a2, $t5, 3
	ldx.d	$a2, $a3, $a2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ldx.d	$a0, $a6, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a0, $a4, $s4
	ori	$a2, $t4, 912
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 976
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1040
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1104
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1168
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1232
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1296
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr0, $a0, 0
	xvinsgr2vr.w	$xr0, $a2, 1
	xvinsgr2vr.w	$xr0, $a3, 2
	xvinsgr2vr.w	$xr0, $a6, 3
	xvinsgr2vr.w	$xr0, $a7, 4
	xvinsgr2vr.w	$xr0, $t1, 5
	xvinsgr2vr.w	$xr0, $t2, 6
	xvinsgr2vr.w	$xr0, $t3, 7
	ori	$a0, $t4, 876
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 940
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 1004
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1068
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1132
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1196
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1260
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1324
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr1, $a0, 0
	xvinsgr2vr.w	$xr1, $a2, 1
	xvinsgr2vr.w	$xr1, $a3, 2
	xvinsgr2vr.w	$xr1, $a6, 3
	xvinsgr2vr.w	$xr1, $a7, 4
	xvinsgr2vr.w	$xr1, $t1, 5
	xvinsgr2vr.w	$xr1, $t2, 6
	xvinsgr2vr.w	$xr1, $t3, 7
	xvadd.w	$xr2, $xr1, $xr0
	ori	$a0, $t4, 852
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 916
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 980
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1044
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1108
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1172
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1236
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1300
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr3, $a0, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a6, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t1, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	ori	$a0, $t4, 872
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 936
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 1000
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1064
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1128
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1192
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1256
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1320
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr4, $a0, 0
	xvinsgr2vr.w	$xr4, $a2, 1
	xvinsgr2vr.w	$xr4, $a3, 2
	xvinsgr2vr.w	$xr4, $a6, 3
	xvinsgr2vr.w	$xr4, $a7, 4
	xvinsgr2vr.w	$xr4, $t1, 5
	xvinsgr2vr.w	$xr4, $t2, 6
	xvinsgr2vr.w	$xr4, $t3, 7
	xvadd.w	$xr5, $xr4, $xr3
	ori	$a0, $t4, 856
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 920
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 984
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1048
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1112
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1176
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1240
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1304
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr6, $a0, 0
	xvinsgr2vr.w	$xr6, $a2, 1
	xvinsgr2vr.w	$xr6, $a3, 2
	xvinsgr2vr.w	$xr6, $a6, 3
	xvinsgr2vr.w	$xr6, $a7, 4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvinsgr2vr.w	$xr6, $t2, 6
	xvinsgr2vr.w	$xr6, $t3, 7
	ori	$a0, $t4, 868
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 932
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 996
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1060
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1124
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1188
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1252
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1316
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr7, $a0, 0
	xvinsgr2vr.w	$xr7, $a2, 1
	xvinsgr2vr.w	$xr7, $a3, 2
	xvinsgr2vr.w	$xr7, $a6, 3
	xvinsgr2vr.w	$xr7, $a7, 4
	xvinsgr2vr.w	$xr7, $t1, 5
	xvinsgr2vr.w	$xr7, $t2, 6
	xvinsgr2vr.w	$xr7, $t3, 7
	xvadd.w	$xr8, $xr7, $xr6
	ori	$a0, $t4, 860
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 924
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 988
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1052
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1116
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1180
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1244
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1308
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr9, $a0, 0
	xvinsgr2vr.w	$xr9, $a2, 1
	xvinsgr2vr.w	$xr9, $a3, 2
	xvinsgr2vr.w	$xr9, $a6, 3
	xvinsgr2vr.w	$xr9, $a7, 4
	xvinsgr2vr.w	$xr9, $t1, 5
	xvinsgr2vr.w	$xr9, $t2, 6
	xvinsgr2vr.w	$xr9, $t3, 7
	ori	$a0, $t4, 864
	ldx.w	$a0, $a4, $a0
	ori	$a2, $t4, 928
	ldx.w	$a2, $a4, $a2
	ori	$a3, $t4, 992
	ldx.w	$a3, $a4, $a3
	ori	$a6, $t4, 1056
	ldx.w	$a6, $a4, $a6
	ori	$a7, $t4, 1120
	ldx.w	$a7, $a4, $a7
	ori	$t1, $t4, 1184
	ldx.w	$t1, $a4, $t1
	ori	$t2, $t4, 1248
	ldx.w	$t2, $a4, $t2
	ori	$t3, $t4, 1312
	ldx.w	$t3, $a4, $t3
	xvinsgr2vr.w	$xr10, $a0, 0
	xvinsgr2vr.w	$xr10, $a2, 1
	xvinsgr2vr.w	$xr10, $a3, 2
	xvinsgr2vr.w	$xr10, $a6, 3
	xvinsgr2vr.w	$xr10, $a7, 4
	xvinsgr2vr.w	$xr10, $t1, 5
	xvinsgr2vr.w	$xr10, $t2, 6
	xvinsgr2vr.w	$xr10, $t3, 7
	xvadd.w	$xr11, $xr10, $xr9
	xvadd.w	$xr12, $xr11, $xr2
	xvadd.w	$xr13, $xr8, $xr5
	xvsub.w	$xr2, $xr2, $xr11
	xvsub.w	$xr5, $xr5, $xr8
	xvsub.w	$xr0, $xr0, $xr1
	xvsub.w	$xr1, $xr3, $xr4
	xvsub.w	$xr3, $xr6, $xr7
	xvsub.w	$xr4, $xr9, $xr10
	xvsrai.w	$xr6, $xr0, 1
	xvadd.w	$xr6, $xr6, $xr0
	xvadd.w	$xr6, $xr6, $xr1
	xvadd.w	$xr6, $xr6, $xr3
	xvsrai.w	$xr7, $xr3, 1
	xvadd.w	$xr7, $xr3, $xr7
	xvadd.w	$xr7, $xr7, $xr4
	xvsub.w	$xr7, $xr0, $xr7
	xvsrai.w	$xr8, $xr1, 1
	xvadd.w	$xr8, $xr1, $xr8
	xvsub.w	$xr0, $xr0, $xr8
	xvadd.w	$xr8, $xr0, $xr4
	xvsub.w	$xr0, $xr1, $xr3
	xvsrai.w	$xr1, $xr4, 1
	xvadd.w	$xr0, $xr4, $xr0
	xvadd.w	$xr1, $xr0, $xr1
	xvadd.w	$xr0, $xr12, $xr13
	xvst	$xr0, $sp, 152
	xvsrai.w	$xr3, $xr5, 1
	xvadd.w	$xr3, $xr2, $xr3
	xvst	$xr3, $sp, 216
	xvsub.w	$xr3, $xr12, $xr13
	xvst	$xr3, $sp, 280
	xvsrai.w	$xr2, $xr2, 1
	xvsub.w	$xr2, $xr2, $xr5
	xvst	$xr2, $sp, 344
	xvsrai.w	$xr2, $xr1, 2
	xvadd.w	$xr2, $xr2, $xr6
	xvst	$xr2, $sp, 184
	xvsrai.w	$xr2, $xr8, 2
	xvadd.w	$xr2, $xr7, $xr2
	xvst	$xr2, $sp, 248
	xvsrai.w	$xr2, $xr7, 2
	xvsub.w	$xr2, $xr8, $xr2
	xvst	$xr2, $sp, 312
	xvsrai.w	$xr2, $xr6, 2
	xvsub.w	$xr1, $xr2, $xr1
	xvst	$xr1, $sp, 376
	ld.w	$a0, $sp, 184
	ld.w	$a2, $sp, 216
	ld.w	$a3, $sp, 248
	ld.w	$a6, $sp, 280
	ld.w	$a7, $sp, 312
	ld.w	$t1, $sp, 344
	ld.w	$t2, $sp, 376
	xvinsgr2vr.w	$xr0, $a0, 1
	xvinsgr2vr.w	$xr0, $a2, 2
	xvinsgr2vr.w	$xr0, $a3, 3
	xvinsgr2vr.w	$xr0, $a6, 4
	xvinsgr2vr.w	$xr0, $a7, 5
	xvinsgr2vr.w	$xr0, $t1, 6
	xvinsgr2vr.w	$xr0, $t2, 7
	xvld	$xr1, $sp, 180
	ld.w	$a0, $sp, 212
	ld.w	$a2, $sp, 244
	ld.w	$a3, $sp, 276
	ld.w	$a6, $sp, 308
	ld.w	$a7, $sp, 340
	ld.w	$t1, $sp, 372
	ld.w	$t2, $sp, 404
	xvinsgr2vr.w	$xr1, $a0, 1
	xvinsgr2vr.w	$xr1, $a2, 2
	xvinsgr2vr.w	$xr1, $a3, 3
	xvinsgr2vr.w	$xr1, $a6, 4
	xvinsgr2vr.w	$xr1, $a7, 5
	xvinsgr2vr.w	$xr1, $t1, 6
	xvinsgr2vr.w	$xr1, $t2, 7
	xvadd.w	$xr3, $xr1, $xr0
	xvld	$xr2, $sp, 156
	ld.w	$a0, $sp, 188
	ld.w	$a2, $sp, 220
	ld.w	$a3, $sp, 252
	ld.w	$a6, $sp, 284
	ld.w	$a7, $sp, 316
	ld.w	$t1, $sp, 348
	ld.w	$t2, $sp, 380
	xvinsgr2vr.w	$xr2, $a0, 1
	xvinsgr2vr.w	$xr2, $a2, 2
	xvinsgr2vr.w	$xr2, $a3, 3
	xvinsgr2vr.w	$xr2, $a6, 4
	xvinsgr2vr.w	$xr2, $a7, 5
	xvinsgr2vr.w	$xr2, $t1, 6
	xvinsgr2vr.w	$xr2, $t2, 7
	xvld	$xr4, $sp, 176
	ld.w	$a0, $sp, 208
	ld.w	$a2, $sp, 240
	ld.w	$a3, $sp, 272
	ld.w	$a6, $sp, 304
	ld.w	$a7, $sp, 336
	ld.w	$t1, $sp, 368
	ld.w	$t2, $sp, 400
	xvinsgr2vr.w	$xr4, $a0, 1
	xvinsgr2vr.w	$xr4, $a2, 2
	xvinsgr2vr.w	$xr4, $a3, 3
	xvinsgr2vr.w	$xr4, $a6, 4
	xvinsgr2vr.w	$xr4, $a7, 5
	xvinsgr2vr.w	$xr4, $t1, 6
	xvinsgr2vr.w	$xr4, $t2, 7
	xvadd.w	$xr6, $xr4, $xr2
	xvld	$xr5, $sp, 160
	ld.w	$a0, $sp, 192
	ld.w	$a2, $sp, 224
	ld.w	$a3, $sp, 256
	ld.w	$a6, $sp, 288
	ld.w	$a7, $sp, 320
	ld.w	$t1, $sp, 352
	ld.w	$t2, $sp, 384
	xvinsgr2vr.w	$xr5, $a0, 1
	xvinsgr2vr.w	$xr5, $a2, 2
	xvinsgr2vr.w	$xr5, $a3, 3
	xvinsgr2vr.w	$xr5, $a6, 4
	xvinsgr2vr.w	$xr5, $a7, 5
	xvinsgr2vr.w	$xr5, $t1, 6
	xvinsgr2vr.w	$xr5, $t2, 7
	xvld	$xr7, $sp, 172
	ld.w	$a0, $sp, 204
	ld.w	$a2, $sp, 236
	ld.w	$a3, $sp, 268
	ld.w	$a6, $sp, 300
	ld.w	$a7, $sp, 332
	ld.w	$t1, $sp, 364
	ld.w	$t2, $sp, 396
	xvinsgr2vr.w	$xr7, $a0, 1
	xvinsgr2vr.w	$xr7, $a2, 2
	xvinsgr2vr.w	$xr7, $a3, 3
	xvinsgr2vr.w	$xr7, $a6, 4
	xvinsgr2vr.w	$xr7, $a7, 5
	xvinsgr2vr.w	$xr7, $t1, 6
	xvinsgr2vr.w	$xr7, $t2, 7
	xvadd.w	$xr8, $xr7, $xr5
	xvld	$xr9, $sp, 164
	ld.w	$a0, $sp, 196
	ld.w	$a2, $sp, 228
	ld.w	$a3, $sp, 260
	ld.w	$a6, $sp, 292
	ld.w	$a7, $sp, 324
	ld.w	$t1, $sp, 356
	ld.w	$t2, $sp, 388
	xvinsgr2vr.w	$xr9, $a0, 1
	xvinsgr2vr.w	$xr9, $a2, 2
	xvinsgr2vr.w	$xr9, $a3, 3
	xvinsgr2vr.w	$xr9, $a6, 4
	xvinsgr2vr.w	$xr9, $a7, 5
	xvinsgr2vr.w	$xr9, $t1, 6
	xvinsgr2vr.w	$xr9, $t2, 7
	xvld	$xr10, $sp, 168
	ld.w	$a0, $sp, 200
	ld.w	$a2, $sp, 232
	ld.w	$a3, $sp, 264
	ld.w	$a6, $sp, 296
	ld.w	$a7, $sp, 328
	ld.w	$t1, $sp, 360
	ld.w	$t2, $sp, 392
	xvinsgr2vr.w	$xr10, $a0, 1
	xvinsgr2vr.w	$xr10, $a2, 2
	xvinsgr2vr.w	$xr10, $a3, 3
	xvinsgr2vr.w	$xr10, $a6, 4
	xvinsgr2vr.w	$xr10, $a7, 5
	xvinsgr2vr.w	$xr10, $t1, 6
	xvinsgr2vr.w	$xr10, $t2, 7
	xvadd.w	$xr11, $xr10, $xr9
	xvadd.w	$xr12, $xr11, $xr3
	xvadd.w	$xr13, $xr8, $xr6
	xvsub.w	$xr3, $xr3, $xr11
	xvsub.w	$xr6, $xr6, $xr8
	xvsub.w	$xr0, $xr0, $xr1
	xvsub.w	$xr1, $xr2, $xr4
	xvsub.w	$xr2, $xr5, $xr7
	xvsub.w	$xr4, $xr9, $xr10
	xvsrai.w	$xr5, $xr0, 1
	xvadd.w	$xr5, $xr5, $xr0
	xvadd.w	$xr5, $xr5, $xr1
	xvadd.w	$xr5, $xr5, $xr2
	xvsrai.w	$xr7, $xr2, 1
	xvadd.w	$xr7, $xr2, $xr7
	xvadd.w	$xr7, $xr7, $xr4
	xvsub.w	$xr7, $xr0, $xr7
	xvsrai.w	$xr8, $xr1, 1
	xvadd.w	$xr8, $xr1, $xr8
	xvsub.w	$xr0, $xr0, $xr8
	xvadd.w	$xr0, $xr0, $xr4
	xvsub.w	$xr1, $xr1, $xr2
	xvsrai.w	$xr2, $xr4, 1
	xvadd.w	$xr1, $xr4, $xr1
	xvadd.w	$xr1, $xr1, $xr2
	xvadd.w	$xr2, $xr12, $xr13
	xvst	$xr2, $t0, 0
	xvsrai.w	$xr2, $xr6, 1
	xvadd.w	$xr2, $xr3, $xr2
	xvst	$xr2, $t0, 128
	xvsub.w	$xr2, $xr12, $xr13
	xvst	$xr2, $t0, 256
	xvsrai.w	$xr2, $xr3, 1
	xvsub.w	$xr2, $xr2, $xr6
	xvst	$xr2, $t0, 384
	xvsrai.w	$xr2, $xr1, 2
	xvadd.w	$xr2, $xr2, $xr5
	xvst	$xr2, $t0, 64
	xvsrai.w	$xr2, $xr0, 2
	xvadd.w	$xr2, $xr7, $xr2
	xvst	$xr2, $t0, 192
	xvsrai.w	$xr2, $xr7, 2
	xvsub.w	$xr0, $xr0, $xr2
	xvst	$xr0, $t0, 320
	xvsrai.w	$xr0, $xr5, 2
	xvsub.w	$xr0, $xr0, $xr1
	xvst	$xr0, $t0, 448
	addi.w	$s4, $zero, -1
	st.d	$s4, $sp, 120
	st.d	$s4, $sp, 128
	move	$s5, $t5
	addi.d	$a0, $t5, 17
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	sll.w	$s7, $a2, $s0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 136
	ld.d	$s8, $a0, 0
	addi.d	$t7, $t7, 1
	addi.d	$ra, $sp, 120
	ori	$t1, $zero, 64
	lu12i.w	$a0, 244
	ori	$a0, $a0, 575
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_15:                               #   in Loop: Header=BB4_17 Depth=1
	move	$a2, $zero
.LBB4_16:                               # %if.end563
                                        #   in Loop: Header=BB4_17 Depth=1
	st.w	$a2, $t2, 0
	addi.d	$fp, $fp, 1
	addi.d	$t7, $t7, 2
	beq	$fp, $t1, .LBB4_33
.LBB4_17:                               # %for.body414
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $t7, 0
	ld.bu	$t2, $t7, -1
	andi	$t3, $fp, 3
	slli.d	$a3, $a2, 6
	add.d	$t4, $t0, $a3
	slli.d	$t6, $t2, 2
	ldx.w	$a3, $t4, $t6
	slli.d	$a6, $a2, 3
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a7, $a7, $a6
	slli.d	$t5, $t3, 2
	srai.d	$s3, $a3, 31
	xor	$a3, $a3, $s3
	ldx.w	$a7, $a7, $t6
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s6, $s1, $a6
	sub.d	$a3, $a3, $s3
	ldx.w	$s3, $t5, $ra
	mul.d	$a3, $a7, $a3
	ldx.w	$s6, $s6, $t6
	ldptr.w	$s1, $a4, 15260
	addi.w	$a7, $s3, 1
	stx.w	$a7, $t5, $ra
	add.d	$s3, $s6, $a3
	sra.w	$s3, $s3, $s0
	beqz	$s1, .LBB4_22
# %bb.18:                               # %if.then444
                                        #   in Loop: Header=BB4_17 Depth=1
	beqz	$s3, .LBB4_20
# %bb.19:                               # %cond.false
                                        #   in Loop: Header=BB4_17 Depth=1
	pcalau12i	$s1, %got_pc_hi20(AdaptRndWeight)
	ld.d	$s1, $s1, %got_pc_lo12(AdaptRndWeight)
	ld.w	$s1, $s1, 0
	sll.w	$s6, $s3, $s0
	sub.d	$a3, $a3, $s6
	mul.d	$a3, $s1, $a3
	add.d	$a3, $a3, $s7
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	sra.w	$a3, $a3, $s1
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_20:                               #   in Loop: Header=BB4_17 Depth=1
	move	$a3, $zero
.LBB4_21:                               # %cond.end
                                        #   in Loop: Header=BB4_17 Depth=1
	ldptr.d	$s1, $a4, 14184
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s6, $s2, 3
	ldx.d	$s1, $s1, $s6
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	add.w	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $s1, $a2
	add.d	$s1, $a5, $t2
	slli.d	$s1, $s1, 2
	stx.w	$a3, $a2, $s1
.LBB4_22:                               # %if.end
                                        #   in Loop: Header=BB4_17 Depth=1
	addi.w	$s4, $s4, 1
	alsl.d	$t2, $t2, $t4, 2
	beqz	$s3, .LBB4_15
# %bb.23:                               # %if.then473
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 472
	beqz	$a2, .LBB4_25
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_17 Depth=1
	ldptr.w	$a2, $s8, 4008
	beqz	$a2, .LBB4_28
.LBB4_25:                               # %if.else
                                        #   in Loop: Header=BB4_17 Depth=1
	move	$a2, $a0
	ori	$a3, $zero, 1
	blt	$a3, $s3, .LBB4_27
# %bb.26:                               # %cond.false528
                                        #   in Loop: Header=BB4_17 Depth=1
	ldptr.w	$a2, $s8, 4180
	slli.d	$a2, $a2, 6
	pcalau12i	$a3, %pc_hi20(COEFF_COST8x8)
	addi.d	$a3, $a3, %pc_lo12(COEFF_COST8x8)
	add.d	$a2, $a3, $a2
	ldx.bu	$a2, $a2, $s4
.LBB4_27:                               # %cond.end535
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a2, $a3, $a2
	st.w	$a2, $a1, 0
	ld.w	$a2, $t2, 0
	slti	$a7, $a2, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.d	$a3, $a3, $a2
	sub.d	$a2, $zero, $a3
	masknez	$t3, $a3, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $t3
	slli.d	$t3, $t8, 2
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	stx.w	$a7, $t4, $t3
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	stx.w	$s4, $a7, $t3
	addi.w	$t8, $t8, 1
	addi.d	$s4, $zero, -1
	b	.LBB4_32
.LBB4_28:                               # %if.then477
                                        #   in Loop: Header=BB4_17 Depth=1
	ori	$a2, $zero, 1
	bge	$a2, $s3, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_17 Depth=1
	lu12i.w	$a2, 244
	ori	$a2, $a2, 575
	b	.LBB4_31
.LBB4_30:                               # %cond.false481
                                        #   in Loop: Header=BB4_17 Depth=1
	ldptr.w	$a2, $s8, 4180
	slli.d	$a2, $a2, 6
	pcalau12i	$a3, %pc_hi20(COEFF_COST8x8)
	addi.d	$a3, $a3, %pc_lo12(COEFF_COST8x8)
	add.d	$a2, $a3, $a2
	ldx.bu	$a2, $a2, $a7
.LBB4_31:                               # %cond.end489
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a2, $a3, $a2
	st.w	$a2, $a1, 0
	ld.w	$a2, $t2, 0
	alsl.d	$t4, $t3, $ra, 2
	slti	$s1, $a2, 0
	srai.d	$a2, $s3, 31
	xor	$a3, $s3, $a2
	sub.d	$a3, $a3, $a2
	sub.d	$a2, $zero, $a3
	slli.d	$t3, $t3, 3
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$t3, $s2, $t3
	masknez	$s3, $a3, $s1
	maskeqz	$s1, $a2, $s1
	addi.d	$s7, $sp, 136
	ldx.w	$s6, $t5, $s7
	ld.d	$s2, $t3, 0
	ld.d	$t3, $t3, 8
	or	$s1, $s1, $s3
	slli.d	$s3, $s6, 2
	stx.w	$s1, $s2, $s3
	stx.w	$a7, $t3, $s3
	addi.d	$a7, $s6, 1
	stx.w	$a7, $t5, $s7
	addi.w	$a7, $zero, -1
	lu32i.d	$a7, 0
	st.w	$a7, $t4, 0
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
.LBB4_32:                               # %if.end549
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.w	$a7, $t2, 0
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a6, $t3, $a6
	slti	$a7, $a7, 0
	ldx.w	$a6, $a6, $t6
	masknez	$a3, $a3, $a7
	maskeqz	$a2, $a2, $a7
	or	$a2, $a2, $a3
	mul.d	$a2, $a2, $a6
	sll.w	$a2, $a2, $s5
	addi.w	$a2, $a2, 32
	srai.d	$a2, $a2, 6
	ori	$a3, $zero, 1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	b	.LBB4_16
.LBB4_33:                               # %if.end685
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 472
	beqz	$a0, .LBB4_39
# %bb.34:                               # %lor.lhs.false
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4008
	lu12i.w	$s0, 3
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB4_36
# %bb.35:                               # %for.body698.preheader
	ld.w	$a0, $sp, 136
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a2, $a0
	ld.w	$a0, $sp, 140
	ld.d	$a2, $a3, 16
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a3, 24
	slli.d	$a0, $a0, 2
	ld.d	$a2, $a2, 0
	ld.w	$a6, $sp, 144
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.w	$t8, $sp, 148
	stx.w	$zero, $a1, $a0
	slli.d	$a0, $a6, 2
	stx.w	$zero, $a2, $a0
.LBB4_36:                               # %if.end712
	slli.d	$a0, $t8, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a1, $a0
	beqz	$a7, .LBB4_40
.LBB4_37:                               # %for.cond1191.preheader
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	ldptr.d	$a3, $a1, 6440
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$t5, $a1, 0
	ld.w	$t4, $a4, 176
	addi.d	$a1, $a5, 1
	addi.d	$a2, $a5, 2
	addi.d	$a6, $a5, 3
	addi.d	$a7, $a5, 4
	addi.d	$t0, $a5, 5
	addi.d	$t1, $a5, 6
	ori	$t2, $a5, 7
	alsl.d	$t3, $t5, $a3, 3
	slli.d	$a3, $t5, 5
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	bstrins.d	$a3, $t5, 4, 4
	ori	$t5, $s0, 876
	add.d	$t5, $a4, $t5
	add.d	$a3, $a3, $a4
	ori	$t6, $s0, 350
	add.d	$t6, $a3, $t6
	ori	$t7, $zero, 64
	.p2align	4, , 16
.LBB4_38:                               # %for.body1194
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a4, 180
	ld.w	$fp, $t5, -28
	ld.hu	$s0, $t6, -14
	alsl.d	$a3, $a3, $t3, 3
	ldx.d	$t8, $a3, $a0
	add.d	$a3, $fp, $s0
	add.w	$fp, $t4, $a5
	slli.d	$fp, $fp, 1
	stx.h	$a3, $t8, $fp
	ld.w	$fp, $t5, -24
	ld.hu	$s0, $t6, -12
	add.d	$fp, $fp, $s0
	add.w	$s0, $t4, $a1
	slli.d	$s0, $s0, 1
	stx.h	$fp, $t8, $s0
	ld.w	$s0, $t5, -20
	ld.hu	$s1, $t6, -10
	add.d	$s0, $s0, $s1
	add.w	$s1, $t4, $a2
	slli.d	$s1, $s1, 1
	stx.h	$s0, $t8, $s1
	ld.w	$s1, $t5, -16
	ld.hu	$s2, $t6, -8
	add.d	$s1, $s1, $s2
	add.w	$s2, $t4, $a6
	slli.d	$s2, $s2, 1
	stx.h	$s1, $t8, $s2
	ld.w	$s2, $t5, -12
	ld.hu	$s3, $t6, -6
	add.d	$s2, $s2, $s3
	add.w	$s3, $t4, $a7
	slli.d	$s3, $s3, 1
	stx.h	$s2, $t8, $s3
	ld.w	$s3, $t5, -8
	ld.hu	$s4, $t6, -4
	st.w	$a3, $t5, -28
	st.w	$fp, $t5, -24
	st.w	$s0, $t5, -20
	add.d	$a3, $s3, $s4
	add.w	$t4, $t4, $t0
	slli.d	$t4, $t4, 1
	stx.h	$a3, $t8, $t4
	ld.w	$t4, $t5, -4
	ld.hu	$fp, $t6, -2
	st.w	$s1, $t5, -16
	st.w	$s2, $t5, -12
	st.w	$a3, $t5, -8
	add.d	$a3, $t4, $fp
	st.w	$a3, $t5, -4
	ld.w	$t4, $a4, 176
	add.w	$fp, $t4, $t1
	slli.d	$fp, $fp, 1
	stx.h	$a3, $t8, $fp
	ld.w	$a3, $t5, 0
	ld.hu	$fp, $t6, 0
	add.d	$a3, $a3, $fp
	st.w	$a3, $t5, 0
	add.w	$fp, $t4, $t2
	slli.d	$fp, $fp, 1
	stx.h	$a3, $t8, $fp
	addi.d	$a0, $a0, 8
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 32
	bne	$a0, $t7, .LBB4_38
	b	.LBB4_46
.LBB4_39:
	lu12i.w	$s0, 3
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a0, $t8, 2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	stx.w	$zero, $a1, $a0
	bnez	$a7, .LBB4_37
.LBB4_40:                               # %for.cond715.preheader
	addi.d	$a1, $sp, 280
	ori	$a0, $s0, 876
	add.d	$a2, $a4, $a0
	addi.w	$a6, $zero, -32
	.p2align	4, , 16
.LBB4_41:                               # %for.body718
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -28
	ld.w	$a7, $a2, -12
	ld.w	$t1, $a2, -20
	ld.w	$t2, $a2, -4
	add.d	$t3, $a7, $a3
	sub.d	$a3, $a3, $a7
	srli.d	$a7, $t1, 1
	sub.d	$a7, $a7, $t2
	srli.d	$t2, $t2, 1
	add.d	$t1, $t2, $t1
	add.d	$t2, $t1, $t3
	add.d	$t4, $a7, $a3
	sub.d	$a3, $a3, $a7
	ld.w	$a7, $a2, 0
	ld.w	$t5, $a2, -16
	sub.d	$t1, $t3, $t1
	ld.w	$t3, $a2, -8
	srli.d	$t6, $a7, 1
	add.d	$t7, $t5, $a7
	add.d	$t6, $t7, $t6
	sub.w	$t6, $t3, $t6
	ld.w	$t7, $a2, -24
	srli.d	$t8, $t5, 1
	add.d	$t8, $t8, $t5
	sub.d	$t8, $a7, $t8
	add.w	$t8, $t8, $t7
	srai.d	$fp, $t3, 1
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $fp
	sub.w	$a7, $a7, $t7
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t7
	srli.d	$t5, $t7, 1
	add.w	$t3, $t3, $t5
	srli.d	$t5, $t3, 2
	add.d	$t5, $t5, $t6
	srli.d	$t6, $t6, 2
	sub.d	$t3, $t3, $t6
	srli.d	$t6, $a7, 2
	add.d	$t6, $t6, $t8
	srli.d	$t7, $t8, 2
	sub.d	$a7, $t7, $a7
	add.d	$t7, $t3, $t2
	add.d	$t8, $a1, $a6
	st.w	$t7, $t8, -96
	add.d	$t7, $a7, $t4
	st.w	$t7, $t8, -64
	add.d	$t7, $t6, $a3
	st.w	$t7, $t8, -32
	add.d	$t7, $t5, $t1
	stx.w	$t7, $a1, $a6
	sub.d	$t1, $t1, $t5
	st.w	$t1, $t8, 32
	sub.d	$a3, $a3, $t6
	st.w	$a3, $t8, 64
	sub.d	$a3, $t4, $a7
	st.w	$a3, $t8, 96
	sub.d	$a3, $t2, $t3
	st.w	$a3, $t8, 128
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 64
	bnez	$a6, .LBB4_41
# %bb.42:                               # %for.cond935.preheader
	move	$a1, $zero
	addi.d	$a2, $sp, 168
	ori	$a6, $zero, 32
	.p2align	4, , 16
.LBB4_43:                               # %for.body938
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, -16
	ld.w	$a7, $a2, 0
	ld.w	$t1, $a2, -8
	ld.w	$t2, $a2, 8
	add.d	$t3, $a7, $a3
	sub.d	$a3, $a3, $a7
	srli.d	$a7, $t1, 1
	sub.d	$a7, $a7, $t2
	srli.d	$t2, $t2, 1
	add.d	$t1, $t2, $t1
	add.d	$t2, $t1, $t3
	add.d	$t4, $a7, $a3
	sub.d	$a3, $a3, $a7
	ld.w	$a7, $a2, 12
	ld.w	$t5, $a2, -4
	sub.d	$t1, $t3, $t1
	ld.w	$t3, $a2, 4
	srli.d	$t6, $a7, 1
	add.d	$t7, $t5, $a7
	add.d	$t6, $t7, $t6
	sub.w	$t6, $t3, $t6
	ld.w	$t7, $a2, -12
	srli.d	$t8, $t5, 1
	add.d	$t8, $t8, $t5
	sub.d	$t8, $a7, $t8
	add.w	$t8, $t8, $t7
	srai.d	$fp, $t3, 1
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $fp
	sub.w	$a7, $a7, $t7
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t7
	srli.d	$t5, $t7, 1
	add.w	$t3, $t3, $t5
	srli.d	$t5, $t3, 2
	add.d	$t5, $t5, $t6
	srli.d	$t6, $t6, 2
	sub.d	$t3, $t3, $t6
	srli.d	$t6, $a7, 2
	add.d	$t6, $t6, $t8
	srli.d	$t7, $t8, 2
	sub.d	$a7, $t7, $a7
	add.d	$t7, $t3, $t2
	add.d	$t8, $t0, $a1
	stx.w	$t7, $t0, $a1
	add.d	$t7, $a7, $t4
	st.w	$t7, $t8, 64
	add.d	$t7, $t6, $a3
	st.w	$t7, $t8, 128
	add.d	$t7, $t5, $t1
	st.w	$t7, $t8, 192
	sub.d	$t1, $t1, $t5
	st.w	$t1, $t8, 256
	sub.d	$a3, $a3, $t6
	st.w	$a3, $t8, 320
	sub.d	$a3, $t4, $a7
	st.w	$a3, $t8, 384
	sub.d	$a3, $t2, $t3
	st.w	$a3, $t8, 448
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 32
	bne	$a1, $a6, .LBB4_43
# %bb.44:                               # %for.cond1139.preheader
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a2, $a1, 0
	move	$a1, $zero
	ldptr.d	$a3, $a2, 6440
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a6, $a2, 0
	ori	$a2, $s0, 3232
	ldx.w	$t6, $a4, $a2
	ld.w	$t8, $a4, 176
	addi.d	$a2, $a5, 1
	addi.d	$a7, $a5, 2
	addi.d	$t0, $a5, 3
	addi.d	$t1, $a5, 4
	addi.d	$t2, $a5, 5
	addi.d	$t3, $a5, 6
	alsl.d	$t4, $a6, $a3, 3
	slli.d	$a3, $a6, 5
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	bstrins.d	$a3, $a6, 4, 4
	ori	$t5, $a5, 7
	add.d	$a0, $a4, $a0
	add.d	$a3, $a3, $a4
	ori	$a6, $s0, 350
	add.d	$a6, $a3, $a6
	ori	$t7, $zero, 64
	.p2align	4, , 16
.LBB4_45:                               # %for.body1142
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a4, 180
	ld.hu	$s0, $a6, -14
	ld.w	$s1, $a0, -28
	alsl.d	$a3, $a3, $t4, 3
	ldx.d	$fp, $a3, $a1
	slli.d	$a3, $s0, 6
	add.d	$a3, $s1, $a3
	addi.w	$a3, $a3, 32
	srai.d	$s0, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $s0, $a3
	slt	$s0, $a3, $t6
	maskeqz	$a3, $a3, $s0
	masknez	$s0, $t6, $s0
	or	$a3, $a3, $s0
	add.w	$s0, $t8, $a5
	slli.d	$s0, $s0, 1
	stx.h	$a3, $fp, $s0
	ld.hu	$s0, $a6, -12
	ld.w	$s1, $a0, -24
	slli.d	$s0, $s0, 6
	add.d	$s0, $s1, $s0
	addi.w	$s0, $s0, 32
	srai.d	$s1, $s0, 6
	srai.d	$s0, $s0, 63
	andn	$s0, $s1, $s0
	slt	$s1, $s0, $t6
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t6, $s1
	or	$s0, $s0, $s1
	add.w	$s1, $t8, $a2
	slli.d	$s1, $s1, 1
	stx.h	$s0, $fp, $s1
	ld.hu	$s1, $a6, -10
	ld.w	$s2, $a0, -20
	slli.d	$s1, $s1, 6
	add.d	$s1, $s2, $s1
	addi.w	$s1, $s1, 32
	srai.d	$s2, $s1, 6
	srai.d	$s1, $s1, 63
	andn	$s1, $s2, $s1
	slt	$s2, $s1, $t6
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $t6, $s2
	or	$s1, $s1, $s2
	add.w	$s2, $t8, $a7
	slli.d	$s2, $s2, 1
	stx.h	$s1, $fp, $s2
	ld.hu	$s2, $a6, -8
	ld.w	$s3, $a0, -16
	st.w	$a3, $a0, -28
	st.w	$s0, $a0, -24
	slli.d	$a3, $s2, 6
	add.d	$a3, $s3, $a3
	addi.w	$a3, $a3, 32
	srai.d	$s0, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $s0, $a3
	slt	$s0, $a3, $t6
	maskeqz	$a3, $a3, $s0
	masknez	$s0, $t6, $s0
	or	$a3, $a3, $s0
	add.w	$s0, $t8, $t0
	slli.d	$s0, $s0, 1
	stx.h	$a3, $fp, $s0
	ld.hu	$s0, $a6, -6
	ld.w	$s2, $a0, -12
	st.w	$s1, $a0, -20
	st.w	$a3, $a0, -16
	slli.d	$a3, $s0, 6
	add.d	$a3, $s2, $a3
	addi.w	$a3, $a3, 32
	srai.d	$s0, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $s0, $a3
	slt	$s0, $a3, $t6
	maskeqz	$a3, $a3, $s0
	masknez	$t6, $t6, $s0
	or	$a3, $a3, $t6
	add.w	$t6, $t8, $t1
	slli.d	$t6, $t6, 1
	stx.h	$a3, $fp, $t6
	ld.hu	$t8, $a6, -4
	ld.w	$s0, $a0, -8
	st.w	$a3, $a0, -12
	ldptr.w	$t6, $a4, 15520
	slli.d	$a3, $t8, 6
	add.d	$a3, $s0, $a3
	addi.w	$a3, $a3, 32
	srai.d	$t8, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $t8, $a3
	slt	$t8, $a3, $t6
	maskeqz	$a3, $a3, $t8
	masknez	$t8, $t6, $t8
	or	$a3, $a3, $t8
	st.w	$a3, $a0, -8
	ld.w	$t8, $a4, 176
	add.w	$s0, $t8, $t2
	slli.d	$s0, $s0, 1
	stx.h	$a3, $fp, $s0
	ld.hu	$a3, $a6, -2
	ld.w	$s0, $a0, -4
	slli.d	$a3, $a3, 6
	add.d	$a3, $s0, $a3
	addi.w	$a3, $a3, 32
	srai.d	$s0, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $s0, $a3
	slt	$s0, $a3, $t6
	maskeqz	$a3, $a3, $s0
	masknez	$s0, $t6, $s0
	or	$a3, $a3, $s0
	add.w	$s0, $t8, $t3
	slli.d	$s0, $s0, 1
	stx.h	$a3, $fp, $s0
	ld.hu	$s0, $a6, 0
	ld.w	$s1, $a0, 0
	st.w	$a3, $a0, -4
	slli.d	$a3, $s0, 6
	add.d	$a3, $s1, $a3
	addi.w	$a3, $a3, 32
	srai.d	$s0, $a3, 6
	srai.d	$a3, $a3, 63
	andn	$a3, $s0, $a3
	slt	$s0, $a3, $t6
	maskeqz	$a3, $a3, $s0
	masknez	$s0, $t6, $s0
	or	$a3, $a3, $s0
	st.w	$a3, $a0, 0
	add.w	$s0, $t8, $t5
	slli.d	$s0, $s0, 1
	stx.h	$a3, $fp, $s0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 64
	addi.d	$a6, $a6, 32
	bne	$a1, $t7, .LBB4_45
.LBB4_46:                               # %if.end1240
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end4:
	.size	dct_luma8x8, .Lfunc_end4-dct_luma8x8
                                        # -- End function
	.globl	LowPassForIntra8x8Pred          # -- Begin function LowPassForIntra8x8Pred
	.p2align	5
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
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
	ld.hu	$a7, $a0, 0
	ld.hu	$s0, $a0, 2
	ld.hu	$a4, $a0, 4
	ld.hu	$fp, $a0, 6
	ld.hu	$t8, $a0, 8
	ld.hu	$t7, $a0, 10
	ld.hu	$t6, $a0, 12
	ld.hu	$t5, $a0, 14
	ld.hu	$t4, $a0, 16
	ld.hu	$t3, $a0, 18
	ld.hu	$t2, $a0, 20
	ld.hu	$t1, $a0, 22
	ld.hu	$t0, $a0, 24
	ld.hu	$a5, $a0, 26
	ld.hu	$a6, $a0, 28
	beqz	$a2, .LBB5_3
# %bb.1:                                # %if.then
	beqz	$a1, .LBB5_4
# %bb.2:                                # %if.then2
	alsl.d	$s2, $s0, $a7, 1
	b	.LBB5_5
.LBB5_3:
	ld.hu	$s1, $a0, 30
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.hu	$s2, $a0, 32
	b	.LBB5_6
.LBB5_4:                                # %if.else
	alsl.d	$s2, $s0, $s0, 1
.LBB5_5:                                # %if.end
	addi.d	$s1, $a4, 2
	add.d	$s2, $s1, $s2
	alsl.d	$a4, $a4, $s0, 1
	srli.d	$s0, $s2, 2
	add.d	$a4, $a4, $fp
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	alsl.d	$s1, $fp, $s1, 1
	add.d	$s1, $s1, $t8
	alsl.d	$s2, $t8, $fp, 1
	srli.d	$fp, $s1, 2
	add.d	$s1, $s2, $t7
	addi.d	$s1, $s1, 2
	alsl.d	$s2, $t7, $t8, 1
	srli.d	$t8, $s1, 2
	add.d	$s1, $s2, $t6
	addi.d	$s1, $s1, 2
	alsl.d	$s2, $t6, $t7, 1
	srli.d	$t7, $s1, 2
	add.d	$s1, $s2, $t5
	addi.d	$s1, $s1, 2
	alsl.d	$s2, $t5, $t6, 1
	srli.d	$t6, $s1, 2
	add.d	$s1, $s2, $t4
	addi.d	$s1, $s1, 2
	alsl.d	$s2, $t4, $t5, 1
	srli.d	$t5, $s1, 2
	add.d	$s1, $s2, $t3
	addi.d	$s1, $s1, 2
	alsl.d	$t4, $t3, $t4, 1
	srli.d	$s1, $s1, 2
	add.d	$t4, $t4, $t2
	addi.d	$t4, $t4, 2
	alsl.d	$t3, $t2, $t3, 1
	srli.d	$t4, $t4, 2
	add.d	$t3, $t3, $t1
	addi.d	$t3, $t3, 2
	alsl.d	$t2, $t1, $t2, 1
	srli.d	$t3, $t3, 2
	add.d	$t2, $t2, $t0
	addi.d	$t2, $t2, 2
	alsl.d	$t1, $t0, $t1, 1
	srli.d	$t2, $t2, 2
	add.d	$t1, $t1, $a5
	addi.d	$t1, $t1, 2
	alsl.d	$a5, $a5, $t0, 1
	srli.d	$t0, $t1, 2
	add.d	$a5, $a5, $a6
	ld.hu	$a6, $a0, 26
	ld.hu	$t1, $a0, 28
	ld.hu	$s2, $a0, 30
	addi.d	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	alsl.d	$a6, $t1, $a6, 1
	add.d	$a6, $a6, $s2
	ld.hu	$s3, $a0, 32
	addi.d	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	alsl.d	$t1, $s2, $t1, 1
	add.d	$t1, $t1, $s3
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$t1, $s3, $s3, 1
	add.d	$t1, $s2, $t1
	addi.d	$t1, $t1, 2
	srli.d	$s2, $t1, 2
	move	$t1, $t2
	move	$t2, $t3
	move	$t3, $t4
	move	$t4, $s1
.LBB5_6:                                # %if.end64
	ld.hu	$s3, $a0, 34
	ld.hu	$s4, $a0, 36
	ld.hu	$s5, $a0, 38
	ld.hu	$s6, $a0, 40
	ld.hu	$s7, $a0, 42
	ld.hu	$s8, $a0, 44
	ld.hu	$ra, $a0, 46
	ld.hu	$s1, $a0, 48
	beqz	$a1, .LBB5_11
# %bb.7:                                # %if.then66
	beqz	$a2, .LBB5_13
# %bb.8:                                # %if.then66
	beqz	$a3, .LBB5_13
# %bb.9:                                # %if.then69
	ld.hu	$a1, $a0, 34
	ld.hu	$a2, $a0, 0
	ld.hu	$a3, $a0, 2
	alsl.d	$a7, $a2, $a1, 1
	add.d	$a3, $a7, $a3
.LBB5_10:                               # %if.then122
	addi.d	$a3, $a3, 2
	srli.d	$a7, $a3, 2
	b	.LBB5_16
.LBB5_11:                               # %if.end118
	beqz	$a3, .LBB5_18
# %bb.12:                               # %if.else136
	ld.hu	$a1, $a0, 34
	ld.hu	$a3, $a0, 36
	alsl.d	$s1, $a1, $a1, 1
	b	.LBB5_17
.LBB5_13:                               # %if.else83
	beqz	$a2, .LBB5_19
# %bb.14:                               # %if.end118.thread55
	ld.hu	$a2, $a0, 0
	ld.hu	$a1, $a0, 2
	alsl.d	$a7, $a2, $a2, 1
	add.d	$a1, $a1, $a7
	addi.d	$a1, $a1, 2
	srli.d	$a7, $a1, 2
	beqz	$a3, .LBB5_18
# %bb.15:                               # %if.end118.thread55.if.then122_crit_edge
	ld.hu	$a1, $a0, 34
.LBB5_16:                               # %if.then122
	ld.hu	$a3, $a0, 36
	alsl.d	$s1, $a1, $a2, 1
.LBB5_17:                               # %if.end150
	addi.d	$a2, $a3, 2
	add.d	$s1, $a2, $s1
	ld.hu	$s6, $a0, 38
	srli.d	$s3, $s1, 2
	alsl.d	$a1, $a3, $a1, 1
	add.d	$a1, $a1, $s6
	addi.d	$a1, $a1, 2
	ld.hu	$a3, $a0, 40
	srli.d	$s4, $a1, 2
	alsl.d	$a1, $s6, $a2, 1
	ld.hu	$a2, $a0, 42
	add.d	$a1, $a1, $a3
	srli.d	$s5, $a1, 2
	alsl.d	$a1, $a3, $s6, 1
	add.d	$a1, $a1, $a2
	ld.hu	$s1, $a0, 44
	addi.d	$a1, $a1, 2
	srli.d	$s6, $a1, 2
	alsl.d	$a1, $a2, $a3, 1
	add.d	$a1, $a1, $s1
	ld.hu	$a3, $a0, 46
	addi.d	$a1, $a1, 2
	srli.d	$s7, $a1, 2
	alsl.d	$a1, $s1, $a2, 1
	add.d	$a1, $a1, $a3
	ld.hu	$a2, $a0, 48
	addi.d	$a1, $a1, 2
	srli.d	$s8, $a1, 2
	alsl.d	$a1, $a3, $s1, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	srli.d	$ra, $a1, 2
	add.d	$a1, $a3, $a2
	alsl.d	$a1, $a2, $a1, 1
	addi.d	$a1, $a1, 2
	srli.d	$s1, $a1, 2
.LBB5_18:                               # %if.end193
	st.h	$a7, $a0, 0
	st.h	$s0, $a0, 2
	st.h	$a4, $a0, 4
	st.h	$fp, $a0, 6
	st.h	$t8, $a0, 8
	st.h	$t7, $a0, 10
	st.h	$t6, $a0, 12
	st.h	$t5, $a0, 14
	st.h	$t4, $a0, 16
	st.h	$t3, $a0, 18
	st.h	$t2, $a0, 20
	st.h	$t1, $a0, 22
	st.h	$t0, $a0, 24
	st.h	$a5, $a0, 26
	st.h	$a6, $a0, 28
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.h	$a1, $a0, 30
	st.h	$s2, $a0, 32
	st.h	$s3, $a0, 34
	st.h	$s4, $a0, 36
	st.h	$s5, $a0, 38
	st.h	$s6, $a0, 40
	st.h	$s7, $a0, 42
	st.h	$s8, $a0, 44
	st.h	$ra, $a0, 46
	st.h	$s1, $a0, 48
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
.LBB5_19:                               # %if.else99
	beqz	$a3, .LBB5_18
# %bb.20:                               # %if.then101
	ld.hu	$a2, $a0, 0
	ld.hu	$a1, $a0, 34
	alsl.d	$a3, $a2, $a2, 1
	add.d	$a3, $a1, $a3
	b	.LBB5_10
.Lfunc_end5:
	.size	LowPassForIntra8x8Pred, .Lfunc_end5-LowPassForIntra8x8Pred
                                        # -- End function
	.type	quant_coef8,@object             # @quant_coef8
	.section	.rodata,"a",@progbits
	.globl	quant_coef8
	.p2align	2, 0x0
quant_coef8:
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.size	quant_coef8, 1536

	.type	dequant_coef8,@object           # @dequant_coef8
	.globl	dequant_coef8
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	SNGL_SCAN8x8,@object            # @SNGL_SCAN8x8
	.globl	SNGL_SCAN8x8
SNGL_SCAN8x8:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.space	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.space	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.space	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.space	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.space	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object           # @FIELD_SCAN8x8
	.globl	FIELD_SCAN8x8
FIELD_SCAN8x8:
	.space	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.space	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.space	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.space	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.space	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.space	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.space	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.space	2,7
	.size	FIELD_SCAN8x8, 128

	.type	COEFF_COST8x8,@object           # @COEFF_COST8x8
	.globl	COEFF_COST8x8
COEFF_COST8x8:
	.ascii	"\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001"
	.space	40
	.space	64,9
	.size	COEFF_COST8x8, 128

	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	diff64,@object                  # @diff64
	.local	diff64
	.comm	diff64,256,32
	.type	intrapred_luma8x8.PredPel,@object # @intrapred_luma8x8.PredPel
	.local	intrapred_luma8x8.PredPel
	.comm	intrapred_luma8x8.PredPel,50,2
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	cofAC8x8_chroma,@object         # @cofAC8x8_chroma
	.comm	cofAC8x8_chroma,1152,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff64
	.addrsig_sym intrapred_luma8x8.PredPel
