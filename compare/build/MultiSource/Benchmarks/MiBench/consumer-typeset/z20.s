	.file	"z20.c"
	.text
	.globl	FlushGalley                     # -- Begin function FlushGalley
	.p2align	5
	.type	FlushGalley,@function
FlushGalley:                            # @FlushGalley
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1520
	st.d	$ra, $sp, 1512                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1504                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1496                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1488                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1480                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1472                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1464                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1456                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1448                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1440                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1432                  # 8-byte Folded Spill
	move	$s7, $a0
	ld.bu	$a0, $a0, 43
	andi	$a0, $a0, 1
	sltui	$a2, $a0, 1
	slli.d	$a1, $a2, 3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a0, $zero, 19
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 17
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 16
	masknez	$a0, $a0, $a2
	ori	$a1, $zero, 8
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s3, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(InputSym)
	ld.d	$a0, $a0, %got_pc_lo12(InputSym)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $zero
	ori	$s1, $zero, 9
	lu12i.w	$a0, -393217
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
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
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
.LBB0_1:                                # %RESUME
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_235 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_60 Depth 4
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_169 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #     Child Loop BB0_216 Depth 2
                                        #     Child Loop BB0_241 Depth 2
                                        #     Child Loop BB0_324 Depth 2
                                        #     Child Loop BB0_223 Depth 2
                                        #     Child Loop BB0_228 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_271 Depth 2
                                        #     Child Loop BB0_273 Depth 2
                                        #     Child Loop BB0_278 Depth 2
                                        #     Child Loop BB0_378 Depth 2
                                        #     Child Loop BB0_401 Depth 2
                                        #       Child Loop BB0_402 Depth 3
                                        #       Child Loop BB0_405 Depth 3
                                        #     Child Loop BB0_418 Depth 2
                                        #       Child Loop BB0_419 Depth 3
                                        #     Child Loop BB0_439 Depth 2
                                        #     Child Loop BB0_444 Depth 2
	ld.bu	$a0, $s7, 32
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_3
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s6, $s7, 24
	bne	$s6, $s7, .LBB0_5
# %bb.4:                                # %if.then4
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s7, 24
	.p2align	4, , 16
.LBB0_5:                                # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB0_5
# %bb.6:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 119
	beq	$a0, $a1, .LBB0_473
# %bb.7:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB0_15
# %bb.8:                                # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB0_16
# %bb.9:                                # %sw.bb23
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $sp, 1424
	addi.d	$a2, $sp, 1416
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AttachGalley)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s7, 24
	.p2align	4, , 16
.LBB0_10:                               # %for.cond31
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a1, $s6, 32
	beqz	$a1, .LBB0_10
# %bb.11:                               # %for.end42
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB0_21
# %bb.12:                               # %for.end42
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB0_13:                               # %sw.bb61
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_319
# %bb.14:                               # %if.then64
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	b	.LBB0_1
	.p2align	4, , 16
.LBB0_15:                               # %sw.bb190
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s6, 80
	ld.d	$a0, $a0, 80
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_22
	b	.LBB0_474
	.p2align	4, , 16
.LBB0_16:                               # %sw.default197
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s0
	ld.d	$s0, $s3, 0
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a5, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_22
.LBB0_17:                               # %sw.bb129
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s7, 42
	slli.d	$a0, $a0, 51
	bltz	$a0, .LBB0_234
# %bb.18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s6, 80
	ld.d	$a0, $a0, 80
	pcalau12i	$a1, %got_pc_hi20(ForceGalleySym)
	ld.d	$a1, $a1, %got_pc_lo12(ForceGalleySym)
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB0_234
# %bb.19:                               # %if.else175
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$fp, $zero, 1
	bnez	$s0, .LBB0_237
# %bb.20:                               # %lor.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s6, 42
	bstrpick.d	$fp, $a0, 5, 5
	b	.LBB0_237
.LBB0_21:                               # %sw.default
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB0_22:                               # %sw.epilog203
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s8, $s6, 80
	ld.wu	$a0, $s8, 40
	lu12i.w	$a1, 393216
	and	$a1, $a0, $a1
	bnez	$a1, .LBB0_24
# %bb.23:                               # %if.then211
                                        #   in Loop: Header=BB0_1 Depth=1
	lu12i.w	$a1, 131072
	or	$a0, $a0, $a1
	st.w	$a0, $s8, 40
.LBB0_24:                               # %if.end216
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s3, $s7, 8
	st.d	$zero, $sp, 1424
	beq	$s3, $s7, .LBB0_458
# %bb.25:                               # %for.cond247.preheader.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	move	$s2, $zero
	srli.d	$a0, $a0, 16
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	and	$s4, $a1, $a0
	addi.d	$a4, $s8, 24
	addi.d	$a0, $s8, 16
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	masknez	$a1, $a4, $a3
	maskeqz	$a2, $a0, $a3
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a4, $a3
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_26:                               # %if.end1724
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $s0, 44
	andi	$a0, $a0, 128
	beqz	$a0, .LBB0_330
.LBB0_27:                               #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $s7
	move	$a2, $s2
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ori	$s1, $zero, 9
.LBB0_28:                               # %for.inc1753
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s3, $s3, 8
	move	$s2, $a2
	beq	$s3, $s7, .LBB0_452
.LBB0_29:                               # %for.cond247.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_120 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_60 Depth 4
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	move	$a0, $s3
	.p2align	4, , 16
.LBB0_30:                               # %for.cond247
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_30
# %bb.31:                               # %for.cond247
                                        #   in Loop: Header=BB0_29 Depth=2
	bne	$a1, $s1, .LBB0_34
# %bb.32:                               # %if.then264
                                        #   in Loop: Header=BB0_29 Depth=2
	st.d	$a0, $sp, 1416
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_33:                               # %for.cond276
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_33
.LBB0_34:                               # %if.end288
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a3, $a1, -1
	st.d	$a0, $sp, 1416
	ori	$a2, $zero, 137
	bltu	$a2, $a3, .LBB0_94
# %bb.35:                               # %if.end288
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a2, $zero, 1
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_1)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_1)
	ldx.w	$a3, $a4, $a3
	add.d	$a3, $a4, $a3
	jr	$a3
.LBB0_36:                               # %sw.bb988
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a2, $a0, 40
	ld.wu	$a3, $s8, 40
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	and	$a2, $a2, $a4
	srli.d	$a3, $a3, 29
	bstrins.d	$a2, $a3, 30, 29
	st.w	$a2, $a0, 40
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_58
.LBB0_37:                               # %if.end1055
                                        #   in Loop: Header=BB0_29 Depth=2
	bnez	$s4, .LBB0_55
# %bb.38:                               # %if.then1057
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	bnez	$s1, .LBB0_54
# %bb.39:                               # %if.then1060
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB0_41
# %bb.40:                               # %if.then1087
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %if.end1089
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a0, $s8, 24
	ld.d	$a0, $a0, 0
	move	$s1, $a0
	.p2align	4, , 16
.LBB0_42:                               # %for.cond1096
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 0
	ld.bu	$a1, $s1, 32
	beqz	$a1, .LBB0_42
# %bb.43:                               # %for.end1107
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_45
# %bb.44:                               # %if.then1125
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 24
	ld.d	$a0, $a0, 0
.LBB0_45:                               # %if.end1127
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a2, $sp, 1368
	addi.d	$a3, $sp, 1360
	addi.d	$a4, $sp, 1352
	addi.d	$a5, $sp, 1344
	addi.d	$a6, $sp, 1380
	move	$a1, $zero
	pcaddu18i	$ra, %call36(SetNeighbours)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1368
	bnez	$a0, .LBB0_48
# %bb.46:                               # %lor.lhs.false1133
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1416
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB0_48
# %bb.47:                               # %if.then1145
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %if.end1147
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1352
	beqz	$a0, .LBB0_50
# %bb.49:                               # %if.then1150
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %if.end1152
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 1380
	ori	$a1, $zero, 153
	beq	$a0, $a1, .LBB0_53
# %bb.51:                               # %lor.lhs.false1155
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1416
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -2
	ori	$a1, $zero, 7
	bltu	$a0, $a1, .LBB0_53
# %bb.52:                               # %if.then1167
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_53:                               # %if.end1169
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$a0, $s1, 48
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	slli.d	$a1, $a2, 2
	ldx.w	$a3, $a0, $a1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $s1, 56
	ldx.w	$a1, $a3, $a1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	xori	$fp, $a2, 1
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ldx.w	$a0, $a3, $a1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $sp, 1400
	addi.d	$a3, $sp, 1336
	move	$a0, $s1
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1384
	addi.d	$a3, $sp, 1336
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1400
	ld.w	$a1, $sp, 1404
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	xor	$a0, $a0, $a4
	ld.w	$a2, $sp, 1408
	sltu	$a0, $zero, $a0
	xor	$a3, $a1, $a4
	sltu	$a3, $zero, $a3
	xor	$a2, $a2, $a4
	sltu	$a2, $zero, $a2
	maskeqz	$a2, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB0_54:                               # %if.end1199
                                        #   in Loop: Header=BB0_29 Depth=2
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 1416
	ld.bu	$a1, $a0, 32
	addi.d	$a1, $a1, -2
	ori	$a2, $zero, 7
	bgeu	$a1, $a2, .LBB0_75
.LBB0_55:                               #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
.LBB0_56:                               # %if.end1675
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$s7, $zero, 1
	beqz	$s0, .LBB0_70
# %bb.57:                               # %lor.end1685
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1424
	bnez	$a0, .LBB0_71
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_58:                               # %for.cond1005.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $s3, 8
	beq	$a2, $s7, .LBB0_66
.LBB0_59:                               # %for.cond1012.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_60 Depth 4
	move	$a3, $a2
	.p2align	4, , 16
.LBB0_60:                               # %for.cond1012
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB0_60
# %bb.61:                               # %for.cond1012
                                        #   in Loop: Header=BB0_59 Depth=3
	addi.d	$a5, $a4, -121
	ori	$a6, $zero, 2
	bltu	$a5, $a6, .LBB0_146
# %bb.62:                               # %for.cond1012
                                        #   in Loop: Header=BB0_59 Depth=3
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB0_65
# %bb.63:                               # %sw.bb1028
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.hu	$a3, $a3, 44
	andi	$a3, $a3, 512
	bnez	$a3, .LBB0_65
# %bb.64:                               # %if.then1035
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a2, $s7, 0
.LBB0_65:                               # %for.inc1042
                                        #   in Loop: Header=BB0_59 Depth=3
	ld.d	$a2, $a2, 8
	bne	$a2, $s7, .LBB0_59
.LBB0_66:                               # %for.end1046
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a2, $zero, 18
	bne	$a1, $a2, .LBB0_37
# %bb.67:                               # %if.then1052
                                        #   in Loop: Header=BB0_29 Depth=2
	pcaddu18i	$ra, %call36(VerticalHyphenate)
	jirl	$ra, $ra, 0
	b	.LBB0_37
.LBB0_68:                               # %sw.bb328
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a1, $a0, 40
	ld.wu	$a2, $s8, 40
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $a0, 40
.LBB0_69:                               # %for.inc1753
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a2, $s2
	b	.LBB0_28
.LBB0_70:                               # %lor.rhs1677
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $s6, 42
	bstrpick.d	$s7, $a0, 5, 5
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_27
.LBB0_71:                               # %if.then1689
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s0, $s3, 8
	ld.bu	$a0, $s0, 32
	bnez	$a0, .LBB0_331
	.p2align	4, , 16
.LBB0_72:                               # %for.cond1705
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_72
# %bb.73:                               # %for.cond1705
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_26
# %bb.74:                               # %if.then1722
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_26
.LBB0_75:                               # %if.then1211
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s5, $s0
	ld.d	$a1, $sp, 1360
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 2
	ld.w	$s0, $a0, 56
	ld.d	$a2, $sp, 1368
	alsl.d	$a1, $a3, $a1, 2
	ld.w	$s1, $a1, 56
	ld.w	$a1, $a0, 48
	addi.d	$a3, $a2, 44
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $fp, $a0
	sub.w	$a5, $a0, $s1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a4, $a0, 0
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(ActualGap)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 1368
	ld.hu	$a2, $a1, 44
	bstrpick.d	$a2, $a2, 12, 10
	slli.d	$a2, $a2, 10
	ori	$a3, $zero, 2048
	bne	$a2, $a3, .LBB0_78
# %bb.76:                               # %land.lhs.true1249
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.h	$a1, $a1, 46
	lu12i.w	$a2, 1
	blt	$a2, $a1, .LBB0_334
# %bb.77:                               # %land.lhs.true1249
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a3, $fp
	ld.w	$a1, $sp, 1400
	addi.w	$a2, $fp, 0
	bge	$a1, $a2, .LBB0_79
	b	.LBB0_334
.LBB0_78:                               # %lor.lhs.false1254
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a1, $sp, 1400
	addi.w	$a2, $fp, 0
	move	$a3, $fp
	blt	$a1, $a2, .LBB0_334
.LBB0_79:                               # %land.lhs.true1258
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $s0, $a1
	ld.w	$a2, $sp, 1404
	sub.d	$a1, $a1, $s1
	add.w	$fp, $a1, $a0
	add.w	$a0, $fp, $a3
	blt	$a2, $a0, .LBB0_334
# %bb.80:                               # %land.lhs.true1258
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $sp, 1408
	blt	$a0, $fp, .LBB0_334
# %bb.81:                               # %lor.lhs.false1267
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $s7, 104
	beqz	$a0, .LBB0_83
# %bb.82:                               # %land.lhs.true1271
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a1, $s7, 160
	blez	$a1, .LBB0_335
.LBB0_83:                               # %if.end1569
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $sp, 1416
	ld.hu	$a4, $s7, 42
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	xori	$a2, $a2, 1
	alsl.d	$a3, $a2, $a1, 2
	ld.w	$a2, $a3, 48
	andi	$a4, $a4, 32
	bnez	$a4, .LBB0_85
# %bb.84:                               # %if.else1606
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 0
	slt	$a5, $a2, $a4
	ld.w	$a3, $a3, 56
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$s1, $a4, $a2
	b	.LBB0_86
.LBB0_85:                               # %if.then1577
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a3, $a3, 56
	move	$s1, $zero
	add.w	$a3, $a3, $a2
.LBB0_86:                               # %if.end1639
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $s5
	ld.w	$a2, $sp, 1384
	blt	$a2, $s1, .LBB0_337
# %bb.87:                               # %land.lhs.true1643
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	ld.w	$a5, $sp, 1388
	maskeqz	$a2, $a2, $a4
	or	$s5, $a2, $a3
	add.w	$a2, $s1, $s5
	blt	$a5, $a2, .LBB0_337
# %bb.88:                               # %land.lhs.true1643
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a2, $sp, 1392
	blt	$a2, $s5, .LBB0_337
# %bb.89:                               # %if.end1667
                                        #   in Loop: Header=BB0_29 Depth=2
	st.d	$a1, $sp, 1360
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_56
# %bb.90:                               # %if.then1671
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.w	$a0, $s7, 160
	addi.d	$a0, $a0, -1
	st.w	$a0, $s7, 160
	b	.LBB0_56
.LBB0_91:                               # %sw.bb339
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 1424
	bnez	$a0, .LBB0_129
# %bb.92:                               # %if.then342
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB0_127
# %bb.93:                               # %if.else355
                                        #   in Loop: Header=BB0_29 Depth=2
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_128
.LBB0_94:                               # %sw.default1746
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $s0
	ld.d	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a5, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 3
	move	$a3, $zero
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_69
.LBB0_95:                               # %sw.bb292
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.wu	$a1, $a0, 40
	ld.wu	$a2, $s8, 40
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 29
	bstrins.d	$a1, $a2, 30, 29
	st.w	$a1, $a0, 40
	st.d	$a0, $sp, 1368
	beqz	$s4, .LBB0_108
# %bb.96:                               #   in Loop: Header=BB0_29 Depth=2
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB0_97:                               # %if.end314
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a0, $a0, 44
	andi	$a0, $a0, 512
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bnez	$a0, .LBB0_69
# %bb.98:                               # %if.then321
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.h	$a0, $s7, 42
	ori	$a0, $a0, 32
	st.h	$a0, $s7, 42
	b	.LBB0_69
.LBB0_99:                               # %sw.bb484
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$fp, $s0
	ld.d	$a0, $a0, 8
	.p2align	4, , 16
.LBB0_100:                              # %for.cond491
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_100
# %bb.101:                              # %for.end502
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s0, $a0, 24
	ld.d	$a0, $a0, 16
	beq	$s0, $a0, .LBB0_111
	.p2align	4, , 16
.LBB0_102:                              # %for.cond622
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB0_102
# %bb.103:                              # %for.cond622
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 124
	beq	$a0, $a1, .LBB0_105
# %bb.104:                              # %if.then639
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a5, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_105:                              # %if.end641
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(CheckComponentOrder)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 157
	beq	$a0, $a1, .LBB0_113
# %bb.106:                              # %if.end641
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 155
	beq	$a0, $a1, .LBB0_450
# %bb.107:                              # %if.end641
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$a2, $s2
	move	$s0, $fp
	ori	$a1, $zero, 156
	bne	$a0, $a1, .LBB0_28
	b	.LBB0_147
.LBB0_108:                              # %if.then302
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_97
# %bb.109:                              # %land.lhs.true305
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.hu	$a1, $a0, 44
	andi	$a1, $a1, 128
	bnez	$a1, .LBB0_97
# %bb.110:                              # %if.then311
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	b	.LBB0_97
.LBB0_111:                              # %if.then511
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$s3, $s3, 0
	ld.d	$a0, $s3, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a3, 0
	beq	$a2, $a0, .LBB0_137
# %bb.112:                              # %cond.false524
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a4, $a2, 16
	st.d	$a2, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_138
.LBB0_113:                              # %sw.bb643
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$a1, $s0, 24
	st.d	$s0, $a0, 0
	bne	$a1, $s0, .LBB0_115
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_114:                              # %cond.end710
                                        #   in Loop: Header=BB0_115 Depth=3
	ld.bu	$a3, $a1, 32
	st.d	$a1, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a1, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a1, 0
	ld.w	$a1, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a5, $a1
	ld.d	$a1, $s0, 24
	beq	$a1, $s0, .LBB0_120
.LBB0_115:                              # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $a3, 0
	beq	$a2, $a1, .LBB0_117
# %bb.116:                              # %cond.false658
                                        #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a1, 16
	st.d	$a2, $a4, 0
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB0_117:                              # %cond.end680
                                        #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a1, 8
	st.d	$a1, $a2, 0
	beq	$a4, $a1, .LBB0_114
# %bb.118:                              # %cond.false688
                                        #   in Loop: Header=BB0_115 Depth=3
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a1, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_119:                              # %cond.end810
                                        #   in Loop: Header=BB0_120 Depth=3
	ld.bu	$a3, $a1, 32
	st.d	$a1, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a1, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a1, 0
	ld.w	$a1, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$s0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a5, $a1
.LBB0_120:                              # %while.cond742.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 8
	beq	$a1, $s0, .LBB0_125
# %bb.121:                              # %while.body748
                                        #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a3, $a2, %got_pc_lo12(xx_link)
	ld.d	$a2, $a1, 24
	st.d	$a1, $a3, 0
	beq	$a2, $a1, .LBB0_123
# %bb.122:                              # %cond.false758
                                        #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a1, 16
	st.d	$a2, $a4, 0
	st.d	$a5, $a2, 16
	st.d	$a2, $a5, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
.LBB0_123:                              # %cond.end780
                                        #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a1, 8
	st.d	$a1, $a2, 0
	beq	$a4, $a1, .LBB0_119
# %bb.124:                              # %cond.false788
                                        #   in Loop: Header=BB0_120 Depth=3
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a1, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a1, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_119
.LBB0_125:                              # %while.end842
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $s0, 32
	st.d	$s0, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a4, $s0, 33
	pcalau12i	$a3, %got_pc_hi20(zz_lengths)
	ld.d	$a3, $a3, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a3, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a4, $a1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	ldx.d	$a4, $a1, $a4
	st.d	$a4, $s0, 0
	ld.w	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	slli.d	$a4, $a4, 3
	stx.d	$a5, $a1, $a4
	ld.d	$s3, $s3, 0
	ld.d	$a4, $s3, 8
	pcalau12i	$a5, %got_pc_hi20(xx_link)
	ld.d	$a6, $a5, %got_pc_lo12(xx_link)
	ld.d	$a7, $a4, 24
	st.d	$a4, $a6, 0
	beq	$a7, $a4, .LBB0_141
# %bb.126:                              # %cond.false885
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$t0, $a4, 16
	st.d	$a7, $a5, 0
	st.d	$t0, $a7, 16
	st.d	$a7, $t0, 24
	st.d	$a4, $a4, 24
	st.d	$a4, $a4, 16
	b	.LBB0_142
.LBB0_127:                              # %if.then353
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB0_128:                              # %if.end364
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 1424
.LBB0_129:                              # %if.end379
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB0_131
# %bb.130:                              # %if.else393
                                        #   in Loop: Header=BB0_29 Depth=2
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_132
.LBB0_131:                              # %if.then391
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_132:                              # %if.end402
                                        #   in Loop: Header=BB0_29 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $sp, 1424
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a4, $a2, 0
	beqz	$a4, .LBB0_134
# %bb.133:                              # %cond.false424
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a6, 8
.LBB0_134:                              # %cond.end448
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a3, $sp, 1416
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB0_69
# %bb.135:                              # %cond.end448
                                        #   in Loop: Header=BB0_29 Depth=2
	beqz	$a0, .LBB0_69
# %bb.136:                              # %cond.false457
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_69
.LBB0_137:                              #   in Loop: Header=BB0_29 Depth=2
	move	$a2, $zero
.LBB0_138:                              # %cond.end546
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $fp
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a0, 8
	st.d	$a0, $a2, 0
	beq	$a4, $a0, .LBB0_140
# %bb.139:                              # %cond.false554
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a0, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a4, 8
.LBB0_140:                              # %cond.end576
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$a3, $a0, 32
	st.d	$a0, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a0, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a0, 0
	ld.w	$a3, $a4, 0
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_69
	b	.LBB0_145
.LBB0_141:                              #   in Loop: Header=BB0_29 Depth=2
	move	$a7, $zero
.LBB0_142:                              # %cond.end907
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s0, $fp
	pcalau12i	$a5, %got_pc_hi20(xx_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(xx_tmp)
	ld.d	$t0, $a4, 8
	st.d	$a7, $a5, 0
	st.d	$a4, $a0, 0
	beq	$t0, $a4, .LBB0_144
# %bb.143:                              # %cond.false915
                                        #   in Loop: Header=BB0_29 Depth=2
	pcalau12i	$a7, %got_pc_hi20(zz_res)
	ld.d	$a7, $a7, %got_pc_lo12(zz_res)
	st.d	$t0, $a7, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $t0, 0
	ld.d	$t0, $a0, 0
	ld.d	$a4, $a7, 0
	ld.d	$a7, $t0, 0
	st.d	$a4, $a7, 8
	st.d	$t0, $t0, 0
	ld.d	$a4, $a6, 0
	st.d	$t0, $t0, 8
.LBB0_144:                              # %cond.end937
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$a6, $a4, 32
	addi.d	$a7, $a6, -11
	sltui	$a7, $a7, 2
	addi.d	$t0, $a4, 33
	add.d	$a3, $a3, $a6
	masknez	$a3, $a3, $a7
	maskeqz	$a6, $t0, $a7
	or	$a3, $a6, $a3
	ld.bu	$a3, $a3, 0
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a1, $a6
	st.d	$a4, $a0, 0
	st.w	$a3, $a2, 0
	st.d	$a6, $a4, 0
	ld.w	$a2, $a2, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a5, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a1, $a2
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_69
.LBB0_145:                              # %if.then612
                                        #   in Loop: Header=BB0_29 Depth=2
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_146:                              # %sw.bb1027
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a3, $sp, 1416
.LBB0_147:                              # %SUSPEND
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_149
.LBB0_148:                              # %if.then2475
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_149:                              # %if.end2477
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_152
# %bb.150:                              # %if.then2480
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_152
# %bb.151:                              # %if.then2482
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s2
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $s2
	xori	$a3, $fp, 1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_152:                              # %if.end2485
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1416
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 121
	bne	$a1, $a2, .LBB0_212
# %bb.153:                              # %land.lhs.true2491
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $s7, 96
	pcalau12i	$a1, %got_pc_hi20(AllowCrossDb)
	ld.d	$a1, $a1, %got_pc_lo12(AllowCrossDb)
	ld.w	$a1, $a1, 0
	beqz	$a2, .LBB0_162
# %bb.154:                              # %land.lhs.true2491
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$a1, .LBB0_162
# %bb.155:                              # %if.then2496
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $a2, 8
	.p2align	4, , 16
.LBB0_156:                              # %for.cond2504
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s7, 16
	ld.bu	$a0, $s7, 32
	beqz	$a0, .LBB0_156
# %bb.157:                              # %for.end2515
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s7, 34
	ld.d	$a1, $s7, 40
	ld.w	$a2, $s7, 36
	addi.d	$fp, $s7, 34
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_245
# %bb.158:                              # %if.end2524
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_160
.LBB0_159:                              # %if.then2530
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_160:                              # %if.end2532
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s6, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s6, 120
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s5, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s4, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s4, $a1
	beqz	$s0, .LBB0_246
# %bb.161:                              # %if.else2546
                                        #   in Loop: Header=BB0_1 Depth=1
	alsl.d	$a0, $a0, $s4, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB0_247
.LBB0_162:                              # %land.lhs.true3986
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a2, $a0, 42
	andi	$a2, $a2, 64
	beqz	$a2, .LBB0_220
# %bb.163:                              # %land.lhs.true3986
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$a1, .LBB0_220
# %bb.164:                              # %if.then3995
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 80
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(FirstExternTarget)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_210
# %bb.165:                              # %for.body4007.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $a0
	b	.LBB0_169
	.p2align	4, , 16
.LBB0_166:                              # %cond.end4558.thread
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$s2, $s5, 0
	move	$a1, $a0
.LBB0_167:                              # %cond.false4567
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a2, $s2, 16
	st.d	$a0, $s2, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s1, 0
	st.d	$s2, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB0_168:                              # %for.inc4594
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 1416
	ld.d	$a0, $a0, 80
	ld.d	$a0, $a0, 80
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(NextExternTarget)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB0_210
.LBB0_169:                              # %for.body4007
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
	ld.d	$a0, $sp, 1416
	ld.d	$a0, $a0, 80
	addi.d	$a1, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(GallTargEval)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s7, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s7, 132
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s4, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s4, 0
	slli.d	$a1, $a0, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s3, $a2, %got_pc_lo12(zz_free)
	ldx.d	$s2, $s3, $a1
	beqz	$s2, .LBB0_171
# %bb.170:                              # %if.else4024
                                        #   in Loop: Header=BB0_169 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
	ld.d	$a0, $s2, 0
	stx.d	$a0, $s3, $a1
	b	.LBB0_172
	.p2align	4, , 16
.LBB0_171:                              # %if.then4022
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB0_172:                              # %if.end4033
                                        #   in Loop: Header=BB0_169 Depth=2
	ori	$a0, $zero, 132
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 0
	ld.bu	$a2, $s7, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$s1, $s2, 80
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $s3, $a1
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_174
# %bb.173:                              # %if.else4062
                                        #   in Loop: Header=BB0_169 Depth=2
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	stx.d	$a2, $s3, $a1
	b	.LBB0_175
	.p2align	4, , 16
.LBB0_174:                              # %if.then4060
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_175:                              # %if.end4071
                                        #   in Loop: Header=BB0_169 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s8, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s8, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$fp, $a1, %got_pc_lo12(zz_res)
	ld.d	$a1, $sp, 1416
	ld.d	$a1, $a1, 24
	st.d	$a0, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB0_177
# %bb.176:                              # %cond.end4120
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s2, $s5, 0
	bnez	$a0, .LBB0_178
	b	.LBB0_179
	.p2align	4, , 16
.LBB0_177:                              # %cond.end4120.thread
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$s2, $s5, 0
.LBB0_178:                              # %cond.false4129
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $s2, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_179:                              # %cond.end4153
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$s1, $s1, 0
	.p2align	4, , 16
.LBB0_180:                              # %for.cond4161
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_169 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB0_180
# %bb.181:                              # %for.cond4161
                                        #   in Loop: Header=BB0_169 Depth=2
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_183
# %bb.182:                              # %if.then4184
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a5, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_183:                              # %if.end4186
                                        #   in Loop: Header=BB0_169 Depth=2
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	addi.d	$s1, $s1, 64
	ori	$a1, $zero, 1
	addi.d	$a4, $sp, 816
	addi.d	$a5, $sp, 302
	addi.d	$a6, $sp, 1328
	addi.d	$a7, $sp, 284
	addi.d	$a2, $sp, 288
	st.d	$a2, $sp, 0
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_168
# %bb.184:                              # %if.then4192
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 96
	bnez	$a0, .LBB0_189
# %bb.185:                              # %if.then4196
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.bu	$a2, $s7, 17
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s4, 0
	beqz	$a0, .LBB0_187
# %bb.186:                              # %if.else4210
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_188
.LBB0_187:                              # %if.then4208
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
.LBB0_188:                              # %if.end4219
                                        #   in Loop: Header=BB0_169 Depth=2
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, 96
.LBB0_189:                              # %if.end4235
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.bu	$a0, $s7, 147
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s3, $a1
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.w	$a0, $s4, 0
	beqz	$s2, .LBB0_191
# %bb.190:                              # %if.else4249
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$s2, $s5, 0
	ld.d	$a0, $s2, 0
	stx.d	$a0, $s3, $a1
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB0_192
	.p2align	4, , 16
.LBB0_191:                              # %if.then4247
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s5, 0
.LBB0_192:                              # %if.end4258
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.h	$a0, $sp, 302
	st.d	$s2, $s2, 0
	ld.d	$a1, $sp, 1328
	st.h	$a0, $s2, 34
	ld.w	$a0, $sp, 284
	st.d	$a1, $s2, 40
	ori	$a1, $zero, 147
	st.b	$a1, $s2, 32
	st.d	$s2, $s2, 24
	st.w	$a0, $s2, 36
	st.d	$s0, $s2, 56
	ld.d	$a0, $sp, 288
	ld.d	$a2, $s4, 0
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.d	$a0, $s2, 48
	ori	$a0, $zero, 11
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s7, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s3, $a3
	move	$s0, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_194
# %bb.193:                              # %if.else4294
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$a1, $s5, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $s3, $a3
	b	.LBB0_195
	.p2align	4, , 16
.LBB0_194:                              # %if.then4292
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $s4, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_195:                              # %cond.end4349
                                        #   in Loop: Header=BB0_169 Depth=2
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$s2, $s5, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s0, $s5, 0
	beqz	$s0, .LBB0_198
# %bb.196:                              # %cond.end4349
                                        #   in Loop: Header=BB0_169 Depth=2
	beqz	$a0, .LBB0_198
# %bb.197:                              # %cond.false4358
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_198:                              # %cond.end4382
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$s4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $s4, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 816
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s7, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $s3, $a3
	move	$s0, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB0_200
# %bb.199:                              # %if.else4399
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$a1, $s5, 0
	ld.d	$a0, $a1, 0
	stx.d	$a0, $s3, $a3
	b	.LBB0_201
	.p2align	4, , 16
.LBB0_200:                              # %if.then4397
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $s4, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_201:                              # %cond.end4454
                                        #   in Loop: Header=BB0_169 Depth=2
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s8, 0
	st.d	$a1, $fp, 0
	st.d	$s2, $s5, 0
	ld.d	$a0, $s2, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s8, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $fp, 0
	st.d	$s0, $s5, 0
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_204
# %bb.202:                              # %cond.end4454
                                        #   in Loop: Header=BB0_169 Depth=2
	beqz	$a0, .LBB0_204
# %bb.203:                              # %cond.false4463
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s1, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_204:                              # %cond.end4487
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.bu	$a2, $s7, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB0_206
# %bb.205:                              # %if.else4502
                                        #   in Loop: Header=BB0_169 Depth=2
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_207
	.p2align	4, , 16
.LBB0_206:                              # %if.then4500
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_207:                              # %if.end4511
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $a1, 96
	st.d	$a0, $s8, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB0_166
# %bb.208:                              # %cond.end4558
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a2, $a1, 0
	st.d	$a2, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s1, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s8, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $fp, 0
	st.d	$s2, $s5, 0
	beqz	$a1, .LBB0_168
# %bb.209:                              # %cond.end4558.cond.false4567_crit_edge
                                        #   in Loop: Header=BB0_169 Depth=2
	ld.d	$a0, $a1, 16
	b	.LBB0_167
.LBB0_210:                              # %for.end4598
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1416
	ld.hu	$a1, $a0, 42
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4031
	and	$a1, $a1, $a2
	st.h	$a1, $a0, 42
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $s7, 96
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ori	$s1, $zero, 9
	bnez	$a1, .LBB0_1
# %bb.211:                              # %for.end4598.if.end4625_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	.p2align	4, , 16
.LBB0_212:                              # %if.end4625
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a2, $zero, 121
	beq	$a1, $a2, .LBB0_220
# %bb.213:                              # %if.end4625
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a2, $zero, 122
	bne	$a1, $a2, .LBB0_477
# %bb.214:                              # %land.lhs.true4877
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a1, $a0, 42
	andi	$a2, $a1, 1
	beqz	$a2, .LBB0_478
# %bb.215:                              # %if.then4884
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s0
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_239
	.p2align	4, , 16
.LBB0_216:                              # %for.cond5130
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $s0, 16
	ld.bu	$a1, $s0, 32
	beqz	$a1, .LBB0_216
# %bb.217:                              # %for.end5141
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 104
	beqz	$a1, .LBB0_219
# %bb.218:                              # %if.then5145
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(GazumpOptimize)
	jirl	$ra, $ra, 0
.LBB0_219:                              # %if.end5147
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	b	.LBB0_1
.LBB0_220:                              # %land.lhs.true4631
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a1, $a0, 42
	andi	$a2, $a1, 1
	beqz	$a2, .LBB0_478
# %bb.221:                              # %if.then4638
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a1, 0
	bne	$a2, $a0, .LBB0_223
	b	.LBB0_228
	.p2align	4, , 16
.LBB0_222:                              # %cond.end4707
                                        #   in Loop: Header=BB0_223 Depth=2
	ld.bu	$a3, $a2, 32
	st.d	$a2, $a0, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a2, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a2, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
	ld.d	$a2, $a0, 24
	beq	$a2, $a0, .LBB0_228
.LBB0_223:                              # %while.body4645
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_225
# %bb.224:                              # %cond.false4655
                                        #   in Loop: Header=BB0_223 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_225:                              # %cond.end4677
                                        #   in Loop: Header=BB0_223 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_222
# %bb.226:                              # %cond.false4685
                                        #   in Loop: Header=BB0_223 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_222
	.p2align	4, , 16
.LBB0_227:                              # %cond.end4808
                                        #   in Loop: Header=BB0_228 Depth=2
	ld.bu	$a3, $a2, 32
	st.d	$a2, $a0, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a2, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a2, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
.LBB0_228:                              # %while.cond4740.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 8
	beq	$a2, $a0, .LBB0_233
# %bb.229:                              # %while.body4746
                                        #   in Loop: Header=BB0_228 Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_231
# %bb.230:                              # %cond.false4756
                                        #   in Loop: Header=BB0_228 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_231:                              # %cond.end4778
                                        #   in Loop: Header=BB0_228 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_227
# %bb.232:                              # %cond.false4786
                                        #   in Loop: Header=BB0_228 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_227
.LBB0_233:                              # %while.end4840
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $a0, 32
	st.d	$a0, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	b	.LBB0_1
.LBB0_234:                              # %if.then141
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s6, 24
	move	$a0, $a1
	.p2align	4, , 16
.LBB0_235:                              # %for.cond148
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 0
	ld.bu	$a2, $a0, 32
	beqz	$a2, .LBB0_235
# %bb.236:                              # %for.end159
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a2, $s6, 42
	andi	$a2, $a2, 1
	sltui	$a2, $a2, 1
	ld.d	$a4, $s7, 88
	masknez	$a3, $s0, $a2
	ori	$a5, $zero, 1
	maskeqz	$a2, $a5, $a2
	or	$fp, $a2, $a3
	addi.d	$a2, $sp, 1424
	move	$a3, $a1
	pcaddu18i	$ra, %call36(FreeGalley)
	jirl	$ra, $ra, 0
.LBB0_237:                              # %if.end184
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1424
	move	$s0, $fp
	beqz	$a0, .LBB0_1
# %bb.238:                              # %if.then187
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	move	$s0, $fp
	b	.LBB0_1
.LBB0_239:                              # %if.then4890
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $a0, 24
	st.d	$a0, $a1, 0
	bne	$a2, $a0, .LBB0_241
	b	.LBB0_321
	.p2align	4, , 16
.LBB0_240:                              # %cond.end4959
                                        #   in Loop: Header=BB0_241 Depth=2
	ld.bu	$a3, $a2, 32
	st.d	$a2, $a0, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a2, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a2, 0
	ld.w	$a2, $a4, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a5, $a2
	ld.d	$a2, $a0, 24
	beq	$a2, $a0, .LBB0_320
.LBB0_241:                              # %while.body4897
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a3, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $a2, 24
	st.d	$a2, $a3, 0
	beq	$a0, $a2, .LBB0_243
# %bb.242:                              # %cond.false4907
                                        #   in Loop: Header=BB0_241 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	ld.d	$a5, $a2, 16
	st.d	$a0, $a4, 0
	st.d	$a5, $a0, 16
	st.d	$a0, $a5, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_243:                              # %cond.end4929
                                        #   in Loop: Header=BB0_241 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a4, $a2, 8
	st.d	$a2, $a0, 0
	beq	$a4, $a2, .LBB0_240
# %bb.244:                              # %cond.false4937
                                        #   in Loop: Header=BB0_241 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	st.d	$a4, $a5, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a4, 0
	ld.d	$a4, $a0, 0
	ld.d	$a2, $a5, 0
	ld.d	$a5, $a4, 0
	st.d	$a2, $a5, 8
	st.d	$a4, $a4, 0
	ld.d	$a2, $a3, 0
	st.d	$a4, $a4, 8
	b	.LBB0_240
.LBB0_245:                              # %if.then2519
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 1416
	ld.hu	$a0, $fp, 0
	move	$fp, $s0
	addi.d	$s0, $a1, 32
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s0
	move	$s0, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_159
	b	.LBB0_160
.LBB0_246:                              # %if.then2544
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB0_247:                              # %if.end2555
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 120
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.bu	$a0, $s6, 8
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$zero, $s0, 88
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s4, $a1
	st.w	$a0, $s5, 0
	beqz	$s1, .LBB0_249
# %bb.248:                              # %if.else2584
                                        #   in Loop: Header=BB0_1 Depth=1
	alsl.d	$a0, $a0, $s4, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s1, $a1, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 0
	b	.LBB0_250
.LBB0_249:                              # %if.then2582
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s1, $a0, 0
.LBB0_250:                              # %if.end2593
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 8
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	ld.h	$a0, $s2, 34
	st.h	$a0, $s1, 34
	ld.wu	$a0, $s2, 36
	ld.wu	$a1, $s1, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s1, 36
	ld.wu	$a1, $s2, 36
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s1, 36
	ld.d	$a0, $s2, 80
	st.d	$a0, $s1, 80
	st.d	$zero, $s1, 128
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $s1, 104
	ld.d	$a0, $s2, 80
	ld.hu	$a1, $s1, 42
	ld.b	$a0, $a0, 43
	lu12i.w	$a2, 15
	ori	$a2, $a2, 3709
	and	$a1, $a1, $a2
	bstrpick.d	$a0, $a0, 60, 5
	bstrins.d	$a1, $a0, 8, 8
	ld.bu	$a2, $s6, 0
	st.d	$zero, $s1, 96
	ori	$a0, $a1, 128
	st.h	$a0, $s1, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB0_252
# %bb.251:                              # %if.else2669
                                        #   in Loop: Header=BB0_1 Depth=1
	alsl.d	$a1, $a2, $s4, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_253
.LBB0_252:                              # %if.then2667
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_253:                              # %cond.end2724
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$fp, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s8, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $s8, 0
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a4, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s1, $s8, 0
	beqz	$a0, .LBB0_255
# %bb.254:                              # %cond.false2733
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_255:                              # %cond.end2757
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s5, 0
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_257
# %bb.256:                              # %if.else2772
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_258
.LBB0_257:                              # %if.then2770
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB0_258:                              # %cond.end2827
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	st.d	$a0, $s3, 0
	st.d	$s1, $s8, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s2, $s8, 0
	beqz	$a0, .LBB0_260
# %bb.259:                              # %cond.false2836
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_260:                              # %cond.end2860
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SetTarget)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	ori	$a1, $zero, 129
	st.b	$a1, $s1, 40
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 32
	bnez	$a0, .LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	b	.LBB0_263
.LBB0_262:                              # %cond.true2869
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(BuildEnclose)
	jirl	$ra, $ra, 0
.LBB0_263:                              # %cond.end2872
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	st.d	$a0, $s1, 136
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	vst	$vr0, $s1, 144
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s5, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_265
# %bb.264:                              # %if.else2888
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_266
.LBB0_265:                              # %if.then2886
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB0_266:                              # %if.end2897
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 0
	ld.d	$a1, $sp, 1416
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	ld.d	$a1, $a1, 24
	st.d	$a0, $fp, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s8, 0
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	beqz	$a1, .LBB0_268
# %bb.267:                              # %cond.end2946
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a1, 0
	st.d	$a2, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $s8, 0
	bnez	$a0, .LBB0_269
	b	.LBB0_270
.LBB0_268:                              # %cond.end2946.thread
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $s8, 0
.LBB0_269:                              # %cond.false2955
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_270:                              # %cond.end2979
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$fp, $s7, 8
	.p2align	4, , 16
.LBB0_271:                              # %for.cond2987
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB0_271
# %bb.272:                              # %for.end2998
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s2, $s7, 0
	.p2align	4, , 16
.LBB0_273:                              # %for.cond3005
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB0_273
# %bb.274:                              # %do.body.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$s0, $s2, 64
	move	$s5, $s6
	addi.d	$s4, $s7, 34
	b	.LBB0_278
.LBB0_275:                              # %if.then3071
                                        #   in Loop: Header=BB0_278 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_276:                              # %land.rhs3394
                                        #   in Loop: Header=BB0_278 Depth=2
	addi.d	$s4, $s7, 34
.LBB0_277:                              # %land.rhs3394
                                        #   in Loop: Header=BB0_278 Depth=2
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_328
.LBB0_278:                              # %do.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $sp, 288
	addi.d	$a2, $sp, 1328
	addi.d	$a3, $sp, 816
	addi.d	$a4, $sp, 304
	addi.d	$a5, $s7, 48
	st.d	$a5, $sp, 0
	move	$a5, $s4
	addi.d	$a6, $s7, 40
	addi.d	$a7, $s7, 36
	pcaddu18i	$ra, %call36(DbRetrieveNext)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_307
# %bb.279:                              # %do.body
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.w	$a0, $sp, 288
	beqz	$a0, .LBB0_307
# %bb.280:                              # %land.lhs.true3025
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a0, $sp, 1328
	ld.d	$a1, $s7, 56
	bne	$a0, $a1, .LBB0_307
# %bb.281:                              # %if.end3035
                                        #   in Loop: Header=BB0_278 Depth=2
	addi.d	$a0, $sp, 816
	addi.d	$a1, $fp, 64
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_307
# %bb.282:                              # %land.lhs.true3037
                                        #   in Loop: Header=BB0_278 Depth=2
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_277
# %bb.283:                              # %if.then3044
                                        #   in Loop: Header=BB0_278 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s4, 0
	addi.d	$a1, $s7, 40
	ld.d	$a1, $a1, 0
	addi.d	$a2, $s7, 36
	ld.w	$a2, $a2, 0
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_286
# %bb.284:                              # %if.end3056
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_287
.LBB0_285:                              # %if.end3064
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a0, $s4, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_275
	b	.LBB0_288
.LBB0_286:                              # %if.then3051
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a1, $sp, 1416
	addi.d	$a0, $s7, 34
	ld.hu	$a0, $a0, 0
	addi.d	$s6, $a1, 32
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	move	$a4, $s6
	move	$s6, $s5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s4, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_285
.LBB0_287:                              # %if.then3062
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 80
	ld.bu	$a0, $a0, 126
	andi	$a0, $a0, 8
	beqz	$a0, .LBB0_275
.LBB0_288:                              # %if.else3073
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB0_290
# %bb.289:                              #   in Loop: Header=BB0_278 Depth=2
	move	$s6, $s1
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_301
.LBB0_290:                              # %if.then3079
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.bu	$a0, $s6, 17
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$s6, $a2, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	beqz	$s6, .LBB0_292
# %bb.291:                              # %if.else3094
                                        #   in Loop: Header=BB0_278 Depth=2
	st.d	$s6, $s8, 0
	ld.d	$a1, $s6, 0
	alsl.d	$a0, $a0, $a2, 3
	st.d	$a1, $a0, 0
	b	.LBB0_293
.LBB0_292:                              # %if.then3092
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	move	$s6, $a0
	st.d	$a0, $s8, 0
.LBB0_293:                              # %if.end3103
                                        #   in Loop: Header=BB0_278 Depth=2
	ori	$a0, $zero, 17
	st.b	$a0, $s6, 32
	st.d	$s6, $s6, 24
	st.d	$s6, $s6, 16
	st.d	$s6, $s6, 8
	st.d	$s6, $s6, 0
	ld.d	$a1, $s1, 24
	ld.d	$a2, $a1, 24
	ld.d	$a0, $a1, 16
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $a3, 0
	beq	$a2, $a1, .LBB0_295
# %bb.294:                              # %cond.false3127
                                        #   in Loop: Header=BB0_278 Depth=2
	st.d	$a0, $a2, 16
	st.d	$a2, $a0, 24
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	ld.d	$a3, $s6, 16
	move	$a0, $a1
	b	.LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_278 Depth=2
	move	$a3, $s6
.LBB0_296:                              # %cond.end3182
                                        #   in Loop: Header=BB0_278 Depth=2
	st.d	$a0, $s6, 16
	ld.d	$a0, $a1, 16
	ld.bu	$a2, $s5, 0
	st.d	$s6, $a0, 24
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	slli.d	$a0, $a2, 3
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a4, $a0
	st.d	$a1, $s3, 0
	st.d	$s6, $s8, 0
	st.d	$a3, $a5, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_298
# %bb.297:                              # %if.else3197
                                        #   in Loop: Header=BB0_278 Depth=2
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_299
.LBB0_298:                              # %if.then3195
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB0_299:                              # %cond.end3252
                                        #   in Loop: Header=BB0_278 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s3, 0
	st.d	$s6, $s8, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s1, $s8, 0
	beqz	$a0, .LBB0_301
# %bb.300:                              # %cond.false3261
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_301:                              # %if.end3287
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a3, $a0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB0_303
# %bb.302:                              # %if.else3301
                                        #   in Loop: Header=BB0_278 Depth=2
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $a3, 3
	st.d	$a1, $a2, 0
	b	.LBB0_304
.LBB0_303:                              # %if.then3299
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB0_304:                              # %cond.end3356
                                        #   in Loop: Header=BB0_278 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s3, 0
	st.d	$s6, $s8, 0
	ld.d	$a1, $s6, 0
	st.d	$a1, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a5, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s4, $s8, 0
	beqz	$a0, .LBB0_306
# %bb.305:                              # %cond.false3365
                                        #   in Loop: Header=BB0_278 Depth=2
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a5, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_306:                              # %land.rhs3394
                                        #   in Loop: Header=BB0_278 Depth=2
	move	$s1, $s6
	move	$s6, $s5
	b	.LBB0_276
.LBB0_307:                              # %if.else3817
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 24
	ld.d	$a2, $a0, 24
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	beq	$a2, $a0, .LBB0_309
# %bb.308:                              # %cond.false3827
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 16
	st.d	$a2, $s3, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_310
.LBB0_309:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a2, $zero
.LBB0_310:                              # %cond.end3849
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s8, 0
	beq	$a3, $a0, .LBB0_312
# %bb.311:                              # %cond.false3857
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a3, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $s3, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a2, $a2, 8
.LBB0_312:                              # %cond.end3879
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s6, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	st.d	$a0, $s8, 0
	st.w	$a2, $s2, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s2, 0
	ld.d	$a3, $s8, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $fp, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB0_317
# %bb.313:                              # %if.end3918
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 96
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB0_318
.LBB0_314:                              # %if.end3960
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB0_316
.LBB0_315:                              # %if.then3966
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ConvertGalleyList)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB0_316:                              # %if.end3968
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 9
	b	.LBB0_1
.LBB0_317:                              # %if.then3916
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 96
	ld.d	$a1, $a0, 8
	bne	$a1, $a0, .LBB0_314
.LBB0_318:                              # %if.then3926
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $fp, $a2
	st.d	$a0, $s8, 0
	st.w	$a1, $s2, 0
	st.d	$a2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $fp, $a0
	st.d	$zero, $s7, 96
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB0_315
	b	.LBB0_316
.LBB0_319:                              #   in Loop: Header=BB0_1 Depth=1
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 1424
	bnez	$a0, .LBB0_148
	b	.LBB0_149
.LBB0_320:                              # %while.cond4992.preheader.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $a0, 8
.LBB0_321:                              # %while.cond4992.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$s0, $a0, .LBB0_324
.LBB0_322:                              # %while.end5092
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $a0, 32
	st.d	$a0, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a4, $a0
	move	$s0, $fp
	b	.LBB0_1
	.p2align	4, , 16
.LBB0_323:                              # %cond.end5060
                                        #   in Loop: Header=BB0_324 Depth=2
	ld.bu	$a2, $s0, 32
	st.d	$s0, $a0, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $s0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $s0, 0
	ld.w	$a2, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a4, $a2
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_322
.LBB0_324:                              # %while.body4998
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$a2, $a0, %got_pc_lo12(xx_link)
	ld.d	$a0, $s0, 24
	st.d	$s0, $a2, 0
	beq	$a0, $s0, .LBB0_326
# %bb.325:                              # %cond.false5008
                                        #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	ld.d	$a4, $s0, 16
	st.d	$a0, $a3, 0
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
.LBB0_326:                              # %cond.end5030
                                        #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a3, $s0, 8
	st.d	$s0, $a0, 0
	beq	$a3, $s0, .LBB0_323
# %bb.327:                              # %cond.false5038
                                        #   in Loop: Header=BB0_324 Depth=2
	pcalau12i	$a4, %got_pc_hi20(zz_res)
	ld.d	$a4, $a4, %got_pc_lo12(zz_res)
	st.d	$a3, $a4, 0
	ld.d	$a5, $s0, 0
	st.d	$a5, $a3, 0
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a3, 0
	st.d	$a4, $a5, 8
	st.d	$a3, $a3, 0
	ld.d	$s0, $a2, 0
	st.d	$a3, $a3, 8
	b	.LBB0_323
.LBB0_328:                              # %if.then3404
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB0_341
# %bb.329:                              # %cond.false3414
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s3, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_342
.LBB0_330:                              # %if.end1724.if.then1735_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $s3, 8
.LBB0_331:                              # %if.then1735
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_333
# %bb.332:                              # %if.then1740
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	addi.w	$a2, $fp, 0
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s2
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, 0
	addi.w	$a2, $s5, 0
	move	$a0, $s2
	xori	$a3, $s0, 1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_333:                              # %cleanup
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1424
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$s7, $s0
	move	$s0, $a0
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	ori	$s1, $zero, 9
	b	.LBB0_1
.LBB0_334:                              # %if.then1274
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 104
	beqz	$a0, .LBB0_366
.LBB0_335:                              # %if.then1278
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a7, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $a7, 26
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	beqz	$s0, .LBB0_367
# %bb.336:                              # %if.else1293
                                        #   in Loop: Header=BB0_1 Depth=1
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB0_368
.LBB0_337:                              # %if.then1652
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$a0, .LBB0_339
# %bb.338:                              # %if.then1656
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 104
.LBB0_339:                              # %if.end1660
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ori	$s1, $zero, 9
	beqz	$a0, .LBB0_388
# %bb.340:                              # %if.then1663
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1416
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 20
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_388
.LBB0_341:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
.LBB0_342:                              # %cond.end3436
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$fp, $a2, %got_pc_lo12(xx_tmp)
	ld.d	$a2, $a0, 8
	st.d	$a1, $fp, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB0_344
# %bb.343:                              # %cond.false3444
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB0_344:                              # %cond.end3466
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s8, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_346
# %bb.345:                              # %if.then3503
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_346:                              # %if.end3505
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB0_353
# %bb.347:                              # %cond.false3515
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s3, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $fp, 0
	st.d	$a0, $s8, 0
	beq	$a2, $a0, .LBB0_349
.LBB0_348:                              # %cond.false3545
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB0_349:                              # %cond.end3567
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	add.d	$a1, $s6, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s4, $a2
	st.d	$a0, $s8, 0
	st.w	$a1, $s5, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s8, 0
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s4, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_351
# %bb.350:                              # %if.then3604
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_351:                              # %if.end3606
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $fp, 0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 816
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	move	$s2, $a0
	ori	$a0, $zero, 11
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s6, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s4, $a1
	move	$s0, $a0
	st.w	$a2, $s5, 0
	beqz	$a1, .LBB0_354
# %bb.352:                              # %if.else3624
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a0, $a2, 0
	b	.LBB0_355
.LBB0_353:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $fp, 0
	st.d	$a0, $s8, 0
	bne	$a2, $a0, .LBB0_348
	b	.LBB0_349
.LBB0_354:                              # %if.then3622
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $fp, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB0_355:                              # %cond.end3679
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $fp, 0
	st.d	$a1, $s3, 0
	st.d	$s7, $s8, 0
	ld.d	$a0, $s7, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s2, $s8, 0
	beqz	$s2, .LBB0_358
# %bb.356:                              # %cond.end3679
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$a0, .LBB0_358
# %bb.357:                              # %cond.false3688
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_358:                              # %cond.end3712
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $s6, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s4, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB0_360
# %bb.359:                              # %if.else3727
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a0, $s8, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s4, 3
	st.d	$a1, $a2, 0
	b	.LBB0_361
.LBB0_360:                              # %if.then3725
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
.LBB0_361:                              # %cond.end3782
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	st.d	$a0, $s3, 0
	st.d	$s7, $s8, 0
	ld.d	$a1, $s7, 0
	st.d	$a1, $a4, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s8, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $s8, 0
	beqz	$s0, .LBB0_365
# %bb.362:                              # %cond.end3782
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_364
# %bb.363:                              # %cond.false3791
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $a4, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_364:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB0_315
	b	.LBB0_316
.LBB0_365:                              #   in Loop: Header=BB0_1 Depth=1
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB0_315
	b	.LBB0_316
.LBB0_366:                              #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s5
	b	.LBB0_387
.LBB0_367:                              # %if.then1291
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s0, $a7
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a7, $s0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB0_368:                              # %if.end1302
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 26
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.w	$a0, $sp, 1400
	ld.d	$a1, $sp, 1404
	ld.bu	$a2, $a7, 0
	st.d	$s0, $s0, 16
	st.w	$a0, $s0, 64
	st.d	$a1, $s0, 68
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB0_370
# %bb.369:                              # %if.else1338
                                        #   in Loop: Header=BB0_1 Depth=1
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_371
.LBB0_370:                              # %if.then1336
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $s1
	move	$s1, $a7
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a7, $s1
	move	$s1, $fp
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
.LBB0_371:                              # %if.end1347
                                        #   in Loop: Header=BB0_1 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	ld.d	$a4, $s7, 112
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a4, $a1, 0
	beqz	$a4, .LBB0_373
# %bb.372:                              # %cond.end1393
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s0, $a1, 0
	bnez	$a0, .LBB0_374
	b	.LBB0_375
.LBB0_373:                              # %cond.end1393.thread
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $a1, 0
.LBB0_374:                              # %cond.false1402
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s0, 16
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	ld.d	$a6, $a0, 16
	st.d	$a4, $a5, 0
	st.d	$a6, $s0, 16
	st.d	$s0, $a6, 24
	st.d	$a4, $a0, 16
	st.d	$a0, $a4, 24
.LBB0_375:                              # %cond.end1426
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s7, 120
	beqz	$a4, .LBB0_381
# %bb.376:                              # %land.lhs.true1430
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $a4, 8
	beq	$a0, $a4, .LBB0_381
# %bb.377:                              # %for.cond1446.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s0, $s5
	.p2align	4, , 16
.LBB0_378:                              # %for.cond1446
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a0, 16
	ld.bu	$a4, $a0, 32
	beqz	$a4, .LBB0_378
# %bb.379:                              # %for.end1457
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.w	$a4, $a0, 48
	ld.w	$a5, $s7, 160
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, -1
	st.w	$a4, $s7, 160
	ld.d	$a0, $a0, 24
	ld.d	$a5, $a0, 24
	st.d	$a0, $a2, 0
	beq	$a5, $a0, .LBB0_382
# %bb.380:                              # %cond.false1473
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $a0, 16
	st.d	$a5, $a3, 0
	st.d	$a4, $a5, 16
	st.d	$a5, $a4, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB0_383
.LBB0_381:                              # %if.else1565
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.w	$a0, $s7, 160
	move	$s0, $s5
	b	.LBB0_387
.LBB0_382:                              #   in Loop: Header=BB0_1 Depth=1
	move	$a5, $zero
.LBB0_383:                              # %cond.end1495
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a4, %got_pc_hi20(xx_tmp)
	ld.d	$a4, $a4, %got_pc_lo12(xx_tmp)
	ld.d	$a6, $a0, 8
	st.d	$a5, $a4, 0
	st.d	$a0, $a1, 0
	beq	$a6, $a0, .LBB0_385
# %bb.384:                              # %cond.false1503
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$a6, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a6, 0
	ld.d	$a5, $a1, 0
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a5, 0
	st.d	$a0, $a3, 8
	st.d	$a5, $a5, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a5, 8
.LBB0_385:                              # %cond.end1525
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a5, $a0, 33
	add.d	$a2, $a7, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $fp, $a3
	st.d	$a0, $a1, 0
	st.w	$a2, $s1, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s1, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a4, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $fp, $a2
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB0_387
# %bb.386:                              # %if.then1562
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_387:                              # %REJECT
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$s1, $zero, 9
.LBB0_388:                              # %REJECT
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s8, 80
	pcalau12i	$a1, %got_pc_hi20(PrintSym)
	ld.d	$a1, $a1, %got_pc_lo12(PrintSym)
	ld.d	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_390
# %bb.389:                              # %if.then1944
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a5, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_390:                              # %if.end1946
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_392
# %bb.391:                              # %if.then1949
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_392:                              # %if.end1951
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_395
# %bb.393:                              # %if.then1954
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_395
# %bb.394:                              # %if.then1956
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $s5
	xori	$a3, $fp, 1
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_395:                              # %if.end1959
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$s5, $s0
	bnez	$s4, .LBB0_410
# %bb.396:                              # %if.end1959
                                        #   in Loop: Header=BB0_1 Depth=1
	beqz	$s2, .LBB0_410
# %bb.397:                              # %for.cond1966.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 8
	beq	$a0, $s3, .LBB0_410
# %bb.398:                              # %for.cond1979.preheader.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$fp, $s7
	b	.LBB0_401
	.p2align	4, , 16
.LBB0_399:                              # %if.end2041
                                        #   in Loop: Header=BB0_401 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(HandleHeader)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_400:                              # %if.end2046
                                        #   in Loop: Header=BB0_401 Depth=2
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	beq	$a0, $s3, .LBB0_410
.LBB0_401:                              # %for.cond1979.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_402 Depth 3
                                        #       Child Loop BB0_405 Depth 3
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_402:                              # %for.cond1979
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB0_402
# %bb.403:                              # %for.cond1979
                                        #   in Loop: Header=BB0_401 Depth=2
	bne	$a2, $s1, .LBB0_407
# %bb.404:                              # %if.then1996
                                        #   in Loop: Header=BB0_401 Depth=2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a2
	.p2align	4, , 16
.LBB0_405:                              # %for.cond2012
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s0, 16
	ld.bu	$a2, $s0, 32
	beqz	$a2, .LBB0_405
# %bb.406:                              # %if.end2024
                                        #   in Loop: Header=BB0_401 Depth=2
	andi	$a2, $a2, 252
	ori	$a3, $zero, 20
	bne	$a2, $a3, .LBB0_400
	b	.LBB0_408
	.p2align	4, , 16
.LBB0_407:                              # %if.end2024.loopexit2263
                                        #   in Loop: Header=BB0_401 Depth=2
	move	$s0, $a1
	andi	$a2, $a2, 252
	ori	$a3, $zero, 20
	bne	$a2, $a3, .LBB0_400
.LBB0_408:                              # %if.then2036
                                        #   in Loop: Header=BB0_401 Depth=2
	beq	$a1, $s0, .LBB0_399
# %bb.409:                              # %if.then2039
                                        #   in Loop: Header=BB0_401 Depth=2
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a5, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_399
.LBB0_410:                              # %if.end2048
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 144
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_433
# %bb.411:                              # %if.then2051
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB0_414
# %bb.412:                              # %if.end2061
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$fp, $s7, 8
	beq	$fp, $s7, .LBB0_415
.LBB0_413:                              # %if.end2069
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 144
	ld.d	$s0, $a0, 8
	bne	$s0, $a0, .LBB0_416
	b	.LBB0_433
.LBB0_414:                              # %if.then2059
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s7, 8
	bne	$fp, $s7, .LBB0_413
.LBB0_415:                              # %if.then2067
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a5, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 144
	ld.d	$s0, $a0, 8
	beq	$s0, $a0, .LBB0_433
.LBB0_416:                              # %for.cond2082.preheader.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $zero
	b	.LBB0_418
	.p2align	4, , 16
.LBB0_417:                              # %cond.end2209
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$s0, $s0, 8
	ld.d	$a1, $s7, 144
	addi.d	$a0, $s1, 1
	beq	$s0, $a1, .LBB0_431
.LBB0_418:                              # %for.cond2082.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_419 Depth 3
	move	$s1, $a0
	move	$a0, $s0
	.p2align	4, , 16
.LBB0_419:                              # %for.cond2082
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_418 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_419
# %bb.420:                              # %for.cond2082
                                        #   in Loop: Header=BB0_418 Depth=2
	addi.d	$a1, $a1, -15
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB0_422
# %bb.421:                              # %if.then2105
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$a4, $s3, 0
	st.d	$a0, $sp, 1416
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_423
	.p2align	4, , 16
.LBB0_422:                              # %if.end2107.loopexit
                                        #   in Loop: Header=BB0_418 Depth=2
	st.d	$a0, $sp, 1416
.LBB0_423:                              # %if.end2107
                                        #   in Loop: Header=BB0_418 Depth=2
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a0, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB0_425
# %bb.424:                              # %if.else2121
                                        #   in Loop: Header=BB0_418 Depth=2
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_426
	.p2align	4, , 16
.LBB0_425:                              # %if.then2119
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_426:                              # %if.end2130
                                        #   in Loop: Header=BB0_418 Depth=2
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$fp, $a2, 0
	beqz	$fp, .LBB0_428
# %bb.427:                              # %cond.false2152
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$a4, $fp, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a6, $a0, 0
	ld.d	$a5, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a5, 8
.LBB0_428:                              # %cond.end2176
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$a3, $sp, 1416
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	beqz	$a3, .LBB0_417
# %bb.429:                              # %cond.end2176
                                        #   in Loop: Header=BB0_418 Depth=2
	beqz	$a0, .LBB0_417
# %bb.430:                              # %cond.false2185
                                        #   in Loop: Header=BB0_418 Depth=2
	ld.d	$a1, $a3, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a4, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a4, $a3, 16
	st.d	$a3, $a4, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB0_417
.LBB0_431:                              # %for.end2215
                                        #   in Loop: Header=BB0_1 Depth=1
	andi	$a0, $s1, 1
	ori	$s1, $zero, 9
	bnez	$a0, .LBB0_433
# %bb.432:                              # %if.then2218
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_433:                              # %if.end2221
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 32
	ori	$a1, $zero, 122
	beq	$a0, $a1, .LBB0_435
# %bb.434:                              # %if.then2227
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_435:                              # %if.end2229
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 1
	bnez	$s5, .LBB0_437
# %bb.436:                              # %lor.rhs2231
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.hu	$a0, $s6, 42
	bstrpick.d	$a0, $a0, 5, 5
.LBB0_437:                              # %lor.end2239
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(xx_hold)
	ld.d	$a1, $a1, %got_pc_lo12(xx_hold)
	ld.d	$a2, $s6, 24
	st.d	$s6, $a1, 0
	bne	$a2, $s6, .LBB0_439
	b	.LBB0_444
	.p2align	4, , 16
.LBB0_438:                              # %cond.end2309
                                        #   in Loop: Header=BB0_439 Depth=2
	ld.bu	$a4, $a2, 32
	st.d	$a2, $a3, 0
	addi.d	$a5, $a4, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a2, 33
	pcalau12i	$a7, %got_pc_hi20(zz_lengths)
	ld.d	$a7, $a7, %got_pc_lo12(zz_lengths)
	add.d	$a4, $a7, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	st.w	$a4, $a5, 0
	slli.d	$a4, $a4, 3
	pcalau12i	$a6, %got_pc_hi20(zz_free)
	ld.d	$a6, $a6, %got_pc_lo12(zz_free)
	ldx.d	$a4, $a6, $a4
	st.d	$a4, $a2, 0
	ld.w	$a2, $a5, 0
	ld.d	$a3, $a3, 0
	ld.d	$s6, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a6, $a2
	ld.d	$a2, $s6, 24
	beq	$a2, $s6, .LBB0_444
.LBB0_439:                              # %while.body2247
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a3, %got_pc_hi20(xx_link)
	ld.d	$a4, $a3, %got_pc_lo12(xx_link)
	ld.d	$a3, $a2, 24
	st.d	$a2, $a4, 0
	beq	$a3, $a2, .LBB0_441
# %bb.440:                              # %cond.false2257
                                        #   in Loop: Header=BB0_439 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$a6, $a2, 16
	st.d	$a3, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_441:                              # %cond.end2279
                                        #   in Loop: Header=BB0_439 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	ld.d	$a5, $a2, 8
	st.d	$a2, $a3, 0
	beq	$a5, $a2, .LBB0_438
# %bb.442:                              # %cond.false2287
                                        #   in Loop: Header=BB0_439 Depth=2
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a5, 0
	ld.d	$a5, $a3, 0
	ld.d	$a2, $a6, 0
	ld.d	$a6, $a5, 0
	st.d	$a2, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a2, $a4, 0
	st.d	$a5, $a5, 8
	b	.LBB0_438
	.p2align	4, , 16
.LBB0_443:                              # %cond.end2410
                                        #   in Loop: Header=BB0_444 Depth=2
	ld.bu	$a4, $a2, 32
	st.d	$a2, $a3, 0
	addi.d	$a5, $a4, -11
	sltui	$a5, $a5, 2
	addi.d	$a6, $a2, 33
	pcalau12i	$a7, %got_pc_hi20(zz_lengths)
	ld.d	$a7, $a7, %got_pc_lo12(zz_lengths)
	add.d	$a4, $a7, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	ld.bu	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(zz_size)
	ld.d	$a5, $a5, %got_pc_lo12(zz_size)
	st.w	$a4, $a5, 0
	slli.d	$a4, $a4, 3
	pcalau12i	$a6, %got_pc_hi20(zz_free)
	ld.d	$a6, $a6, %got_pc_lo12(zz_free)
	ldx.d	$a4, $a6, $a4
	st.d	$a4, $a2, 0
	ld.w	$a2, $a5, 0
	ld.d	$a3, $a3, 0
	ld.d	$s6, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a3, $a6, $a2
.LBB0_444:                              # %while.cond2342.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s6, 8
	beq	$a2, $s6, .LBB0_449
# %bb.445:                              # %while.body2348
                                        #   in Loop: Header=BB0_444 Depth=2
	pcalau12i	$a3, %got_pc_hi20(xx_link)
	ld.d	$a4, $a3, %got_pc_lo12(xx_link)
	ld.d	$a3, $a2, 24
	st.d	$a2, $a4, 0
	beq	$a3, $a2, .LBB0_447
# %bb.446:                              # %cond.false2358
                                        #   in Loop: Header=BB0_444 Depth=2
	pcalau12i	$a5, %got_pc_hi20(zz_res)
	ld.d	$a5, $a5, %got_pc_lo12(zz_res)
	ld.d	$a6, $a2, 16
	st.d	$a3, $a5, 0
	st.d	$a6, $a3, 16
	st.d	$a3, $a6, 24
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
.LBB0_447:                              # %cond.end2380
                                        #   in Loop: Header=BB0_444 Depth=2
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	ld.d	$a5, $a2, 8
	st.d	$a2, $a3, 0
	beq	$a5, $a2, .LBB0_443
# %bb.448:                              # %cond.false2388
                                        #   in Loop: Header=BB0_444 Depth=2
	pcalau12i	$a6, %got_pc_hi20(zz_res)
	ld.d	$a6, $a6, %got_pc_lo12(zz_res)
	st.d	$a5, $a6, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a5, 0
	ld.d	$a5, $a3, 0
	ld.d	$a2, $a6, 0
	ld.d	$a6, $a5, 0
	st.d	$a2, $a6, 8
	st.d	$a5, $a5, 0
	ld.d	$a2, $a4, 0
	st.d	$a5, $a5, 8
	b	.LBB0_443
.LBB0_449:                              # %while.end2442
                                        #   in Loop: Header=BB0_1 Depth=1
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $s6, 32
	st.d	$s6, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $s6, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $s6, 0
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a4, $a2
	move	$s0, $a0
	b	.LBB0_1
.LBB0_450:                              # %sw.bb978
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $s7, 104
	move	$s0, $fp
	beqz	$a0, .LBB0_388
# %bb.451:                              # %if.then981
                                        #   in Loop: Header=BB0_1 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 104
	b	.LBB0_388
.LBB0_452:                              # %for.end1757
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_454
# %bb.453:                              # %if.then1760
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB0_454:                              # %if.end1762
	ld.d	$a0, $s7, 8
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	move	$s4, $s0
	beq	$a0, $s7, .LBB0_457
# %bb.455:                              # %if.then1768
	ori	$a3, $zero, 1
	move	$a0, $s7
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_457
# %bb.456:                              # %if.then1770
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	move	$a0, $fp
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AdjustSize)
	jirl	$ra, $ra, 0
.LBB0_457:                              # %if.end1773
	ld.d	$a0, $s7, 104
	bnez	$a0, .LBB0_461
	b	.LBB0_471
.LBB0_458:                              # %if.end1762.thread
	move	$s4, $s0
	ld.d	$a0, $s7, 8
	beq	$a0, $s7, .LBB0_460
# %bb.459:                              # %if.then1768.thread
	ori	$a3, $zero, 1
	move	$a0, $s7
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(Promote)
	jirl	$ra, $ra, 0
.LBB0_460:
	move	$fp, $zero
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $s7, 104
	beqz	$a0, .LBB0_471
.LBB0_461:                              # %if.then1777
	move	$s5, $fp
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s2, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s2, 26
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s1, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$fp, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $fp, $a1
	beqz	$s0, .LBB0_463
# %bb.462:                              # %if.else1792
	alsl.d	$a0, $a0, $fp, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB0_464
.LBB0_463:                              # %if.then1790
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB0_464:                              # %if.end1801
	ori	$a0, $zero, 26
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	sltui	$a0, $s5, 1
	ld.w	$a1, $sp, 1400
	ld.w	$a2, $sp, 1404
	ld.w	$a3, $sp, 1408
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a4, $a4, $a0
	masknez	$a1, $a1, $a0
	or	$a1, $a4, $a1
	masknez	$a2, $a2, $a0
	or	$a5, $a4, $a2
	masknez	$a0, $a3, $a0
	or	$a0, $a4, $a0
	ld.bu	$a2, $s2, 0
	st.w	$a1, $s0, 64
	st.w	$a5, $s0, 68
	st.w	$a0, $s0, 72
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $fp, $a0
	st.w	$a2, $s1, 0
	beqz	$a0, .LBB0_466
# %bb.465:                              # %if.else1849
	alsl.d	$a1, $a2, $fp, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB0_467
.LBB0_466:                              # %if.then1847
	ld.d	$a1, $s3, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB0_467:                              # %if.end1858
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a4, $s7, 112
	st.d	$a0, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a4, $a3, 0
	beqz	$a4, .LBB0_469
# %bb.468:                              # %cond.end1905
	ld.d	$a5, $a4, 0
	pcalau12i	$a6, %got_pc_hi20(zz_tmp)
	ld.d	$a6, $a6, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a6, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a4, 0
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a6, 0
	st.d	$a4, $a5, 8
	st.d	$a6, $a0, 0
	ld.d	$a4, $a2, 0
	ld.d	$a0, $a1, 0
	st.d	$a4, $a6, 8
	st.d	$a0, $a2, 0
	st.d	$s0, $a3, 0
	bnez	$a0, .LBB0_470
	b	.LBB0_471
.LBB0_469:                              # %cond.end1905.thread
	st.d	$s0, $a3, 0
.LBB0_470:                              # %cond.false1914
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB0_471:                              # %if.end1940
	move	$a0, $s7
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s6
.LBB0_472:                              # %cleanup5156
	pcaddu18i	$ra, %call36(ParentFlush)
	jirl	$ra, $ra, 0
.LBB0_473:                              # %cleanup5156
	ld.d	$s8, $sp, 1432                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1440                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1448                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1456                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1464                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1472                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1480                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1488                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1496                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1504                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1512                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1520
	ret
.LBB0_474:                              # %if.then195
	beqz	$s0, .LBB0_473
# %bb.475:                              # %if.then.i627
	ld.d	$a0, $s6, 24
	.p2align	4, , 16
.LBB0_476:                              # %for.cond.i629
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_476
	b	.LBB0_481
.LBB0_477:                              # %if.end4625.if.end5150_crit_edge
	ld.hu	$a1, $a0, 42
.LBB0_478:                              # %if.end5150
	ori	$a1, $a1, 32
	st.h	$a1, $a0, 42
	beqz	$s0, .LBB0_473
# %bb.479:                              # %if.then.i638
	ld.d	$a0, $s6, 24
	.p2align	4, , 16
.LBB0_480:                              # %for.cond.i640
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_480
.LBB0_481:                              # %for.end.i645
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
	b	.LBB0_473
.LBB0_482:                              # %sw.bb49
	beqz	$s0, .LBB0_486
# %bb.483:                              # %if.then.i
	ld.d	$a0, $s6, 24
.LBB0_484:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_484
# %bb.485:                              # %for.end.i
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB0_486:                              # %ParentFlush.exit
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_473
# %bb.487:                              # %if.then52
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_498
.LBB0_488:                              # %sw.bb66
	move	$fp, $s0
	ld.d	$a0, $s6, 80
	ld.d	$a2, $a0, 80
	ld.d	$a4, $s7, 88
	ld.hu	$a0, $s7, 42
	xor	$a1, $a2, $a4
	slli.d	$a0, $a0, 51
	sltui	$s0, $a1, 1
	bltz	$a0, .LBB0_499
# %bb.489:                              # %if.else
	ld.hu	$a0, $s6, 42
	bstrpick.d	$a0, $a0, 5, 5
	masknez	$a1, $fp, $s0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $s0
	or	$a1, $a2, $a1
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $fp, $a0
	or	$fp, $a1, $a0
	b	.LBB0_505
.LBB0_490:                              # %sw.bb43
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_473
# %bb.491:                              # %if.then46
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_498
.LBB0_492:                              # %sw.bb55
	beqz	$s0, .LBB0_496
# %bb.493:                              # %if.then.i616
	ld.d	$a0, $s6, 24
.LBB0_494:                              # %for.cond.i618
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_494
# %bb.495:                              # %for.end.i623
	pcaddu18i	$ra, %call36(FlushGalley)
	jirl	$ra, $ra, 0
.LBB0_496:                              # %ParentFlush.exit625
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_473
# %bb.497:                              # %if.then58
	ld.d	$a4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a5, $a0, %pc_lo12(.L.str.5)
.LBB0_498:                              # %cleanup5156
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_473
.LBB0_499:                              # %if.then75
	ld.d	$a1, $s6, 24
	move	$a0, $a1
.LBB0_500:                              # %for.cond82
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a3, $a0, 32
	beqz	$a3, .LBB0_500
# %bb.501:                              # %for.end93
	ld.hu	$a3, $s6, 42
	andi	$a5, $a3, 1
	bnez	$a5, .LBB0_504
# %bb.502:                              # %for.end93
	bne	$a2, $a4, .LBB0_504
# %bb.503:                              # %if.then100
	addi.d	$a2, $a3, 1
	st.h	$a2, $s6, 42
	ld.d	$a4, $s7, 88
	ori	$fp, $zero, 1
.LBB0_504:                              # %if.end105
	addi.d	$a2, $sp, 1424
	move	$a3, $a1
	pcaddu18i	$ra, %call36(FreeGalley)
	jirl	$ra, $ra, 0
.LBB0_505:                              # %if.end123
	move	$a0, $s7
	pcaddu18i	$ra, %call36(DetachGalley)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(KillGalley)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1424
	beqz	$a0, .LBB0_507
# %bb.506:                              # %if.then126
	move	$a1, $zero
	pcaddu18i	$ra, %call36(FlushInners)
	jirl	$ra, $ra, 0
	b	.LBB0_473
.LBB0_507:                              # %if.else127
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s0
	b	.LBB0_472
.Lfunc_end0:
	.size	FlushGalley, .Lfunc_end0-FlushGalley
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_490-.LJTI0_0
	.word	.LBB0_482-.LJTI0_0
	.word	.LBB0_492-.LJTI0_0
	.word	.LBB0_13-.LJTI0_0
	.word	.LBB0_488-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
.LJTI0_1:
	.word	.LBB0_95-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_28-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_36-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_147-.LJTI0_1
	.word	.LBB0_147-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_91-.LJTI0_1
	.word	.LBB0_99-.LJTI0_1
	.word	.LBB0_94-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
	.word	.LBB0_68-.LJTI0_1
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function ParentFlush
	.type	ParentFlush,@function
ParentFlush:                            # @ParentFlush
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_20
# %bb.1:                                # %if.then
	ld.d	$a3, $a1, 24
	move	$a0, $a3
	.p2align	4, , 16
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a4, $a0, 32
	beqz	$a4, .LBB1_2
# %bb.3:                                # %for.end
	beqz	$a2, .LBB1_19
# %bb.4:                                # %if.then8
	pcalau12i	$a2, %got_pc_hi20(xx_hold)
	ld.d	$a2, $a2, %got_pc_lo12(xx_hold)
	st.d	$a1, $a2, 0
	beq	$a3, $a1, .LBB1_11
# %bb.5:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a4, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a5, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a7, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$t0, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$t1, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %cond.end71
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.bu	$a1, $a3, 32
	addi.d	$t2, $a1, -11
	sltui	$t2, $t2, 2
	addi.d	$t3, $a3, 33
	add.d	$a1, $a6, $a1
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t3, $t2
	or	$a1, $t2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $t0, $t2
	st.d	$a3, $a5, 0
	st.w	$a1, $a7, 0
	st.d	$t2, $a3, 0
	ld.w	$a3, $a7, 0
	ld.d	$t2, $a5, 0
	ld.d	$a1, $a2, 0
	slli.d	$a3, $a3, 3
	stx.d	$t2, $t0, $a3
	ld.d	$a3, $a1, 24
	beq	$a3, $a1, .LBB1_11
.LBB1_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a3, 24
	st.d	$a3, $a4, 0
	beq	$a1, $a3, .LBB1_9
# %bb.8:                                # %cond.false
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$t2, $a3, 16
	st.d	$a1, $t1, 0
	st.d	$t2, $a1, 16
	st.d	$a1, $t2, 24
	st.d	$a3, $a3, 24
	st.d	$a3, $a3, 16
.LBB1_9:                                # %cond.end
                                        #   in Loop: Header=BB1_7 Depth=1
	ld.d	$a1, $a3, 8
	st.d	$a3, $a5, 0
	beq	$a1, $a3, .LBB1_6
# %bb.10:                               # %cond.false49
                                        #   in Loop: Header=BB1_7 Depth=1
	st.d	$a1, $t1, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a1, $a5, 0
	ld.d	$a3, $t1, 0
	ld.d	$t2, $a1, 0
	st.d	$a3, $t2, 8
	st.d	$a1, $a1, 0
	ld.d	$a3, $a4, 0
	st.d	$a1, $a1, 8
	b	.LBB1_6
.LBB1_11:                               # %while.cond100.preheader
	ld.d	$t1, $a1, 8
	beq	$t1, $a1, .LBB1_18
# %bb.12:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a6, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a7, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$t0, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %cond.end168
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.bu	$a1, $t1, 32
	addi.d	$t2, $a1, -11
	sltui	$t2, $t2, 2
	addi.d	$t3, $t1, 33
	add.d	$a1, $a5, $a1
	masknez	$a1, $a1, $t2
	maskeqz	$t2, $t3, $t2
	or	$a1, $t2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $a7, $t2
	st.d	$t1, $a4, 0
	st.w	$a1, $a6, 0
	st.d	$t2, $t1, 0
	ld.w	$t1, $a6, 0
	ld.d	$t2, $a4, 0
	ld.d	$a1, $a2, 0
	slli.d	$t1, $t1, 3
	stx.d	$t2, $a7, $t1
	ld.d	$t1, $a1, 8
	beq	$t1, $a1, .LBB1_18
.LBB1_14:                               # %while.body106
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t1, 24
	st.d	$t1, $a3, 0
	beq	$a1, $t1, .LBB1_16
# %bb.15:                               # %cond.false116
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$t2, $t1, 16
	st.d	$a1, $t0, 0
	st.d	$t2, $a1, 16
	st.d	$a1, $t2, 24
	st.d	$t1, $t1, 24
	st.d	$t1, $t1, 16
.LBB1_16:                               # %cond.end138
                                        #   in Loop: Header=BB1_14 Depth=1
	ld.d	$a1, $t1, 8
	st.d	$t1, $a4, 0
	beq	$a1, $t1, .LBB1_13
# %bb.17:                               # %cond.false146
                                        #   in Loop: Header=BB1_14 Depth=1
	st.d	$a1, $t0, 0
	ld.d	$t1, $t1, 0
	st.d	$t1, $a1, 0
	ld.d	$a1, $a4, 0
	ld.d	$t1, $t0, 0
	ld.d	$t2, $a1, 0
	st.d	$t1, $t2, 8
	st.d	$a1, $a1, 0
	ld.d	$t1, $a3, 0
	st.d	$a1, $a1, 8
	b	.LBB1_13
.LBB1_18:                               # %while.end200
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	ld.bu	$a3, $a1, 32
	st.d	$a1, $a2, 0
	addi.d	$a4, $a3, -11
	sltui	$a4, $a4, 2
	addi.d	$a5, $a1, 33
	pcalau12i	$a6, %got_pc_hi20(zz_lengths)
	ld.d	$a6, $a6, %got_pc_lo12(zz_lengths)
	add.d	$a3, $a6, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	ld.bu	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(zz_size)
	ld.d	$a4, $a4, %got_pc_lo12(zz_size)
	st.w	$a3, $a4, 0
	slli.d	$a3, $a3, 3
	pcalau12i	$a5, %got_pc_hi20(zz_free)
	ld.d	$a5, $a5, %got_pc_lo12(zz_free)
	ldx.d	$a3, $a5, $a3
	st.d	$a3, $a1, 0
	ld.w	$a1, $a4, 0
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a5, $a1
.LBB1_19:                               # %if.end
	pcaddu18i	$t8, %call36(FlushGalley)
	jr	$t8
.LBB1_20:                               # %if.else
	beqz	$a2, .LBB1_36
# %bb.21:                               # %if.then232
	pcalau12i	$a0, %got_pc_hi20(xx_hold)
	ld.d	$a0, $a0, %got_pc_lo12(xx_hold)
	ld.d	$t0, $a1, 24
	st.d	$a1, $a0, 0
	beq	$t0, $a1, .LBB1_28
# %bb.22:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a7, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %cond.end301
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.bu	$a1, $t0, 32
	addi.d	$t1, $a1, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $t0, 33
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t2, $t1
	or	$a1, $t1, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t1, $a1, 3
	ldx.d	$t1, $a6, $t1
	st.d	$t0, $a3, 0
	st.w	$a1, $a5, 0
	st.d	$t1, $t0, 0
	ld.w	$t0, $a5, 0
	ld.d	$t1, $a3, 0
	ld.d	$a1, $a0, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $a6, $t0
	ld.d	$t0, $a1, 24
	beq	$t0, $a1, .LBB1_28
.LBB1_24:                               # %while.body239
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t0, 24
	st.d	$t0, $a2, 0
	beq	$a1, $t0, .LBB1_26
# %bb.25:                               # %cond.false249
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.d	$t1, $t0, 16
	st.d	$a1, $a7, 0
	st.d	$t1, $a1, 16
	st.d	$a1, $t1, 24
	st.d	$t0, $t0, 24
	st.d	$t0, $t0, 16
.LBB1_26:                               # %cond.end271
                                        #   in Loop: Header=BB1_24 Depth=1
	ld.d	$a1, $t0, 8
	st.d	$t0, $a3, 0
	beq	$a1, $t0, .LBB1_23
# %bb.27:                               # %cond.false279
                                        #   in Loop: Header=BB1_24 Depth=1
	st.d	$a1, $a7, 0
	ld.d	$t0, $t0, 0
	st.d	$t0, $a1, 0
	ld.d	$a1, $a3, 0
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a1, 0
	st.d	$t0, $t1, 8
	st.d	$a1, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_23
.LBB1_28:                               # %while.cond334.preheader
	ld.d	$t0, $a1, 8
	beq	$t0, $a1, .LBB1_35
# %bb.29:
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a1, %got_pc_lo12(zz_hold)
	pcalau12i	$a1, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a1, %got_pc_lo12(zz_lengths)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a6, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a7, $a1, %got_pc_lo12(zz_res)
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %cond.end402
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.bu	$a1, $t0, 32
	addi.d	$t1, $a1, -11
	sltui	$t1, $t1, 2
	addi.d	$t2, $t0, 33
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $t1
	maskeqz	$t1, $t2, $t1
	or	$a1, $t1, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$t1, $a1, 3
	ldx.d	$t1, $a6, $t1
	st.d	$t0, $a3, 0
	st.w	$a1, $a5, 0
	st.d	$t1, $t0, 0
	ld.w	$t0, $a5, 0
	ld.d	$t1, $a3, 0
	ld.d	$a1, $a0, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $a6, $t0
	ld.d	$t0, $a1, 8
	beq	$t0, $a1, .LBB1_35
.LBB1_31:                               # %while.body340
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $t0, 24
	st.d	$t0, $a2, 0
	beq	$a1, $t0, .LBB1_33
# %bb.32:                               # %cond.false350
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$t1, $t0, 16
	st.d	$a1, $a7, 0
	st.d	$t1, $a1, 16
	st.d	$a1, $t1, 24
	st.d	$t0, $t0, 24
	st.d	$t0, $t0, 16
.LBB1_33:                               # %cond.end372
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.d	$a1, $t0, 8
	st.d	$t0, $a3, 0
	beq	$a1, $t0, .LBB1_30
# %bb.34:                               # %cond.false380
                                        #   in Loop: Header=BB1_31 Depth=1
	st.d	$a1, $a7, 0
	ld.d	$t0, $t0, 0
	st.d	$t0, $a1, 0
	ld.d	$a1, $a3, 0
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a1, 0
	st.d	$t0, $t1, 8
	st.d	$a1, $a1, 0
	ld.d	$t0, $a2, 0
	st.d	$a1, $a1, 8
	b	.LBB1_30
.LBB1_35:                               # %while.end434
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $a1, 32
	st.d	$a1, $a0, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a1, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a1, 0
	ld.w	$a1, $a3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a4, $a1
.LBB1_36:                               # %if.end466
	ret
.Lfunc_end1:
	.size	ParentFlush, .Lfunc_end1-ParentFlush
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"FlushGalley: type(hd) != HEAD!"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FlushGalley: resume found no parent to hd!"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"FlushGalley/ATTACH_KILLED: inners!=nilobj!"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"FlushGalley/ATTACH_INPUT: inners!=nilobj!"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"FlushGalley/ATTACH_NOTARG: inners!=nilobj!"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"FlushGalley: attach_status"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"assert failed in %s %s"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"FlushGalley: dest_index"
	.size	.L.str.8, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Flush: PRECEDES!"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"FlushG: UpDims!"
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"FlushGalley: dest != VCAT or ACAT!"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!"
	.size	.L.str.13, 60

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"FlushGalley: succ_gap != nilobj!"
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!"
	.size	.L.str.15, 58

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"component too wide for available space"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"FlushGalley:  tgp!"
	.size	.L.str.17, 19

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"FlushGalley:"
	.size	.L.str.18, 13

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"FlushGalley: reject print!"
	.size	.L.str.19, 27

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"FlushGalley: header under SPLIT!"
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"FlushGalley/REJECT: headers!"
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"FlushGalley/REJECT: first_link!"
	.size	.L.str.22, 32

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"FlushGalley/REJECT THR!"
	.size	.L.str.23, 24

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"FlushGalley/REJECT: headers_count!"
	.size	.L.str.24, 35

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"FlushGalley/REJECT: dest_index!"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"error in database file %s"
	.size	.L.str.26, 26

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"AttachG: db CLOSURE!"
	.size	.L.str.27, 21

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"FlushGalley: cr is_word(type(tag))!"
	.size	.L.str.28, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
