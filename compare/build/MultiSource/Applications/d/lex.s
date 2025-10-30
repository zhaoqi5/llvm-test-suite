	.file	"lex.c"
	.text
	.globl	build_scanners                  # -- Begin function build_scanners
	.p2align	5
	.type	build_scanners,@function
build_scanners:                         # @build_scanners
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
	ori	$a0, $zero, 1
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 88
	move	$s4, $a0
	beqz	$a1, .LBB0_496
# %bb.1:                                # %for.body.lr.ph
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 96
	move	$a2, $zero
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %if.then63
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$a5, $a3, 400
.LBB0_3:                                # %for.inc73
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB0_14
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_12 Depth 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$a4, $a3, 400
	bnez	$a4, .LBB0_3
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	beqz	$a2, .LBB0_3
# %bb.6:                                # %for.body4.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a4, $zero
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %for.inc70
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a4, $a4, 1
	beq	$a4, $a2, .LBB0_3
.LBB0_8:                                # %for.body4
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	ld.d	$a6, $a5, 400
	bnez	$a6, .LBB0_7
# %bb.9:                                # %if.end12
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.w	$t0, $a5, 136
	ld.w	$a6, $a3, 136
	bne	$t0, $a6, .LBB0_7
# %bb.10:                               # %for.cond27.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	beqz	$t0, .LBB0_2
# %bb.11:                               # %for.body35.lr.ph
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a6, $a3, 144
	ld.d	$a7, $a5, 144
	bstrpick.d	$t0, $t0, 31, 0
	.p2align	4, , 16
.LBB0_12:                               # %for.body35
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a7, 0
	ld.d	$t1, $t1, 8
	ld.d	$t2, $t2, 8
	bne	$t1, $t2, .LBB0_7
# %bb.13:                               # %for.cond27
                                        #   in Loop: Header=BB0_12 Depth=3
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB0_12
	b	.LBB0_2
.LBB0_14:                               # %for.body80.lr.ph
	move	$s0, $zero
	move	$s3, $zero
	addi.d	$a0, $s4, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 24
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$s5, 2
	ori	$a0, $s5, 2176
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	ori	$s2, $zero, 2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 88
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               # %if.then91
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a0, $s1, 296
	addi.d	$a1, $a1, 296
	ori	$a2, $zero, 80
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %for.inc96
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.wu	$a0, $a1, 88
	addi.d	$s3, $s3, 1
	bgeu	$s3, $a0, .LBB0_497
.LBB0_17:                               # %for.body80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #     Child Loop BB0_260 Depth 2
                                        #       Child Loop BB0_265 Depth 3
                                        #         Child Loop BB0_267 Depth 4
                                        #     Child Loop BB0_277 Depth 2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_283 Depth 3
                                        #         Child Loop BB0_286 Depth 4
                                        #       Child Loop BB0_293 Depth 3
                                        #         Child Loop BB0_298 Depth 4
                                        #           Child Loop BB0_300 Depth 5
                                        #       Child Loop BB0_313 Depth 3
                                        #         Child Loop BB0_315 Depth 4
                                        #       Child Loop BB0_321 Depth 3
                                        #     Child Loop BB0_340 Depth 2
                                        #     Child Loop BB0_351 Depth 2
                                        #       Child Loop BB0_353 Depth 3
                                        #       Child Loop BB0_358 Depth 3
                                        #         Child Loop BB0_362 Depth 4
                                        #         Child Loop BB0_365 Depth 4
                                        #       Child Loop BB0_368 Depth 3
                                        #         Child Loop BB0_372 Depth 4
                                        #     Child Loop BB0_384 Depth 2
                                        #     Child Loop BB0_392 Depth 2
                                        #     Child Loop BB0_395 Depth 2
                                        #       Child Loop BB0_397 Depth 3
                                        #     Child Loop BB0_405 Depth 2
                                        #     Child Loop BB0_409 Depth 2
                                        #       Child Loop BB0_412 Depth 3
                                        #         Child Loop BB0_417 Depth 4
                                        #           Child Loop BB0_418 Depth 5
                                        #             Child Loop BB0_421 Depth 6
                                        #         Child Loop BB0_436 Depth 4
                                        #         Child Loop BB0_445 Depth 4
                                        #           Child Loop BB0_447 Depth 5
                                        #             Child Loop BB0_448 Depth 6
                                        #     Child Loop BB0_473 Depth 2
                                        #     Child Loop BB0_476 Depth 2
                                        #     Child Loop BB0_481 Depth 2
                                        #       Child Loop BB0_483 Depth 3
	ld.d	$a0, $a1, 96
	slli.d	$a1, $s3, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 136
	beqz	$a0, .LBB0_16
# %bb.18:                               # %if.then88
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $s1, 400
	bnez	$a1, .LBB0_15
# %bb.19:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$s0, $zero
	move	$a4, $zero
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	st.w	$a1, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $s4, 16
	st.w	$fp, $s4, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $s4, 24
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $s1
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_24
.LBB0_20:                               # %if.then114.i
                                        #   in Loop: Header=BB0_24 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
.LBB0_21:                               # %for.inc723.i
                                        #   in Loop: Header=BB0_24 Depth=2
	stx.d	$s1, $a1, $a0
.LBB0_22:                               # %for.inc723.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$a4, $zero, 1
.LBB0_23:                               # %for.inc723.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.wu	$a1, $s3, 136
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a1, .LBB0_191
.LBB0_24:                               # %for.body.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	ld.d	$a1, $s3, 144
	slli.d	$a2, $s0, 3
	ldx.d	$s1, $a1, $a2
	ld.w	$a1, $s1, 0
	ori	$a5, $s5, 2096
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	beq	$a1, $fp, .LBB0_31
# %bb.25:                               # %for.body.i
                                        #   in Loop: Header=BB0_24 Depth=2
	bnez	$a1, .LBB0_23
# %bb.26:                               # %if.then.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 8
	ld.d	$fp, $a1, 16
	beqz	$a0, .LBB0_69
# %bb.27:                               # %if.else69.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$s7, $fp, 0
.LBB0_28:                               # %do.body75.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ldptr.d	$a1, $s7, 10296
	ori	$a0, $s5, 2112
	add.d	$a3, $s7, $a0
	beqz	$a1, .LBB0_75
# %bb.29:                               # %if.else89.i
                                        #   in Loop: Header=BB0_24 Depth=2
	add.d	$a0, $s7, $a5
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_76
# %bb.30:                               # %if.else109.i
                                        #   in Loop: Header=BB0_24 Depth=2
	andi	$a3, $a2, 7
	ori	$fp, $zero, 1
	bnez	$a3, .LBB0_20
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_31:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a2, $a1, 0
	bnez	$a2, .LBB0_23
# %bb.32:                               # %if.then133.i
                                        #   in Loop: Header=BB0_24 Depth=2
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s6, $a1, 24
	ld.bu	$a0, $a1, 36
	ld.bu	$s0, $s6, 0
	andi	$a0, $a0, 8
	bnez	$a0, .LBB0_80
# %bb.33:                               # %if.then136.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_161
# %bb.34:                               # %for.body140.i.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_35:                               # %if.else231.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$s7, $s1, 0
.LBB0_36:                               # %if.end237.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$s0, $s6, 1
	addi.d	$s6, $s6, 1
	beqz	$s0, .LBB0_161
.LBB0_37:                               # %for.body140.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$fp, $s7, 8
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 3
	add.d	$s0, $fp, $a0
	ldx.w	$a0, $fp, $a0
	ld.d	$s1, $s0, 8
	bnez	$a0, .LBB0_35
# %bb.38:                               # %do.body147.i
                                        #   in Loop: Header=BB0_37 Depth=3
	beqz	$s1, .LBB0_44
# %bb.39:                               # %if.else171.i
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$s2, $s0, 16
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$s7, $a0
	ld.d	$a0, $s4, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	st.w	$a1, $s7, 0
	beq	$s1, $s2, .LBB0_48
# %bb.40:                               # %if.end224.i
                                        #   in Loop: Header=BB0_37 Depth=3
	beqz	$a0, .LBB0_52
# %bb.41:                               # %if.else.i402.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ori	$s2, $zero, 2
	beq	$a0, $a2, .LBB0_54
# %bb.42:                               # %if.else24.i404.i
                                        #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a1, 7
	beqz	$a2, .LBB0_56
# %bb.43:                               # %if.then28.i407.i
                                        #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_57
.LBB0_44:                               # %if.then153.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	ld.d	$a1, $s4, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_53
# %bb.45:                               # %if.else.i348.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_58
# %bb.46:                               # %if.else24.i350.i
                                        #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a0, 7
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_60
# %bb.47:                               # %if.then28.i353.i
                                        #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_62
.LBB0_48:                               # %if.then188.i
                                        #   in Loop: Header=BB0_37 Depth=3
	beqz	$a0, .LBB0_63
# %bb.49:                               # %if.else.i375.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ori	$s2, $zero, 2
	beq	$a0, $a2, .LBB0_64
# %bb.50:                               # %if.else24.i377.i
                                        #   in Loop: Header=BB0_37 Depth=3
	andi	$a2, $a1, 7
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_66
# %bb.51:                               # %if.then28.i380.i
                                        #   in Loop: Header=BB0_37 Depth=3
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_68
.LBB0_52:                               # %if.then.i418.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ori	$s2, $zero, 2
	b	.LBB0_57
.LBB0_53:                               # %if.then.i364.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_61
.LBB0_54:                               # %if.then12.i412.i
                                        #   in Loop: Header=BB0_37 Depth=3
	bltu	$s2, $a1, .LBB0_56
# %bb.55:                               # %if.then16.i414.i
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_57
.LBB0_56:                               # %if.end38.i411.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_57:                               # %new_NFAState.exit422.i
                                        #   in Loop: Header=BB0_37 Depth=3
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_58:                               # %if.then12.i358.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_60
# %bb.59:                               # %if.then16.i360.i
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_62
.LBB0_60:                               # %if.end38.i357.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_61:                               # %new_NFAState.exit368.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB0_62:                               # %new_NFAState.exit368.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$a0, $s6, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $fp, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $fp, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $fp, $a0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_36
.LBB0_63:                               # %if.then.i391.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ori	$s2, $zero, 2
	b	.LBB0_67
.LBB0_64:                               # %if.then12.i385.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bltu	$s2, $a1, .LBB0_66
# %bb.65:                               # %if.then16.i387.i
                                        #   in Loop: Header=BB0_37 Depth=3
	addi.d	$a2, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_68
.LBB0_66:                               # %if.end38.i384.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_67:                               # %new_NFAState.exit395.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB0_68:                               # %new_NFAState.exit395.i
                                        #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $fp, $a0
	add.d	$a2, $fp, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $fp, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_36
.LBB0_69:                               # %do.body.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$a0, $zero, 1
	beqz	$fp, .LBB0_165
# %bb.70:                               # %if.else.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$s7, $a0
	ld.d	$a0, $s4, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s4, 0
	st.w	$a1, $s7, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 24
	beq	$fp, $a1, .LBB0_170
# %bb.71:                               # %if.end65.i
                                        #   in Loop: Header=BB0_24 Depth=2
	beqz	$a0, .LBB0_176
# %bb.72:                               # %if.else.i321.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB0_178
# %bb.73:                               # %if.else24.i323.i
                                        #   in Loop: Header=BB0_24 Depth=2
	andi	$a2, $a1, 7
	beqz	$a2, .LBB0_180
# %bb.74:                               # %if.then28.i326.i
                                        #   in Loop: Header=BB0_24 Depth=2
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a3, 0
	slli.d	$a1, $a2, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_181
.LBB0_75:                               # %if.then78.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ldx.wu	$a0, $s7, $a5
	stptr.d	$a3, $s7, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 10288
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a3, $a0
	ori	$a4, $zero, 1
	ori	$fp, $zero, 1
	b	.LBB0_23
.LBB0_76:                               # %if.then96.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$fp, $zero, 1
	bltu	$s2, $a2, .LBB0_78
# %bb.77:                               # %if.then100.i
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	b	.LBB0_21
.LBB0_78:                               # %if.end124.i
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a1, $s1
.LBB0_79:                               # %if.end717.i
                                        #   in Loop: Header=BB0_24 Depth=2
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_22
.LBB0_80:                               # %if.else238.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	beqz	$s0, .LBB0_161
# %bb.81:                               # %for.body243.lr.ph.i
                                        #   in Loop: Header=BB0_24 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_85
.LBB0_82:                               # %if.then425.i
                                        #   in Loop: Header=BB0_85 Depth=3
	st.d	$a2, $a0, 8
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s3, $a0
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s3, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB0_83:                               # %if.end660.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB0_84:                               # %if.end660.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.bu	$s0, $s6, 1
	addi.d	$s6, $s6, 1
	beqz	$s0, .LBB0_161
.LBB0_85:                               # %for.body243.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s8, 0
	slli.d	$a1, $s0, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	addi.d	$s3, $s7, 8
	bnez	$a0, .LBB0_92
# %bb.86:                               # %do.body574.i
                                        #   in Loop: Header=BB0_85 Depth=3
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 3
	add.d	$s0, $s3, $a0
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB0_99
# %bb.87:                               # %if.else598.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$a0, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB0_107
# %bb.88:                               # %if.else631.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$s1, $s4, 0
	ld.d	$fp, $s4, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB0_112
# %bb.89:                               # %if.then638.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s4, 0
	st.w	$s1, $s7, 0
	beqz	$fp, .LBB0_124
# %bb.90:                               # %if.else.i591.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_155
# %bb.91:                               # %if.else24.i593.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a1, $a0, 7
	bnez	$a1, .LBB0_111
	b	.LBB0_158
	.p2align	4, , 16
.LBB0_92:                               # %do.body251.i
                                        #   in Loop: Header=BB0_85 Depth=3
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$fp, $a0, 0
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $fp, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $s3, $a0
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB0_103
# %bb.93:                               # %if.else297.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a3, $zero, 2
	ld.w	$a0, $s0, 0
	move	$s2, $s4
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB0_116
# %bb.94:                               # %if.else360.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$s4, $s4, 0
	ld.d	$s1, $s2, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB0_117
.LBB0_95:                               # %if.then334.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s4, 1
	st.w	$a0, $s2, 0
	st.w	$s4, $s7, 0
	beqz	$s1, .LBB0_123
# %bb.96:                               # %if.else.i456.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_136
# %bb.97:                               # %if.else24.i458.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a1, $a0, 7
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ori	$s2, $zero, 2
	beqz	$a1, .LBB0_138
# %bb.98:                               # %if.then28.i461.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_139
.LBB0_99:                               # %if.then580.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	ld.d	$a1, $s4, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_121
# %bb.100:                              # %if.else.i537.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_127
# %bb.101:                              # %if.else24.i539.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a2, $a0, 7
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_129
# %bb.102:                              # %if.then28.i542.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_131
.LBB0_103:                              # %if.then261.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	ld.d	$a1, $s4, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_122
# %bb.104:                              # %if.else.i429.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_132
# %bb.105:                              # %if.else24.i431.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_134
# %bb.106:                              # %if.then28.i434.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_135
.LBB0_107:                              # %if.then610.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$s1, $s4, 0
	ld.d	$fp, $s4, 16
	bltu	$s2, $a0, .LBB0_112
# %bb.108:                              # %if.then617.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s4, 0
	st.w	$s1, $s7, 0
	beqz	$fp, .LBB0_124
# %bb.109:                              # %if.else.i564.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_157
# %bb.110:                              # %if.else24.i566.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a1, $a0, 7
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_158
.LBB0_111:                              # %if.then28.i569.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_160
.LBB0_112:                              # %if.end653.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s1, 1
	st.w	$a0, $s4, 0
	st.w	$s1, $s7, 0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB0_125
# %bb.113:                              # %if.else.i618.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB0_140
# %bb.114:                              # %if.else24.i620.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_142
# %bb.115:                              # %if.then28.i623.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_143
.LBB0_116:                              # %if.then321.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$s4, $s4, 0
	ld.d	$s1, $s2, 16
	bgeu	$a3, $a0, .LBB0_95
.LBB0_117:                              # %if.end400.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s4, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.w	$s4, $s7, 0
	ori	$s2, $zero, 2
	beqz	$s1, .LBB0_126
# %bb.118:                              # %if.else.i510.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_144
# %bb.119:                              # %if.else24.i512.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a1, $a0, 7
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_146
# %bb.120:                              # %if.then28.i515.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_147
.LBB0_121:                              # %if.then.i553.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_130
.LBB0_122:                              # %if.then.i445.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_135
.LBB0_123:                              # %if.then.i472.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $s2, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	move	$s4, $s2
	ori	$s2, $zero, 2
	b	.LBB0_139
.LBB0_124:                              # %if.then.i580.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_159
.LBB0_125:                              # %if.then.i634.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_143
.LBB0_126:                              # %if.then.i526.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.wu	$a0, $a2, 8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	move	$s4, $a2
	b	.LBB0_147
.LBB0_127:                              # %if.then12.i547.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_129
# %bb.128:                              # %if.then16.i549.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_131
.LBB0_129:                              # %if.end38.i546.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_130:                              # %new_NFAState.exit557.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB0_131:                              # %new_NFAState.exit557.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.bu	$a0, $s6, 0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s3, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $s3, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $s3, $a0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_84
.LBB0_132:                              # %if.then12.i439.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bltu	$s2, $a0, .LBB0_134
# %bb.133:                              # %if.then16.i441.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_135
.LBB0_134:                              # %if.end38.i438.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s5, 0
.LBB0_135:                              # %new_NFAState.exit449.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	ori	$a2, $zero, 40
	mul.d	$a0, $a0, $a2
	add.d	$a0, $s3, $a0
	addi.d	$a1, $a0, 16
	st.d	$a1, $a0, 8
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	mul.d	$a0, $a0, $a2
	ldx.wu	$a2, $s3, $a0
	addi.d	$a3, $a2, 1
	stx.w	$a3, $s3, $a0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_148
.LBB0_136:                              # %if.then12.i466.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ori	$s2, $zero, 2
	bltu	$s2, $a0, .LBB0_138
# %bb.137:                              # %if.then16.i468.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_139
.LBB0_138:                              # %if.end38.i465.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s5, 0
.LBB0_139:                              # %new_NFAState.exit476.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $fp, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s3, $a0
	add.d	$a2, $s3, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s3, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_148
.LBB0_140:                              # %if.then12.i628.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bltu	$s2, $a0, .LBB0_142
# %bb.141:                              # %if.then16.i630.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_143
.LBB0_142:                              # %if.end38.i627.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_143:                              # %new_NFAState.exit638.i
                                        #   in Loop: Header=BB0_85 Depth=3
	move	$a0, $s0
	b	.LBB0_154
.LBB0_144:                              # %if.then12.i520.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB0_146
# %bb.145:                              # %if.then16.i522.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s1, $a0
	b	.LBB0_147
.LBB0_146:                              # %if.end38.i519.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_147:                              # %new_NFAState.exit530.i
                                        #   in Loop: Header=BB0_85 Depth=3
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_148:                              # %do.body413.i
                                        #   in Loop: Header=BB0_85 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 0
	ld.d	$a3, $a0, 0
	slli.d	$a0, $a1, 2
	ldx.w	$a0, $a3, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s3, $a0
	ld.d	$a1, $a0, 8
	addi.d	$a2, $a0, 16
	beqz	$a1, .LBB0_82
# %bb.149:                              # %if.else460.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.w	$a3, $a0, 0
	beq	$a1, $a2, .LBB0_152
# %bb.150:                              # %if.else522.i
                                        #   in Loop: Header=BB0_85 Depth=3
	andi	$a2, $a3, 7
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_154
# %bb.151:                              # %if.then535.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bstrpick.d	$a2, $a3, 31, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_84
.LBB0_152:                              # %if.then484.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bltu	$s2, $a3, .LBB0_154
# %bb.153:                              # %if.then497.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a2, $a3, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_154:                              # %if.end660.i
                                        #   in Loop: Header=BB0_85 Depth=3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_83
.LBB0_155:                              # %if.then12.i601.i
                                        #   in Loop: Header=BB0_85 Depth=3
	bltu	$s2, $a0, .LBB0_158
.LBB0_156:                              # %if.then16.i576.i
                                        #   in Loop: Header=BB0_85 Depth=3
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_160
.LBB0_157:                              # %if.then12.i574.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB0_156
.LBB0_158:                              # %if.end38.i573.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_159:                              # %new_NFAState.exit584.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB0_160:                              # %new_NFAState.exit584.i
                                        #   in Loop: Header=BB0_85 Depth=3
	ld.bu	$a0, $s6, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s3, $a0
	add.d	$a2, $s3, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s3, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_84
.LBB0_161:                              # %do.body665.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ldptr.d	$a4, $s7, 10296
	lu12i.w	$s5, 2
	ori	$a0, $s5, 2112
	add.d	$a3, $s7, $a0
	beqz	$a4, .LBB0_169
# %bb.162:                              # %if.else680.i
                                        #   in Loop: Header=BB0_24 Depth=2
	add.d	$a0, $s7, $a5
	ld.w	$a2, $a0, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a4, $a3, .LBB0_174
# %bb.163:                              # %if.else702.i
                                        #   in Loop: Header=BB0_24 Depth=2
	andi	$a3, $a2, 7
	ori	$fp, $zero, 1
	beqz	$a3, .LBB0_79
# %bb.164:                              # %if.then707.i
                                        #   in Loop: Header=BB0_24 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$a1, $a4, $a0
	b	.LBB0_22
.LBB0_165:                              # %if.then11.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	ld.d	$a1, $s4, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s4, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB0_177
# %bb.166:                              # %if.else.i267.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_182
# %bb.167:                              # %if.else24.i269.i
                                        #   in Loop: Header=BB0_24 Depth=2
	andi	$a2, $a0, 7
	ori	$a5, $s5, 2096
	beqz	$a2, .LBB0_184
# %bb.168:                              # %if.then28.i272.i
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a2, $zero
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_185
.LBB0_169:                              # %if.then669.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ldx.wu	$a0, $s7, $a5
	stptr.d	$a3, $s7, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 10288
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ori	$a4, $zero, 1
	ori	$fp, $zero, 1
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_23
.LBB0_170:                              # %if.then36.i
                                        #   in Loop: Header=BB0_24 Depth=2
	beqz	$a0, .LBB0_186
# %bb.171:                              # %if.else.i294.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_187
# %bb.172:                              # %if.else24.i296.i
                                        #   in Loop: Header=BB0_24 Depth=2
	andi	$a1, $a2, 7
	ori	$a5, $s5, 2096
	beqz	$a1, .LBB0_189
# %bb.173:                              # %if.then28.i299.i
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a1, $zero
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a4, 0
	slli.d	$a2, $a3, 3
	stx.d	$s7, $a0, $a2
	b	.LBB0_190
.LBB0_174:                              # %if.then688.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$fp, $zero, 1
	bltu	$s2, $a2, .LBB0_79
# %bb.175:                              # %if.then693.i
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a4, $a0
	b	.LBB0_22
.LBB0_176:                              # %if.then.i337.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB0_181
.LBB0_177:                              # %if.then.i283.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.wu	$a0, $s4, 8
	move	$a2, $zero
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $s4, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	ori	$a5, $s5, 2096
	b	.LBB0_185
.LBB0_178:                              # %if.then12.i331.i
                                        #   in Loop: Header=BB0_24 Depth=2
	bltu	$s2, $a1, .LBB0_180
# %bb.179:                              # %if.then16.i333.i
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a2, $a1, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a1, $a1, 3
	stx.d	$s7, $a0, $a1
	b	.LBB0_181
.LBB0_180:                              # %if.end38.i330.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_181:                              # %new_NFAState.exit341.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ori	$a5, $s5, 2096
	b	.LBB0_28
.LBB0_182:                              # %if.then12.i277.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$a5, $s5, 2096
	bltu	$s2, $a0, .LBB0_184
# %bb.183:                              # %if.then16.i279.i
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a2, $zero
	addi.d	$a3, $a0, 1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	st.w	$a3, $a4, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_185
.LBB0_184:                              # %if.end38.i276.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ori	$a5, $s5, 2096
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 8
	ld.w	$a2, $a0, 0
.LBB0_185:                              # %new_NFAState.exit287.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 24
	st.d	$a1, $a3, 16
	addi.d	$a0, $a2, 1
	st.w	$a0, $a3, 8
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB0_28
.LBB0_186:                              # %if.then.i310.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.wu	$a0, $s4, 8
	move	$a1, $zero
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $s4, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $s4, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	ori	$a5, $s5, 2096
	b	.LBB0_190
.LBB0_187:                              # %if.then12.i304.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$a5, $s5, 2096
	bltu	$s2, $a2, .LBB0_189
# %bb.188:                              # %if.then16.i306.i
                                        #   in Loop: Header=BB0_24 Depth=2
	move	$a1, $zero
	addi.d	$a3, $a2, 1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	st.w	$a3, $a4, 0
	slli.d	$a2, $a2, 3
	stx.d	$s7, $a0, $a2
	b	.LBB0_190
.LBB0_189:                              # %if.end38.i303.i
                                        #   in Loop: Header=BB0_24 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ori	$a5, $s5, 2096
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 16
	ld.w	$a1, $a0, 8
.LBB0_190:                              # %new_NFAState.exit314.i
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$a0, $a1, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 8
	st.w	$a0, $a2, 0
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $fp, $a0
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_191:                              # %for.cond726.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$s7, $s5, 2056
	ori	$a2, $s5, 2072
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	beqz	$a1, .LBB0_256
# %bb.192:                              # %for.body731.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s3, $zero
	move	$s5, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$s1, $a0, $s7
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_195
.LBB0_193:                              # %if.then818.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.wu	$a0, $s0, $a0
	stptr.d	$a3, $s0, 10296
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 10288
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	ori	$a4, $zero, 1
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_194:                              # %for.inc871.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.wu	$a1, $a2, 136
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $a1, .LBB0_256
.LBB0_195:                              # %for.body731.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a2, 144
	ldx.d	$s6, $a1, $s3
	ld.w	$a1, $s6, 0
	ori	$a3, $zero, 1
	bne	$a1, $a3, .LBB0_194
# %bb.196:                              # %land.lhs.true739.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a1, $s6, 8
	ld.w	$a2, $a1, 0
	bne	$a2, $a3, .LBB0_194
# %bb.197:                              # %if.then744.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $a1, 24
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldptr.d	$fp, $a1, 10256
	st.d	$a0, $sp, 152
	beqz	$fp, .LBB0_204
# %bb.198:                              # %if.else762.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.w	$s8, $s1, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB0_208
# %bb.199:                              # %if.else785.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.w	$s0, $s4, 0
	ld.d	$s1, $s4, 16
	andi	$a0, $s8, 7
	beqz	$a0, .LBB0_213
# %bb.200:                              # %if.then790.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a2, $s4
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $a2, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_219
# %bb.201:                              # %if.else.i699.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_228
# %bb.202:                              # %if.else24.i701.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_230
# %bb.203:                              # %if.then28.i704.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_231
.LBB0_204:                              # %if.then750.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s4, 0
	ld.d	$a1, $s4, 16
	move	$a3, $s4
	move	$s4, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a3, 0
	st.w	$a2, $s4, 0
	beqz	$a1, .LBB0_217
# %bb.205:                              # %if.else.i645.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_220
# %bb.206:                              # %if.else24.i647.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_222
# %bb.207:                              # %if.then28.i650.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s4, $a1, $a0
	b	.LBB0_223
.LBB0_208:                              # %if.then770.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.w	$s0, $s4, 0
	ld.d	$s1, $s4, 16
	bltu	$s2, $s8, .LBB0_213
# %bb.209:                              # %if.then775.i
                                        #   in Loop: Header=BB0_195 Depth=2
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$a2, $s4
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	st.w	$a0, $a2, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_232
# %bb.210:                              # %if.else.i672.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_233
# %bb.211:                              # %if.else24.i674.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_236
# %bb.212:                              # %if.then28.i677.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	b	.LBB0_235
.LBB0_213:                              # %if.end801.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $s0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	st.w	$s0, $s4, 0
	beqz	$s1, .LBB0_218
# %bb.214:                              # %if.else.i726.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$s1, $a1, .LBB0_224
# %bb.215:                              # %if.else24.i728.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a1, $a0, 7
	beqz	$a1, .LBB0_226
# %bb.216:                              # %if.then28.i731.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_227
.LBB0_217:                              # %if.then.i661.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.wu	$a0, $a3, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_223
.LBB0_218:                              # %if.then.i742.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.wu	$a0, $a2, 8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	b	.LBB0_227
.LBB0_219:                              # %if.then.i715.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.wu	$a0, $a2, 8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	b	.LBB0_231
.LBB0_220:                              # %if.then12.i655.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bltu	$s2, $a0, .LBB0_222
# %bb.221:                              # %if.then16.i657.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a1, $a0
	b	.LBB0_223
.LBB0_222:                              # %if.end38.i654.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_223:                              # %new_NFAState.exit665.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.wu	$a0, $a2, $s7
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	stptr.d	$a3, $a2, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	b	.LBB0_239
.LBB0_224:                              # %if.then12.i736.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bltu	$s2, $a0, .LBB0_226
# %bb.225:                              # %if.then16.i738.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_227
.LBB0_226:                              # %if.end38.i735.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_227:                              # %new_NFAState.exit746.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_239
.LBB0_228:                              # %if.then12.i709.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bltu	$s2, $a0, .LBB0_230
# %bb.229:                              # %if.then16.i711.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s4, $s1, $a0
	b	.LBB0_231
.LBB0_230:                              # %if.end38.i708.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	ldx.w	$s8, $a0, $s7
.LBB0_231:                              # %new_NFAState.exit719.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a0, $s8, 1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $s1, 0
	bstrpick.d	$a0, $s8, 31, 0
	b	.LBB0_238
.LBB0_232:                              # %if.then.i688.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.wu	$a0, $a2, 8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	st.d	$a3, $a2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s4, $a3, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_237
.LBB0_233:                              # %if.then12.i682.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bltu	$s2, $a0, .LBB0_236
# %bb.234:                              # %if.then16.i684.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
.LBB0_235:                              # %new_NFAState.exit692.i
                                        #   in Loop: Header=BB0_195 Depth=2
	stx.d	$s4, $s1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_237
.LBB0_236:                              # %if.end38.i681.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldptr.d	$fp, $a0, 10256
	ldx.w	$a1, $a0, $s7
.LBB0_237:                              # %new_NFAState.exit692.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a0, $a1, 1
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $s1, 0
	bstrpick.d	$a0, $a1, 31, 0
.LBB0_238:                              # %do.end805.i
                                        #   in Loop: Header=BB0_195 Depth=2
	slli.d	$a0, $a0, 3
	stx.d	$s4, $fp, $a0
.LBB0_239:                              # %do.end805.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	move	$s0, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a3, 0
	st.w	$a2, $s0, 0
	beqz	$a1, .LBB0_243
# %bb.240:                              # %if.else.i753.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB0_244
# %bb.241:                              # %if.else24.i755.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a2, $a0, 7
	beqz	$a2, .LBB0_246
# %bb.242:                              # %if.then28.i758.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s0, $a1, $a0
	b	.LBB0_247
.LBB0_243:                              # %if.then.i769.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.wu	$a0, $a3, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a3, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $a3, 8
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a2, $a0
	b	.LBB0_248
.LBB0_244:                              # %if.then12.i763.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bltu	$s2, $a0, .LBB0_246
# %bb.245:                              # %if.then16.i765.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a1, $a0
	b	.LBB0_247
.LBB0_246:                              # %if.end38.i762.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_247:                              # %new_NFAState.exit773.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
.LBB0_248:                              # %new_NFAState.exit773.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $s6, 8
	ld.bu	$a0, $a0, 36
	bstrpick.d	$a0, $a0, 3, 3
	st.w	$a0, $a3, 56
	addi.d	$a1, $sp, 152
	move	$a0, $a3
	move	$a2, $s4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(build_regex_nfa)
	jirl	$ra, $ra, 0
	ldptr.d	$a1, $s0, 10296
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2112
	add.d	$a3, $s0, $a0
	beqz	$a1, .LBB0_193
# %bb.249:                              # %if.else829.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $s0, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB0_252
# %bb.250:                              # %if.else851.i
                                        #   in Loop: Header=BB0_195 Depth=2
	andi	$a3, $a2, 7
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_254
# %bb.251:                              # %if.then856.i
                                        #   in Loop: Header=BB0_195 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s6, $a1, $a0
	b	.LBB0_255
.LBB0_252:                              # %if.then837.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	bltu	$s2, $a2, .LBB0_254
# %bb.253:                              # %if.then842.i
                                        #   in Loop: Header=BB0_195 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s6, $a1, $a0
	b	.LBB0_255
.LBB0_254:                              # %if.end866.i
                                        #   in Loop: Header=BB0_195 Depth=2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_255:                              # %for.inc871.i
                                        #   in Loop: Header=BB0_195 Depth=2
	ori	$a4, $zero, 1
	b	.LBB0_194
	.p2align	4, , 16
.LBB0_256:                              # %for.end873.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$a4, .LBB0_478
# %bb.257:                              # %for.cond1.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2096
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$fp, $zero
	st.d	$zero, $sp, 192
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 176
	vst	$vr0, $sp, 160
	addi.d	$s1, $a0, 16
	st.d	$s1, $a0, 8
	st.w	$s0, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s5, 16
	move	$a0, $s1
	b	.LBB0_260
	.p2align	4, , 16
.LBB0_258:                              # %for.inc105.loopexit.i.i
                                        #   in Loop: Header=BB0_260 Depth=2
	ld.wu	$s0, $s5, 0
.LBB0_259:                              # %for.inc105.i.i
                                        #   in Loop: Header=BB0_260 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s0, .LBB0_275
.LBB0_260:                              # %for.cond1.preheader.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_265 Depth 3
                                        #         Child Loop BB0_267 Depth 4
	slli.d	$s3, $fp, 3
	ldx.d	$a1, $a0, $s3
	ldptr.w	$a2, $a1, 10248
	beqz	$a2, .LBB0_259
# %bb.261:                              # %for.cond6.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	move	$s0, $zero
	b	.LBB0_265
	.p2align	4, , 16
.LBB0_262:                              # %do.body.thread.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	ldptr.d	$a1, $a1, 10256
	ldx.d	$a1, $a1, $a3
	beq	$a0, $s1, .LBB0_272
.LBB0_263:                              # %if.end92.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 8
.LBB0_264:                              # %for.inc102.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	ldx.d	$a1, $a0, $s3
	ldx.wu	$a2, $a1, $s7
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a2, .LBB0_258
.LBB0_265:                              # %for.cond6.preheader.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_267 Depth 4
	ld.w	$a2, $s5, 0
	slli.d	$a3, $s0, 3
	beqz	$a2, .LBB0_262
# %bb.266:                              # %for.body10.lr.ph.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	ldptr.d	$a1, $a1, 10256
	ldx.d	$a1, $a1, $a3
	move	$a5, $zero
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 3
	.p2align	4, , 16
.LBB0_267:                              # %for.body10.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        #       Parent Loop BB0_265 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a0, $a5
	beq	$a1, $a6, .LBB0_264
# %bb.268:                              # %for.cond6.i.i
                                        #   in Loop: Header=BB0_267 Depth=4
	addi.d	$a5, $a5, 8
	bne	$a4, $a5, .LBB0_267
# %bb.269:                              # %do.body.i822.i
                                        #   in Loop: Header=BB0_265 Depth=3
	beq	$a0, $s1, .LBB0_273
# %bb.270:                              # %if.else70.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_263
# %bb.271:                              # %if.then74.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s5, 0
	stx.d	$a1, $a0, $a4
	b	.LBB0_264
.LBB0_272:                              #   in Loop: Header=BB0_265 Depth=3
	move	$a3, $zero
	b	.LBB0_274
.LBB0_273:                              # %if.then49.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	bltu	$s2, $a2, .LBB0_263
.LBB0_274:                              # %if.then53.i.i
                                        #   in Loop: Header=BB0_265 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s5, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_264
.LBB0_275:                              # %nfa_closure.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	pcalau12i	$a1, %pc_hi20(nfacmp)
	addi.d	$a3, $a1, %pc_lo12(nfacmp)
	ori	$a2, $zero, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	addi.d	$a0, $sp, 176
	st.d	$a0, $sp, 168
	ori	$s1, $zero, 1
	st.w	$s1, $sp, 160
	st.d	$s5, $sp, 176
	ori	$s5, $zero, 2048
	b	.LBB0_277
	.p2align	4, , 16
.LBB0_276:                              # %for.inc192.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a2, $a2, 1
	bgeu	$a2, $s1, .LBB0_336
.LBB0_277:                              # %for.body.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_283 Depth 3
                                        #         Child Loop BB0_286 Depth 4
                                        #       Child Loop BB0_293 Depth 3
                                        #         Child Loop BB0_298 Depth 4
                                        #           Child Loop BB0_300 Depth 5
                                        #       Child Loop BB0_313 Depth 3
                                        #         Child Loop BB0_315 Depth 4
                                        #       Child Loop BB0_321 Depth 3
	ld.d	$a0, $sp, 168
	slli.d	$a1, $a2, 3
	ldx.d	$s3, $a0, $a1
	ld.wu	$a0, $s3, 0
	beqz	$a0, .LBB0_276
# %bb.278:                              # %for.cond89.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$s5, $zero
	bnez	$a0, .LBB0_280
	b	.LBB0_334
	.p2align	4, , 16
.LBB0_279:                              # %for.cond89.preheader.ithread-pre-split.i
                                        #   in Loop: Header=BB0_334 Depth=3
	ld.wu	$a0, $s3, 0
	beqz	$a0, .LBB0_334
.LBB0_280:                              # %for.cond94.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a1, $s3, 8
	move	$fp, $zero
	move	$s4, $zero
	b	.LBB0_283
	.p2align	4, , 16
.LBB0_281:                              # %for.inc121.loopexit.i.i
                                        #   in Loop: Header=BB0_283 Depth=3
	ld.wu	$a0, $s3, 0
.LBB0_282:                              # %for.inc121.i.i
                                        #   in Loop: Header=BB0_283 Depth=3
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB0_288
.LBB0_283:                              # %for.cond94.preheader.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_286 Depth 4
	slli.d	$s0, $fp, 3
	ldx.d	$s2, $a1, $s0
	slli.d	$a2, $s5, 5
	alsl.d	$s1, $s5, $a2, 3
	add.d	$a2, $s2, $s1
	ld.w	$a2, $a2, 8
	beqz	$a2, .LBB0_282
# %bb.284:                              # %for.body103.i.i.preheader
                                        #   in Loop: Header=BB0_283 Depth=3
	move	$s6, $zero
	move	$s8, $zero
	b	.LBB0_286
	.p2align	4, , 16
.LBB0_285:                              # %if.end107.i.i
                                        #   in Loop: Header=BB0_286 Depth=4
	add.d	$a0, $s2, $s1
	ld.d	$a0, $a0, 16
	ldx.d	$a1, $a0, $s6
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_add)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 8
	ldx.d	$s2, $a1, $s0
	add.d	$a0, $s2, $s1
	ld.wu	$a0, $a0, 8
	addi.d	$s8, $s8, 1
	addi.d	$s6, $s6, 8
	bgeu	$s8, $a0, .LBB0_281
.LBB0_286:                              # %for.body103.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        #       Parent Loop BB0_283 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$s4, .LBB0_285
# %bb.287:                              # %if.then105.i.i
                                        #   in Loop: Header=BB0_286 Depth=4
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2096
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	b	.LBB0_285
	.p2align	4, , 16
.LBB0_288:                              # %for.end123.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ori	$s2, $zero, 2
	beqz	$s4, .LBB0_334
# %bb.289:                              # %if.then125.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	addi.d	$fp, $s4, 16
	beqz	$a1, .LBB0_308
# %bb.290:                              # %for.cond1.preheader.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $s4, 8
	move	$s1, $zero
	b	.LBB0_293
	.p2align	4, , 16
.LBB0_291:                              # %for.inc105.loopexit.i.i.i
                                        #   in Loop: Header=BB0_293 Depth=3
	ld.wu	$a1, $s4, 0
.LBB0_292:                              # %for.inc105.i.i.i
                                        #   in Loop: Header=BB0_293 Depth=3
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a1, .LBB0_309
.LBB0_293:                              # %for.cond1.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_298 Depth 4
                                        #           Child Loop BB0_300 Depth 5
	slli.d	$s6, $s1, 3
	ldx.d	$a3, $a0, $s6
	ldptr.w	$a2, $a3, 10248
	beqz	$a2, .LBB0_292
# %bb.294:                              # %for.cond6.preheader.i.i.i.preheader
                                        #   in Loop: Header=BB0_293 Depth=3
	move	$s0, $zero
	b	.LBB0_298
	.p2align	4, , 16
.LBB0_295:                              # %do.body.thread.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	ldptr.d	$a3, $a3, 10256
	ldx.d	$a1, $a3, $a1
	beq	$a0, $fp, .LBB0_305
.LBB0_296:                              # %if.end92.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 8
.LBB0_297:                              # %for.inc102.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	ldx.d	$a3, $a0, $s6
	ldx.wu	$a1, $a3, $s7
	addi.d	$s0, $s0, 1
	bgeu	$s0, $a1, .LBB0_291
.LBB0_298:                              # %for.cond6.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        #       Parent Loop BB0_293 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_300 Depth 5
	ld.w	$a2, $s4, 0
	slli.d	$a1, $s0, 3
	beqz	$a2, .LBB0_295
# %bb.299:                              # %for.body10.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	ldptr.d	$a3, $a3, 10256
	ldx.d	$a1, $a3, $a1
	move	$a5, $zero
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 3
	.p2align	4, , 16
.LBB0_300:                              # %for.body10.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        #       Parent Loop BB0_293 Depth=3
                                        #         Parent Loop BB0_298 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ldx.d	$a6, $a0, $a5
	beq	$a1, $a6, .LBB0_297
# %bb.301:                              # %for.cond6.i.i.i
                                        #   in Loop: Header=BB0_300 Depth=5
	addi.d	$a5, $a5, 8
	bne	$a4, $a5, .LBB0_300
# %bb.302:                              # %do.body.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	beq	$a0, $fp, .LBB0_306
# %bb.303:                              # %if.else70.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_296
# %bb.304:                              # %if.then74.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	addi.d	$a2, $a2, 1
	st.w	$a2, $s4, 0
	stx.d	$a1, $a0, $a4
	b	.LBB0_297
.LBB0_305:                              #   in Loop: Header=BB0_298 Depth=4
	move	$a3, $zero
	b	.LBB0_307
.LBB0_306:                              # %if.then49.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	bltu	$s2, $a2, .LBB0_296
.LBB0_307:                              # %if.then53.i.i.i
                                        #   in Loop: Header=BB0_298 Depth=4
	addi.d	$a2, $a2, 1
	st.w	$a2, $s4, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_297
	.p2align	4, , 16
.LBB0_308:                              # %entry.for.end107_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $s4, 8
	move	$a1, $zero
.LBB0_309:                              # %nfa_closure.exit.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	pcalau12i	$a2, %pc_hi20(nfacmp)
	addi.d	$a3, $a2, %pc_lo12(nfacmp)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 160
	ld.d	$a2, $sp, 168
	bstrpick.d	$a3, $a1, 31, 0
	beqz	$a1, .LBB0_318
# %bb.310:                              # %for.body130.lr.ph.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.w	$a4, $s4, 0
	beqz	$a4, .LBB0_320
# %bb.311:                              # %for.body130.i.i.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	move	$s0, $zero
	bstrpick.d	$a0, $a4, 31, 0
	slli.d	$a5, $a0, 3
	b	.LBB0_313
	.p2align	4, , 16
.LBB0_312:                              # %for.inc141.i.i
                                        #   in Loop: Header=BB0_313 Depth=3
	addi.d	$s0, $s0, 1
	beq	$s0, $a3, .LBB0_318
.LBB0_313:                              # %for.body130.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_315 Depth 4
	slli.d	$a0, $s0, 3
	ldx.d	$a6, $a2, $a0
	ld.w	$a0, $a6, 0
	bne	$a4, $a0, .LBB0_312
# %bb.314:                              # %for.cond.preheader.i.i.i
                                        #   in Loop: Header=BB0_313 Depth=3
	ld.d	$a0, $s4, 8
	ld.d	$a6, $a6, 8
	move	$a7, $zero
	.p2align	4, , 16
.LBB0_315:                              # %for.body.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        #       Parent Loop BB0_313 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$t0, $a0, $a7
	ldx.d	$t1, $a6, $a7
	bne	$t0, $t1, .LBB0_312
# %bb.316:                              # %for.cond.i.i.i
                                        #   in Loop: Header=BB0_315 Depth=4
	addi.d	$a7, $a7, 8
	bne	$a5, $a7, .LBB0_315
# %bb.317:                              # %if.then136.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	bnez	$a0, .LBB0_330
	b	.LBB0_332
	.p2align	4, , 16
.LBB0_318:                              # %do.body144.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	bnez	$a2, .LBB0_323
# %bb.319:                              # %if.then147.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a2, $sp, 176
	st.d	$a2, $sp, 168
	b	.LBB0_325
.LBB0_320:                              # %for.body130.us.i.i.preheader
                                        #   in Loop: Header=BB0_277 Depth=2
	move	$s0, $zero
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_321:                              # %for.body130.us.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a0, 0
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB0_329
# %bb.322:                              # %for.inc141.us.i.i
                                        #   in Loop: Header=BB0_321 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$a0, $a0, 8
	bne	$a3, $s0, .LBB0_321
.LBB0_323:                              # %if.else155.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $sp, 176
	beq	$a2, $a0, .LBB0_326
# %bb.324:                              # %if.else170.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	andi	$a0, $a1, 7
	beqz	$a0, .LBB0_328
.LBB0_325:                              # %if.then174.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 160
	slli.d	$a0, $a3, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_333
.LBB0_326:                              # %if.then160.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	bltu	$s2, $a1, .LBB0_328
# %bb.327:                              # %if.then163.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 160
	slli.d	$a0, $a1, 3
	stx.d	$s4, $a2, $a0
	b	.LBB0_333
.LBB0_328:                              # %if.end182.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	addi.d	$a0, $sp, 160
	move	$a1, $s4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_333
.LBB0_329:                              # %if.then136.loopexit124.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.d	$a0, $s4, 8
	beqz	$a0, .LBB0_332
.LBB0_330:                              # %if.then136.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	beq	$a0, $fp, .LBB0_332
# %bb.331:                              # %if.then.i.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_332:                              # %free_DFAState.exit.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168
	slli.d	$a1, $s0, 3
	ldx.d	$s4, $a0, $a1
.LBB0_333:                              # %Lnext.i.i
                                        #   in Loop: Header=BB0_277 Depth=2
	slli.d	$a0, $s5, 3
	addi.d	$a1, $s3, 40
	stx.d	$s4, $a1, $a0
.LBB0_334:                              # %for.inc189.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 256
	bne	$s5, $a0, .LBB0_279
# %bb.335:                              # %for.inc192.i.loopexit896.i
                                        #   in Loop: Header=BB0_277 Depth=2
	ld.wu	$s1, $sp, 160
	ori	$s5, $zero, 2048
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_276
.LBB0_336:                              # %for.end194.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s6, $s3, 296
	st.w	$zero, $s3, 296
	st.d	$zero, $s3, 304
	ori	$s7, $zero, 1
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	beqz	$s1, .LBB0_387
# %bb.337:                              # %for.body.lr.ph.i65.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	move	$a0, $s3
	move	$s3, $zero
	addi.d	$s4, $a0, 312
	b	.LBB0_340
	.p2align	4, , 16
.LBB0_338:                              # %if.then.i78.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	ld.wu	$a0, $a4, 296
	st.d	$s4, $a4, 304
	addi.d	$a2, $a0, 1
	st.w	$a2, $a4, 296
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s4, $a0
.LBB0_339:                              # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s3, $s1, .LBB0_347
.LBB0_340:                              # %for.body.i66.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168
	ldx.d	$a3, $a1, $fp
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a4, 304
	move	$a1, $a0
	stptr.d	$a0, $a3, 2088
	st.w	$s0, $a0, 0
	beqz	$a2, .LBB0_338
# %bb.341:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	ld.w	$a0, $s6, 0
	beq	$a2, $s4, .LBB0_344
# %bb.342:                              # %if.else34.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	andi	$a3, $a0, 7
	beqz	$a3, .LBB0_346
# %bb.343:                              # %if.then37.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 0
	slli.d	$a0, $a3, 3
	stx.d	$a1, $a2, $a0
	b	.LBB0_339
	.p2align	4, , 16
.LBB0_344:                              # %if.then21.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	bltu	$s2, $a0, .LBB0_346
# %bb.345:                              # %if.then24.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	addi.d	$a3, $a0, 1
	st.w	$a3, $s6, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
	b	.LBB0_339
	.p2align	4, , 16
.LBB0_346:                              # %if.end49.i.i.i
                                        #   in Loop: Header=BB0_340 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.wu	$s1, $sp, 160
	b	.LBB0_339
.LBB0_347:                              # %for.cond57.preheader.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$s1, .LBB0_380
# %bb.348:                              # %for.cond61.preheader.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a2, $sp, 168
	move	$fp, $zero
	ori	$t6, $zero, 4
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_351
	.p2align	4, , 16
.LBB0_349:                              # %for.inc319.loopexit.i.i.i
                                        #   in Loop: Header=BB0_351 Depth=2
	ld.wu	$s1, $sp, 160
	ori	$t6, $zero, 4
	ori	$s5, $zero, 2048
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
.LBB0_350:                              # %for.inc319.i.i.i
                                        #   in Loop: Header=BB0_351 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s1, .LBB0_381
.LBB0_351:                              # %for.cond61.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_353 Depth 3
                                        #       Child Loop BB0_358 Depth 3
                                        #         Child Loop BB0_362 Depth 4
                                        #         Child Loop BB0_365 Depth 4
                                        #       Child Loop BB0_368 Depth 3
                                        #         Child Loop BB0_372 Depth 4
	slli.d	$s0, $fp, 3
	ldx.d	$a0, $a2, $s0
	move	$a1, $zero
	b	.LBB0_353
	.p2align	4, , 16
.LBB0_352:                              # %for.inc86.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=3
	addi.d	$a1, $a1, 8
	beq	$a1, $s5, .LBB0_355
.LBB0_353:                              # %for.body63.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a3, $a0, $a1
	ld.d	$a3, $a3, 40
	beqz	$a3, .LBB0_352
# %bb.354:                              # %if.then70.i.i.i
                                        #   in Loop: Header=BB0_353 Depth=3
	ldptr.d	$a4, $a0, 2088
	ldptr.d	$a3, $a3, 2088
	add.d	$a4, $a4, $a1
	st.d	$a3, $a4, 8
	b	.LBB0_352
	.p2align	4, , 16
.LBB0_355:                              # %for.cond89.preheader.i.i.i
                                        #   in Loop: Header=BB0_351 Depth=2
	ld.wu	$a1, $a0, 0
	beqz	$a1, .LBB0_350
# %bb.356:                              # %for.cond96.preheader.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_351 Depth=2
	ld.d	$a3, $a0, 8
	move	$a4, $zero
	lu12i.w	$s1, -524288
	b	.LBB0_358
	.p2align	4, , 16
.LBB0_357:                              # %for.inc124.i.i.i
                                        #   in Loop: Header=BB0_358 Depth=3
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB0_366
.LBB0_358:                              # %for.cond96.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_362 Depth 4
                                        #         Child Loop BB0_365 Depth 4
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a3, $a5
	ldptr.w	$a7, $a5, 10288
	beqz	$a7, .LBB0_357
# %bb.359:                              # %for.body106.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_358 Depth=3
	ldptr.d	$a5, $a5, 10296
	bstrpick.d	$a6, $a7, 31, 0
	bgeu	$a7, $t6, .LBB0_361
# %bb.360:                              #   in Loop: Header=BB0_358 Depth=3
	move	$a7, $zero
	b	.LBB0_364
	.p2align	4, , 16
.LBB0_361:                              # %vector.ph381
                                        #   in Loop: Header=BB0_358 Depth=3
	bstrpick.d	$a7, $a6, 31, 2
	slli.d	$a7, $a7, 2
	vinsgr2vr.w	$vr0, $s1, 0
	vinsgr2vr.w	$vr0, $s1, 1
	addi.d	$t0, $a5, 16
	move	$t1, $a7
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_362:                              # %vector.body384
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        #       Parent Loop BB0_358 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t2, $t0, -16
	ld.d	$t3, $t0, -8
	ld.d	$t4, $t0, 0
	ld.d	$t5, $t0, 8
	ld.d	$t2, $t2, 8
	ld.d	$t3, $t3, 8
	ld.d	$t4, $t4, 8
	ld.d	$t5, $t5, 8
	ld.w	$t2, $t2, 8
	ld.w	$t3, $t3, 8
	ld.w	$t4, $t4, 8
	ld.w	$t5, $t5, 8
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t5, 1
	vmax.w	$vr0, $vr0, $vr2
	vmax.w	$vr1, $vr1, $vr3
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB0_362
# %bb.363:                              # %middle.block390
                                        #   in Loop: Header=BB0_358 Depth=3
	vmax.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$s1, $vr0, 0
	beq	$a7, $a6, .LBB0_357
.LBB0_364:                              # %for.body106.i.i.i.preheader
                                        #   in Loop: Header=BB0_358 Depth=3
	sub.d	$a6, $a6, $a7
	alsl.d	$a5, $a7, $a5, 3
	.p2align	4, , 16
.LBB0_365:                              # %for.body106.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        #       Parent Loop BB0_358 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a5, 0
	ld.d	$a7, $a7, 8
	ld.w	$a7, $a7, 8
	slt	$t0, $a7, $s1
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $s1, $t0
	or	$s1, $t0, $a7
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_365
	b	.LBB0_357
	.p2align	4, , 16
.LBB0_366:                              # %for.cond135.preheader.i.i.i.preheader
                                        #   in Loop: Header=BB0_351 Depth=2
	move	$s3, $zero
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_368
	.p2align	4, , 16
.LBB0_367:                              # %for.inc316.i.i.i
                                        #   in Loop: Header=BB0_368 Depth=3
	ldx.d	$a0, $a2, $s0
	ld.wu	$a1, $a0, 0
	addi.d	$s3, $s3, 1
	bgeu	$s3, $a1, .LBB0_349
.LBB0_368:                              # %for.cond135.preheader.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_372 Depth 4
	ld.d	$a1, $a0, 8
	slli.d	$s4, $s3, 3
	ldx.d	$a1, $a1, $s4
	ldptr.w	$a3, $a1, 10288
	beqz	$a3, .LBB0_367
# %bb.369:                              # %for.body146.i.i.i.preheader
                                        #   in Loop: Header=BB0_368 Depth=3
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB0_372
.LBB0_370:                              # %if.then170.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	ori	$a3, $zero, 2056
	ldx.wu	$a3, $a0, $a3
	stptr.d	$a5, $a0, 2064
	addi.d	$a4, $a3, 1
	stptr.w	$a4, $a0, 2056
	slli.d	$a0, $a3, 3
	stx.d	$a1, $a5, $a0
	.p2align	4, , 16
.LBB0_371:                              # %for.inc313.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	ldx.d	$a0, $a2, $s0
	ld.d	$a1, $a0, 8
	ldx.d	$a1, $a1, $s4
	ldx.wu	$a3, $a1, $a6
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bgeu	$s6, $a3, .LBB0_367
.LBB0_372:                              # %for.body146.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_351 Depth=2
                                        #       Parent Loop BB0_368 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldptr.d	$a1, $a1, 10296
	ldx.d	$a1, $a1, $s5
	ld.d	$a3, $a1, 8
	ld.w	$a3, $a3, 8
	bne	$a3, $s1, .LBB0_371
# %bb.373:                              # %do.body162.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	ldptr.d	$a0, $a0, 2088
	ldptr.d	$a3, $a0, 2064
	addi.d	$a4, $a0, 2047
	addi.d	$a5, $a4, 25
	beqz	$a3, .LBB0_370
# %bb.374:                              # %if.else204.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	addi.d	$a0, $a4, 9
	ld.w	$a4, $a0, 0
	beq	$a3, $a5, .LBB0_377
# %bb.375:                              # %if.else255.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	andi	$a5, $a4, 7
	beqz	$a5, .LBB0_379
# %bb.376:                              # %if.then264.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	bstrpick.d	$a5, $a4, 31, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a5, 3
	stx.d	$a1, $a3, $a0
	b	.LBB0_371
.LBB0_377:                              # %if.then219.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	bltu	$s2, $a4, .LBB0_379
# %bb.378:                              # %if.then227.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	addi.d	$a5, $a4, 1
	st.w	$a5, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$a1, $a3, $a0
	b	.LBB0_371
.LBB0_379:                              # %if.end293.i.i.i
                                        #   in Loop: Header=BB0_372 Depth=4
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168
	b	.LBB0_371
.LBB0_380:                              #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB0_381:                              # %dfa_to_scanner.exit.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$s1, .LBB0_387
# %bb.382:                              # %for.body.i81.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	b	.LBB0_384
	.p2align	4, , 16
.LBB0_383:                              # %free_DFAState.exit.i.i.i
                                        #   in Loop: Header=BB0_384 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 160
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bgeu	$s1, $a0, .LBB0_387
.LBB0_384:                              # %for.body.i81.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 168
	ldx.d	$s0, $a0, $fp
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB0_383
# %bb.385:                              # %for.body.i81.i.i
                                        #   in Loop: Header=BB0_384 Depth=2
	addi.d	$a1, $s0, 16
	beq	$a0, $a1, .LBB0_383
# %bb.386:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_384 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_383
.LBB0_387:                              # %do.body.i86.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB0_390
# %bb.388:                              # %do.body.i86.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $sp, 176
	beq	$a0, $a1, .LBB0_390
# %bb.389:                              # %if.then.i90.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_390:                              # %nfa_to_scanner.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a0, $s6, 0
	addi.d	$a1, $s3, 336
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(trans_hash_fns+16)
	beqz	$a0, .LBB0_468
# %bb.391:                              # %for.body.i.i776.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB0_392:                              # %for.body.i.i776.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s0
	addi.d	$a1, $a0, 2047
	addi.d	$a0, $a1, 49
	addi.d	$a1, $a1, 9
	pcaddu18i	$ra, %call36(set_union)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 296
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bltu	$s1, $a0, .LBB0_392
# %bb.393:                              # %while.cond.preheader.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	beqz	$a0, .LBB0_468
# %bb.394:                              # %for.body5.i.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB0_395:                              # %for.body5.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_397 Depth 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 304
	slli.d	$a1, $s1, 3
	ldx.d	$s4, $a0, $a1
	move	$s2, $zero
	addi.d	$a0, $s4, 2047
	addi.d	$s0, $a0, 49
	b	.LBB0_397
	.p2align	4, , 16
.LBB0_396:                              # %for.inc24.i.i.i
                                        #   in Loop: Header=BB0_397 Depth=3
	addi.d	$s2, $s2, 8
	beq	$s2, $s5, .LBB0_400
.LBB0_397:                              # %for.body11.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_395 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $s4, $s2
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_396
# %bb.398:                              # %for.body11.i.i.i
                                        #   in Loop: Header=BB0_397 Depth=3
	beq	$s4, $a0, .LBB0_396
# %bb.399:                              # %if.then16.i.i.i
                                        #   in Loop: Header=BB0_397 Depth=3
	addi.d	$a0, $a0, 2047
	addi.d	$a1, $a0, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_union)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	b	.LBB0_396
	.p2align	4, , 16
.LBB0_400:                              # %for.inc27.i.i.i
                                        #   in Loop: Header=BB0_395 Depth=2
	ld.wu	$a0, $s6, 0
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB0_395
# %bb.401:                              # %while.cond.loopexit.i.i.i
                                        #   in Loop: Header=BB0_395 Depth=2
	beqz	$s3, .LBB0_403
# %bb.402:                              # %while.cond.loopexit.i.i.i
                                        #   in Loop: Header=BB0_395 Depth=2
	move	$s1, $zero
	move	$s3, $zero
	bnez	$a0, .LBB0_395
.LBB0_403:                              # %for.cond30.preheader.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$s2, $zero, 2
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_468
# %bb.404:                              # %for.body33.i.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_405:                              # %for.body33.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 304
	ldx.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 2047
	addi.d	$s0, $a0, 49
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sort_VecAction)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 296
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB0_405
# %bb.406:                              # %compute_liveness.exit.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s7, $fp, %pc_lo12(trans_hash_fns+16)
	ori	$s2, $zero, 2
	beqz	$a0, .LBB0_469
# %bb.407:                              # %for.body.lr.ph.i2.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a1, $zero
	move	$s6, $zero
	b	.LBB0_409
	.p2align	4, , 16
.LBB0_408:                              # %for.inc63.i.i.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_469
.LBB0_409:                              # %for.body.i4.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_412 Depth 3
                                        #         Child Loop BB0_417 Depth 4
                                        #           Child Loop BB0_418 Depth 5
                                        #             Child Loop BB0_421 Depth 6
                                        #         Child Loop BB0_436 Depth 4
                                        #         Child Loop BB0_445 Depth 4
                                        #           Child Loop BB0_447 Depth 5
                                        #             Child Loop BB0_448 Depth 6
	ld.d	$a0, $s3, 304
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s4, $a0, $a1
	move	$s3, $zero
	addi.d	$a0, $s4, 2047
	addi.d	$a0, $a0, 89
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_412
	.p2align	4, , 16
.LBB0_410:                              #   in Loop: Header=BB0_412 Depth=3
	move	$s6, $zero
.LBB0_411:                              # %if.end60.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	stx.d	$s0, $a0, $s1
	ori	$a0, $zero, 256
	beq	$s3, $a0, .LBB0_408
.LBB0_412:                              # %for.body4.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_417 Depth 4
                                        #           Child Loop BB0_418 Depth 5
                                        #             Child Loop BB0_421 Depth 6
                                        #         Child Loop BB0_436 Depth 4
                                        #         Child Loop BB0_445 Depth 4
                                        #           Child Loop BB0_447 Depth 5
                                        #             Child Loop BB0_448 Depth 6
	bnez	$s6, .LBB0_414
# %bb.413:                              # %if.then.i.i794.i
                                        #   in Loop: Header=BB0_412 Depth=3
	ori	$a0, $zero, 1
	ori	$a1, $zero, 88
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB0_414:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	slli.d	$s1, $s3, 3
	addi.d	$a0, $s4, 8
	ldx.d	$s8, $a0, $s1
	addi.d	$fp, $s6, 24
	beqz	$s8, .LBB0_460
# %bb.415:                              # %if.then8.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	ldptr.w	$a0, $s4, 2096
	addi.d	$s7, $s6, 8
	beqz	$a0, .LBB0_443
# %bb.416:                              # %Lagainc.preheader.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	move	$s5, $zero
	move	$s0, $zero
.LBB0_417:                              # %Lagainc.preheader.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_418 Depth 5
                                        #             Child Loop BB0_421 Depth 6
	ldptr.w	$a1, $s8, 2096
	bgeu	$s5, $a1, .LBB0_432
.LBB0_418:                              # %Lagainb.preheader.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        #         Parent Loop BB0_417 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_421 Depth 6
	slli.d	$s1, $s0, 3
	b	.LBB0_421
	.p2align	4, , 16
.LBB0_419:                              # %if.then79.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	ld.wu	$a0, $s6, 8
	st.d	$fp, $s6, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 8
	slli.d	$a0, $a0, 3
	stx.d	$a1, $fp, $a0
.LBB0_420:                              # %do.end132.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	ldptr.w	$a0, $s4, 2096
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$s0, $a0, .LBB0_443
.LBB0_421:                              # %Lagainb.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        #         Parent Loop BB0_417 Depth=4
                                        #           Parent Loop BB0_418 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ldptr.d	$a1, $s4, 2104
	ldptr.d	$a2, $s8, 2104
	ldx.d	$a1, $a1, $s1
	slli.d	$a3, $s5, 3
	ldx.d	$a3, $a2, $a3
	ld.w	$a2, $a1, 32
	ld.w	$a3, $a3, 32
	beq	$a2, $a3, .LBB0_431
# %bb.422:                              # %if.end65.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	bgeu	$a2, $a3, .LBB0_430
# %bb.423:                              # %do.body76.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_419
# %bb.424:                              # %if.else91.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	ld.w	$a2, $s7, 0
	beq	$a0, $fp, .LBB0_427
# %bb.425:                              # %if.else110.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_429
# %bb.426:                              # %if.then114.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s7, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_420
	.p2align	4, , 16
.LBB0_427:                              # %if.then96.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	bltu	$s2, $a2, .LBB0_429
# %bb.428:                              # %if.then99.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	addi.d	$a3, $a2, 1
	st.w	$a3, $s7, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a0, $a2
	b	.LBB0_420
	.p2align	4, , 16
.LBB0_429:                              # %if.end126.i.i.i.i
                                        #   in Loop: Header=BB0_421 Depth=6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_420
	.p2align	4, , 16
.LBB0_430:                              # %if.end137.i.i.i.i
                                        #   in Loop: Header=BB0_418 Depth=5
	ldptr.w	$a1, $s8, 2096
	addi.d	$s5, $s5, 1
	addi.w	$a2, $s5, 0
	bltu	$a2, $a1, .LBB0_418
	b	.LBB0_432
	.p2align	4, , 16
.LBB0_431:                              # %if.then62.i.i.i.i
                                        #   in Loop: Header=BB0_417 Depth=4
	addi.w	$s0, $s0, 1
	addi.w	$s5, $s5, 1
	bltu	$s0, $a0, .LBB0_417
	b	.LBB0_443
.LBB0_432:                              # %while.cond4.preheader.i.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	bgeu	$s0, $a0, .LBB0_443
# %bb.433:                              # %do.body.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	slli.d	$s1, $s0, 3
	b	.LBB0_436
	.p2align	4, , 16
.LBB0_434:                              # %if.then8.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldptr.d	$a0, $s4, 2104
	ld.wu	$a1, $s6, 8
	ldx.d	$a0, $a0, $s1
	st.d	$fp, $s6, 16
	addi.d	$a2, $a1, 1
	st.w	$a2, $s6, 8
	slli.d	$a1, $a1, 3
	stx.d	$a0, $fp, $a1
.LBB0_435:                              # %do.end.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldptr.w	$a0, $s4, 2096
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bgeu	$s0, $a0, .LBB0_443
.LBB0_436:                              # %do.body.i.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_434
# %bb.437:                              # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ld.w	$a1, $s7, 0
	beq	$a0, $fp, .LBB0_440
# %bb.438:                              # %if.else33.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldptr.d	$a2, $s4, 2104
	andi	$a3, $a1, 7
	beqz	$a3, .LBB0_442
# %bb.439:                              # %if.then36.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	bstrpick.d	$a3, $a1, 31, 0
	ldx.d	$a2, $a2, $s1
	addi.d	$a1, $a1, 1
	st.w	$a1, $s7, 0
	slli.d	$a1, $a3, 3
	stx.d	$a2, $a0, $a1
	b	.LBB0_435
	.p2align	4, , 16
.LBB0_440:                              # %if.then19.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldptr.d	$a2, $s4, 2104
	bltu	$s2, $a1, .LBB0_442
# %bb.441:                              # %if.then22.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldx.d	$a2, $a2, $s1
	addi.d	$a3, $a1, 1
	st.w	$a3, $s7, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB0_435
	.p2align	4, , 16
.LBB0_442:                              # %if.end48.i.i.i.i
                                        #   in Loop: Header=BB0_436 Depth=4
	ldx.d	$a1, $a2, $s1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB0_435
	.p2align	4, , 16
.LBB0_443:                              # %action_diff.exit.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	ldptr.w	$a0, $s4, 2056
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_460
# %bb.444:                              # %Lagainc.preheader.lr.ph.i43.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	move	$s0, $zero
	move	$s5, $zero
	addi.d	$s8, $s6, 48
.LBB0_445:                              # %Lagainc.preheader.i44.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_447 Depth 5
                                        #             Child Loop BB0_448 Depth 6
	ld.w	$a2, $s7, 0
	bgeu	$s0, $a2, .LBB0_460
# %bb.446:                              # %Lagainb.preheader.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	ldptr.d	$a3, $s4, 2064
	ld.d	$a4, $s6, 16
.LBB0_447:                              # %Lagainb.preheader.i45.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        #         Parent Loop BB0_445 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_448 Depth 6
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $a4, $a1
	ld.w	$a5, $a1, 32
	alsl.d	$a6, $s5, $a3, 3
	.p2align	4, , 16
.LBB0_448:                              # %Lagainb.i46.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        #       Parent Loop BB0_412 Depth=3
                                        #         Parent Loop BB0_445 Depth=4
                                        #           Parent Loop BB0_447 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$a1, $a6, 0
	ld.w	$a7, $a1, 32
	beq	$a7, $a5, .LBB0_452
# %bb.449:                              # %if.end60.i.i.i.i
                                        #   in Loop: Header=BB0_448 Depth=6
	bgeu	$a7, $a5, .LBB0_451
# %bb.450:                              # %if.then70.i.i.i.i
                                        #   in Loop: Header=BB0_448 Depth=6
	addi.w	$s5, $s5, 1
	addi.d	$a6, $a6, 8
	bltu	$s5, $a0, .LBB0_448
	b	.LBB0_460
	.p2align	4, , 16
.LBB0_451:                              # %if.end76.i.i.i.i
                                        #   in Loop: Header=BB0_447 Depth=5
	addi.d	$s0, $s0, 1
	addi.w	$a1, $s0, 0
	bne	$a2, $a1, .LBB0_447
	b	.LBB0_460
	.p2align	4, , 16
.LBB0_452:                              # %do.body.i51.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	ld.d	$a0, $s6, 56
	beqz	$a0, .LBB0_456
# %bb.453:                              # %if.else.i53.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	ld.w	$a2, $s8, 0
	addi.d	$a3, $s6, 64
	beq	$a0, $a3, .LBB0_457
# %bb.454:                              # %if.else39.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	andi	$a3, $a2, 7
	beqz	$a3, .LBB0_459
# %bb.455:                              # %if.then42.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s8, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	ldptr.w	$a0, $s4, 2056
	addi.w	$s5, $s5, 1
	addi.w	$s0, $s0, 1
	bltu	$s5, $a0, .LBB0_445
	b	.LBB0_460
.LBB0_456:                              # %if.then12.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	ld.wu	$a0, $s6, 48
	addi.d	$a3, $s6, 64
	st.d	$a3, $s6, 56
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 48
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	ldptr.w	$a0, $s4, 2056
	addi.w	$s5, $s5, 1
	addi.w	$s0, $s0, 1
	bltu	$s5, $a0, .LBB0_445
	b	.LBB0_460
.LBB0_457:                              # %if.then25.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	bltu	$s2, $a2, .LBB0_459
# %bb.458:                              # %if.then28.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	addi.d	$a3, $a2, 1
	st.w	$a3, $s8, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a0, $a2
	ldptr.w	$a0, $s4, 2056
	addi.w	$s5, $s5, 1
	addi.w	$s0, $s0, 1
	bltu	$s5, $a0, .LBB0_445
	b	.LBB0_460
.LBB0_459:                              # %if.end54.i.i.i.i
                                        #   in Loop: Header=BB0_445 Depth=4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s4, 2056
	addi.w	$s5, $s5, 1
	addi.w	$s0, $s0, 1
	bltu	$s5, $a0, .LBB0_445
	.p2align	4, , 16
.LBB0_460:                              # %if.end14.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	pcalau12i	$a0, %pc_hi20(trans_hash_fns)
	addi.d	$a2, $a0, %pc_lo12(trans_hash_fns)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(set_add_fn)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s6, .LBB0_410
# %bb.461:                              # %do.body.i.i789.i
                                        #   in Loop: Header=BB0_412 Depth=3
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB0_464
# %bb.462:                              # %do.body.i.i789.i
                                        #   in Loop: Header=BB0_412 Depth=3
	beq	$a0, $fp, .LBB0_464
# %bb.463:                              # %if.then25.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_464:                              # %do.body29.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	ld.d	$a0, $s6, 56
	st.w	$zero, $s6, 8
	st.d	$zero, $s6, 16
	beqz	$a0, .LBB0_467
# %bb.465:                              # %do.body29.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	addi.d	$a1, $s6, 64
	beq	$a0, $a1, .LBB0_467
# %bb.466:                              # %if.then47.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_467:                              # %do.body51.i.i.i
                                        #   in Loop: Header=BB0_412 Depth=3
	st.w	$zero, $s6, 48
	st.d	$zero, $s6, 56
	b	.LBB0_411
.LBB0_468:                              # %for.end65.i.sink.split.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s7, $fp, %pc_lo12(trans_hash_fns+16)
.LBB0_469:                              # %for.end65.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(set_to_vec)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 336
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_477
# %bb.470:                              # %for.body71.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a2, $s3, 344
	bstrpick.d	$a3, $a0, 31, 0
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_17 Depth=1
	move	$a1, $zero
	b	.LBB0_475
.LBB0_472:                              # %vector.ph
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a4, $zero
	bstrpick.d	$a1, $a3, 31, 2
	slli.d	$a1, $a1, 2
	addi.d	$a5, $a2, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB0_473:                              # %vector.body
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a4, 1
	addi.d	$t0, $a4, 2
	addi.d	$t1, $a4, 3
	ld.d	$t2, $a5, -16
	ld.d	$t3, $a5, -8
	ld.d	$t4, $a5, 0
	ld.d	$t5, $a5, 8
	st.w	$a4, $t2, 0
	st.w	$a7, $t3, 0
	st.w	$t0, $t4, 0
	st.w	$t1, $t5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB0_473
# %bb.474:                              # %middle.block
                                        #   in Loop: Header=BB0_17 Depth=1
	beq	$a1, $a3, .LBB0_477
.LBB0_475:                              # %for.body71.i.i.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$a3, $a3, $a1
	alsl.d	$a2, $a1, $a2, 3
	.p2align	4, , 16
.LBB0_476:                              # %for.body71.i.i.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a2, 0
	st.w	$a1, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_476
.LBB0_477:                              # %compute_transitions.exit.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a1, $s4, 48
	add.d	$a0, $a1, $a0
	st.w	$a0, $s4, 48
.LBB0_478:                              # %if.end877.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	lu12i.w	$s5, 2
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_492
# %bb.479:                              # %for.body.i797.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$fp, $zero
	b	.LBB0_481
	.p2align	4, , 16
.LBB0_480:                              # %free_NFAState.exit.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB0_492
.LBB0_481:                              # %for.body.i797.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_483 Depth 3
	ld.d	$a0, $s4, 16
	slli.d	$a1, $fp, 3
	ldx.d	$s0, $a0, $a1
	addi.d	$s1, $s0, 24
	ori	$s2, $zero, 256
	b	.LBB0_483
	.p2align	4, , 16
.LBB0_482:                              # %do.body13.i.i.i
                                        #   in Loop: Header=BB0_483 Depth=3
	st.w	$zero, $s1, -16
	st.d	$zero, $s1, -8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 40
	beqz	$s2, .LBB0_486
.LBB0_483:                              # %do.body.i.i801.i
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_481 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s1, -8
	beqz	$a0, .LBB0_482
# %bb.484:                              # %do.body.i.i801.i
                                        #   in Loop: Header=BB0_483 Depth=3
	beq	$s1, $a0, .LBB0_482
# %bb.485:                              # %if.then.i.i808.i
                                        #   in Loop: Header=BB0_483 Depth=3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_482
	.p2align	4, , 16
.LBB0_486:                              # %do.body23.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	ldptr.d	$a0, $s0, 10256
	beqz	$a0, .LBB0_489
# %bb.487:                              # %do.body23.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	add.d	$a1, $s0, $s6
	beq	$a0, $a1, .LBB0_489
# %bb.488:                              # %if.then33.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_489:                              # %do.body37.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	ldptr.d	$a0, $s0, 10296
	stptr.w	$zero, $s0, 10248
	stptr.d	$zero, $s0, 10256
	ori	$s2, $zero, 2
	beqz	$a0, .LBB0_480
# %bb.490:                              # %do.body37.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	ori	$a1, $s5, 2112
	add.d	$a1, $s0, $a1
	beq	$a0, $a1, .LBB0_480
# %bb.491:                              # %if.then56.i.i.i
                                        #   in Loop: Header=BB0_481 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_480
	.p2align	4, , 16
.LBB0_492:                              # %do.body.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $s4, 16
	ori	$fp, $zero, 1
	beqz	$a0, .LBB0_495
# %bb.493:                              # %do.body.i.i
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_495
# %bb.494:                              # %if.then.i817.i
                                        #   in Loop: Header=BB0_17 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_495:                              # %build_state_scanner.exit
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.w	$a0, $s4, 52
	st.w	$zero, $s4, 8
	st.d	$zero, $s4, 16
	addi.w	$s0, $a0, 1
	st.w	$s0, $s4, 52
	b	.LBB0_16
.LBB0_496:
	move	$s0, $zero
.LBB0_497:                              # %for.end98
	pcalau12i	$a0, %got_pc_hi20(verbose_level)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_level)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_499
# %bb.498:                              # %if.then100
	ld.w	$a2, $s4, 48
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_499:                              # %if.end102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
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
.Lfunc_end0:
	.size	build_scanners, .Lfunc_end0-build_scanners
                                        # -- End function
	.p2align	5                               # -- Begin function build_regex_nfa
	.type	build_regex_nfa,@function
build_regex_nfa:                        # @build_regex_nfa
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $a2
	move	$s2, $a0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 0
	lu12i.w	$a0, 2
	ori	$a1, $a0, 2056
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $a0, 2072
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $a0, 2176
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$fp, $zero, 1
	addi.d	$s1, $sp, 96
	vrepli.b	$vr0, 1
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	move	$s7, $a2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_3
.LBB1_1:                                # %if.then363
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a0, $s6, $a0
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s8, $a3, $a0
.LBB1_2:                                # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $s5
	move	$s7, $s6
.LBB1_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
                                        #       Child Loop BB1_42 Depth 3
                                        #       Child Loop BB1_40 Depth 3
                                        #     Child Loop BB1_136 Depth 2
	addi.d	$s5, $s0, 1
	st.d	$s5, $sp, 352
	ld.bu	$s3, $s0, 0
	addi.d	$a0, $s3, -40
	move	$s6, $s7
	ori	$a1, $zero, 52
	bltu	$a1, $a0, .LBB1_9
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ori	$s7, $zero, 91
	jr	$a0
.LBB1_5:                                # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_71
# %bb.6:                                # %if.else.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s2, 24
	beq	$a1, $a2, .LBB1_90
# %bb.7:                                # %if.else24.i
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_92
# %bb.8:                                # %if.then28.i
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_93
.LBB1_9:                                # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 124
	beq	$s3, $a0, .LBB1_52
# %bb.10:                               # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	bnez	$s3, .LBB1_12
	b	.LBB1_198
.LBB1_11:                               # %sw.bb472
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s5, $s0, 2
	st.d	$s5, $sp, 352
	ld.bu	$s3, $s0, 1
	beqz	$s3, .LBB1_197
.LBB1_12:                               # %sw.default477
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s2, 56
	beqz	$a0, .LBB1_14
# %bb.13:                               # %lor.lhs.false479
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_56
.LBB1_14:                               # %do.body488
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $s3, 5
	alsl.d	$a0, $s3, $a0, 3
	add.d	$a0, $s6, $a0
	ld.d	$a1, $a0, 16
	addi.d	$s8, $a0, 8
	addi.d	$s0, $s8, 16
	beqz	$a1, .LBB1_67
# %bb.15:                               # %if.else512
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s8, 0
	beq	$a1, $s0, .LBB1_74
# %bb.16:                               # %if.else545
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$s0, $s2, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB1_75
.LBB1_17:                               # %if.then531
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s0, .LBB1_110
# %bb.18:                               # %if.else.i454
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	beq	$s0, $a1, .LBB1_149
# %bb.19:                               # %if.else24.i456
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_151
# %bb.20:                               # %if.then28.i459
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s0, $a0
	b	.LBB1_152
.LBB1_21:                               # %sw.bb104
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$s4, $s5, 0
	ori	$a0, $zero, 94
	bne	$s4, $a0, .LBB1_23
# %bb.22:                               # %if.then108
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s5, $s0, 2
	st.d	$s5, $sp, 352
.LBB1_23:                               # %if.end111
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $sp, 96
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	ori	$t0, $zero, 92
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_24:                               # %while.cond113
                                        #   in Loop: Header=BB1_27 Depth=2
	bne	$a1, $t0, .LBB1_32
# %bb.25:                               # %sw.bb140
                                        #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s5, 1
	addi.d	$s0, $s5, 2
.LBB1_26:                               # %sw.default
                                        #   in Loop: Header=BB1_27 Depth=2
	stx.b	$fp, $a1, $s1
	move	$s5, $s0
	move	$a0, $a1
.LBB1_27:                               # %while.cond113
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_42 Depth 3
                                        #       Child Loop BB1_40 Depth 3
	ld.bu	$a1, $s5, 0
	addi.d	$s0, $s5, 1
	blt	$s7, $a1, .LBB1_24
# %bb.28:                               # %while.cond113
                                        #   in Loop: Header=BB1_27 Depth=2
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB1_33
# %bb.29:                               # %sw.bb119
                                        #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s5, 1
	beq	$a1, $t0, .LBB1_34
# %bb.30:                               # %sw.bb119
                                        #   in Loop: Header=BB1_27 Depth=2
	beqz	$a1, .LBB1_197
# %bb.31:                               #   in Loop: Header=BB1_27 Depth=2
	addi.d	$s5, $s5, 2
	bnez	$a1, .LBB1_35
	b	.LBB1_197
.LBB1_32:                               # %while.cond113
                                        #   in Loop: Header=BB1_27 Depth=2
	ori	$a0, $zero, 93
	bne	$a1, $a0, .LBB1_26
	b	.LBB1_63
.LBB1_33:                               # %while.cond113
                                        #   in Loop: Header=BB1_27 Depth=2
	bnez	$a1, .LBB1_26
	b	.LBB1_63
.LBB1_34:                               # %if.then127
                                        #   in Loop: Header=BB1_27 Depth=2
	ld.bu	$a1, $s5, 2
	addi.d	$s5, $s5, 3
	beqz	$a1, .LBB1_197
.LBB1_35:                               # %for.cond.preheader
                                        #   in Loop: Header=BB1_27 Depth=2
	andi	$a2, $a0, 255
	ori	$t0, $zero, 92
	bltu	$a1, $a2, .LBB1_27
# %bb.36:                               # %for.body.preheader
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a3, $a0, 1
	andi	$a3, $a3, 255
	addi.d	$a4, $a1, 1
	andi	$a4, $a4, 255
	sltu	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	sub.d	$a3, $a0, $a4
	ori	$a5, $zero, 255
	andn	$a3, $a5, $a3
	ori	$a5, $zero, 31
	bltu	$a3, $a5, .LBB1_38
# %bb.37:                               # %vector.scevcheck
                                        #   in Loop: Header=BB1_27 Depth=2
	addi.d	$a4, $a4, -1
	andi	$a4, $a4, 255
	bgeu	$a4, $a2, .LBB1_41
.LBB1_38:                               #   in Loop: Header=BB1_27 Depth=2
	move	$a2, $a0
.LBB1_39:                               # %for.body.preheader731
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a0, $a2
	.p2align	4, , 16
.LBB1_40:                               # %for.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a2, $a0, 255
	addi.d	$a0, $a0, 1
	andi	$a3, $a0, 255
	stx.b	$fp, $a2, $s1
	bgeu	$a1, $a3, .LBB1_40
	b	.LBB1_27
.LBB1_41:                               # %vector.ph
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a5, $zero
	addi.d	$a3, $a3, 1
	andi	$a4, $a3, 480
	add.d	$a2, $a0, $a4
	.p2align	4, , 16
.LBB1_42:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a0, $a5
	andi	$a6, $a6, 255
	add.d	$a7, $s1, $a6
	vstx	$vr0, $a6, $s1
	addi.w	$a5, $a5, 32
	vst	$vr0, $a7, 16
	bne	$a4, $a5, .LBB1_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB1_27 Depth=2
	move	$a0, $a2
	beq	$a3, $a4, .LBB1_27
	b	.LBB1_39
.LBB1_44:                               # %do.body246
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s8, 10256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $s8, $a0
	beqz	$a1, .LBB1_72
# %bb.45:                               # %if.else261
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_94
# %bb.46:                               # %if.else283
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_97
# %bb.47:                               # %if.then288
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_96
.LBB1_48:                               # %do.body303
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s8, 10256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $s8, $a0
	beqz	$a1, .LBB1_73
# %bb.49:                               # %if.else318
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s8, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_98
# %bb.50:                               # %if.else340
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_100
# %bb.51:                               # %if.then345
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s6, $a1, $a0
	b	.LBB1_101
.LBB1_52:                               # %do.body
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_79
# %bb.53:                               # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_111
# %bb.54:                               # %if.else28
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_118
# %bb.55:                               # %if.then32
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_113
.LBB1_56:                               # %do.body575
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s0, $s6, 8
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$s4, $a0, 0
	slli.d	$s3, $s3, 2
	ldx.w	$a0, $s4, $s3
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s0, $s0, $a0
	ld.d	$a1, $s0, 8
	beqz	$a1, .LBB1_86
# %bb.57:                               # %if.else621
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB1_124
# %bb.58:                               # %if.else684
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$a2, $s2, 16
	andi	$a0, $a0, 7
	beqz	$a0, .LBB1_125
.LBB1_59:                               # %if.then658
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$s0, $a2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s0, .LBB1_160
# %bb.60:                               # %if.else.i562
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a3, $s0
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	addi.d	$s0, $s6, 8
	beq	$a3, $a1, .LBB1_175
# %bb.61:                               # %if.else24.i564
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB1_177
# %bb.62:                               # %if.then28.i567
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_178
.LBB1_63:                               # %Lsetdone
                                        #   in Loop: Header=BB1_3 Depth=1
	st.d	$s0, $sp, 352
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_108
# %bb.64:                               # %if.else.i400
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s2, 24
	beq	$a1, $a2, .LBB1_130
# %bb.65:                               # %if.else24.i402
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_132
# %bb.66:                               # %if.then28.i405
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_133
.LBB1_67:                               # %if.then494
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_109
# %bb.68:                               # %if.else.i427
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s2, 24
	beq	$a1, $a2, .LBB1_145
# %bb.69:                               # %if.else24.i429
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_147
# %bb.70:                               # %if.then28.i432
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_148
.LBB1_71:                               # %if.then.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_93
.LBB1_72:                               # %if.then250
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a0, $s8, $a0
	stptr.d	$a3, $s8, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	b	.LBB1_2
.LBB1_73:                               # %if.then307
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a0, $s8, $a0
	stptr.d	$a3, $s8, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s6, $a3, $a0
	b	.LBB1_101
.LBB1_74:                               # %if.then524
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$s0, $s2, 16
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB1_17
.LBB1_75:                               # %if.end567
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s0, .LBB1_129
# %bb.76:                               # %if.else.i508
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	beq	$s0, $a1, .LBB1_156
# %bb.77:                               # %if.else24.i510
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_158
# %bb.78:                               # %if.then28.i513
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s0, $a0
	b	.LBB1_159
.LBB1_79:                               # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a0, $s6, $a0
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldptr.d	$s0, $a0, 10256
	beqz	$s0, .LBB1_114
.LBB1_80:                               # %if.else60
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s4, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB1_119
# %bb.81:                               # %if.else83
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$s6, $s2, 16
	andi	$a0, $s4, 7
	beqz	$a0, .LBB1_120
.LBB1_82:                               # %if.then73
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s6, .LBB1_154
# %bb.83:                               # %if.else.i319
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	beq	$s6, $a1, .LBB1_167
# %bb.84:                               # %if.else24.i321
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_169
# %bb.85:                               # %if.then28.i324
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s6, $a0
	b	.LBB1_170
.LBB1_86:                               # %if.then585
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_155
# %bb.87:                               # %if.else.i535
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s2, 24
	beq	$a1, $a2, .LBB1_171
# %bb.88:                               # %if.else24.i537
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	addi.d	$s0, $s6, 8
	beqz	$a2, .LBB1_173
# %bb.89:                               # %if.then28.i540
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_174
.LBB1_90:                               # %if.then12.i
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_92
# %bb.91:                               # %if.then16.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_93
.LBB1_92:                               # %if.end38.i
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_93:                               # %new_NFAState.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 352
	move	$a0, $s2
	move	$a2, $s6
	move	$a3, $s7
	pcaddu18i	$ra, %call36(build_regex_nfa)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 352
	move	$s8, $s6
	b	.LBB1_3
.LBB1_94:                               # %if.then269
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_97
# %bb.95:                               # %if.then274
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_96:                               # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s6, $a1, $a0
	b	.LBB1_2
.LBB1_97:                               # %if.end298
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_98:                               # %if.then326
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_100
# %bb.99:                               # %if.then331
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s6, $a1, $a0
	b	.LBB1_101
.LBB1_100:                              # %if.end355
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_101:                              # %do.body359
                                        #   in Loop: Header=BB1_3 Depth=1
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_1
# %bb.102:                              # %if.else374
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_105
# %bb.103:                              # %if.else396
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_107
# %bb.104:                              # %if.then401
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s8, $a1, $a0
	b	.LBB1_2
.LBB1_105:                              # %if.then382
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_107
# %bb.106:                              # %if.then387
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s8, $a1, $a0
	b	.LBB1_2
.LBB1_107:                              # %if.end411
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_108:                              # %if.then.i416
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_133
.LBB1_109:                              # %if.then.i443
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_148
.LBB1_110:                              # %if.then.i470
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_152
.LBB1_111:                              # %if.then15
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_118
# %bb.112:                              # %if.then20
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_113:                              # %do.body44
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldptr.d	$s0, $a0, 10256
	bnez	$s0, .LBB1_80
.LBB1_114:                              # %if.then48
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 0
	ld.d	$a1, $s2, 16
	move	$s7, $a0
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	st.w	$a2, $s7, 0
	beqz	$a1, .LBB1_153
# %bb.115:                              # %if.else.i292
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s2, 24
	beq	$a1, $a2, .LBB1_163
# %bb.116:                              # %if.else24.i294
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB1_165
# %bb.117:                              # %if.then28.i297
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a0, $a3, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_166
.LBB1_118:                              # %if.end42
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldptr.d	$s0, $a0, 10256
	bnez	$s0, .LBB1_80
	b	.LBB1_114
.LBB1_119:                              # %if.then68
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$s6, $s2, 16
	ori	$a0, $zero, 2
	bgeu	$a0, $s4, .LBB1_82
.LBB1_120:                              # %if.end99
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s6, .LBB1_161
# %bb.121:                              # %if.else.i373
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	beq	$s6, $a1, .LBB1_179
# %bb.122:                              # %if.else24.i375
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_181
# %bb.123:                              # %if.then28.i378
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $s6, $a0
	b	.LBB1_182
.LBB1_124:                              # %if.then645
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$s3, $s2, 0
	ld.d	$a2, $s2, 16
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB1_59
.LBB1_125:                              #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $a2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.d	$a0, $s3, 1
	st.w	$a0, $s2, 0
	st.w	$s3, $s7, 0
	beqz	$s4, .LBB1_162
# %bb.126:                              # %if.else.i616
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a3, $s4
	addi.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s2, 24
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beq	$s4, $a1, .LBB1_183
# %bb.127:                              # %if.else24.i618
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 7
	beqz	$a1, .LBB1_185
# %bb.128:                              # %if.then28.i621
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a0, $a2, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_186
.LBB1_129:                              # %if.then.i524
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_159
.LBB1_130:                              # %if.then12.i410
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_132
# %bb.131:                              # %if.then16.i412
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_133
.LBB1_132:                              # %if.end38.i409
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_133:                              # %new_NFAState.exit420
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s3, $zero
	ori	$s5, $zero, 1
	b	.LBB1_136
.LBB1_134:                              # %if.then165
                                        #   in Loop: Header=BB1_136 Depth=2
	ld.wu	$a1, $a0, 0
	st.d	$a3, $a2, 56
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	alsl.d	$a0, $a1, $s6, 3
	add.d	$a0, $a0, $s3
	st.d	$s7, $a0, 64
	.p2align	4, , 16
.LBB1_135:                              # %for.inc242
                                        #   in Loop: Header=BB1_136 Depth=2
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 40
	ori	$a0, $zero, 256
	beq	$s5, $a0, .LBB1_144
.LBB1_136:                              # %for.body148
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s5, $s1
	addi.d	$a1, $s4, -94
	sltui	$a1, $a1, 1
	sltui	$a0, $a0, 1
	xor	$a0, $a1, $a0
	bnez	$a0, .LBB1_135
# %bb.137:                              # %do.body160
                                        #   in Loop: Header=BB1_136 Depth=2
	add.d	$a2, $s6, $s3
	ld.d	$a1, $a2, 56
	addi.d	$a0, $a2, 48
	addi.d	$a3, $a2, 64
	beqz	$a1, .LBB1_134
# %bb.138:                              # %if.else182
                                        #   in Loop: Header=BB1_136 Depth=2
	ld.w	$a2, $a0, 0
	beq	$a3, $a1, .LBB1_141
# %bb.139:                              # %if.else214
                                        #   in Loop: Header=BB1_136 Depth=2
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_143
# %bb.140:                              # %if.then221
                                        #   in Loop: Header=BB1_136 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_135
.LBB1_141:                              # %if.then194
                                        #   in Loop: Header=BB1_136 Depth=2
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_143
# %bb.142:                              # %if.then201
                                        #   in Loop: Header=BB1_136 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_135
.LBB1_143:                              # %if.end235
                                        #   in Loop: Header=BB1_136 Depth=2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	b	.LBB1_135
.LBB1_144:                              #   in Loop: Header=BB1_3 Depth=1
	move	$s8, $s6
	b	.LBB1_3
.LBB1_145:                              # %if.then12.i437
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_147
# %bb.146:                              # %if.then16.i439
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_148
.LBB1_147:                              # %if.end38.i436
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_148:                              # %new_NFAState.exit447
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s8, 0
	st.d	$s0, $s8, 8
	addi.d	$a1, $a0, 1
	st.w	$a1, $s8, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s0, $a0
	b	.LBB1_196
.LBB1_149:                              # %if.then12.i464
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_151
# %bb.150:                              # %if.then16.i466
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s0, $a0
	b	.LBB1_152
.LBB1_151:                              # %if.end38.i463
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_152:                              # %new_NFAState.exit474
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s8, 0
	ld.d	$a1, $s8, 8
	addi.d	$a2, $a0, 1
	st.w	$a2, $s8, 0
	slli.d	$a0, $a0, 3
	b	.LBB1_194
.LBB1_153:                              # %if.then.i308
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_166
.LBB1_154:                              # %if.then.i335
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_170
.LBB1_155:                              # %if.then.i551
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	addi.d	$s0, $s6, 8
	b	.LBB1_174
.LBB1_156:                              # %if.then12.i518
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_158
# %bb.157:                              # %if.then16.i520
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s0, $a0
	b	.LBB1_159
.LBB1_158:                              # %if.end38.i517
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_159:                              # %new_NFAState.exit528
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s8
	b	.LBB1_195
.LBB1_160:                              # %if.then.i578
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	addi.d	$s0, $s6, 8
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_178
.LBB1_161:                              # %if.then.i389
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_182
.LBB1_162:                              # %if.then.i632
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $s2, 8
	addi.d	$a2, $s2, 24
	st.d	$a2, $s2, 16
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 8
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a2, $a0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_186
.LBB1_163:                              # %if.then12.i302
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	bltu	$a2, $a0, .LBB1_165
# %bb.164:                              # %if.then16.i304
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_166
.LBB1_165:                              # %if.end38.i301
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_166:                              # %new_NFAState.exit312
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.wu	$a0, $a2, $a0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	stptr.d	$a3, $a2, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 10248
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	move	$s0, $s5
	b	.LBB1_3
.LBB1_167:                              # %if.then12.i329
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_169
# %bb.168:                              # %if.then16.i331
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s6, $a0
	b	.LBB1_170
.LBB1_169:                              # %if.end38.i328
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldptr.d	$s0, $a1, 10256
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s4, $a1, $a0
.LBB1_170:                              # %new_NFAState.exit339
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s4, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s0, $a0
	move	$s0, $s5
	b	.LBB1_3
.LBB1_171:                              # %if.then12.i545
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a2, $zero, 2
	addi.d	$s0, $s6, 8
	bltu	$a2, $a0, .LBB1_173
# %bb.172:                              # %if.then16.i547
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a2, $a0, 1
	addi.d	$a3, $s2, 8
	st.w	$a2, $a3, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a1, $a0
	b	.LBB1_174
.LBB1_173:                              # %if.end38.i544
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s8, 0
.LBB1_174:                              # %new_NFAState.exit555
                                        #   in Loop: Header=BB1_3 Depth=1
	ldx.w	$a0, $s4, $s3
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s0, $a0
	add.d	$a2, $s0, $a0
	addi.d	$a3, $a2, 16
	st.d	$a3, $a2, 8
	addi.d	$a2, $a1, 1
	stx.w	$a2, $s0, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_187
.LBB1_175:                              # %if.then12.i572
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB1_177
# %bb.176:                              # %if.then16.i574
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_178
.LBB1_177:                              # %if.end38.i571
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s8, 0
.LBB1_178:                              # %new_NFAState.exit582
                                        #   in Loop: Header=BB1_3 Depth=1
	ldx.w	$a0, $s4, $s3
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	ldx.wu	$a1, $s0, $a0
	add.d	$a2, $s0, $a0
	ld.d	$a2, $a2, 8
	addi.d	$a3, $a1, 1
	stx.w	$a3, $s0, $a0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a2, $a0
	b	.LBB1_187
.LBB1_179:                              # %if.then12.i383
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_181
# %bb.180:                              # %if.then16.i385
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $s6, $a0
	b	.LBB1_182
.LBB1_181:                              # %if.end38.i382
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_182:                              # %new_NFAState.exit393
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	move	$s0, $s5
	b	.LBB1_3
.LBB1_183:                              # %if.then12.i626
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB1_185
# %bb.184:                              # %if.then16.i628
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a0, 1
	addi.d	$a2, $s2, 8
	st.w	$a1, $a2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_186
.LBB1_185:                              # %if.end38.i625
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $s2, 8
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_186:                              # %new_NFAState.exit636
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s6, 8
.LBB1_187:                              # %do.body737
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s3
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	add.d	$a0, $s0, $a0
	ld.d	$a1, $a0, 8
	addi.d	$a3, $a0, 16
	beqz	$a1, .LBB1_191
# %bb.188:                              # %if.else784
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_192
# %bb.189:                              # %if.else846
                                        #   in Loop: Header=BB1_3 Depth=1
	andi	$a3, $a2, 7
	beqz	$a3, .LBB1_195
# %bb.190:                              # %if.then859
                                        #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_194
.LBB1_191:                              # %if.then749
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a1, $a0, 0
	st.d	$a3, $a0, 8
	addi.d	$a2, $a1, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a1, 3
	stx.d	$s7, $a3, $a0
	b	.LBB1_196
.LBB1_192:                              # %if.then808
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB1_195
# %bb.193:                              # %if.then821
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_194:                              # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.d	$s7, $a1, $a0
	b	.LBB1_196
.LBB1_195:                              # %if.end885
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_196:                              # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s0, $s5
	move	$s8, $s6
	b	.LBB1_3
.LBB1_197:                              # %Lerror
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	pcaddu18i	$t8, %call36(d_fail)
	jr	$t8
.LBB1_198:                              # %do.body900
	ldptr.d	$a1, $s6, 10256
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $s6, $a0
	beqz	$a1, .LBB1_202
# %bb.199:                              # %if.else915
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB1_203
# %bb.200:                              # %if.else937
	andi	$a3, $a2, 7
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB1_206
# %bb.201:                              # %if.then942
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB1_205
.LBB1_202:                              # %if.then904
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.wu	$a0, $s6, $a0
	stptr.d	$a3, $s6, 10256
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 10248
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a1, $a3, $a0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_207
.LBB1_203:                              # %if.then923
	ori	$a3, $zero, 2
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB1_206
# %bb.204:                              # %if.then928
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB1_205:                              # %do.end955
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a2, $a1, $a0
	b	.LBB1_207
.LBB1_206:                              # %if.end952
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB1_207:                              # %do.end955
	st.d	$s5, $fp, 0
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end1:
	.size	build_regex_nfa, .Lfunc_end1-build_regex_nfa
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_198-.LJTI1_0
	.word	.LBB1_48-.LJTI1_0
	.word	.LBB1_101-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_44-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function nfacmp
	.type	nfacmp,@function
nfacmp:                                 # @nfacmp
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	sltu	$a2, $a0, $a1
	sltu	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	ret
.Lfunc_end2:
	.size	nfacmp, .Lfunc_end2-nfacmp
                                        # -- End function
	.p2align	5                               # -- Begin function trans_hash_fn
	.type	trans_hash_fn,@function
trans_hash_fn:                          # @trans_hash_fn
# %bb.0:                                # %entry
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB3_5
.LBB3_1:
	move	$a1, $zero
.LBB3_2:                                # %if.end
	ld.w	$a3, $a0, 48
	beqz	$a3, .LBB3_13
# %bb.3:                                # %for.body6.lr.ph
	ld.d	$a0, $a0, 56
	ori	$a4, $zero, 4
	bstrpick.d	$a2, $a3, 31, 0
	bgeu	$a3, $a4, .LBB3_8
# %bb.4:
	move	$a3, $zero
	b	.LBB3_11
.LBB3_5:                                # %for.cond.preheader
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB3_1
# %bb.6:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 16
	ori	$a4, $zero, 4
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a1, $a4, .LBB3_14
# %bb.7:
	move	$a4, $zero
	move	$a1, $zero
	b	.LBB3_17
.LBB3_8:                                # %vector.ph28
	bstrpick.d	$a3, $a2, 31, 2
	vrepli.b	$vr0, 0
	slli.d	$a3, $a3, 2
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a1, $a0, 16
	vrepli.w	$vr2, 3
	move	$a4, $a3
	.p2align	4, , 16
.LBB3_9:                                # %vector.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, -16
	ld.d	$a6, $a1, -8
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a1, 8
	ld.w	$a5, $a5, 32
	ld.w	$a6, $a6, 32
	ld.w	$a7, $a7, 32
	ld.w	$t0, $t0, 32
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 0
	vinsgr2vr.w	$vr4, $t0, 1
	vmadd.w	$vr1, $vr3, $vr2
	vmadd.w	$vr0, $vr4, $vr2
	addi.d	$a4, $a4, -4
	addi.d	$a1, $a1, 32
	bnez	$a4, .LBB3_9
# %bb.10:                               # %middle.block38
	vadd.w	$vr0, $vr0, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a3, $a2, .LBB3_13
.LBB3_11:                               # %for.body6.preheader
	alsl.d	$a0, $a3, $a0, 3
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_12:                               # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a3, $a3, 32
	alsl.d	$a3, $a3, $a3, 1
	add.d	$a1, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_12
.LBB3_13:                               # %for.end16
	addi.w	$a0, $a1, 0
	ret
.LBB3_14:                               # %vector.ph
	bstrpick.d	$a1, $a3, 31, 2
	slli.d	$a4, $a1, 2
	addi.d	$a1, $a2, 16
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 3
	move	$a5, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB3_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a1, -16
	ld.d	$a7, $a1, -8
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a1, 8
	ld.w	$a6, $a6, 32
	ld.w	$a7, $a7, 32
	ld.w	$t0, $t0, 32
	ld.w	$t1, $t1, 32
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vmadd.w	$vr0, $vr3, $vr1
	vmadd.w	$vr2, $vr4, $vr1
	addi.d	$a5, $a5, -4
	addi.d	$a1, $a1, 32
	bnez	$a5, .LBB3_15
# %bb.16:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	beq	$a4, $a3, .LBB3_2
.LBB3_17:                               # %for.body.preheader
	alsl.d	$a2, $a4, $a2, 3
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a4, $a4, 32
	alsl.d	$a4, $a4, $a4, 1
	add.d	$a1, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB3_18
	b	.LBB3_2
.Lfunc_end3:
	.size	trans_hash_fn, .Lfunc_end3-trans_hash_fn
                                        # -- End function
	.p2align	5                               # -- Begin function trans_cmp_fn
	.type	trans_cmp_fn,@function
trans_cmp_fn:                           # @trans_cmp_fn
# %bb.0:                                # %entry
	ld.d	$a2, $a2, 16
	beqz	$a2, .LBB4_7
# %bb.1:                                # %if.end4.thread
	ld.w	$a3, $a0, 48
	ld.w	$a4, $a1, 48
	ori	$a2, $zero, 1
	bne	$a3, $a4, .LBB4_14
.LBB4_2:                                # %if.end27
	beqz	$a3, .LBB4_6
# %bb.3:                                # %for.body32.lr.ph
	ld.d	$a0, $a0, 56
	ld.d	$a1, $a1, 56
	bstrpick.d	$a2, $a3, 31, 0
	.p2align	4, , 16
.LBB4_4:                                # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	bne	$a3, $a4, .LBB4_13
# %bb.5:                                # %for.cond28
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB4_4
.LBB4_6:
	move	$a0, $zero
	ret
.LBB4_7:                                # %if.then
	ld.w	$a6, $a0, 8
	ld.w	$a3, $a1, 8
	ori	$a2, $zero, 1
	bne	$a6, $a3, .LBB4_14
# %bb.8:                                # %if.end4
	ld.w	$a3, $a0, 48
	ld.w	$a4, $a1, 48
	bne	$a3, $a4, .LBB4_14
# %bb.9:                                # %for.cond.preheader
	beqz	$a6, .LBB4_2
# %bb.10:                               # %for.body.lr.ph
	ld.d	$a4, $a0, 16
	ld.d	$a5, $a1, 16
	bstrpick.d	$a6, $a6, 31, 0
	.p2align	4, , 16
.LBB4_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.d	$t0, $a5, 0
	bne	$a7, $t0, .LBB4_14
# %bb.12:                               # %for.cond
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB4_11
	b	.LBB4_2
.LBB4_13:
	ori	$a2, $zero, 1
.LBB4_14:                               # %cleanup
	move	$a0, $a2
	ret
.Lfunc_end4:
	.size	trans_cmp_fn, .Lfunc_end4-trans_cmp_fn
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d scanners %d transitions\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"bad (part of) regex: %s\n"
	.size	.L.str.1, 25

	.type	trans_hash_fns,@object          # @trans_hash_fns
	.data
	.p2align	3, 0x0
trans_hash_fns:
	.dword	trans_hash_fn
	.dword	trans_cmp_fn
	.space	16
	.size	trans_hash_fns, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nfacmp
	.addrsig_sym trans_hash_fn
	.addrsig_sym trans_cmp_fn
	.addrsig_sym trans_hash_fns
