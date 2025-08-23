	.file	"asearch1.c"
	.text
	.globl	asearch1                        # -- Begin function asearch1
	.p2align	5
	.type	asearch1,@function
asearch1:                               # @asearch1
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
	lu12i.w	$a3, 23
	ori	$a3, $a3, 2720
	sub.d	$sp, $sp, $a3
	pcalau12i	$a3, %got_pc_hi20(I)
	ld.d	$a4, $a3, %got_pc_lo12(I)
	ld.w	$a3, $a4, 0
	move	$s1, $a1
	move	$s0, $a0
	bnez	$a3, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(Init1)
	ld.d	$a0, $a0, %got_pc_lo12(Init1)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 0
.LBB0_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(DD)
	ld.d	$a1, $a0, %got_pc_lo12(DD)
	ld.w	$a0, $a1, 0
	addi.w	$a5, $a2, 1
	bgeu	$a2, $a0, .LBB0_4
# %bb.3:                                # %if.then2
	st.w	$a5, $a1, 0
.LBB0_4:                                # %if.end3
	bgeu	$a2, $a3, .LBB0_6
# %bb.5:                                # %if.then5
	st.w	$a5, $a4, 0
.LBB0_6:                                # %if.end7
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(S)
	ld.d	$a1, $a0, %got_pc_lo12(S)
	ld.w	$a0, $a1, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	bgeu	$a2, $a0, .LBB0_8
# %bb.7:                                # %if.then9
	st.w	$a5, $a1, 0
.LBB0_8:                                # %if.end11
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.w	$a5, $a0, 0
	lu12i.w	$a0, 11
	pcalau12i	$a1, %got_pc_hi20(D_endpos)
	ld.d	$a1, $a1, %got_pc_lo12(D_endpos)
	ori	$a2, $a0, 4095
	addi.d	$a3, $sp, 423
	pcalau12i	$a0, %got_pc_hi20(NO_ERR_MASK)
	ld.w	$fp, $a1, 0
	ld.d	$a0, $a0, %got_pc_lo12(NO_ERR_MASK)
	ori	$a1, $zero, 10
	ori	$a4, $zero, 2
	stx.b	$a1, $a2, $a3
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	bltu	$a5, $a4, .LBB0_11
# %bb.9:                                # %for.body.preheader
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $fp, 1
	addi.w	$a1, $a1, -1
	or	$fp, $a2, $fp
	bnez	$a1, .LBB0_10
.LBB0_11:                               # %for.end
	ld.w	$s2, $a0, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 1
	bstrpick.d	$a2, $a1, 31, 0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	bstrpick.d	$s8, $a0, 31, 0
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_13
# %bb.12:                               # %for.cond25.preheader
	slli.d	$s4, $a2, 2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 424
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 496
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	bltz	$a1, .LBB0_17
.LBB0_13:                               # %iter.check
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a0, $a0, %got_pc_lo12(Init)
	ld.w	$a0, $a0, 0
	bstrpick.d	$a2, $a1, 31, 0
	sub.d	$a1, $s8, $a2
	sltu	$a3, $s8, $a1
	masknez	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB0_15
# %bb.14:
	move	$a4, $a2
	b	.LBB0_26
.LBB0_15:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB0_18
# %bb.16:
	move	$a3, $zero
	b	.LBB0_22
.LBB0_17:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	b	.LBB0_29
.LBB0_18:                               # %vector.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a0
	slli.d	$a4, $a2, 2
	addi.d	$a5, $a4, 32
	lu12i.w	$a4, 24
	ori	$a4, $a4, 496
	add.d	$a4, $sp, $a4
	add.d	$a4, $a4, $a5
	lu12i.w	$a6, 24
	ori	$a6, $a6, 424
	add.d	$a6, $sp, $a6
	add.d	$a5, $a6, $a5
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB0_19
# %bb.20:                               # %middle.block
	beq	$a1, $a3, .LBB0_28
# %bb.21:                               # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB0_25
.LBB0_22:                               # %vec.epilog.ph
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	add.d	$a4, $a5, $a2
	vreplgr2vr.w	$vr0, $a0
	sub.d	$a6, $a3, $a5
	add.d	$a3, $a3, $a2
	lu12i.w	$a2, 24
	ori	$a2, $a2, 496
	add.d	$a2, $sp, $a2
	alsl.d	$a2, $a3, $a2, 2
	lu12i.w	$a7, 24
	ori	$a7, $a7, 424
	add.d	$a7, $sp, $a7
	alsl.d	$a3, $a3, $a7, 2
	.p2align	4, , 16
.LBB0_23:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a6, $a6, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a6, .LBB0_23
# %bb.24:                               # %vec.epilog.middle.block
	bne	$a1, $a5, .LBB0_26
	b	.LBB0_28
.LBB0_25:
	add.d	$a4, $a3, $a2
.LBB0_26:                               # %for.body28.preheader
	addi.d	$a1, $a4, -1
	lu12i.w	$a2, 24
	ori	$a2, $a2, 424
	add.d	$a2, $sp, $a2
	alsl.d	$a2, $a4, $a2, 2
	lu12i.w	$a3, 24
	ori	$a3, $a3, 496
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a4, $a3, 2
	.p2align	4, , 16
.LBB0_27:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_27
.LBB0_28:
	st.d	$zero, $sp, 312                 # 8-byte Folded Spill
.LBB0_29:                               # %while.cond.preheader
	lu12i.w	$s3, 12
	addi.d	$a0, $sp, 423
	add.d	$a1, $a0, $s3
	move	$a0, $s1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_134
# %bb.30:                               # %while.body.lr.ph
	st.d	$zero, $sp, 392                 # 8-byte Folded Spill
	nor	$a1, $fp, $zero
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$a1, 24
	ori	$a1, $a1, 424
	add.d	$s4, $sp, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$s7, $a4, $s4, 2
	slli.d	$a1, $a4, 2
	lu12i.w	$a2, 24
	ori	$a2, $a2, 496
	add.d	$s0, $sp, $a2
	alsl.d	$a2, $a4, $s0, 2
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	alsl.d	$a2, $s8, $s0, 2
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a2, $s8, $s4, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a5, $t8, 31, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a6, $a2, 1
	sub.d	$a2, $s8, $a4
	sltu	$a3, $s8, $a2
	masknez	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a6, 32, 3
	slli.d	$a6, $a2, 3
	st.d	$a6, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a2, $a2, $a5, 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	xvreplgr2vr.w	$xr7, $s2
	bstrpick.d	$a2, $a3, 32, 4
	slli.d	$a6, $a2, 4
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a2, $a2, $a4, 4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	andi	$a2, $a3, 12
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a4, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a2, $a5, $s0, 2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a2, $a5, $s4, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 32
	add.d	$a2, $s0, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $s4, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ori	$s6, $zero, 0
	lu32i.d	$s6, 1
	move	$a1, $s3
	st.d	$s7, $sp, 352                   # 8-byte Folded Spill
	xvst	$xr7, $sp, 208                  # 32-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               # %if.end359
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sltui	$fp, $a0, 3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $s5, $s7
	addi.d	$a2, $sp, 423
	add.d	$a1, $a2, $a1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	lu12i.w	$s3, 12
	sub.w	$a0, $s3, $s7
	masknez	$a0, $a0, $fp
	maskeqz	$a1, $s3, $fp
	or	$fp, $a1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	blez	$a0, .LBB0_134
.LBB0_32:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_122 Depth 3
	add.w	$a2, $a0, $s3
	bstrpick.d	$a3, $a0, 31, 14
	ori	$a4, $s3, 1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	bltu	$a2, $a3, .LBB0_34
# %bb.33:                               # %if.end78
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	move	$fp, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.w	$a3, $a2, $a0
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a2, $sp, 423
	stx.b	$zero, $a0, $a2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	bltu	$a3, $a0, .LBB0_131
.LBB0_34:                               # %while.body82.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	pcalau12i	$a0, %got_pc_hi20(Init1)
	ld.d	$a0, $a0, %got_pc_lo12(Init1)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	move	$t4, $s3
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_35:                               # %if.end353
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	bgeu	$t4, $a2, .LBB0_131
.LBB0_36:                               # %while.body82
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_62 Depth 3
                                        #       Child Loop BB0_66 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_110 Depth 3
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_122 Depth 3
	bstrpick.d	$a2, $t4, 31, 0
	addi.d	$a3, $sp, 423
	ldx.b	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(Mask)
	ld.d	$a6, $a3, %got_pc_lo12(Mask)
	ld.wu	$s1, $s7, 0
	slli.d	$a2, $a2, 2
	ldx.w	$s5, $a6, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	addi.w	$a4, $a2, 0
	and	$a2, $s1, $a0
	srli.d	$a3, $s1, 1
	and	$s7, $a3, $s5
	or	$s3, $s7, $a2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	st.w	$s3, $a2, 0
	st.d	$t4, $sp, 376                   # 8-byte Folded Spill
	st.d	$a4, $sp, 400                   # 8-byte Folded Spill
	bltu	$a4, $t8, .LBB0_41
# %bb.37:                               # %for.body99.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$fp, $a6
	ld.w	$a2, $t5, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_46
.LBB0_38:                               # %for.body99.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s4, 2
	alsl.d	$a6, $a7, $s0, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_39:                               # %for.body99
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s5
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t2, $s0
	bstrpick.d	$t3, $a4, 31, 0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t3, $s4
	bstrpick.d	$t4, $a2, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t4, $s4
	or	$t2, $t3, $t2
	bstrpick.d	$t2, $t2, 31, 1
	and	$t2, $t2, $s2
	or	$t1, $t4, $t1
	or	$t0, $t1, $t0
	or	$t0, $t0, $t2
	st.w	$t0, $a6, 0
	addi.w	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t0, $a7, $s6
	addi.d	$a6, $a6, 4
	beqz	$t0, .LBB0_39
.LBB0_40:                               # %for.end123.loopexit
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.w	$s3, $a2, 0
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	move	$a6, $fp
.LBB0_41:                               # %for.end123
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	and	$a2, $s3, $a2
	addi.w	$a2, $a2, 0
	ori	$fp, $t4, 1
	beqz	$a2, .LBB0_72
# %bb.42:                               # %if.then128
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_53
# %bb.43:                               # %if.then128
                                        #   in Loop: Header=BB0_36 Depth=2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_45
# %bb.44:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$a0, $a0, %got_pc_lo12(endposition)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 0
	andn	$a0, $a0, $a2
	beqz	$a0, .LBB0_54
.LBB0_45:                               #   in Loop: Header=BB0_36 Depth=2
	move	$a0, $zero
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB0_54
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_46:                               # %vector.scevcheck376
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a3, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_38
# %bb.47:                               # %vector.scevcheck376
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a2, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_38
# %bb.48:                               # %vector.scevcheck376
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a4, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_38
# %bb.49:                               # %vector.memcheck377
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_38
# %bb.50:                               # %vector.ph381
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s5
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_51:                               # %vector.body390
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $t0, 0
	xvand.v	$xr3, $xr2, $xr0
	xvsrli.w	$xr2, $xr2, 1
	xvand.v	$xr2, $xr2, $xr1
	bstrpick.d	$t3, $a5, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr4, $t3, $s0
	bstrpick.d	$t3, $a7, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr5, $t3, $s4
	bstrpick.d	$t3, $a6, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr6, $t3, $s4
	xvor.v	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 1
	xvand.v	$xr4, $xr4, $xr7
	xvor.v	$xr3, $xr6, $xr3
	xvor.v	$xr2, $xr3, $xr2
	xvor.v	$xr2, $xr2, $xr4
	xvst	$xr2, $t1, 0
	addi.w	$a6, $a6, 8
	addi.w	$a5, $a5, 8
	addi.w	$a7, $a7, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB0_51
# %bb.52:                               # %middle.block399
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_38
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_53:                               # %land.rhs
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$a0, $a0, %got_pc_lo12(endposition)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 0
	and	$a0, $a0, $a2
	sltu	$a0, $zero, $a0
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB0_57
.LBB0_54:                               # %if.then146
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_133
# %bb.55:                               # %if.end151
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_57
# %bb.56:                               # %if.then155
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a2, $t4, $a0
	addi.d	$a0, $sp, 423
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	move	$s3, $a6
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	move	$a6, $s3
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
.LBB0_57:                               # %if.end160
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_71
# %bb.58:                               # %iter.check345
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a0, $a0, %got_pc_lo12(Init)
	ld.w	$a0, $a0, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a3, $a4
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_68
# %bb.59:                               # %vector.main.loop.iter.check347
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_36 Depth=2
	move	$a2, $zero
	b	.LBB0_65
.LBB0_61:                               # %vector.ph348
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_62:                               # %vector.body353
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB0_62
# %bb.63:                               # %middle.block356
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_70
# %bb.64:                               # %vec.epilog.iter.check361
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_68
.LBB0_65:                               # %vec.epilog.ph360
                                        #   in Loop: Header=BB0_36 Depth=2
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$a3, $a4, $a2
	alsl.d	$a2, $a3, $s0, 2
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_66:                               # %vec.epilog.vector.body368
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_66
# %bb.67:                               # %vec.epilog.middle.block372
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_70
.LBB0_68:                               # %for.body165.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	addi.d	$a1, $a3, -1
	alsl.d	$a2, $a3, $s4, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB0_69:                               # %for.body165
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_69
.LBB0_70:                               # %for.end172.loopexit
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.wu	$s1, $a5, 0
	srli.d	$a0, $s1, 1
	and	$s7, $a0, $s5
.LBB0_71:                               # %for.end172
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a1, $fp, $a1
	and	$a2, $s1, $a0
	or	$a2, $s7, $a2
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	and	$s3, $a2, $a3
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	st.w	$s3, $a2, 0
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	bgeu	$a2, $t8, .LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_36 Depth=2
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_73:                               # %for.body187.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$s1, $a6
	ld.w	$a2, $t5, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_102
.LBB0_74:                               # %for.body187.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s4, 2
	alsl.d	$a6, $a7, $s0, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_75:                               # %for.body187
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s5
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t2, $s0
	bstrpick.d	$t3, $a4, 31, 0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t3, $s4
	bstrpick.d	$t4, $a2, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t4, $s4
	or	$t2, $t3, $t2
	bstrpick.d	$t2, $t2, 31, 1
	and	$t2, $t2, $s2
	or	$t1, $t4, $t1
	or	$t0, $t1, $t0
	or	$t0, $t0, $t2
	st.w	$t0, $a6, 0
	addi.w	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t0, $a7, $s6
	addi.d	$a6, $a6, 4
	beqz	$t0, .LBB0_75
.LBB0_76:                               # %if.end213.loopexit
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.w	$s3, $a2, 0
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	move	$a6, $s1
.LBB0_77:                               # %if.end213
                                        #   in Loop: Header=BB0_36 Depth=2
	bstrpick.d	$a2, $fp, 31, 0
	addi.d	$a3, $sp, 423
	ldx.b	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$s1, $a6, $a2
	and	$a2, $a0, $s3
	bstrpick.d	$a3, $s3, 31, 1
	and	$fp, $a3, $s1
	or	$a2, $fp, $a2
	st.w	$a2, $s7, 0
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	bltu	$a3, $t8, .LBB0_82
# %bb.78:                               # %for.body232.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.w	$a2, $t5, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_87
.LBB0_79:                               # %for.body232.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s0, 2
	alsl.d	$a6, $a7, $s4, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_80:                               # %for.body232
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s1
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t2, $s4
	bstrpick.d	$t3, $a4, 31, 0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t3, $s0
	bstrpick.d	$t4, $a2, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t4, $s0
	or	$t2, $t3, $t2
	bstrpick.d	$t2, $t2, 31, 1
	and	$t2, $t2, $s2
	or	$t1, $t4, $t1
	or	$t0, $t1, $t0
	or	$t0, $t0, $t2
	st.w	$t0, $a6, 0
	addi.w	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t0, $a7, $s6
	addi.d	$a6, $a6, 4
	beqz	$t0, .LBB0_80
.LBB0_81:                               # %for.end259.loopexit
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.w	$a2, $s7, 0
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
.LBB0_82:                               # %for.end259
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.w	$a2, $a2, 0
	addi.w	$t4, $t4, 2
	beqz	$a2, .LBB0_35
# %bb.83:                               # %if.then264
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_94
# %bb.84:                               # %if.then264
                                        #   in Loop: Header=BB0_36 Depth=2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_86
# %bb.85:                               # %land.lhs.true268
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$a0, $a0, %got_pc_lo12(endposition)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 0
	andn	$a0, $a0, $a2
	beqz	$a0, .LBB0_95
.LBB0_86:                               #   in Loop: Header=BB0_36 Depth=2
	move	$a0, $zero
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB0_95
	b	.LBB0_98
	.p2align	4, , 16
.LBB0_87:                               # %vector.scevcheck290
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a3, $t6
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_79
# %bb.88:                               # %vector.scevcheck290
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a2, $t6
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_79
# %bb.89:                               # %vector.scevcheck290
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a4, $t6
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_79
# %bb.90:                               # %vector.memcheck291
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	sub.d	$a6, $a7, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	beqz	$a6, .LBB0_79
# %bb.91:                               # %vector.ph295
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_92:                               # %vector.body304
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $t0, 0
	xvand.v	$xr3, $xr2, $xr0
	xvsrli.w	$xr2, $xr2, 1
	xvand.v	$xr2, $xr2, $xr1
	bstrpick.d	$t3, $a5, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr4, $t3, $s4
	bstrpick.d	$t3, $a7, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr5, $t3, $s0
	bstrpick.d	$t3, $a6, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr6, $t3, $s0
	xvor.v	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 1
	xvand.v	$xr4, $xr4, $xr7
	xvor.v	$xr3, $xr6, $xr3
	xvor.v	$xr2, $xr3, $xr2
	xvor.v	$xr2, $xr2, $xr4
	xvst	$xr2, $t1, 0
	addi.w	$a6, $a6, 8
	addi.w	$a5, $a5, 8
	addi.w	$a7, $a7, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB0_92
# %bb.93:                               # %middle.block313
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_79
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_94:                               # %land.rhs277
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$a0, $a0, %got_pc_lo12(endposition)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 0
	and	$a0, $a0, $a2
	sltu	$a0, $zero, $a0
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB0_98
.LBB0_95:                               # %if.then286
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_133
# %bb.96:                               # %if.end291
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$s7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_98
# %bb.97:                               # %if.then295
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $t4, $a0
	addi.d	$a0, $sp, 423
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	move	$s5, $t4
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	move	$t4, $s5
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 200                   # 8-byte Folded Reload
.LBB0_98:                               # %if.end300
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_119
# %bb.99:                               # %iter.check259
                                        #   in Loop: Header=BB0_36 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a0, $a0, %got_pc_lo12(Init)
	ld.w	$a0, $a0, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_116
# %bb.100:                              # %vector.main.loop.iter.check261
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB0_109
# %bb.101:                              #   in Loop: Header=BB0_36 Depth=2
	move	$a2, $zero
	b	.LBB0_113
.LBB0_102:                              # %vector.scevcheck316
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a3, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_74
# %bb.103:                              # %vector.scevcheck316
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a2, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_74
# %bb.104:                              # %vector.scevcheck316
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a4, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_74
# %bb.105:                              # %vector.memcheck317
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_74
# %bb.106:                              # %vector.ph321
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s5
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_107:                              # %vector.body330
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $t0, 0
	xvand.v	$xr3, $xr2, $xr0
	xvsrli.w	$xr2, $xr2, 1
	xvand.v	$xr2, $xr2, $xr1
	bstrpick.d	$t3, $a5, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr4, $t3, $s0
	bstrpick.d	$t3, $a7, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr5, $t3, $s4
	bstrpick.d	$t3, $a6, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr6, $t3, $s4
	xvor.v	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 1
	xvand.v	$xr4, $xr4, $xr7
	xvor.v	$xr3, $xr6, $xr3
	xvor.v	$xr2, $xr3, $xr2
	xvor.v	$xr2, $xr2, $xr4
	xvst	$xr2, $t1, 0
	addi.w	$a6, $a6, 8
	addi.w	$a5, $a5, 8
	addi.w	$a7, $a7, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB0_107
# %bb.108:                              # %middle.block339
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_74
	b	.LBB0_76
.LBB0_109:                              # %vector.ph262
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_110:                              # %vector.body267
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB0_110
# %bb.111:                              # %middle.block270
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_118
# %bb.112:                              # %vec.epilog.iter.check275
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_116
.LBB0_113:                              # %vec.epilog.ph274
                                        #   in Loop: Header=BB0_36 Depth=2
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	alsl.d	$a2, $a3, $s0, 2
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_114:                              # %vec.epilog.vector.body282
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_114
# %bb.115:                              # %vec.epilog.middle.block286
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_118
.LBB0_116:                              # %for.body305.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	addi.d	$a1, $a3, -1
	alsl.d	$a2, $a3, $s4, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB0_117:                              # %for.body305
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_117
.LBB0_118:                              # %for.end312.loopexit
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.wu	$s3, $a0, 0
	srli.d	$a0, $s3, 1
	and	$fp, $a0, $s1
.LBB0_119:                              # %for.end312
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a1, $t4, $a1
	and	$a2, $s3, $a0
	or	$a2, $fp, $a2
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	st.w	$a2, $s7, 0
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	bltu	$a2, $t8, .LBB0_35
# %bb.120:                              # %for.body327.lr.ph
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.w	$a2, $t5, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_124
.LBB0_121:                              # %for.body327.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$fp, $t4
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s0, 2
	alsl.d	$a6, $a7, $s4, 2
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_122:                              # %for.body327
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s1
	bstrpick.d	$t2, $a3, 31, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t2, $s4
	bstrpick.d	$t3, $a4, 31, 0
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $t3, $s0
	bstrpick.d	$t4, $a2, 31, 0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $t4, $s0
	or	$t2, $t3, $t2
	bstrpick.d	$t2, $t2, 31, 1
	and	$t2, $t2, $s2
	or	$t1, $t4, $t1
	or	$t0, $t1, $t0
	or	$t0, $t0, $t2
	st.w	$t0, $a6, 0
	addi.w	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, 4
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	and	$t0, $a7, $s6
	addi.d	$a6, $a6, 4
	beqz	$t0, .LBB0_122
# %bb.123:                              #   in Loop: Header=BB0_36 Depth=2
	move	$t4, $fp
	b	.LBB0_35
.LBB0_124:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a3, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_121
# %bb.125:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a2, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_121
# %bb.126:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.d	$a5, $a4, $t6
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_121
# %bb.127:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_36 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_121
# %bb.128:                              # %vector.ph235
                                        #   in Loop: Header=BB0_36 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_129:                              # %vector.body244
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $t0, 0
	xvand.v	$xr3, $xr2, $xr0
	xvsrli.w	$xr2, $xr2, 1
	xvand.v	$xr2, $xr2, $xr1
	bstrpick.d	$t3, $a5, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr4, $t3, $s4
	bstrpick.d	$t3, $a7, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr5, $t3, $s0
	bstrpick.d	$t3, $a6, 31, 0
	slli.d	$t3, $t3, 2
	xvldx	$xr6, $t3, $s0
	xvor.v	$xr4, $xr5, $xr4
	xvsrli.w	$xr4, $xr4, 1
	xvand.v	$xr4, $xr4, $xr7
	xvor.v	$xr3, $xr6, $xr3
	xvor.v	$xr2, $xr3, $xr2
	xvor.v	$xr2, $xr2, $xr4
	xvst	$xr2, $t1, 0
	addi.w	$a6, $a6, 8
	addi.w	$a5, $a5, 8
	addi.w	$a7, $a7, 8
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB0_129
# %bb.130:                              # %middle.block252
                                        #   in Loop: Header=BB0_36 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	beq	$a5, $a6, .LBB0_35
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_131:                              # %while.end
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	sub.w	$s7, $a0, $a1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	blt	$s7, $a0, .LBB0_31
# %bb.132:                              # %if.then358
                                        #   in Loop: Header=BB0_32 Depth=1
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 0
	lu12i.w	$s7, 12
	b	.LBB0_31
.LBB0_133:                              # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(num_of_matched)
	ld.d	$a0, $a0, %got_pc_lo12(num_of_matched)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(CurrentFileName)
	ld.d	$a0, $a0, %got_pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_134:                              # %cleanup
	lu12i.w	$a0, 23
	ori	$a0, $a0, 2720
	add.d	$sp, $sp, $a0
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
.Lfunc_end0:
	.size	asearch1, .Lfunc_end0-asearch1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CurrentFileName
