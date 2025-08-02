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
	ldx.hu	$a4, $a2, $a3
	lu12i.w	$a3, 2
	and	$a5, $a4, $a3
	move	$a4, $s0
	bnez	$a5, .LBB0_14
# %bb.10:                               # %while.cond27.preheader
	ori	$a5, $zero, 2
	move	$a4, $s0
	bltu	$s0, $a5, .LBB0_14
# %bb.11:                               # %while.body38.preheader
	addi.d	$a5, $s1, -1
	ori	$a6, $zero, 1
	move	$a4, $s0
	.p2align	4, , 16
.LBB0_12:                               # %while.body38
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $a2, $a7
	and	$a7, $a7, $a3
	addi.w	$a4, $a4, -1
	bnez	$a7, .LBB0_14
# %bb.13:                               # %while.body38
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a5, $a5, -1
	bltu	$a6, $a4, .LBB0_12
.LBB0_14:                               # %while.end41
	addi.d	$a2, $a4, -1
	sltui	$a2, $a2, 1
	masknez	$a3, $a4, $a2
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
	lu12i.w	$a3, 2
	move	$a0, $fp
	.p2align	4, , 16
.LBB0_21:                               # %while.cond72
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $s1
	ld.bu	$a4, $a4, -1
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a1, $a4
	and	$a4, $a4, $a3
	bnez	$a4, .LBB0_30
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
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_8
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
	addi.d	$sp, $sp, -1648
	move	$s2, $a3
	move	$s4, $a2
	move	$s8, $a1
	beqz	$a4, .LBB3_2
# %bb.1:                                # %land.rhs
	ld.bu	$a1, $a4, 24
	bstrpick.d	$s0, $a1, 1, 1
	move	$s3, $zero
	st.w	$zero, $sp, 1500
	bnez	$s8, .LBB3_6
	b	.LBB3_3
.LBB3_2:
	move	$s0, $zero
	move	$s3, $zero
	st.w	$zero, $sp, 1500
	bnez	$s8, .LBB3_6
.LBB3_3:                                # %if.then
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_23
# %bb.4:                                # %if.end
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_923
# %bb.5:                                # %if.end10
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB3_936
.LBB3_6:                                # %if.end16
	andi	$s1, $s0, 1
	beqz	$s1, .LBB3_10
# %bb.7:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	lu12i.w	$a2, 4
	addi.d	$a0, $sp, 1320
	pcaddu18i	$ra, %call36(init_entity_converter)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_10
# %bb.8:                                # %if.then20
	move	$fp, $a0
	bnez	$s8, .LBB3_998
# %bb.9:                                # %if.then22
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB3_998
.LBB3_10:                               # %if.end25
	st.w	$zero, $sp, 1496
	st.d	$zero, $sp, 1504
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1512
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	beqz	$s4, .LBB3_20
# %bb.11:                               # %if.then29
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
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
	bne	$a0, $a1, .LBB3_988
.LBB3_13:                               # %if.end39
	lu12i.w	$a0, 2
	ori	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_988
# %bb.14:                               # %if.end43
	move	$s7, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_937
# %bb.15:                               # %if.end47
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_948
# %bb.16:                               # %if.end51
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, 0
	beqz	$a0, .LBB3_949
# %bb.17:                               # %if.end61
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	beqz	$a0, .LBB3_958
# %bb.18:                               # %if.end73
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	beqz	$a0, .LBB3_984
# %bb.19:                               # %if.end87
	stptr.w	$zero, $s7, 8196
	stptr.w	$zero, $s4, 8196
	stptr.w	$zero, $fp, 8196
	b	.LBB3_21
.LBB3_20:
	move	$fp, $zero
	move	$s4, $zero
	move	$s7, $zero
.LBB3_21:                               # %if.end91
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_24
# %bb.22:                               # %if.then93
	lu12i.w	$a3, 2
	addi.d	$a0, $sp, 1320
	move	$a1, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_23:                               # %if.then5
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB3_998
.LBB3_24:                               # %if.else95
	lu12i.w	$a2, 2
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
.LBB3_25:                               # %if.end97
	move	$s0, $a0
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	beqz	$s0, .LBB3_924
# %bb.26:                               # %while.body.lr.ph
	move	$s5, $zero
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	addi.d	$a1, $s7, 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $s4, 4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	lu12i.w	$a0, 468535
	ori	$a0, $a0, 815
	lu32i.d	$a0, 290921
	lu52i.d	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1654
	ori	$a0, $a0, 3433
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
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
	ori	$fp, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_27:                               # %if.else1725
                                        #   in Loop: Header=BB3_28 Depth=1
	move	$a0, $s3
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s8
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB3_925
.LBB3_28:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_47 Depth 2
                                        #       Child Loop BB3_717 Depth 3
                                        #       Child Loop BB3_811 Depth 3
                                        #       Child Loop BB3_783 Depth 3
                                        #       Child Loop BB3_832 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_788 Depth 3
                                        #       Child Loop BB3_695 Depth 3
                                        #       Child Loop BB3_793 Depth 3
                                        #       Child Loop BB3_801 Depth 3
                                        #       Child Loop BB3_804 Depth 3
                                        #       Child Loop BB3_444 Depth 3
                                        #       Child Loop BB3_686 Depth 3
                                        #       Child Loop BB3_819 Depth 3
                                        #       Child Loop BB3_880 Depth 3
                                        #         Child Loop BB3_897 Depth 4
                                        #       Child Loop BB3_621 Depth 3
                                        #       Child Loop BB3_140 Depth 3
                                        #       Child Loop BB3_460 Depth 3
	ld.bu	$s4, $s0, 0
	sltui	$a0, $s6, 1
	masknez	$s6, $s0, $a0
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	beqz	$s4, .LBB3_33
# %bb.29:                               # %land.rhs105.lr.ph
                                        #   in Loop: Header=BB3_28 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	move	$s8, $s0
	.p2align	4, , 16
.LBB3_30:                               # %land.rhs105
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $a5
	beqz	$a1, .LBB3_43
# %bb.31:                               # %while.body113
                                        #   in Loop: Header=BB3_30 Depth=2
	ld.bu	$s4, $s8, 1
	addi.d	$a1, $s8, 1
	move	$s8, $a1
	bnez	$s4, .LBB3_30
# %bb.32:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $a1
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $s0
.LBB3_34:                               # %while.end1711
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_41
# %bb.35:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_41
# %bb.36:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_41
# %bb.37:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	beqz	$s6, .LBB3_41
# %bb.38:                               # %land.lhs.true1713
                                        #   in Loop: Header=BB3_28 Depth=1
	bgeu	$s6, $s8, .LBB3_41
# %bb.39:                               # %if.then.i2471
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $s4, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$s0, $a1, 3
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_41
# %bb.40:                               # %if.then4.i2478
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a1, $s4, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s6
	ldx.d	$a0, $a1, $s0
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_41:                               # %if.end1721
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_27
# %bb.42:                               # %if.then1723
                                        #   in Loop: Header=BB3_28 Depth=1
	addi.d	$a0, $sp, 1320
	move	$a1, $s3
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s8
	lu12i.w	$a3, 2
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB3_28
	b	.LBB3_925
	.p2align	4, , 16
.LBB3_43:                               # %while.body116.preheader
                                        #   in Loop: Header=BB3_28 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s6, $s2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	b	.LBB3_47
.LBB3_44:                               # %sw.bb133
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s6, $a0
	move	$s2, $s6
	or	$s6, $a0, $a1
.LBB3_45:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	.p2align	4, , 16
.LBB3_46:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$s4, $s8, 0
	move	$fp, $s6
	move	$s6, $s2
	beqz	$s4, .LBB3_34
.LBB3_47:                               # %while.body116
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_717 Depth 3
                                        #       Child Loop BB3_811 Depth 3
                                        #       Child Loop BB3_783 Depth 3
                                        #       Child Loop BB3_832 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_788 Depth 3
                                        #       Child Loop BB3_695 Depth 3
                                        #       Child Loop BB3_793 Depth 3
                                        #       Child Loop BB3_801 Depth 3
                                        #       Child Loop BB3_804 Depth 3
                                        #       Child Loop BB3_444 Depth 3
                                        #       Child Loop BB3_686 Depth 3
                                        #       Child Loop BB3_819 Depth 3
                                        #       Child Loop BB3_880 Depth 3
                                        #         Child Loop BB3_897 Depth 4
                                        #       Child Loop BB3_621 Depth 3
                                        #       Child Loop BB3_140 Depth 3
                                        #       Child Loop BB3_460 Depth 3
	bnez	$s5, .LBB3_50
# %bb.48:                               # %while.body116
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$s4, $s0, .LBB3_50
# %bb.49:                               # %if.then122
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	ori	$a0, $zero, 32
	st.b	$a0, $s8, 0
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_50:                               # %if.end123
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s5, .LBB3_55
# %bb.51:                               # %if.end123
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 13
	bne	$s4, $a0, .LBB3_55
# %bb.52:                               # %if.then129
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$s8, $s8, 1
.LBB3_53:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
.LBB3_54:                               # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $fp
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_55:                               # %if.end131
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 23
	bltu	$a0, $fp, .LBB3_53
# %bb.56:                               # %if.end131
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_57:                               # %sw.bb162
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 60
	bne	$s4, $a0, .LBB3_297
# %bb.58:                               # %if.then166
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_62
# %bb.59:                               # %if.then.i802
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_61
# %bb.60:                               # %html_output_flush.exit.i823
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_61:                               # %if.end.i805
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_62:                               # %if.end3.i810
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_66
# %bb.63:                               # %if.then5.i812
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_65
# %bb.64:                               # %html_output_flush.exit15.i820
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_65:                               # %if.end9.i815
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_66:                               # %html_output_c.exit826
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_71
# %bb.67:                               # %html_output_c.exit826
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_71
# %bb.68:                               # %if.then.i828
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_70
# %bb.69:                               # %html_output_flush.exit.i837
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_70:                               # %if.end.i831
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_71:                               # %if.end169
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_639
# %bb.72:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 4
	beqz	$a0, .LBB3_639
# %bb.73:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_639
# %bb.74:                               # %land.lhs.true171
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s2, .LBB3_639
# %bb.75:                               # %if.then178
                                        #   in Loop: Header=BB3_47 Depth=2
	bgeu	$s2, $s8, .LBB3_638
# %bb.76:                               # %if.then.i842
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$fp, $a1, 3
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_78
# %bb.77:                               # %if.then4.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $s0, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s2
	ldx.d	$a0, $a1, $fp
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
.LBB3_78:                               # %if.end179
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_639
.LBB3_79:                               # %sw.bb1670
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	slli.w	$fp, $fp, 4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 1
	and	$a1, $a0, $a1
	bnez	$a1, .LBB3_248
# %bb.80:                               #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $s6
	b	.LBB3_384
.LBB3_81:                               # %sw.bb1540
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s5, $zero, 1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	beqz	$fp, .LBB3_568
# %bb.82:                               # %if.then1542
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $a5, 8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_1000
# %bb.83:                               # %if.end1546
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB3_999
# %bb.84:                               # %if.then.i2247
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	ld.w	$a2, $a1, 16
	st.w	$a2, $s2, 20
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	addi.d	$s4, $s2, 4
	vst	$vr0, $s2, 4
	st.d	$a2, $s2, 24
	st.d	$a1, $s2, 30
	ori	$a1, $zero, 34
	stptr.w	$a1, $s2, 8196
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	bnez	$fp, .LBB3_369
# %bb.85:                               # %if.then.i2247
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $sp, 1528
	ori	$a2, $zero, 59
	bne	$a1, $a2, .LBB3_369
# %bb.86:                               # %if.then.i2281.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $s2, 45
	st.d	$a0, $s2, 38
	ori	$a1, $zero, 45
	stptr.w	$a1, $s2, 8196
	b	.LBB3_372
.LBB3_87:                               # %sw.bb1290
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_318
# %bb.88:                               # %if.else1296
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s7, .LBB3_92
# %bb.89:                               # %if.then.i1926
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_91
# %bb.90:                               # %html_output_flush.exit.i1947
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_91:                               # %if.end.i1929
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_92:                               # %if.end3.i1934
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s2, .LBB3_96
# %bb.93:                               # %if.then5.i1936
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_95
# %bb.94:                               # %html_output_flush.exit15.i1944
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_95:                               # %if.end9.i1939
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s2, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_96:                               # %html_output_c.exit1950
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$a4, .LBB3_100
# %bb.97:                               # %if.then.i1952
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_99
# %bb.98:                               # %html_output_flush.exit.i1961
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_99:                               # %if.end.i1955
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_100:                              # %html_output_c.exit1964
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s2, $s6
	ori	$s6, $zero, 14
	b	.LBB3_46
.LBB3_101:                              # %sw.bb624
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB3_250
# %bb.102:                              # %if.then629
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 10
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	xor	$a1, $a0, $a2
	sltu	$a1, $zero, $a1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	maskeqz	$a3, $a3, $a1
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB3_107
# %bb.103:                              # %if.then629
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_107
# %bb.104:                              # %if.then.i1412
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_106
# %bb.105:                              # %html_output_flush.exit.i1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_106:                              # %if.end.i1415
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_107:                              # %if.end635
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	beqz	$s0, .LBB3_113
# %bb.108:                              # %land.lhs.true637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 4
	beqz	$a0, .LBB3_113
# %bb.109:                              # %land.lhs.true637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_113
# %bb.110:                              # %if.then642
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_112
# %bb.111:                              # %if.then647
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	addi.d	$fp, $a1, -8
	ldx.d	$a0, $a0, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB3_112:                              # %if.end649
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s8
.LBB3_113:                              # %if.end649
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	ori	$s0, $zero, 10
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	bnez	$a0, .LBB3_921
# %bb.114:                              # %if.then654
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_681
# %bb.115:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_921
.LBB3_116:                              # %sw.bb357
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_262
# %bb.117:                              # %if.then361
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_121
# %bb.118:                              # %if.then.i1098
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_120
# %bb.119:                              # %html_output_flush.exit.i1119
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_120:                              # %if.end.i1101
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_121:                              # %if.end3.i1106
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_125
# %bb.122:                              # %if.then5.i1108
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_124
# %bb.123:                              # %html_output_flush.exit15.i1116
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_124:                              # %if.end9.i1111
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_125:                              # %html_output_c.exit1122
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	b	.LBB3_165
.LBB3_126:                              # %sw.bb1650
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 5
	ori	$s2, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_319
# %bb.127:                              # %if.then1652
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $fp, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_129
# %bb.128:                              # %if.then.i2411
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $fp, 8196
.LBB3_129:                              # %html_output_flush.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB3_922
.LBB3_130:                              # %sw.bb138
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_265
# %bb.131:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_132:                              # %sw.bb975
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 35
	bne	$s4, $a0, .LBB3_266
# %bb.133:                              # %if.then979
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	b	.LBB3_521
.LBB3_134:                              # %sw.bb997
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s4, $a0, .LBB3_278
# %bb.135:                              # %if.then1001
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	stx.b	$zero, $fp, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_446
# %bb.136:                              # %for.cond1008.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_368
# %bb.137:                              # %for.body1012.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB3_140
	.p2align	4, , 16
.LBB3_138:                              #   in Loop: Header=BB3_140 Depth=3
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
.LBB3_139:                              # %if.end1030
                                        #   in Loop: Header=BB3_140 Depth=3
	addi.d	$s2, $s2, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB3_368
.LBB3_140:                              # %for.body1012
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a0, $s4, $s2
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	lu12i.w	$a2, 2
	beqz	$s7, .LBB3_144
# %bb.141:                              # %if.then.i1642
                                        #   in Loop: Header=BB3_140 Depth=3
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a2, .LBB3_143
# %bb.142:                              # %html_output_flush.exit.i1663
                                        #   in Loop: Header=BB3_140 Depth=3
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $zero
.LBB3_143:                              # %if.end.i1645
                                        #   in Loop: Header=BB3_140 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_144:                              # %if.end3.i1650
                                        #   in Loop: Header=BB3_140 Depth=3
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_148
# %bb.145:                              # %if.then5.i1652
                                        #   in Loop: Header=BB3_140 Depth=3
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a2, .LBB3_147
# %bb.146:                              # %html_output_flush.exit15.i1660
                                        #   in Loop: Header=BB3_140 Depth=3
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_147:                              # %if.end9.i1655
                                        #   in Loop: Header=BB3_140 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_148:                              # %html_output_c.exit1666
                                        #   in Loop: Header=BB3_140 Depth=3
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_138
# %bb.149:                              # %html_output_c.exit1666
                                        #   in Loop: Header=BB3_140 Depth=3
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_139
# %bb.150:                              # %if.then1026
                                        #   in Loop: Header=BB3_140 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_139
.LBB3_151:                              # %sw.bb1425
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_343
# %bb.152:                              # %sw.bb1425
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	bne	$s4, $a0, .LBB3_351
# %bb.153:                              # %if.then1429
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_512
# %bb.154:                              # %if.then1434
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s6, $zero, 8
	lu12i.w	$a5, 2
	b	.LBB3_637
.LBB3_155:                              # %sw.bb294
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_284
# %bb.156:                              # %if.then298
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_160
# %bb.157:                              # %if.then.i994
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_159
# %bb.158:                              # %html_output_flush.exit.i1015
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_159:                              # %if.end.i997
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_160:                              # %if.end3.i1002
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_164
# %bb.161:                              # %if.then5.i1004
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_163
# %bb.162:                              # %html_output_flush.exit15.i1012
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_163:                              # %if.end9.i1007
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_164:                              # %html_output_c.exit1018
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
.LBB3_165:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 5
	ori	$s2, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_166:                              # %sw.bb600
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB3_320
# %bb.167:                              # %if.then.i1384
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s4, 2
	ldptr.w	$a1, $s7, 8196
	ldx.w	$fp, $a2, $a3
	lu12i.w	$a5, 2
	bne	$a1, $a5, .LBB3_169
# %bb.168:                              # %html_output_flush.exit.i1393
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s7, 0
	move	$s0, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $s0
	ori	$s0, $zero, 10
	move	$a1, $zero
.LBB3_169:                              # %if.end.i1387
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s7, 8196
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a2, $a1
	ld.bu	$s4, $s8, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_321
	b	.LBB3_325
.LBB3_170:                              # %sw.bb150
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_315
# %bb.171:                              # %if.else160
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_175
# %bb.172:                              # %if.then.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_174
# %bb.173:                              # %html_output_flush.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_174:                              # %if.end.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_175:                              # %if.end3.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_592
# %bb.176:                              # %if.then5.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_178
# %bb.177:                              # %html_output_flush.exit15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_178:                              # %if.end9.i
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_179:                              # %sw.bb216
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	bnez	$s2, .LBB3_300
# %bb.180:                              # %sw.bb216
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 33
	bne	$s4, $a0, .LBB3_300
# %bb.181:                              # %if.then223
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_185
# %bb.182:                              # %if.then.i886
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_184
# %bb.183:                              # %html_output_flush.exit.i895
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_184:                              # %if.end.i889
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_185:                              # %html_output_c.exit898
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_190
# %bb.186:                              # %html_output_c.exit898
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_190
# %bb.187:                              # %if.then.i900
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_189
# %bb.188:                              # %html_output_flush.exit.i909
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_189:                              # %if.end.i903
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_190:                              # %if.end226
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_193
# %bb.191:                              # %land.lhs.true228
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_193
# %bb.192:                              # %if.then232
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $fp, 8196
.LBB3_193:                              # %if.end235
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 2
	b	.LBB3_46
.LBB3_194:                              # %sw.bb372
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 6
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB3_346
# %bb.195:                              # %sw.bb372
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 5
	bne	$fp, $a0, .LBB3_347
# %bb.196:                              # %land.lhs.true375
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_347
# %bb.197:                              # %if.then380
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_200
# %bb.198:                              # %land.lhs.true382
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_200
# %bb.199:                              # %if.then386
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s7, 8196
.LBB3_200:                              # %if.end389
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_203
# %bb.201:                              # %land.lhs.true391
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_203
# %bb.202:                              # %if.then395
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_203:                              # %if.end398
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s6, $zero, 8
	beq	$a0, $a1, .LBB3_565
# %bb.204:                              # %if.then401
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_208
# %bb.205:                              # %if.then.i1124
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_207
# %bb.206:                              # %html_output_flush.exit.i1145
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_207:                              # %if.end.i1127
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_208:                              # %if.end3.i1132
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_680
.LBB3_209:                              # %if.then5.i1134
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_211
# %bb.210:                              # %html_output_flush.exit15.i1142
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_211:                              # %if.end9.i1137
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
	ori	$s0, $zero, 10
	b	.LBB3_664
.LBB3_212:                              # %sw.bb1577
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -34
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB3_436
# %bb.213:                              # %sw.bb1577
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	ori	$fp, $zero, 3
	add.d	$a0, $a1, $a0
	ori	$s2, $zero, 20
	jr	$a0
.LBB3_214:                              # %if.then1607
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_216
# %bb.215:                              # %if.then1607
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_435
.LBB3_216:                              # %if.else1614
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_435
# %bb.217:                              # %if.then.i2367
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_219
# %bb.218:                              # %html_output_flush.exit.i2376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_219:                              # %if.end.i2370
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	ori	$a0, $zero, 34
	b	.LBB3_434
.LBB3_220:                              # %sw.bb1150
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_326
# %bb.221:                              # %if.else1163
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s4, $a0, .LBB3_338
	b	.LBB3_330
.LBB3_222:                              # %sw.bb1370
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_365
# %bb.223:                              # %if.end1374
                                        #   in Loop: Header=BB3_47 Depth=2
	ext.w.b	$a0, $s4
	bltz	$a0, .LBB3_381
# %bb.224:                              # %if.then1378
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(table_order)
	addi.d	$a1, $a1, %pc_lo12(table_order)
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 9
	pcalau12i	$a1, %pc_hi20(decrypt_tables)
	addi.d	$a1, $a1, %pc_lo12(decrypt_tables)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $a0, $a1
	ori	$a0, $zero, 255
	bne	$a1, $a0, .LBB3_404
# %bb.225:                              # %if.then1387
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$fp, $s8, 1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $s4, -1
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 42
	bltu	$a1, $a0, .LBB3_419
# %bb.226:                              # %if.then1387
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_227:                              # %sw.bb1393
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_231
# %bb.228:                              # %if.then.i1983
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_230
# %bb.229:                              # %html_output_flush.exit.i2004
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_230:                              # %if.end.i1986
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_231:                              # %if.end3.i1991
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_235
# %bb.232:                              # %if.then5.i1993
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_234
# %bb.233:                              # %html_output_flush.exit15.i2001
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_234:                              # %if.end9.i1996
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_235:                              # %html_output_c.exit2007
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_780
# %bb.236:                              # %if.then.i2009
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_238
# %bb.237:                              # %html_output_flush.exit.i2018
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_238:                              # %if.end.i2012
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	b	.LBB3_419
.LBB3_239:                              # %sw.bb1313
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_317
# %bb.240:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	ori	$s6, $zero, 1
	b	.LBB3_922
.LBB3_241:                              # %sw.bb
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$s2, $s6
	ori	$s6, $zero, 17
	b	.LBB3_46
.LBB3_242:                              # %sw.bb1656
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_355
# %bb.243:                              # %sw.bb1656
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_361
# %bb.244:                              # %if.then1659
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	beqz	$s2, .LBB3_567
# %bb.245:                              # %if.then.i2415
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_247
# %bb.246:                              # %html_output_flush.exit.i2424
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_247:                              # %if.end.i2418
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	st.b	$fp, $a1, 4
	b	.LBB3_569
.LBB3_248:                              # %if.then1680
                                        #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB3_382
# %bb.249:                              # %if.else1692
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -87
	b	.LBB3_383
.LBB3_250:                              # %if.else659
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_442
# %bb.251:                              # %if.else683
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_253
# %bb.252:                              # %land.lhs.true685
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_693
.LBB3_253:                              # %if.else752
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s2, $zero, 1
	beqz	$s4, .LBB3_920
# %bb.254:                              # %if.then754
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $fp
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $fp, $a1
	ori	$a3, $zero, 3584
	add.d	$a3, $sp, $a3
	ld.hu	$a3, $a3, 0
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 97
	beq	$a3, $a0, .LBB3_689
# %bb.255:                              # %if.else819
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_714
.LBB3_256:                              # %if.else836
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_781
# %bb.257:                              # %if.else898
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_809
# %bb.258:                              # %if.else932
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_920
# %bb.259:                              # %if.then937
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_value)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_907
# %bb.260:                              # %land.lhs.true940
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_907
# %bb.261:                              # %if.then944
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	b	.LBB3_844
.LBB3_262:                              # %if.else363
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s6, $zero, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_264
# %bb.263:                              # %if.then366
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_264:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_265:                              # %if.then146
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s2, $s6
	ori	$s6, $zero, 5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_266:                              # %if.else981
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s1, .LBB3_283
# %bb.267:                              # %if.else984
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	addi.d	$a2, $sp, 1528
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	bne	$s6, $a0, .LBB3_270
# %bb.268:                              # %if.else984
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $a3, .LBB3_270
# %bb.269:                              # %if.then990
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_270:                              # %if.end994
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_274
# %bb.271:                              # %if.then.i1616
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_273
# %bb.272:                              # %html_output_flush.exit.i1637
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_273:                              # %if.end.i1619
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_274:                              # %if.end3.i1624
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_592
# %bb.275:                              # %if.then5.i1626
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_277
# %bb.276:                              # %html_output_flush.exit15.i1634
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_277:                              # %if.end9.i1629
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_278:                              # %if.else1083
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 8
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_281
# %bb.279:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 58
	beq	$s4, $a0, .LBB3_281
# %bb.280:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 95
	bne	$s4, $a0, .LBB3_605
.LBB3_281:                              # %land.lhs.true1103
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 1023
	bltu	$a0, $fp, .LBB3_607
.LBB3_282:                              # %if.then1106
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	stx.b	$s4, $fp, $a0
	addi.d	$a0, $fp, 1
	addi.d	$s8, $s8, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_283:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
	ori	$s6, $zero, 4
	b	.LBB3_46
.LBB3_284:                              # %if.else302
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_385
# %bb.285:                              # %if.else314
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s4, $a0, .LBB3_523
# %bb.286:                              # %if.then318
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_290
# %bb.287:                              # %if.then.i1020
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_289
# %bb.288:                              # %html_output_flush.exit.i1041
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_289:                              # %if.end.i1023
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_290:                              # %if.end3.i1028
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_294
# %bb.291:                              # %if.then5.i1030
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_293
# %bb.292:                              # %html_output_flush.exit15.i1038
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_293:                              # %if.end9.i1033
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_294:                              # %html_output_c.exit1044
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_296
# %bb.295:                              # %if.then321
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
.LBB3_296:                              # %if.end325
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 11
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_297:                              # %if.else181
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	ori	$s2, $zero, 1
	bnez	$a0, .LBB3_316
# %bb.298:                              # %if.else190
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_543
# %bb.299:                              # %if.then194
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_300:                              # %if.else237
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s4, $a0, .LBB3_386
# %bb.301:                              # %if.then241
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_305
# %bb.302:                              # %if.then.i914
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_304
# %bb.303:                              # %html_output_flush.exit.i935
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_304:                              # %if.end.i917
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_305:                              # %if.end3.i922
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_309
# %bb.306:                              # %if.then5.i924
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_308
# %bb.307:                              # %html_output_flush.exit15.i932
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_308:                              # %if.end9.i927
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_309:                              # %html_output_c.exit938
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_314
# %bb.310:                              # %html_output_c.exit938
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_314
# %bb.311:                              # %if.then.i940
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_313
# %bb.312:                              # %html_output_flush.exit.i949
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_313:                              # %if.end.i943
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_314:                              # %if.end244
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s2, $a0
	ori	$s6, $zero, 5
	ori	$s2, $zero, 11
	b	.LBB3_46
.LBB3_315:                              # %if.then158
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s2, $s6
.LBB3_316:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 6
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_317:                              # %if.end1318
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a1, $s4, 2
	ld.bu	$a2, $s8, 1
	pcalau12i	$a0, %pc_hi20(base64_chars)
	addi.d	$a0, $a0, %pc_lo12(base64_chars)
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$s2, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
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
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 8
	ori	$s6, $zero, 16
	b	.LBB3_922
.LBB3_318:                              # %if.then1294
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$s8, $s8, 4
	ori	$s6, $zero, 15
	b	.LBB3_922
.LBB3_319:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB3_46
.LBB3_320:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_325
.LBB3_321:                              # %if.then609
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_325
# %bb.322:                              # %if.then.i1398
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_324
# %bb.323:                              # %html_output_flush.exit.i1407
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_324:                              # %if.end.i1401
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	ld.bu	$s4, $s8, 0
.LBB3_325:                              # %if.end617
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -62
	sltui	$a0, $a0, 1
	masknez	$a1, $s6, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$s2, $a2, $a1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$s6, $a0, $a1
	b	.LBB3_45
.LBB3_326:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	beq	$s4, $a0, .LBB3_330
# %bb.327:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 120
	beq	$s4, $a0, .LBB3_329
# %bb.328:                              # %land.lhs.true1153
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 88
	bne	$s4, $a0, .LBB3_338
.LBB3_329:                              # %if.then1161
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB3_522
.LBB3_330:                              # %if.then1167
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_333
# %bb.331:                              # %if.then1167
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	addi.d	$a1, $sp, 1528
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_333
# %bb.332:                              # %if.then1173
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	stx.b	$fp, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_333:                              # %if.end1178
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_420
# %bb.334:                              # %if.then1180
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 127
	blt	$a0, $fp, .LBB3_593
# %bb.335:                              # %if.else1194
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 128
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_337
# %bb.336:                              # %if.end1196.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_337:                              # %if.end1196
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	bnez	$s7, .LBB3_421
	b	.LBB3_424
.LBB3_338:                              # %if.else1238
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a0, $a1, 2048
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$fp, $a2, 0
	bnez	$a0, .LBB3_341
# %bb.339:                              # %lor.lhs.false1246
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_584
# %bb.340:                              # %lor.lhs.false1246
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB3_584
.LBB3_341:                              # %if.then1256
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$a0, .LBB3_519
# %bb.342:                              # %if.else1273
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -87
	b	.LBB3_520
.LBB3_343:                              # %if.then1450
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_515
# %bb.344:                              # %if.then1450
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_515
# %bb.345:                              # %if.then1455
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s6, $zero, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_637
.LBB3_346:                              # %land.lhs.true406
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_558
.LBB3_347:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_484
# %bb.348:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	beq	$s4, $a0, .LBB3_471
# %bb.349:                              # %if.else434
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_499
# %bb.350:                              # %if.then438
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 3
	ori	$s6, $zero, 9
	b	.LBB3_664
.LBB3_351:                              # %if.else1467
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a5, 2
	and	$a1, $a0, $a5
	ori	$a0, $zero, 62
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB3_517
# %bb.352:                              # %if.else1467
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$a1, .LBB3_517
# %bb.353:                              # %if.else1506
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 44
	bne	$s4, $a0, .LBB3_634
# %bb.354:                              # %if.then1510
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 19
	b	.LBB3_637
.LBB3_355:                              # %if.then1664
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_566
# %bb.356:                              # %if.then.i2429
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_358
# %bb.357:                              # %html_output_flush.exit.i2438
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_358:                              # %if.then.i2443
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$fp, $s2, 4
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s2, 8196
	ori	$a1, $zero, 37
	stx.b	$a1, $fp, $a0
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_360
# %bb.359:                              # %html_output_flush.exit.i2452
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	move	$a1, $fp
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_360:                              # %if.end.i2446
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $s2, 8196
	stx.b	$a1, $fp, $a0
	b	.LBB3_569
.LBB3_361:                              # %if.else1667
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s2, .LBB3_568
# %bb.362:                              # %if.then.i2457
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_364
# %bb.363:                              # %html_output_flush.exit.i2466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_364:                              # %if.end.i2460
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	ori	$a0, $zero, 37
	st.b	$a0, $a1, 4
	b	.LBB3_569
.LBB3_365:                              # %if.then1373
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 13
	ori	$s2, $zero, 1
	beqz	$a4, .LBB3_570
# %bb.366:                              # %if.then.i1966
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $a4, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4086
	blt	$a2, $a0, .LBB3_582
# %bb.367:                              # %if.end.thread.i1978
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $a4, 0
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a4, 8196
	b	.LBB3_583
.LBB3_368:                              # %for.end1033
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	b	.LBB3_653
.LBB3_369:                              # %if.then.i2281
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a1, 1
	ori	$a2, $a1, 4061
	ori	$a1, $zero, 34
	bge	$a2, $fp, .LBB3_372
# %bb.370:                              # %if.end.thread.i2302
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 34
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a0, $fp, 31, 13
	stptr.w	$zero, $s2, 8196
	beqz	$a0, .LBB3_372
# %bb.371:                              # %html_output_flush.exit18.i2297
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $sp, 1528
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $s2, $a0
	b	.LBB3_373
.LBB3_372:                              # %if.else.i2289
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a0, $s4, $a1
	addi.d	$a1, $sp, 1528
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $s2, $a0
	add.w	$a0, $a0, $fp
	stptr.w	$a0, $s2, 8196
.LBB3_373:                              # %if.then.i2308
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$a0, $a1, .LBB3_375
# %bb.374:                              # %html_output_flush.exit.i2317
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_375:                              # %html_output_c.exit2320
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s2, 8196
	stx.b	$s0, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 1528
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ldptr.w	$a2, $s2, 8196
	beqz	$a0, .LBB3_403
# %bb.376:                              # %if.then.i2322
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4062
	blt	$a2, $a0, .LBB3_378
# %bb.377:                              # %if.end.thread.i2334
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s2, 8196
.LBB3_378:                              # %html_output_str.exit2337
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	xvld	$xr0, $a0, 0
	ld.h	$a0, $a0, 32
	add.d	$a1, $s4, $a2
	xvstx	$xr0, $s4, $a2
	st.h	$a0, $a1, 32
	ori	$a0, $a5, 4
	ldx.w	$a0, $s2, $a0
	addi.w	$a2, $a0, 34
	stptr.w	$a2, $s2, 8196
	bne	$a2, $a5, .LBB3_380
.LBB3_379:                              # %html_output_flush.exit.i2348
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	move	$a1, $s4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a2, $zero
.LBB3_380:                              # %html_output_c.exit2351
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a2, 1
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	stptr.w	$a0, $s2, 8196
	stx.b	$s0, $s4, $a2
	move	$s2, $s6
	ori	$s6, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_381:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_419
.LBB3_382:                              # %if.then1688
                                        #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -48
.LBB3_383:                              # %if.end1704
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 23
.LBB3_384:                              # %if.end1704
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	move	$s2, $s6
	or	$s6, $a1, $a0
	b	.LBB3_45
.LBB3_385:                              # %if.then310
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	ori	$s6, $zero, 5
	ori	$s2, $zero, 10
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_386:                              # %if.else248
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_557
# %bb.387:                              # %if.then256
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_391
# %bb.388:                              # %if.then.i954
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_390
# %bb.389:                              # %html_output_flush.exit.i975
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_390:                              # %if.end.i957
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_391:                              # %if.end3.i962
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_395
# %bb.392:                              # %if.then5.i964
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_394
# %bb.393:                              # %html_output_flush.exit15.i972
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_394:                              # %if.end9.i967
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_395:                              # %html_output_c.exit978
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_400
# %bb.396:                              # %if.then265
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_400
# %bb.397:                              # %if.then.i980
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s0, $a1, $a2
	bne	$a0, $a5, .LBB3_399
# %bb.398:                              # %html_output_flush.exit.i989
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_399:                              # %if.end.i983
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_400:                              # %if.end273
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s2, .LBB3_402
# %bb.401:                              # %if.then276
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s2, $a1
.LBB3_402:                              # %if.end286
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	addi.d	$s8, $s8, 1
	move	$s2, $s6
	ori	$s6, $zero, 7
	b	.LBB3_46
.LBB3_403:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	beq	$a2, $a5, .LBB3_379
	b	.LBB3_380
.LBB3_404:                              # %if.else1398
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_408
# %bb.405:                              # %if.then.i2183
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_407
# %bb.406:                              # %html_output_flush.exit.i2204
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_407:                              # %if.end.i2186
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_408:                              # %if.end3.i2191
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_412
# %bb.409:                              # %if.then5.i2193
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_411
# %bb.410:                              # %html_output_flush.exit15.i2201
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_411:                              # %if.end9.i2196
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_412:                              # %if.else1415
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $fp, 128
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_414
# %bb.413:                              # %if.end1417.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_414:                              # %if.end1417
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_418
# %bb.415:                              # %if.then.i2216
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_417
# %bb.416:                              # %html_output_flush.exit.i2225
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_417:                              # %if.end.i2219
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_418:                              # %if.end1421
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
.LBB3_419:                              # %if.end1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a0, 0
	bstrpick.d	$a1, $a1, 62, 57
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s8, $fp, 1
	addi.d	$s4, $s4, -1
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	move	$s2, $s6
	ori	$s6, $zero, 16
	b	.LBB3_46
.LBB3_420:                              # %if.else1212
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$a1, $fp, 255
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
	beqz	$s7, .LBB3_424
.LBB3_421:                              # %if.then.i1874
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_423
# %bb.422:                              # %html_output_flush.exit.i1895
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_423:                              # %if.end.i1877
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_424:                              # %if.end3.i1882
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_817
# %bb.425:                              # %if.then5.i1884
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_427
# %bb.426:                              # %html_output_flush.exit15.i1892
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_427:                              # %if.end9.i1887
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	b	.LBB3_817
.LBB3_428:                              # %if.then1587
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	ori	$fp, $zero, 23
	ori	$s2, $zero, 22
	b	.LBB3_599
.LBB3_429:                              # %if.then1593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	beqz	$a0, .LBB3_435
# %bb.430:                              # %if.else1600
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_435
# %bb.431:                              # %if.then.i2353
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_433
# %bb.432:                              # %html_output_flush.exit.i2362
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_433:                              # %if.end.i2356
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	ori	$a0, $zero, 39
.LBB3_434:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	st.b	$a0, $a1, 4
.LBB3_435:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
	b	.LBB3_599
.LBB3_436:                              # %if.else1617
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_597
# %bb.437:                              # %if.else1617
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_597
# %bb.438:                              # %if.else1637
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_598
# %bb.439:                              # %if.then.i2395
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_441
# %bb.440:                              # %html_output_flush.exit.i2404
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_441:                              # %if.end.i2398
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_598
.LBB3_442:                              # %if.then664
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$s3, $sp, 1496
	ori	$s2, $zero, 1
	blt	$s3, $s2, .LBB3_640
# %bb.443:                              # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 1504
	move	$fp, $zero
	slli.d	$s0, $s3, 3
	.p2align	4, , 16
.LBB3_444:                              # %for.body.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s6, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_682
# %bb.445:                              # %for.cond.i
                                        #   in Loop: Header=BB3_444 Depth=3
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB3_444
	b	.LBB3_688
.LBB3_446:                              # %if.else1034
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s7, .LBB3_450
# %bb.447:                              # %if.then.i1668
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_449
# %bb.448:                              # %html_output_flush.exit.i1689
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_449:                              # %if.end.i1671
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_450:                              # %if.end3.i1676
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_454
# %bb.451:                              # %if.then5.i1678
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_453
# %bb.452:                              # %html_output_flush.exit15.i1686
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_453:                              # %if.end9.i1681
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_454:                              # %html_output_c.exit1692
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_457
# %bb.455:                              # %html_output_c.exit1692
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_457
# %bb.456:                              # %if.then1040
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_457:                              # %if.end1044
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_641
# %bb.458:                              # %for.body1048.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_460
	.p2align	4, , 16
.LBB3_459:                              # %if.end1067
                                        #   in Loop: Header=BB3_460 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_642
.LBB3_460:                              # %for.body1048
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	beqz	$s7, .LBB3_464
# %bb.461:                              # %if.then.i1694
                                        #   in Loop: Header=BB3_460 Depth=3
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_463
# %bb.462:                              # %html_output_flush.exit.i1715
                                        #   in Loop: Header=BB3_460 Depth=3
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_463:                              # %if.end.i1697
                                        #   in Loop: Header=BB3_460 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_464:                              # %if.end3.i1702
                                        #   in Loop: Header=BB3_460 Depth=3
	beqz	$s4, .LBB3_468
# %bb.465:                              # %if.then5.i1704
                                        #   in Loop: Header=BB3_460 Depth=3
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_467
# %bb.466:                              # %html_output_flush.exit15.i1712
                                        #   in Loop: Header=BB3_460 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_467:                              # %if.end9.i1707
                                        #   in Loop: Header=BB3_460 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_468:                              # %html_output_c.exit1718
                                        #   in Loop: Header=BB3_460 Depth=3
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_459
# %bb.469:                              # %html_output_c.exit1718
                                        #   in Loop: Header=BB3_460 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_459
# %bb.470:                              # %if.then1063
                                        #   in Loop: Header=BB3_460 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_459
.LBB3_471:                              # %if.then444
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_654
# %bb.472:                              # %if.else456
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s2, $sp, 1528
	bnez	$a0, .LBB3_571
# %bb.473:                              # %if.then461
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_477
# %bb.474:                              # %if.then.i1202
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_476
# %bb.475:                              # %html_output_flush.exit.i1223
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_476:                              # %if.end.i1205
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_477:                              # %if.end3.i1210
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_481
# %bb.478:                              # %if.then5.i1212
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_480
# %bb.479:                              # %html_output_flush.exit15.i1220
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_480:                              # %if.end9.i1215
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_481:                              # %html_output_c.exit1226
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_483
# %bb.482:                              # %if.then464
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a2, $s2
	move	$a2, $a0
.LBB3_483:                              # %if.end468
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	stx.b	$zero, $a2, $s2
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s6, $zero, 8
	b	.LBB3_498
.LBB3_484:                              # %if.then489
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_665
# %bb.485:                              # %if.else501
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s2, $sp, 1528
	bnez	$a0, .LBB3_571
# %bb.486:                              # %if.else501
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_571
# %bb.487:                              # %if.then506
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_491
# %bb.488:                              # %if.then.i1280
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_490
# %bb.489:                              # %html_output_flush.exit.i1301
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_490:                              # %if.end.i1283
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_491:                              # %if.end3.i1288
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_495
# %bb.492:                              # %if.then5.i1290
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_494
# %bb.493:                              # %html_output_flush.exit15.i1298
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_494:                              # %if.end9.i1293
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_495:                              # %html_output_c.exit1304
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_497
# %bb.496:                              # %if.then509
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a2, $s2
	move	$a2, $a0
.LBB3_497:                              # %if.end513
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	stx.b	$zero, $a2, $s2
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s6, $zero, 8
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
.LBB3_498:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_664
.LBB3_499:                              # %if.else530
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_600
# %bb.500:                              # %if.else530
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 1
	ldx.hu	$a1, $a1, $a2
	and	$a1, $a1, $a5
	bnez	$a1, .LBB3_600
# %bb.501:                              # %if.else572
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$fp, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s2, $sp, 1528
	beqz	$s7, .LBB3_505
# %bb.502:                              # %if.then.i1358
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_504
# %bb.503:                              # %html_output_flush.exit.i1379
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_504:                              # %if.end.i1361
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_505:                              # %if.end3.i1366
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_509
# %bb.506:                              # %if.then5.i1368
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_508
# %bb.507:                              # %html_output_flush.exit15.i1376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_508:                              # %if.end9.i1371
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_509:                              # %html_output_c.exit1382
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_511
# %bb.510:                              # %if.then582
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.b	$a0, $s8, 0
	addi.w	$a1, $a2, 1
	stx.b	$a0, $a2, $s2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_511:                              # %if.end586
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_581
.LBB3_512:                              # %if.else1436
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_514
# %bb.513:                              # %if.then1439
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_514:                              # %if.end1443
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	b	.LBB3_636
.LBB3_515:                              # %if.else1457
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_636
# %bb.516:                              # %if.then1460
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_636
.LBB3_517:                              # %if.then1479
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ori	$a6, $zero, 2
	ori	$a0, $zero, 5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	bne	$a2, $a6, .LBB3_602
# %bb.518:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s6, $zero, 8
	b	.LBB3_637
.LBB3_519:                              # %if.then1269
                                        #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	addi.d	$a0, $a0, -48
.LBB3_520:                              # %if.end1283
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	sltui	$a1, $fp, 1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a2, $a6, 4
	slli.d	$a3, $a6, 3
	alsl.w	$a3, $a6, $a3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
.LBB3_521:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
.LBB3_522:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
	ori	$s6, $zero, 12
	b	.LBB3_46
.LBB3_523:                              # %if.else327
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	bnez	$s2, .LBB3_532
# %bb.524:                              # %if.then330
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_528
# %bb.525:                              # %if.then.i1046
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_527
# %bb.526:                              # %html_output_flush.exit.i1067
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_527:                              # %if.end.i1049
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_528:                              # %if.end3.i1054
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_532
# %bb.529:                              # %if.then5.i1056
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_531
# %bb.530:                              # %html_output_flush.exit15.i1064
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_531:                              # %if.end9.i1059
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_532:                              # %if.end331
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_536
# %bb.533:                              # %if.then.i1072
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_535
# %bb.534:                              # %html_output_flush.exit.i1093
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_535:                              # %if.end.i1075
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_536:                              # %if.end3.i1080
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_540
# %bb.537:                              # %if.then5.i1082
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_539
# %bb.538:                              # %html_output_flush.exit15.i1090
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_539:                              # %if.end9.i1085
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_540:                              # %html_output_c.exit1096
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s2, .LBB3_542
# %bb.541:                              # %if.then341
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s2, $a1
.LBB3_542:                              # %if.end352
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	addi.d	$s8, $s8, 1
	move	$s2, $s6
	ori	$s6, $zero, 8
	b	.LBB3_46
.LBB3_543:                              # %if.else196
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_547
# %bb.544:                              # %if.then.i846
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_546
# %bb.545:                              # %html_output_flush.exit.i867
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_546:                              # %if.end.i849
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_547:                              # %if.end3.i854
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_551
# %bb.548:                              # %if.then5.i856
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_550
# %bb.549:                              # %html_output_flush.exit15.i864
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_550:                              # %if.end9.i859
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s2, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_551:                              # %html_output_c.exit870
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_556
# %bb.552:                              # %if.then203
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_556
# %bb.553:                              # %if.then.i872
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_555
# %bb.554:                              # %html_output_flush.exit.i881
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_555:                              # %if.end.i875
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_556:                              # %if.end211
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s2, $s6
	ori	$s6, $zero, 1
	b	.LBB3_46
.LBB3_557:                              # %if.else288
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s2, $a0
	ori	$s6, $zero, 5
	ori	$s2, $zero, 8
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_558:                              # %if.then411
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_561
# %bb.559:                              # %land.lhs.true413
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_561
# %bb.560:                              # %if.then417
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s7, 8196
.LBB3_561:                              # %if.end420
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_564
# %bb.562:                              # %land.lhs.true422
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_564
# %bb.563:                              # %if.then426
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_564:                              # %if.end429
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s6, $zero, 8
	bne	$a0, $a1, .LBB3_675
.LBB3_565:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_664
.LBB3_566:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
.LBB3_567:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
.LBB3_568:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB3_569:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
	ori	$s6, $zero, 20
	b	.LBB3_46
.LBB3_570:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_571:                              # %if.else519
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_575
# %bb.572:                              # %if.then.i1306
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_574
# %bb.573:                              # %html_output_flush.exit.i1327
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_574:                              # %if.end.i1309
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_575:                              # %if.end3.i1314
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_579
# %bb.576:                              # %if.then5.i1238
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_578
# %bb.577:                              # %html_output_flush.exit15.i1246
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_578:                              # %if.end9.i1241
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_579:                              # %html_output_c.exit1252
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_581
# %bb.580:                              # %if.then477
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a2, $s2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_581:                              # %if.end586
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	b	.LBB3_663
.LBB3_582:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
.LBB3_583:                              # %if.else.i1973
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	add.d	$a3, $fp, $a2
	stx.d	$a1, $fp, $a2
	st.h	$a0, $a3, 8
	ori	$a0, $a5, 4
	ldx.w	$a0, $a4, $a0
	addi.d	$a0, $a0, 10
	stptr.w	$a0, $a4, 8196
	b	.LBB3_46
.LBB3_584:                              # %if.else1285
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s7, .LBB3_588
# %bb.585:                              # %if.then.i1900
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_587
# %bb.586:                              # %html_output_flush.exit.i1921
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_587:                              # %if.end.i1903
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_588:                              # %if.end3.i1908
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_592
# %bb.589:                              # %if.then5.i1910
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_591
# %bb.590:                              # %html_output_flush.exit15.i1918
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_591:                              # %if.end9.i1913
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_592:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	b	.LBB3_46
.LBB3_593:                              # %if.else1199
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 280
	ori	$a1, $zero, 9
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 289
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB3_724
# %bb.594:                              # %if.then.i1827
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	ldptr.w	$a2, $s7, 8196
	addi.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_719
# %bb.595:                              # %if.then.i1827
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s0, $a0, .LBB3_719
# %bb.596:                              # %if.end.thread.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s7, 8196
	blt	$s0, $fp, .LBB3_722
	b	.LBB3_723
.LBB3_597:                              # %if.then1629
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_698
.LBB3_598:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s6
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_599:                              # %if.end1643
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB3_54
.LBB3_600:                              # %if.then541
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_703
# %bb.601:                              # %if.then544
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$fp, $zero, 5
	ori	$s6, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_664
.LBB3_602:                              # %if.else1483
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 1023
	blt	$a2, $fp, .LBB3_604
# %bb.603:                              # %if.then1486
                                        #   in Loop: Header=BB3_47 Depth=2
	sltui	$a1, $a1, 1
	addi.w	$a2, $fp, 1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a1
	ori	$a6, $zero, 62
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a3
	addi.d	$a3, $sp, 1528
	stx.b	$a1, $fp, $a3
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
.LBB3_604:                              # %if.end1503
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 18
	b	.LBB3_637
.LBB3_605:                              # %lor.lhs.false1099
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 45
	bne	$s4, $a0, .LBB3_607
# %bb.606:                              # %lor.lhs.false1099
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1024
	bltu	$fp, $a0, .LBB3_282
.LBB3_607:                              # %if.else1110
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_674
# %bb.608:                              # %if.else1110
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_610
# %bb.609:                              # %if.then1117
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_610:                              # %if.end1121
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_614
.LBB3_611:                              # %if.then.i1746
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_613
# %bb.612:                              # %html_output_flush.exit.i1767
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_613:                              # %if.end.i1749
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_614:                              # %if.end3.i1754
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_618
# %bb.615:                              # %if.then5.i1756
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_617
# %bb.616:                              # %html_output_flush.exit15.i1764
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_617:                              # %if.end9.i1759
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_618:                              # %html_output_c.exit1770
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_633
# %bb.619:                              # %for.body1125.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $a0
	b	.LBB3_621
	.p2align	4, , 16
.LBB3_620:                              # %if.end1144
                                        #   in Loop: Header=BB3_621 Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_632
.LBB3_621:                              # %for.body1125
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	beqz	$s7, .LBB3_625
# %bb.622:                              # %if.then.i1772
                                        #   in Loop: Header=BB3_621 Depth=3
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_624
# %bb.623:                              # %html_output_flush.exit.i1793
                                        #   in Loop: Header=BB3_621 Depth=3
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_624:                              # %if.end.i1775
                                        #   in Loop: Header=BB3_621 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_625:                              # %if.end3.i1780
                                        #   in Loop: Header=BB3_621 Depth=3
	beqz	$s4, .LBB3_629
# %bb.626:                              # %if.then5.i1782
                                        #   in Loop: Header=BB3_621 Depth=3
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_628
# %bb.627:                              # %html_output_flush.exit15.i1790
                                        #   in Loop: Header=BB3_621 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_628:                              # %if.end9.i1785
                                        #   in Loop: Header=BB3_621 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_629:                              # %html_output_c.exit1796
                                        #   in Loop: Header=BB3_621 Depth=3
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_620
# %bb.630:                              # %html_output_c.exit1796
                                        #   in Loop: Header=BB3_621 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_620
# %bb.631:                              # %if.then1140
                                        #   in Loop: Header=BB3_621 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_620
.LBB3_632:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s2, $zero
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_633:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB3_46
.LBB3_634:                              # %if.else1514
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_636
# %bb.635:                              # %if.then1517
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.b	$a0, $a0, $a1
	addi.w	$a1, $fp, 1
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $fp, $a2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_636:                              # %if.end1528
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 18
.LBB3_637:                              # %if.end1533
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$s2, $s6
	move	$s6, $a0
	b	.LBB3_46
.LBB3_638:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
.LBB3_639:                              # %if.end179
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s6, $zero, 5
	ori	$s2, $zero, 7
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_640:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	b	.LBB3_864
.LBB3_641:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_642:                              # %for.end1070
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s6, $a0, .LBB3_702
# %bb.643:                              # %for.end1070
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ori	$s0, $zero, 10
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB3_645
# %bb.644:                              # %if.then1076
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 59
	stx.b	$a2, $fp, $a1
	move	$fp, $a0
.LBB3_645:                              # %if.end1080
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_649
.LBB3_646:                              # %if.then.i1720
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_648
# %bb.647:                              # %html_output_flush.exit.i1741
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_648:                              # %if.end.i1723
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_649:                              # %if.end3.i1728
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	beqz	$s4, .LBB3_653
# %bb.650:                              # %if.then5.i1730
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_652
# %bb.651:                              # %html_output_flush.exit15.i1738
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_652:                              # %if.end9.i1733
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_653:                              # %if.end1081
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB3_45
.LBB3_654:                              # %if.then447
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_658
# %bb.655:                              # %if.then.i1176
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_657
# %bb.656:                              # %html_output_flush.exit.i1197
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_657:                              # %if.end.i1179
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_658:                              # %if.end3.i1184
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_662
# %bb.659:                              # %if.then5.i1186
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_661
# %bb.660:                              # %html_output_flush.exit15.i1194
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_661:                              # %if.end9.i1189
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_662:                              # %html_output_c.exit1200
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
.LBB3_663:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 9
.LBB3_664:                              # %if.end593
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB3_53
.LBB3_665:                              # %if.then492
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_669
# %bb.666:                              # %if.then.i1254
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_668
# %bb.667:                              # %html_output_flush.exit.i1275
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_668:                              # %if.end.i1257
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_669:                              # %if.end3.i1262
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_673
# %bb.670:                              # %if.then5.i1264
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_672
# %bb.671:                              # %html_output_flush.exit15.i1272
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_672:                              # %if.end9.i1267
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_673:                              # %html_output_c.exit1278
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 9
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_664
.LBB3_674:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	bnez	$s7, .LBB3_611
	b	.LBB3_614
.LBB3_675:                              # %if.then432
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s7, .LBB3_679
# %bb.676:                              # %if.then.i1150
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_678
# %bb.677:                              # %html_output_flush.exit.i1171
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_678:                              # %if.end.i1153
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_679:                              # %if.end3.i1158
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s0, .LBB3_209
.LBB3_680:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_664
.LBB3_681:                              # %if.then656
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_921
.LBB3_682:                              # %html_tag_arg_value.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 1512
	ldx.d	$fp, $s4, $fp
	beqz	$fp, .LBB3_688
# %bb.683:                              # %land.lhs.true667
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_818
# %bb.684:                              # %land.lhs.true674
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB3_864
# %bb.685:                              # %for.body.i1450.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
.LBB3_686:                              # %for.body.i1450
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_859
# %bb.687:                              # %for.cond.i1455
                                        #   in Loop: Header=BB3_686 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	ori	$s2, $zero, 14
	bne	$s3, $s0, .LBB3_686
	b	.LBB3_862
.LBB3_688:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	b	.LBB3_863
.LBB3_689:                              # %if.then764
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	ori	$s2, $zero, 1
	blt	$fp, $s2, .LBB3_920
# %bb.690:                              # %for.body.lr.ph.i1515
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 1504
	move	$s1, $zero
	slli.d	$s3, $fp, 3
	.p2align	4, , 16
.LBB3_691:                              # %for.body.i1518
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_785
# %bb.692:                              # %for.cond.i1523
                                        #   in Loop: Header=BB3_691 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_691
	b	.LBB3_834
.LBB3_693:                              # %if.then690
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	ori	$s2, $zero, 1
	blt	$fp, $s2, .LBB3_920
# %bb.694:                              # %for.body.lr.ph.i1481
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 1504
	move	$s1, $zero
	slli.d	$s3, $fp, 3
.LBB3_695:                              # %for.body.i1484
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_791
# %bb.696:                              # %for.cond.i1489
                                        #   in Loop: Header=BB3_695 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_695
# %bb.697:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $zero
	b	.LBB3_792
.LBB3_698:                              # %if.else1634
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_435
# %bb.699:                              # %if.then.i2381
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s2, 8196
	bne	$a0, $a5, .LBB3_701
# %bb.700:                              # %html_output_flush.exit.i2390
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s2, 0
	addi.d	$a1, $s2, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_701:                              # %if.end.i2384
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s2, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s2, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_435
.LBB3_702:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	bnez	$s7, .LBB3_646
	b	.LBB3_649
.LBB3_703:                              # %if.else549
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_707
# %bb.704:                              # %if.then.i1332
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s7, 8196
	bne	$a1, $a5, .LBB3_706
# %bb.705:                              # %html_output_flush.exit.i1353
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s7, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_706:                              # %if.end.i1335
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s7, 8196
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_707:                              # %if.end3.i1340
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_711
# %bb.708:                              # %if.then5.i1342
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s0, 8196
	bne	$a1, $a5, .LBB3_710
# %bb.709:                              # %html_output_flush.exit15.i1350
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s0, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_710:                              # %if.end9.i1345
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s0, 8196
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_711:                              # %html_output_c.exit1356
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1023
	ori	$s0, $zero, 10
	blt	$a1, $fp, .LBB3_713
# %bb.712:                              # %if.then552
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	sltui	$a0, $a0, 1
	addi.w	$a1, $fp, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 62
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $fp, $a2
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
.LBB3_713:                              # %if.end569
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s6, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB3_664
.LBB3_714:                              # %land.lhs.true824
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_256
# %bb.715:                              # %if.then827
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB3_920
# %bb.716:                              # %for.body.lr.ph.i1549
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $a0, 3
.LBB3_717:                              # %for.body.i1552
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_835
# %bb.718:                              # %for.cond.i1557
                                        #   in Loop: Header=BB3_717 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_717
	b	.LBB3_849
.LBB3_719:                              # %if.end.i1832
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s0, $fp, .LBB3_723
# %bb.720:                              # %if.then3.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_722
# %bb.721:                              # %if.then.i15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s7, 8196
.LBB3_722:                              # %html_output_flush.exit18.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB3_724
.LBB3_723:                              # %if.else.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $s7, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s7, 8196
.LBB3_724:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$a0, .LBB3_816
# %bb.725:                              # %if.then.i1840
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s1
	ldptr.w	$a2, $a0, 8196
	addi.w	$fp, $s4, 0
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_728
# %bb.726:                              # %if.then.i1840
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s1, $a0, .LBB3_728
# %bb.727:                              # %if.end.thread.i1861
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s0, 8196
	blt	$s1, $fp, .LBB3_731
	b	.LBB3_814
.LBB3_728:                              # %if.end.i1846
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s1, $fp, .LBB3_813
# %bb.729:                              # %if.then3.i1854
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_731
# %bb.730:                              # %if.then.i15.i1858
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s0, 8196
.LBB3_731:                              # %html_output_flush.exit18.i1856
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	b	.LBB3_815
.LBB3_732:                              # %sw.bb1394
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_736
# %bb.733:                              # %if.then.i2023
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_735
# %bb.734:                              # %html_output_flush.exit.i2044
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_735:                              # %if.end.i2026
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_736:                              # %if.end3.i2031
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_740
# %bb.737:                              # %if.then5.i2033
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_739
# %bb.738:                              # %html_output_flush.exit15.i2041
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_739:                              # %if.end9.i2036
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_740:                              # %html_output_c.exit2047
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_780
# %bb.741:                              # %if.then.i2049
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_743
# %bb.742:                              # %html_output_flush.exit.i2058
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_743:                              # %if.end.i2052
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
	b	.LBB3_419
.LBB3_744:                              # %sw.bb1397
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_748
# %bb.745:                              # %if.then.i2143
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_747
# %bb.746:                              # %html_output_flush.exit.i2164
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_747:                              # %if.end.i2146
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_748:                              # %if.end3.i2151
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_752
# %bb.749:                              # %if.then5.i2153
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_751
# %bb.750:                              # %html_output_flush.exit15.i2161
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_751:                              # %if.end9.i2156
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_752:                              # %html_output_c.exit2167
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_780
# %bb.753:                              # %if.then.i2169
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_755
# %bb.754:                              # %html_output_flush.exit.i2178
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_755:                              # %if.end.i2172
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_419
.LBB3_756:                              # %sw.bb1395
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_760
# %bb.757:                              # %if.then.i2063
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_759
# %bb.758:                              # %html_output_flush.exit.i2084
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_759:                              # %if.end.i2066
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_760:                              # %if.end3.i2071
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_764
# %bb.761:                              # %if.then5.i2073
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_763
# %bb.762:                              # %html_output_flush.exit15.i2081
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_763:                              # %if.end9.i2076
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_764:                              # %html_output_c.exit2087
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_780
# %bb.765:                              # %if.then.i2089
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_767
# %bb.766:                              # %html_output_flush.exit.i2098
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_767:                              # %if.end.i2092
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
	b	.LBB3_419
.LBB3_768:                              # %sw.bb1396
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s2, $zero, 10
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_772
# %bb.769:                              # %if.then.i2103
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $a5, .LBB3_771
# %bb.770:                              # %html_output_flush.exit.i2124
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_771:                              # %if.end.i2106
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_772:                              # %if.end3.i2111
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_776
# %bb.773:                              # %if.then5.i2113
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_775
# %bb.774:                              # %html_output_flush.exit15.i2121
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_775:                              # %if.end9.i2116
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_776:                              # %html_output_c.exit2127
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_780
# %bb.777:                              # %if.then.i2129
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_779
# %bb.778:                              # %html_output_flush.exit.i2138
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_779:                              # %if.end.i2132
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
	b	.LBB3_419
.LBB3_780:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_419
.LBB3_781:                              # %if.then841
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB3_920
# %bb.782:                              # %for.body.lr.ph.i1566
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	bstrpick.d	$s3, $a0, 31, 0
	slli.d	$s1, $s3, 3
.LBB3_783:                              # %for.body.i1569
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_822
# %bb.784:                              # %for.cond.i1574
                                        #   in Loop: Header=BB3_783 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_783
	b	.LBB3_829
.LBB3_785:                              # %html_tag_arg_value.exit1529
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 1512
	ldx.d	$s4, $s3, $s1
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_834
# %bb.786:                              # %land.lhs.true767
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_858
# %bb.787:                              # %if.then771
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 4
	beqz	$a0, .LBB3_908
.LBB3_788:                              # %for.body.i1535
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_909
# %bb.789:                              # %for.cond.i1540
                                        #   in Loop: Header=BB3_788 Depth=3
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB3_788
# %bb.790:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $zero
	b	.LBB3_910
.LBB3_791:                              # %if.then.i1492
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$s4, $a0, $s1
.LBB3_792:                              # %for.body.lr.ph.i1498
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $zero
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB3_793:                              # %for.body.i1501
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_795
# %bb.794:                              # %for.cond.i1506
                                        #   in Loop: Header=BB3_793 Depth=3
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB3_793
	b	.LBB3_849
.LBB3_795:                              # %html_tag_arg_value.exit1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s4, .LBB3_821
# %bb.796:                              # %html_tag_arg_value.exit1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	beqz	$fp, .LBB3_821
# %bb.797:                              # %land.lhs.true696
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_920
# %bb.798:                              # %if.then700
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_1001
# %bb.799:                              # %for.cond.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $a0
	beqz	$s4, .LBB3_802
# %bb.800:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	move	$a2, $s4
.LBB3_801:                              # %for.body
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $fp, 0
	ld.d	$a4, $a0, 0
	slli.d	$a3, $a3, 2
	ldx.b	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB3_801
.LBB3_802:                              # %for.end
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$zero, $s6, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_919
# %bb.803:                              # %while.cond722
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_806
.LBB3_804:                              # %while.cond722
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a2, $zero, 61
	beq	$a1, $a2, .LBB3_806
# %bb.805:                              # %while.body731
                                        #   in Loop: Header=BB3_804 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB3_804
.LBB3_806:                              # %while.end733
                                        #   in Loop: Header=BB3_47 Depth=2
	sltu	$s0, $zero, $a1
	add.d	$fp, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s0
	stx.b	$zero, $s1, $a1
	beqz	$a0, .LBB3_808
# %bb.807:                              # %if.then741
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1320
	ori	$a2, $zero, 5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(process_encoding_set)
	jirl	$ra, $ra, 0
.LBB3_808:                              # %if.end743
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_849
.LBB3_809:                              # %if.then903
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB3_920
# %bb.810:                              # %for.body.lr.ph.i1600
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $a0, 3
.LBB3_811:                              # %for.body.i1603
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_841
# %bb.812:                              # %for.cond.i1608
                                        #   in Loop: Header=BB3_811 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_811
	b	.LBB3_849
.LBB3_813:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
.LBB3_814:                              # %if.else.i1848
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $s0, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s0, 8196
.LBB3_815:                              # %html_output_str.exit1865
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $s2
.LBB3_816:                              # %html_output_str.exit1865
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_817:                              # %if.end1236
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	addi.d	$s8, $s8, 1
	ori	$s0, $zero, 10
	b	.LBB3_46
.LBB3_818:                              # %for.body.i1437.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
.LBB3_819:                              # %for.body.i1437
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_839
# %bb.820:                              # %for.cond.i1442
                                        #   in Loop: Header=BB3_819 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 8
	bne	$s3, $s0, .LBB3_819
	b	.LBB3_861
.LBB3_821:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_921
.LBB3_822:                              # %html_tag_arg_value.exit1580
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	beqz	$fp, .LBB3_829
# %bb.823:                              # %land.lhs.true844
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_830
# %bb.824:                              # %if.then848
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_827
# %bb.825:                              # %if.then848
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_827
# %bb.826:                              # %if.then853
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_827:                              # %if.end855
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_830
# %bb.828:                              # %if.then857
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	ld.w	$fp, $s4, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	ori	$s0, $zero, 10
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	ld.wu	$s3, $sp, 1496
	b	.LBB3_830
.LBB3_829:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
.LBB3_830:                              # %if.end869
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s3, 0
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB3_840
# %bb.831:                              # %for.body.lr.ph.i1583
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $s3, 3
.LBB3_832:                              # %for.body.i1586
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_850
# %bb.833:                              # %for.cond.i1591
                                        #   in Loop: Header=BB3_832 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_832
.LBB3_834:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	b	.LBB3_921
.LBB3_835:                              # %html_tag_arg_value.exit1563
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_907
# %bb.836:                              # %if.then830
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_838
# %bb.837:                              # %if.then832
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_838:                              # %if.end833
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB3_920
.LBB3_839:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$fp, $a0, %pc_lo12(.L.str.24)
	b	.LBB3_860
.LBB3_840:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB3_921
.LBB3_841:                              # %html_tag_arg_value.exit1614
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_849
# %bb.842:                              # %land.lhs.true906
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_907
# %bb.843:                              # %if.then910
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
.LBB3_844:                              # %if.then910
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 4
	beqz	$a0, .LBB3_847
# %bb.845:                              # %if.then910
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_847
# %bb.846:                              # %if.then915
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s0, 0
	move	$a0, $s0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_847:                              # %if.end917
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	beqz	$s4, .LBB3_906
# %bb.848:                              # %if.then953
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$fp, $s0, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s4, $a0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	move	$a0, $s0
	b	.LBB3_857
.LBB3_849:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	b	.LBB3_921
.LBB3_850:                              # %html_tag_arg_value.exit1597
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_858
# %bb.851:                              # %land.lhs.true872
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_920
# %bb.852:                              # %if.then876
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_855
# %bb.853:                              # %if.then876
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_855
# %bb.854:                              # %if.then881
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_855:                              # %if.end883
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_906
# %bb.856:                              # %if.then885
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	ld.w	$fp, $s4, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$a0, $s4
.LBB3_857:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	b	.LBB3_907
.LBB3_858:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ori	$s0, $zero, 10
	b	.LBB3_921
.LBB3_859:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$fp, $a0, %pc_lo12(.L.str.26)
.LBB3_860:                              # %if.end681.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$s0, $s0, 3
	ldx.d	$a0, $s4, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s4, $s0
.LBB3_861:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s2, $zero, 14
.LBB3_862:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
.LBB3_863:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_864:                              # %if.end681
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$a3, .LBB3_875
# %bb.865:                              # %if.then.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_867
# %bb.866:                              # %html_output_flush.exit.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_867:                              # %if.then.i23.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s4, $a0
	addi.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_870
# %bb.868:                              # %if.then.i23.i
                                        #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s3, $a0, .LBB3_870
# %bb.869:                              # %if.end.thread.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s3, $fp, .LBB3_873
	b	.LBB3_874
.LBB3_870:                              # %if.end.i26.i
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s3, $fp, .LBB3_874
# %bb.871:                              # %if.then3.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_873
# %bb.872:                              # %if.then.i15.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_873:                              # %html_output_flush.exit18.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_875
.LBB3_874:                              # %if.else.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $a3, 8196
.LBB3_875:                              # %html_output_str.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_901
# %bb.876:                              # %for.body.lr.ph.i1466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1504
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1512
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB3_880
.LBB3_877:                              # %html_output_flush.exit.i109.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $zero
.LBB3_878:                              # %if.end.i104.i
                                        #   in Loop: Header=BB3_880 Depth=3
	addi.d	$a0, $fp, 1
	stptr.w	$a0, $a3, 8196
	ori	$a0, $zero, 34
	stx.b	$a0, $a1, $fp
.LBB3_879:                              # %for.inc29.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $sp, 1496
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB3_901
.LBB3_880:                              # %for.body.i1468
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_897 Depth 4
	beqz	$a3, .LBB3_879
# %bb.881:                              # %if.then.i31.i
                                        #   in Loop: Header=BB3_880 Depth=3
	move	$s7, $s1
	ldptr.w	$a0, $a3, 8196
	bne	$a0, $a5, .LBB3_883
# %bb.882:                              # %html_output_flush.exit.i39.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_883:                              # %if.then.i44.i
                                        #   in Loop: Header=BB3_880 Depth=3
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	slli.d	$s0, $s3, 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s6, $a0
	addi.w	$s4, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_886
# %bb.884:                              # %if.then.i44.i
                                        #   in Loop: Header=BB3_880 Depth=3
	add.w	$a0, $a2, $s6
	bge	$s1, $a0, .LBB3_886
# %bb.885:                              # %if.end.thread.i65.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s1, $s4, .LBB3_889
	b	.LBB3_890
	.p2align	4, , 16
.LBB3_886:                              # %if.end.i50.i
                                        #   in Loop: Header=BB3_880 Depth=3
	bge	$s1, $s4, .LBB3_890
# %bb.887:                              # %if.then3.i58.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_889
# %bb.888:                              # %if.then.i15.i62.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_889:                              # %html_output_flush.exit18.i60.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a1, 0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_891
	.p2align	4, , 16
.LBB3_890:                              # %if.else.i52.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s6
	stptr.w	$a0, $a3, 8196
.LBB3_891:                              # %html_output_str.exit69.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s1, $s7
	beqz	$a0, .LBB3_879
# %bb.892:                              # %if.then.i71.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ldptr.w	$a2, $a3, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4094
	blt	$a2, $a0, .LBB3_894
# %bb.893:                              # %if.end.thread.i83.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a3, 8196
.LBB3_894:                              # %html_output_str.exit86.thread.i
                                        #   in Loop: Header=BB3_880 Depth=3
	ori	$a0, $a5, 573
	stx.h	$a0, $a1, $a2
	ori	$s0, $a5, 4
	ldx.w	$a1, $a3, $s0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s6, $s3, $a0, 3
	ld.d	$a0, $s6, 0
	addi.w	$fp, $a1, 2
	stptr.w	$fp, $a3, 8196
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_900
# %bb.895:                              # %for.body18.preheader.i
                                        #   in Loop: Header=BB3_880 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $zero
	bstrpick.d	$s4, $s4, 30, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_897
	.p2align	4, , 16
.LBB3_896:                              # %if.end.i91.i
                                        #   in Loop: Header=BB3_897 Depth=4
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	addi.d	$s1, $s1, 1
	stx.b	$s7, $a1, $a0
	beq	$s4, $s1, .LBB3_899
.LBB3_897:                              # %for.body18.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        #       Parent Loop BB3_880 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s6, 0
	ldx.bu	$a0, $a0, $s1
	ld.d	$a4, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a3, 8196
	ldx.w	$s7, $a4, $a2
	bne	$a0, $a5, .LBB3_896
# %bb.898:                              # %html_output_flush.exit.i96.i
                                        #   in Loop: Header=BB3_897 Depth=4
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
	b	.LBB3_896
	.p2align	4, , 16
.LBB3_899:                              # %if.then.i101.ithread-pre-split
                                        #   in Loop: Header=BB3_880 Depth=3
	ldx.w	$fp, $a3, $s0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beq	$fp, $a5, .LBB3_877
	b	.LBB3_878
.LBB3_900:                              #   in Loop: Header=BB3_880 Depth=3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	bne	$fp, $a5, .LBB3_878
	b	.LBB3_877
.LBB3_901:                              # %for.end31.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a3, .LBB3_905
# %bb.902:                              # %if.then.i114.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_904
# %bb.903:                              # %html_output_flush.exit.i122.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_904:                              # %if.end.i117.i
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_921
.LBB3_905:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_921
.LBB3_906:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB3_907:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_921
.LBB3_908:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB3_917
.LBB3_909:                              # %if.then.i1543
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $s3, 0
.LBB3_910:                              # %html_tag_arg_value.exit1546
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_913
# %bb.911:                              # %html_tag_arg_value.exit1546
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	beqz	$a2, .LBB3_913
# %bb.912:                              # %if.then779
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s6
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB3_913:                              # %if.end781
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_915
# %bb.914:                              # %if.then783
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s6
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	ld.w	$fp, $s6, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s4, $a0
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_915:                              # %if.end792
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_917
# %bb.916:                              # %if.then794
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	ld.w	$fp, $s6, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_917:                              # %if.end806
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_920
# %bb.918:                              # %if.then809
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	ld.w	$a2, $s6, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_920
.LBB3_919:                              # %if.end743.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_920:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB3_921:                              # %if.end974
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB3_922:                              # %while.cond114.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_46
.LBB3_923:
	move	$fp, $zero
	b	.LBB3_998
.LBB3_924:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB3_925:                              # %while.end1728
	ori	$fp, $zero, 1
	beqz	$s1, .LBB3_965
# %bb.926:                              # %if.then1730
	addi.d	$a0, $sp, 295
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	stx.b	$zero, $s5, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_938
# %bb.927:                              # %for.cond1738.preheader
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_964
# %bb.928:                              # %for.body1742.lr.ph
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_950
# %bb.929:                              # %for.body1742.lr.ph.split
	addi.d	$s6, $a1, 4
	move	$s2, $zero
	beqz	$a0, .LBB3_960
# %bb.930:                              # %for.body1742.preheader
	lu12i.w	$s7, 2
	b	.LBB3_932
	.p2align	4, , 16
.LBB3_931:                              # %if.end9.i2501
                                        #   in Loop: Header=BB3_932 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_964
.LBB3_932:                              # %for.body1742
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	ldx.w	$s3, $a1, $a2
	bne	$a0, $s7, .LBB3_934
# %bb.933:                              # %html_output_flush.exit.i2509
                                        #   in Loop: Header=BB3_932 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_934:                              # %if.end.i2491
                                        #   in Loop: Header=BB3_932 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s6, $a0
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	bne	$a0, $s7, .LBB3_931
# %bb.935:                              # %html_output_flush.exit15.i2506
                                        #   in Loop: Header=BB3_932 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_931
.LBB3_936:                              # %if.then13
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB3_998
.LBB3_937:                              # %if.then46
	move	$a0, $s7
	b	.LBB3_987
.LBB3_938:                              # %if.else1754
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s5, .LBB3_967
# %bb.939:                              # %if.then1756
	ori	$a2, $zero, 38
	move	$a0, $s7
	move	$a1, $s4
	pcaddu18i	$ra, %call36(html_output_c)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s4, $s4, 4
	beqz	$s7, .LBB3_978
# %bb.940:                              # %for.body1760.preheader
	addi.d	$s5, $s7, 4
	addi.d	$s2, $sp, 295
	lu12i.w	$s6, 2
	b	.LBB3_943
	.p2align	4, , 16
.LBB3_941:                              # %if.end9.i2527
                                        #   in Loop: Header=BB3_943 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s4, $a0
.LBB3_942:                              # %html_output_c.exit2538
                                        #   in Loop: Header=BB3_943 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_956
.LBB3_943:                              # %for.body1760
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s3, $a1, $a2
	bne	$a0, $s6, .LBB3_945
# %bb.944:                              # %html_output_flush.exit.i2535
                                        #   in Loop: Header=BB3_943 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_945:                              # %if.end.i2517
                                        #   in Loop: Header=BB3_943 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s5, $a0
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_942
# %bb.946:                              # %if.then5.i2524
                                        #   in Loop: Header=BB3_943 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_941
# %bb.947:                              # %html_output_flush.exit15.i2532
                                        #   in Loop: Header=BB3_943 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_941
.LBB3_948:                              # %if.then50
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB3_987
.LBB3_949:                              # %if.then59
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_986
.LBB3_950:                              # %for.body1742.us.preheader
	move	$s2, $zero
	lu12i.w	$s6, 2
	b	.LBB3_953
	.p2align	4, , 16
.LBB3_951:                              # %if.end9.i2501.us
                                        #   in Loop: Header=BB3_953 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s5, $a0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
.LBB3_952:                              # %html_output_c.exit2512.us
                                        #   in Loop: Header=BB3_953 Depth=1
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB3_964
.LBB3_953:                              # %for.body1742.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_952
# %bb.954:                              # %if.then5.i2498.us
                                        #   in Loop: Header=BB3_953 Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s6, .LBB3_951
# %bb.955:                              # %html_output_flush.exit15.i2506.us
                                        #   in Loop: Header=BB3_953 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_951
.LBB3_956:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
.LBB3_957:                              # %abort
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	b	.LBB3_965
.LBB3_958:                              # %if.then69
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	b	.LBB3_985
.LBB3_959:                              # %sw.bb132
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_1000
.LBB3_960:                              # %for.body1742.us2820.preheader
	lu12i.w	$s5, 2
	b	.LBB3_962
	.p2align	4, , 16
.LBB3_961:                              # %if.end.i2491.us
                                        #   in Loop: Header=BB3_962 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s6, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_964
.LBB3_962:                              # %for.body1742.us2820
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s5, .LBB3_961
# %bb.963:                              # %html_output_flush.exit.i2509.us
                                        #   in Loop: Header=BB3_962 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_961
.LBB3_964:                              # %for.end1753
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
.LBB3_965:                              # %abort
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
.LBB3_966:                              # %abort
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB3_967:                              # %abort
	beqz	$a0, .LBB3_969
# %bb.968:                              # %if.then1776
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_969:                              # %if.end1777
	beqz	$s0, .LBB3_971
# %bb.970:                              # %if.then1779
	ld.d	$a0, $s2, 24
	slli.d	$a1, $s0, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
.LBB3_971:                              # %if.end1780
	beqz	$s1, .LBB3_989
.LBB3_972:                              # %if.then1782
	addi.d	$a0, $sp, 1320
	pcaddu18i	$ra, %call36(entity_norm_done)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB3_990
.LBB3_973:                              # %if.then1786
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s7, .LBB3_991
.LBB3_974:                              # %if.end1793
	beqz	$s4, .LBB3_994
.LBB3_975:                              # %if.then1795
	ldptr.w	$a2, $s4, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_977
# %bb.976:                              # %if.then.i2555
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s4, 8196
.LBB3_977:                              # %html_output_flush.exit2558
	ld.w	$a0, $s4, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_995
	b	.LBB3_998
.LBB3_978:                              # %for.body1760.us.preheader
	addi.d	$s2, $sp, 295
	lu12i.w	$s5, 2
	b	.LBB3_981
.LBB3_979:                              # %if.end9.i2527.us
                                        #   in Loop: Header=BB3_981 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	stx.b	$s1, $s4, $a0
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
.LBB3_980:                              # %html_output_c.exit2538.us
                                        #   in Loop: Header=BB3_981 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_957
.LBB3_981:                              # %for.body1760.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $sp, 256                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_980
# %bb.982:                              # %if.then5.i2524.us
                                        #   in Loop: Header=BB3_981 Depth=1
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $s6, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s5, .LBB3_979
# %bb.983:                              # %html_output_flush.exit15.i2532.us
                                        #   in Loop: Header=BB3_981 Depth=1
	ld.w	$a0, $s6, 0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_979
.LBB3_984:                              # %if.then81
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
.LBB3_985:                              # %if.end1780
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB3_986:                              # %if.end1780
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_987:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_988:
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	move	$s4, $zero
	move	$s7, $zero
	move	$fp, $zero
	bnez	$s1, .LBB3_972
.LBB3_989:                              # %if.end1784
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB3_973
.LBB3_990:                              # %if.end1788
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_974
.LBB3_991:                              # %if.then1790
	ldptr.w	$a2, $s7, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_993
# %bb.992:                              # %if.then.i2548
	ld.w	$a0, $s7, 0
	addi.d	$a1, $s7, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s7, 8196
.LBB3_993:                              # %html_output_flush.exit2551
	ld.w	$a0, $s7, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s4, .LBB3_975
.LBB3_994:                              # %if.end1798
	beqz	$s0, .LBB3_998
.LBB3_995:                              # %if.then1800
	ldptr.w	$a2, $s0, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_997
# %bb.996:                              # %if.then.i2562
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $s0, 8196
.LBB3_997:                              # %html_output_flush.exit2565
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_998:                              # %cleanup1804
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1664
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
.LBB3_999:                              # %if.then1555
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_1000:
	move	$fp, $zero
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	b	.LBB3_966
.LBB3_1001:
	addi.w	$fp, $zero, -114
	b	.LBB3_998
.Lfunc_end3:
	.size	cli_html_normalise, .Lfunc_end3-cli_html_normalise
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_959-.LJTI3_0
	.word	.LBB3_57-.LJTI3_0
	.word	.LBB3_166-.LJTI3_0
	.word	.LBB3_132-.LJTI3_0
	.word	.LBB3_134-.LJTI3_0
	.word	.LBB3_130-.LJTI3_0
	.word	.LBB3_170-.LJTI3_0
	.word	.LBB3_179-.LJTI3_0
	.word	.LBB3_155-.LJTI3_0
	.word	.LBB3_194-.LJTI3_0
	.word	.LBB3_116-.LJTI3_0
	.word	.LBB3_101-.LJTI3_0
	.word	.LBB3_220-.LJTI3_0
	.word	.LBB3_44-.LJTI3_0
	.word	.LBB3_87-.LJTI3_0
	.word	.LBB3_239-.LJTI3_0
	.word	.LBB3_222-.LJTI3_0
	.word	.LBB3_241-.LJTI3_0
	.word	.LBB3_151-.LJTI3_0
	.word	.LBB3_81-.LJTI3_0
	.word	.LBB3_212-.LJTI3_0
	.word	.LBB3_126-.LJTI3_0
	.word	.LBB3_242-.LJTI3_0
	.word	.LBB3_79-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_214-.LJTI3_1
	.word	.LBB3_436-.LJTI3_1
	.word	.LBB3_436-.LJTI3_1
	.word	.LBB3_428-.LJTI3_1
	.word	.LBB3_599-.LJTI3_1
	.word	.LBB3_429-.LJTI3_1
.LJTI3_2:
	.word	.LBB3_418-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_227-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_732-.LJTI3_2
	.word	.LBB3_756-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_768-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_744-.LJTI3_2
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
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB5_10
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
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB8_26
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
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB10_4
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
