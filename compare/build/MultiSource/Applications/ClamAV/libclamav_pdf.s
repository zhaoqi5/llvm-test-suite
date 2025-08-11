	.file	"libclamav_pdf.c"
	.text
	.globl	cli_pdf                         # -- Begin function cli_pdf
	.p2align	5
	.type	cli_pdf,@function
cli_pdf:                                # @cli_pdf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 440
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_9
# %bb.1:                                # %if.end
	ld.d	$fp, $sp, 488
	beqz	$fp, .LBB0_10
# %bb.2:                                # %if.end3
	ori	$a0, $zero, 8
	addi.w	$s5, $zero, -124
	blt	$fp, $a0, .LBB0_21
# %bb.3:                                # %if.end6
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $zero
	move	$a1, $fp
	move	$a4, $s0
	move	$a5, $zero
	pcaddu18i	$ra, %call36(mmap)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -1
	beq	$a0, $s7, .LBB0_11
# %bb.4:                                # %if.end10
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s8, $s0
	beqz	$a0, .LBB0_6
# %bb.5:                                # %if.then12
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
	move	$s8, $s1
.LBB0_6:                                # %if.end14
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_12
# %bb.7:                                # %if.then17
	beqz	$s1, .LBB0_18
# %bb.8:                                # %if.then19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_9:
	addi.w	$s5, $zero, -115
	b	.LBB0_21
.LBB0_10:
	move	$s5, $zero
	b	.LBB0_21
.LBB0_11:
	addi.w	$s5, $zero, -114
	b	.LBB0_21
.LBB0_12:                               # %if.end22
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s6, $s8, 6
	add.d	$a0, $s6, $fp
	addi.d	$a0, $a0, -12
	bgeu	$s6, $a0, .LBB0_16
# %bb.13:                               # %for.body.preheader
	addi.d	$a0, $fp, -6
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	add.d	$a0, $fp, $s8
	addi.d	$s4, $a0, -13
	addi.d	$s1, $a0, -6
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s0, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s4, 7
	ori	$a2, $zero, 5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_22
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $s4, 6
	addi.d	$s4, $s4, -1
	addi.d	$s1, $s1, -1
	bltu	$s6, $a0, .LBB0_14
.LBB0_16:                               # %if.then31
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_19
# %bb.17:                               # %if.then33
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_18:                               # %if.else
	move	$a0, $s0
	b	.LBB0_20
.LBB0_19:                               # %if.else34
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB0_20:                               # %cleanup492
	move	$a1, $fp
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
.LBB0_21:                               # %cleanup492
	move	$a0, $s5
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB0_22:                               # %if.end37
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	bgeu	$s6, $s4, .LBB0_27
# %bb.23:                               # %for.body41.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
.LBB0_24:                               # %for.body41
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 7
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.25:                               # %for.inc46
                                        #   in Loop: Header=BB0_24 Depth=1
	addi.d	$s4, $s4, -1
	bltu	$s6, $s4, .LBB0_24
# %bb.26:
	move	$s4, $s6
.LBB0_27:                               # %for.end48
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	beq	$s4, $a0, .LBB0_41
# %bb.28:                               # %if.end.i
	sub.d	$s7, $s1, $s4
	ori	$a0, $zero, 7
	bgeu	$s7, $a0, .LBB0_35
.LBB0_29:                               # %cli_pmemstr.exit
	bgeu	$s6, $s4, .LBB0_43
# %bb.30:                               # %for.body60.preheader
	addi.d	$a0, $s8, 6
	lu12i.w	$a1, 419415
	ori	$a1, $a1, 632
	ori	$a2, $zero, 10
	ori	$a3, $zero, 13
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_32
.LBB0_31:                               # %for.inc74
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$s4, $s4, -1
	bgeu	$s6, $s4, .LBB0_46
.LBB0_32:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s4, 0
	bne	$a4, $a1, .LBB0_31
# %bb.33:                               # %if.then63
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.bu	$a4, $s4, -1
	beq	$a4, $a2, .LBB0_47
# %bb.34:                               # %if.then63
                                        #   in Loop: Header=BB0_32 Depth=1
	bne	$a4, $a3, .LBB0_31
	b	.LBB0_47
.LBB0_35:                               # %if.end3.i
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 7
	move	$a0, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_41
# %bb.36:                               # %while.cond.preheader.i
	ori	$a1, $zero, 69
	move	$a0, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.37:                               # %while.body.i.preheader
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $s4
.LBB0_38:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s0, $s1
	add.d	$s7, $a0, $s7
	ori	$a0, $zero, 7
	bltu	$s7, $a0, .LBB0_29
# %bb.39:                               # %if.end13.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a2, $zero, 7
	move	$a0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_41
# %bb.40:                               # %if.end18.i
                                        #   in Loop: Header=BB0_38 Depth=1
	xor	$a0, $s0, $s1
	sltui	$a0, $a0, 1
	addi.d	$a1, $s0, 1
	masknez	$a2, $s1, $a0
	maskeqz	$a1, $a1, $a0
	or	$s0, $a1, $a2
	sub.d	$s7, $s7, $a0
	ori	$a1, $zero, 69
	move	$a0, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB0_38
	b	.LBB0_29
.LBB0_41:                               # %if.then51
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_44
# %bb.42:                               # %if.then53
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_45
.LBB0_43:
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_47
.LBB0_44:                               # %if.else54
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
.LBB0_45:                               # %if.end56
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_46:
	move	$s4, $a0
.LBB0_47:                               # %for.end76
	beq	$s4, $s6, .LBB0_16
# %bb.48:                               # %if.end85
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bgeu	$s6, $s4, .LBB0_139
# %bb.49:                               # %land.rhs.lr.ph
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sltui	$a0, $a1, 1
	ld.d	$a2, $s2, 32
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	lu12i.w	$a0, 419415
	ori	$s8, $a0, 632
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
.LBB0_50:                               # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(pdf_nextobject)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_139
# %bb.51:                               # %while.body
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $a0
	beq	$a0, $s4, .LBB0_139
# %bb.52:                               # %if.end98
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.w	$a0, $s5, 0
	beq	$a0, $s8, .LBB0_139
# %bb.53:                               # %if.end103
                                        #   in Loop: Header=BB0_50 Depth=1
	sub.d	$a0, $s6, $s5
	add.d	$a0, $a0, $s1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a2, $zero, 6
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_87
# %bb.54:                               # %if.end112
                                        #   in Loop: Header=BB0_50 Depth=1
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s5, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	slli.d	$a0, $a1, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB0_134
# %bb.55:                               # %if.end119
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(pdf_nextobject)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_132
# %bb.56:                               # %lor.lhs.false123
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s0, $a0
	ld.b	$a0, $a0, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s1, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB0_132
# %bb.57:                               # %if.end132
                                        #   in Loop: Header=BB0_50 Depth=1
	sub.d	$a0, $s5, $s0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.d	$s1, $a0, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(pdf_nextobject)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_133
# %bb.58:                               # %lor.lhs.false140
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_133
# %bb.59:                               # %if.end145
                                        #   in Loop: Header=BB0_50 Depth=1
	add.d	$a0, $s0, $s1
	sub.d	$a0, $a0, $s5
	addi.d	$s0, $a0, -3
	addi.d	$s8, $s5, 3
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a3, $zero, 6
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_137
# %bb.60:                               # %if.end155
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s1, $a0
	sub.d	$a1, $a0, $s8
	sub.d	$a0, $s0, $a1
	addi.d	$a0, $a0, -6
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 6
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	ori	$a3, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_92
# %bb.61:                               # %while.cond170.preheader
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $a0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$a1, $s1
	move	$s1, $zero
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 6
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s6, $zero, 47
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_64 Depth=2
	move	$s7, $s8
.LBB0_63:                               # %if.end293
                                        #   in Loop: Header=BB0_64 Depth=2
	sub.d	$a1, $s5, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(pdf_nextobject)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB0_88
.LBB0_64:                               # %while.cond170
                                        #   Parent Loop BB0_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	bgeu	$s8, $s5, .LBB0_88
# %bb.65:                               # %while.body173
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.bu	$a0, $s8, 0
	bne	$a0, $s6, .LBB0_62
# %bb.66:                               # %if.then177
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$s7, $s8, 1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_71
# %bb.67:                               # %if.else252
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_77
# %bb.68:                               # %if.else257
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 10
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_78
# %bb.69:                               # %if.else276
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 11
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_80
# %bb.70:                               # %if.else282
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 13
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s8, 14
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $a1, $a0
	or	$s7, $a0, $a2
	b	.LBB0_63
.LBB0_71:                               # %if.then182
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a0, $s8, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	addi.d	$s7, $s8, 7
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$s8, $a2, $s8
	.p2align	4, , 16
.LBB0_72:                               # %while.cond185
                                        #   Parent Loop BB0_50 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a2, $s7, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	addi.d	$s7, $s7, 1
	andi	$a2, $a2, 2048
	addi.d	$s8, $s8, 1
	bnez	$a2, .LBB0_72
# %bb.73:                               # %while.end
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.w	$s1, $a0, 0
	ori	$a0, $zero, 12
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_86
# %bb.74:                               # %land.lhs.true197
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_86
# %bb.75:                               # %if.then201
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 169
	ori	$a1, $zero, 14
	move	$a3, $s1
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 169
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a2, $sp, 169
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $s6
	move	$a1, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_81
# %bb.76:                               #   in Loop: Header=BB0_64 Depth=2
	move	$s1, $s0
	b	.LBB0_82
.LBB0_77:                               #   in Loop: Header=BB0_64 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_63
.LBB0_78:                               # %if.then261
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$a0, $s8, 11
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s7, $s8, 9
.LBB0_79:                               # %while.cond264
                                        #   Parent Loop BB0_50 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a0, $s7, 2
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	andi	$a0, $a0, 2048
	addi.d	$s7, $s7, 1
	bnez	$a0, .LBB0_79
	b	.LBB0_63
.LBB0_80:                               # %if.then280
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$s7, $s8, 12
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_63
.LBB0_81:                               # %if.end220
                                        #   in Loop: Header=BB0_64 Depth=2
	ori	$a0, $zero, 13
	st.b	$a0, $sp, 169
	addi.d	$a2, $sp, 169
	move	$a0, $s6
	move	$a1, $fp
	move	$s1, $s0
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_84
.LBB0_82:                               #   in Loop: Header=BB0_64 Depth=2
	ori	$s6, $zero, 47
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a0, $s1
	addi.d	$a0, $a1, -1
	sub.d	$a1, $s8, $a1
	pcaddu18i	$ra, %call36(pdf_nextobject)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_85
# %bb.83:                               # %if.then231
                                        #   in Loop: Header=BB0_64 Depth=2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	addi.d	$a1, $sp, 170
	move	$s1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_85
.LBB0_84:                               # %if.else247
                                        #   in Loop: Header=BB0_64 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 170
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 47
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
.LBB0_85:                               # %if.end249
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$s7, $s7, 4
.LBB0_86:                               # %if.end250
                                        #   in Loop: Header=BB0_64 Depth=2
	addi.d	$s7, $s7, -1
	b	.LBB0_63
.LBB0_87:                               #   in Loop: Header=BB0_50 Depth=1
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB0_94
.LBB0_88:                               # %while.end302
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_96
# %bb.89:                               # %if.then304
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_91
# %bb.90:                               # %if.then306
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_91:                               #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB0_93:                               #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
.LBB0_94:                               # %cleanup467
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bgeu	$s6, $s4, .LBB0_140
# %bb.95:                               # %cleanup467
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s5, .LBB0_50
	b	.LBB0_140
.LBB0_96:                               # %if.end308
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB0_100
# %bb.97:                               # %if.then311
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_99
# %bb.98:                               # %if.then313
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_99:                               #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_94
.LBB0_100:                              # %if.end315
                                        #   in Loop: Header=BB0_50 Depth=1
	addi.d	$a0, $s5, 6
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(pdf_nextlinestart)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_139
# %bb.101:                              # %if.end326
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s7, $a0
	sub.w	$s0, $s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a3, $zero, 10
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$s5, $a0
	bnez	$a0, .LBB0_103
# %bb.102:                              # %if.then336
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	ori	$a3, $zero, 10
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_pmemstr)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB0_145
.LBB0_103:                              # %if.end344
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	addi.d	$a0, $sp, 183
	ori	$a1, $zero, 257
	move	$a3, $s3
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(mkstemp)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bge	$a0, $s6, .LBB0_144
# %bb.104:                              # %if.end355
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.bu	$a0, $s5, -1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB0_106
# %bb.105:                              # %if.end355
                                        #   in Loop: Header=BB0_50 Depth=1
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB0_109
.LBB0_106:                              # %if.else366
                                        #   in Loop: Header=BB0_50 Depth=1
	addi.d	$a0, $s5, -1
	beqz	$s8, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_50 Depth=1
	move	$s5, $a0
	b	.LBB0_109
.LBB0_108:                              # %land.lhs.true368
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.bu	$a1, $s5, -2
	addi.d	$a2, $s5, -2
	addi.d	$a1, $a1, -13
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
.LBB0_109:                              # %if.end376
                                        #   in Loop: Header=BB0_50 Depth=1
	bgeu	$s7, $s5, .LBB0_119
# %bb.110:                              # %if.end383
                                        #   in Loop: Header=BB0_50 Depth=1
	sub.w	$s8, $s5, $s7
	beq	$s8, $s1, .LBB0_112
# %bb.111:                              # %if.then391
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_112:                              # %if.end392
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $s1
	move	$a2, $s8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_120
# %bb.113:                              # %if.then394
                                        #   in Loop: Header=BB0_50 Depth=1
	alsl.d	$a0, $s8, $s8, 2
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_148
# %bb.114:                              # %if.end402
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s1, $a0
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(ascii85decode)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB0_122
# %bb.115:                              # %if.end402
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s5, $a0, .LBB0_146
# %bb.116:                              # %if.then412
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_147
# %bb.117:                              # %if.end421
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_124
# %bb.118:                              # %if.then423
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s2
	pcaddu18i	$ra, %call36(try_flatedecode)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB0_125
.LBB0_119:                              # %if.then379
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_94
.LBB0_120:                              # %if.else434
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_123
# %bb.121:                              # %if.then436
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	move	$a2, $s8
	move	$a3, $s6
	move	$a4, $s2
	pcaddu18i	$ra, %call36(try_flatedecode)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB0_126
.LBB0_122:                              #   in Loop: Header=BB0_50 Depth=1
	move	$s0, $s1
	b	.LBB0_125
.LBB0_123:                              # %if.else438
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s1, 0
	move	$a0, $s6
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	b	.LBB0_126
.LBB0_124:                              # %if.else425
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s6
	move	$a1, $s7
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB0_125:                              # %cleanup430
                                        #   in Loop: Header=BB0_50 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_126:                              # %if.end442
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(cli_md5file)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_128
# %bb.127:                              # %if.then449
                                        #   in Loop: Header=BB0_50 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	addi.d	$a1, $sp, 183
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_129
.LBB0_128:                              # %if.else453
                                        #   in Loop: Header=BB0_50 Depth=1
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
.LBB0_129:                              # %if.end455
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	addi.d	$a2, $sp, 183
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_93
# %bb.130:                              # %land.lhs.true458
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a0, $s1, .LBB0_94
# %bb.131:                              # %if.then464
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -102
	b	.LBB0_140
.LBB0_132:                              # %if.then131
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB0_135
.LBB0_133:                              # %if.then144
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB0_135
.LBB0_134:                              # %if.then118
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
.LBB0_135:                              # %while.end486.sink.split
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB0_136:                              # %while.end486
	addi.w	$s5, $zero, -124
	b	.LBB0_140
.LBB0_137:                              # %if.then154
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
.LBB0_138:                              # %while.end486.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_139:
	move	$s5, $zero
.LBB0_140:                              # %while.end486
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_142
# %bb.141:                              # %if.then488
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_143
.LBB0_142:                              # %if.else489
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
.LBB0_143:                              # %if.end491
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_144:                              # %if.then351
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strerror)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	addi.d	$a1, $sp, 183
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -112
	b	.LBB0_140
.LBB0_145:                              # %if.then341
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	b	.LBB0_138
.LBB0_146:                              # %if.then406
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_136
.LBB0_147:                              # %cleanup
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_148:                              # %if.then398
	move	$a0, $s6
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 183
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -114
	b	.LBB0_140
.Lfunc_end0:
	.size	cli_pdf, .Lfunc_end0-cli_pdf
                                        # -- End function
	.p2align	5                               # -- Begin function cli_pmemstr
	.type	cli_pmemstr,@function
cli_pmemstr:                            # @cli_pmemstr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beq	$a0, $a2, .LBB1_10
# %bb.1:                                # %if.end
	move	$s0, $a3
	move	$s3, $a1
	bgeu	$a1, $a3, .LBB1_3
.LBB1_2:
	move	$fp, $zero
	b	.LBB1_10
.LBB1_3:                                # %if.end3
	move	$s1, $a2
	move	$a0, $fp
	move	$a1, $a2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_10
# %bb.4:                                # %while.cond.preheader
	ld.b	$s2, $s1, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_2
# %bb.5:                                # %while.body.preheader
	move	$s4, $a0
	.p2align	4, , 16
.LBB1_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $fp, $s4
	add.d	$s3, $a0, $s3
	bltu	$s3, $s0, .LBB1_2
# %bb.7:                                # %if.end13
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_9
# %bb.8:                                # %if.end18
                                        #   in Loop: Header=BB1_6 Depth=1
	xor	$a0, $fp, $s4
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, 1
	masknez	$a2, $s4, $a0
	maskeqz	$a1, $a1, $a0
	or	$fp, $a1, $a2
	sub.d	$s3, $s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB1_6
	b	.LBB1_2
.LBB1_9:
	move	$fp, $s4
.LBB1_10:                               # %cleanup
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	cli_pmemstr, .Lfunc_end1-cli_pmemstr
                                        # -- End function
	.p2align	5                               # -- Begin function pdf_nextobject
	.type	pdf_nextobject,@function
pdf_nextobject:                         # @pdf_nextobject
# %bb.0:                                # %entry
	beqz	$a1, .LBB2_18
# %bb.1:                                # %while.body.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 82
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	lu12i.w	$a5, 2
	ori	$a5, $a5, 1025
	ori	$a6, $zero, 15
	ori	$a7, $zero, 1
.LBB2_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_13 Depth 2
	ld.bu	$t0, $a0, 0
	addi.d	$t1, $t0, -9
	bltu	$a3, $t1, .LBB2_16
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a4, $t1
	add.d	$t1, $a4, $t1
	jr	$t1
.LBB2_4:                                # %sw.bb2
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a7, $zero
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
.LBB2_5:                                # %sw.epilog
                                        #   in Loop: Header=BB2_2 Depth=1
	bnez	$a1, .LBB2_2
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_6:                                # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	bltu	$a6, $t0, .LBB2_8
# %bb.7:                                # %sw.bb
                                        #   in Loop: Header=BB2_2 Depth=1
	sll.d	$a7, $a2, $t0
	and	$t1, $a7, $a5
	move	$a7, $a1
	move	$t0, $a0
	bnez	$t1, .LBB2_12
.LBB2_8:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$a7, $a1
	move	$t1, $a0
	.p2align	4, , 16
.LBB2_9:                                # %while.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a7, $a2, .LBB2_18
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB2_9 Depth=2
	ld.bu	$t2, $t1, 1
	addi.d	$t0, $t1, 1
	addi.d	$a7, $a7, -1
	move	$t1, $t0
	bltu	$a6, $t2, .LBB2_9
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB2_9 Depth=2
	sll.d	$t1, $a2, $t2
	and	$t2, $t1, $a5
	move	$t1, $t0
	beqz	$t2, .LBB2_9
.LBB2_12:                               # %while.body9.i.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$t1, $a7, -1
	add.d	$a0, $a1, $a0
	sub.d	$a1, $a0, $t0
	.p2align	4, , 16
.LBB2_13:                               # %while.body9.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t1, .LBB2_18
# %bb.14:                               # %if.end14.i
                                        #   in Loop: Header=BB2_13 Depth=2
	ld.bu	$t2, $t0, 1
	move	$a7, $zero
	addi.d	$a0, $t0, 1
	addi.d	$a1, $a1, -1
	bltu	$a6, $t2, .LBB2_5
# %bb.15:                               # %if.end14.i
                                        #   in Loop: Header=BB2_13 Depth=2
	sll.d	$t0, $a2, $t2
	and	$t2, $t0, $a5
	addi.d	$t1, $t1, -1
	move	$t0, $a0
	bnez	$t2, .LBB2_13
	b	.LBB2_5
.LBB2_16:                               # %sw.default
                                        #   in Loop: Header=BB2_2 Depth=1
	beqz	$a7, .LBB2_19
# %bb.17:                               # %if.end6
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	ori	$a7, $zero, 1
	b	.LBB2_5
.LBB2_18:
	move	$a0, $zero
.LBB2_19:                               # %cleanup
	ret
.Lfunc_end2:
	.size	pdf_nextobject, .Lfunc_end2-pdf_nextobject
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_19-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_16-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function pdf_nextlinestart
	.type	pdf_nextlinestart,@function
pdf_nextlinestart:                      # @pdf_nextlinestart
# %bb.0:                                # %entry
	ld.bu	$a4, $a0, 0
	ori	$a3, $zero, 1
	lu12i.w	$a2, 2
	ori	$a5, $zero, 15
	ori	$a2, $a2, 1025
	bltu	$a5, $a4, .LBB3_10
# %bb.1:                                # %entry
	sll.d	$a4, $a3, $a4
	and	$a4, $a4, $a2
	beqz	$a4, .LBB3_10
# %bb.2:
	move	$a4, $a0
.LBB3_3:                                # %while.body9.preheader
	addi.d	$a1, $a1, -1
	ori	$a3, $zero, 1
	ori	$a5, $zero, 15
	.p2align	4, , 16
.LBB3_4:                                # %while.body9
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a1, .LBB3_11
# %bb.5:                                # %if.end14
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a6, $a4, 1
	addi.d	$a0, $a4, 1
	bltu	$a5, $a6, .LBB3_7
# %bb.6:                                # %if.end14
                                        #   in Loop: Header=BB3_4 Depth=1
	sll.d	$a4, $a3, $a6
	and	$a6, $a4, $a2
	addi.d	$a1, $a1, -1
	move	$a4, $a0
	bnez	$a6, .LBB3_4
.LBB3_7:                                # %return
	ret
	.p2align	4, , 16
.LBB3_8:                                # %if.end
                                        #   in Loop: Header=BB3_10 Depth=1
	ld.bu	$a6, $a0, 1
	addi.d	$a4, $a0, 1
	addi.d	$a1, $a1, -1
	move	$a0, $a4
	bltu	$a5, $a6, .LBB3_10
# %bb.9:                                # %if.end
                                        #   in Loop: Header=BB3_10 Depth=1
	sll.d	$a0, $a3, $a6
	and	$a6, $a0, $a2
	move	$a0, $a4
	bnez	$a6, .LBB3_3
.LBB3_10:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$a1, $a3, .LBB3_8
.LBB3_11:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	pdf_nextlinestart, .Lfunc_end3-pdf_nextlinestart
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function ascii85decode
.LCPI4_0:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
.LCPI4_1:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
.LCPI4_2:
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
.LCPI4_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.p2align	5
	.type	ascii85decode,@function
ascii85decode:                          # @ascii85decode
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
	pcalau12i	$a3, %pc_hi20(.L.str.53)
	addi.d	$a3, $a3, %pc_lo12(.L.str.53)
	move	$s8, $a2
	move	$s2, $a1
	move	$s3, $a0
	beq	$a0, $a3, .LBB4_9
# %bb.1:                                # %if.end.i
	ori	$a0, $zero, 2
	bgeu	$s2, $a0, .LBB4_3
.LBB4_2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_9
.LBB4_3:                                # %if.end3.i
	ld.hu	$a0, $s3, 0
	lu12i.w	$a1, 3
	ori	$s4, $a1, 3710
	beq	$a0, $s4, .LBB4_9
# %bb.4:                                # %while.cond.preheader.i
	ori	$a1, $zero, 126
	move	$a0, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_2
# %bb.5:                                # %while.body.i.preheader
	ori	$s0, $zero, 2
	move	$s1, $s2
	move	$fp, $s3
	.p2align	4, , 16
.LBB4_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a1, $fp, $a0
	add.d	$a1, $a1, $s1
	bltu	$a1, $s0, .LBB4_2
# %bb.7:                                # %if.end13.i
                                        #   in Loop: Header=BB4_6 Depth=1
	ld.hu	$a2, $a0, 0
	beq	$a2, $s4, .LBB4_9
# %bb.8:                                # %if.end18.i
                                        #   in Loop: Header=BB4_6 Depth=1
	xor	$a2, $fp, $a0
	sltui	$a2, $a2, 1
	addi.d	$a3, $fp, 1
	masknez	$a0, $a0, $a2
	maskeqz	$a3, $a3, $a2
	or	$fp, $a3, $a0
	sub.d	$s1, $a1, $a2
	ori	$a1, $zero, 126
	move	$a0, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_6
	b	.LBB4_2
.LBB4_9:                                # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	ori	$s5, $zero, 1
	blt	$s2, $s5, .LBB4_27
# %bb.10:                               # %while.body.preheader
	move	$s1, $zero
	move	$s4, $zero
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 1
	ori	$s6, $zero, 126
	ori	$s7, $zero, 84
	ori	$a3, $zero, 5
	ori	$a4, $zero, 122
	move	$a2, $s8
	addi.w	$s0, $zero, -1
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_11:                               # %if.then14
                                        #   in Loop: Header=BB4_13 Depth=1
	alsl.d	$a1, $s4, $s4, 2
	alsl.d	$a1, $a1, $a1, 4
	addi.w	$s1, $s1, 1
	add.w	$s4, $a0, $a1
	beq	$s1, $a3, .LBB4_21
.LBB4_12:                               # %cleanup92
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 1
	bgeu	$s5, $s2, .LBB4_27
.LBB4_13:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s8, $s3, -1
	bne	$s8, $s6, .LBB4_15
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_13 Depth=1
	ld.bu	$a0, $s3, 0
	addi.d	$a0, $a0, -62
	sltui	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$s8, $a0, 126
.LBB4_15:                               # %if.end8
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.d	$a0, $s8, -33
	bgeu	$s7, $a0, .LBB4_11
# %bb.16:                               # %if.else
                                        #   in Loop: Header=BB4_13 Depth=1
	beq	$s8, $a4, .LBB4_19
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB4_13 Depth=1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	beq	$s8, $s0, .LBB4_22
# %bb.18:                               # %if.else81
                                        #   in Loop: Header=BB4_13 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 122
	ori	$a3, $zero, 5
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_12
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_19:                               # %if.then34
                                        #   in Loop: Header=BB4_13 Depth=1
	bnez	$s1, .LBB4_26
# %bb.20:                               # %if.end37
                                        #   in Loop: Header=BB4_13 Depth=1
	move	$s1, $zero
	st.w	$zero, $a2, 0
	addi.d	$a2, $a2, 4
	addi.w	$fp, $fp, 4
	b	.LBB4_12
.LBB4_21:                               # %if.then17
                                        #   in Loop: Header=BB4_13 Depth=1
	move	$s1, $zero
	revb.2w	$a0, $s4
	st.w	$a0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.w	$fp, $fp, 4
	move	$s4, $zero
	b	.LBB4_12
.LBB4_22:                               # %if.then46
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB4_27
# %bb.23:                               # %if.then46
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB4_28
# %bb.24:                               # %cleanup.thread
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB4_27
.LBB4_25:                               # %if.then86
	andi	$a1, $s8, 255
	addi.d	$a2, $s2, -2
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	b	.LBB4_27
.LBB4_26:                               # %if.then36
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
.LBB4_27:                               # %cleanup95
	move	$a0, $fp
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
.LBB4_28:                               # %for.cond.preheader
	ori	$a0, $zero, 4
	blt	$a0, $s1, .LBB4_43
# %bb.29:                               # %iter.check
	ori	$a0, $zero, 5
	sub.w	$a0, $a0, $s1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB4_31
# %bb.30:
	move	$a2, $s1
	b	.LBB4_41
.LBB4_31:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB4_33
# %bb.32:
	move	$a1, $zero
	b	.LBB4_37
.LBB4_33:                               # %vector.ph
	move	$a1, $a0
	xvrepli.w	$xr0, 1
	bstrins.d	$a1, $zero, 3, 0
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $s4, 0
	xvrepli.w	$xr2, 85
	move	$a2, $a1
.LBB4_34:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr1, $xr1, $xr2
	addi.w	$a2, $a2, -16
	xvmul.w	$xr0, $xr0, $xr2
	bnez	$a2, .LBB4_34
# %bb.35:                               # %middle.block
	xvmul.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmul.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmul.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmul.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$s4, $xr0, 0
	beq	$a0, $a1, .LBB4_43
# %bb.36:                               # %vec.epilog.iter.check
	andi	$a2, $a0, 12
	beqz	$a2, .LBB4_40
.LBB4_37:                               # %vec.epilog.ph
	move	$a3, $a0
	bstrins.d	$a3, $zero, 1, 0
	add.d	$a2, $s1, $a3
	vrepli.w	$vr0, 1
	vinsgr2vr.w	$vr0, $s4, 0
	sub.d	$a1, $a1, $a3
	vrepli.w	$vr1, 85
.LBB4_38:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, 4
	vmul.w	$vr0, $vr0, $vr1
	bnez	$a1, .LBB4_38
# %bb.39:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmul.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmul.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	bne	$a0, $a3, .LBB4_41
	b	.LBB4_43
.LBB4_40:
	add.d	$a2, $s1, $a1
.LBB4_41:                               # %for.body.preheader
	addi.w	$a1, $a2, -5
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	.p2align	4, , 16
.LBB4_42:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a2, $s4, $s4, 2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a3, $a1, $a0
	alsl.d	$s4, $a2, $a2, 4
	beqz	$a3, .LBB4_42
.LBB4_43:                               # %for.end
	ori	$a0, $zero, 2
	add.w	$fp, $fp, $s1
	blt	$s1, $a0, .LBB4_27
# %bb.44:                               # %iter.check175
	ori	$a0, $zero, 1
	slt	$a0, $a0, $s1
	slli.d	$a1, $s1, 3
	addi.d	$a1, $a1, -16
	bstrpick.d	$a1, $a1, 31, 3
	slli.d	$a1, $a1, 3
	lu12i.w	$a2, 4095
	ori	$a2, $a2, 4095
	srl.w	$a1, $a2, $a1
	maskeqz	$a0, $a1, $a0
	ori	$a1, $zero, 9
	add.d	$a0, $s4, $a0
	bgeu	$s1, $a1, .LBB4_46
# %bb.45:
	move	$a4, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	b	.LBB4_56
.LBB4_46:                               # %vector.main.loop.iter.check177
	addi.d	$a1, $s1, -1
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a3, $zero, 33
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a2, %pc_hi20(.LCPI4_3)
	xvrepli.w	$xr1, 24
	bgeu	$s1, $a3, .LBB4_48
# %bb.47:
	move	$a3, $zero
	b	.LBB4_52
.LBB4_48:                               # %vector.ph178
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	xvld	$xr2, $a3, %pc_lo12(.LCPI4_0)
	pcalau12i	$a3, %pc_hi20(.LCPI4_1)
	xvld	$xr3, $a3, %pc_lo12(.LCPI4_1)
	pcalau12i	$a3, %pc_hi20(.LCPI4_2)
	xvld	$xr4, $a3, %pc_lo12(.LCPI4_2)
	xvld	$xr5, $a2, %pc_lo12(.LCPI4_3)
	bstrpick.d	$a3, $a1, 31, 5
	slli.d	$a3, $a3, 5
	xvrepli.w	$xr6, 32
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $a3
.LBB4_49:                               # %vector.body181
                                        # =>This Inner Loop Header: Depth=1
	xvslli.w	$xr7, $xr2, 3
	xvslli.w	$xr8, $xr3, 3
	xvslli.w	$xr9, $xr4, 3
	xvslli.w	$xr10, $xr5, 3
	xvsub.w	$xr11, $xr1, $xr10
	xvsub.w	$xr10, $xr1, $xr9
	xvsub.w	$xr9, $xr1, $xr8
	xvsub.w	$xr7, $xr1, $xr7
	xvsrl.w	$xr8, $xr0, $xr7
	xvsrl.w	$xr9, $xr0, $xr9
	xvsrl.w	$xr10, $xr0, $xr10
	xvsrl.w	$xr11, $xr0, $xr11
	xvpickve2gr.w	$a6, $xr11, 0
	vinsgr2vr.b	$vr7, $a6, 0
	xvpickve2gr.w	$a6, $xr11, 1
	vinsgr2vr.b	$vr7, $a6, 1
	xvpickve2gr.w	$a6, $xr11, 2
	vinsgr2vr.b	$vr7, $a6, 2
	xvpickve2gr.w	$a6, $xr11, 3
	vinsgr2vr.b	$vr7, $a6, 3
	xvpickve2gr.w	$a6, $xr11, 4
	vinsgr2vr.b	$vr7, $a6, 4
	xvpickve2gr.w	$a6, $xr11, 5
	vinsgr2vr.b	$vr7, $a6, 5
	xvpickve2gr.w	$a6, $xr11, 6
	vinsgr2vr.b	$vr7, $a6, 6
	xvpickve2gr.w	$a6, $xr11, 7
	vinsgr2vr.b	$vr7, $a6, 7
	xvpickve2gr.w	$a6, $xr10, 0
	vinsgr2vr.b	$vr7, $a6, 8
	xvpickve2gr.w	$a6, $xr10, 1
	vinsgr2vr.b	$vr7, $a6, 9
	xvpickve2gr.w	$a6, $xr10, 2
	vinsgr2vr.b	$vr7, $a6, 10
	xvpickve2gr.w	$a6, $xr10, 3
	vinsgr2vr.b	$vr7, $a6, 11
	xvpickve2gr.w	$a6, $xr10, 4
	vinsgr2vr.b	$vr7, $a6, 12
	xvpickve2gr.w	$a6, $xr10, 5
	vinsgr2vr.b	$vr7, $a6, 13
	xvpickve2gr.w	$a6, $xr10, 6
	vinsgr2vr.b	$vr7, $a6, 14
	xvpickve2gr.w	$a6, $xr10, 7
	vinsgr2vr.b	$vr7, $a6, 15
	xvpickve2gr.w	$a6, $xr9, 0
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 0
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 1
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 1
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 2
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 2
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 3
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 3
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 4
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 4
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 5
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 5
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 6
	xvpermi.d	$xr10, $xr7, 14
	vinsgr2vr.b	$vr10, $a6, 6
	xvpermi.q	$xr7, $xr10, 2
	xvpickve2gr.w	$a6, $xr9, 7
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 7
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 0
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 8
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 1
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 9
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 2
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 10
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 3
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 11
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 4
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 12
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 5
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 13
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 6
	xvpermi.d	$xr9, $xr7, 14
	vinsgr2vr.b	$vr9, $a6, 14
	xvpermi.q	$xr7, $xr9, 2
	xvpickve2gr.w	$a6, $xr8, 7
	xvpermi.d	$xr8, $xr7, 14
	vinsgr2vr.b	$vr8, $a6, 15
	xvpermi.q	$xr7, $xr8, 2
	xvst	$xr7, $a4, 0
	xvadd.w	$xr5, $xr5, $xr6
	xvadd.w	$xr4, $xr4, $xr6
	xvadd.w	$xr3, $xr3, $xr6
	xvadd.w	$xr2, $xr2, $xr6
	addi.d	$a5, $a5, -32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB4_49
# %bb.50:                               # %middle.block184
	beq	$a3, $a1, .LBB4_27
# %bb.51:                               # %vec.epilog.iter.check190
	andi	$a4, $a1, 24
	beqz	$a4, .LBB4_55
.LBB4_52:                               # %vec.epilog.ph189
	bstrpick.d	$a5, $a1, 31, 3
	xvld	$xr2, $a2, %pc_lo12(.LCPI4_3)
	slli.d	$a4, $a5, 3
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a2, $a5, $a6, 3
	xvreplgr2vr.w	$xr3, $a3
	xvadd.w	$xr2, $xr3, $xr2
	sub.d	$a5, $a3, $a4
	add.d	$a3, $a6, $a3
.LBB4_53:                               # %vec.epilog.vector.body199
                                        # =>This Inner Loop Header: Depth=1
	xvslli.w	$xr3, $xr2, 3
	xvsub.w	$xr3, $xr1, $xr3
	xvsrl.w	$xr3, $xr0, $xr3
	xvpickve2gr.w	$a6, $xr3, 0
	vinsgr2vr.b	$vr4, $a6, 0
	xvpickve2gr.w	$a6, $xr3, 1
	vinsgr2vr.b	$vr4, $a6, 1
	xvpickve2gr.w	$a6, $xr3, 2
	vinsgr2vr.b	$vr4, $a6, 2
	xvpickve2gr.w	$a6, $xr3, 3
	vinsgr2vr.b	$vr4, $a6, 3
	xvpickve2gr.w	$a6, $xr3, 4
	vinsgr2vr.b	$vr4, $a6, 4
	xvpickve2gr.w	$a6, $xr3, 5
	vinsgr2vr.b	$vr4, $a6, 5
	xvpickve2gr.w	$a6, $xr3, 6
	vinsgr2vr.b	$vr4, $a6, 6
	xvpickve2gr.w	$a6, $xr3, 7
	vinsgr2vr.b	$vr4, $a6, 7
	vstelm.d	$vr4, $a3, 0, 0
	xvaddi.wu	$xr2, $xr2, 8
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB4_53
# %bb.54:                               # %vec.epilog.middle.block205
	beq	$a4, $a1, .LBB4_27
	b	.LBB4_56
.LBB4_55:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a3
	move	$a4, $a3
.LBB4_56:                               # %for.body70.preheader
	nor	$a1, $a4, $zero
	add.d	$a1, $a1, $s1
	slli.d	$a3, $a4, 3
	ori	$a4, $zero, 24
	sub.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB4_57:                               # %for.body70
                                        # =>This Inner Loop Header: Depth=1
	srl.w	$a4, $a0, $a3
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, -8
	bnez	$a1, .LBB4_57
	b	.LBB4_27
.Lfunc_end4:
	.size	ascii85decode, .Lfunc_end4-ascii85decode
                                        # -- End function
	.p2align	5                               # -- Begin function try_flatedecode
	.type	try_flatedecode,@function
try_flatedecode:                        # @try_flatedecode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s2, $a0
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(flatedecode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_6
# %bb.1:                                # %if.end
	bne	$s3, $s1, .LBB5_3
# %bb.2:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	b	.LBB5_5
.LBB5_3:                                # %if.end4
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(flatedecode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_6
# %bb.4:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
.LBB5_5:                                # %cleanup.sink.split
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB5_7
.LBB5_6:
	move	$a0, $zero
.LBB5_7:                                # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	try_flatedecode, .Lfunc_end5-try_flatedecode
                                        # -- End function
	.p2align	5                               # -- Begin function flatedecode
	.type	flatedecode,@function
flatedecode:                            # @flatedecode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a4, 1
	ori	$a4, $a4, 2240
	sub.d	$sp, $sp, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB6_3
# %bb.1:                                # %if.end
	lu12i.w	$a0, 2
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
	addi.d	$a0, $sp, 16
	lu12i.w	$a1, 2
	ori	$a1, $a1, 40
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$s1, 2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(inflateInit_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_4
# %bb.2:                                # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -104
	b	.LBB6_34
.LBB6_3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB6_34
.LBB6_4:                                # %while.cond.preheader
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB6_16
# %bb.5:                                # %while.body.lr.ph
	move	$s2, $zero
	addi.d	$s3, $sp, 16
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_6:                                # %if.end27
                                        #   in Loop: Header=BB6_8 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 40
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	st.w	$s1, $a0, 0
.LBB6_7:                                # %if.end31
                                        #   in Loop: Header=BB6_8 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB6_16
.LBB6_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(inflate)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_15
# %bb.9:                                # %sw.bb
                                        #   in Loop: Header=BB6_8 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_7
# %bb.10:                               # %if.then10
                                        #   in Loop: Header=BB6_8 Depth=1
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 32
	add.d	$s2, $s2, $a0
	beqz	$a1, .LBB6_6
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a0, $a1, 24
	beqz	$a0, .LBB6_6
# %bb.12:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_8 Depth=1
	bge	$a0, $s2, .LBB6_6
# %bb.13:                               # %if.then22
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_25
# %bb.14:                               # %if.then25
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	b	.LBB6_33
.LBB6_15:                               # %while.body
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_27
.LBB6_16:                               # %while.end
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	beq	$a0, $s1, .LBB6_18
# %bb.17:                               # %if.then43
	sub.w	$a2, $s1, $a0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_29
.LBB6_18:                               # %if.end53
	lu12i.w	$a0, 2
	ori	$a0, $a0, 32
	add.d	$a0, $sp, $a0
	ld.d	$a1, $a0, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 56
	add.d	$a0, $sp, $a0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $fp, 32
	div.du	$a3, $a2, $a1
	beqz	$a0, .LBB6_20
# %bb.19:                               # %cond.true
	ld.w	$a4, $a0, 12
	b	.LBB6_21
.LBB6_20:
	move	$a4, $zero
.LBB6_21:                               # %cond.end
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB6_26
# %bb.22:                               # %land.lhs.true62
	ld.wu	$a0, $a0, 12
	beqz	$a0, .LBB6_26
# %bb.23:                               # %land.lhs.true66
	lu12i.w	$a1, 2
	ori	$a1, $a1, 56
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 32
	add.d	$a2, $sp, $a2
	ld.d	$a2, $a2, 0
	div.du	$a1, $a1, $a2
	bgeu	$a0, $a1, .LBB6_26
# %bb.24:                               # %if.then75
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 41
	andi	$a0, $a0, 1
	bnez	$a0, .LBB6_32
.LBB6_25:
	addi.w	$a0, $zero, -104
	b	.LBB6_34
.LBB6_26:                               # %if.end83
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -104
	masknez	$a0, $a1, $a0
	b	.LBB6_34
.LBB6_27:                               # %sw.default
	lu12i.w	$a1, 2
	ori	$a1, $a1, 64
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	beqz	$a2, .LBB6_30
# %bb.28:                               # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	b	.LBB6_31
.LBB6_29:
	addi.w	$a0, $zero, -123
	b	.LBB6_34
.LBB6_30:                               # %if.else
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	move	$a2, $a0
	move	$a0, $a1
.LBB6_31:                               # %if.end35
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -104
	b	.LBB6_34
.LBB6_32:                               # %if.then80
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
.LBB6_33:                               # %cleanup
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 1
.LBB6_34:                               # %cleanup
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2240
	add.d	$sp, $sp, $a1
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end6:
	.size	flatedecode, .Lfunc_end6-flatedecode
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in cli_pdf(%s)\n"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cli_pdf: scanning %lu bytes\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%PDF-1."
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%%EOF"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"trailer"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Encrypt"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Encrypted PDF files not yet supported\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"xref"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"endobj"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"cli_pdf: Object number missing\n"
	.size	.L.str.9, 32

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"cli_pdf: Generation number missing\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"obj"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Indirect object missing \"obj\"\n"
	.size	.L.str.12, 31

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"No matching endobj\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"stream"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Length "
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	" 0 R"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Length is in indirect obj %ld\n"
	.size	.L.str.17, 31

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\n%ld 0 obj"
	.size	.L.str.18, 11

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"length in '%s' %ld\n"
	.size	.L.str.19, 20

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Couldn't find '%s'\n"
	.size	.L.str.20, 20

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Length2 "
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Predictor "
	.size	.L.str.22, 11

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"FlateDecode"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"ASCII85Decode"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Embedded fonts not yet supported\n"
	.size	.L.str.25, 34

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Predictor %d not honoured for embedded image\n"
	.size	.L.str.26, 46

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"endstream\n"
	.size	.L.str.27, 11

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"endstream\r"
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"No endstream\n"
	.size	.L.str.29, 14

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%s/pdfXXXXXX"
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"cli_pdf: can't create temporary file %s: %s\n"
	.size	.L.str.31, 45

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Empty stream\n"
	.size	.L.str.32, 14

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"cli_pdf: Incorrect Length field in file attempting to recover\n"
	.size	.L.str.33, 63

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"length %ld, calculated_streamlen %ld isFlate %d isASCII85 %d\n"
	.size	.L.str.34, 62

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"cli_pdf: writing %lu bytes from the stream\n"
	.size	.L.str.35, 44

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"cli_pdf: not scanning duplicate embedded file '%s'\n"
	.size	.L.str.36, 52

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"cli_pdf: extracted file %d to %s\n"
	.size	.L.str.37, 34

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"cli_pdf: number of files exceeded %u\n"
	.size	.L.str.38, 38

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"cli_pdf: returning %d\n"
	.size	.L.str.39, 23

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Bad compression in flate stream\n"
	.size	.L.str.40, 33

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"cli_pdf: Bad compressed block length in flate stream\n"
	.size	.L.str.41, 54

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"cli_pdf: flatedecode %lu bytes\n"
	.size	.L.str.42, 32

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"cli_pdf: flatedecode len == 0\n"
	.size	.L.str.43, 31

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"1.2.11"
	.size	.L.str.44, 7

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"cli_pdf: inflateInit failed"
	.size	.L.str.45, 28

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"cli_pdf: flatedecode size exceeded (%lu)\n"
	.size	.L.str.46, 42

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"PDF.ExceededFileSize"
	.size	.L.str.47, 21

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"pdf: after writing %lu bytes, got error \"%s\" inflating PDF attachment\n"
	.size	.L.str.48, 71

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"pdf: after writing %lu bytes, got error %d inflating PDF attachment\n"
	.size	.L.str.49, 69

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"cli_pdf: flatedecode in=%lu out=%lu ratio %lu (max %u)\n"
	.size	.L.str.50, 56

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"cli_pdf: flatedecode Max ratio reached\n"
	.size	.L.str.51, 40

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Oversized.PDF"
	.size	.L.str.52, 14

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"~>"
	.size	.L.str.53, 3

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"ascii85decode: no EOF marker found\n"
	.size	.L.str.54, 36

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"cli_pdf: ascii85decode %lu bytes\n"
	.size	.L.str.55, 34

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"ascii85decode: unexpected 'z'\n"
	.size	.L.str.56, 31

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"ascii85decode: quintet %d\n"
	.size	.L.str.57, 27

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"ascii85Decode: only 1 byte in last quintet\n"
	.size	.L.str.58, 44

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"ascii85Decode: invalid character 0x%x, len %lu\n"
	.size	.L.str.59, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
