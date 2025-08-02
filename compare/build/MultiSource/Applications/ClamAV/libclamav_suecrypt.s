	.file	"libclamav_suecrypt.c"
	.text
	.globl	sudecrypt                       # -- Begin function sudecrypt
	.p2align	5
	.type	sudecrypt,@function
sudecrypt:                              # @sudecrypt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $a7
	move	$s4, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s0, $a3
	move	$s6, $a2
	move	$s5, $a1
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
# %bb.1:                                # %if.end
	move	$fp, $a0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s5, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$s5, $a0, .LBB0_36
# %bb.2:                                # %if.end6
	ld.w	$s7, $s3, 62
	rotri.w	$a0, $s2, 16
	beq	$s7, $a0, .LBB0_5
# %bb.3:                                # %switch.early.test
	xor	$s5, $s7, $a0
	ori	$a1, $zero, 956
	beq	$s5, $a1, .LBB0_5
# %bb.4:                                # %switch.early.test
	ori	$a1, $zero, 520
	bne	$s5, $a1, .LBB0_6
.LBB0_5:                                # %if.then14
	ld.w	$s7, $s3, 70
	xor	$s5, $s7, $a0
.LBB0_6:                                # %if.end18
	beq	$s5, $s4, .LBB0_11
# %bb.7:                                # %if.then21
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s7, 31, 8
	move	$a1, $s5
	bstrins.d	$a1, $a0, 63, 8
	addi.w	$a0, $a1, 0
	beq	$a0, $s4, .LBB0_11
# %bb.8:                                # %for.inc
	bstrpick.d	$a0, $s7, 31, 16
	move	$a1, $s5
	bstrins.d	$a1, $a0, 63, 16
	addi.w	$a0, $a1, 0
	beq	$a0, $s4, .LBB0_11
# %bb.9:                                # %for.inc.1
	bstrpick.d	$a0, $s7, 31, 24
	move	$a1, $s5
	bstrins.d	$a1, $a0, 63, 24
	addi.w	$a0, $a1, 0
	beq	$a0, $s4, .LBB0_11
# %bb.10:                               # %if.then34
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $s5
.LBB0_11:                               # %if.end36
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a3, $s3, -88
	addi.d	$a2, $s3, -84
	beqz	$s0, .LBB0_37
# %bb.12:                               # %if.end61.us.preheader
	move	$a1, $zero
	move	$a5, $zero
	xvreplgr2vr.w	$xr0, $s4
	vreplgr2vr.w	$vr1, $s4
	addi.d	$a4, $s6, 8
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a4, $fp, 32
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(.L.str.5)
	addi.d	$a0, $a4, %pc_lo12(.L.str.5)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB0_13:                               # %if.end61.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_33 Depth 2
	bstrpick.d	$a4, $a5, 31, 3
	slli.d	$a5, $a4, 3
	ldx.w	$a4, $a3, $a5
	beq	$a4, $s2, .LBB0_38
# %bb.14:                               # %if.end77.us
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s1, $a2
	ldx.w	$s6, $a2, $a5
	xor	$s8, $a4, $s2
	xor	$s7, $s6, $s2
	move	$s5, $a1
	move	$a2, $s8
	move	$a3, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beq	$s6, $s2, .LBB0_40
# %bb.15:                               # %for.body82.us119.preheader
                                        #   in Loop: Header=BB0_13 Depth=1
	add.w	$a2, $s7, $s8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %for.inc136.us
                                        #   in Loop: Header=BB0_17 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	beqz	$a0, .LBB0_40
.LBB0_17:                               # %for.body82.us119
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 4
	bltu	$a4, $s7, .LBB0_16
# %bb.18:                               # %land.lhs.true94.us
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.w	$a3, $a1, -8
	bltu	$s8, $a3, .LBB0_16
# %bb.19:                               # %land.lhs.true99.us
                                        #   in Loop: Header=BB0_17 Depth=2
	bgeu	$a3, $a2, .LBB0_16
# %bb.20:                               # %land.lhs.true99.us
                                        #   in Loop: Header=BB0_17 Depth=2
	add.w	$a4, $a3, $a4
	bltu	$a4, $a2, .LBB0_16
# %bb.21:                               # %if.end117.us
                                        #   in Loop: Header=BB0_13 Depth=1
	xvld	$xr2, $sp, 64                   # 32-byte Folded Reload
	ori	$a2, $zero, 4
	ori	$t2, $zero, 3
	bltu	$s7, $a2, .LBB0_34
# %bb.22:                               # %iter.check
                                        #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a2, $fp, $a3
	ld.wu	$a5, $a1, 0
	bstrpick.d	$a4, $s8, 31, 0
	sub.d	$a1, $a2, $a4
	addi.w	$a6, $s7, -4
	add.d	$a1, $a1, $a5
	ori	$a2, $zero, 11
	bgeu	$a2, $a6, .LBB0_33
# %bb.23:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$a2, $a6, 31, 2
	addi.d	$a2, $a2, 1
	ori	$a7, $zero, 60
	bgeu	$a6, $a7, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=1
	move	$a6, $zero
	b	.LBB0_29
.LBB0_25:                               # %vector.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$a6, $a2, 30, 4
	slli.d	$a6, $a6, 4
	sub.d	$a7, $a5, $a4
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a3
	move	$t0, $a6
.LBB0_26:                               # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvxor.v	$xr0, $xr0, $xr2
	xvxor.v	$xr1, $xr1, $xr2
	xvst	$xr0, $a7, -32
	xvst	$xr1, $a7, 0
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB0_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB0_13 Depth=1
	beq	$a6, $a2, .LBB0_34
# %bb.28:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_13 Depth=1
	andi	$a7, $a2, 12
	beqz	$a7, .LBB0_32
.LBB0_29:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$t0, $a2, 30, 2
	slli.d	$a7, $t0, 2
	slli.d	$t1, $t0, 4
	sub.d	$s7, $s7, $t1
	alsl.d	$a1, $t0, $a1, 4
	alsl.d	$a5, $a6, $a5, 2
	sub.d	$a4, $a5, $a4
	add.d	$a4, $fp, $a4
	add.d	$a3, $a4, $a3
	sub.d	$a4, $a6, $a7
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_30:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vxor.v	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB0_30
# %bb.31:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_13 Depth=1
	bne	$a7, $a2, .LBB0_33
	b	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_13 Depth=1
	slli.d	$a2, $a6, 2
	sub.d	$s7, $s7, $a2
	alsl.d	$a1, $a6, $a1, 2
	.p2align	4, , 16
.LBB0_33:                               # %while.body132.us
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	xor	$a2, $a2, $s4
	st.w	$a2, $a1, 0
	addi.w	$s7, $s7, -4
	addi.d	$a1, $a1, 4
	bltu	$t2, $s7, .LBB0_33
.LBB0_34:                               # %for.end138.us
                                        #   in Loop: Header=BB0_13 Depth=1
	beqz	$a0, .LBB0_40
# %bb.35:                               # %while.cond.us
                                        #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a1, $s5, 1
	slli.d	$a5, $a1, 3
	move	$a2, $s1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$a4, $zero, 20
	bne	$a1, $a4, .LBB0_13
	b	.LBB0_41
.LBB0_36:                               # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_41
.LBB0_37:                               # %if.end61.us126
	ld.w	$a0, $a3, 0
	bne	$a0, $s2, .LBB0_39
.LBB0_38:                               # %while.end145
	ld.w	$a0, $s3, -116
	xor	$s2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a0, $fp, $a0
	st.b	$s0, $a0, 6
	ld.hu	$a1, $a0, 20
	srli.d	$a2, $s0, 8
	st.b	$a2, $a0, 7
	st.w	$s2, $a0, 40
	add.d	$a0, $a0, $a1
	alsl.d	$a1, $s0, $s0, 2
	slli.d	$a1, $a1, 3
	add.d	$a0, $a0, $a1
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 24
	st.d	$zero, $a0, 56
	b	.LBB0_43
.LBB0_39:                               # %if.end77.us137
	ld.w	$a1, $a2, 0
	xor	$a3, $a1, $s2
	xor	$a2, $a0, $s2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %if.then142
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %if.then60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_42:                               # %cleanup
	move	$fp, $zero
.LBB0_43:                               # %cleanup
	move	$a0, $fp
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end0:
	.size	sudecrypt, .Lfunc_end0-sudecrypt
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in suecrypt\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SUE: Can't read %d bytes\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SUE: Key seems not (entirely) encrypted\n\tpossible key: 0%08x\n\tcrypted key:  0%08x\n\tplain key:    0%08x\n"
	.size	.L.str.2, 104

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SUE: let's roll the dice...\n"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SUE: Decrypting with 0%08x\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SUE: Hunk #%d RVA:%x size:%d\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"SUE: Hunk out of file or cross sections\n"
	.size	.L.str.6, 41

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SUE: found OEP: @%x\n"
	.size	.L.str.7, 21

	.section	".note.GNU-stack","",@progbits
	.addrsig
