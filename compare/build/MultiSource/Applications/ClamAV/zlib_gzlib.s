	.file	"zlib_gzlib.c"
	.text
	.globl	gzopen                          # -- Begin function gzopen
	.p2align	5
	.type	gzopen,@function
gzopen:                                 # @gzopen
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	move	$a3, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$t8, %call36(gz_open)
	jr	$t8
.Lfunc_end0:
	.size	gzopen, .Lfunc_end0-gzopen
                                        # -- End function
	.p2align	5                               # -- Begin function gz_open
	.type	gz_open,@function
gz_open:                                # @gz_open
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_19
# %bb.1:                                # %if.end
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
	move	$s0, $a2
	move	$fp, $a0
	move	$s3, $a1
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_29
# %bb.2:                                # %if.end3
	ori	$a1, $zero, 0
	lu32i.d	$a1, 8192
	st.d	$a1, $a0, 40
	st.d	$zero, $a0, 112
	addi.w	$s2, $zero, -1
	ld.bu	$t5, $s0, 0
	st.w	$zero, $a0, 24
	move	$a1, $s2
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 88
	st.w	$zero, $a0, 64
	beqz	$t5, .LBB1_28
# %bb.3:                                # %while.body.preheader
	move	$a1, $zero
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	addi.d	$a2, $s0, 1
	ori	$a3, $zero, 9
	ori	$a4, $zero, 77
	pcalau12i	$a5, %pc_hi20(.LJTI1_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI1_0)
	ori	$a6, $zero, 4
	ori	$a7, $zero, 3
	ori	$t0, $zero, 1
	ori	$t2, $zero, 2
	lu12i.w	$t1, 1
	ori	$t3, $t1, 3151
	lu12i.w	$s4, 7
	ori	$t4, $s4, 2481
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                # %if.then10
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$t6, $a0, 88
.LBB1_5:                                # %if.end32
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.bu	$t5, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$t5, .LBB1_20
.LBB1_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t6, $t5, -48
	andi	$t6, $t6, 255
	bgeu	$a3, $t6, .LBB1_4
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB1_6 Depth=1
	andi	$t5, $t5, 255
	addi.d	$t5, $t5, -43
	bltu	$a4, $t5, .LBB1_5
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB1_6 Depth=1
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a5, $t5
	add.d	$t5, $a5, $t5
	jr	$t5
.LBB1_9:                                # %sw.bb28
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$a6, $a0, 92
	b	.LBB1_5
.LBB1_10:                               # %sw.bb15
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$t4, $a0, 24
	move	$s5, $t4
	b	.LBB1_5
.LBB1_11:                               # %sw.bb24
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$t2, $a0, 92
	b	.LBB1_5
.LBB1_12:                               # %sw.bb26
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$a7, $a0, 92
	b	.LBB1_5
.LBB1_13:                               # %sw.bb20
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$s7, $zero, 1
	b	.LBB1_5
.LBB1_14:                               # %sw.bb
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$t3, $a0, 24
	move	$s5, $t3
	b	.LBB1_5
.LBB1_15:                               # %sw.bb17
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$s5, $zero, 1
	st.w	$s5, $a0, 24
	b	.LBB1_5
.LBB1_16:                               # %sw.bb21
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$s6, $zero, 1
	b	.LBB1_5
.LBB1_17:                               # %sw.bb30
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 64
	b	.LBB1_5
.LBB1_18:                               # %sw.bb22
                                        #   in Loop: Header=BB1_6 Depth=1
	st.w	$t0, $a0, 92
	b	.LBB1_5
.LBB1_19:
	move	$a0, $zero
	ret
.LBB1_20:                               # %while.end
	ori	$s0, $t1, 3151
	beq	$s5, $s0, .LBB1_22
# %bb.21:                               # %while.end
	beqz	$s5, .LBB1_28
	b	.LBB1_24
.LBB1_22:                               # %if.then41
	bnez	$a1, .LBB1_28
# %bb.23:                               # %if.end45
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 64
.LBB1_24:                               # %if.end47
	move	$s8, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, 32
	beqz	$a0, .LBB1_27
# %bb.25:                               # %if.end55
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a2, $a1, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	bltz	$s3, .LBB1_31
# %bb.26:                               # %cond.end77.thread
	move	$a1, $s3
	move	$a0, $s8
	st.w	$s3, $s8, 28
	b	.LBB1_32
.LBB1_27:                               # %if.then54
	move	$a0, $s8
.LBB1_28:                               # %sw.bb19
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_29:
	move	$a0, $zero
.LBB1_30:
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
.LBB1_31:                               # %cond.end77
	sltu	$a0, $zero, $s7
	slli.d	$a0, $a0, 19
	sltui	$a1, $s6, 1
	ori	$a2, $zero, 193
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 65
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	xor	$a2, $s5, $s0
	sltui	$a2, $a2, 1
	ori	$a3, $s4, 2481
	xor	$a3, $s5, $a3
	sltui	$a3, $a3, 1
	ori	$a4, $zero, 1024
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 512
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a2
	or	$a1, $a1, $a0
	ori	$a2, $zero, 438
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s8
	st.w	$a1, $s8, 28
	beq	$a1, $s2, .LBB1_38
.LBB1_32:                               # %if.end85
	ori	$a2, $zero, 1
	bne	$s5, $a2, .LBB1_34
# %bb.33:                               # %if.end93.thread
	ori	$a2, $zero, 2
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	ori	$a1, $s4, 2481
	st.w	$a1, $s8, 24
	st.w	$zero, $s8, 0
	b	.LBB1_37
.LBB1_34:                               # %if.end93
	bne	$s5, $s0, .LBB1_36
# %bb.35:                               # %if.then.i
	ori	$a2, $zero, 1
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s8
	addi.d	$a2, $a1, 1
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	st.d	$a1, $s8, 72
	st.w	$zero, $s8, 0
	st.d	$zero, $s8, 80
	st.w	$zero, $s8, 68
	b	.LBB1_37
.LBB1_36:                               # %if.end106.thread
	st.w	$zero, $a0, 0
.LBB1_37:                               # %gz_reset.exit
	st.d	$zero, $a0, 104
	st.d	$zero, $a0, 16
	st.w	$zero, $a0, 128
	b	.LBB1_30
.LBB1_38:                               # %if.then83
	move	$fp, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB1_28
.Lfunc_end1:
	.size	gz_open, .Lfunc_end1-gz_open
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
                                        # -- End function
	.text
	.globl	gzopen64                        # -- Begin function gzopen64
	.p2align	5
	.type	gzopen64,@function
gzopen64:                               # @gzopen64
# %bb.0:                                # %entry
	addi.w	$a2, $zero, -1
	move	$a3, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$t8, %call36(gz_open)
	jr	$t8
.Lfunc_end2:
	.size	gzopen64, .Lfunc_end2-gzopen64
                                        # -- End function
	.globl	gzdopen                         # -- Begin function gzdopen
	.p2align	5
	.type	gzdopen,@function
gzdopen:                                # @gzdopen
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	beq	$a0, $a2, .LBB3_3
# %bb.1:                                # %lor.lhs.false
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_3
# %bb.2:                                # %if.end
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 19
	move	$s1, $a0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(gz_open)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB3_4
.LBB3_3:                                # %cleanup
	move	$a0, $zero
.LBB3_4:                                # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	gzdopen, .Lfunc_end3-gzdopen
                                        # -- End function
	.globl	gzbuffer                        # -- Begin function gzbuffer
	.p2align	5
	.type	gzbuffer,@function
gzbuffer:                               # @gzbuffer
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	beqz	$a2, .LBB4_6
# %bb.1:                                # %if.end
	ld.w	$a3, $a2, 24
	lu12i.w	$a4, 7
	ori	$a4, $a4, 2481
	beq	$a3, $a4, .LBB4_3
# %bb.2:                                # %if.end
	lu12i.w	$a4, 1
	ori	$a4, $a4, 3151
	bne	$a3, $a4, .LBB4_6
.LBB4_3:                                # %if.end5
	bltz	$a1, .LBB4_6
# %bb.4:                                # %if.end5
	ld.w	$a3, $a2, 40
	bnez	$a3, .LBB4_6
# %bb.5:                                # %if.end12
	move	$a0, $zero
	ori	$a3, $zero, 2
	sltu	$a4, $a3, $a1
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	st.w	$a1, $a2, 44
.LBB4_6:                                # %cleanup
	ret
.Lfunc_end4:
	.size	gzbuffer, .Lfunc_end4-gzbuffer
                                        # -- End function
	.globl	gzrewind                        # -- Begin function gzrewind
	.p2align	5
	.type	gzrewind,@function
gzrewind:                               # @gzrewind
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a0, $zero, -1
	beqz	$a2, .LBB5_13
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a2, 24
	lu12i.w	$a3, 1
	ori	$s0, $a3, 3151
	bne	$a1, $s0, .LBB5_12
# %bb.2:                                # %lor.lhs.false
	ld.w	$a1, $a2, 108
	beqz	$a1, .LBB5_4
# %bb.3:                                # %lor.lhs.false
	addi.w	$a3, $zero, -5
	bne	$a1, $a3, .LBB5_12
.LBB5_4:                                # %if.end6
	ld.w	$a0, $a2, 28
	ld.d	$a1, $a2, 72
	move	$fp, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB5_12
# %bb.5:                                # %if.end9
	move	$a2, $fp
	ld.w	$a0, $fp, 24
	st.w	$zero, $fp, 0
	bne	$a0, $s0, .LBB5_7
# %bb.6:                                # %if.then.i
	st.d	$zero, $a2, 80
	st.w	$zero, $a2, 68
.LBB5_7:                                # %if.end.i
	ld.d	$a0, $a2, 112
	st.w	$zero, $a2, 104
	beqz	$a0, .LBB5_11
# %bb.8:                                # %if.then.i.i
	ld.w	$a1, $a2, 108
	addi.w	$a3, $zero, -4
	beq	$a1, $a3, .LBB5_10
# %bb.9:                                # %if.then4.i.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB5_10:                               # %if.end.i.i
	st.d	$zero, $a2, 112
.LBB5_11:                               # %gz_reset.exit
	move	$a0, $zero
	st.w	$zero, $a2, 108
	st.d	$zero, $a2, 16
	st.w	$zero, $a2, 128
.LBB5_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB5_13:                               # %cleanup
	ret
.Lfunc_end5:
	.size	gzrewind, .Lfunc_end5-gzrewind
                                        # -- End function
	.globl	gzseek64                        # -- Begin function gzseek64
	.p2align	5
	.type	gzseek64,@function
gzseek64:                               # @gzseek64
# %bb.0:                                # %entry
	addi.w	$a3, $zero, -1
	beqz	$a0, .LBB6_26
# %bb.1:                                # %if.end
	ld.w	$a4, $a0, 24
	lu12i.w	$a5, 7
	ori	$a5, $a5, 2481
	beq	$a4, $a5, .LBB6_3
# %bb.2:                                # %if.end
	lu12i.w	$a5, 1
	ori	$a5, $a5, 3151
	bne	$a4, $a5, .LBB6_26
.LBB6_3:                                # %if.end5
	ld.w	$a5, $a0, 108
	beqz	$a5, .LBB6_5
# %bb.4:                                # %if.end5
	addi.w	$a6, $zero, -5
	bne	$a5, $a6, .LBB6_26
.LBB6_5:                                # %if.end11
	ori	$a5, $zero, 1
	bltu	$a5, $a2, .LBB6_26
# %bb.6:                                # %if.end16
	beqz	$a2, .LBB6_9
# %bb.7:                                # %if.else
	ld.w	$a2, $a0, 104
	beqz	$a2, .LBB6_10
# %bb.8:                                # %if.then19
	ld.d	$a2, $a0, 96
	add.d	$a1, $a2, $a1
	b	.LBB6_10
.LBB6_9:                                # %if.then18
	ld.d	$a2, $a0, 16
	sub.d	$a1, $a1, $a2
.LBB6_10:                               # %if.end21
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$s0, $a2, 3151
	st.w	$zero, $a0, 104
	bne	$a4, $s0, .LBB6_19
# %bb.11:                               # %land.lhs.true25
	ld.w	$a2, $a0, 68
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB6_20
# %bb.12:                               # %land.lhs.true27
	ld.d	$a2, $a0, 16
	add.d	$a2, $a2, $a1
	bltz	$a2, .LBB6_20
# %bb.13:                               # %if.then32
	ld.wu	$a2, $a0, 0
	ld.w	$a3, $a0, 28
	sub.d	$a4, $a1, $a2
	ori	$a2, $zero, 1
	move	$fp, $a0
	move	$a0, $a3
	move	$s0, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a3, $zero, -1
	beq	$a0, $a3, .LBB6_25
# %bb.14:                               # %if.end38
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$a0, $fp, 112
	st.w	$zero, $fp, 0
	st.d	$zero, $fp, 80
	st.w	$zero, $fp, 104
	beqz	$a0, .LBB6_18
# %bb.15:                               # %if.then.i
	ld.w	$a3, $a2, 108
	addi.w	$a4, $zero, -4
	beq	$a3, $a4, .LBB6_17
# %bb.16:                               # %if.then4.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	move	$a1, $s0
.LBB6_17:                               # %if.end.i
	st.d	$zero, $a2, 112
.LBB6_18:                               # %gz_error.exit
	ld.d	$a0, $a2, 16
	st.w	$zero, $a2, 108
	st.w	$zero, $a2, 128
	add.d	$a3, $a0, $a1
	st.d	$a3, $a2, 16
	b	.LBB6_25
.LBB6_19:                               # %if.end47.thread
	bgez	$a1, .LBB6_22
	b	.LBB6_25
.LBB6_20:                               # %if.end47
	bltz	$a1, .LBB6_27
.LBB6_21:                               # %if.then72
	ld.wu	$a2, $a0, 0
	sltu	$a3, $a1, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	ld.d	$a4, $a0, 8
	sub.d	$a2, $a2, $a3
	ld.d	$a5, $a0, 16
	st.w	$a2, $a0, 0
	add.d	$a2, $a4, $a3
	st.d	$a2, $a0, 8
	add.d	$a2, $a5, $a3
	st.d	$a2, $a0, 16
	sub.d	$a1, $a1, $a3
.LBB6_22:                               # %if.end91
	beqz	$a1, .LBB6_24
# %bb.23:                               # %if.then93
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 104
	st.d	$a1, $a0, 96
.LBB6_24:                               # %if.end96
	ld.d	$a0, $a0, 16
	add.d	$a3, $a0, $a1
.LBB6_25:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB6_26:                               # %cleanup
	move	$a0, $a3
	ret
.LBB6_27:                               # %if.end55
	ld.d	$a2, $a0, 16
	add.d	$a1, $a2, $a1
	bltz	$a1, .LBB6_25
# %bb.28:                               # %if.end62
	move	$fp, $a0
	move	$s1, $a1
	pcaddu18i	$ra, %call36(gzrewind)
	jirl	$ra, $ra, 0
	addi.w	$a3, $zero, -1
	beq	$a0, $a3, .LBB6_25
# %bb.29:                               # %if.end68
	move	$a1, $s1
	move	$a0, $fp
	ld.w	$a2, $fp, 24
	beq	$a2, $s0, .LBB6_21
	b	.LBB6_22
.Lfunc_end6:
	.size	gzseek64, .Lfunc_end6-gzseek64
                                        # -- End function
	.globl	gz_error                        # -- Begin function gz_error
	.p2align	5
	.type	gz_error,@function
gz_error:                               # @gz_error
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 112
	move	$fp, $a2
	beqz	$a0, .LBB7_4
# %bb.1:                                # %if.then
	ld.w	$a2, $s0, 108
	addi.w	$a3, $zero, -4
	beq	$a2, $a3, .LBB7_3
# %bb.2:                                # %if.then4
	move	$s1, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a1, $s1
.LBB7_3:                                # %if.end
	st.d	$zero, $s0, 112
.LBB7_4:                                # %if.end7
	addi.w	$a0, $zero, -5
	beq	$a1, $a0, .LBB7_7
# %bb.5:                                # %if.end7
	beqz	$a1, .LBB7_7
# %bb.6:                                # %if.then10
	st.w	$zero, $s0, 0
.LBB7_7:                                # %if.end11
	addi.w	$s3, $zero, -4
	st.w	$a1, $s0, 108
	beq	$a1, $s3, .LBB7_12
# %bb.8:                                # %if.end11
	beqz	$fp, .LBB7_12
# %bb.9:                                # %if.end18
	ld.d	$s1, $s0, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 112
	beqz	$a0, .LBB7_11
# %bb.10:                               # %if.end26
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	addi.d	$a1, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a4, $a0, %pc_lo12(.L.str.4)
	move	$a0, $s2
	move	$a3, $s1
	move	$a5, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(snprintf)
	jr	$t8
.LBB7_11:                               # %if.then24
	lu32i.d	$s3, 0
	st.w	$s3, $s0, 108
.LBB7_12:                               # %return
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	gz_error, .Lfunc_end7-gz_error
                                        # -- End function
	.globl	gzseek                          # -- Begin function gzseek
	.p2align	5
	.type	gzseek,@function
gzseek:                                 # @gzseek
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(gzseek64)
	jr	$t8
.Lfunc_end8:
	.size	gzseek, .Lfunc_end8-gzseek
                                        # -- End function
	.globl	gztell64                        # -- Begin function gztell64
	.p2align	5
	.type	gztell64,@function
gztell64:                               # @gztell64
# %bb.0:                                # %entry
	addi.w	$a1, $zero, -1
	beqz	$a0, .LBB9_7
# %bb.1:                                # %if.end
	ld.w	$a2, $a0, 24
	lu12i.w	$a3, 7
	ori	$a3, $a3, 2481
	beq	$a2, $a3, .LBB9_3
# %bb.2:                                # %if.end
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3151
	bne	$a2, $a3, .LBB9_7
.LBB9_3:                                # %if.end5
	ld.w	$a2, $a0, 104
	ld.d	$a1, $a0, 16
	beqz	$a2, .LBB9_5
# %bb.4:                                # %cond.true
	ld.d	$a0, $a0, 96
	b	.LBB9_6
.LBB9_5:
	move	$a0, $zero
.LBB9_6:                                # %cond.end
	add.d	$a1, $a0, $a1
.LBB9_7:                                # %cleanup
	move	$a0, $a1
	ret
.Lfunc_end9:
	.size	gztell64, .Lfunc_end9-gztell64
                                        # -- End function
	.globl	gztell                          # -- Begin function gztell
	.p2align	5
	.type	gztell,@function
gztell:                                 # @gztell
# %bb.0:                                # %entry
	addi.w	$a1, $zero, -1
	beqz	$a0, .LBB10_7
# %bb.1:                                # %if.end.i
	ld.w	$a2, $a0, 24
	lu12i.w	$a3, 7
	ori	$a3, $a3, 2481
	beq	$a2, $a3, .LBB10_3
# %bb.2:                                # %if.end.i
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3151
	bne	$a2, $a3, .LBB10_7
.LBB10_3:                               # %if.end5.i
	ld.w	$a2, $a0, 104
	ld.d	$a1, $a0, 16
	beqz	$a2, .LBB10_5
# %bb.4:                                # %cond.true.i
	ld.d	$a0, $a0, 96
	b	.LBB10_6
.LBB10_5:
	move	$a0, $zero
.LBB10_6:                               # %cond.end.i
	add.d	$a1, $a0, $a1
.LBB10_7:                               # %gztell64.exit
	move	$a0, $a1
	ret
.Lfunc_end10:
	.size	gztell, .Lfunc_end10-gztell
                                        # -- End function
	.globl	gzoffset64                      # -- Begin function gzoffset64
	.p2align	5
	.type	gzoffset64,@function
gzoffset64:                             # @gzoffset64
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $zero, -1
	beqz	$fp, .LBB11_6
# %bb.1:                                # %if.end
	ld.w	$a1, $fp, 24
	lu12i.w	$a2, 7
	ori	$a2, $a2, 2481
	lu12i.w	$s0, 1
	beq	$a1, $a2, .LBB11_3
# %bb.2:                                # %if.end
	ori	$a2, $s0, 3151
	bne	$a1, $a2, .LBB11_6
.LBB11_3:                               # %if.end5
	ld.w	$a0, $fp, 28
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB11_6
# %bb.4:                                # %if.end8
	ld.w	$a2, $fp, 24
	ori	$a3, $s0, 3151
	move	$a0, $a1
	bne	$a2, $a3, .LBB11_6
# %bb.5:                                # %if.then11
	ld.wu	$a0, $fp, 128
	sub.d	$a0, $a1, $a0
.LBB11_6:                               # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	gzoffset64, .Lfunc_end11-gzoffset64
                                        # -- End function
	.globl	gzoffset                        # -- Begin function gzoffset
	.p2align	5
	.type	gzoffset,@function
gzoffset:                               # @gzoffset
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $zero, -1
	beqz	$fp, .LBB12_6
# %bb.1:                                # %if.end.i
	ld.w	$a1, $fp, 24
	lu12i.w	$a2, 7
	ori	$a2, $a2, 2481
	lu12i.w	$s0, 1
	beq	$a1, $a2, .LBB12_3
# %bb.2:                                # %if.end.i
	ori	$a2, $s0, 3151
	bne	$a1, $a2, .LBB12_6
.LBB12_3:                               # %if.end5.i
	ld.w	$a0, $fp, 28
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB12_6
# %bb.4:                                # %if.end8.i
	ld.w	$a2, $fp, 24
	ori	$a3, $s0, 3151
	move	$a0, $a1
	bne	$a2, $a3, .LBB12_6
# %bb.5:                                # %if.then11.i
	ld.wu	$a0, $fp, 128
	sub.d	$a0, $a1, $a0
.LBB12_6:                               # %gzoffset64.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	gzoffset, .Lfunc_end12-gzoffset
                                        # -- End function
	.globl	gzeof                           # -- Begin function gzeof
	.p2align	5
	.type	gzeof,@function
gzeof:                                  # @gzeof
# %bb.0:                                # %entry
	beqz	$a0, .LBB13_3
# %bb.1:                                # %if.end
	ld.w	$a1, $a0, 24
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3151
	bne	$a1, $a2, .LBB13_3
# %bb.2:                                # %cond.true
	ld.w	$a0, $a0, 84
	ret
.LBB13_3:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	gzeof, .Lfunc_end13-gzeof
                                        # -- End function
	.globl	gzerror                         # -- Begin function gzerror
	.p2align	5
	.type	gzerror,@function
gzerror:                                # @gzerror
# %bb.0:                                # %entry
	beqz	$a0, .LBB14_7
# %bb.1:                                # %if.end
	ld.w	$a2, $a0, 24
	lu12i.w	$a3, 7
	ori	$a3, $a3, 2481
	beq	$a2, $a3, .LBB14_3
# %bb.2:                                # %if.end
	lu12i.w	$a3, 1
	ori	$a3, $a3, 3151
	bne	$a2, $a3, .LBB14_7
.LBB14_3:                               # %if.end5
	ld.w	$a2, $a0, 108
	beqz	$a1, .LBB14_5
# %bb.4:                                # %if.then7
	st.w	$a2, $a1, 0
.LBB14_5:                               # %if.end8
	addi.w	$a1, $zero, -4
	bne	$a2, $a1, .LBB14_8
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.LBB14_7:
	move	$a0, $zero
	ret
.LBB14_8:                               # %cond.false
	ld.d	$a0, $a0, 112
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end14:
	.size	gzerror, .Lfunc_end14-gzerror
                                        # -- End function
	.globl	gzclearerr                      # -- Begin function gzclearerr
	.p2align	5
	.type	gzclearerr,@function
gzclearerr:                             # @gzclearerr
# %bb.0:                                # %entry
	beqz	$a0, .LBB15_9
# %bb.1:                                # %if.end
	ld.w	$a1, $a0, 24
	lu12i.w	$a2, 7
	ori	$a2, $a2, 2481
	beq	$a1, $a2, .LBB15_4
# %bb.2:                                # %if.end
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3151
	bne	$a1, $a2, .LBB15_9
# %bb.3:                                # %if.then8
	st.d	$zero, $a0, 80
.LBB15_4:                               # %if.end9
	ld.d	$a1, $a0, 112
	beqz	$a1, .LBB15_8
# %bb.5:                                # %if.then.i
	ld.w	$a2, $a0, 108
	addi.w	$a3, $zero, -4
	beq	$a2, $a3, .LBB15_7
# %bb.6:                                # %if.then4.i
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB15_7:                               # %if.end.i
	st.d	$zero, $a0, 112
.LBB15_8:                               # %gz_error.exit
	st.w	$zero, $a0, 108
.LBB15_9:                               # %cleanup
	ret
.Lfunc_end15:
	.size	gzclearerr, .Lfunc_end15-gzclearerr
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<fd:%d>"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"out of memory"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.space	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s%s%s"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	": "
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s"
	.size	.L.str.5, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
