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
	ori	$a3, $a3, 2704
	sub.d	$sp, $sp, $a3
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(I)
	ld.d	$a4, $a0, %got_pc_lo12(I)
	ld.w	$a0, $a4, 0
	bnez	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(Init1)
	ld.d	$a1, $a1, %got_pc_lo12(Init1)
	addi.w	$a3, $zero, -1
	lu32i.d	$a3, 0
	st.w	$a3, $a1, 0
.LBB0_2:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(DD)
	ld.d	$a3, $a1, %got_pc_lo12(DD)
	ld.w	$a1, $a3, 0
	addi.w	$a5, $a2, 1
	bgeu	$a2, $a1, .LBB0_4
# %bb.3:                                # %if.then2
	st.w	$a5, $a3, 0
.LBB0_4:                                # %if.end3
	bgeu	$a2, $a0, .LBB0_6
# %bb.5:                                # %if.then5
	st.w	$a5, $a4, 0
.LBB0_6:                                # %if.end7
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(S)
	ld.d	$a1, $a0, %got_pc_lo12(S)
	ld.w	$a0, $a1, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	bgeu	$a2, $a0, .LBB0_8
# %bb.7:                                # %if.then9
	st.w	$a5, $a1, 0
.LBB0_8:                                # %if.end11
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.w	$a3, $a0, 0
	lu12i.w	$a0, 11
	ori	$a0, $a0, 4095
	addi.d	$a1, $sp, 407
	ori	$a2, $zero, 10
	stx.b	$a2, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(NO_ERR_MASK)
	ld.d	$a0, $a0, %got_pc_lo12(NO_ERR_MASK)
	pcalau12i	$a1, %got_pc_hi20(D_endpos)
	ld.d	$a1, $a1, %got_pc_lo12(D_endpos)
	ld.w	$fp, $a1, 0
	ori	$a1, $zero, 2
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	bltu	$a3, $a1, .LBB0_11
# %bb.9:                                # %for.body.preheader
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $fp, 1
	addi.w	$a1, $a1, -1
	or	$fp, $a2, $fp
	bnez	$a1, .LBB0_10
.LBB0_11:                               # %for.end
	ld.w	$s2, $a0, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 1
	bstrpick.d	$a2, $a1, 31, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$s8, $a0, 31, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_13
# %bb.12:                               # %for.cond25.preheader
	slli.d	$s4, $a2, 2
	lu12i.w	$a0, 24
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 24
	ori	$a0, $a0, 480
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
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
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB0_15
# %bb.14:
	move	$a4, $a2
	b	.LBB0_25
.LBB0_15:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB0_18
# %bb.16:
	move	$a3, $zero
	b	.LBB0_22
.LBB0_17:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB0_28
.LBB0_18:                               # %vector.ph
	andi	$a4, $a1, 12
	move	$a3, $a1
	bstrins.d	$a3, $zero, 3, 0
	xvreplgr2vr.w	$xr0, $a0
	slli.d	$a5, $a2, 2
	addi.d	$a6, $a5, 32
	lu12i.w	$a5, 24
	ori	$a5, $a5, 480
	add.d	$a5, $sp, $a5
	add.d	$a5, $a5, $a6
	lu12i.w	$a7, 24
	ori	$a7, $a7, 408
	add.d	$a7, $sp, $a7
	add.d	$a6, $a7, $a6
	move	$a7, $a3
	.p2align	4, , 16
.LBB0_19:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a6, -32
	xvst	$xr0, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr0, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB0_19
# %bb.20:                               # %middle.block
	beq	$a1, $a3, .LBB0_27
# %bb.21:                               # %vec.epilog.iter.check
	beqz	$a4, .LBB0_133
.LBB0_22:                               # %vec.epilog.ph
	move	$a5, $a1
	bstrins.d	$a5, $zero, 1, 0
	add.d	$a4, $a5, $a2
	vreplgr2vr.w	$vr0, $a0
	sub.d	$a6, $a3, $a5
	add.d	$a3, $a3, $a2
	lu12i.w	$a2, 24
	ori	$a2, $a2, 480
	add.d	$a2, $sp, $a2
	alsl.d	$a2, $a3, $a2, 2
	lu12i.w	$a7, 24
	ori	$a7, $a7, 408
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
	beq	$a1, $a5, .LBB0_27
.LBB0_25:                               # %for.body28.preheader
	addi.d	$a1, $a4, -1
	lu12i.w	$a2, 24
	ori	$a2, $a2, 408
	add.d	$a2, $sp, $a2
	alsl.d	$a2, $a4, $a2, 2
	lu12i.w	$a3, 24
	ori	$a3, $a3, 480
	add.d	$a3, $sp, $a3
	alsl.d	$a3, $a4, $a3, 2
	.p2align	4, , 16
.LBB0_26:                               # %for.body28
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_26
.LBB0_27:
	st.d	$zero, $sp, 304                 # 8-byte Folded Spill
.LBB0_28:                               # %while.cond.preheader
	lu12i.w	$s7, 12
	addi.d	$a0, $sp, 407
	add.d	$a1, $a0, $s7
	move	$a0, $s1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	blez	$a0, .LBB0_132
# %bb.29:                               # %while.body.lr.ph
	st.d	$zero, $sp, 376                 # 8-byte Folded Spill
	nor	$a1, $fp, $zero
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	lu12i.w	$a1, 24
	ori	$a1, $a1, 408
	add.d	$s4, $sp, $a1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$s6, $a4, $s4, 2
	slli.d	$a1, $a4, 2
	lu12i.w	$a2, 24
	ori	$a2, $a2, 480
	add.d	$s0, $sp, $a2
	alsl.d	$a2, $a4, $s0, 2
	st.d	$a2, $sp, 368                   # 8-byte Folded Spill
	alsl.d	$a2, $s8, $s0, 2
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a2, $s8, $s4, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bstrpick.d	$a5, $t8, 31, 0
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a6, $a2, 1
	sub.d	$a2, $s8, $a4
	sltu	$a3, $s8, $a2
	masknez	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a6, 32, 3
	slli.d	$a6, $a2, 3
	st.d	$a6, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a2, $a2, $a5, 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	xvreplgr2vr.w	$xr7, $s2
	andi	$a2, $a3, 12
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 4
	slli.d	$a6, $a2, 4
	st.d	$a6, $sp, 160                   # 8-byte Folded Spill
	alsl.d	$a2, $a2, $a4, 4
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a3, $a2, 2
	alsl.d	$a2, $a2, $a4, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a2, $a5, $s0, 2
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a2, $a5, $s4, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	nor	$a2, $a2, $zero
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 32
	add.d	$a2, $s0, $a1
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $s4, $a1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a1, $zero, $a3
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	move	$a1, $s7
	xvst	$xr7, $sp, 208                  # 32-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$a5, $sp, 360                   # 8-byte Folded Spill
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_30:                               # %if.end359
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sltui	$fp, $a0, 3
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $s3, $s7
	addi.d	$a2, $sp, 407
	add.d	$a1, $a2, $a1
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 12
	sub.w	$a0, $a1, $s7
	move	$s7, $a1
	masknez	$a0, $a0, $fp
	maskeqz	$a1, $a1, $fp
	or	$fp, $a1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	blez	$a0, .LBB0_132
.LBB0_31:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_121 Depth 3
	add.w	$a2, $a0, $s7
	bstrpick.d	$a3, $a0, 31, 14
	ori	$s1, $s7, 1
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	bltu	$a2, $a3, .LBB0_33
# %bb.32:                               # %if.end78
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	move	$fp, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	add.w	$a3, $a2, $a0
	bstrpick.d	$a0, $a3, 31, 0
	addi.d	$a2, $sp, 407
	stx.b	$zero, $a0, $a2
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	bltu	$a3, $s1, .LBB0_129
.LBB0_33:                               # %while.body82.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	pcalau12i	$a0, %got_pc_hi20(Init1)
	ld.d	$a0, $a0, %got_pc_lo12(Init1)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %if.end353
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	bgeu	$s7, $a2, .LBB0_129
.LBB0_35:                               # %while.body82
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #       Child Loop BB0_91 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #       Child Loop BB0_121 Depth 3
	bstrpick.d	$a2, $s7, 31, 0
	addi.d	$a3, $sp, 407
	ldx.b	$a2, $a2, $a3
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	addi.w	$a4, $a3, 0
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %got_pc_hi20(Mask)
	ld.d	$s3, $a3, %got_pc_lo12(Mask)
	ld.wu	$fp, $s6, 0
	ldx.w	$s1, $s3, $a2
	and	$a2, $fp, $a0
	srli.d	$a3, $fp, 1
	and	$s6, $a3, $s1
	or	$s5, $s6, $a2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	st.w	$s5, $a2, 0
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	bltu	$a4, $t8, .LBB0_40
# %bb.36:                               # %for.body99.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.w	$a2, $t6, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_45
.LBB0_37:                               # %for.body99.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s4, 2
	alsl.d	$a6, $a7, $s0, 2
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_38:                               # %for.body99
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s1
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
	slli.d	$t0, $a7, 31
	addi.d	$a6, $a6, 4
	bgez	$t0, .LBB0_38
.LBB0_39:                               # %for.end123.loopexit
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.w	$s5, $a2, 0
.LBB0_40:                               # %for.end123
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	and	$a2, $s5, $a2
	addi.w	$a2, $a2, 0
	ori	$a6, $s7, 1
	beqz	$a2, .LBB0_71
# %bb.41:                               # %if.then128
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_52
# %bb.42:                               # %if.then128
                                        #   in Loop: Header=BB0_35 Depth=2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_44
# %bb.43:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.w	$a2, $a2, 0
	andn	$a0, $a2, $a0
	beqz	$a0, .LBB0_53
.LBB0_44:                               #   in Loop: Header=BB0_35 Depth=2
	move	$a0, $zero
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB0_53
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_45:                               # %vector.scevcheck383
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a3, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_37
# %bb.46:                               # %vector.scevcheck383
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a2, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_37
# %bb.47:                               # %vector.scevcheck383
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a4, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_37
# %bb.48:                               # %vector.memcheck387
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_37
# %bb.49:                               # %vector.ph391
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_50:                               # %vector.body400
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	bnez	$t2, .LBB0_50
# %bb.51:                               # %middle.block409
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_37
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_52:                               # %land.rhs
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.w	$a2, $a2, 0
	and	$a0, $a2, $a0
	sltu	$a0, $zero, $a0
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB0_56
.LBB0_53:                               # %if.then146
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_131
# %bb.54:                               # %if.end151
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_56
# %bb.55:                               # %if.then155
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a2, $s7, $a0
	addi.d	$a0, $sp, 407
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	move	$s5, $a6
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	move	$a6, $s5
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
.LBB0_56:                               # %if.end160
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_70
# %bb.57:                               # %iter.check353
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a0, $a0, %got_pc_lo12(Init)
	ld.w	$a0, $a0, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $a4
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_67
# %bb.58:                               # %vector.main.loop.iter.check355
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_35 Depth=2
	move	$a2, $zero
	b	.LBB0_64
.LBB0_60:                               # %vector.ph356
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_61:                               # %vector.body361
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB0_61
# %bb.62:                               # %middle.block364
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_69
# %bb.63:                               # %vec.epilog.iter.check368
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_67
.LBB0_64:                               # %vec.epilog.ph370
                                        #   in Loop: Header=BB0_35 Depth=2
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$a3, $a4, $a2
	alsl.d	$a2, $a3, $s0, 2
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_65:                               # %vec.epilog.vector.body375
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_65
# %bb.66:                               # %vec.epilog.middle.block379
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_69
.LBB0_67:                               # %for.body165.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$a1, $a3, -1
	alsl.d	$a2, $a3, $s4, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB0_68:                               # %for.body165
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_68
.LBB0_69:                               # %for.end172.loopexit
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.wu	$fp, $a5, 0
	srli.d	$a0, $fp, 1
	and	$s6, $a0, $s1
.LBB0_70:                               # %for.end172
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $a6, $a1
	and	$a2, $fp, $a0
	or	$a2, $s6, $a2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	and	$s5, $a2, $a3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	st.w	$s5, $a2, 0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	bgeu	$a2, $t8, .LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_35 Depth=2
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_72:                               # %for.body187.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=2
	move	$fp, $a6
	ld.w	$a2, $t6, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_101
.LBB0_73:                               # %for.body187.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s4, 2
	alsl.d	$a6, $a7, $s0, 2
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_74:                               # %for.body187
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t0, $a5, 0
	and	$t1, $t0, $a0
	srli.d	$t0, $t0, 1
	and	$t0, $t0, $s1
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
	slli.d	$t0, $a7, 31
	addi.d	$a6, $a6, 4
	bgez	$t0, .LBB0_74
.LBB0_75:                               # %if.end213.loopexit
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.w	$s5, $a2, 0
	move	$a6, $fp
.LBB0_76:                               # %if.end213
                                        #   in Loop: Header=BB0_35 Depth=2
	bstrpick.d	$a2, $a6, 31, 0
	addi.d	$a3, $sp, 407
	ldx.b	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$s1, $s3, $a2
	and	$a2, $a0, $s5
	bstrpick.d	$a3, $s5, 31, 1
	and	$fp, $a3, $s1
	or	$a2, $fp, $a2
	st.w	$a2, $s6, 0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	bltu	$a3, $t8, .LBB0_81
# %bb.77:                               # %for.body232.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.w	$a2, $t6, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_86
.LBB0_78:                               # %for.body232.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s0, 2
	alsl.d	$a6, $a7, $s4, 2
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_79:                               # %for.body232
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	slli.d	$t0, $a7, 31
	addi.d	$a6, $a6, 4
	bgez	$t0, .LBB0_79
.LBB0_80:                               # %for.end259.loopexit
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.w	$a2, $s6, 0
.LBB0_81:                               # %for.end259
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	addi.w	$a2, $a2, 0
	addi.w	$s7, $s7, 2
	beqz	$a2, .LBB0_34
# %bb.82:                               # %if.then264
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a0, $a0, %got_pc_lo12(AND)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_93
# %bb.83:                               # %if.then264
                                        #   in Loop: Header=BB0_35 Depth=2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_85
# %bb.84:                               # %land.lhs.true268
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.w	$a2, $a2, 0
	andn	$a0, $a2, $a0
	beqz	$a0, .LBB0_94
.LBB0_85:                               #   in Loop: Header=BB0_35 Depth=2
	move	$a0, $zero
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	bne	$a0, $a2, .LBB0_94
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_86:                               # %vector.scevcheck292
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a3, $t5
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_78
# %bb.87:                               # %vector.scevcheck292
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a2, $t5
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_78
# %bb.88:                               # %vector.scevcheck292
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a4, $t5
	addi.w	$a5, $a5, -2
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_78
# %bb.89:                               # %vector.memcheck296
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	sub.d	$a6, $a7, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	beqz	$a6, .LBB0_78
# %bb.90:                               # %vector.ph300
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_91:                               # %vector.body309
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	bnez	$t2, .LBB0_91
# %bb.92:                               # %middle.block318
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_78
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_93:                               # %land.rhs277
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(endposition)
	ld.d	$a2, $a2, %got_pc_lo12(endposition)
	ld.w	$a2, $a2, 0
	and	$a0, $a2, $a0
	sltu	$a0, $zero, $a0
	pcalau12i	$a2, %got_pc_hi20(INVERSE)
	ld.d	$a2, $a2, %got_pc_lo12(INVERSE)
	ld.w	$a2, $a2, 0
	beq	$a0, $a2, .LBB0_97
.LBB0_94:                               # %if.then286
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(FILENAMEONLY)
	ld.d	$a0, $a0, %got_pc_lo12(FILENAMEONLY)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_131
# %bb.95:                               # %if.end291
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_97
# %bb.96:                               # %if.then295
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$a2, $s7, $a0
	addi.d	$a0, $sp, 407
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(output)
	jirl	$ra, $ra, 0
	xvld	$xr7, $sp, 208                  # 32-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
.LBB0_97:                               # %if.end300
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_118
# %bb.98:                               # %iter.check262
                                        #   in Loop: Header=BB0_35 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Init)
	ld.d	$a0, $a0, %got_pc_lo12(Init)
	ld.w	$a0, $a0, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	move	$a3, $a4
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ori	$a2, $zero, 4
	bltu	$a1, $a2, .LBB0_115
# %bb.99:                               # %vector.main.loop.iter.check264
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB0_108
# %bb.100:                              #   in Loop: Header=BB0_35 Depth=2
	move	$a2, $zero
	b	.LBB0_112
.LBB0_101:                              # %vector.scevcheck321
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a3, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_73
# %bb.102:                              # %vector.scevcheck321
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a2, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_73
# %bb.103:                              # %vector.scevcheck321
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a4, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_73
# %bb.104:                              # %vector.memcheck325
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_73
# %bb.105:                              # %vector.ph329
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_106:                              # %vector.body338
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	bnez	$t2, .LBB0_106
# %bb.107:                              # %middle.block347
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	bne	$a5, $a6, .LBB0_73
	b	.LBB0_75
.LBB0_108:                              # %vector.ph265
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_109:                              # %vector.body270
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB0_109
# %bb.110:                              # %middle.block273
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_117
# %bb.111:                              # %vec.epilog.iter.check277
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_115
.LBB0_112:                              # %vec.epilog.ph279
                                        #   in Loop: Header=BB0_35 Depth=2
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.d	$a3, $a4, $a2
	alsl.d	$a2, $a3, $s0, 2
	alsl.d	$a3, $a3, $s4, 2
	.p2align	4, , 16
.LBB0_113:                              # %vec.epilog.vector.body284
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, 0
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB0_113
# %bb.114:                              # %vec.epilog.middle.block288
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_117
.LBB0_115:                              # %for.body305.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	addi.d	$a1, $a3, -1
	alsl.d	$a2, $a3, $s4, 2
	alsl.d	$a3, $a3, $s0, 2
	.p2align	4, , 16
.LBB0_116:                              # %for.body305
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$a0, $a2, 0
	st.w	$a0, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bltu	$a1, $s8, .LBB0_116
.LBB0_117:                              # %for.end312.loopexit
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.wu	$s5, $a0, 0
	srli.d	$a0, $s5, 1
	and	$fp, $a0, $s1
.LBB0_118:                              # %for.end312
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	sub.w	$a1, $s7, $a1
	and	$a2, $s5, $a0
	or	$a2, $fp, $a2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	and	$a2, $a2, $a3
	st.w	$a2, $s6, 0
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	bltu	$a2, $t8, .LBB0_34
# %bb.119:                              # %for.body327.lr.ph
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.w	$a2, $t6, 0
	ld.w	$a3, $t7, 0
	ld.w	$a4, $ra, 0
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$a5, $sp, 392                   # 8-byte Folded Reload
	ori	$a6, $zero, 7
	bgeu	$a5, $a6, .LBB0_122
.LBB0_120:                              # %for.body327.preheader
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a4, $a7, $a4
	sub.w	$a3, $a7, $a3
	sub.w	$a2, $a7, $a2
	alsl.d	$a5, $a7, $s0, 2
	alsl.d	$a6, $a7, $s4, 2
	ld.d	$t0, $sp, 328                   # 8-byte Folded Reload
	add.w	$a7, $t0, $a7
	.p2align	4, , 16
.LBB0_121:                              # %for.body327
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	slli.d	$t0, $a7, 31
	addi.d	$a6, $a6, 4
	bgez	$t0, .LBB0_121
	b	.LBB0_34
.LBB0_122:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a3, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_120
# %bb.123:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a2, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_120
# %bb.124:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.d	$a5, $a4, $t5
	addi.w	$a5, $a5, -2
	move	$a7, $t0
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	bltu	$a5, $a6, .LBB0_120
# %bb.125:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_35 Depth=2
	sub.w	$a5, $t8, $a3
	bstrpick.d	$a6, $a5, 31, 0
	sub.d	$a6, $t0, $a6
	bstrpick.d	$a6, $a6, 61, 3
	slli.d	$a6, $a6, 3
	move	$a7, $t0
	beqz	$a6, .LBB0_120
# %bb.126:                              # %vector.ph238
                                        #   in Loop: Header=BB0_35 Depth=2
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.w	$xr1, $s1
	sub.w	$a6, $t8, $a2
	sub.w	$a7, $t8, $a4
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_127:                              # %vector.body247
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
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
	bnez	$t2, .LBB0_127
# %bb.128:                              # %middle.block255
                                        #   in Loop: Header=BB0_35 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	beq	$a5, $a6, .LBB0_34
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_129:                              # %while.end
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	sub.w	$s7, $a0, $a1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$s7, $a0, .LBB0_30
# %bb.130:                              # %if.then358
                                        #   in Loop: Header=BB0_31 Depth=1
	pcalau12i	$a0, %got_pc_hi20(TRUNCATE)
	ld.d	$a0, $a0, %got_pc_lo12(TRUNCATE)
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 0
	lu12i.w	$s7, 12
	b	.LBB0_30
.LBB0_131:                              # %cleanup.sink.split
	pcalau12i	$a0, %got_pc_hi20(num_of_matched)
	ld.d	$a0, $a0, %got_pc_lo12(num_of_matched)
	ld.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(CurrentFileName)
	ld.d	$a0, $a0, %got_pc_lo12(CurrentFileName)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_132:                              # %cleanup
	lu12i.w	$a0, 23
	ori	$a0, $a0, 2704
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
.LBB0_133:
	add.d	$a4, $a3, $a2
	b	.LBB0_25
.Lfunc_end0:
	.size	asearch1, .Lfunc_end0-asearch1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CurrentFileName
