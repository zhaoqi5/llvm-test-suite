	.file	"primes.c"
	.text
	.globl	primes_consensus                # -- Begin function primes_consensus
	.p2align	5
	.type	primes_consensus,@function
primes_consensus:                       # @primes_consensus
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_6
# %bb.1:                                # %if.end9.i
	ld.d	$a0, $fp, 24
	ld.d	$s1, $fp, 0
	beqz	$a0, .LBB0_7
# %bb.2:                                # %for.cond.i.preheader
	addi.d	$s2, $fp, 24
	ori	$s0, $zero, 16
	.p2align	4, , 16
.LBB0_3:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s0
	beqz	$a0, .LBB0_8
# %bb.4:                                # %for.body.i
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(full_row)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	beqz	$a0, .LBB0_3
# %bb.5:                                # %if.then30.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $s0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	b	.LBB0_26
.LBB0_6:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s2, $a0
	bnez	$a1, .LBB0_27
	b	.LBB0_28
.LBB0_7:                                # %if.then12.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 16
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	b	.LBB0_26
.LBB0_8:                                # %for.end.i
	ld.w	$a0, $s1, 0
	slli.d	$a0, $a0, 5
	bstrpick.d	$a0, $a0, 14, 5
	slli.d	$a1, $a0, 5
	ori	$a2, $zero, 33
	ori	$a0, $zero, 8
	bltu	$a1, $a2, .LBB0_10
# %bb.9:                                # %cond.false.i
	addi.d	$a0, $a1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_10:                               # %cond.end.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $fp, 16
	move	$s0, $a0
	beqz	$a4, .LBB0_21
# %bb.11:                               # %for.body57.i.preheader
	addi.d	$a0, $s0, 4
	addi.d	$a1, $s0, -28
	ori	$a2, $zero, 8
	ori	$a3, $zero, 1
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               # %for.cond53.i.loopexit
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a4, $s2, 0
	addi.d	$s2, $s2, 8
	beqz	$a4, .LBB0_21
.LBB0_13:                               # %for.body57.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	ld.wu	$a5, $s0, 0
	andi	$a6, $a5, 1023
	sltu	$a7, $zero, $a6
	sub.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	bltu	$a5, $a2, .LBB0_19
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_13 Depth=1
	alsl.d	$t0, $a7, $s0, 2
	alsl.d	$t1, $a6, $a4, 2
	addi.d	$t2, $t1, 4
	bgeu	$t0, $t2, .LBB0_16
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_13 Depth=1
	alsl.d	$t0, $a6, $a0, 2
	alsl.d	$a7, $a7, $a4, 2
	bltu	$a7, $t0, .LBB0_19
.LBB0_16:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a7, $a5
	bstrins.d	$a7, $zero, 2, 0
	sub.d	$t0, $a6, $a7
	addi.d	$t1, $t1, -28
	alsl.d	$a6, $a6, $a1, 2
	move	$t2, $a7
	.p2align	4, , 16
.LBB0_17:                               # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, 0
	xvld	$xr1, $t1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a6, 0
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, -32
	addi.d	$a6, $a6, -32
	bnez	$t2, .LBB0_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a6, $t0
	beq	$a5, $a7, .LBB0_12
	.p2align	4, , 16
.LBB0_19:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a5, $a6, 1
	alsl.d	$a7, $a6, $s0, 2
	alsl.d	$a4, $a6, $a4, 2
	.p2align	4, , 16
.LBB0_20:                               # %do.body.i
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a7, 0
	ld.w	$t0, $a4, 0
	or	$a6, $t0, $a6
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, -4
	addi.d	$a4, $a4, -4
	bltu	$a3, $a5, .LBB0_20
	b	.LBB0_12
.LBB0_21:                               # %for.end71.i
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a1, $s5, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(setp_equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.22:                               # %if.end128.i
	beqz	$s0, .LBB0_24
# %bb.23:                               # %if.then130.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %if.end131.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(massive_count)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a1, $a0, %got_pc_lo12(cdata)
	ld.w	$a0, $a1, 32
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_45
# %bb.25:                               # %if.then134.i
	ld.w	$a1, $s5, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 88
.LBB0_26:                               # %if.then134.i
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s2, $a0
	beqz	$a1, .LBB0_28
.LBB0_27:                               # %if.end37.sink.split.sink.split
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %if.end37.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %if.end37
	move	$a0, $s2
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_30:                               # %if.then74.i
	ld.w	$s2, $s5, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB0_32
# %bb.31:                               # %cond.false78.i
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_32:                               # %cond.end83.i
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 88
	move	$s2, $a0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_34
# %bb.33:                               # %if.then92.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_34:                               # %if.end93.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $s2, 0
	mul.w	$a2, $a1, $a0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB0_92
# %bb.35:                               # %for.body100.i.preheader
	ld.d	$a1, $s2, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $s0, 4
	addi.d	$a4, $s0, -28
	ori	$a5, $zero, 8
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %do.end120.i
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.w	$a6, $s2, 0
	alsl.d	$a1, $a6, $a1, 2
	bgeu	$a1, $a2, .LBB0_47
.LBB0_37:                               # %for.body100.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_44 Depth 2
	ld.wu	$a6, $a1, 0
	andi	$a7, $a6, 1023
	sltu	$t0, $zero, $a7
	sub.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	bltu	$a6, $a5, .LBB0_43
# %bb.38:                               # %vector.memcheck108
                                        #   in Loop: Header=BB0_37 Depth=1
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t3, $a7, $a3, 2
	alsl.d	$t2, $a7, $a1, 2
	bgeu	$t1, $t3, .LBB0_40
# %bb.39:                               # %vector.memcheck108
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$t1, $t2, 4
	alsl.d	$t0, $t0, $s0, 2
	bltu	$t0, $t1, .LBB0_43
.LBB0_40:                               # %vector.ph122
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$t0, $a6
	bstrins.d	$t0, $zero, 2, 0
	sub.d	$t1, $a7, $t0
	alsl.d	$a7, $a7, $a4, 2
	addi.d	$t2, $t2, -28
	move	$t3, $t0
	.p2align	4, , 16
.LBB0_41:                               # %vector.body125
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t2, 0
	xvld	$xr1, $a7, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t2, 0
	addi.d	$t3, $t3, -8
	addi.d	$a7, $a7, -32
	addi.d	$t2, $t2, -32
	bnez	$t3, .LBB0_41
# %bb.42:                               # %middle.block134
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$a7, $t1
	beq	$a6, $t0, .LBB0_36
	.p2align	4, , 16
.LBB0_43:                               # %do.body108.i.preheader
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$a6, $a7, 1
	alsl.d	$t0, $a7, $a1, 2
	alsl.d	$a7, $a7, $s0, 2
	.p2align	4, , 16
.LBB0_44:                               # %do.body108.i
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	ld.w	$t2, $a7, 0
	and	$t1, $t2, $t1
	st.w	$t1, $t0, 0
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, -4
	bltu	$a0, $a6, .LBB0_44
	b	.LBB0_36
.LBB0_45:                               # %if.else.i
	ld.w	$a1, $a1, 36
	bne	$a1, $a0, .LBB0_48
# %bb.46:                               # %if.then148.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cubeunlist)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s2, $a0
	bnez	$a1, .LBB0_27
	b	.LBB0_28
.LBB0_47:
	move	$fp, $s0
	b	.LBB0_28
.LBB0_48:                               # %if.then
	ld.w	$s0, $s5, 0
	ori	$s1, $zero, 8
	ori	$s3, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $s3, .LBB0_50
# %bb.49:                               # %cond.false
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_50:                               # %cond.end
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s5, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blt	$s2, $s3, .LBB0_52
# %bb.51:                               # %cond.false8
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$s1, $a0, 8
.LBB0_52:                               # %cond.end13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a3, $zero, 1
	ori	$s6, $zero, 1
	move	$a0, $fp
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(binate_split_select)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(scofactor)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(primes_consensus)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	move	$s3, $a0
	mul.w	$a0, $a2, $a1
	blt	$a0, $s6, .LBB0_64
# %bb.53:                               # %for.body.i.i.preheader
	ld.d	$s4, $s2, 24
	alsl.d	$s1, $a0, $s4, 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s7, $a0, 4
	addi.d	$a0, $a0, -28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 8
	lu12i.w	$a0, -3
	ori	$s8, $a0, 4095
	lu32i.d	$s8, 0
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               # %do.end.i.i
                                        #   in Loop: Header=BB0_55 Depth=1
	ld.d	$a1, $s5, 88
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cdist)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	slti	$a0, $a0, 1
	and	$a1, $a1, $s8
	slli.d	$a0, $a0, 13
	or	$a0, $a1, $a0
	st.w	$a0, $s4, 0
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	bgeu	$s4, $s1, .LBB0_64
.LBB0_55:                               # %for.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_63 Depth 2
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_57:                               # %vector.memcheck50
                                        #   in Loop: Header=BB0_55 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a5, $a1, $s7, 2
	alsl.d	$a4, $a1, $s4, 2
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bgeu	$a3, $a5, .LBB0_59
# %bb.58:                               # %vector.memcheck50
                                        #   in Loop: Header=BB0_55 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $a6, 2
	bltu	$a2, $a3, .LBB0_62
.LBB0_59:                               # %vector.ph64
                                        #   in Loop: Header=BB0_55 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_60:                               # %vector.body67
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a1, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB0_60
# %bb.61:                               # %middle.block76
                                        #   in Loop: Header=BB0_55 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB0_54
	.p2align	4, , 16
.LBB0_62:                               # %do.body.i.i.preheader
                                        #   in Loop: Header=BB0_55 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $a6, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB0_63:                               # %do.body.i.i
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	and	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s6, $a0, .LBB0_63
	b	.LBB0_54
.LBB0_64:                               # %and_with_cofactor.exit.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 12
	ld.w	$a2, $s3, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	blt	$a1, $s6, .LBB0_76
# %bb.65:                               # %for.body.i40.i.preheader
	ld.d	$s4, $s3, 24
	alsl.d	$s1, $a1, $s4, 2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s6, $a0, 4
	addi.d	$a0, $a0, -28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 8
	ori	$s0, $zero, 1
	lu12i.w	$a0, -3
	ori	$s7, $a0, 4095
	lu32i.d	$s7, 0
	b	.LBB0_67
	.p2align	4, , 16
.LBB0_66:                               # %do.end.i49.i
                                        #   in Loop: Header=BB0_67 Depth=1
	ld.d	$a1, $s5, 88
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cdist)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	slti	$a0, $a0, 1
	and	$a1, $a1, $s7
	slli.d	$a0, $a0, 13
	or	$a0, $a1, $a0
	st.w	$a0, $s4, 0
	ld.w	$a0, $s3, 0
	alsl.d	$s4, $a0, $s4, 2
	bgeu	$s4, $s1, .LBB0_76
.LBB0_67:                               # %for.body.i40.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_75 Depth 2
	ld.wu	$a0, $s4, 0
	andi	$a1, $a0, 1023
	sltu	$a2, $zero, $a1
	sub.d	$a0, $a1, $a2
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s8, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_69:                               # %vector.memcheck79
                                        #   in Loop: Header=BB0_67 Depth=1
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a5, $a1, $s6, 2
	alsl.d	$a4, $a1, $s4, 2
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a3, $a5, .LBB0_71
# %bb.70:                               # %vector.memcheck79
                                        #   in Loop: Header=BB0_67 Depth=1
	addi.d	$a3, $a4, 4
	alsl.d	$a2, $a2, $a6, 2
	bltu	$a2, $a3, .LBB0_74
.LBB0_71:                               # %vector.ph93
                                        #   in Loop: Header=BB0_67 Depth=1
	move	$a2, $a0
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $a1, $a2
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a5, 2
	addi.d	$a4, $a4, -28
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_72:                               # %vector.body96
                                        #   Parent Loop BB0_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, 0
	xvld	$xr1, $a1, 0
	xvand.v	$xr0, $xr1, $xr0
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, -32
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB0_72
# %bb.73:                               # %middle.block105
                                        #   in Loop: Header=BB0_67 Depth=1
	move	$a1, $a3
	beq	$a0, $a2, .LBB0_66
	.p2align	4, , 16
.LBB0_74:                               # %do.body.i42.i.preheader
                                        #   in Loop: Header=BB0_67 Depth=1
	addi.d	$a0, $a1, 1
	alsl.d	$a2, $a1, $a6, 2
	alsl.d	$a1, $a1, $s4, 2
	.p2align	4, , 16
.LBB0_75:                               # %do.body.i42.i
                                        #   Parent Loop BB0_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	and	$a3, $a4, $a3
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -4
	bltu	$s0, $a0, .LBB0_75
	b	.LBB0_66
.LBB0_76:                               # %and_with_cofactor.exit58.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	move	$s3, $a0
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s7, $a0, 24
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	ld.w	$a1, $s2, 0
	mul.w	$a2, $a1, $a2
	ori	$s0, $zero, 1
	move	$s5, $a0
	blt	$a2, $s0, .LBB0_87
# %bb.77:                               # %for.body.lr.ph.i
	ld.d	$s6, $s2, 24
	ld.w	$a0, $s3, 0
	alsl.d	$a2, $a2, $s6, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_78:                               # %for.inc32.loopexit.i
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.w	$a1, $s2, 0
.LBB0_79:                               # %for.inc32.i
                                        #   in Loop: Header=BB0_80 Depth=1
	alsl.d	$s6, $a1, $s6, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s6, $a2, .LBB0_87
.LBB0_80:                               # %for.body.i24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
	ld.w	$a2, $s3, 12
	mul.w	$a2, $a2, $a0
	blt	$a2, $s0, .LBB0_79
# %bb.81:                               # %for.body14.i.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$s8, $s3, 24
	alsl.d	$s1, $a2, $s8, 2
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               # %if.else.i29
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s4, 0
	alsl.d	$s7, $a0, $s7, 2
.LBB0_83:                               # %for.inc.i
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s3, 0
	alsl.d	$s8, $a0, $s8, 2
	bgeu	$s8, $s1, .LBB0_78
.LBB0_84:                               # %for.body14.i
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cdist01)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_83
# %bb.85:                               # %if.then.i27
                                        #   in Loop: Header=BB0_84 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(consensus)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 12
	ld.w	$a1, $s4, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s4, 12
	blt	$a0, $a1, .LBB0_82
# %bb.86:                               # %if.then19.i28
                                        #   in Loop: Header=BB0_84 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 4
	move	$s5, $a0
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s7, $a0, 24
	b	.LBB0_83
.LBB0_87:                               # %primes_consensus_merge.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_89
# %bb.88:                               # %if.then25
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_89:                               # %if.end
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_91
# %bb.90:                               # %if.then27
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %if.end28
	ld.d	$a1, $fp, 0
	bnez	$a1, .LBB0_27
	b	.LBB0_28
.LBB0_92:                               # %for.end124.i
	move	$fp, $s0
	bnez	$s0, .LBB0_28
	b	.LBB0_29
.Lfunc_end0:
	.size	primes_consensus, .Lfunc_end0-primes_consensus
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
