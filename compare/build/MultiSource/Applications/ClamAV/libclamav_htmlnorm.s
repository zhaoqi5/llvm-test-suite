	.file	"libclamav_htmlnorm.c"
	.text
	.globl	cli_readline                    # -- Begin function cli_readline
	.p2align	5
	.type	cli_readline,@function
cli_readline:                           # @cli_readline
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $a2, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.1:                                # %if.end
	beqz	$fp, .LBB0_16
# %bb.2:                                # %if.then2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 8
	bge	$a1, $a2, .LBB0_25
# %bb.3:                                # %land.lhs.true.lr.ph
	ld.d	$a3, $fp, 0
	add.d	$a1, $a3, $a1
	add.d	$a2, $a3, $a2
	addi.w	$a3, $s1, -1
	ori	$s0, $zero, 1
	ori	$a4, $zero, 10
	move	$s1, $a1
	.p2align	4, , 16
.LBB0_4:                                # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $s1, 0
	beq	$a5, $a4, .LBB0_7
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	bgeu	$s0, $a3, .LBB0_7
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$s0, $s0, 1
	bltu	$s1, $a2, .LBB0_4
.LBB0_7:                                # %while.end
	beq	$s1, $a2, .LBB0_26
# %bb.8:                                # %if.else
	ld.bu	$s2, $s1, 0
	ori	$a2, $zero, 10
	beq	$s2, $a2, .LBB0_27
# %bb.9:                                # %while.cond27.preheader
	move	$s3, $a0
	move	$s4, $a1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	move	$a2, $a0
	move	$a0, $s3
	ld.d	$a2, $a2, 0
	slli.d	$a3, $s2, 1
	ldx.hu	$a3, $a2, $a3
	slli.d	$a4, $a3, 50
	move	$a3, $s0
	bltz	$a4, .LBB0_14
# %bb.10:                               # %while.cond27.preheader
	ori	$a4, $zero, 2
	move	$a3, $s0
	bltu	$s0, $a4, .LBB0_14
# %bb.11:                               # %while.body38.preheader
	addi.d	$a4, $s1, -1
	ori	$a5, $zero, 1
	move	$a3, $s0
	.p2align	4, , 16
.LBB0_12:                               # %while.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a4, 0
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a2, $a6
	slli.d	$a6, $a6, 50
	addi.w	$a3, $a3, -1
	bltz	$a6, .LBB0_14
# %bb.13:                               # %while.body38
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a4, $a4, -1
	bltu	$a5, $a3, .LBB0_12
.LBB0_14:                               # %while.end41
	addi.d	$a2, $a3, -1
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a3
	b	.LBB0_27
.LBB0_15:
	move	$a0, $zero
	b	.LBB0_28
.LBB0_16:                               # %if.else53
	beqz	$s0, .LBB0_23
# %bb.17:                               # %if.end56
	move	$fp, $a0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.18:                               # %if.end61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_24
# %bb.19:                               # %if.end67
	addi.w	$s1, $s1, -1
	bne	$s1, $a0, .LBB0_29
# %bb.20:                               # %while.cond72.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	bstrpick.d	$s1, $s1, 31, 0
	move	$a0, $fp
	.p2align	4, , 16
.LBB0_21:                               # %while.cond72
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $s1
	ld.bu	$a3, $a3, -1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a1, $a3
	slli.d	$a3, $a3, 50
	bltz	$a3, .LBB0_30
# %bb.22:                               # %while.body83
                                        #   in Loop: Header=BB0_21 Depth=1
	addi.d	$s1, $s1, -1
	addi.w	$a2, $a2, -1
	bnez	$s1, .LBB0_21
	b	.LBB0_28
.LBB0_23:                               # %if.then55
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_24:                               # %if.then60
	move	$a0, $fp
.LBB0_25:                               # %if.then6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_28
.LBB0_26:                               # %if.then17
	addi.w	$s0, $s0, -1
.LBB0_27:                               # %if.end50
	bstrpick.d	$s1, $s0, 31, 0
	move	$s0, $a0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	stx.b	$zero, $s0, $s1
	ld.d	$a1, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 16
.LBB0_28:                               # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_29:
	move	$a0, $fp
	b	.LBB0_28
.LBB0_30:                               # %while.end89
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bstrpick.d	$a1, $s1, 31, 0
	stx.b	$zero, $fp, $a1
	b	.LBB0_28
.Lfunc_end0:
	.size	cli_readline, .Lfunc_end0-cli_readline
                                        # -- End function
	.globl	html_tag_arg_free               # -- Begin function html_tag_arg_free
	.p2align	5
	.type	html_tag_arg_free,@function
html_tag_arg_free:                      # @html_tag_arg_free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB1_8
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a0, .LBB1_8
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB1_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_2
# %bb.6:                                # %if.then7
                                        #   in Loop: Header=BB1_3 Depth=1
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB1_2
# %bb.7:                                # %if.then12
                                        #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_8:                                # %for.end
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB1_10
# %bb.9:                                # %if.then20
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end22
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_12
# %bb.11:                               # %if.then25
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %if.end27
	ld.d	$a0, $fp, 24
	addi.d	$s0, $fp, 8
	beqz	$a0, .LBB1_14
# %bb.13:                               # %if.then30
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %if.end32
	st.w	$zero, $fp, 0
	st.d	$zero, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	html_tag_arg_free, .Lfunc_end1-html_tag_arg_free
                                        # -- End function
	.globl	html_normalise_mem              # -- Begin function html_normalise_mem
	.p2align	5
	.type	html_normalise_mem,@function
html_normalise_mem:                     # @html_normalise_mem
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 0
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 16
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(cli_html_normalise)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	html_normalise_mem, .Lfunc_end2-html_normalise_mem
                                        # -- End function
	.p2align	5                               # -- Begin function cli_html_normalise
	.type	cli_html_normalise,@function
cli_html_normalise:                     # @cli_html_normalise
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1664
	move	$s4, $a2
	move	$s3, $a1
	move	$s2, $a3
	beqz	$a4, .LBB3_2
# %bb.1:                                # %land.rhs
	ld.bu	$a1, $a4, 24
	bstrpick.d	$s0, $a1, 1, 1
	move	$s8, $zero
	st.w	$zero, $sp, 1516
	bnez	$s3, .LBB3_6
	b	.LBB3_3
.LBB3_2:
	move	$s0, $zero
	move	$s8, $zero
	st.w	$zero, $sp, 1516
	bnez	$s3, .LBB3_6
.LBB3_3:                                # %if.then
	bltz	$a0, .LBB3_23
# %bb.4:                                # %if.end
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_939
# %bb.5:                                # %if.end10
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_952
.LBB3_6:                                # %if.end16
	andi	$s1, $s0, 1
	beqz	$s1, .LBB3_10
# %bb.7:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	lu12i.w	$a2, 4
	addi.d	$a0, $sp, 1336
	pcaddu18i	$ra, %call36(init_entity_converter)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_10
# %bb.8:                                # %if.then20
	move	$s7, $a0
	bnez	$s3, .LBB3_1006
# %bb.9:                                # %if.then22
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB3_1006
.LBB3_10:                               # %if.end25
	st.w	$zero, $sp, 1512
	st.d	$zero, $sp, 1520
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1528
	beqz	$s4, .LBB3_20
# %bb.11:                               # %if.then29
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_13
# %bb.12:                               # %land.lhs.true34
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB3_996
.LBB3_13:                               # %if.end39
	lu12i.w	$a0, 2
	ori	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_996
# %bb.14:                               # %if.end43
	move	$s5, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_953
# %bb.15:                               # %if.end47
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_976
# %bb.16:                               # %if.end51
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s5, 0
	beqz	$a0, .LBB3_978
# %bb.17:                               # %if.end61
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	beqz	$a0, .LBB3_984
# %bb.18:                               # %if.end73
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	beqz	$a0, .LBB3_992
# %bb.19:                               # %if.end87
	stptr.w	$zero, $s5, 8196
	stptr.w	$zero, $s0, 8196
	stptr.w	$zero, $fp, 8196
	b	.LBB3_21
.LBB3_20:
	move	$fp, $zero
	move	$s0, $zero
	move	$s5, $zero
.LBB3_21:                               # %if.end91
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_24
# %bb.22:                               # %if.then93
	lu12i.w	$a3, 2
	addi.d	$a0, $sp, 1336
	move	$a1, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_23:                               # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	b	.LBB3_1006
.LBB3_24:                               # %if.else95
	lu12i.w	$a2, 2
	move	$a0, $s8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %if.end97
	move	$s7, $a0
	move	$fp, $s2
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.d	$s5, $sp, 264                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	beqz	$s7, .LBB3_940
# %bb.26:                               # %while.body.lr.ph
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	addi.d	$a1, $s5, 4
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	ori	$s0, $zero, 10
	lu12i.w	$a0, 468535
	ori	$a0, $a0, 815
	lu32i.d	$a0, 290921
	lu52i.d	$a0, $a0, 7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1654
	ori	$a0, $a0, 3433
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
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
	ori	$s4, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_27:                               # %if.else1725
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s3
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_941
.LBB3_28:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_47 Depth 2
                                        #       Child Loop BB3_717 Depth 3
                                        #       Child Loop BB3_820 Depth 3
                                        #       Child Loop BB3_788 Depth 3
                                        #       Child Loop BB3_850 Depth 3
                                        #       Child Loop BB3_687 Depth 3
                                        #       Child Loop BB3_794 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_802 Depth 3
                                        #       Child Loop BB3_810 Depth 3
                                        #       Child Loop BB3_813 Depth 3
                                        #       Child Loop BB3_421 Depth 3
                                        #       Child Loop BB3_682 Depth 3
                                        #       Child Loop BB3_838 Depth 3
                                        #       Child Loop BB3_893 Depth 3
                                        #         Child Loop BB3_910 Depth 4
                                        #       Child Loop BB3_629 Depth 3
                                        #       Child Loop BB3_136 Depth 3
                                        #       Child Loop BB3_596 Depth 3
	ld.bu	$s5, $s7, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	masknez	$a0, $s7, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	beqz	$s5, .LBB3_33
# %bb.29:                               # %land.rhs105.lr.ph
                                        #   in Loop: Header=BB3_28 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$s8, $s7
	.p2align	4, , 16
.LBB3_30:                               # %land.rhs105
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $s5, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB3_43
# %bb.31:                               # %while.body113
                                        #   in Loop: Header=BB3_30 Depth=2
	ld.bu	$s5, $s8, 1
	addi.d	$a1, $s8, 1
	move	$s8, $a1
	bnez	$s5, .LBB3_30
# %bb.32:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $a1
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $s7
.LBB3_34:                               # %while.end1711
                                        #   in Loop: Header=BB3_28 Depth=1
	beqz	$fp, .LBB3_41
# %bb.35:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_41
# %bb.36:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_41
# %bb.37:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_41
# %bb.38:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bgeu	$a0, $s8, .LBB3_41
# %bb.39:                               # %if.then.i2471
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$s0, $a1, 3
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_41
# %bb.40:                               # %if.then4.i2478
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a4, $fp, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a3, $s8, $a1
	ldx.d	$a0, $a4, $s0
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_41:                               # %if.end1721
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_27
# %bb.42:                               # %if.then1723
                                        #   in Loop: Header=BB3_28 Depth=1
	addi.d	$a0, $sp, 1336
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s3
	lu12i.w	$a3, 2
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$s0, $zero, 10
	bnez	$a0, .LBB3_28
	b	.LBB3_941
	.p2align	4, , 16
.LBB3_43:                               # %while.body116.preheader
                                        #   in Loop: Header=BB3_28 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s7, $s6
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_44:                               # %if.then122
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	ori	$a0, $zero, 32
	st.b	$a0, $s8, 0
.LBB3_45:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	move	$s7, $s4
.LBB3_46:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$s5, $s8, 0
	move	$s4, $s7
	move	$s7, $s6
	beqz	$s5, .LBB3_34
.LBB3_47:                               # %while.body116
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_717 Depth 3
                                        #       Child Loop BB3_820 Depth 3
                                        #       Child Loop BB3_788 Depth 3
                                        #       Child Loop BB3_850 Depth 3
                                        #       Child Loop BB3_687 Depth 3
                                        #       Child Loop BB3_794 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_802 Depth 3
                                        #       Child Loop BB3_810 Depth 3
                                        #       Child Loop BB3_813 Depth 3
                                        #       Child Loop BB3_421 Depth 3
                                        #       Child Loop BB3_682 Depth 3
                                        #       Child Loop BB3_838 Depth 3
                                        #       Child Loop BB3_893 Depth 3
                                        #         Child Loop BB3_910 Depth 4
                                        #       Child Loop BB3_629 Depth 3
                                        #       Child Loop BB3_136 Depth 3
                                        #       Child Loop BB3_596 Depth 3
	bnez	$s2, .LBB3_49
# %bb.48:                               # %while.body116
                                        #   in Loop: Header=BB3_47 Depth=2
	beq	$s5, $s0, .LBB3_44
.LBB3_49:                               # %if.end123
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s2, .LBB3_52
# %bb.50:                               # %if.end123
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 13
	bne	$s5, $a0, .LBB3_52
# %bb.51:                               # %if.then129
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$s8, $s8, 1
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_52:                               # %if.end131
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 23
	bltu	$a0, $s4, .LBB3_45
# %bb.53:                               # %if.end131
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $s4, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_54:                               # %sw.bb162
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 60
	bne	$s5, $a0, .LBB3_283
# %bb.55:                               # %if.then166
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_59
# %bb.56:                               # %if.then.i802
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_58
# %bb.57:                               # %html_output_flush.exit.i823
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_58:                               # %if.end.i805
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_59:                               # %if.end3.i810
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_63
# %bb.60:                               # %if.then5.i812
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_62
# %bb.61:                               # %html_output_flush.exit15.i820
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_62:                               # %if.end9.i815
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_63:                               # %html_output_c.exit826
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_68
# %bb.64:                               # %html_output_c.exit826
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_68
# %bb.65:                               # %if.then.i828
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_67
# %bb.66:                               # %html_output_flush.exit.i837
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_67:                               # %if.end.i831
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_68:                               # %if.end169
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_649
# %bb.69:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_649
# %bb.70:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_649
# %bb.71:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_649
# %bb.72:                               # %if.then178
                                        #   in Loop: Header=BB3_47 Depth=2
	bgeu	$a0, $s8, .LBB3_648
# %bb.73:                               # %if.then.i842
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$s0, $a1, 3
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_75
# %bb.74:                               # %if.then4.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $fp, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	sub.d	$a3, $s8, $a1
	ldx.d	$a0, $a4, $s0
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
.LBB3_75:                               # %if.end179
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	b	.LBB3_649
.LBB3_76:                               # %sw.bb1670
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $fp
	move	$fp, $s1
	move	$s1, $s2
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	slli.w	$s3, $s3, 4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a1, $a0, 51
	bltz	$a1, .LBB3_234
# %bb.77:                               #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s7
	b	.LBB3_373
.LBB3_78:                               # %sw.bb1540
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s2, $zero, 1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_303
# %bb.79:                               # %if.then1542
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $fp
	move	$fp, $s1
	ori	$a0, $a5, 8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_1007
# %bb.80:                               # %if.end1546
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 536
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	move	$a0, $s4
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_1008
# %bb.81:                               # %if.then.i2247
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $s1, 4
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	ld.w	$a2, $a1, 16
	st.w	$a2, $s1, 20
	vld	$vr0, $a1, 0
	vst	$vr0, $s1, 4
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	st.d	$a2, $s1, 24
	st.d	$a1, $s1, 30
	ori	$a1, $zero, 34
	stptr.w	$a1, $s1, 8196
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_358
# %bb.82:                               # %if.then.i2247
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $sp, 1544
	ori	$a2, $zero, 59
	bne	$a1, $a2, .LBB3_358
# %bb.83:                               # %if.then.i2281.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $s1, 45
	st.d	$a0, $s1, 38
	ori	$a1, $zero, 45
	stptr.w	$a1, $s1, 8196
	ori	$s0, $zero, 10
	b	.LBB3_361
.LBB3_84:                               # %sw.bb1290
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_304
# %bb.85:                               # %if.else1296
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s2
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	move	$fp, $s1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$s5, $a0, $a1
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s3, .LBB3_89
# %bb.86:                               # %if.then.i1926
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_88
# %bb.87:                               # %html_output_flush.exit.i1947
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_88:                               # %if.end.i1929
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s5, $a1, $a0
.LBB3_89:                               # %if.end3.i1934
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$s1, $fp
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	move	$s2, $s0
	beqz	$s6, .LBB3_93
# %bb.90:                               # %if.then5.i1936
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_92
# %bb.91:                               # %html_output_flush.exit15.i1944
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_92:                               # %if.end9.i1939
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s5, $a1, $a0
.LBB3_93:                               # %html_output_c.exit1950
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s3
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	beqz	$a4, .LBB3_97
# %bb.94:                               # %if.then.i1952
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s0, $a1, $a2
	bne	$a0, $a5, .LBB3_96
# %bb.95:                               # %html_output_flush.exit.i1961
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_96:                               # %if.end.i1955
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_97:                               # %html_output_c.exit1964
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 14
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_98:                               # %sw.bb624
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB3_236
# %bb.99:                               # %if.then629
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	xor	$a1, $a0, $a2
	sltu	$a1, $zero, $a1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	maskeqz	$a3, $a3, $a1
	bne	$a0, $a2, .LBB3_104
# %bb.100:                              # %if.then629
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_104
# %bb.101:                              # %if.then.i1412
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_103
# %bb.102:                              # %html_output_flush.exit.i1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_103:                              # %if.end.i1415
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_104:                              # %if.end635
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	beqz	$fp, .LBB3_110
# %bb.105:                              # %land.lhs.true637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_110
# %bb.106:                              # %land.lhs.true637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_110
# %bb.107:                              # %if.then642
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_109
# %bb.108:                              # %if.then647
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $fp, 24
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	ori	$s0, $zero, 10
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
.LBB3_109:                              # %if.end649
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
.LBB3_110:                              # %if.end649
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	bnez	$a0, .LBB3_937
# %bb.111:                              # %if.then654
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_677
# %bb.112:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB3_937
.LBB3_113:                              # %sw.bb357
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s5, $a0, .LBB3_248
# %bb.114:                              # %if.then361
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_118
# %bb.115:                              # %if.then.i1098
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_117
# %bb.116:                              # %html_output_flush.exit.i1119
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_117:                              # %if.end.i1101
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_118:                              # %if.end3.i1106
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_122
# %bb.119:                              # %if.then5.i1108
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_121
# %bb.120:                              # %html_output_flush.exit15.i1116
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_121:                              # %if.end9.i1111
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_122:                              # %html_output_c.exit1122
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	b	.LBB3_161
.LBB3_123:                              # %sw.bb1650
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_305
# %bb.124:                              # %if.then1652
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $s1, 8196
	blez	$a2, .LBB3_126
# %bb.125:                              # %if.then.i2411
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s1, 8196
.LBB3_126:                              # %html_output_flush.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$s2, $zero
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_306
.LBB3_127:                              # %sw.bb138
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_251
# %bb.128:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	b	.LBB3_938
.LBB3_129:                              # %sw.bb975
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 35
	bne	$s5, $a0, .LBB3_252
# %bb.130:                              # %if.then979
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 12
	b	.LBB3_46
.LBB3_131:                              # %sw.bb997
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s5, $a0, .LBB3_264
# %bb.132:                              # %if.then1001
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 311
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	stx.b	$zero, $s0, $a0
	addi.d	$a0, $sp, 1336
	addi.d	$a1, $sp, 311
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_423
# %bb.133:                              # %for.cond1008.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s3, $fp
	move	$fp, $s1
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	ld.bu	$a0, $a0, 0
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_357
# %bb.134:                              # %for.body1012.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$s0, $zero
	b	.LBB3_136
	.p2align	4, , 16
.LBB3_135:                              # %if.end1030
                                        #   in Loop: Header=BB3_136 Depth=3
	addi.d	$s0, $s0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s0, $a0, .LBB3_357
.LBB3_136:                              # %for.body1012
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a0, $s4, $s0
	ld.d	$a1, $s5, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s2, $a1, $a0
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	beqz	$s3, .LBB3_140
# %bb.137:                              # %if.then.i1642
                                        #   in Loop: Header=BB3_136 Depth=3
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a2, .LBB3_139
# %bb.138:                              # %html_output_flush.exit.i1663
                                        #   in Loop: Header=BB3_136 Depth=3
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $zero
.LBB3_139:                              # %if.end.i1645
                                        #   in Loop: Header=BB3_136 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_140:                              # %if.end3.i1650
                                        #   in Loop: Header=BB3_136 Depth=3
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_144
# %bb.141:                              # %if.then5.i1652
                                        #   in Loop: Header=BB3_136 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a2, .LBB3_143
# %bb.142:                              # %html_output_flush.exit15.i1660
                                        #   in Loop: Header=BB3_136 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_143:                              # %if.end9.i1655
                                        #   in Loop: Header=BB3_136 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_144:                              # %html_output_c.exit1666
                                        #   in Loop: Header=BB3_136 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_135
# %bb.145:                              # %html_output_c.exit1666
                                        #   in Loop: Header=BB3_136 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_135
# %bb.146:                              # %if.then1026
                                        #   in Loop: Header=BB3_136 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1544
	stx.b	$s2, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_135
.LBB3_147:                              # %sw.bb1425
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s5, $a0, .LBB3_332
# %bb.148:                              # %sw.bb1425
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	bne	$s5, $a0, .LBB3_340
# %bb.149:                              # %if.then1429
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_489
# %bb.150:                              # %if.then1434
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	lu12i.w	$a5, 2
	b	.LBB3_647
.LBB3_151:                              # %sw.bb294
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s5, $a0, .LBB3_270
# %bb.152:                              # %if.then298
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_156
# %bb.153:                              # %if.then.i994
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_155
# %bb.154:                              # %html_output_flush.exit.i1015
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_155:                              # %if.end.i997
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_156:                              # %if.end3.i1002
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_160
# %bb.157:                              # %if.then5.i1004
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_159
# %bb.158:                              # %html_output_flush.exit15.i1012
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_159:                              # %if.end9.i1007
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_160:                              # %html_output_c.exit1018
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
.LBB3_161:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_162:                              # %sw.bb600
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s3
	move	$s4, $s2
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_307
# %bb.163:                              # %if.then.i1384
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s5, 2
	ldptr.w	$a1, $s3, 8196
	ldx.w	$s0, $a2, $a3
	lu12i.w	$a5, 2
	bne	$a1, $a5, .LBB3_165
# %bb.164:                              # %html_output_flush.exit.i1393
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s3, 0
	move	$s1, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_165:                              # %if.end.i1387
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s3, 8196
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s0, $a2, $a1
	ld.bu	$s5, $s8, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	b	.LBB3_308
.LBB3_166:                              # %sw.bb150
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_301
# %bb.167:                              # %if.else160
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s0, .LBB3_171
# %bb.168:                              # %if.then.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_170
# %bb.169:                              # %html_output_flush.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_170:                              # %if.end.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_171:                              # %if.end3.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_447
# %bb.172:                              # %if.then5.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_174
# %bb.173:                              # %html_output_flush.exit15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_174:                              # %if.end9.i
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_175:                              # %sw.bb216
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 0
	bnez	$s0, .LBB3_286
# %bb.176:                              # %sw.bb216
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 33
	bne	$s5, $a0, .LBB3_286
# %bb.177:                              # %if.then223
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_181
# %bb.178:                              # %if.then.i886
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_180
# %bb.179:                              # %html_output_flush.exit.i895
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_180:                              # %if.end.i889
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_181:                              # %html_output_c.exit898
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$a4, .LBB3_186
# %bb.182:                              # %html_output_c.exit898
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_186
# %bb.183:                              # %if.then.i900
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_185
# %bb.184:                              # %html_output_flush.exit.i909
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_185:                              # %if.end.i903
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_186:                              # %if.end226
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_189
# %bb.187:                              # %land.lhs.true228
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	blez	$a0, .LBB3_189
# %bb.188:                              # %if.then232
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_189:                              # %if.end235
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 2
	b	.LBB3_46
.LBB3_190:                              # %sw.bb133
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	move	$s6, $s7
	b	.LBB3_314
.LBB3_191:                              # %sw.bb372
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 6
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_335
# %bb.192:                              # %sw.bb372
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 5
	bne	$a1, $a0, .LBB3_336
# %bb.193:                              # %land.lhs.true375
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 1544
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_336
# %bb.194:                              # %if.then380
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_197
# %bb.195:                              # %land.lhs.true382
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	blez	$a0, .LBB3_197
# %bb.196:                              # %if.then386
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_197:                              # %if.end389
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_200
# %bb.198:                              # %land.lhs.true391
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	blez	$a0, .LBB3_200
# %bb.199:                              # %if.then395
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_200:                              # %if.end398
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s4, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	beq	$a0, $a1, .LBB3_544
# %bb.201:                              # %if.then401
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_205
# %bb.202:                              # %if.then.i1124
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_204
# %bb.203:                              # %html_output_flush.exit.i1145
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_204:                              # %if.end.i1127
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_205:                              # %if.end3.i1132
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_676
.LBB3_206:                              # %if.then5.i1134
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_208
# %bb.207:                              # %html_output_flush.exit15.i1142
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_208:                              # %if.end9.i1137
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
	b	.LBB3_661
.LBB3_209:                              # %sw.bb1577
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s5, -34
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB3_412
# %bb.210:                              # %sw.bb1577
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 3
	ori	$s6, $zero, 20
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_211:                              # %if.then1607
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_213
# %bb.212:                              # %if.then1607
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s0, $zero, 21
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_411
.LBB3_213:                              # %if.else1614
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	ori	$s0, $zero, 20
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_698
# %bb.214:                              # %if.then.i2367
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_216
# %bb.215:                              # %html_output_flush.exit.i2376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_216:                              # %if.end.i2370
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s1, 8196
	ori	$a0, $zero, 34
	st.b	$a0, $a1, 4
	b	.LBB3_698
.LBB3_217:                              # %sw.bb1150
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $zero, 59
	beqz	$s3, .LBB3_315
# %bb.218:                              # %if.else1163
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$s5, $a0, .LBB3_327
	b	.LBB3_319
.LBB3_219:                              # %sw.bb1370
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_354
# %bb.220:                              # %if.end1374
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	ext.w.b	$a0, $s5
	bltz	$a0, .LBB3_370
# %bb.221:                              # %if.then1378
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(table_order)
	addi.d	$a1, $a1, %pc_lo12(table_order)
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 9
	pcalau12i	$a1, %pc_hi20(decrypt_tables)
	addi.d	$a1, $a1, %pc_lo12(decrypt_tables)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s5, 2
	ldx.w	$s3, $a0, $a1
	ori	$a0, $zero, 255
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	bne	$s3, $a0, .LBB3_394
# %bb.222:                              # %if.then1387
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$s6, $s8, 1
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s1, $s1, -1
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 42
	move	$s3, $s4
	bltu	$a1, $a0, .LBB3_785
# %bb.223:                              # %if.then1387
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_224:                              # %sw.bb1391
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s8
	b	.LBB3_785
.LBB3_225:                              # %sw.bb1313
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_302
# %bb.226:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ori	$s7, $zero, 1
	b	.LBB3_938
.LBB3_227:                              # %sw.bb
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$s6, $s7
	ori	$s7, $zero, 17
	b	.LBB3_46
.LBB3_228:                              # %sw.bb1656
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_344
# %bb.229:                              # %sw.bb1656
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_350
# %bb.230:                              # %if.then1659
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s3
	move	$fp, $s1
	move	$s1, $s2
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	beqz	$s4, .LBB3_545
# %bb.231:                              # %if.then.i2415
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_233
# %bb.232:                              # %html_output_flush.exit.i2424
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_233:                              # %if.end.i2418
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	st.b	$s3, $a1, 4
	b	.LBB3_546
.LBB3_234:                              # %if.then1680
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB3_371
# %bb.235:                              # %if.else1692
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a0, $a0, $a1
	add.d	$a0, $s3, $a0
	addi.w	$a0, $a0, -87
	b	.LBB3_372
.LBB3_236:                              # %if.else659
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_419
# %bb.237:                              # %if.else683
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_239
# %bb.238:                              # %land.lhs.true685
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_689
.LBB3_239:                              # %if.else752
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 1
	beqz	$fp, .LBB3_936
# %bb.240:                              # %if.then754
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	sltu	$a1, $zero, $a4
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a4, $a1
	ori	$a3, $zero, 3600
	add.d	$a3, $sp, $a3
	ld.hu	$a3, $a3, 0
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $zero, 97
	beq	$a3, $a0, .LBB3_685
# %bb.241:                              # %if.else819
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_714
.LBB3_242:                              # %if.else836
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $s2
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_786
# %bb.243:                              # %if.else898
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_818
# %bb.244:                              # %if.else932
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s7
	bnez	$a0, .LBB3_936
# %bb.245:                              # %if.then937
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 1512
	pcaddu18i	$ra, %call36(html_tag_arg_value)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_936
# %bb.246:                              # %land.lhs.true940
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_936
# %bb.247:                              # %if.then944
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	b	.LBB3_865
.LBB3_248:                              # %if.else363
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s7, $zero, 8
	blez	$a0, .LBB3_250
# %bb.249:                              # %if.then366
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1512
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
.LBB3_250:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_251:                              # %if.then146
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 5
	b	.LBB3_938
.LBB3_252:                              # %if.else981
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s1, .LBB3_269
# %bb.253:                              # %if.else984
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 9
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	bne	$s7, $a0, .LBB3_256
# %bb.254:                              # %if.else984
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s3, .LBB3_256
# %bb.255:                              # %if.then990
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1544
	stx.b	$a1, $s3, $a2
	move	$s3, $a0
.LBB3_256:                              # %if.end994
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_260
# %bb.257:                              # %if.then.i1616
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_259
# %bb.258:                              # %html_output_flush.exit.i1637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_259:                              # %if.end.i1619
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_260:                              # %if.end3.i1624
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	beqz	$s6, .LBB3_607
# %bb.261:                              # %if.then5.i1626
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$s0, $zero, 10
	move	$s3, $s4
	bne	$a0, $a5, .LBB3_263
# %bb.262:                              # %html_output_flush.exit15.i1634
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_263:                              # %if.end9.i1629
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_264:                              # %if.else1083
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 8
	bnez	$a0, .LBB3_267
# %bb.265:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 58
	beq	$s5, $a0, .LBB3_267
# %bb.266:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 95
	bne	$s5, $a0, .LBB3_613
.LBB3_267:                              # %land.lhs.true1103
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 1023
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB3_615
.LBB3_268:                              # %if.then1106
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 311
	stx.b	$s5, $a1, $a0
	addi.d	$a0, $a1, 1
	addi.d	$s8, $s8, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_269:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 4
	b	.LBB3_46
.LBB3_270:                              # %if.else302
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_374
# %bb.271:                              # %if.else314
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	ori	$a0, $zero, 62
	bne	$s5, $a0, .LBB3_502
# %bb.272:                              # %if.then318
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_276
# %bb.273:                              # %if.then.i1020
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_275
# %bb.274:                              # %html_output_flush.exit.i1041
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_275:                              # %if.end.i1023
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_276:                              # %if.end3.i1028
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_280
# %bb.277:                              # %if.then5.i1030
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_279
# %bb.278:                              # %html_output_flush.exit15.i1038
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_279:                              # %if.end9.i1033
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_280:                              # %html_output_c.exit1044
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB3_282
# %bb.281:                              # %if.then321
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1512
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
.LBB3_282:                              # %if.end325
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 11
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_283:                              # %if.else181
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	ori	$s6, $zero, 1
	bltz	$a0, .LBB3_375
# %bb.284:                              # %if.else190
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s5, $a0, .LBB3_522
# %bb.285:                              # %if.then194
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 3
	b	.LBB3_938
.LBB3_286:                              # %if.else237
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s5, $a0, .LBB3_376
# %bb.287:                              # %if.then241
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_291
# %bb.288:                              # %if.then.i914
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_290
# %bb.289:                              # %html_output_flush.exit.i935
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_290:                              # %if.end.i917
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_291:                              # %if.end3.i922
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_295
# %bb.292:                              # %if.then5.i924
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_294
# %bb.293:                              # %html_output_flush.exit15.i932
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_294:                              # %if.end9.i927
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_295:                              # %html_output_c.exit938
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_300
# %bb.296:                              # %html_output_c.exit938
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_300
# %bb.297:                              # %if.then.i940
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_299
# %bb.298:                              # %html_output_flush.exit.i949
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_299:                              # %if.end.i943
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_300:                              # %if.end244
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s0, $a0
	ori	$s7, $zero, 5
	ori	$s6, $zero, 11
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_301:                              # %if.then158
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 6
	b	.LBB3_938
.LBB3_302:                              # %if.end1318
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a1, $s5, 2
	pcalau12i	$a0, %pc_hi20(base64_chars)
	addi.d	$a0, $a0, %pc_lo12(base64_chars)
	ld.bu	$a2, $s8, 1
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$s6, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ld.bu	$a3, $s8, 2
	slli.w	$a1, $a1, 2
	srai.d	$a4, $a2, 4
	add.d	$a1, $a4, $a1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a2, $a2, 12
	lu12i.w	$a4, 15
	and	$a2, $a2, $a4
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 6
	bstrpick.d	$a2, $a2, 31, 8
	slli.w	$a2, $a2, 8
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 22
	ld.bu	$a3, $s8, 3
	lu12i.w	$a4, 3072
	and	$a2, $a2, $a4
	add.d	$a1, $a1, $a2
	ld.bu	$a2, $s8, 4
	slli.d	$a3, $a3, 2
	ld.bu	$a4, $s8, 5
	ldx.w	$a3, $a0, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	slli.w	$a3, $a3, 16
	add.d	$a1, $a1, $a3
	slli.w	$a2, $a2, 26
	add.d	$a1, $a1, $a2
	slli.d	$a0, $a0, 20
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 8
	ori	$s7, $zero, 16
	b	.LBB3_938
.LBB3_303:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s6, $s7
	ori	$s7, $zero, 20
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_304:                              # %if.then1294
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 4
	ori	$s7, $zero, 15
	b	.LBB3_938
.LBB3_305:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$s2, $zero
.LBB3_306:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $s4
	b	.LBB3_46
.LBB3_307:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
.LBB3_308:                              # %html_output_c.exit1396
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$s3, $s6
	move	$s2, $s4
	beqz	$a1, .LBB3_313
# %bb.309:                              # %if.then609
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_313
# %bb.310:                              # %if.then.i1398
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s5, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s0, $a1, $a2
	bne	$a0, $a5, .LBB3_312
# %bb.311:                              # %html_output_flush.exit.i1407
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_312:                              # %if.end.i1401
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
	ld.bu	$s5, $s8, 0
	ori	$s0, $zero, 10
.LBB3_313:                              # %if.end617
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s5, -62
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$s6, $a2, $a1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
.LBB3_314:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	or	$s7, $a0, $a1
	addi.d	$s8, $s8, 1
	b	.LBB3_46
.LBB3_315:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	beq	$s5, $a0, .LBB3_319
# %bb.316:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 120
	beq	$s5, $a0, .LBB3_318
# %bb.317:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 88
	bne	$s5, $a0, .LBB3_327
.LBB3_318:                              # %if.then1161
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $s7
	ori	$s7, $zero, 12
	b	.LBB3_500
.LBB3_319:                              # %if.then1167
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_574
# %bb.320:                              # %if.then1167
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB3_322
# %bb.321:                              # %if.then1173
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 1
	addi.d	$a1, $sp, 1544
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	stx.b	$a2, $s3, $a1
	move	$s3, $a0
.LBB3_322:                              # %if.end1178
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_575
.LBB3_323:                              # %if.then1180
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 127
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_583
# %bb.324:                              # %if.else1194
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $zero, -128
	move	$s0, $a3
	blt	$a3, $a0, .LBB3_326
# %bb.325:                              # %if.end1196.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $a0, $a1
.LBB3_326:                              # %if.end1196
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	bnez	$s4, .LBB3_576
	b	.LBB3_579
.LBB3_327:                              # %if.else1238
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a0, $a1, 52
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$s0, $a2, 0
	bltz	$a0, .LBB3_330
# %bb.328:                              # %lor.lhs.false1246
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_566
# %bb.329:                              # %lor.lhs.false1246
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB3_566
.LBB3_330:                              # %if.then1256
                                        #   in Loop: Header=BB3_47 Depth=2
	bltz	$a0, .LBB3_497
# %bb.331:                              # %if.else1273
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -87
	b	.LBB3_498
.LBB3_332:                              # %if.then1450
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_492
# %bb.333:                              # %if.then1450
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_492
# %bb.334:                              # %if.then1455
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_647
.LBB3_335:                              # %land.lhs.true406
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 1544
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_537
.LBB3_336:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s5, $a0, .LBB3_461
# %bb.337:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	beq	$s5, $a0, .LBB3_448
# %bb.338:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s5, $a0, .LBB3_476
# %bb.339:                              # %if.then438
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s4, $zero, 3
	ori	$s7, $zero, 9
	b	.LBB3_661
.LBB3_340:                              # %if.else1467
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a5, 2
	and	$a1, $a0, $a5
	ori	$a0, $zero, 62
	beq	$s5, $a0, .LBB3_495
# %bb.341:                              # %if.else1467
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$a1, .LBB3_495
# %bb.342:                              # %if.else1506
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ori	$a0, $zero, 44
	bne	$s5, $a0, .LBB3_643
# %bb.343:                              # %if.then1510
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $zero
	addi.d	$a0, $sp, 1544
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 19
	b	.LBB3_647
.LBB3_344:                              # %if.then1664
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s3
	move	$s3, $fp
	move	$fp, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_547
# %bb.345:                              # %if.then.i2429
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_347
# %bb.346:                              # %html_output_flush.exit.i2438
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_347:                              # %if.then.i2443
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s4, $s1, 4
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ori	$a1, $zero, 37
	stx.b	$a1, $s4, $a0
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_349
# %bb.348:                              # %html_output_flush.exit.i2452
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	move	$a1, $s4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_349:                              # %if.end.i2446
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $s1, 8196
	stx.b	$a1, $s4, $a0
	b	.LBB3_548
.LBB3_350:                              # %if.else1667
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_549
# %bb.351:                              # %if.then.i2457
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_353
# %bb.352:                              # %html_output_flush.exit.i2466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_353:                              # %if.end.i2460
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	ori	$a0, $zero, 37
	st.b	$a0, $a1, 4
	b	.LBB3_550
.LBB3_354:                              # %if.then1373
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 13
	ori	$s6, $zero, 1
	beqz	$a4, .LBB3_551
# %bb.355:                              # %if.then.i1966
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $a4, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4086
	blt	$a2, $a0, .LBB3_564
# %bb.356:                              # %if.end.thread.i1978
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a0, $a4, 0
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a4, 8196
	b	.LBB3_565
.LBB3_357:                              # %for.end1033
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $a0
	b	.LBB3_446
.LBB3_358:                              # %if.then.i2281
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a1, 1
	ori	$a2, $a1, 4061
	ori	$a1, $zero, 34
	ori	$s0, $zero, 10
	bge	$a2, $s5, .LBB3_361
# %bb.359:                              # %if.end.thread.i2302
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 34
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a0, $s5, 31, 13
	stptr.w	$zero, $s1, 8196
	beqz	$a0, .LBB3_361
# %bb.360:                              # %html_output_flush.exit18.i2297
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $sp, 1544
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $s1, $a0
	b	.LBB3_362
.LBB3_361:                              # %if.else.i2289
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a0, $s4, $a1
	addi.d	$a1, $sp, 1544
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $s1, $a0
	add.w	$a0, $a0, $s5
	stptr.w	$a0, $s1, 8196
.LBB3_362:                              # %if.then.i2308
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$a0, $a1, .LBB3_364
# %bb.363:                              # %html_output_flush.exit.i2317
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_364:                              # %html_output_c.exit2320
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	stx.b	$s0, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 1544
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ldptr.w	$a2, $s1, 8196
	beqz	$a0, .LBB3_393
# %bb.365:                              # %if.then.i2322
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4062
	blt	$a2, $a0, .LBB3_367
# %bb.366:                              # %if.end.thread.i2334
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s1, 8196
.LBB3_367:                              # %html_output_str.exit2337
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	add.d	$a0, $s4, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	vld	$vr0, $a1, 0
	ld.h	$a3, $a1, 32
	vstx	$vr0, $s4, $a2
	st.h	$a3, $a0, 32
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 16
	ori	$a0, $a5, 4
	ldx.w	$a0, $s1, $a0
	addi.w	$a2, $a0, 34
	stptr.w	$a2, $s1, 8196
	bne	$a2, $a5, .LBB3_369
.LBB3_368:                              # %html_output_flush.exit.i2348
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	move	$a1, $s4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a2, $zero
.LBB3_369:                              # %html_output_c.exit2351
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a2, 1
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	stptr.w	$a0, $s1, 8196
	stx.b	$s0, $s4, $a2
	move	$s6, $s7
	ori	$s7, $zero, 20
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$s1, $fp
	move	$fp, $s3
	b	.LBB3_501
.LBB3_370:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s8
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	b	.LBB3_785
.LBB3_371:                              # %if.then1688
                                        #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s5, 255
	add.d	$a0, $s3, $a0
	addi.w	$a0, $a0, -48
.LBB3_372:                              # %if.end1704
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 23
.LBB3_373:                              # %if.end1704
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	move	$s6, $s7
	or	$s7, $a1, $a0
	addi.d	$s8, $s8, 1
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	move	$s2, $s1
	move	$s1, $fp
	move	$fp, $s4
	b	.LBB3_501
.LBB3_374:                              # %if.then310
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 10
	b	.LBB3_938
.LBB3_375:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 6
	b	.LBB3_938
.LBB3_376:                              # %if.else248
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_536
# %bb.377:                              # %if.then256
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $fp
	move	$fp, $s1
	move	$s1, $s2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$s2, $a0, $a1
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s5, .LBB3_381
# %bb.378:                              # %if.then.i954
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_380
# %bb.379:                              # %html_output_flush.exit.i975
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_380:                              # %if.end.i957
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_381:                              # %if.end3.i962
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_385
# %bb.382:                              # %if.then5.i964
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_384
# %bb.383:                              # %html_output_flush.exit15.i972
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_384:                              # %if.end9.i967
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_385:                              # %html_output_c.exit978
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	move	$s2, $s1
	move	$s1, $fp
	move	$fp, $s3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_390
# %bb.386:                              # %if.then265
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_390
# %bb.387:                              # %if.then.i980
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $a5, .LBB3_389
# %bb.388:                              # %html_output_flush.exit.i989
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_389:                              # %if.end.i983
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB3_390:                              # %if.end273
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s0, .LBB3_392
# %bb.391:                              # %if.then276
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 3600
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s0, $a1
.LBB3_392:                              # %if.end286
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s3, $s5
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 7
	b	.LBB3_46
.LBB3_393:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	beq	$a2, $a5, .LBB3_368
	b	.LBB3_369
.LBB3_394:                              # %if.else1398
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_398
# %bb.395:                              # %if.then.i2183
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_397
# %bb.396:                              # %html_output_flush.exit.i2204
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_397:                              # %if.end.i2186
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_398:                              # %if.end3.i2191
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_402
# %bb.399:                              # %if.then5.i2193
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_401
# %bb.400:                              # %html_output_flush.exit15.i2201
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_401:                              # %if.end9.i2196
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_402:                              # %if.else1415
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 128
	move	$s0, $s3
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_404
# %bb.403:                              # %if.end1417.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	ldx.w	$s0, $a0, $a1
.LBB3_404:                              # %if.end1417
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	beqz	$a4, .LBB3_408
# %bb.405:                              # %if.then.i2216
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_407
# %bb.406:                              # %html_output_flush.exit.i2225
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_407:                              # %if.end.i2219
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_408:                              # %if.end1421
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s8
	ori	$s0, $zero, 10
	move	$s3, $s4
	b	.LBB3_785
.LBB3_409:                              # %if.then1587
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	ori	$s0, $zero, 23
	ori	$s6, $zero, 22
	b	.LBB3_700
.LBB3_410:                              # %if.then1593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ori	$s0, $zero, 21
	bnez	$a0, .LBB3_587
.LBB3_411:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	b	.LBB3_700
.LBB3_412:                              # %if.else1617
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s5, $a1, .LBB3_591
# %bb.413:                              # %if.else1617
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_591
# %bb.414:                              # %if.else1637
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	ori	$s0, $zero, 20
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_418
# %bb.415:                              # %if.then.i2395
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_417
# %bb.416:                              # %html_output_flush.exit.i2404
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_417:                              # %if.end.i2398
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s1, 8196
	st.b	$s5, $a1, 4
.LBB3_418:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_699
.LBB3_419:                              # %if.then664
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.w	$s0, $sp, 1512
	ori	$s6, $zero, 1
	blez	$s0, .LBB3_650
# %bb.420:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 1520
	move	$s1, $zero
	slli.d	$s2, $s0, 3
	.p2align	4, , 16
.LBB3_421:                              # %for.body.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s3, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_678
# %bb.422:                              # %for.cond.i
                                        #   in Loop: Header=BB3_421 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_421
	b	.LBB3_684
.LBB3_423:                              # %if.else1034
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s5, .LBB3_427
# %bb.424:                              # %if.then.i1668
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_426
# %bb.425:                              # %html_output_flush.exit.i1689
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_426:                              # %if.end.i1671
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_427:                              # %if.end3.i1676
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_431
# %bb.428:                              # %if.then5.i1678
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_430
# %bb.429:                              # %html_output_flush.exit15.i1686
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_430:                              # %if.end9.i1681
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_431:                              # %html_output_c.exit1692
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $fp
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_593
# %bb.432:                              # %html_output_c.exit1692
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_593
# %bb.433:                              # %if.then1040
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s1
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1544
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$s1, $s2
	bnez	$s0, .LBB3_594
.LBB3_434:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
.LBB3_435:                              # %for.end1070
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_701
# %bb.436:                              # %for.end1070
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ori	$s0, $zero, 10
	move	$s2, $s1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_438
# %bb.437:                              # %if.then1076
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 59
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_438:                              # %if.end1080
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $a6
	beqz	$s5, .LBB3_442
.LBB3_439:                              # %if.then.i1720
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_441
# %bb.440:                              # %html_output_flush.exit.i1741
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_441:                              # %if.end.i1723
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_442:                              # %if.end3.i1728
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_446
# %bb.443:                              # %if.then5.i1730
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_445
# %bb.444:                              # %html_output_flush.exit15.i1738
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_445:                              # %if.end9.i1733
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_446:                              # %if.end1081
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s6, $zero
	addi.d	$s8, $s8, 1
	b	.LBB3_46
.LBB3_447:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_448:                              # %if.then444
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s3
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_651
# %bb.449:                              # %if.else456
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_552
# %bb.450:                              # %if.then461
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1544
	beqz	$s0, .LBB3_454
# %bb.451:                              # %if.then.i1202
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_453
# %bb.452:                              # %html_output_flush.exit.i1223
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_453:                              # %if.end.i1205
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_454:                              # %if.end3.i1210
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_458
# %bb.455:                              # %if.then5.i1212
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_457
# %bb.456:                              # %html_output_flush.exit15.i1220
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_457:                              # %if.end9.i1215
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_458:                              # %html_output_c.exit1226
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s3, .LBB3_460
# %bb.459:                              # %if.then464
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $s3, $s4
	move	$s3, $a0
.LBB3_460:                              # %if.end468
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	stx.b	$zero, $s3, $s4
	addi.d	$a0, $sp, 1512
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1544
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s4, $zero, 5
	ori	$s7, $zero, 8
	b	.LBB3_475
.LBB3_461:                              # %if.then489
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s3
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_662
# %bb.462:                              # %if.else501
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_552
# %bb.463:                              # %if.else501
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_552
# %bb.464:                              # %if.then506
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1544
	beqz	$s0, .LBB3_468
# %bb.465:                              # %if.then.i1280
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_467
# %bb.466:                              # %html_output_flush.exit.i1301
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_467:                              # %if.end.i1283
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_468:                              # %if.end3.i1288
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_472
# %bb.469:                              # %if.then5.i1290
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_471
# %bb.470:                              # %html_output_flush.exit15.i1298
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_471:                              # %if.end9.i1293
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_472:                              # %html_output_c.exit1304
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s3, .LBB3_474
# %bb.473:                              # %if.then509
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $s3, $s4
	move	$s3, $a0
.LBB3_474:                              # %if.end513
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	stx.b	$zero, $s3, $s4
	addi.d	$a0, $sp, 1512
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1544
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s4, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
.LBB3_475:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	move	$s3, $s5
	b	.LBB3_661
.LBB3_476:                              # %if.else530
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s5, $a1, .LBB3_608
# %bb.477:                              # %if.else530
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s5, 1
	ldx.hu	$a1, $a1, $a2
	and	$a1, $a1, $a5
	bnez	$a1, .LBB3_608
# %bb.478:                              # %if.else572
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s3
	move	$s4, $s2
	move	$s2, $s1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a2, $a0, $a1
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 248                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_482
# %bb.479:                              # %if.then.i1358
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_481
# %bb.480:                              # %html_output_flush.exit.i1379
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$fp, $a2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_481:                              # %if.end.i1361
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_482:                              # %if.end3.i1366
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$s1, $s2
	move	$s2, $s4
	move	$s3, $s0
	beqz	$s6, .LBB3_486
# %bb.483:                              # %if.then5.i1368
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_485
# %bb.484:                              # %html_output_flush.exit15.i1376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$s0, $a2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_485:                              # %if.end9.i1371
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_486:                              # %html_output_c.exit1382
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s5, .LBB3_488
# %bb.487:                              # %if.then582
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.b	$a0, $s8, 0
	addi.w	$a1, $s5, 1
	addi.d	$a2, $sp, 1544
	stx.b	$a0, $s5, $a2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_488:                              # %if.end586
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_563
.LBB3_489:                              # %if.else1436
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_491
# %bb.490:                              # %if.then1439
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	move	$a3, $a0
.LBB3_491:                              # %if.end1443
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	b	.LBB3_494
.LBB3_492:                              # %if.else1457
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_494
# %bb.493:                              # %if.then1460
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_646
.LBB3_494:                              # %if.end1443
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_646
.LBB3_495:                              # %if.then1479
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ori	$a6, $zero, 2
	ori	$a0, $zero, 5
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	bne	$a2, $a6, .LBB3_610
# %bb.496:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s7, $zero, 8
	b	.LBB3_647
.LBB3_497:                              # %if.then1269
                                        #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s5, 255
	addi.d	$a0, $a0, -48
.LBB3_498:                              # %if.end1283
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	sltui	$a1, $s0, 1
	slli.d	$a2, $s3, 4
	slli.d	$a3, $s3, 3
	alsl.w	$a3, $s3, $a3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 12
.LBB3_499:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_500:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
.LBB3_501:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_502:                              # %if.else327
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s0, $a0, 0
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_511
# %bb.503:                              # %if.then330
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_507
# %bb.504:                              # %if.then.i1046
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_506
# %bb.505:                              # %html_output_flush.exit.i1067
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_506:                              # %if.end.i1049
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_507:                              # %if.end3.i1054
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_511
# %bb.508:                              # %if.then5.i1056
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_510
# %bb.509:                              # %html_output_flush.exit15.i1064
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_510:                              # %if.end9.i1059
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_511:                              # %if.end331
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $fp
	move	$fp, $s1
	move	$s1, $s2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$s4, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s2, $a1, $a0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_515
# %bb.512:                              # %if.then.i1072
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_514
# %bb.513:                              # %html_output_flush.exit.i1093
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_514:                              # %if.end.i1075
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_515:                              # %if.end3.i1080
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_519
# %bb.516:                              # %if.then5.i1082
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_518
# %bb.517:                              # %html_output_flush.exit15.i1090
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_518:                              # %if.end9.i1085
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_519:                              # %html_output_c.exit1096
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s0, .LBB3_521
# %bb.520:                              # %if.then341
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s0, $a1
.LBB3_521:                              # %if.end352
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s1
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 8
	b	.LBB3_641
.LBB3_522:                              # %if.else196
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s2
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	move	$fp, $s1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s3, .LBB3_526
# %bb.523:                              # %if.then.i846
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_525
# %bb.524:                              # %html_output_flush.exit.i867
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_525:                              # %if.end.i849
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_526:                              # %if.end3.i854
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$s1, $fp
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	move	$s2, $s6
	beqz	$s5, .LBB3_530
# %bb.527:                              # %if.then5.i856
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_529
# %bb.528:                              # %html_output_flush.exit15.i864
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_529:                              # %if.end9.i859
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_530:                              # %html_output_c.exit870
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_535
# %bb.531:                              # %if.then203
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_535
# %bb.532:                              # %if.then.i872
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s0, $a1, $a2
	bne	$a0, $a5, .LBB3_534
# %bb.533:                              # %html_output_flush.exit.i881
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_534:                              # %if.end.i875
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_535:                              # %if.end211
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 1
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_536:                              # %if.else288
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s0, $a0
	ori	$s7, $zero, 5
	ori	$s6, $zero, 8
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_537:                              # %if.then411
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_540
# %bb.538:                              # %land.lhs.true413
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	blez	$a0, .LBB3_540
# %bb.539:                              # %if.then417
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_540:                              # %if.end420
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_543
# %bb.541:                              # %land.lhs.true422
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	blez	$a0, .LBB3_543
# %bb.542:                              # %if.then426
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_543:                              # %if.end429
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s4, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	bne	$a0, $a1, .LBB3_671
.LBB3_544:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_661
.LBB3_545:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB3_546:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 20
	move	$s2, $s1
	move	$s1, $fp
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s5
	b	.LBB3_46
.LBB3_547:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB3_548:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 20
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $s5
	b	.LBB3_46
.LBB3_549:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB3_550:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 20
	b	.LBB3_46
.LBB3_551:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_552:                              # %if.else519
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_556
# %bb.553:                              # %if.then.i1306
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_555
# %bb.554:                              # %html_output_flush.exit.i1327
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_555:                              # %if.end.i1309
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_556:                              # %if.end3.i1314
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_560
# %bb.557:                              # %if.then5.i1316
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_559
# %bb.558:                              # %html_output_flush.exit15.i1324
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_559:                              # %if.end9.i1319
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_560:                              # %html_output_c.exit1330
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s3, .LBB3_562
# %bb.561:                              # %if.then522
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 1
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 34
	stx.b	$a2, $s3, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_562:                              # %if.end526
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s5
.LBB3_563:                              # %if.end586
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	b	.LBB3_660
.LBB3_564:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
.LBB3_565:                              # %if.else.i1973
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a0, $s0, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	ld.d	$a3, $a1, 0
	ld.h	$a1, $a1, 8
	stx.d	$a3, $s0, $a2
	st.h	$a1, $a0, 8
	ori	$a0, $a5, 4
	ldx.w	$a0, $a4, $a0
	addi.d	$a0, $a0, 10
	stptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_566:                              # %if.else1285
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s0, .LBB3_570
# %bb.567:                              # %if.then.i1900
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_569
# %bb.568:                              # %html_output_flush.exit.i1921
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_569:                              # %if.end.i1903
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_570:                              # %if.end3.i1908
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_713
# %bb.571:                              # %if.then5.i1910
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_573
# %bb.572:                              # %html_output_flush.exit15.i1918
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_573:                              # %if.end9.i1913
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
	b	.LBB3_500
.LBB3_574:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	bnez	$s1, .LBB3_323
.LBB3_575:                              # %if.else1212
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	andi	$a1, $a1, 255
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_579
.LBB3_576:                              # %if.then.i1874
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_578
# %bb.577:                              # %html_output_flush.exit.i1895
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_578:                              # %if.end.i1877
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_579:                              # %if.end3.i1882
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_836
# %bb.580:                              # %if.then5.i1884
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_582
# %bb.581:                              # %html_output_flush.exit15.i1892
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_582:                              # %if.end9.i1887
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
	b	.LBB3_836
.LBB3_583:                              # %if.else1199
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 296
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 305
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB3_826
# %bb.584:                              # %if.then.i1827
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $a0
	ldptr.w	$a2, $s4, 8196
	addi.w	$s4, $a0, 0
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_720
# %bb.585:                              # %if.then.i1827
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s5
	bge	$s3, $a0, .LBB3_720
# %bb.586:                              # %if.end.thread.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s0, 8196
	blt	$s3, $s4, .LBB3_723
	b	.LBB3_824
.LBB3_587:                              # %if.else1600
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	ori	$s0, $zero, 20
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_698
# %bb.588:                              # %if.then.i2353
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_590
# %bb.589:                              # %html_output_flush.exit.i2362
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_590:                              # %if.end.i2356
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s1, 8196
	ori	$a0, $zero, 39
	st.b	$a0, $a1, 4
	b	.LBB3_698
.LBB3_591:                              # %if.then1629
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s0, $zero, 21
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_694
# %bb.592:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_700
.LBB3_593:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s1
	move	$s1, $s2
	beqz	$s0, .LBB3_434
.LBB3_594:                              # %for.body1048.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s0, $sp, 311
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$s4, $a0
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_596
	.p2align	4, , 16
.LBB3_595:                              # %if.end1067
                                        #   in Loop: Header=BB3_596 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_435
.LBB3_596:                              # %for.body1048
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s2, $a1, $a0
	beqz	$s5, .LBB3_600
# %bb.597:                              # %if.then.i1694
                                        #   in Loop: Header=BB3_596 Depth=3
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_599
# %bb.598:                              # %html_output_flush.exit.i1715
                                        #   in Loop: Header=BB3_596 Depth=3
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_599:                              # %if.end.i1697
                                        #   in Loop: Header=BB3_596 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_600:                              # %if.end3.i1702
                                        #   in Loop: Header=BB3_596 Depth=3
	beqz	$s6, .LBB3_604
# %bb.601:                              # %if.then5.i1704
                                        #   in Loop: Header=BB3_596 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_603
# %bb.602:                              # %html_output_flush.exit15.i1712
                                        #   in Loop: Header=BB3_596 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_603:                              # %if.end9.i1707
                                        #   in Loop: Header=BB3_596 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_604:                              # %html_output_c.exit1718
                                        #   in Loop: Header=BB3_596 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_595
# %bb.605:                              # %html_output_c.exit1718
                                        #   in Loop: Header=BB3_596 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_595
# %bb.606:                              # %if.then1063
                                        #   in Loop: Header=BB3_596 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1544
	stx.b	$s2, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_595
.LBB3_607:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ori	$s0, $zero, 10
	move	$s3, $s4
	b	.LBB3_46
.LBB3_608:                              # %if.then541
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_702
# %bb.609:                              # %if.then544
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1544
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $sp, 1512
	ori	$a1, $zero, 2575
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1544
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s4, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB3_661
.LBB3_610:                              # %if.else1483
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 1023
	addi.d	$a6, $sp, 1544
	ld.d	$t0, $sp, 248                   # 8-byte Folded Reload
	blt	$a2, $t0, .LBB3_612
# %bb.611:                              # %if.then1486
                                        #   in Loop: Header=BB3_47 Depth=2
	sltui	$a1, $a1, 1
	addi.w	$a2, $t0, 1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a1
	ori	$a7, $zero, 62
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $a3
	stx.b	$a1, $t0, $a6
	move	$t0, $a2
.LBB3_612:                              # %if.end1503
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$t0, $sp, 248                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 18
	b	.LBB3_647
.LBB3_613:                              # %lor.lhs.false1099
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB3_615
# %bb.614:                              # %lor.lhs.false1099
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1024
	bltu	$a1, $a0, .LBB3_268
.LBB3_615:                              # %if.else1110
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_618
# %bb.616:                              # %if.else1110
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_618
# %bb.617:                              # %if.then1117
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1544
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_618:                              # %if.end1121
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_622
# %bb.619:                              # %if.then.i1746
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_621
# %bb.620:                              # %html_output_flush.exit.i1767
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_621:                              # %if.end.i1749
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_622:                              # %if.end3.i1754
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	beqz	$s6, .LBB3_626
# %bb.623:                              # %if.then5.i1756
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_625
# %bb.624:                              # %html_output_flush.exit15.i1764
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_625:                              # %if.end9.i1759
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_626:                              # %html_output_c.exit1770
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_642
# %bb.627:                              # %for.body1125.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $s2
	addi.d	$s0, $sp, 311
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$s4, $a0
	b	.LBB3_629
	.p2align	4, , 16
.LBB3_628:                              # %if.end1144
                                        #   in Loop: Header=BB3_629 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s0, $s0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_640
.LBB3_629:                              # %for.body1125
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s2, $a1, $a0
	beqz	$s5, .LBB3_633
# %bb.630:                              # %if.then.i1772
                                        #   in Loop: Header=BB3_629 Depth=3
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a5, .LBB3_632
# %bb.631:                              # %html_output_flush.exit.i1793
                                        #   in Loop: Header=BB3_629 Depth=3
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_632:                              # %if.end.i1775
                                        #   in Loop: Header=BB3_629 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_633:                              # %if.end3.i1780
                                        #   in Loop: Header=BB3_629 Depth=3
	beqz	$s6, .LBB3_637
# %bb.634:                              # %if.then5.i1782
                                        #   in Loop: Header=BB3_629 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_636
# %bb.635:                              # %html_output_flush.exit15.i1790
                                        #   in Loop: Header=BB3_629 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_636:                              # %if.end9.i1785
                                        #   in Loop: Header=BB3_629 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_637:                              # %html_output_c.exit1796
                                        #   in Loop: Header=BB3_629 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_628
# %bb.638:                              # %html_output_c.exit1796
                                        #   in Loop: Header=BB3_629 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_628
# %bb.639:                              # %if.then1140
                                        #   in Loop: Header=BB3_629 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1544
	stx.b	$s2, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_628
.LBB3_640:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s1
.LBB3_641:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $a0
	b	.LBB3_46
.LBB3_642:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s6, $zero
	b	.LBB3_306
.LBB3_643:                              # %if.else1514
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	ori	$a0, $zero, 1023
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $s3, .LBB3_645
# %bb.644:                              # %if.then1517
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.b	$a0, $a0, $a1
	addi.w	$a1, $s3, 1
	addi.d	$a2, $sp, 1544
	stx.b	$a0, $s3, $a2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_645:                              # %if.end1528
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s4
.LBB3_646:                              # %if.end1528
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 18
.LBB3_647:                              # %if.end1533
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	move	$s6, $s7
	move	$s7, $a0
	b	.LBB3_46
.LBB3_648:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
.LBB3_649:                              # %if.end179
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 7
	b	.LBB3_46
.LBB3_650:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	b	.LBB3_877
.LBB3_651:                              # %if.then447
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	move	$s3, $s5
	beqz	$s0, .LBB3_655
# %bb.652:                              # %if.then.i1176
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_654
# %bb.653:                              # %html_output_flush.exit.i1197
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_654:                              # %if.end.i1179
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_655:                              # %if.end3.i1184
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_659
# %bb.656:                              # %if.then5.i1186
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_658
# %bb.657:                              # %html_output_flush.exit15.i1194
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_658:                              # %if.end9.i1189
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_659:                              # %html_output_c.exit1200
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1544
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_660:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s4, $zero, 9
.LBB3_661:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB3_45
.LBB3_662:                              # %if.then492
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	move	$s3, $s5
	beqz	$s0, .LBB3_666
# %bb.663:                              # %if.then.i1254
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_665
# %bb.664:                              # %html_output_flush.exit.i1275
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_665:                              # %if.end.i1257
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_666:                              # %if.end3.i1262
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_670
# %bb.667:                              # %if.then5.i1264
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_669
# %bb.668:                              # %html_output_flush.exit15.i1272
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_669:                              # %if.end9.i1267
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_670:                              # %html_output_c.exit1278
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1544
	addi.d	$s8, $s8, 1
	ori	$s4, $zero, 9
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_661
.LBB3_671:                              # %if.then432
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_675
# %bb.672:                              # %if.then.i1150
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_674
# %bb.673:                              # %html_output_flush.exit.i1171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_674:                              # %if.end.i1153
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_675:                              # %if.end3.i1158
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s6, .LBB3_206
.LBB3_676:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_661
.LBB3_677:                              # %if.then656
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB3_937
.LBB3_678:                              # %html_tag_arg_value.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 1528
	ldx.d	$s4, $s2, $s1
	beqz	$s4, .LBB3_684
# %bb.679:                              # %land.lhs.true667
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_837
# %bb.680:                              # %land.lhs.true674
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB3_877
# %bb.681:                              # %for.body.i1450.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
.LBB3_682:                              # %for.body.i1450
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_873
# %bb.683:                              # %for.cond.i1455
                                        #   in Loop: Header=BB3_682 Depth=3
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	ori	$s6, $zero, 14
	bne	$s0, $s5, .LBB3_682
	b	.LBB3_876
.LBB3_684:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_877
.LBB3_685:                              # %if.then764
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$s0, $sp, 1512
	blez	$s0, .LBB3_921
# %bb.686:                              # %for.body.lr.ph.i1515
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s2
	ld.d	$s2, $sp, 1520
	move	$s1, $zero
	slli.d	$s3, $s0, 3
	.p2align	4, , 16
.LBB3_687:                              # %for.body.i1518
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_791
# %bb.688:                              # %for.cond.i1523
                                        #   in Loop: Header=BB3_687 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_687
	b	.LBB3_797
.LBB3_689:                              # %if.then690
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$s0, $sp, 1512
	ori	$s6, $zero, 1
	blez	$s0, .LBB3_921
# %bb.690:                              # %for.body.lr.ph.i1481
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $s2
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 1520
	move	$s1, $zero
	slli.d	$s3, $s0, 3
.LBB3_691:                              # %for.body.i1484
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_800
# %bb.692:                              # %for.cond.i1489
                                        #   in Loop: Header=BB3_691 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_691
# %bb.693:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $zero
	b	.LBB3_801
.LBB3_694:                              # %if.else1634
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s3
	move	$s3, $fp
	move	$fp, $s1
	ori	$s0, $zero, 20
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_698
# %bb.695:                              # %if.then.i2381
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $a5, .LBB3_697
# %bb.696:                              # %html_output_flush.exit.i2390
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_697:                              # %if.end.i2384
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s1, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s1, 8196
	st.b	$s5, $a1, 4
.LBB3_698:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
.LBB3_699:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $s4
.LBB3_700:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	move	$s7, $s0
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_701:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s1
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $a6
	bnez	$s5, .LBB3_439
	b	.LBB3_442
.LBB3_702:                              # %if.else549
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $s2
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	move	$fp, $s1
	ld.d	$s1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	addi.d	$s4, $sp, 1544
	beqz	$s3, .LBB3_706
# %bb.703:                              # %if.then.i1332
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s3, 8196
	bne	$a1, $a5, .LBB3_705
# %bb.704:                              # %html_output_flush.exit.i1353
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s3, 0
	move	$s0, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $s0
	ori	$s0, $zero, 10
	move	$a1, $zero
.LBB3_705:                              # %if.end.i1335
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s3, 8196
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s5, $a2, $a1
.LBB3_706:                              # %if.end3.i1340
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	st.d	$s1, $sp, 280                   # 8-byte Folded Spill
	move	$s1, $fp
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	move	$s2, $s7
	beqz	$s6, .LBB3_710
# %bb.707:                              # %if.then5.i1342
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s6, 8196
	bne	$a1, $a5, .LBB3_709
# %bb.708:                              # %html_output_flush.exit15.i1350
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s6, 0
	move	$s0, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $s0
	ori	$s0, $zero, 10
	move	$a1, $zero
.LBB3_709:                              # %if.end9.i1345
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s6, 8196
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s5, $a2, $a1
.LBB3_710:                              # %html_output_c.exit1356
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1023
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	blt	$a1, $a6, .LBB3_712
# %bb.711:                              # %if.then552
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	sltui	$a0, $a0, 1
	addi.w	$a1, $a6, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 62
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	stx.b	$a0, $a6, $s4
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_712:                              # %if.end569
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s3
	addi.d	$s8, $s8, 1
	ori	$s4, $zero, 5
	ori	$s7, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB3_661
.LBB3_713:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	b	.LBB3_499
.LBB3_714:                              # %land.lhs.true824
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_242
# %bb.715:                              # %if.then827
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1512
	blez	$a0, .LBB3_936
# %bb.716:                              # %for.body.lr.ph.i1549
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s2
	ld.d	$s0, $sp, 1520
	move	$s1, $zero
	slli.d	$s2, $a0, 3
.LBB3_717:                              # %for.body.i1552
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_852
# %bb.718:                              # %for.cond.i1557
                                        #   in Loop: Header=BB3_717 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_717
# %bb.719:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_799
.LBB3_720:                              # %if.end.i1832
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s3, $s4, .LBB3_823
# %bb.721:                              # %if.then3.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	blez	$a2, .LBB3_723
# %bb.722:                              # %if.then.i15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s0, 8196
.LBB3_723:                              # %html_output_flush.exit18.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a1, $sp, 296
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB3_825
.LBB3_724:                              # %sw.bb1394
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_728
# %bb.725:                              # %if.then.i2023
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_727
# %bb.726:                              # %html_output_flush.exit.i2044
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_727:                              # %if.end.i2026
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_728:                              # %if.end3.i2031
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s4
	beqz	$s0, .LBB3_732
# %bb.729:                              # %if.then5.i2033
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_731
# %bb.730:                              # %html_output_flush.exit15.i2041
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_731:                              # %if.end9.i2036
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_732:                              # %html_output_c.exit2047
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_784
# %bb.733:                              # %if.then.i2049
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_735
# %bb.734:                              # %html_output_flush.exit.i2058
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_735:                              # %if.end.i2052
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
	b	.LBB3_785
.LBB3_736:                              # %sw.bb1397
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_740
# %bb.737:                              # %if.then.i2143
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_739
# %bb.738:                              # %html_output_flush.exit.i2164
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_739:                              # %if.end.i2146
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_740:                              # %if.end3.i2151
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s4
	beqz	$s0, .LBB3_744
# %bb.741:                              # %if.then5.i2153
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_743
# %bb.742:                              # %html_output_flush.exit15.i2161
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_743:                              # %if.end9.i2156
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_744:                              # %html_output_c.exit2167
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_784
# %bb.745:                              # %if.then.i2169
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_747
# %bb.746:                              # %html_output_flush.exit.i2178
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_747:                              # %if.end.i2172
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_785
.LBB3_748:                              # %sw.bb1393
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_752
# %bb.749:                              # %if.then.i1983
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_751
# %bb.750:                              # %html_output_flush.exit.i2004
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_751:                              # %if.end.i1986
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_752:                              # %if.end3.i1991
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s4
	beqz	$s0, .LBB3_756
# %bb.753:                              # %if.then5.i1993
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_755
# %bb.754:                              # %html_output_flush.exit15.i2001
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_755:                              # %if.end9.i1996
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_756:                              # %html_output_c.exit2007
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_784
# %bb.757:                              # %if.then.i2009
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_759
# %bb.758:                              # %html_output_flush.exit.i2018
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_759:                              # %if.end.i2012
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	b	.LBB3_785
.LBB3_760:                              # %sw.bb1395
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_764
# %bb.761:                              # %if.then.i2063
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_763
# %bb.762:                              # %html_output_flush.exit.i2084
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_763:                              # %if.end.i2066
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_764:                              # %if.end3.i2071
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s4
	beqz	$s0, .LBB3_768
# %bb.765:                              # %if.then5.i2073
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_767
# %bb.766:                              # %html_output_flush.exit15.i2081
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_767:                              # %if.end9.i2076
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_768:                              # %html_output_c.exit2087
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_784
# %bb.769:                              # %if.then.i2089
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_771
# %bb.770:                              # %html_output_flush.exit.i2098
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_771:                              # %if.end.i2092
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
	b	.LBB3_785
.LBB3_772:                              # %sw.bb1396
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s5, $zero, 10
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_776
# %bb.773:                              # %if.then.i2103
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_775
# %bb.774:                              # %html_output_flush.exit.i2124
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_775:                              # %if.end.i2106
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s5, $a1, $a0
.LBB3_776:                              # %if.end3.i2111
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s4
	beqz	$s0, .LBB3_780
# %bb.777:                              # %if.then5.i2113
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_779
# %bb.778:                              # %html_output_flush.exit15.i2121
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_779:                              # %if.end9.i2116
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s5, $a1, $a0
.LBB3_780:                              # %html_output_c.exit2127
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_784
# %bb.781:                              # %if.then.i2129
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_783
# %bb.782:                              # %html_output_flush.exit.i2138
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_783:                              # %if.end.i2132
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
	b	.LBB3_785
.LBB3_784:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_785:                              # %if.end1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a0, 0
	bstrpick.d	$a1, $a1, 62, 57
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s8, $s6, 1
	addi.d	$s1, $s1, -1
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	move	$s6, $s7
	ori	$s7, $zero, 16
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_786:                              # %if.then841
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1512
	blez	$a0, .LBB3_822
# %bb.787:                              # %for.body.lr.ph.i1566
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 1520
	move	$s2, $zero
	bstrpick.d	$s0, $a0, 31, 0
	slli.d	$s3, $s0, 3
.LBB3_788:                              # %for.body.i1569
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s1, $s2
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_840
# %bb.789:                              # %for.cond.i1574
                                        #   in Loop: Header=BB3_788 Depth=3
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB3_788
# %bb.790:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_847
.LBB3_791:                              # %html_tag_arg_value.exit1529
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 1528
	ldx.d	$s4, $s3, $s1
	beqz	$s4, .LBB3_797
# %bb.792:                              # %land.lhs.true767
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_919
# %bb.793:                              # %if.then771
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB3_923
.LBB3_794:                              # %for.body.i1535
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_924
# %bb.795:                              # %for.cond.i1540
                                        #   in Loop: Header=BB3_794 Depth=3
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, 8
	bnez	$s0, .LBB3_794
# %bb.796:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s1
	move	$s1, $zero
	b	.LBB3_925
.LBB3_797:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB3_798:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
.LBB3_799:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s2, $s5
	b	.LBB3_937
.LBB3_800:                              # %if.then.i1492
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s4, $a0, $s1
.LBB3_801:                              # %for.body.lr.ph.i1498
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $zero
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
.LBB3_802:                              # %for.body.i1501
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_804
# %bb.803:                              # %for.cond.i1506
                                        #   in Loop: Header=BB3_802 Depth=3
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB3_802
	b	.LBB3_870
.LBB3_804:                              # %html_tag_arg_value.exit1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beqz	$s4, .LBB3_872
# %bb.805:                              # %html_tag_arg_value.exit1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s5, $a0, $s1
	move	$s2, $s7
	beqz	$s5, .LBB3_856
# %bb.806:                              # %land.lhs.true696
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_936
# %bb.807:                              # %if.then700
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_1010
# %bb.808:                              # %for.cond.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $a0
	beqz	$s4, .LBB3_811
# %bb.809:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	move	$a2, $s4
.LBB3_810:                              # %for.body
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $s5, 0
	ld.d	$a4, $a0, 0
	slli.d	$a3, $a3, 2
	ldx.b	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	addi.d	$s5, $s5, 1
	bnez	$a2, .LBB3_810
.LBB3_811:                              # %for.end
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$zero, $s7, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_935
# %bb.812:                              # %while.cond722
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_815
.LBB3_813:                              # %while.cond722
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a2, $zero, 61
	beq	$a1, $a2, .LBB3_815
# %bb.814:                              # %while.body731
                                        #   in Loop: Header=BB3_813 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB3_813
.LBB3_815:                              # %while.end733
                                        #   in Loop: Header=BB3_47 Depth=2
	sltu	$s0, $zero, $a1
	add.d	$s4, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	move	$s1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s0
	stx.b	$zero, $s1, $a1
	beqz	$a0, .LBB3_817
# %bb.816:                              # %if.then741
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1336
	ori	$a2, $zero, 5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(process_encoding_set)
	jirl	$ra, $ra, 0
.LBB3_817:                              # %if.end743
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_922
.LBB3_818:                              # %if.then903
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1512
	blez	$a0, .LBB3_822
# %bb.819:                              # %for.body.lr.ph.i1600
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 1520
	move	$s1, $zero
	slli.d	$s2, $a0, 3
.LBB3_820:                              # %for.body.i1603
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_859
# %bb.821:                              # %for.cond.i1608
                                        #   in Loop: Header=BB3_820 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_820
	b	.LBB3_870
.LBB3_822:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB3_871
.LBB3_823:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
.LBB3_824:                              # %if.else.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 296
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $s0, $a0
	add.d	$a0, $a0, $s5
	stptr.w	$a0, $s0, 8196
.LBB3_825:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB3_826:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 296
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_835
# %bb.827:                              # %if.then.i1840
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $a0
	ldptr.w	$a2, $s6, 8196
	addi.w	$s4, $a0, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_830
# %bb.828:                              # %if.then.i1840
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s5
	bge	$s0, $a0, .LBB3_830
# %bb.829:                              # %if.end.thread.i1861
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s6, 8196
	blt	$s0, $s4, .LBB3_833
	b	.LBB3_834
.LBB3_830:                              # %if.end.i1846
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s0, $s4, .LBB3_834
# %bb.831:                              # %if.then3.i1854
                                        #   in Loop: Header=BB3_47 Depth=2
	blez	$a2, .LBB3_833
# %bb.832:                              # %if.then.i15.i1858
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s6, 8196
.LBB3_833:                              # %html_output_flush.exit18.i1856
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	addi.d	$a1, $sp, 296
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	b	.LBB3_835
.LBB3_834:                              # %if.else.i1848
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 296
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $a0, $s5
	stptr.w	$a0, $s6, 8196
.LBB3_835:                              # %html_output_str.exit1865
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
.LBB3_836:                              # %if.end1236
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 1
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_837:                              # %for.body.i1437.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
.LBB3_838:                              # %for.body.i1437
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s3, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_857
# %bb.839:                              # %for.cond.i1442
                                        #   in Loop: Header=BB3_838 Depth=3
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bne	$s0, $s5, .LBB3_838
	b	.LBB3_875
.LBB3_840:                              # %html_tag_arg_value.exit1580
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s4, $a0, $s2
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_847
# %bb.841:                              # %land.lhs.true844
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	move	$s2, $s7
	beqz	$a0, .LBB3_848
# %bb.842:                              # %if.then848
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_845
# %bb.843:                              # %if.then848
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_845
# %bb.844:                              # %if.then853
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $fp, 0
	move	$a0, $fp
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_845:                              # %if.end855
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_848
# %bb.846:                              # %if.then857
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.w	$s4, $fp, 0
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a0, $a1, -8
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	ld.wu	$s0, $sp, 1512
	b	.LBB3_848
.LBB3_847:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s7
.LBB3_848:                              # %if.end869
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s0, 0
	blez	$a0, .LBB3_858
# %bb.849:                              # %for.body.lr.ph.i1583
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 1520
	move	$s2, $zero
	slli.d	$s0, $s0, 3
.LBB3_850:                              # %for.body.i1586
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s1, $s2
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_862
# %bb.851:                              # %for.cond.i1591
                                        #   in Loop: Header=BB3_850 Depth=3
	addi.d	$s2, $s2, 8
	bne	$s0, $s2, .LBB3_850
	b	.LBB3_870
.LBB3_852:                              # %html_tag_arg_value.exit1563
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s4, $a0, $s1
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s5
	beqz	$s4, .LBB3_856
# %bb.853:                              # %if.then830
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_855
# %bb.854:                              # %if.then832
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_855:                              # %if.end833
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_936
.LBB3_856:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_937
.LBB3_857:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$s4, $a0, %pc_lo12(.L.str.24)
	b	.LBB3_874
.LBB3_858:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_922
.LBB3_859:                              # %html_tag_arg_value.exit1614
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s4, $a0, $s1
	beqz	$s4, .LBB3_870
# %bb.860:                              # %land.lhs.true906
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s7
	beqz	$a0, .LBB3_936
# %bb.861:                              # %if.then910
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	b	.LBB3_865
.LBB3_862:                              # %html_tag_arg_value.exit1597
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1528
	ldx.d	$s4, $a0, $s2
	beqz	$s4, .LBB3_870
# %bb.863:                              # %land.lhs.true872
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s7
	beqz	$a0, .LBB3_936
# %bb.864:                              # %if.then876
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
.LBB3_865:                              # %if.then876
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB3_868
# %bb.866:                              # %if.then876
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_868
# %bb.867:                              # %if.then881
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $fp, 0
	move	$a0, $fp
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_868:                              # %if.end883
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_920
# %bb.869:                              # %if.then953
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.w	$s4, $fp, 0
	alsl.d	$a1, $s4, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	b	.LBB3_921
.LBB3_870:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB3_871:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s2, $s7
	b	.LBB3_937
.LBB3_872:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	move	$s2, $s7
	b	.LBB3_937
.LBB3_873:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s4, $a0, %pc_lo12(.L.str.26)
.LBB3_874:                              # %if.end681.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$s0, $s5, 3
	ldx.d	$a0, $s2, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s0
.LBB3_875:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 14
.LBB3_876:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
.LBB3_877:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	beqz	$a3, .LBB3_888
# %bb.878:                              # %if.then.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_880
# %bb.879:                              # %html_output_flush.exit.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_880:                              # %if.then.i23.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 3600
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s5, $a0
	addi.w	$s4, $a0, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_883
# %bb.881:                              # %if.then.i23.i
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s5
	bge	$s2, $a0, .LBB3_883
# %bb.882:                              # %if.end.thread.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s2, $s4, .LBB3_886
	b	.LBB3_887
.LBB3_883:                              # %if.end.i26.i
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s2, $s4, .LBB3_887
# %bb.884:                              # %if.then3.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	blez	$a2, .LBB3_886
# %bb.885:                              # %if.then.i15.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_886:                              # %html_output_flush.exit18.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 3600
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_888
.LBB3_887:                              # %if.else.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a1, $zero, 3600
	add.d	$a1, $sp, $a1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s5
	stptr.w	$a0, $a3, 8196
.LBB3_888:                              # %html_output_str.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1512
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	blez	$a0, .LBB3_914
# %bb.889:                              # %for.body.lr.ph.i1466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1520
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1528
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB3_893
.LBB3_890:                              # %html_output_flush.exit.i109.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$s1, $zero
.LBB3_891:                              # %if.end.i104.i
                                        #   in Loop: Header=BB3_893 Depth=3
	addi.d	$a0, $s1, 1
	stptr.w	$a0, $a3, 8196
	ori	$a0, $zero, 34
	stx.b	$a0, $a1, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
.LBB3_892:                              # %for.inc29.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $sp, 1512
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB3_914
.LBB3_893:                              # %for.body.i1468
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_910 Depth 4
	beqz	$a3, .LBB3_892
# %bb.894:                              # %if.then.i31.i
                                        #   in Loop: Header=BB3_893 Depth=3
	move	$s3, $s1
	ldptr.w	$a0, $a3, 8196
	bne	$a0, $a5, .LBB3_896
# %bb.895:                              # %html_output_flush.exit.i39.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_896:                              # %if.end.i34.i
                                        #   in Loop: Header=BB3_893 Depth=3
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	slli.d	$s0, $s2, 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s4, $a0, $s0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s7, $a0
	addi.w	$s5, $a0, 0
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_899
# %bb.897:                              # %if.end.i34.i
                                        #   in Loop: Header=BB3_893 Depth=3
	add.w	$a0, $a2, $s7
	bge	$s1, $a0, .LBB3_899
# %bb.898:                              # %if.end.thread.i65.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s1, $s5, .LBB3_902
	b	.LBB3_903
	.p2align	4, , 16
.LBB3_899:                              # %if.end.i50.i
                                        #   in Loop: Header=BB3_893 Depth=3
	bge	$s1, $s5, .LBB3_903
# %bb.900:                              # %if.then3.i58.i
                                        #   in Loop: Header=BB3_893 Depth=3
	blez	$a2, .LBB3_902
# %bb.901:                              # %if.then.i15.i62.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_902:                              # %html_output_flush.exit18.i60.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a1, 0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_904
	.p2align	4, , 16
.LBB3_903:                              # %if.else.i52.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s7
	stptr.w	$a0, $a3, 8196
.LBB3_904:                              # %html_output_str.exit69.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s1, $s3
	beqz	$a0, .LBB3_892
# %bb.905:                              # %if.then.i71.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ldptr.w	$a2, $a3, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4094
	blt	$a2, $a0, .LBB3_907
# %bb.906:                              # %if.end.thread.i83.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a3, 8196
.LBB3_907:                              # %html_output_str.exit86.thread.i
                                        #   in Loop: Header=BB3_893 Depth=3
	ori	$a0, $a5, 573
	stx.h	$a0, $a1, $a2
	ori	$s0, $a5, 4
	ldx.w	$a1, $a3, $s0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s7, $s2, $a0, 3
	ld.d	$a0, $s7, 0
	addi.w	$s1, $a1, 2
	stptr.w	$s1, $a3, 8196
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB3_913
# %bb.908:                              # %for.body18.preheader.i
                                        #   in Loop: Header=BB3_893 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s1, $zero
	bstrpick.d	$s5, $s5, 30, 0
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_910
	.p2align	4, , 16
.LBB3_909:                              # %if.end.i91.i
                                        #   in Loop: Header=BB3_910 Depth=4
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	addi.d	$s1, $s1, 1
	stx.b	$s3, $a1, $a0
	beq	$s5, $s1, .LBB3_912
.LBB3_910:                              # %for.body18.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        #       Parent Loop BB3_893 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s1
	ld.d	$a4, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a3, 8196
	ldx.w	$s3, $a4, $a2
	bne	$a0, $a5, .LBB3_909
# %bb.911:                              # %html_output_flush.exit.i96.i
                                        #   in Loop: Header=BB3_910 Depth=4
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
	b	.LBB3_909
	.p2align	4, , 16
.LBB3_912:                              # %if.then.i101.ithread-pre-split
                                        #   in Loop: Header=BB3_893 Depth=3
	ldx.w	$s1, $a3, $s0
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beq	$s1, $a5, .LBB3_890
	b	.LBB3_891
.LBB3_913:                              #   in Loop: Header=BB3_893 Depth=3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	bne	$s1, $a5, .LBB3_891
	b	.LBB3_890
.LBB3_914:                              # %for.end31.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a3, .LBB3_918
# %bb.915:                              # %if.then.i114.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_917
# %bb.916:                              # %html_output_flush.exit.i122.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_917:                              # %if.end.i117.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_937
.LBB3_918:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	b	.LBB3_937
.LBB3_919:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	b	.LBB3_798
.LBB3_920:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
.LBB3_921:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB3_922:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_937
.LBB3_923:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	move	$s2, $s5
	b	.LBB3_933
.LBB3_924:                              # %if.then.i1543
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s1
	ld.d	$s1, $s3, 0
.LBB3_925:                              # %html_tag_arg_value.exit1546
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	move	$s2, $s5
	beqz	$s0, .LBB3_928
# %bb.926:                              # %html_tag_arg_value.exit1546
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	beqz	$a2, .LBB3_928
# %bb.927:                              # %if.then779
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	move	$s0, $zero
.LBB3_928:                              # %if.end781
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$s0, $sp, 192                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_930
# %bb.929:                              # %if.then783
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ld.w	$s5, $s7, 0
	alsl.d	$a1, $s5, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s4, $a0
	move	$a0, $s7
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_930:                              # %if.end792
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_932
# %bb.931:                              # %if.then794
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ld.w	$s5, $s7, 0
	alsl.d	$a1, $s5, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s7
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_932:                              # %if.end806
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	move	$fp, $s7
.LBB3_933:                              # %if.end806
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_936
# %bb.934:                              # %if.then809
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	b	.LBB3_936
.LBB3_935:                              # %if.end743.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_936:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB3_937:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1512
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 5
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB3_938:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_46
.LBB3_939:
	move	$s7, $zero
	b	.LBB3_1006
.LBB3_940:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
.LBB3_941:                              # %while.end1728
	move	$s4, $s3
	move	$s3, $fp
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	beqz	$s1, .LBB3_965
# %bb.942:                              # %if.then1730
	addi.d	$a0, $sp, 311
	move	$s2, $fp
	stx.b	$zero, $fp, $a0
	addi.d	$a0, $sp, 1336
	addi.d	$a1, $sp, 311
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_954
# %bb.943:                              # %for.cond1738.preheader
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_990
# %bb.944:                              # %for.body1742.lr.ph
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_979
# %bb.945:                              # %for.body1742.lr.ph.split
	addi.d	$s6, $a1, 4
	move	$s2, $zero
	beqz	$a0, .LBB3_986
# %bb.946:                              # %for.body1742.preheader
	lu12i.w	$s7, 2
	b	.LBB3_948
	.p2align	4, , 16
.LBB3_947:                              # %if.end9.i2501
                                        #   in Loop: Header=BB3_948 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_990
.LBB3_948:                              # %for.body1742
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	ldx.w	$s3, $a1, $a2
	bne	$a0, $s7, .LBB3_950
# %bb.949:                              # %html_output_flush.exit.i2509
                                        #   in Loop: Header=BB3_948 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_950:                              # %if.end.i2491
                                        #   in Loop: Header=BB3_948 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s6, $a0
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	bne	$a0, $s7, .LBB3_947
# %bb.951:                              # %html_output_flush.exit15.i2506
                                        #   in Loop: Header=BB3_948 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_947
.LBB3_952:                              # %if.then13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	b	.LBB3_1006
.LBB3_953:                              # %if.then46
	move	$a0, $s5
	b	.LBB3_995
.LBB3_954:                              # %if.else1754
	beqz	$s2, .LBB3_965
# %bb.955:                              # %if.then1756
	ori	$a2, $zero, 38
	move	$a0, $s5
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(html_output_c)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s4, $s5, 4
	addi.d	$s5, $s2, 4
	addi.d	$s2, $sp, 311
	lu12i.w	$s6, 2
	b	.LBB3_958
	.p2align	4, , 16
.LBB3_956:                              # %if.end9.i2527
                                        #   in Loop: Header=BB3_958 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s5, $a0
.LBB3_957:                              # %html_output_c.exit2538
                                        #   in Loop: Header=BB3_958 Depth=1
	addi.d	$a0, $fp, -1
	addi.d	$s2, $s2, 1
	move	$fp, $a0
	beqz	$a0, .LBB3_977
.LBB3_958:                              # %for.body1760
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_962
# %bb.959:                              # %if.then.i2514
                                        #   in Loop: Header=BB3_958 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_961
# %bb.960:                              # %html_output_flush.exit.i2535
                                        #   in Loop: Header=BB3_958 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_961:                              # %if.end.i2517
                                        #   in Loop: Header=BB3_958 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s4, $a0
.LBB3_962:                              # %if.end3.i2522
                                        #   in Loop: Header=BB3_958 Depth=1
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_957
# %bb.963:                              # %if.then5.i2524
                                        #   in Loop: Header=BB3_958 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_956
# %bb.964:                              # %html_output_flush.exit15.i2532
                                        #   in Loop: Header=BB3_958 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_956
.LBB3_965:
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $s3
	move	$s3, $s4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_967
.LBB3_966:                              # %if.then1776
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_967:                              # %if.end1777
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_969
# %bb.968:                              # %if.then1779
	move	$a1, $a0
	ld.d	$a0, $fp, 24
	slli.d	$a1, $a1, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
.LBB3_969:                              # %if.end1780
	beqz	$s1, .LBB3_997
.LBB3_970:                              # %if.then1782
	addi.d	$a0, $sp, 1336
	pcaddu18i	$ra, %call36(entity_norm_done)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1512
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB3_998
.LBB3_971:                              # %if.then1786
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_999
.LBB3_972:                              # %if.end1793
	beqz	$s6, .LBB3_1002
.LBB3_973:                              # %if.then1795
	ldptr.w	$a2, $s6, 8196
	blez	$a2, .LBB3_975
# %bb.974:                              # %if.then.i2555
	ld.w	$a0, $s6, 0
	addi.d	$a1, $s6, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s6, 8196
.LBB3_975:                              # %html_output_flush.exit2558
	ld.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_1003
	b	.LBB3_1006
.LBB3_976:                              # %if.then50
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_995
.LBB3_977:
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_991
.LBB3_978:                              # %if.then59
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_994
.LBB3_979:                              # %for.body1742.lr.ph.split.us
	beqz	$a0, .LBB3_990
# %bb.980:                              # %for.body1742.us.preheader
	move	$s2, $zero
	lu12i.w	$s6, 2
	b	.LBB3_982
	.p2align	4, , 16
.LBB3_981:                              # %if.end9.i2501.us
                                        #   in Loop: Header=BB3_982 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_990
.LBB3_982:                              # %for.body1742.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s6, .LBB3_981
# %bb.983:                              # %html_output_flush.exit15.i2506.us
                                        #   in Loop: Header=BB3_982 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_981
.LBB3_984:                              # %if.then69
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	b	.LBB3_993
.LBB3_985:                              # %sw.bb132
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_966
	b	.LBB3_967
.LBB3_986:                              # %for.body1742.us2819.preheader
	lu12i.w	$s5, 2
	b	.LBB3_988
	.p2align	4, , 16
.LBB3_987:                              # %if.end.i2491.us
                                        #   in Loop: Header=BB3_988 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	stx.b	$s1, $s6, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_990
.LBB3_988:                              # %for.body1742.us2819
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ldptr.w	$a0, $s3, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s5, .LBB3_987
# %bb.989:                              # %html_output_flush.exit.i2509.us
                                        #   in Loop: Header=BB3_988 Depth=1
	ld.w	$a0, $s3, 0
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_987
.LBB3_990:                              # %for.end1753
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
.LBB3_991:                              # %abort
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_966
	b	.LBB3_967
.LBB3_992:                              # %if.then81
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
.LBB3_993:                              # %if.end1780
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB3_994:                              # %if.end1780
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_995:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_996:
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$s6, $zero
	move	$s5, $zero
	move	$s7, $zero
	bnez	$s1, .LBB3_970
.LBB3_997:                              # %if.end1784
	addi.d	$a0, $sp, 1512
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB3_971
.LBB3_998:                              # %if.end1788
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_972
.LBB3_999:                              # %if.then1790
	ldptr.w	$a2, $s5, 8196
	blez	$a2, .LBB3_1001
# %bb.1000:                             # %if.then.i2548
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s5, 8196
.LBB3_1001:                             # %html_output_flush.exit2551
	ld.w	$a0, $s5, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	bnez	$s6, .LBB3_973
.LBB3_1002:                             # %if.end1798
	beqz	$s0, .LBB3_1006
.LBB3_1003:                             # %if.then1800
	ldptr.w	$a2, $s0, 8196
	blez	$a2, .LBB3_1005
# %bb.1004:                             # %if.then.i2562
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 288                   # 8-byte Folded Reload
	stptr.w	$zero, $s0, 8196
.LBB3_1005:                             # %html_output_flush.exit2565
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_1006:                             # %cleanup1804
	move	$a0, $s7
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1680
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
.LBB3_1007:
	move	$s7, $zero
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_1009
.LBB3_1008:                             # %if.then1555
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 536
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s7, $zero
.LBB3_1009:                             # %abort
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$s1, $fp
	move	$fp, $s3
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_966
	b	.LBB3_967
.LBB3_1010:
	addi.w	$s7, $zero, -114
	b	.LBB3_1006
.Lfunc_end3:
	.size	cli_html_normalise, .Lfunc_end3-cli_html_normalise
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_985-.LJTI3_0
	.word	.LBB3_54-.LJTI3_0
	.word	.LBB3_162-.LJTI3_0
	.word	.LBB3_129-.LJTI3_0
	.word	.LBB3_131-.LJTI3_0
	.word	.LBB3_127-.LJTI3_0
	.word	.LBB3_166-.LJTI3_0
	.word	.LBB3_175-.LJTI3_0
	.word	.LBB3_151-.LJTI3_0
	.word	.LBB3_191-.LJTI3_0
	.word	.LBB3_113-.LJTI3_0
	.word	.LBB3_98-.LJTI3_0
	.word	.LBB3_217-.LJTI3_0
	.word	.LBB3_190-.LJTI3_0
	.word	.LBB3_84-.LJTI3_0
	.word	.LBB3_225-.LJTI3_0
	.word	.LBB3_219-.LJTI3_0
	.word	.LBB3_227-.LJTI3_0
	.word	.LBB3_147-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_209-.LJTI3_0
	.word	.LBB3_123-.LJTI3_0
	.word	.LBB3_228-.LJTI3_0
	.word	.LBB3_76-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_211-.LJTI3_1
	.word	.LBB3_412-.LJTI3_1
	.word	.LBB3_412-.LJTI3_1
	.word	.LBB3_409-.LJTI3_1
	.word	.LBB3_700-.LJTI3_1
	.word	.LBB3_410-.LJTI3_1
.LJTI3_2:
	.word	.LBB3_224-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_748-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_724-.LJTI3_2
	.word	.LBB3_760-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_772-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_785-.LJTI3_2
	.word	.LBB3_736-.LJTI3_2
                                        # -- End function
	.text
	.globl	html_normalise_fd               # -- Begin function html_normalise_fd
	.p2align	5
	.type	html_normalise_fd,@function
html_normalise_fd:                      # @html_normalise_fd
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
# %bb.1:                                # %if.else12
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB4_2:                                # %if.then6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(cli_html_normalise)
	jr	$t8
.LBB4_3:                                # %if.then
	ld.d	$a1, $sp, 64
	st.d	$a1, $sp, 152
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $zero
	move	$a4, $s2
	move	$a5, $zero
	pcaddu18i	$ra, %call36(mmap)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 144
	addi.w	$a1, $zero, -1
	st.d	$zero, $sp, 160
	beq	$a0, $a1, .LBB4_5
# %bb.4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 144
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cli_html_normalise)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 144
	ld.d	$a1, $sp, 152
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB4_5:                                # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB4_2
.Lfunc_end4:
	.size	html_normalise_fd, .Lfunc_end4-html_normalise_fd
                                        # -- End function
	.globl	html_screnc_decode              # -- Begin function html_screnc_decode
	.p2align	5
	.type	html_screnc_decode,@function
html_screnc_decode:                     # @html_screnc_decode
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3200
	sub.d	$sp, $sp, $a2
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_13
# %bb.1:                                # %if.end
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$s1, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.2:                                # %if.end6
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 16
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	stptr.w	$zero, $a1, 0
	beqz	$a0, .LBB5_12
# %bb.3:                                # %while.cond.preheader
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.4:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB5_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_15
# %bb.6:                                # %if.end23
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB5_5
.LBB5_7:
	move	$s3, $zero
.LBB5_8:                                # %abort
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 20
	add.d	$a0, $sp, $a0
	ldptr.w	$a2, $a0, 0
	blez	$a2, .LBB5_10
# %bb.9:                                # %if.then.i
	ld.w	$a0, $sp, 16
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 20
	add.d	$a0, $sp, $a0
	stptr.w	$zero, $a0, 0
.LBB5_10:                               # %html_output_flush.exit
	ld.w	$a0, $sp, 16
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB5_14
.LBB5_11:                               # %if.then4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB5_13
.LBB5_12:                               # %if.then14
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 24
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %cleanup
	move	$s3, $zero
.LBB5_14:                               # %cleanup
	move	$a0, $s3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3200
	add.d	$sp, $sp, $a1
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
.LBB5_15:                               # %if.end26
	ld.bu	$s2, $a0, 4
	beqz	$s2, .LBB5_22
# %bb.16:
	addi.d	$a0, $a0, 4
	ld.bu	$s3, $a0, 1
	beqz	$s3, .LBB5_24
.LBB5_17:
	addi.d	$a0, $a0, 1
	ld.bu	$s4, $a0, 1
	beqz	$s4, .LBB5_26
.LBB5_18:
	addi.d	$a0, $a0, 1
	ld.bu	$s5, $a0, 1
	beqz	$s5, .LBB5_28
.LBB5_19:
	addi.d	$a0, $a0, 1
	ld.bu	$s6, $a0, 1
	beqz	$s6, .LBB5_30
.LBB5_20:
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 1
	beqz	$a1, .LBB5_32
.LBB5_21:
	addi.d	$a0, $a0, 1
	b	.LBB5_34
.LBB5_22:                               # %if.then28
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.23:                               # %if.then28.if.end33_crit_edge
	move	$s1, $a0
	ld.bu	$s2, $a0, 0
	ld.bu	$s3, $a0, 1
	bnez	$s3, .LBB5_17
.LBB5_24:                               # %if.then28.1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.25:                               # %if.then28.1.if.end33.1_crit_edge
	move	$s1, $a0
	ld.bu	$s3, $a0, 0
	ld.bu	$s4, $a0, 1
	bnez	$s4, .LBB5_18
.LBB5_26:                               # %if.then28.2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.27:                               # %if.then28.2.if.end33.2_crit_edge
	move	$s1, $a0
	ld.bu	$s4, $a0, 0
	ld.bu	$s5, $a0, 1
	bnez	$s5, .LBB5_19
.LBB5_28:                               # %if.then28.3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.29:                               # %if.then28.3.if.end33.3_crit_edge
	move	$s1, $a0
	ld.bu	$s5, $a0, 0
	ld.bu	$s6, $a0, 1
	bnez	$s6, .LBB5_20
.LBB5_30:                               # %if.then28.4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.31:                               # %if.then28.4.if.end33.4_crit_edge
	move	$s1, $a0
	ld.bu	$s6, $a0, 0
	ld.bu	$a1, $a0, 1
	bnez	$a1, .LBB5_21
.LBB5_32:                               # %if.then28.5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.33:                               # %if.then28.5.if.end33.5_crit_edge
	move	$s1, $a0
	ld.bu	$a1, $a0, 0
.LBB5_34:                               # %if.end33.5
	slli.d	$a2, $s2, 2
	pcalau12i	$a3, %pc_hi20(base64_chars)
	addi.d	$a3, $a3, %pc_lo12(base64_chars)
	ldx.w	$a2, $a3, $a2
	slli.d	$a4, $s3, 2
	ldx.w	$a4, $a3, $a4
	slli.w	$a2, $a2, 2
	srai.d	$a5, $a4, 4
	add.d	$a2, $a5, $a2
	slli.d	$a4, $a4, 12
	slli.d	$a5, $s4, 2
	ldx.w	$a5, $a3, $a5
	lu12i.w	$a6, 15
	and	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a5, 6
	bstrpick.d	$a4, $a4, 31, 8
	slli.w	$a4, $a4, 8
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a5, 22
	slli.d	$a5, $s5, 2
	ldx.w	$a5, $a3, $a5
	lu12i.w	$a6, 3072
	and	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	slli.w	$a4, $a5, 16
	slli.d	$a5, $s6, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	add.d	$a2, $a2, $a4
	slli.w	$a3, $a5, 26
	add.d	$a2, $a2, $a3
	slli.d	$a1, $a1, 20
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	and	$a1, $a1, $a3
	addi.w	$a1, $a1, 0
	add.d	$s4, $a2, $a1
	beqz	$s4, .LBB5_63
# %bb.35:                               # %while.cond86.preheader.lr.ph
	move	$s8, $zero
	addi.d	$a0, $a0, 1
	ori	$s5, $zero, 2
	ori	$s6, $zero, 13
	ori	$s7, $zero, 10
	ori	$s2, $zero, 13
	b	.LBB5_37
	.p2align	4, , 16
.LBB5_36:                               # %if.then99
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
.LBB5_37:                               # %land.rhs88
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	beq	$a1, $s7, .LBB5_36
# %bb.38:                               # %land.rhs88
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$a1, $s6, .LBB5_36
# %bb.39:                               # %land.rhs88
                                        #   in Loop: Header=BB5_37 Depth=1
	bnez	$a1, .LBB5_42
# %bb.40:                               # %if.end141
                                        #   in Loop: Header=BB5_37 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	beqz	$s4, .LBB5_8
# %bb.41:                               # %if.end141
                                        #   in Loop: Header=BB5_37 Depth=1
	move	$s1, $a0
	bnez	$a0, .LBB5_37
	b	.LBB5_8
.LBB5_42:                               # %if.end101
                                        #   in Loop: Header=BB5_37 Depth=1
	ori	$a2, $zero, 1
	beq	$s2, $a2, .LBB5_49
# %bb.43:                               # %if.end101
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$s2, $s6, .LBB5_48
# %bb.44:                               # %if.end101
                                        #   in Loop: Header=BB5_37 Depth=1
	ori	$a2, $zero, 17
	bne	$s2, $a2, .LBB5_55
# %bb.45:                               # %sw.bb107
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a1, $a1, -33
	ori	$a2, $zero, 9
	bltu	$a2, $a1, .LBB5_59
# %bb.46:                               # %sw.bb107
                                        #   in Loop: Header=BB5_37 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB5_47:                               # %sw.bb109
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 60
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_48:                               # %sw.bb
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$s5, $s5, -1
	sltui	$a1, $s5, 1
	masknez	$a2, $s6, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$s2, $a1, $a2
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_49:                               # %sw.bb116
                                        #   in Loop: Header=BB5_37 Depth=1
	ext.w.b	$a2, $a1
	ori	$s2, $zero, 1
	bltz	$a2, .LBB5_54
# %bb.50:                               # %if.then120
                                        #   in Loop: Header=BB5_37 Depth=1
	slli.d	$a2, $s8, 2
	pcalau12i	$a3, %pc_hi20(table_order)
	addi.d	$a3, $a3, %pc_lo12(table_order)
	ldx.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 9
	pcalau12i	$a3, %pc_hi20(decrypt_tables)
	addi.d	$a3, $a3, %pc_lo12(decrypt_tables)
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$s3, $a2, $a1
	ori	$s2, $zero, 17
	ori	$a1, $zero, 255
	beq	$s3, $a1, .LBB5_54
# %bb.51:                               # %if.else
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	bne	$a1, $s0, .LBB5_53
# %bb.52:                               # %html_output_flush.exit.i92
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a1, $sp, 16
	move	$s2, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
.LBB5_53:                               # %html_output_c.exit95
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 20
	add.d	$a3, $sp, $a3
	stptr.w	$a2, $a3, 0
	addi.d	$a2, $sp, 20
	stx.b	$s3, $a2, $a1
	ori	$s2, $zero, 1
.LBB5_54:                               # %if.end132
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, -1
	addi.d	$a1, $s8, 1
	addi.w	$a2, $a1, 0
	bstrpick.d	$a2, $a2, 62, 57
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 6
	slli.d	$a2, $a2, 6
	sub.w	$s8, $a1, $a2
.LBB5_55:                               # %sw.epilog136
                                        #   in Loop: Header=BB5_37 Depth=1
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_56:                               # %sw.bb111
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 64
	bne	$a1, $s0, .LBB5_58
.LBB5_57:                               # %sw.epilog.sink.split.sink.split
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a1, $sp, 16
	move	$s3, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
.LBB5_58:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 20
	add.d	$a3, $sp, $a3
	stptr.w	$a2, $a3, 0
	addi.d	$a2, $sp, 20
	stx.b	$s2, $a2, $a1
.LBB5_59:                               # %sw.epilog
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, -1
	ori	$s2, $zero, 1
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_60:                               # %sw.bb110
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 13
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_61:                               # %sw.bb112
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 10
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_62:                               # %sw.bb113
                                        #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 62
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_63:
	ori	$s3, $zero, 1
	b	.LBB5_8
.LBB5_64:                               # %if.end141.thread
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB5_8
.Lfunc_end5:
	.size	html_screnc_decode, .Lfunc_end5-html_screnc_decode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_47-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_60-.LJTI5_0
	.word	.LBB5_56-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_61-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_62-.LJTI5_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function html_output_c
	.type	html_output_c,@function
html_output_c:                          # @html_output_c
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	lu12i.w	$s1, 2
	beqz	$a0, .LBB6_4
# %bb.1:                                # %if.then
	ldptr.w	$a1, $a0, 8196
	bne	$a1, $s1, .LBB6_3
# %bb.2:                                # %html_output_flush.exit
	ld.w	$a3, $a0, 0
	addi.d	$a1, $a0, 4
	lu12i.w	$a2, 2
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
.LBB6_3:                                # %if.end
	add.d	$a2, $a0, $a1
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 8196
	st.b	$fp, $a2, 4
.LBB6_4:                                # %if.end3
	beqz	$s0, .LBB6_8
# %bb.5:                                # %if.then5
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $s1, .LBB6_7
# %bb.6:                                # %html_output_flush.exit15
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB6_7:                                # %if.end9
	add.d	$a1, $s0, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s0, 8196
	st.b	$fp, $a1, 4
.LBB6_8:                                # %if.end15
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	html_output_c, .Lfunc_end6-html_output_c
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_contents_append
	.type	html_tag_contents_append,@function
html_tag_contents_append:               # @html_tag_contents_append
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a2, $a3, .LBB7_2
# %bb.1:                                # %if.then
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a0
	ld.d	$a0, $a0, 24
	addi.w	$a1, $a1, -1
	slli.d	$s2, $a1, 3
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bgeu	$a1, $a0, .LBB7_3
.LBB7_2:                                # %if.end15
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_3:                                # %if.then4
	ld.d	$a1, $s1, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s0, $fp
	ldx.d	$a0, $a1, $s2
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(blobAddData)
	jr	$t8
.Lfunc_end7:
	.size	html_tag_contents_append, .Lfunc_end7-html_tag_contents_append
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_arg_add
	.type	html_tag_arg_add,@function
html_tag_arg_add:                       # @html_tag_arg_add
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a3, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	ld.d	$a0, $a0, 8
	addi.w	$a1, $a3, 1
	st.w	$a1, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB8_9
# %bb.1:                                # %if.end
	ld.w	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB8_9
# %bb.2:                                # %if.end14
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB8_5
# %bb.3:                                # %if.then16
	ld.w	$a1, $fp, 0
	ld.d	$a0, $fp, 24
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB8_9
# %bb.4:                                # %if.end25
	ld.w	$a1, $fp, 0
	alsl.d	$a0, $a1, $a0, 3
	st.d	$zero, $a0, -8
.LBB8_5:                                # %if.end28
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.w	$a1, $fp, 0
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a0, $a2, -8
	beqz	$s0, .LBB8_27
# %bb.6:                                # %if.then36
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB8_28
# %bb.7:                                # %if.then39
	addi.d	$s0, $s0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	move	$fp, $a0
	alsl.d	$a0, $a2, $a1, 3
	st.d	$fp, $a0, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB8_26
# %bb.8:                                # %if.then51
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$zero, $fp, $a0
	b	.LBB8_26
.LBB8_9:                                # %abort
	ld.w	$a0, $fp, 0
	addi.d	$s0, $fp, 8
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 2
	st.w	$a1, $fp, 0
	blt	$a0, $a2, .LBB8_19
# %bb.10:                               # %for.body.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               # %for.inc
                                        #   in Loop: Header=BB8_12 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB8_19
.LBB8_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB8_14
# %bb.13:                               # %if.then81
                                        #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_14:                               # %if.end85
                                        #   in Loop: Header=BB8_12 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_16
# %bb.15:                               # %if.then88
                                        #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_16:                               # %if.end92
                                        #   in Loop: Header=BB8_12 Depth=1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB8_11
# %bb.17:                               # %if.then95
                                        #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	beqz	$a0, .LBB8_11
# %bb.18:                               # %if.then100
                                        #   in Loop: Header=BB8_12 Depth=1
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB8_11
.LBB8_19:                               # %for.end
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB8_21
# %bb.20:                               # %if.then109
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_21:                               # %if.end111
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_23
# %bb.22:                               # %if.then114
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_23:                               # %if.end116
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB8_25
# %bb.24:                               # %if.then119
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_25:                               # %if.end121
	st.w	$zero, $fp, 0
	st.d	$zero, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 8
.LBB8_26:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_27:                               # %if.else68
	ld.d	$a0, $fp, 16
	alsl.d	$a0, $a1, $a0, 3
	st.d	$zero, $a0, -8
	b	.LBB8_26
.LBB8_28:                               # %if.else
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	b	.LBB8_26
.Lfunc_end8:
	.size	html_tag_arg_add, .Lfunc_end8-html_tag_arg_add
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_contents_done
	.type	html_tag_contents_done,@function
html_tag_contents_done:                 # @html_tag_contents_done
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	slli.d	$a1, $a1, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(blobClose)
	jr	$t8
.Lfunc_end9:
	.size	html_tag_contents_done, .Lfunc_end9-html_tag_contents_done
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_arg_value
	.type	html_tag_arg_value,@function
html_tag_arg_value:                     # @html_tag_arg_value
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB10_4
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $a1
	ld.d	$s1, $fp, 8
	move	$s2, $zero
	slli.d	$s3, $a0, 3
	.p2align	4, , 16
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_5
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB10_2
.LBB10_4:
	move	$a0, $zero
	b	.LBB10_6
.LBB10_5:                               # %if.then
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s2
.LBB10_6:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	html_tag_arg_value, .Lfunc_end10-html_tag_arg_value
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_set_inahref
	.type	html_tag_set_inahref,@function
html_tag_set_inahref:                   # @html_tag_set_inahref
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$s2, $a0
	ld.d	$a0, $s1, 24
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$fp, $a1, -8
	slli.d	$a1, $s0, 3
	addi.d	$s0, $a1, -8
	stx.d	$s2, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ldx.d	$a0, $a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(blobClose)
	jr	$t8
.Lfunc_end11:
	.size	html_tag_set_inahref, .Lfunc_end11-html_tag_set_inahref
                                        # -- End function
	.type	table_order,@object             # @table_order
	.data
	.globl	table_order
	.p2align	2, 0x0
table_order:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	table_order, 256

	.type	decrypt_tables,@object          # @decrypt_tables
	.globl	decrypt_tables
	.p2align	2, 0x0
decrypt_tables:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	87                              # 0x57
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	46                              # 0x2e
	.word	71                              # 0x47
	.word	122                             # 0x7a
	.word	86                              # 0x56
	.word	66                              # 0x42
	.word	106                             # 0x6a
	.word	47                              # 0x2f
	.word	38                              # 0x26
	.word	73                              # 0x49
	.word	65                              # 0x41
	.word	52                              # 0x34
	.word	50                              # 0x32
	.word	91                              # 0x5b
	.word	118                             # 0x76
	.word	114                             # 0x72
	.word	67                              # 0x43
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	112                             # 0x70
	.word	69                              # 0x45
	.word	104                             # 0x68
	.word	113                             # 0x71
	.word	79                              # 0x4f
	.word	9                               # 0x9
	.word	98                              # 0x62
	.word	68                              # 0x44
	.word	35                              # 0x23
	.word	117                             # 0x75
	.word	60                              # 0x3c
	.word	126                             # 0x7e
	.word	62                              # 0x3e
	.word	94                              # 0x5e
	.word	255                             # 0xff
	.word	119                             # 0x77
	.word	74                              # 0x4a
	.word	97                              # 0x61
	.word	93                              # 0x5d
	.word	34                              # 0x22
	.word	75                              # 0x4b
	.word	111                             # 0x6f
	.word	78                              # 0x4e
	.word	59                              # 0x3b
	.word	76                              # 0x4c
	.word	80                              # 0x50
	.word	103                             # 0x67
	.word	42                              # 0x2a
	.word	125                             # 0x7d
	.word	116                             # 0x74
	.word	84                              # 0x54
	.word	43                              # 0x2b
	.word	45                              # 0x2d
	.word	44                              # 0x2c
	.word	48                              # 0x30
	.word	110                             # 0x6e
	.word	107                             # 0x6b
	.word	102                             # 0x66
	.word	53                              # 0x35
	.word	37                              # 0x25
	.word	33                              # 0x21
	.word	100                             # 0x64
	.word	77                              # 0x4d
	.word	82                              # 0x52
	.word	99                              # 0x63
	.word	63                              # 0x3f
	.word	123                             # 0x7b
	.word	120                             # 0x78
	.word	41                              # 0x29
	.word	40                              # 0x28
	.word	115                             # 0x73
	.word	89                              # 0x59
	.word	51                              # 0x33
	.word	127                             # 0x7f
	.word	109                             # 0x6d
	.word	85                              # 0x55
	.word	83                              # 0x53
	.word	124                             # 0x7c
	.word	58                              # 0x3a
	.word	95                              # 0x5f
	.word	101                             # 0x65
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	49                              # 0x31
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	90                              # 0x5a
	.word	72                              # 0x48
	.word	39                              # 0x27
	.word	92                              # 0x5c
	.word	61                              # 0x3d
	.word	36                              # 0x24
	.word	121                             # 0x79
	.word	55                              # 0x37
	.word	96                              # 0x60
	.word	81                              # 0x51
	.word	32                              # 0x20
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	123                             # 0x7b
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	50                              # 0x32
	.word	48                              # 0x30
	.word	33                              # 0x21
	.word	41                              # 0x29
	.word	91                              # 0x5b
	.word	56                              # 0x38
	.word	51                              # 0x33
	.word	61                              # 0x3d
	.word	88                              # 0x58
	.word	58                              # 0x3a
	.word	53                              # 0x35
	.word	101                             # 0x65
	.word	57                              # 0x39
	.word	92                              # 0x5c
	.word	86                              # 0x56
	.word	115                             # 0x73
	.word	102                             # 0x66
	.word	78                              # 0x4e
	.word	69                              # 0x45
	.word	107                             # 0x6b
	.word	98                              # 0x62
	.word	89                              # 0x59
	.word	120                             # 0x78
	.word	94                              # 0x5e
	.word	125                             # 0x7d
	.word	74                              # 0x4a
	.word	109                             # 0x6d
	.word	113                             # 0x71
	.word	60                              # 0x3c
	.word	96                              # 0x60
	.word	62                              # 0x3e
	.word	83                              # 0x53
	.word	255                             # 0xff
	.word	66                              # 0x42
	.word	39                              # 0x27
	.word	72                              # 0x48
	.word	114                             # 0x72
	.word	117                             # 0x75
	.word	49                              # 0x31
	.word	55                              # 0x37
	.word	77                              # 0x4d
	.word	82                              # 0x52
	.word	34                              # 0x22
	.word	84                              # 0x54
	.word	106                             # 0x6a
	.word	71                              # 0x47
	.word	100                             # 0x64
	.word	45                              # 0x2d
	.word	32                              # 0x20
	.word	127                             # 0x7f
	.word	46                              # 0x2e
	.word	76                              # 0x4c
	.word	93                              # 0x5d
	.word	126                             # 0x7e
	.word	108                             # 0x6c
	.word	111                             # 0x6f
	.word	121                             # 0x79
	.word	116                             # 0x74
	.word	67                              # 0x43
	.word	38                              # 0x26
	.word	118                             # 0x76
	.word	37                              # 0x25
	.word	36                              # 0x24
	.word	43                              # 0x2b
	.word	40                              # 0x28
	.word	35                              # 0x23
	.word	65                              # 0x41
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	42                              # 0x2a
	.word	68                              # 0x44
	.word	63                              # 0x3f
	.word	119                             # 0x77
	.word	59                              # 0x3b
	.word	85                              # 0x55
	.word	105                             # 0x69
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	80                              # 0x50
	.word	103                             # 0x67
	.word	81                              # 0x51
	.word	73                              # 0x49
	.word	79                              # 0x4f
	.word	70                              # 0x46
	.word	104                             # 0x68
	.word	124                             # 0x7c
	.word	54                              # 0x36
	.word	112                             # 0x70
	.word	110                             # 0x6e
	.word	122                             # 0x7a
	.word	47                              # 0x2f
	.word	95                              # 0x5f
	.word	75                              # 0x4b
	.word	90                              # 0x5a
	.word	44                              # 0x2c
	.word	87                              # 0x57
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	110                             # 0x6e
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	45                              # 0x2d
	.word	117                             # 0x75
	.word	82                              # 0x52
	.word	96                              # 0x60
	.word	113                             # 0x71
	.word	94                              # 0x5e
	.word	73                              # 0x49
	.word	92                              # 0x5c
	.word	98                              # 0x62
	.word	125                             # 0x7d
	.word	41                              # 0x29
	.word	54                              # 0x36
	.word	32                              # 0x20
	.word	124                             # 0x7c
	.word	122                             # 0x7a
	.word	127                             # 0x7f
	.word	107                             # 0x6b
	.word	99                              # 0x63
	.word	51                              # 0x33
	.word	43                              # 0x2b
	.word	104                             # 0x68
	.word	81                              # 0x51
	.word	102                             # 0x66
	.word	118                             # 0x76
	.word	49                              # 0x31
	.word	100                             # 0x64
	.word	84                              # 0x54
	.word	67                              # 0x43
	.word	60                              # 0x3c
	.word	58                              # 0x3a
	.word	62                              # 0x3e
	.word	126                             # 0x7e
	.word	255                             # 0xff
	.word	69                              # 0x45
	.word	44                              # 0x2c
	.word	42                              # 0x2a
	.word	116                             # 0x74
	.word	39                              # 0x27
	.word	55                              # 0x37
	.word	68                              # 0x44
	.word	121                             # 0x79
	.word	89                              # 0x59
	.word	47                              # 0x2f
	.word	111                             # 0x6f
	.word	38                              # 0x26
	.word	114                             # 0x72
	.word	106                             # 0x6a
	.word	57                              # 0x39
	.word	123                             # 0x7b
	.word	63                              # 0x3f
	.word	56                              # 0x38
	.word	119                             # 0x77
	.word	103                             # 0x67
	.word	83                              # 0x53
	.word	71                              # 0x47
	.word	52                              # 0x34
	.word	120                             # 0x78
	.word	93                              # 0x5d
	.word	48                              # 0x30
	.word	35                              # 0x23
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.word	108                             # 0x6c
	.word	72                              # 0x48
	.word	85                              # 0x55
	.word	112                             # 0x70
	.word	105                             # 0x69
	.word	46                              # 0x2e
	.word	76                              # 0x4c
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	78                              # 0x4e
	.word	80                              # 0x50
	.word	9                               # 0x9
	.word	86                              # 0x56
	.word	115                             # 0x73
	.word	53                              # 0x35
	.word	97                              # 0x61
	.word	75                              # 0x4b
	.word	88                              # 0x58
	.word	59                              # 0x3b
	.word	87                              # 0x57
	.word	34                              # 0x22
	.word	109                             # 0x6d
	.word	77                              # 0x4d
	.word	37                              # 0x25
	.word	40                              # 0x28
	.word	70                              # 0x46
	.word	74                              # 0x4a
	.word	50                              # 0x32
	.word	65                              # 0x41
	.word	61                              # 0x3d
	.word	95                              # 0x5f
	.word	79                              # 0x4f
	.word	66                              # 0x42
	.word	101                             # 0x65
	.size	decrypt_tables, 1536

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No HTML stream\n"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"mmap HTML failed\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mmap'ed file\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"fstat HTML failed\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s/screnc.html"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"open failed: %s\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"#@~^"
	.size	.L.str.7, 5

	.type	base64_chars,@object            # @base64_chars
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
base64_chars:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	62                              # 0x3e
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	63                              # 0x3f
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.size	base64_chars, 1024

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Invalid HTML fd\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata,"a",@progbits
.L.str.9:
	.space	2
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s/rfc2397"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s/comment.html"
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%s/nocomment.html"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s/script.html"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Impossible, special_char can't occur here\n"
	.size	.L.str.14, 43

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"HTML Engine Error\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"data:"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\"data:"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"/script"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"/a"
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"/form"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"script"
	.size	.L.str.21, 7

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"language"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"jscript.encode"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"javascript"
	.size	.L.str.24, 11

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"vbscript.encode"
	.size	.L.str.25, 16

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"vbscript"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"meta"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"http-equiv"
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"content"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"content-type"
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"charset"
	.size	.L.str.31, 8

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" \"'"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"a"
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"href"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"title"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"href_title"
	.size	.L.str.36, 11

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"form"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"action"
	.size	.L.str.38, 7

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"img"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"src"
	.size	.L.str.40, 4

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"dynsrc"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"iframe"
	.size	.L.str.42, 7

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"area"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"&#%d;"
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.45:
	.asciz	"</script>\n"
	.size	.L.str.45, 11

	.type	.L.str.46,@object               # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"RFC2397 data file: %s\n"
	.size	.L.str.46, 23

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.47:
	.asciz	"From html-normalise\n"
	.size	.L.str.47, 21

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"Content-type: "
	.size	.L.str.48, 15

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"text/plain\n"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	";base64"
	.size	.L.str.50, 8

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.51:
	.asciz	"Content-transfer-encoding: base64\n"
	.size	.L.str.51, 35

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.space	1
	.size	.L.str.52, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
