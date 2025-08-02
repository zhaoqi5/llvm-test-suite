	.file	"libclamav_yc.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function yc_decrypt
.LCPI0_0:
	.word	1668445042                      # 0x63727372
	.word	1920168494                      # 0x7273722e
	.word	1869374834                      # 0x6f6c6572
	.word	1818587694                      # 0x6c65722e
	.word	1633969454                      # 0x6164652e
	.word	1633972782                      # 0x6164722e
	.word	1633970478                      # 0x6164692e
	.word	1936487470                      # 0x736c742e
	.text
	.globl	yc_decrypt
	.p2align	5
	.type	yc_decrypt,@function
yc_decrypt:                             # @yc_decrypt
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
	move	$s7, $a3
	move	$s5, $a2
	move	$fp, $a0
	bstrpick.d	$s1, $a3, 31, 0
	slli.d	$s3, $s1, 5
	alsl.d	$a0, $s1, $s3, 2
	add.d	$s2, $a2, $a0
	ld.wu	$s0, $s2, 8
	bstrpick.d	$a0, $a4, 31, 0
	add.d	$s8, $fp, $a0
	ld.hu	$s6, $s8, 20
	move	$s4, $a5
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	add.d	$s0, $fp, $s0
	addi.d	$a0, $s0, 147
	addi.d	$a1, $s0, 198
	ori	$a2, $zero, 2967
	pcaddu18i	$ra, %call36(yc_poly_emulator)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	bnez	$a0, .LBB0_12
# %bb.1:                                # %if.end
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $s2, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	beqz	$s7, .LBB0_9
# %bb.2:                                # %for.body.lr.ph
	move	$a1, $s3
	move	$s4, $zero
	move	$s2, $zero
	add.d	$a0, $s8, $s6
	addi.d	$s7, $a0, 24
	addi.d	$a0, $s0, 1111
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$s3, $s5, 32
	alsl.d	$s5, $s1, $a1, 3
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$s1, $a0, 889
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s2, $s2, 40
	addi.d	$s3, $s3, 36
	addi.w	$s4, $s4, 1
	beq	$s5, $s2, .LBB0_9
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, -24
	beqz	$a0, .LBB0_3
# %bb.5:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s3, -20
	beqz	$a0, .LBB0_3
# %bb.6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a0, $s2, 31, 3
	slli.d	$a0, $a0, 3
	ldx.w	$a0, $s7, $a0
	xvreplgr2vr.w	$xr0, $a0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvseq.w	$xr0, $xr0, $xr1
	xvmskltz.w	$xr0, $xr0
	xvpickve2gr.wu	$a1, $xr0, 0
	xvpickve2gr.wu	$a2, $xr0, 4
	bstrins.d	$a1, $a2, 7, 4
	andi	$a1, $a1, 255
	bnez	$a1, .LBB0_3
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=1
	bstrpick.d	$a0, $a0, 15, 0
	beq	$a0, $s1, .LBB0_3
# %bb.8:                                # %if.end51
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$s6, $s8
	move	$s8, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, -24
	ld.w	$a2, $s3, 0
	add.d	$a1, $fp, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(yc_poly_emulator)
	jirl	$ra, $ra, 0
	move	$a3, $s8
	move	$s8, $s6
	beqz	$a0, .LBB0_3
	b	.LBB0_11
.LBB0_9:                                # %for.end
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $s8, 6
	st.d	$zero, $s8, 128
	ori	$a0, $zero, 2575
	ldx.w	$a0, $s0, $a0
	st.w	$a0, $s8, 40
	ld.w	$a0, $s8, 80
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 4
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.w	$a2, $a3, $a2
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s8, 80
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	move	$a2, $zero
	bne	$a0, $a1, .LBB0_12
# %bb.10:                               # %if.then87
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %cleanup89
	ori	$a2, $zero, 1
.LBB0_12:                               # %cleanup89
	move	$a0, $a2
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
	.size	yc_decrypt, .Lfunc_end0-yc_decrypt
                                        # -- End function
	.p2align	5                               # -- Begin function yc_poly_emulator
	.type	yc_poly_emulator,@function
yc_poly_emulator:                       # @yc_poly_emulator
# %bb.0:                                # %entry
	beqz	$a2, .LBB1_28
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$a4, $zero
	addi.d	$a5, $a0, 1
	bstrpick.d	$a6, $a2, 31, 0
	ori	$a7, $zero, 8
	ori	$t0, $zero, 191
	ori	$t1, $zero, 50
	ori	$t2, $zero, 144
	pcalau12i	$a3, %pc_hi20(.LJTI1_0)
	addi.d	$t3, $a3, %pc_lo12(.LJTI1_0)
	ori	$t4, $zero, 48
	ori	$t5, $zero, 44
	ori	$t6, $zero, 192
	ori	$t7, $zero, 200
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.end
                                        #   in Loop: Header=BB1_3 Depth=1
	stx.b	$s1, $a1, $a4
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, -1
	beq	$a4, $a6, .LBB1_29
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ldx.bu	$s1, $a1, $a4
	move	$s0, $zero
	andi	$t8, $a2, 7
	sub.d	$fp, $a7, $t8
	b	.LBB1_7
.LBB1_4:                                # %sw.bb12
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s1, $s1, -1
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s0, $s0, 1
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$s0, $s0, 1
	bgeu	$s0, $t4, .LBB1_2
.LBB1_7:                                # %for.body5
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $a0, $s0
	blt	$t0, $a3, .LBB1_11
# %bb.8:                                # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $a3, -2
	bltu	$t1, $s2, .LBB1_15
# %bb.9:                                # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $t3, $s2
	add.d	$s2, $t3, $s2
	jr	$s2
.LBB1_10:                               # %sw.bb19
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$s1, $s1, $a2
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_11:                               # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$s2, $a3, -210
	bltu	$t5, $s2, .LBB1_16
# %bb.12:                               # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.d	$s2, $s2, 2
	pcalau12i	$s3, %pc_hi20(.LJTI1_1)
	addi.d	$s3, $s3, %pc_lo12(.LJTI1_1)
	ldx.w	$s2, $s3, $s2
	add.d	$s2, $s3, $s2
	jr	$s2
.LBB1_13:                               # %sw.bb92
                                        #   in Loop: Header=BB1_7 Depth=2
	ldx.bu	$s2, $a5, $s0
	addi.d	$s0, $s0, 2
	andi	$a3, $s1, 255
	bne	$s2, $t7, .LBB1_25
# %bb.14:                               # %if.then99
                                        #   in Loop: Header=BB1_7 Depth=2
	srl.w	$s1, $a3, $t8
	sll.w	$a3, $a3, $fp
	or	$s1, $s1, $a3
	b	.LBB1_6
.LBB1_15:                               # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	beq	$a3, $t2, .LBB1_6
	b	.LBB1_27
.LBB1_16:                               # %for.body5
                                        #   in Loop: Header=BB1_7 Depth=2
	bne	$a3, $t6, .LBB1_27
# %bb.17:                               # %sw.bb54
                                        #   in Loop: Header=BB1_7 Depth=2
	ldx.bu	$s3, $a5, $s0
	addi.w	$s0, $s0, 2
	ldx.bu	$s2, $a0, $s0
	andi	$a3, $s1, 255
	andi	$s2, $s2, 7
	sub.d	$s1, $a7, $s2
	bne	$s3, $t6, .LBB1_26
# %bb.18:                               # %if.then
                                        #   in Loop: Header=BB1_7 Depth=2
	sll.w	$s2, $a3, $s2
	srl.w	$a3, $a3, $s1
	or	$s1, $a3, $s2
	b	.LBB1_6
.LBB1_19:                               # %sw.bb
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$a3, $s0, 1
	ldx.b	$s0, $a0, $a3
	add.d	$s0, $a3, $s0
	b	.LBB1_6
.LBB1_20:                               # %sw.bb38
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$s0, $s0, 1
	ldx.b	$a3, $a0, $s0
	xor	$s1, $a3, $s1
	b	.LBB1_6
.LBB1_21:                               # %sw.bb46
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$s0, $s0, 1
	ldx.b	$a3, $a0, $s0
	sub.d	$s1, $s1, $a3
	b	.LBB1_6
.LBB1_22:                               # %sw.bb25
                                        #   in Loop: Header=BB1_7 Depth=2
	xor	$s1, $s1, $a2
	b	.LBB1_5
.LBB1_23:                               # %sw.bb14
                                        #   in Loop: Header=BB1_7 Depth=2
	sub.d	$s1, $s1, $a2
	b	.LBB1_5
.LBB1_24:                               # %sw.bb30
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.w	$s0, $s0, 1
	ldx.b	$a3, $a0, $s0
	add.d	$s1, $a3, $s1
	b	.LBB1_6
.LBB1_25:                               # %if.else114
                                        #   in Loop: Header=BB1_7 Depth=2
	sll.w	$s1, $a3, $t8
	srl.w	$a3, $a3, $fp
	or	$s1, $s1, $a3
	b	.LBB1_6
.LBB1_26:                               # %if.else
                                        #   in Loop: Header=BB1_7 Depth=2
	srl.w	$s2, $a3, $s2
	sll.w	$a3, $a3, $s1
	or	$s1, $a3, $s2
	b	.LBB1_6
.LBB1_27:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_30
.LBB1_28:
	move	$a0, $zero
	ret
.LBB1_29:
	move	$a0, $zero
.LBB1_30:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	yc_poly_emulator, .Lfunc_end1-yc_poly_emulator
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_22-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
.LJTI1_1:
	.word	.LBB1_13-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_19-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_6-.LJTI1_1
	.word	.LBB1_6-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_27-.LJTI1_1
	.word	.LBB1_4-.LJTI1_1
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"yC: decrypting decryptor on sect %d\n"
	.size	.L.str, 37

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"yC: decrypting sect%d\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"yC: Cannot write unpacked file\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"yC: Unhandled opcode %x\n"
	.size	.L.str.3, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
