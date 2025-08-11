	.file	"libclamav_message.c"
	.text
	.globl	messageCreate                   # -- Begin function messageCreate
	.p2align	5
	.type	messageCreate,@function
messageCreate:                          # @messageCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 1
	ori	$a1, $zero, 136
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	st.w	$zero, $a0, 0
.LBB0_2:                                # %if.end
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	messageCreate, .Lfunc_end0-messageCreate
                                        # -- End function
	.globl	messageDestroy                  # -- Begin function messageDestroy
	.p2align	5
	.type	messageDestroy,@function
messageDestroy:                         # @messageDestroy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(messageReset)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	messageDestroy, .Lfunc_end1-messageDestroy
                                        # -- End function
	.globl	messageReset                    # -- Begin function messageReset
	.p2align	5
	.type	messageReset,@function
messageReset:                           # @messageReset
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB2_4
# %bb.3:                                # %if.then3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end5
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB2_10
# %bb.5:                                # %for.cond.preheader
	ld.w	$a1, $fp, 32
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_9
# %bb.6:                                # %for.body.preheader
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB2_7
# %bb.8:                                # %for.end.loopexit
	ld.d	$a0, $fp, 40
.LBB2_9:                                # %for.end
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %if.end10
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB2_12
# %bb.11:                               # %if.then12
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end14
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB2_14
# %bb.13:                               # %if.then16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %if.end18
	ori	$a2, $zero, 136
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end2:
	.size	messageReset, .Lfunc_end2-messageReset
                                        # -- End function
	.globl	messageSetMimeType              # -- Begin function messageSetMimeType
	.p2align	5
	.type	messageSetMimeType,@function
messageSetMimeType:                     # @messageSetMimeType
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	beqz	$a1, .LBB3_4
# %bb.1:                                # %if.end
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	.p2align	4, , 16
.LBB3_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	andi	$a2, $a2, 1024
	bnez	$a2, .LBB3_7
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	andi	$a1, $a1, 255
	addi.d	$s0, $s0, 1
	bnez	$a1, .LBB3_2
	b	.LBB3_5
.LBB3_4:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB3_5:
	move	$a0, $zero
.LBB3_6:                                # %cleanup
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB3_7:                                # %while.end
	pcalau12i	$s1, %pc_hi20(messageSetMimeType.mime_table)
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	beqz	$a0, .LBB3_11
# %bb.8:                                # %if.end23
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB3_20
.LBB3_9:                                # %if.then27
	st.w	$a0, $fp, 0
.LBB3_10:                               # %cleanup
	ori	$a0, $zero, 1
	b	.LBB3_6
.LBB3_11:                               # %if.then9
	pcaddu18i	$ra, %call36(tableCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	beqz	$a0, .LBB3_5
# %bb.12:                               # %for.body.preheader
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a1, $a1, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.13:                               # %for.cond
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.14:                               # %for.cond.1
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.15:                               # %for.cond.2
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a1, $a1, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.16:                               # %for.cond.3
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a1, $a1, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.17:                               # %for.cond.4
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.18:                               # %for.cond.5
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a1, $a1, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(tableInsert)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_25
# %bb.19:                               # %for.cond.6
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(tableFind)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB3_9
.LBB3_20:                               # %if.end28
	ld.w	$a0, $fp, 0
	bnez	$a0, .LBB3_5
# %bb.21:                               # %if.then32
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_26
# %bb.22:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_27
# %bb.23:                               # %for.body47.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	srai.d	$a1, $a0, 63
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	andn	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	slt	$s3, $s1, $a0
	masknez	$a1, $s1, $s3
	maskeqz	$a0, $a0, $s3
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	slt	$s4, $s1, $a0
	masknez	$a1, $s1, $s4
	maskeqz	$a0, $a0, $s4
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	slt	$s5, $s1, $a0
	masknez	$a1, $s1, $s5
	maskeqz	$a0, $a0, $s5
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	slt	$s6, $s1, $a0
	masknez	$a1, $s1, $s6
	maskeqz	$a0, $a0, $s6
	or	$s7, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slt	$a0, $s7, $a0
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s1, $a0
	or	$s2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$s8, $a0, %pc_lo12(.L.str.56)
	move	$a0, $s8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	slt	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a3, $a1, $a2
	ori	$a1, $zero, 49
	bgeu	$a1, $a3, .LBB3_28
# %bb.24:                               # %if.then61
	slt	$a0, $s2, $a0
	slt	$a1, $s7, $s1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	slt	$a2, $zero, $a4
	slti	$a4, $a4, 1
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a2, $a5, $a2
	masknez	$a2, $a2, $s3
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	maskeqz	$a5, $a5, $s3
	or	$a2, $a5, $a2
	masknez	$a2, $a2, $s4
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a5, $a5, $s4
	or	$a2, $a5, $a2
	masknez	$a2, $a2, $s5
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a5, $a5, $s5
	or	$a2, $a5, $a2
	masknez	$a2, $a2, $s6
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a5, $a5, $s6
	or	$a2, $a5, $a2
	masknez	$a2, $a2, $a1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a5, $a5, $a1
	or	$a2, $a5, $a2
	masknez	$a2, $a2, $a0
	maskeqz	$a5, $s8, $a0
	or	$a2, $a5, $a2
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 6
	masknez	$a4, $a4, $s3
	ori	$a5, $zero, 5
	maskeqz	$a5, $a5, $s3
	or	$a4, $a5, $a4
	masknez	$a4, $a4, $s4
	ori	$a5, $zero, 1
	maskeqz	$a5, $a5, $s4
	or	$a4, $a5, $a4
	masknez	$a4, $a4, $s5
	ori	$a5, $zero, 2
	maskeqz	$a5, $a5, $s5
	or	$a4, $a5, $a4
	masknez	$a4, $a4, $s6
	ori	$a5, $zero, 3
	maskeqz	$a5, $a5, $s6
	or	$a4, $a5, $a4
	masknez	$a4, $a4, $a1
	ori	$a5, $zero, 4
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a4
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 7
	maskeqz	$a0, $a4, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_29
.LBB3_25:                               # %if.then20
	ld.d	$a0, $s1, %pc_lo12(messageSetMimeType.mime_table)
	pcaddu18i	$ra, %call36(tableDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$zero, $s1, %pc_lo12(messageSetMimeType.mime_table)
	b	.LBB3_6
.LBB3_26:                               # %if.then36
	ori	$a0, $zero, 8
	b	.LBB3_9
.LBB3_27:                               # %if.then41
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 6
	b	.LBB3_9
.LBB3_28:                               # %if.else63
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
.LBB3_29:                               # %if.end65
	st.w	$s1, $fp, 0
	b	.LBB3_10
.Lfunc_end3:
	.size	messageSetMimeType, .Lfunc_end3-messageSetMimeType
                                        # -- End function
	.p2align	5                               # -- Begin function simil
	.type	simil,@function
simil:                                  # @simil
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_6
# %bb.1:                                # %if.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	addi.d	$s6, $zero, -2
	beqz	$a0, .LBB4_56
# %bb.2:                                # %if.end4
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_7
# %bb.3:                                # %if.end8
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strstrip)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 49
	bltu	$a1, $a0, .LBB4_5
# %bb.4:                                # %lor.lhs.false
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstrip)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 50
	bltu	$a0, $a1, .LBB4_8
.LBB4_5:                                # %if.then13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s6, $zero, -5
	b	.LBB4_56
.LBB4_6:
	ori	$s6, $zero, 100
	b	.LBB4_56
.LBB4_7:                                # %if.then7
	move	$a0, $s1
	b	.LBB4_55
.LBB4_8:                                # %if.end14
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.9:                                # %if.end.i
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	beqz	$a0, .LBB4_54
# %bb.10:                               # %lor.lhs.false17
	st.d	$zero, $s5, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.11:                               # %if.end.i32
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB4_54
# %bb.12:                               # %push.exit38
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	add.d	$a0, $fp, $s4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $s2, 8
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_15
.LBB4_13:                               #   in Loop: Header=BB4_15 Depth=1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB4_14:                               # %if.end85
                                        #   in Loop: Header=BB4_15 Depth=1
	beqz	$s2, .LBB4_57
.LBB4_15:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #       Child Loop BB4_24 Depth 3
                                        #         Child Loop BB4_26 Depth 4
	ld.d	$a1, $s2, 0
	addi.d	$a0, $sp, 68
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 8
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB4_17
# %bb.16:                               # %if.then.i43
                                        #   in Loop: Header=BB4_15 Depth=1
	ld.d	$a1, $s4, 0
	addi.d	$a0, $sp, 118
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s4, 8
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 118
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_18
	b	.LBB4_14
.LBB4_17:                               #   in Loop: Header=BB4_15 Depth=1
	move	$s2, $zero
	addi.d	$a0, $sp, 118
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_14
.LBB4_18:                               # %while.cond.preheader.preheader.i
                                        #   in Loop: Header=BB4_15 Depth=1
	move	$s4, $a0
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 68
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	move	$s0, $zero
	move	$s5, $zero
	move	$s8, $zero
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$a1, $sp, 68
	add.d	$s1, $a1, $a0
	addi.d	$fp, $sp, 118
	add.d	$s4, $fp, $s4
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               # %while.end.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s4, .LBB4_33
.LBB4_20:                               # %while.cond.preheader.i
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_24 Depth 3
                                        #         Child Loop BB4_26 Depth 4
	addi.d	$a0, $sp, 68
	bgeu	$a0, $s1, .LBB4_19
# %bb.21:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB4_20 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $sp, 68
	move	$a1, $fp
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_22:                               # %if.else47.i
                                        #   in Loop: Header=BB4_24 Depth=3
	addi.d	$a2, $a2, 1
	bgeu	$a1, $s4, .LBB4_19
.LBB4_23:                               # %if.end49.i
                                        #   in Loop: Header=BB4_24 Depth=3
	bgeu	$a2, $s1, .LBB4_19
.LBB4_24:                               # %while.body.i
                                        #   Parent Loop BB4_15 Depth=1
                                        #     Parent Loop BB4_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_26 Depth 4
	ld.b	$a3, $a1, 0
	ld.b	$a4, $a2, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	bne	$a3, $a4, .LBB4_22
# %bb.25:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB4_24 Depth=3
	move	$a6, $zero
	move	$a3, $zero
	.p2align	4, , 16
.LBB4_26:                               # %do.body.i
                                        #   Parent Loop BB4_15 Depth=1
                                        #     Parent Loop BB4_20 Depth=2
                                        #       Parent Loop BB4_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a5, $a1, $a6
	add.d	$a4, $a2, $a6
	beq	$a5, $s4, .LBB4_30
# %bb.27:                               # %do.body.i
                                        #   in Loop: Header=BB4_26 Depth=4
	beq	$a4, $s1, .LBB4_30
# %bb.28:                               # %if.else.i
                                        #   in Loop: Header=BB4_26 Depth=4
	ld.b	$a5, $a5, 1
	ld.b	$a4, $a4, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	addi.w	$a3, $a3, 1
	addi.d	$a6, $a6, 1
	beq	$a5, $a4, .LBB4_26
# %bb.29:                               # %do.end.isplit
                                        #   in Loop: Header=BB4_24 Depth=3
	add.d	$a4, $a2, $a6
	add.d	$a5, $a1, $a6
.LBB4_30:                               # %do.end.i
                                        #   in Loop: Header=BB4_24 Depth=3
	bgeu	$s7, $a3, .LBB4_32
# %bb.31:                               # %if.then37.i
                                        #   in Loop: Header=BB4_24 Depth=3
	sub.d	$a6, $a3, $s7
	bstrpick.d	$a6, $a6, 31, 0
	sub.d	$s4, $s4, $a6
	sub.d	$s1, $s1, $a6
	ori	$s0, $zero, 1
	move	$s3, $a4
	move	$s2, $a5
	move	$s8, $a2
	move	$s5, $a1
	move	$a2, $a4
	move	$a1, $a5
	move	$s7, $a3
	bltu	$a1, $s4, .LBB4_23
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_32:                               # %if.else42.i
                                        #   in Loop: Header=BB4_24 Depth=3
	bstrpick.d	$a1, $a3, 31, 0
	sub.d	$a1, $a5, $a1
	ori	$s0, $zero, 1
	move	$a2, $a4
	bltu	$a1, $s4, .LBB4_23
	b	.LBB4_19
.LBB4_33:                               # %for.end.i
                                        #   in Loop: Header=BB4_15 Depth=1
	andi	$a0, $s0, 1
	beqz	$a0, .LBB4_35
# %bb.34:                               # %if.then53.i
                                        #   in Loop: Header=BB4_15 Depth=1
	st.b	$zero, $s5, 0
	st.b	$zero, $s8, 0
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
.LBB4_35:                               # %compare.exit
                                        #   in Loop: Header=BB4_15 Depth=1
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	beqz	$s7, .LBB4_13
# %bb.36:                               # %if.then31
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.d	$a0, $sp, 118
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $sp, 68
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bltu	$s4, $a1, .LBB4_38
# %bb.37:                               # %if.then31
                                        #   in Loop: Header=BB4_15 Depth=1
	bnez	$a0, .LBB4_40
.LBB4_38:                               # %lor.lhs.false42
                                        #   in Loop: Header=BB4_15 Depth=1
	beqz	$s4, .LBB4_45
# %bb.39:                               # %lor.lhs.false42
                                        #   in Loop: Header=BB4_15 Depth=1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB4_45
.LBB4_40:                               # %if.then48
                                        #   in Loop: Header=BB4_15 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.41:                               # %if.end.i53
                                        #   in Loop: Header=BB4_15 Depth=1
	move	$s4, $a0
	addi.d	$a0, $sp, 118
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$a0, .LBB4_54
# %bb.42:                               # %lor.lhs.false53
                                        #   in Loop: Header=BB4_15 Depth=1
	st.d	$s2, $s4, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.43:                               # %if.end.i62
                                        #   in Loop: Header=BB4_15 Depth=1
	move	$s2, $a0
	addi.d	$a0, $sp, 68
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB4_54
# %bb.44:                               # %push.exit68
                                        #   in Loop: Header=BB4_15 Depth=1
	st.d	$s4, $s2, 8
.LBB4_45:                               # %if.end60
                                        #   in Loop: Header=BB4_15 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $s7, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bltu	$s4, $a1, .LBB4_47
# %bb.46:                               # %if.end60
                                        #   in Loop: Header=BB4_15 Depth=1
	bnez	$a0, .LBB4_49
.LBB4_47:                               # %lor.lhs.false68
                                        #   in Loop: Header=BB4_15 Depth=1
	beqz	$s4, .LBB4_14
# %bb.48:                               # %lor.lhs.false68
                                        #   in Loop: Header=BB4_15 Depth=1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB4_14
.LBB4_49:                               # %if.then74
                                        #   in Loop: Header=BB4_15 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.50:                               # %if.end.i71
                                        #   in Loop: Header=BB4_15 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	beqz	$a0, .LBB4_54
# %bb.51:                               # %lor.lhs.false78
                                        #   in Loop: Header=BB4_15 Depth=1
	st.d	$s2, $s4, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_54
# %bb.52:                               # %if.end.i80
                                        #   in Loop: Header=BB4_15 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB4_54
# %bb.53:                               # %push.exit86
                                        #   in Loop: Header=BB4_15 Depth=1
	st.d	$s4, $s2, 8
	b	.LBB4_14
.LBB4_54:                               # %if.then20
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB4_55:                               # %cleanup
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_56:                               # %cleanup
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB4_57:                               # %while.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beqz	$a1, .LBB4_59
# %bb.58:                               # %cond.true
	ori	$a0, $zero, 200
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a0, $a0, 3
	div.du	$s6, $a0, $a1
	b	.LBB4_56
.LBB4_59:
	move	$s6, $zero
	b	.LBB4_56
.Lfunc_end4:
	.size	simil, .Lfunc_end4-simil
                                        # -- End function
	.globl	messageGetMimeType              # -- Begin function messageGetMimeType
	.p2align	5
	.type	messageGetMimeType,@function
messageGetMimeType:                     # @messageGetMimeType
# %bb.0:                                # %entry
	ld.w	$a0, $a0, 0
	ret
.Lfunc_end5:
	.size	messageGetMimeType, .Lfunc_end5-messageGetMimeType
                                        # -- End function
	.globl	messageSetMimeSubtype           # -- Begin function messageSetMimeSubtype
	.p2align	5
	.type	messageSetMimeSubtype,@function
messageSetMimeSubtype:                  # @messageSetMimeSubtype
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	bnez	$a1, .LBB6_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s0, $a0, %pc_lo12(.L.str.8)
.LBB6_2:                                # %if.end
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB6_4
# %bb.3:                                # %if.then1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB6_4:                                # %if.end3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	messageSetMimeSubtype, .Lfunc_end6-messageSetMimeSubtype
                                        # -- End function
	.globl	messageGetMimeSubtype           # -- Begin function messageGetMimeSubtype
	.p2align	5
	.type	messageGetMimeSubtype,@function
messageGetMimeSubtype:                  # @messageGetMimeSubtype
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 24
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end7:
	.size	messageGetMimeSubtype, .Lfunc_end7-messageGetMimeSubtype
                                        # -- End function
	.globl	messageSetDispositionType       # -- Begin function messageSetDispositionType
	.p2align	5
	.type	messageSetDispositionType,@function
messageSetDispositionType:              # @messageSetDispositionType
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	move	$s0, $a1
	beqz	$a0, .LBB8_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %if.end
	beqz	$s0, .LBB8_7
# %bb.3:                                # %while.cond.preheader
	ld.bu	$s1, $s0, 0
	beqz	$s1, .LBB8_7
# %bb.4:                                # %land.rhs.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB8_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $s1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	and	$a2, $a2, $a1
	beqz	$a2, .LBB8_9
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.bu	$s1, $s0, 1
	addi.d	$s0, $s0, 1
	bnez	$s1, .LBB8_5
.LBB8_7:                                # %if.else
	st.d	$zero, $fp, 48
.LBB8_8:                                # %if.end20
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_9:                                # %if.then10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	beqz	$a0, .LBB8_8
# %bb.10:                               # %if.then15
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strstrip)
	jr	$t8
.Lfunc_end8:
	.size	messageSetDispositionType, .Lfunc_end8-messageSetDispositionType
                                        # -- End function
	.globl	messageGetDispositionType       # -- Begin function messageGetDispositionType
	.p2align	5
	.type	messageGetDispositionType,@function
messageGetDispositionType:              # @messageGetDispositionType
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 48
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end9:
	.size	messageGetDispositionType, .Lfunc_end9-messageGetDispositionType
                                        # -- End function
	.globl	messageAddArgument              # -- Begin function messageAddArgument
	.p2align	5
	.type	messageAddArgument,@function
messageAddArgument:                     # @messageAddArgument
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB10_35
# %bb.1:                                # %while.cond.preheader
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	addi.d	$s3, $s1, -1
	ori	$a1, $zero, 1
	sub.d	$s2, $a1, $s1
	lu12i.w	$a1, 2
	move	$s7, $s3
	.p2align	4, , 16
.LBB10_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s3, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	addi.d	$s3, $s3, 1
	and	$a3, $a3, $a1
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, -1
	bnez	$a3, .LBB10_2
# %bb.3:                                # %while.end
	andi	$a0, $a2, 255
	beqz	$a0, .LBB10_35
# %bb.4:                                # %if.end6
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(usefulArg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_35
# %bb.5:                                # %for.cond.preheader
	ld.w	$s1, $fp, 32
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB10_11
# %bb.6:                                # %for.body.lr.ph
	ld.d	$s4, $fp, 40
	move	$s5, $zero
	move	$s6, $s1
	.p2align	4, , 16
.LBB10_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	beqz	$a1, .LBB10_12
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB10_7 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_35
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB10_7 Depth=1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 8
	bnez	$s6, .LBB10_7
# %bb.10:
	move	$s5, $s1
	b	.LBB10_13
.LBB10_11:
	move	$s5, $zero
.LBB10_12:                              # %for.end
	bne	$s5, $s1, .LBB10_15
.LBB10_13:                              # %if.then30
	ld.d	$a0, $fp, 40
	addi.w	$a1, $s1, 1
	st.w	$a1, $fp, 32
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_24
# %bb.14:                               # %cleanup
	st.d	$a0, $fp, 40
.LBB10_15:                              # %if.end43
	pcalau12i	$a0, %pc_hi20(.L.str.110)
	addi.d	$a1, $a0, %pc_lo12(.L.str.110)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_22
# %bb.16:                               # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.111)
	addi.d	$a0, $a0, %pc_lo12(.L.str.111)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB10_17:                              # %rfc2231.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	move	$s1, $a0
	slli.d	$a0, $s5, 3
	stx.d	$s1, $a1, $a0
	beqz	$s1, .LBB10_35
.LBB10_18:                              # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_20
# %bb.19:                               # %lor.lhs.false
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_35
.LBB10_20:                              # %if.then55
	ld.w	$a0, $fp, 0
	bnez	$a0, .LBB10_35
# %bb.21:                               # %if.then59
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(messageSetMimeType)
	jr	$t8
.LBB10_22:                              # %if.end.i
	pcalau12i	$a0, %pc_hi20(.L.str.112)
	addi.d	$a1, $a0, %pc_lo12(.L.str.112)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_25
# %bb.23:
	move	$s4, $a0
	ori	$s6, $zero, 2
	b	.LBB10_27
.LBB10_24:                              # %cleanup.thread
	ld.w	$a0, $fp, 32
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 32
	b	.LBB10_35
.LBB10_25:                              # %if.end6.i
	pcalau12i	$a0, %pc_hi20(.L.str.113)
	addi.d	$a1, $a0, %pc_lo12(.L.str.113)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_17
# %bb.26:
	move	$s4, $a0
	move	$s6, $zero
.LBB10_27:                              # %if.end10.i
	pcalau12i	$a0, %pc_hi20(.L.str.114)
	addi.d	$a0, $a0, %pc_lo12(.L.str.114)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_34
# %bb.28:                               # %while.cond.preheader.i
	move	$s1, $a0
	beq	$s3, $s4, .LBB10_36
# %bb.29:                               # %while.body.i.preheader
	sub.d	$a1, $s4, $s7
	ori	$a0, $zero, 64
	bltu	$a1, $a0, .LBB10_31
# %bb.30:                               # %vector.memcheck
	sub.d	$a2, $s1, $s7
	bgeu	$a2, $a0, .LBB10_74
.LBB10_31:
	move	$a0, $s1
	move	$s2, $s3
.LBB10_32:                              # %while.body.i.preheader66
	move	$a1, $a0
	move	$a2, $s2
	.p2align	4, , 16
.LBB10_33:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$s2, $a2, 1
	addi.d	$a0, $a1, 1
	st.b	$a3, $a1, 0
	move	$a1, $a0
	move	$a2, $s2
	bne	$s2, $s4, .LBB10_33
	b	.LBB10_37
.LBB10_34:                              # %rfc2231.exit.thread
	ld.d	$a0, $fp, 40
	slli.d	$a1, $s5, 3
	stx.d	$zero, $a0, $a1
.LBB10_35:                              # %cleanup63
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB10_36:
	move	$s2, $s3
	move	$a0, $s1
.LBB10_37:                              # %while.end.i
	ori	$a1, $zero, 61
	st.b	$a1, $a0, 0
	.p2align	4, , 16
.LBB10_38:                              # %while.cond19.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s4, 0
	addi.d	$s4, $s4, 1
	bne	$a2, $a1, .LBB10_38
# %bb.39:                               # %while.cond25.preheader.i
	addi.d	$s7, $a0, 1
	ori	$s8, $zero, 2
	ori	$a3, $zero, 37
	ori	$a4, $zero, 10
	ori	$a5, $zero, 5
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$a0, $a0, %pc_lo12(.L.str.99)
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB10_40:                              # %while.cond25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $s4, 0
	beqz	$a1, .LBB10_71
# %bb.41:                               # %while.body26.i
                                        #   in Loop: Header=BB10_40 Depth=1
	beq	$s6, $s8, .LBB10_44
# %bb.42:                               # %while.body26.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a1, $a1, -39
	bne	$s6, $a7, .LBB10_50
# %bb.43:                               # %sw.bb32.i
                                        #   in Loop: Header=BB10_40 Depth=1
	sltui	$a1, $a1, 1
	addi.w	$s6, $a1, 1
	b	.LBB10_52
.LBB10_44:                              # %sw.bb38.i
                                        #   in Loop: Header=BB10_40 Depth=1
	bne	$a1, $a3, .LBB10_51
# %bb.45:                               # %if.then42.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ld.b	$a1, $s4, 1
	addi.d	$s3, $s4, 1
	andi	$a6, $a1, 255
	ori	$s6, $zero, 2
	beqz	$a6, .LBB10_54
# %bb.46:                               # %if.then42.i
                                        #   in Loop: Header=BB10_40 Depth=1
	beq	$a6, $a4, .LBB10_54
# %bb.47:                               # %if.end51.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ld.d	$a2, $s0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB10_55
# %bb.48:                               # %if.end.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a1, $a6, -65
	andi	$a1, $a1, 255
	bltu	$a5, $a1, .LBB10_62
# %bb.49:                               # %if.then9.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$s6, $a6, -55
	b	.LBB10_56
.LBB10_50:                              # %sw.bb.i
                                        #   in Loop: Header=BB10_40 Depth=1
	sltui	$s6, $a1, 1
	b	.LBB10_52
.LBB10_51:                              # %if.else72.i
                                        #   in Loop: Header=BB10_40 Depth=1
	st.b	$a1, $s7, 0
	addi.d	$s7, $s7, 1
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB10_52:                              # %sw.epilogthread-pre-split.i
                                        #   in Loop: Header=BB10_40 Depth=1
	move	$s3, $s4
.LBB10_53:                              # %sw.epilogthread-pre-split.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ld.bu	$a6, $s3, 0
.LBB10_54:                              # %sw.epilog.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$s4, $s3, 1
	bnez	$a6, .LBB10_40
	b	.LBB10_71
.LBB10_55:                              # %if.then.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$s6, $a6, -48
.LBB10_56:                              # %hex.exit.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ld.b	$a1, $s4, 2
	andi	$a6, $a1, 255
	addi.d	$s3, $s4, 2
	beq	$a6, $a4, .LBB10_58
# %bb.57:                               # %hex.exit.i
                                        #   in Loop: Header=BB10_40 Depth=1
	bnez	$a6, .LBB10_59
.LBB10_58:                              # %if.then61.i
                                        #   in Loop: Header=BB10_40 Depth=1
	st.b	$s6, $s7, 0
	b	.LBB10_66
.LBB10_59:                              # %if.end63.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ld.d	$a2, $s0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a2, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB10_64
# %bb.60:                               # %if.end.i47.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a1, $a6, -65
	andi	$a1, $a1, 255
	bltu	$a5, $a1, .LBB10_68
# %bb.61:                               # %if.then9.i54.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a2, $a6, -55
	b	.LBB10_65
.LBB10_62:                              # %if.end13.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a1, $a6, -97
	andi	$a1, $a1, 255
	bltu	$a5, $a1, .LBB10_67
# %bb.63:                               # %if.then21.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$s6, $a6, -87
	b	.LBB10_56
.LBB10_64:                              # %if.then.i44.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a2, $a6, -48
.LBB10_65:                              # %hex.exit56.i
                                        #   in Loop: Header=BB10_40 Depth=1
	slli.d	$a1, $s6, 4
	add.d	$a1, $a2, $a1
	st.b	$a1, $s7, 0
.LBB10_66:                              # %sw.epilogthread-pre-split.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$s7, $s7, 1
	ori	$s6, $zero, 2
	b	.LBB10_53
.LBB10_67:                              # %if.end26.i.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ext.w.b	$a1, $a6
	move	$s3, $a0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s3
	ori	$a5, $zero, 5
	ori	$a4, $zero, 10
	ori	$a3, $zero, 37
	ori	$s6, $zero, 61
	b	.LBB10_56
.LBB10_68:                              # %if.end13.i49.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a1, $a6, -97
	andi	$a1, $a1, 255
	bltu	$a5, $a1, .LBB10_70
# %bb.69:                               # %if.then21.i52.i
                                        #   in Loop: Header=BB10_40 Depth=1
	addi.d	$a2, $a6, -87
	b	.LBB10_65
.LBB10_70:                              # %if.end26.i51.i
                                        #   in Loop: Header=BB10_40 Depth=1
	ext.w.b	$a1, $a6
	move	$s4, $a0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 1
	move	$a0, $s4
	ori	$a5, $zero, 5
	ori	$a4, $zero, 10
	ori	$a3, $zero, 37
	ori	$a2, $zero, 61
	b	.LBB10_65
.LBB10_71:                              # %while.end81.i
	ori	$a0, $zero, 2
	bne	$s6, $a0, .LBB10_73
# %bb.72:                               # %rfc2231.exit.thread34
	st.b	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.116)
	addi.d	$a0, $a0, %pc_lo12(.L.str.116)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	slli.d	$a1, $s5, 3
	stx.d	$s1, $a0, $a1
	b	.LBB10_18
.LBB10_73:                              # %if.then84.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.115)
	addi.d	$a0, $a0, %pc_lo12(.L.str.115)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s3, $a0, %pc_lo12(.L.str.8)
	b	.LBB10_17
.LBB10_74:                              # %vector.ph
	move	$a3, $zero
	addi.w	$a4, $zero, -64
	and	$a2, $a1, $a4
	add.d	$a0, $s1, $a2
	add.d	$a5, $s4, $s2
	and	$a4, $a5, $a4
	add.d	$s2, $s3, $a4
.LBB10_75:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr0, $s3, $a3
	add.d	$a4, $s3, $a3
	xvld	$xr1, $a4, 32
	add.d	$a4, $s1, $a3
	xvstx	$xr0, $s1, $a3
	addi.d	$a3, $a3, 64
	xvst	$xr1, $a4, 32
	bne	$a2, $a3, .LBB10_75
# %bb.76:                               # %middle.block
	bne	$a1, $a2, .LBB10_32
	b	.LBB10_37
.Lfunc_end10:
	.size	messageAddArgument, .Lfunc_end10-messageAddArgument
                                        # -- End function
	.p2align	5                               # -- Begin function usefulArg
	.type	usefulArg,@function
usefulArg:                              # @usefulArg
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	beqz	$a0, .LBB11_9
# %bb.1:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.2:                                # %land.lhs.true3
	pcalau12i	$a0, %pc_hi20(.L.str.100)
	addi.d	$a1, $a0, %pc_lo12(.L.str.100)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.3:                                # %land.lhs.true6
	pcalau12i	$a0, %pc_hi20(.L.str.101)
	addi.d	$a1, $a0, %pc_lo12(.L.str.101)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.4:                                # %land.lhs.true9
	pcalau12i	$a0, %pc_hi20(.L.str.102)
	addi.d	$a1, $a0, %pc_lo12(.L.str.102)
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.5:                                # %land.lhs.true12
	pcalau12i	$a0, %pc_hi20(.L.str.103)
	addi.d	$a1, $a0, %pc_lo12(.L.str.103)
	ori	$a2, $zero, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.6:                                # %land.lhs.true15
	pcalau12i	$a0, %pc_hi20(.L.str.104)
	addi.d	$a1, $a0, %pc_lo12(.L.str.104)
	ori	$a2, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.7:                                # %land.lhs.true18
	pcalau12i	$a0, %pc_hi20(.L.str.105)
	addi.d	$a1, $a0, %pc_lo12(.L.str.105)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_9
# %bb.8:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.106)
	addi.d	$a0, $a0, %pc_lo12(.L.str.106)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB11_9:                               # %return
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	usefulArg, .Lfunc_end11-usefulArg
                                        # -- End function
	.globl	messageAddArguments             # -- Begin function messageAddArguments
	.p2align	5
	.type	messageAddArguments,@function
messageAddArguments:                    # @messageAddArguments
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
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$s4, $fp, 0
	beqz	$s4, .LBB12_33
# %bb.1:                                # %while.body.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	lu12i.w	$s6, 2
	ori	$s7, $zero, 59
	ori	$s8, $zero, 34
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $fp
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_2:                               # %if.then
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$s3, $s2, 1
.LBB12_3:                               # %cleanup119
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.bu	$s4, $s3, 0
	move	$s2, $s3
	beqz	$s4, .LBB12_33
.LBB12_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #     Child Loop BB12_23 Depth 2
	andi	$a0, $s4, 255
	beq	$a0, $s7, .LBB12_2
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$s5, $s1, 0
	ext.w.b	$a0, $s4
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB12_2
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB12_4 Depth=1
	ori	$a1, $zero, 61
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_8
# %bb.7:                                # %if.end10
                                        #   in Loop: Header=BB12_4 Depth=1
	ori	$a1, $zero, 58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_35
.LBB12_8:                               # %while.cond16.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$s4, $a0, 1
	.p2align	4, , 16
.LBB12_9:                               # %while.cond16
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s4, 0
	andi	$a0, $a1, 255
	addi.d	$s4, $s4, 1
	beqz	$a0, .LBB12_11
# %bb.10:                               # %while.cond16
                                        #   in Loop: Header=BB12_9 Depth=2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s5, $a1
	and	$a1, $a1, $s6
	bnez	$a1, .LBB12_9
.LBB12_11:                              # %if.end34
                                        #   in Loop: Header=BB12_4 Depth=1
	bne	$a0, $s8, .LBB12_21
# %bb.12:                               # %if.then38
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_33
# %bb.13:                               # %if.end43
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$s2, $a0
	ori	$a1, $zero, 61
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_15
# %bb.14:                               # %if.then47
                                        #   in Loop: Header=BB12_4 Depth=1
	ori	$a1, $zero, 58
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
.LBB12_15:                              # %if.end49
                                        #   in Loop: Header=BB12_4 Depth=1
	st.b	$zero, $a0, 0
	ori	$a1, $zero, 34
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_26
# %bb.16:                               # %if.else
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$s3, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(usefulArg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_27
.LBB12_17:                              # %if.end60
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_37
# %bb.18:                               # %cond.end
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$s4, $a0
	ori	$a1, $zero, 34
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_38
# %bb.19:                               # %if.end70
                                        #   in Loop: Header=BB12_4 Depth=1
	st.b	$zero, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $a0
	addi.d	$a1, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_32
# %bb.20:                               # %if.end115
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 61
	stx.h	$a1, $s5, $a0
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB12_30
	.p2align	4, , 16
.LBB12_21:                              # %if.else82
                                        #   in Loop: Header=BB12_4 Depth=1
	beqz	$a0, .LBB12_34
# %bb.22:                               # %while.cond88.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.bu	$a0, $s4, 0
	move	$s3, $s4
	beqz	$a0, .LBB12_25
	.p2align	4, , 16
.LBB12_23:                              # %land.rhs92
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.b	$a0, $a0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s5, $a0
	and	$a0, $a0, $s6
	bnez	$a0, .LBB12_28
# %bb.24:                               # %while.body101
                                        #   in Loop: Header=BB12_23 Depth=2
	ld.bu	$a0, $s4, 1
	addi.d	$s3, $s4, 1
	move	$s4, $s3
	bnez	$a0, .LBB12_23
.LBB12_25:                              # %while.end103
                                        #   in Loop: Header=BB12_4 Depth=1
	sub.d	$s4, $s3, $s2
	addi.d	$a0, $s4, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_29
	b	.LBB12_3
.LBB12_26:                              # %if.then54
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(usefulArg)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_17
.LBB12_27:                              # %if.then59
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s2
	b	.LBB12_31
.LBB12_28:                              #   in Loop: Header=BB12_4 Depth=1
	move	$s3, $s4
	sub.d	$s4, $s3, $s2
	addi.d	$a0, $s4, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_3
.LBB12_29:                              # %if.end115.thread96
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$s5, $a0
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s4
.LBB12_30:                              # %if.then117
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB12_31:                              # %cleanup119
                                        #   in Loop: Header=BB12_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB12_3
.LBB12_32:                              # %if.end115.thread102
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB12_31
.LBB12_33:                              # %cleanup126
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
.LBB12_34:                              # %cleanup112.thread
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB12_36
.LBB12_35:                              # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
.LBB12_36:                              # %if.then13
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(cli_dbgmsg)
	jr	$t8
.LBB12_37:                              # %if.then66.thread
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB12_39
.LBB12_38:                              # %if.then68
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB12_39:                              # %if.end69
	move	$a0, $s2
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end12:
	.size	messageAddArguments, .Lfunc_end12-messageAddArguments
                                        # -- End function
	.globl	messageFindArgument             # -- Begin function messageFindArgument
	.p2align	5
	.type	messageFindArgument,@function
messageFindArgument:                    # @messageFindArgument
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 32
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB13_14
# %bb.1:                                # %lor.lhs.false.lr.ph
	move	$s1, $a0
	ld.d	$s3, $s0, 40
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s4, $a0, %pc_lo12(.L.str.8)
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB13_14
.LBB13_3:                               # %lor.lhs.false
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s0, $a1, $a0
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB13_2
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_2
# %bb.5:                                # %if.then8
	add.d	$s1, $s0, $s1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB13_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a2, $s1, 0
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	addi.d	$s1, $s1, 1
	bnez	$a3, .LBB13_6
# %bb.7:                                # %while.end
	andi	$a0, $a2, 255
	ori	$a1, $zero, 61
	bne	$a0, $a1, .LBB13_13
# %bb.8:                                # %if.end18
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB13_16
# %bb.9:                                # %land.lhs.true
	addi.d	$fp, $s1, 1
	ori	$a1, $zero, 34
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_16
# %bb.10:                               # %if.then27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_14
# %bb.11:                               # %if.end33
	ori	$a1, $zero, 34
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_17
# %bb.12:                               # %if.then37
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	add.d	$a1, $s0, $a1
	st.b	$zero, $a1, -1
	st.b	$zero, $fp, 0
	b	.LBB13_15
.LBB13_13:                              # %if.then16
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB13_14:
	move	$a0, $zero
.LBB13_15:                              # %cleanup46
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB13_16:                              # %if.end42
	move	$a0, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(cli_strdup)
	jr	$t8
.LBB13_17:
	move	$a0, $s0
	b	.LBB13_15
.Lfunc_end13:
	.size	messageFindArgument, .Lfunc_end13-messageFindArgument
                                        # -- End function
	.globl	messageGetFilename              # -- Begin function messageGetFilename
	.p2align	5
	.type	messageGetFilename,@function
messageGetFilename:                     # @messageGetFilename
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_2
# %bb.1:                                # %cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB14_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(messageFindArgument)
	jr	$t8
.Lfunc_end14:
	.size	messageGetFilename, .Lfunc_end14-messageGetFilename
                                        # -- End function
	.globl	messageHasFilename              # -- Begin function messageHasFilename
	.p2align	5
	.type	messageHasFilename,@function
messageHasFilename:                     # @messageHasFilename
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$s3, $a0, 32
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB15_18
# %bb.1:                                # %lor.lhs.false.lr.ph.i
	ld.d	$s4, $fp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$s2, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s1, $a0, %pc_lo12(.L.str.21)
	move	$s5, $s3
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %for.inc.i
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	beqz	$s5, .LBB15_9
.LBB15_3:                               # %lor.lhs.false.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s0, $a1, $a0
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB15_2
# %bb.4:                                # %if.end.i
                                        #   in Loop: Header=BB15_3 Depth=1
	ori	$a2, $zero, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_2
# %bb.5:                                # %if.then8.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 8
	lu12i.w	$a2, 2
	.p2align	4, , 16
.LBB15_6:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a3, $s0, $a1
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $a0, $a4
	and	$a4, $a4, $a2
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB15_6
# %bb.7:                                # %while.end.i
	andi	$a1, $a3, 255
	ori	$a2, $zero, 61
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB15_19
# %bb.8:                                # %if.then16.i
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 32
.LBB15_9:                               # %lor.rhs
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB15_18
# %bb.10:                               # %lor.lhs.false.lr.ph.i6
	ld.d	$s1, $fp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s0, $a0, %pc_lo12(.L.str.23)
	b	.LBB15_12
	.p2align	4, , 16
.LBB15_11:                              # %for.inc.i18
                                        #   in Loop: Header=BB15_12 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	beqz	$s3, .LBB15_18
.LBB15_12:                              # %lor.lhs.false.i9
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$fp, $a1, $a0
	ld.bu	$a0, $fp, 0
	beqz	$a0, .LBB15_11
# %bb.13:                               # %if.end.i15
                                        #   in Loop: Header=BB15_12 Depth=1
	ori	$a2, $zero, 4
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_11
# %bb.14:                               # %if.then8.i21
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4
	lu12i.w	$a2, 2
	.p2align	4, , 16
.LBB15_15:                              # %while.cond.i24
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a3, $fp, $a1
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $a0, $a4
	and	$a4, $a4, $a2
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB15_15
# %bb.16:                               # %while.end.i30
	andi	$a1, $a3, 255
	ori	$a2, $zero, 61
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB15_19
# %bb.17:                               # %if.then16.i32
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB15_18:
	move	$a0, $zero
.LBB15_19:                              # %lor.end
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end15:
	.size	messageHasFilename, .Lfunc_end15-messageHasFilename
                                        # -- End function
	.globl	messageSetEncoding              # -- Begin function messageSetEncoding
	.p2align	5
	.type	messageSetEncoding,@function
messageSetEncoding:                     # @messageSetEncoding
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$s0, $s0, -1
	.p2align	4, , 16
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a1, $s0, 1
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 1
	addi.d	$s0, $s0, 1
	bnez	$a1, .LBB16_1
# %bb.2:                                # %while.end
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_4
# %bb.3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s0, $a0, %pc_lo12(.L.str.27)
.LBB16_4:                               # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_25
# %bb.5:                                # %for.cond.preheader.lr.ph
	move	$s2, $a0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(encoding_map+8)
	addi.d	$a0, $a0, %pc_lo12(encoding_map+8)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$s7, 491520
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$s8, $a0, %pc_lo12(.L.str.29)
	ori	$s3, $zero, 1
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_6:                               # %if.else95
                                        #   in Loop: Header=BB16_9 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
.LBB16_7:                               # %if.end97
                                        #   in Loop: Header=BB16_9 Depth=1
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %if.end97
                                        #   in Loop: Header=BB16_9 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$fp, $s3, 1
	move	$a0, $s0
	move	$a1, $s3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_strtok)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$s3, $fp
	beqz	$a0, .LBB16_25
.LBB16_9:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
                                        #     Child Loop BB16_20 Depth 2
	move	$s5, $zero
	move	$s4, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	b	.LBB16_11
	.p2align	4, , 16
.LBB16_10:                              # %for.inc85
                                        #   in Loop: Header=BB16_11 Depth=2
	ld.d	$s6, $fp, 8
	addi.d	$fp, $fp, 16
	beqz	$s6, .LBB16_16
.LBB16_11:                              # %for.body
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s2, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a0, $a1
	slli.w	$a2, $a1, 24
	beq	$a2, $s7, .LBB16_13
# %bb.12:                               # %for.body
                                        #   in Loop: Header=BB16_11 Depth=2
	ld.b	$a2, $s6, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a0, $a0, $a2
	ext.w.b	$a1, $a1
	bne	$a1, $a0, .LBB16_10
.LBB16_13:                              # %if.end31
                                        #   in Loop: Header=BB16_11 Depth=2
	move	$a0, $s6
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_10
# %bb.14:                               # %if.end37
                                        #   in Loop: Header=BB16_11 Depth=2
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 100
	beq	$a0, $a1, .LBB16_18
# %bb.15:                               # %if.else
                                        #   in Loop: Header=BB16_11 Depth=2
	slt	$a1, $s5, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a3, $s6, $a1
	or	$s4, $a3, $a2
	masknez	$a2, $s5, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a2
	b	.LBB16_10
	.p2align	4, , 16
.LBB16_16:                              # %if.then91
                                        #   in Loop: Header=BB16_9 Depth=1
	ori	$a0, $zero, 50
	blt	$s5, $a0, .LBB16_6
# %bb.17:                               # %if.then94
                                        #   in Loop: Header=BB16_9 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s4
	b	.LBB16_7
	.p2align	4, , 16
.LBB16_18:                              # %for.cond43.preheader
                                        #   in Loop: Header=BB16_9 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 16
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB16_22
# %bb.19:                               # %for.body46.lr.ph
                                        #   in Loop: Header=BB16_9 Depth=1
	ld.w	$a2, $fp, 0
	move	$a3, $a1
	move	$a4, $a0
	.p2align	4, , 16
.LBB16_20:                              # %for.body46
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beq	$a5, $a2, .LBB16_24
# %bb.21:                               # %for.cond43
                                        #   in Loop: Header=BB16_20 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB16_20
.LBB16_22:                              # %if.end59
                                        #   in Loop: Header=BB16_9 Depth=1
	slli.d	$a1, $a1, 2
	addi.d	$a1, $a1, 4
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_8
# %bb.23:                               # %if.end67
                                        #   in Loop: Header=BB16_9 Depth=1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 16
	ld.w	$a2, $fp, 0
	addi.d	$a3, $a1, 1
	st.w	$a3, $a4, 16
	slli.d	$a1, $a1, 2
	stx.w	$a2, $a0, $a1
	ld.w	$a1, $a4, 16
	st.d	$a0, $a4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB16_8
.LBB16_24:                              # %if.then58
                                        #   in Loop: Header=BB16_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB16_8
.LBB16_25:                              # %while.end98
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end16:
	.size	messageSetEncoding, .Lfunc_end16-messageSetEncoding
                                        # -- End function
	.globl	messageGetEncoding              # -- Begin function messageGetEncoding
	.p2align	5
	.type	messageGetEncoding,@function
messageGetEncoding:                     # @messageGetEncoding
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 16
	beqz	$a1, .LBB17_2
# %bb.1:                                # %if.end
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	ret
.LBB17_2:
	move	$a0, $zero
	ret
.Lfunc_end17:
	.size	messageGetEncoding, .Lfunc_end17-messageGetEncoding
                                        # -- End function
	.globl	messageAddLine                  # -- Begin function messageAddLine
	.p2align	5
	.type	messageAddLine,@function
messageAddLine:                         # @messageAddLine
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 56
	move	$s0, $a1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB18_5
# %bb.1:                                # %if.else
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 8
	st.d	$a0, $fp, 64
	beqz	$a0, .LBB18_6
.LBB18_2:                               # %if.end10
	st.d	$zero, $a0, 8
	beqz	$s0, .LBB18_8
# %bb.3:                                # %land.lhs.true
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_7
# %bb.4:                                # %if.then15
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageIsEncoding)
	jirl	$ra, $ra, 0
	b	.LBB18_9
.LBB18_5:                               # %if.then
	st.d	$a0, $fp, 56
	st.d	$a0, $fp, 64
	bnez	$a0, .LBB18_2
.LBB18_6:
	addi.w	$a0, $zero, -1
	b	.LBB18_10
.LBB18_7:                               # %land.lhs.true.if.else18_crit_edge
	ld.d	$a0, $fp, 64
.LBB18_8:                               # %if.else18
	st.d	$zero, $a0, 0
.LBB18_9:                               # %return
	ori	$a0, $zero, 1
.LBB18_10:                              # %return
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end18:
	.size	messageAddLine, .Lfunc_end18-messageAddLine
                                        # -- End function
	.p2align	5                               # -- Begin function messageIsEncoding
	.type	messageIsEncoding,@function
messageIsEncoding:                      # @messageIsEncoding
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 120
	move	$s0, $a0
	bnez	$a1, .LBB19_3
# %bb.1:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(messageIsEncoding.encoding)
	addi.d	$a1, $a0, %pc_lo12(messageIsEncoding.encoding)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_3
# %bb.2:                                # %land.lhs.true3
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_14
.LBB19_3:                               # %if.else
	ld.d	$a0, $fp, 96
	bnez	$a0, .LBB19_7
# %bb.4:                                # %land.lhs.true9
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_7
# %bb.5:                                # %land.lhs.true12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_filetype)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 529
	bne	$a0, $a1, .LBB19_7
# %bb.6:                                # %if.then16
	ld.d	$a0, $fp, 64
	st.d	$a0, $fp, 96
	b	.LBB19_15
.LBB19_7:                               # %if.else19
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB19_11
.LBB19_8:                               # %if.else29
	ld.d	$a0, $fp, 112
	bnez	$a0, .LBB19_15
# %bb.9:                                # %land.lhs.true31
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a1, $a0, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_15
# %bb.10:                               # %if.then34
	ld.d	$a0, $fp, 64
	st.d	$a0, $fp, 112
	b	.LBB19_15
.LBB19_11:                              # %land.lhs.true21
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a1, $a0, %pc_lo12(.L.str.69)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_8
# %bb.12:                               # %land.lhs.true23
	pcalau12i	$a0, %pc_hi20(messageIsEncoding.binhex)
	addi.d	$a1, $a0, %pc_lo12(messageIsEncoding.binhex)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(simil)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 91
	blt	$a0, $a1, .LBB19_8
# %bb.13:                               # %if.then26
	ld.d	$a0, $fp, 64
	st.d	$a0, $fp, 104
	b	.LBB19_15
.LBB19_14:                              # %if.then
	ld.d	$a0, $fp, 64
	st.d	$a0, $fp, 120
.LBB19_15:                              # %if.end39
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end19:
	.size	messageIsEncoding, .Lfunc_end19-messageIsEncoding
                                        # -- End function
	.globl	messageAddStr                   # -- Begin function messageAddStr
	.p2align	5
	.type	messageAddStr,@function
messageAddStr:                          # @messageAddStr
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB20_8
# %bb.1:                                # %if.then
	move	$s0, $a1
	ld.b	$s2, $a1, 0
	beqz	$s2, .LBB20_12
# %bb.2:                                # %for.cond.preheader
	ori	$s1, $zero, 1
	blt	$s2, $s1, .LBB20_9
# %bb.3:                                # %lor.lhs.false.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB20_4:                               # %lor.lhs.false
                                        # =>This Inner Loop Header: Depth=1
	andi	$a3, $s2, 255
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB20_9
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB20_4 Depth=1
	ldx.b	$a3, $s0, $a2
	ext.w.b	$s2, $a3
	addi.d	$a2, $a2, 1
	bge	$s2, $s1, .LBB20_4
# %bb.6:                                # %for.end.loopexit
	bnez	$s2, .LBB20_9
# %bb.7:                                # %if.end15.thread
	ld.d	$a0, $fp, 56
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$s0, $a1, %pc_lo12(.L.str.36)
	bnez	$a0, .LBB20_11
	b	.LBB20_13
.LBB20_8:
	move	$s0, $zero
.LBB20_9:                               # %if.end15
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB20_13
.LBB20_10:                              # %if.else21
	beqz	$s0, .LBB20_14
.LBB20_11:
	move	$s1, $zero
	b	.LBB20_18
.LBB20_12:
	move	$s0, $zero
	ld.d	$a0, $fp, 56
	bnez	$a0, .LBB20_10
.LBB20_13:                              # %if.then18
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	st.d	$a1, $fp, 56
	st.d	$a1, $fp, 64
	bnez	$a1, .LBB20_24
	b	.LBB20_34
.LBB20_14:                              # %land.lhs.true
	ld.d	$a0, $fp, 64
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB20_16
# %bb.15:
	move	$s0, $zero
	ori	$s1, $zero, 1
	b	.LBB20_18
.LBB20_16:                              # %if.then27
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 6
	ori	$s1, $zero, 1
	bne	$a0, $a1, .LBB20_35
# %bb.17:
	move	$s0, $zero
.LBB20_18:                              # %if.end33
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB20_20
# %bb.19:                               # %if.then40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageDedup)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 8
	beqz	$a0, .LBB20_34
.LBB20_20:                              # %if.end50
	bnez	$s1, .LBB20_23
# %bb.21:                               # %land.lhs.true52
	ld.d	$a0, $a1, 0
	beqz	$a0, .LBB20_23
# %bb.22:                               # %land.lhs.true56
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	beqz	$a0, .LBB20_33
.LBB20_23:
	move	$a0, $zero
	ld.d	$a1, $a1, 8
	st.d	$a1, $fp, 64
	beqz	$a1, .LBB20_34
.LBB20_24:                              # %if.end75
	st.d	$zero, $a1, 8
	beqz	$s0, .LBB20_28
# %bb.25:                               # %land.lhs.true79
	ld.bu	$a2, $s0, 0
	beqz	$a2, .LBB20_28
# %bb.26:                               # %if.then82
	beqz	$a0, .LBB20_30
# %bb.27:                               # %if.then84
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 0
	b	.LBB20_29
.LBB20_28:                              # %if.else108
	st.d	$zero, $a1, 0
.LBB20_29:                              # %cleanup
	ori	$s1, $zero, 1
	b	.LBB20_35
.LBB20_30:                              # %if.else88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB20_32
# %bb.31:                               # %if.then96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageDedup)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB20_34
.LBB20_32:                              # %if.end106
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageIsEncoding)
	jirl	$ra, $ra, 0
	b	.LBB20_29
.LBB20_33:                              # %if.then63
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	st.d	$a1, $fp, 64
	bnez	$a1, .LBB20_24
.LBB20_34:                              # %if.then48
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
.LBB20_35:                              # %cleanup
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	messageAddStr, .Lfunc_end20-messageAddStr
                                        # -- End function
	.p2align	5                               # -- Begin function messageDedup
	.type	messageDedup,@function
messageDedup:                           # @messageDedup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.107)
	addi.d	$a0, $a0, %pc_lo12(.L.str.107)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 56
	beqz	$s4, .LBB21_20
# %bb.1:                                # %if.end.lr.ph
	move	$s0, $zero
	lu12i.w	$a0, 24
	ori	$s5, $a0, 1696
	ori	$s6, $zero, 8
	.p2align	4, , 16
.LBB21_2:                               # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_13 Depth 2
	ld.d	$s1, $s4, 0
	beqz	$s1, .LBB21_10
# %bb.3:                                # %if.end6
                                        #   in Loop: Header=BB21_2 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$a0, $s6, .LBB21_10
# %bb.4:                                # %if.end10
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.bu	$s8, $s1, 0
	ori	$a0, $zero, 255
	beq	$s8, $a0, .LBB21_10
# %bb.5:                                # %if.end14
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 120
	beq	$s4, $a0, .LBB21_10
# %bb.6:                                # %if.end18
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 96
	beq	$s4, $a0, .LBB21_10
# %bb.7:                                # %if.end22
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 104
	beq	$s4, $a0, .LBB21_10
# %bb.8:                                # %if.end26
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$a0, $fp, 112
	beq	$s4, $a0, .LBB21_10
# %bb.9:                                # %for.cond31.preheader
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$s7, $s4, 8
	bnez	$s7, .LBB21_13
	.p2align	4, , 16
.LBB21_10:                              # %for.inc75
                                        #   in Loop: Header=BB21_2 Depth=1
	ld.d	$s4, $s4, 8
	beqz	$s4, .LBB21_21
# %bb.11:                               # %for.inc75
                                        #   in Loop: Header=BB21_2 Depth=1
	bltu	$s0, $s5, .LBB21_2
	b	.LBB21_21
	.p2align	4, , 16
.LBB21_12:                              # %for.inc
                                        #   in Loop: Header=BB21_13 Depth=2
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB21_10
.LBB21_13:                              # %for.body33
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s7, 0
	beqz	$s3, .LBB21_12
# %bb.14:                               # %if.end38
                                        #   in Loop: Header=BB21_13 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB21_12
# %bb.15:                               # %if.end43
                                        #   in Loop: Header=BB21_13 Depth=2
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_12
# %bb.16:                               # %if.then47
                                        #   in Loop: Header=BB21_13 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_18
# %bb.17:                               # %if.then51
                                        #   in Loop: Header=BB21_13 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $a0
	addi.d	$s0, $a0, 1
.LBB21_18:                              # %if.end54
                                        #   in Loop: Header=BB21_13 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	beqz	$a0, .LBB21_22
# %bb.19:                               # %if.end61
                                        #   in Loop: Header=BB21_13 Depth=2
	addi.w	$s8, $s8, 1
	ori	$a0, $zero, 255
	bne	$s8, $a0, .LBB21_12
	b	.LBB21_10
.LBB21_20:
	move	$s0, $zero
	move	$s4, $zero
.LBB21_21:                              # %for.end77
	pcalau12i	$a0, %pc_hi20(.L.str.109)
	addi.d	$a0, $a0, %pc_lo12(.L.str.109)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $fp, 128
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB21_22:                              # %cleanup69.thread48
	pcalau12i	$a0, %pc_hi20(.L.str.108)
	addi.d	$a0, $a0, %pc_lo12(.L.str.108)
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	pcaddu18i	$t8, %call36(cli_errmsg)
	jr	$t8
.Lfunc_end21:
	.size	messageDedup, .Lfunc_end21-messageDedup
                                        # -- End function
	.globl	messageAddStrAtTop              # -- Begin function messageAddStrAtTop
	.p2align	5
	.type	messageAddStrAtTop,@function
messageAddStrAtTop:                     # @messageAddStrAtTop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 56
	move	$s0, $a1
	beqz	$s1, .LBB22_4
# %bb.1:                                # %if.end
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	beqz	$a0, .LBB22_6
# %bb.2:                                # %if.end9
	st.d	$s1, $a0, 8
	sltui	$a0, $s0, 1
	masknez	$a1, $s0, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 56
	move	$a1, $a0
	st.d	$a0, $a2, 0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB22_15
# %bb.3:                                # %if.then16
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB22_7
.LBB22_4:                               # %if.then
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 56
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB22_8
# %bb.5:                                # %if.else.i
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 8
	st.d	$a0, $fp, 64
	bnez	$a0, .LBB22_9
	b	.LBB22_7
.LBB22_6:                               # %if.then7
	st.d	$s1, $fp, 56
.LBB22_7:                               # %cleanup
	addi.w	$a0, $zero, -1
	b	.LBB22_15
.LBB22_8:                               # %if.then.i
	st.d	$a0, $fp, 56
	st.d	$a0, $fp, 64
	beqz	$a0, .LBB22_7
.LBB22_9:                               # %if.end10.i
	st.d	$zero, $a0, 8
	beqz	$s0, .LBB22_13
# %bb.10:                               # %land.lhs.true.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB22_12
# %bb.11:                               # %if.then15.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	st.d	$a0, $a1, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageIsEncoding)
	jirl	$ra, $ra, 0
	b	.LBB22_14
.LBB22_12:                              # %land.lhs.true.if.else18_crit_edge.i
	ld.d	$a0, $fp, 64
.LBB22_13:                              # %if.else18.i
	st.d	$zero, $a0, 0
.LBB22_14:                              # %cleanup
	ori	$a0, $zero, 1
.LBB22_15:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	messageAddStrAtTop, .Lfunc_end22-messageAddStrAtTop
                                        # -- End function
	.globl	messageMoveText                 # -- Begin function messageMoveText
	.p2align	5
	.type	messageMoveText,@function
messageMoveText:                        # @messageMoveText
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
	ld.d	$a0, $a0, 56
	move	$s1, $a1
	beqz	$a0, .LBB23_3
# %bb.1:                                # %if.else36
	ld.d	$a0, $fp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(textMove)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	beqz	$a0, .LBB23_9
# %bb.2:
	move	$s0, $zero
	b	.LBB23_18
.LBB23_3:                               # %if.then
	move	$s0, $a2
	beqz	$a2, .LBB23_10
# %bb.4:                                # %if.then1
	st.d	$s1, $fp, 56
	ld.d	$s2, $s0, 56
	addi.d	$s3, $s0, 56
	b	.LBB23_6
	.p2align	4, , 16
.LBB23_5:                               # %if.end
                                        #   in Loop: Header=BB23_6 Depth=1
	ld.d	$s4, $s2, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s2, $s4
	beqz	$s4, .LBB23_20
.LBB23_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	beq	$s2, $s1, .LBB23_11
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB23_6 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB23_5
# %bb.8:                                # %if.then6
                                        #   in Loop: Header=BB23_6 Depth=1
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	b	.LBB23_5
.LBB23_9:                               # %if.then42
	ld.d	$a0, $fp, 56
	st.d	$a0, $fp, 64
	addi.w	$s0, $zero, -1
	b	.LBB23_18
.LBB23_10:                              # %if.else
	move	$a0, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(textMove)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 56
	st.d	$a0, $fp, 64
	sltui	$a1, $a0, 1
	sub.d	$s0, $zero, $a1
	b	.LBB23_18
.LBB23_11:                              # %for.end
	ld.d	$a0, $s0, 64
	ld.d	$a1, $s0, 96
	st.d	$a0, $fp, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $s3, 0
	bnez	$a1, .LBB23_15
# %bb.12:                               # %land.lhs.true
	ld.d	$a0, $s0, 120
	bnez	$a0, .LBB23_15
# %bb.13:                               # %land.lhs.true16
	ld.d	$a0, $s0, 104
	bnez	$a0, .LBB23_15
# %bb.14:                               # %land.lhs.true18
	ld.d	$a0, $s0, 112
	beqz	$a0, .LBB23_21
.LBB23_15:                              # %cleanup24
	ld.d	$a0, $fp, 56
	move	$s0, $zero
	st.d	$a0, $fp, 64
	b	.LBB23_18
	.p2align	4, , 16
.LBB23_16:                              # %while.body
                                        #   in Loop: Header=BB23_18 Depth=1
	ld.d	$a1, $a0, 0
	st.d	$a0, $fp, 64
	beqz	$a1, .LBB23_18
# %bb.17:                               # %if.then57
                                        #   in Loop: Header=BB23_18 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(messageIsEncoding)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
.LBB23_18:                              # %if.end47
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB23_16
.LBB23_19:                              # %cleanup59
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB23_20:                              # %if.then9
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	b	.LBB23_19
.LBB23_21:
	move	$s0, $zero
	b	.LBB23_19
.Lfunc_end23:
	.size	messageMoveText, .Lfunc_end23-messageMoveText
                                        # -- End function
	.globl	messageGetBody                  # -- Begin function messageGetBody
	.p2align	5
	.type	messageGetBody,@function
messageGetBody:                         # @messageGetBody
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 56
	ret
.Lfunc_end24:
	.size	messageGetBody, .Lfunc_end24-messageGetBody
                                        # -- End function
	.globl	base64Flush                     # -- Begin function base64Flush
	.p2align	5
	.type	base64Flush,@function
base64Flush:                            # @base64Flush
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 84
	move	$s0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	move	$a1, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 84
	beqz	$a0, .LBB25_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(base64)
	addi.d	$a3, $a0, %pc_lo12(base64)
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	move	$a4, $zero
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 84
	b	.LBB25_3
.LBB25_2:                               # %return
	move	$a0, $zero
.LBB25_3:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	base64Flush, .Lfunc_end25-base64Flush
                                        # -- End function
	.p2align	5                               # -- Begin function decode
	.type	decode,@function
decode:                                 # @decode
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
	move	$s0, $a0
	ld.w	$s3, $a0, 84
	ori	$a0, $zero, 1
	move	$s1, $a3
	move	$fp, $a2
	move	$s2, $a1
	move	$s6, $zero
	beq	$s3, $a0, .LBB26_17
# %bb.1:                                # %entry
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB26_4
# %bb.2:                                # %entry
	ori	$a0, $zero, 3
	bne	$s3, $a0, .LBB26_23
# %bb.3:                                # %sw.bb
	ld.bu	$s6, $s0, 82
.LBB26_4:                               # %sw.bb1
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.bu	$s6, $s0, 81
	ld.bu	$s8, $s0, 80
	beqz	$s2, .LBB26_18
.LBB26_5:                               # %while.cond139.preheader
	ld.bu	$a1, $s2, 0
	bnez	$a1, .LBB26_8
	b	.LBB26_27
	.p2align	4, , 16
.LBB26_6:                               # %if.else176
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$s2, $s2, 1
	jirl	$ra, $s1, 0
	move	$s5, $a0
	ld.b	$a0, $s2, 0
	beqz	$a0, .LBB26_16
.LBB26_7:                               # %cleanup223
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$s7, $s2, 1
	jirl	$ra, $s1, 0
	srli.d	$a1, $s4, 4
	bstrins.d	$a1, $s3, 63, 2
	st.b	$a1, $fp, 0
	srli.d	$a1, $s5, 2
	bstrins.d	$a1, $s4, 63, 4
	st.b	$a1, $fp, 1
	bstrins.d	$a0, $s5, 63, 6
	st.b	$a0, $fp, 2
	ld.bu	$a1, $s2, 1
	addi.d	$a0, $fp, 3
	move	$fp, $a0
	move	$s2, $s7
	beqz	$a1, .LBB26_39
.LBB26_8:                               # %while.body141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 84
	beqz	$a0, .LBB26_10
# %bb.9:                                # %if.then145
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, 84
	move	$s3, $s8
	ld.b	$a0, $s2, 0
	bnez	$a0, .LBB26_11
	b	.LBB26_29
	.p2align	4, , 16
.LBB26_10:                              # %if.else148
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$s2, $s2, 1
	ext.w.b	$a0, $a1
	jirl	$ra, $s1, 0
	move	$s3, $a0
	ld.b	$a0, $s2, 0
	beqz	$a0, .LBB26_29
.LBB26_11:                              # %if.else156
                                        #   in Loop: Header=BB26_8 Depth=1
	ld.w	$a1, $s0, 84
	beqz	$a1, .LBB26_13
# %bb.12:                               # %if.then159
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$a0, $a1, -1
	st.w	$a0, $s0, 84
	move	$s4, $s6
	ld.b	$a0, $s2, 0
	bnez	$a0, .LBB26_14
	b	.LBB26_30
	.p2align	4, , 16
.LBB26_13:                              # %if.else162
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$s2, $s2, 1
	jirl	$ra, $s1, 0
	move	$s4, $a0
	ld.b	$a0, $s2, 0
	beqz	$a0, .LBB26_30
.LBB26_14:                              # %if.else170
                                        #   in Loop: Header=BB26_8 Depth=1
	ld.w	$a1, $s0, 84
	beqz	$a1, .LBB26_6
# %bb.15:                               # %if.then173
                                        #   in Loop: Header=BB26_8 Depth=1
	addi.d	$a0, $a1, -1
	st.w	$a0, $s0, 84
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.b	$a0, $s2, 0
	bnez	$a0, .LBB26_7
.LBB26_16:                              # %sw.bb214
	st.b	$s5, $s0, 82
	ori	$a0, $zero, 3
	b	.LBB26_31
.LBB26_17:
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.bu	$s8, $s0, 80
	bnez	$s2, .LBB26_5
.LBB26_18:                              # %if.then28
	beqz	$s3, .LBB26_27
# %bb.19:                               # %if.end
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 8
	sltui	$a1, $a1, 1
	masknez	$a2, $s8, $a1
	slli.d	$a3, $s6, 1
	ldx.hu	$a3, $a0, $a3
	ori	$a4, $zero, 64
	maskeqz	$a1, $a4, $a1
	or	$a2, $a1, $a2
	andi	$a1, $a3, 8
	sltui	$a1, $a1, 1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a3, $s1, 1
	ldx.hu	$a0, $a0, $a3
	masknez	$a3, $s6, $a1
	maskeqz	$a1, $a4, $a1
	or	$a3, $a1, $a3
	andi	$a0, $a0, 8
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a4, $a0
	or	$a4, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.98)
	addi.d	$a0, $a0, %pc_lo12(.L.str.98)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 84
	addi.w	$a1, $a0, -1
	st.w	$a1, $s0, 84
	beqz	$a1, .LBB26_36
# %bb.20:                               # %if.then67
	addi.w	$a1, $a0, -2
	st.w	$a1, $s0, 84
	beqz	$a1, .LBB26_33
# %bb.21:                               # %sw.bb82
	addi.d	$a0, $a0, -3
	st.w	$a0, $s0, 84
	srli.d	$a0, $s6, 4
	bstrins.d	$a0, $s8, 63, 2
	st.b	$a0, $fp, 0
	srli.d	$a0, $s1, 2
	bstrins.d	$a0, $s6, 63, 4
	st.b	$a0, $fp, 1
	beqz	$s1, .LBB26_37
# %bb.22:                               # %if.then103
	slli.d	$a1, $s1, 6
	addi.d	$a0, $fp, 3
	st.b	$a1, $fp, 2
	b	.LBB26_39
.LBB26_23:                              # %sw.epilog
	beqz	$a4, .LBB26_28
# %bb.24:                               # %while.cond.preheader
	ld.bu	$a1, $s2, 0
	beqz	$a1, .LBB26_27
# %bb.25:                               # %while.body.preheader
	addi.d	$s3, $s2, 4
	.p2align	4, , 16
.LBB26_26:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a0, $a1
	jirl	$ra, $s1, 0
	ld.b	$a1, $s3, -3
	move	$s0, $a0
	move	$a0, $a1
	jirl	$ra, $s1, 0
	ld.b	$a1, $s3, -2
	move	$s2, $a0
	move	$a0, $a1
	jirl	$ra, $s1, 0
	srli.d	$a1, $s2, 4
	bstrins.d	$a1, $s0, 63, 2
	st.b	$a1, $fp, 0
	ld.b	$a1, $s3, -1
	move	$s0, $a0
	move	$a0, $a1
	jirl	$ra, $s1, 0
	srli.d	$a1, $s0, 2
	bstrins.d	$a1, $s2, 63, 4
	st.b	$a1, $fp, 1
	bstrins.d	$a0, $s0, 63, 6
	st.b	$a0, $fp, 2
	ld.bu	$a1, $s3, 0
	addi.d	$a0, $fp, 3
	addi.d	$s3, $s3, 4
	move	$fp, $a0
	bnez	$a1, .LBB26_26
	b	.LBB26_39
.LBB26_27:
	move	$a0, $fp
	b	.LBB26_39
.LBB26_28:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s6, $zero
	move	$s8, $zero
	bnez	$s2, .LBB26_5
	b	.LBB26_18
.LBB26_29:
	ori	$a0, $zero, 1
	b	.LBB26_32
.LBB26_30:
	ori	$a0, $zero, 2
.LBB26_31:                              # %sw.bb216
	st.b	$s4, $s0, 81
.LBB26_32:                              # %cleanup223.thread
	st.b	$s3, $s0, 80
	st.w	$a0, $s0, 84
	move	$a0, $fp
	b	.LBB26_39
.LBB26_33:                              # %if.else75
	beqz	$s6, .LBB26_36
# %bb.34:                               # %sw.bb112
	srli.d	$a0, $s6, 4
	bstrins.d	$a0, $s8, 63, 2
	andi	$a1, $s6, 15
	st.b	$a0, $fp, 0
	beqz	$a1, .LBB26_38
# %bb.35:                               # %if.then125
	slli.d	$a1, $s6, 4
	addi.d	$a0, $fp, 2
	st.b	$a1, $fp, 1
	b	.LBB26_39
.LBB26_36:                              # %sw.bb131
	slli.d	$a1, $s8, 2
	addi.d	$a0, $fp, 1
	st.b	$a1, $fp, 0
	b	.LBB26_39
.LBB26_37:
	addi.d	$a0, $fp, 2
	b	.LBB26_39
.LBB26_38:
	addi.d	$a0, $fp, 1
.LBB26_39:                              # %cleanup228
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
.Lfunc_end26:
	.size	decode, .Lfunc_end26-decode
                                        # -- End function
	.p2align	5                               # -- Begin function base64
	.type	base64,@function
base64:                                 # @base64
# %bb.0:                                # %entry
	andi	$a0, $a0, 255
	pcalau12i	$a1, %pc_hi20(base64Table)
	addi.d	$a1, $a1, %pc_lo12(base64Table)
	ldx.bu	$a0, $a1, $a0
	addi.d	$a1, $a0, -255
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 63
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end27:
	.size	base64, .Lfunc_end27-base64
                                        # -- End function
	.globl	messageToFileblob               # -- Begin function messageToFileblob
	.p2align	5
	.type	messageToFileblob,@function
messageToFileblob:                      # @messageToFileblob
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1248
	st.d	$ra, $sp, 1240                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1160                  # 8-byte Folded Spill
	move	$s6, $a2
	move	$s7, $a1
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 56
	addi.d	$s2, $s4, 56
	beqz	$a0, .LBB28_13
# %bb.1:                                # %if.end.i
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_13
# %bb.2:                                # %if.end4.i
	move	$s5, $a0
	ld.w	$a1, $s4, 16
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 104
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	beqz	$s0, .LBB28_14
# %bb.3:                                # %if.then7.i
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB28_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB28_6
# %bb.5:                                # %land.rhs.i
                                        #   in Loop: Header=BB28_4 Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB28_4
.LBB28_6:                               # %while.end.i
	ld.w	$a0, $s4, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB28_93
# %bb.7:                                # %land.lhs.true.i
	ld.d	$a0, $s4, 8
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -8
	sltui	$a0, $a0, 1
	maskeqz	$a2, $s6, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_94
.LBB28_8:                               # %if.end17.i
	move	$s4, $a0
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_95
# %bb.9:                                # %if.end21.i
	move	$s3, $a0
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $s4
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s3, 0
	ori	$a2, $zero, 58
	move	$s5, $a0
	bne	$a1, $a2, .LBB28_96
# %bb.10:                               # %if.then26.i
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_101
# %bb.11:                               # %if.end31.i
	move	$s6, $a0
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$s5, $a0, .LBB28_114
# %bb.12:                               # %for.body.i.preheader
	move	$t2, $zero
	addi.d	$a0, $s5, -1
	addi.d	$a1, $s6, 1
	ori	$a2, $zero, 10
	ori	$a3, $zero, 13
	ori	$a4, $zero, 58
	ori	$a5, $zero, 32
	pcalau12i	$a6, %pc_hi20(.L__const.messageExport.hqxtbl)
	addi.d	$a6, $a6, %pc_lo12(.L__const.messageExport.hqxtbl)
	ori	$a7, $zero, 255
	ori	$t0, $zero, 3
	pcalau12i	$t1, %pc_hi20(.LJTI28_0)
	addi.d	$t1, $t1, %pc_lo12(.LJTI28_0)
	move	$s5, $zero
	b	.LBB28_104
.LBB28_13:
	move	$s5, $zero
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.LBB28_14:                              # %if.end302.i
	ld.w	$a0, $s4, 16
	bnez	$a0, .LBB28_19
# %bb.15:                               # %if.then306.i
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_18
# %bb.16:                               # %if.then310.i
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_116
# %bb.17:                               # %if.else315.i
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	move	$fp, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB28_18:                              # %land.lhs.true319.i
	ld.bu	$a1, $a0, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $a0, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.89)
	addi.d	$a3, $a3, %pc_lo12(.L.str.89)
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	move	$s0, $a0
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	beqz	$a0, .LBB28_117
.LBB28_19:                              # %land.lhs.true338.i
	ld.d	$a1, $s4, 72
	beqz	$a1, .LBB28_21
# %bb.20:                               # %if.then341.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
.LBB28_21:                              # %if.end343.i
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB28_145
# %bb.22:                               # %for.body348.lr.ph.i
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$fp, $zero, 61
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	b	.LBB28_24
	.p2align	4, , 16
.LBB28_23:                              # %for.inc541.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.w	$a0, $s4, 16
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB28_145
.LBB28_24:                              # %for.body348.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_66 Depth 2
                                        #     Child Loop BB28_44 Depth 2
                                        #       Child Loop BB28_52 Depth 3
	ld.d	$a0, $s4, 8
	slli.d	$s4, $s3, 2
	ldx.w	$s8, $a0, $s4
	beqz	$s3, .LBB28_31
# %bb.25:                               # %if.then354.i
                                        #   in Loop: Header=BB28_24 Depth=1
	pcaddu18i	$ra, %call36(fileblobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_100
# %bb.26:                               # %if.end363.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	move	$a1, $s3
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s5, $s0
	ori	$a0, $zero, 6
	bne	$s8, $a0, .LBB28_32
# %bb.27:                               # %land.lhs.true369.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 112
	beqz	$s1, .LBB28_32
.LBB28_28:                              # %if.then372.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_39
# %bb.29:                               # %if.then379.i
                                        #   in Loop: Header=BB28_24 Depth=1
	addi.d	$a0, $a0, 6
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_39
# %bb.30:                               # %land.lhs.true389.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstrip)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB28_40
	.p2align	4, , 16
.LBB28_31:                              # %if.end363.thread.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 112
	bnez	$s1, .LBB28_28
.LBB28_32:                              # %if.else400.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ori	$a0, $zero, 5
	bne	$s8, $a0, .LBB28_34
# %bb.33:                               # %if.then403.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	move	$s8, $zero
	stx.w	$zero, $a0, $s4
.LBB28_34:                              # %if.end407.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_36
# %bb.35:                               # %messageGetFilename.exit.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_87
.LBB28_36:                              #   in Loop: Header=BB28_24 Depth=1
	move	$s0, $a0
	bnez	$s8, .LBB28_38
# %bb.37:                               # %if.then415.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $s1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
.LBB28_38:                              # %if.then429.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.bu	$a1, $s0, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $s0, $a1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB28_41
	b	.LBB28_97
	.p2align	4, , 16
.LBB28_39:                              # %if.end398.critedge.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $s5
	move	$a1, $s7
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
.LBB28_40:                              # %if.end427.thread.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$s4, $s1, 8
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$zero, $a0, 112
	ori	$s8, $zero, 6
	beqz	$s4, .LBB28_97
.LBB28_41:                              # %if.end434.i
                                        #   in Loop: Header=BB28_24 Depth=1
	beqz	$s8, .LBB28_85
# %bb.42:                               # %if.end434.i
                                        #   in Loop: Header=BB28_24 Depth=1
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	move	$s5, $zero
	ori	$a0, $zero, 6
	beq	$s8, $a0, .LBB28_44
	b	.LBB28_66
	.p2align	4, , 16
.LBB28_43:                              # %do.cond.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.d	$s4, $s4, 8
	beqz	$s4, .LBB28_89
.LBB28_44:                              # %do.body.us.i
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_52 Depth 3
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_43
# %bb.45:                               # %if.end457.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	move	$s7, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_89
# %bb.46:                               # %cond.end469.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s1, $a0, 2
	addi.d	$s6, $sp, 136
	ori	$a0, $zero, 1024
	bltu	$s1, $a0, .LBB28_48
# %bb.47:                               # %if.then473.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB28_48:                              # %lor.lhs.false138.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.bu	$s2, $s7, 0
	beqz	$s2, .LBB28_57
# %bb.49:                               # %if.end143.i
                                        #   in Loop: Header=BB28_44 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 6
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_57
# %bb.50:                               # %while.cond149.i.preheader
                                        #   in Loop: Header=BB28_44 Depth=2
	move	$s0, $zero
	b	.LBB28_52
	.p2align	4, , 16
.LBB28_51:                              # %if.end174.i12
                                        #   in Loop: Header=BB28_52 Depth=3
	stx.b	$a0, $s6, $s0
	ld.bu	$s2, $s7, 0
	addi.d	$s0, $s0, 1
.LBB28_52:                              # %while.cond149.i
                                        #   Parent Loop BB28_24 Depth=1
                                        #     Parent Loop BB28_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a0, $s2, 255
	beq	$a0, $fp, .LBB28_55
# %bb.53:                               # %while.cond149.i
                                        #   in Loop: Header=BB28_52 Depth=3
	beqz	$a0, .LBB28_58
# %bb.54:                               # %if.else167.i
                                        #   in Loop: Header=BB28_52 Depth=3
	addi.d	$s7, $s7, 1
	addi.d	$a0, $s2, -42
	b	.LBB28_51
	.p2align	4, , 16
.LBB28_55:                              # %if.then155.i
                                        #   in Loop: Header=BB28_52 Depth=3
	ld.bu	$a0, $s7, 1
	beqz	$a0, .LBB28_58
# %bb.56:                               # %if.end161.i
                                        #   in Loop: Header=BB28_52 Depth=3
	addi.d	$s7, $s7, 2
	addi.d	$a0, $a0, -64
	b	.LBB28_51
	.p2align	4, , 16
.LBB28_57:                              # %if.end485.us.i.thread
                                        #   in Loop: Header=BB28_44 Depth=2
	st.b	$zero, $s6, 0
	b	.LBB28_60
	.p2align	4, , 16
.LBB28_58:                              # %if.end485.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	stx.b	$zero, $s6, $s0
	beqz	$s0, .LBB28_60
# %bb.59:                               # %if.then488.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	add.d	$s5, $s5, $s0
.LBB28_60:                              # %if.end493.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ori	$a0, $zero, 1024
	bltu	$s1, $a0, .LBB28_62
# %bb.61:                               # %if.then496.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB28_62:                              # %if.end497.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	beqz	$s6, .LBB28_43
# %bb.63:                               # %land.lhs.true501.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	bne	$s3, $a0, .LBB28_43
# %bb.64:                               # %if.then506.us.i
                                        #   in Loop: Header=BB28_44 Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, 0
	b	.LBB28_43
	.p2align	4, , 16
.LBB28_65:                              # %do.cond.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ld.d	$s4, $s4, 8
	beqz	$s4, .LBB28_89
.LBB28_66:                              # %do.body.i
                                        #   Parent Loop BB28_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$a0, .LBB28_70
# %bb.67:                               # %cond.end469.i
                                        #   in Loop: Header=BB28_66 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s0, $a0, 2
	ori	$a0, $zero, 1024
	bltu	$s0, $a0, .LBB28_75
# %bb.68:                               # %if.end476.i
                                        #   in Loop: Header=BB28_66 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(decodeLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_88
# %bb.69:                               #   in Loop: Header=BB28_66 Depth=2
	ori	$s2, $zero, 1
	bne	$a0, $s1, .LBB28_77
	b	.LBB28_78
	.p2align	4, , 16
.LBB28_70:                              # %if.end476.thread.i
                                        #   in Loop: Header=BB28_66 Depth=2
	addi.d	$s1, $sp, 136
	addi.d	$a1, $s8, -5
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB28_74
# %bb.71:                               # %if.end476.thread.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ori	$a1, $zero, 2
	beq	$s8, $a1, .LBB28_74
# %bb.72:                               # %if.end476.thread.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB28_84
# %bb.73:                               # %sw.bb2.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ori	$a0, $zero, 10
	st.b	$a0, $sp, 136
	addi.d	$a0, $sp, 137
.LBB28_74:                              # %decodeLine.exit.thread
                                        #   in Loop: Header=BB28_66 Depth=2
	move	$s2, $zero
	st.b	$zero, $a0, 0
	bne	$a0, $s1, .LBB28_77
	b	.LBB28_78
	.p2align	4, , 16
.LBB28_75:                              # %if.end476.i.thread
                                        #   in Loop: Header=BB28_66 Depth=2
	addi.d	$a3, $sp, 136
	ori	$a4, $zero, 1024
	addi.d	$s1, $sp, 136
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(decodeLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_89
.LBB28_76:                              #   in Loop: Header=BB28_66 Depth=2
	move	$s2, $zero
	beq	$a0, $s1, .LBB28_78
.LBB28_77:                              # %if.then488.i
                                        #   in Loop: Header=BB28_66 Depth=2
	sub.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	add.d	$s5, $s0, $s5
.LBB28_78:                              # %if.end493.i
                                        #   in Loop: Header=BB28_66 Depth=2
	beqz	$s2, .LBB28_80
# %bb.79:                               # %if.then496.i
                                        #   in Loop: Header=BB28_66 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB28_80:                              # %if.end497.i
                                        #   in Loop: Header=BB28_66 Depth=2
	beqz	$s6, .LBB28_65
# %bb.81:                               # %if.end497.i
                                        #   in Loop: Header=BB28_66 Depth=2
	beqz	$s7, .LBB28_65
# %bb.82:                               # %land.lhs.true501.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	bne	$s3, $a0, .LBB28_65
# %bb.83:                               # %if.then506.i
                                        #   in Loop: Header=BB28_66 Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, 0
	b	.LBB28_65
.LBB28_84:                              # %decodeLine.exit
                                        #   in Loop: Header=BB28_66 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(cli_strrcpy)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_76
	b	.LBB28_89
	.p2align	4, , 16
.LBB28_85:                              # %if.then437.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s3, $a0, .LBB28_115
# %bb.86:                               # %if.end444.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB28_23
.LBB28_87:                              # %if.end427.thread59.i
                                        #   in Loop: Header=BB28_24 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	move	$a1, $s7
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s1, 56
	bnez	$s4, .LBB28_41
	b	.LBB28_97
.LBB28_88:                              # %if.then483.i
                                        #   in Loop: Header=BB28_24 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB28_89:                              # %do.end.i
                                        #   in Loop: Header=BB28_24 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	move	$a1, $s5
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $s4, 84
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB28_23
# %bb.90:                               # %if.then523.i
                                        #   in Loop: Header=BB28_24 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 84
	beqz	$a0, .LBB28_23
# %bb.91:                               # %base64Flush.exit.i
                                        #   in Loop: Header=BB28_24 Depth=1
	pcalau12i	$a0, %pc_hi20(base64)
	addi.d	$a3, $a0, %pc_lo12(base64)
	addi.d	$a2, $sp, 136
	move	$a0, $s4
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	st.w	$zero, $s4, 84
	beqz	$a0, .LBB28_23
# %bb.92:                               # %if.then529.i
                                        #   in Loop: Header=BB28_24 Depth=1
	addi.d	$a1, $sp, 136
	sub.d	$a2, $a0, $a1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	b	.LBB28_23
.LBB28_93:
	move	$a2, $zero
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB28_8
.LBB28_94:                              # %if.then16.i
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	b	.LBB28_98
.LBB28_95:                              # %if.then20.i
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB28_99
.LBB28_96:                              # %if.else.i
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB28_120
.LBB28_97:                              # %if.then433.i
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
.LBB28_98:                              # %messageExport.specialized.2.exit
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB28_99:                              # %messageExport.specialized.2.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	move	$s5, $zero
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.LBB28_100:                             # %cleanup360.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.LBB28_101:                             # %cleanup103.thread.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB28_144
.LBB28_102:                             # %sw.bb80.i
                                        #   in Loop: Header=BB28_104 Depth=1
	ldx.b	$t2, $s3, $s5
	bstrpick.d	$t4, $t3, 5, 2
	or	$t2, $t2, $t4
	stx.b	$t2, $s3, $s5
	addi.d	$s5, $s5, 1
	slli.d	$t2, $t3, 6
	stx.b	$t2, $s3, $s5
	ori	$t2, $zero, 3
	.p2align	4, , 16
.LBB28_103:                             # %for.inc.i
                                        #   in Loop: Header=BB28_104 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB28_119
.LBB28_104:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a1, 0
	beq	$t3, $a2, .LBB28_103
# %bb.105:                              # %for.body.i
                                        #   in Loop: Header=BB28_104 Depth=1
	beq	$t3, $a3, .LBB28_103
# %bb.106:                              # %for.body.i
                                        #   in Loop: Header=BB28_104 Depth=1
	beq	$t3, $a4, .LBB28_119
# %bb.107:                              # %if.end47.i
                                        #   in Loop: Header=BB28_104 Depth=1
	ext.w.b	$t4, $t3
	blt	$t4, $a5, .LBB28_118
# %bb.108:                              # %lor.lhs.false55.i
                                        #   in Loop: Header=BB28_104 Depth=1
	ldx.bu	$t3, $a6, $t3
	beq	$t3, $a7, .LBB28_118
# %bb.109:                              # %if.end63.i
                                        #   in Loop: Header=BB28_104 Depth=1
	bltu	$t0, $t2, .LBB28_103
# %bb.110:                              # %if.end63.i
                                        #   in Loop: Header=BB28_104 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t1, $t2
	add.d	$t2, $t1, $t2
	jr	$t2
.LBB28_111:                             # %sw.bb.i
                                        #   in Loop: Header=BB28_104 Depth=1
	slli.d	$t2, $t3, 2
	stx.b	$t2, $s3, $s5
	ori	$t2, $zero, 1
	b	.LBB28_103
.LBB28_112:                             # %sw.bb94.i
                                        #   in Loop: Header=BB28_104 Depth=1
	ldx.b	$t4, $s3, $s5
	move	$t2, $zero
	andi	$t3, $t3, 63
	addi.d	$t5, $s5, 1
	or	$t3, $t4, $t3
	stx.b	$t3, $s3, $s5
	move	$s5, $t5
	b	.LBB28_103
.LBB28_113:                             # %sw.bb69.i
                                        #   in Loop: Header=BB28_104 Depth=1
	ldx.b	$t2, $s3, $s5
	bstrpick.d	$t4, $t3, 5, 4
	or	$t2, $t2, $t4
	stx.b	$t2, $s3, $s5
	addi.d	$s5, $s5, 1
	slli.d	$t2, $t3, 4
	stx.b	$t2, $s3, $s5
	ori	$t2, $zero, 2
	b	.LBB28_103
.LBB28_114:
	move	$s5, $zero
	b	.LBB28_119
.LBB28_115:                             # %for.end543.i
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.LBB28_116:                             # %if.end328.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a2, $a0, %pc_lo12(.L.str.89)
	move	$a0, $s5
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 16
	bnez	$a0, .LBB28_19
.LBB28_117:                             # %if.then332.i
	ld.d	$a0, $s2, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(textToFileblob)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.LBB28_118:                             # %if.then60.i
	andi	$a1, $t4, 255
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB28_119:                             # %cleanup103.i
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB28_120:                             # %if.end106.i
	ori	$a1, $zero, 144
	move	$a0, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_139
# %bb.121:                              # %if.then108.i
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_142
# %bb.122:                              # %for.cond114.preheader.i
	move	$s6, $a0
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	beqz	$s5, .LBB28_132
# %bb.123:                              # %for.body117.lr.ph.i
	move	$fp, $zero
	addi.d	$s1, $s5, -1
	ori	$s2, $zero, 1
	ori	$s8, $zero, 144
	ori	$s7, $zero, 2
	b	.LBB28_126
.LBB28_124:                             # %if.then134.i
                                        #   in Loop: Header=BB28_126 Depth=1
	st.b	$s8, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB28_125:                             # %if.end146.i
                                        #   in Loop: Header=BB28_126 Depth=1
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s5, .LBB28_132
.LBB28_126:                             # %for.body117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_131 Depth 2
	ldx.b	$a0, $s3, $fp
	st.b	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	bgeu	$fp, $s1, .LBB28_125
# %bb.127:                              # %land.lhs.true123.i
                                        #   in Loop: Header=BB28_126 Depth=1
	add.d	$a0, $s3, $fp
	ld.bu	$a0, $a0, 1
	bne	$a0, $s8, .LBB28_125
# %bb.128:                              # %if.then128.i
                                        #   in Loop: Header=BB28_126 Depth=1
	addi.d	$fp, $fp, 2
	ldx.bu	$s0, $s3, $fp
	beqz	$s0, .LBB28_124
# %bb.129:                              # %if.else136.i
                                        #   in Loop: Header=BB28_126 Depth=1
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(blobGrow)
	jirl	$ra, $ra, 0
	beq	$s0, $s2, .LBB28_125
# %bb.130:                              # %while.body142.preheader.i
                                        #   in Loop: Header=BB28_126 Depth=1
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB28_131:                             # %while.body142.i
                                        #   Parent Loop BB28_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bltu	$s7, $s0, .LBB28_131
	b	.LBB28_125
.LBB28_132:                             # %cleanup152.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s5, $s0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 88                    # 8-byte Folded Reload
	beqz	$s5, .LBB28_140
.LBB28_133:                             # %if.end160.i
	ld.bu	$s1, $s3, 0
	bgeu	$s1, $s5, .LBB28_141
# %bb.134:                              # %if.end166.i
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_141
# %bb.135:                              # %if.end174.i
	move	$s4, $a0
	addi.d	$a1, $s3, 1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a0, $s5
	move	$a1, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fileblobSetFilename)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB28_137
# %bb.136:                              # %if.then184.i
	pcalau12i	$a1, %pc_hi20(.L.str.82)
	addi.d	$a1, $a1, %pc_lo12(.L.str.82)
	move	$s0, $a0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB28_137:                             # %if.end186.i
	addi.d	$a0, $s1, 12
	andi	$a0, $a0, 255
	ldx.wu	$a1, $s3, $a0
	add.d	$a0, $s3, $a0
	ld.wu	$a0, $a0, 4
	revb.d	$a1, $a1
	srli.d	$s0, $a1, 32
	revb.d	$a0, $a0
	srli.d	$a3, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s1, 22
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	andi	$fp, $fp, 255
	sub.d	$s1, $a0, $fp
	bgeu	$s1, $s0, .LBB28_149
# %bb.138:                              # %if.then262.i
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB28_150
.LBB28_139:                             # %if.else155.i
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s6, $s4
	bnez	$s5, .LBB28_133
.LBB28_140:                             # %if.then159.i
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB28_141:                             # %if.then165.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	b	.LBB28_143
.LBB28_142:                             # %cleanup152.thread.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fileblobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s4
.LBB28_143:                             # %messageExport.specialized.2.exit
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
.LBB28_144:                             # %messageExport.specialized.2.exit
	move	$s5, $zero
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
.LBB28_145:                             # %messageExport.specialized.2.exit
	beqz	$s6, .LBB28_148
.LBB28_146:                             # %land.lhs.true
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB28_148
# %bb.147:                              # %if.then
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 0
.LBB28_148:                             # %if.end
	move	$a0, $s5
	ld.d	$s8, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1240                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1248
	ret
.LBB28_149:
	move	$s1, $s0
.LBB28_150:                             # %land.lhs.true265.i
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s4, 72
	beqz	$a1, .LBB28_152
# %bb.151:                              # %if.then267.i
	move	$a0, $s5
	pcaddu18i	$ra, %call36(fileblobSetCTX)
	jirl	$ra, $ra, 0
.LBB28_152:                             # %if.end269.i
	add.d	$a1, $s3, $fp
	move	$a0, $s5
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fileblobAddData)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	beqz	$s6, .LBB28_154
# %bb.153:                              # %if.then273.i
	st.d	$zero, $s4, 104
.LBB28_154:                             # %if.end274.i
	ld.w	$a0, $s4, 16
	beqz	$a0, .LBB28_157
# %bb.155:                              # %if.end274.i
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB28_19
# %bb.156:                              # %land.lhs.true282.i
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 8
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB28_19
.LBB28_157:                             # %if.then287.i
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB28_146
	b	.LBB28_148
.Lfunc_end28:
	.size	messageToFileblob, .Lfunc_end28-messageToFileblob
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI28_0:
	.word	.LBB28_111-.LJTI28_0
	.word	.LBB28_113-.LJTI28_0
	.word	.LBB28_102-.LJTI28_0
	.word	.LBB28_112-.LJTI28_0
                                        # -- End function
	.text
	.globl	messageToBlob                   # -- Begin function messageToBlob
	.p2align	5
	.type	messageToBlob,@function
messageToBlob:                          # @messageToBlob
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1232
	st.d	$ra, $sp, 1224                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1144                  # 8-byte Folded Spill
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 56
	addi.d	$s1, $s3, 56
	beqz	$a0, .LBB29_13
# %bb.1:                                # %if.end.i
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	beqz	$a0, .LBB29_13
# %bb.2:                                # %if.end4.i
	ld.w	$a1, $s3, 16
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s3, 104
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	beqz	$s0, .LBB29_14
# %bb.3:                                # %if.then7.i
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB29_4:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB29_6
# %bb.5:                                # %land.rhs.i
                                        #   in Loop: Header=BB29_4 Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB29_4
.LBB29_6:                               # %while.end.i
	ld.w	$a0, $s3, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB29_92
# %bb.7:                                # %land.lhs.true.i
	ld.d	$a0, $s3, 8
	ld.w	$a0, $a0, 0
	addi.d	$a0, $a0, -8
	sltui	$a0, $a0, 1
	maskeqz	$a2, $s5, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_93
.LBB29_8:                               # %if.end17.i
	move	$s3, $a0
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_94
# %bb.9:                                # %if.end21.i
	move	$s2, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s2, 0
	ori	$a2, $zero, 58
	move	$s4, $a0
	bne	$a1, $a2, .LBB29_96
# %bb.10:                               # %if.then26.i
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_99
# %bb.11:                               # %if.end31.i
	move	$s5, $a0
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$s4, $a0, .LBB29_112
# %bb.12:                               # %for.body.i.preheader
	move	$t2, $zero
	addi.d	$a0, $s4, -1
	addi.d	$a1, $s5, 1
	ori	$a2, $zero, 10
	ori	$a3, $zero, 13
	ori	$a4, $zero, 58
	ori	$a5, $zero, 32
	pcalau12i	$a6, %pc_hi20(.L__const.messageExport.hqxtbl)
	addi.d	$a6, $a6, %pc_lo12(.L__const.messageExport.hqxtbl)
	ori	$a7, $zero, 255
	ori	$t0, $zero, 3
	pcalau12i	$t1, %pc_hi20(.LJTI29_0)
	addi.d	$t1, $t1, %pc_lo12(.LJTI29_0)
	move	$s4, $zero
	b	.LBB29_102
.LBB29_13:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_14:                              # %if.end302.i
	ld.w	$a0, $s3, 16
	bnez	$a0, .LBB29_19
# %bb.15:                               # %if.then306.i
	pcalau12i	$a0, %pc_hi20(.L.str.86)
	addi.d	$a0, $a0, %pc_lo12(.L.str.86)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_18
# %bb.16:                               # %if.then310.i
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_114
# %bb.17:                               # %if.else315.i
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB29_18:                              # %land.lhs.true319.i
	ld.bu	$a1, $a0, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $a0, $a1
	pcalau12i	$a3, %pc_hi20(.L.str.89)
	addi.d	$a3, $a3, %pc_lo12(.L.str.89)
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 16
	beqz	$a0, .LBB29_115
.LBB29_19:                              # %if.end343.i
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB29_142
.LBB29_20:                              # %for.body348.lr.ph.i
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.92)
	addi.d	$a0, $a0, %pc_lo12(.L.str.92)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a0, $a0, %pc_lo12(.L.str.89)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.93)
	addi.d	$a0, $a0, %pc_lo12(.L.str.93)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.94)
	addi.d	$a0, $a0, %pc_lo12(.L.str.94)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.95)
	addi.d	$a0, $a0, %pc_lo12(.L.str.95)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a0, $a0, %pc_lo12(.L.str.88)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$fp, $zero, 61
	b	.LBB29_22
	.p2align	4, , 16
.LBB29_21:                              # %for.inc541.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.w	$a0, $s3, 16
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB29_142
.LBB29_22:                              # %for.body348.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_65 Depth 2
                                        #     Child Loop BB29_43 Depth 2
                                        #       Child Loop BB29_51 Depth 3
	ld.d	$a0, $s3, 8
	slli.d	$s4, $s2, 2
	ldx.w	$s6, $a0, $s4
	beqz	$s2, .LBB29_29
# %bb.23:                               # %if.then354.i
                                        #   in Loop: Header=BB29_22 Depth=1
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_98
# %bb.24:                               # %if.end363.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.91)
	addi.d	$a0, $a0, %pc_lo12(.L.str.91)
	move	$a1, $s2
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $zero, 6
	bne	$s6, $a0, .LBB29_31
# %bb.25:                               # %land.lhs.true369.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$s3, $s3, 112
	beqz	$s3, .LBB29_30
.LBB29_26:                              # %if.then372.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_38
# %bb.27:                               # %if.then379.i
                                        #   in Loop: Header=BB29_22 Depth=1
	addi.d	$a0, $a0, 6
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_38
# %bb.28:                               # %land.lhs.true389.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(cli_chomp)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strstrip)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB29_39
	.p2align	4, , 16
.LBB29_29:                              # %if.end363.thread.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 112
	bnez	$s3, .LBB29_26
.LBB29_30:                              #   in Loop: Header=BB29_22 Depth=1
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
.LBB29_31:                              # %if.else400.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ori	$a0, $zero, 5
	bne	$s6, $a0, .LBB29_33
# %bb.32:                               # %if.then403.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	move	$s6, $zero
	stx.w	$zero, $a0, $s4
.LBB29_33:                              # %if.end407.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_35
# %bb.34:                               # %messageGetFilename.exit.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageFindArgument)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_86
.LBB29_35:                              #   in Loop: Header=BB29_22 Depth=1
	move	$s0, $a0
	bnez	$s6, .LBB29_37
# %bb.36:                               # %if.then415.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$a0, $s3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageSetEncoding)
	jirl	$ra, $ra, 0
.LBB29_37:                              # %if.then429.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.bu	$a1, $s0, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $s0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a1, $a3, $a1
	or	$a2, $a1, $a2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB29_40
	b	.LBB29_97
	.p2align	4, , 16
.LBB29_38:                              # %if.end398.critedge.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
.LBB29_39:                              # %if.end427.thread.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$s7, $s3, 8
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	st.d	$zero, $s3, 112
	ori	$s6, $zero, 6
	beqz	$s7, .LBB29_97
.LBB29_40:                              # %if.end434.i
                                        #   in Loop: Header=BB29_22 Depth=1
	beqz	$s6, .LBB29_84
# %bb.41:                               # %if.end434.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$s3, $zero
	ori	$a0, $zero, 6
	beq	$s6, $a0, .LBB29_43
	b	.LBB29_65
	.p2align	4, , 16
.LBB29_42:                              # %do.cond.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB29_88
.LBB29_43:                              # %do.body.us.i
                                        #   Parent Loop BB29_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_51 Depth 3
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_42
# %bb.44:                               # %if.end457.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_88
# %bb.45:                               # %cond.end469.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s4, $a0, 2
	addi.d	$s5, $sp, 120
	ori	$a0, $zero, 1024
	bltu	$s4, $a0, .LBB29_47
# %bb.46:                               # %if.then473.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB29_47:                              # %lor.lhs.false138.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.bu	$s1, $s8, 0
	beqz	$s1, .LBB29_56
# %bb.48:                               # %if.end143.i
                                        #   in Loop: Header=BB29_43 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_56
# %bb.49:                               # %while.cond149.i.preheader
                                        #   in Loop: Header=BB29_43 Depth=2
	move	$s0, $zero
	b	.LBB29_51
	.p2align	4, , 16
.LBB29_50:                              # %if.end174.i12
                                        #   in Loop: Header=BB29_51 Depth=3
	stx.b	$a0, $s5, $s0
	ld.bu	$s1, $s8, 0
	addi.d	$s0, $s0, 1
.LBB29_51:                              # %while.cond149.i
                                        #   Parent Loop BB29_22 Depth=1
                                        #     Parent Loop BB29_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a0, $s1, 255
	beq	$a0, $fp, .LBB29_54
# %bb.52:                               # %while.cond149.i
                                        #   in Loop: Header=BB29_51 Depth=3
	beqz	$a0, .LBB29_57
# %bb.53:                               # %if.else167.i
                                        #   in Loop: Header=BB29_51 Depth=3
	addi.d	$s8, $s8, 1
	addi.d	$a0, $s1, -42
	b	.LBB29_50
	.p2align	4, , 16
.LBB29_54:                              # %if.then155.i
                                        #   in Loop: Header=BB29_51 Depth=3
	ld.bu	$a0, $s8, 1
	beqz	$a0, .LBB29_57
# %bb.55:                               # %if.end161.i
                                        #   in Loop: Header=BB29_51 Depth=3
	addi.d	$s8, $s8, 2
	addi.d	$a0, $a0, -64
	b	.LBB29_50
	.p2align	4, , 16
.LBB29_56:                              # %if.end485.us.i.thread
                                        #   in Loop: Header=BB29_43 Depth=2
	st.b	$zero, $s5, 0
	b	.LBB29_59
	.p2align	4, , 16
.LBB29_57:                              # %if.end485.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	stx.b	$zero, $s5, $s0
	beqz	$s0, .LBB29_59
# %bb.58:                               # %if.then488.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	add.d	$s3, $s3, $s0
.LBB29_59:                              # %if.end493.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ori	$a0, $zero, 1024
	bltu	$s4, $a0, .LBB29_61
# %bb.60:                               # %if.then496.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB29_61:                              # %if.end497.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	beqz	$s5, .LBB29_42
# %bb.62:                               # %land.lhs.true501.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	bne	$s2, $a0, .LBB29_42
# %bb.63:                               # %if.then506.us.i
                                        #   in Loop: Header=BB29_43 Depth=2
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 0
	b	.LBB29_42
	.p2align	4, , 16
.LBB29_64:                              # %do.cond.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ld.d	$s7, $s7, 8
	beqz	$s7, .LBB29_88
.LBB29_65:                              # %do.body.i
                                        #   Parent Loop BB29_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB29_69
# %bb.66:                               # %cond.end469.i
                                        #   in Loop: Header=BB29_65 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$s0, $a0, 2
	ori	$a0, $zero, 1024
	bltu	$s0, $a0, .LBB29_74
# %bb.67:                               # %if.end476.i
                                        #   in Loop: Header=BB29_65 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s4
	move	$a3, $s8
	move	$a4, $s0
	pcaddu18i	$ra, %call36(decodeLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_87
# %bb.68:                               #   in Loop: Header=BB29_65 Depth=2
	ori	$s1, $zero, 1
	bne	$a0, $s8, .LBB29_76
	b	.LBB29_77
	.p2align	4, , 16
.LBB29_69:                              # %if.end476.thread.i
                                        #   in Loop: Header=BB29_65 Depth=2
	addi.d	$s8, $sp, 120
	addi.d	$a1, $s6, -5
	addi.d	$a0, $sp, 120
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB29_73
# %bb.70:                               # %if.end476.thread.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ori	$a1, $zero, 2
	beq	$s6, $a1, .LBB29_73
# %bb.71:                               # %if.end476.thread.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB29_83
# %bb.72:                               # %sw.bb2.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ori	$a0, $zero, 10
	st.b	$a0, $sp, 120
	addi.d	$a0, $sp, 121
.LBB29_73:                              # %decodeLine.exit.thread
                                        #   in Loop: Header=BB29_65 Depth=2
	move	$s1, $zero
	st.b	$zero, $a0, 0
	bne	$a0, $s8, .LBB29_76
	b	.LBB29_77
	.p2align	4, , 16
.LBB29_74:                              # %if.end476.i.thread
                                        #   in Loop: Header=BB29_65 Depth=2
	addi.d	$a3, $sp, 120
	ori	$a4, $zero, 1024
	addi.d	$s8, $sp, 120
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(decodeLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_88
.LBB29_75:                              #   in Loop: Header=BB29_65 Depth=2
	move	$s1, $zero
	beq	$a0, $s8, .LBB29_77
.LBB29_76:                              # %if.then488.i
                                        #   in Loop: Header=BB29_65 Depth=2
	sub.d	$s0, $a0, $s8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	add.d	$s3, $s0, $s3
.LBB29_77:                              # %if.end493.i
                                        #   in Loop: Header=BB29_65 Depth=2
	beqz	$s1, .LBB29_79
# %bb.78:                               # %if.then496.i
                                        #   in Loop: Header=BB29_65 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB29_79:                              # %if.end497.i
                                        #   in Loop: Header=BB29_65 Depth=2
	beqz	$s5, .LBB29_64
# %bb.80:                               # %if.end497.i
                                        #   in Loop: Header=BB29_65 Depth=2
	beqz	$s4, .LBB29_64
# %bb.81:                               # %land.lhs.true501.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	bne	$s2, $a0, .LBB29_64
# %bb.82:                               # %if.then506.i
                                        #   in Loop: Header=BB29_65 Depth=2
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(lineUnlink)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 0
	b	.LBB29_64
.LBB29_83:                              # %decodeLine.exit
                                        #   in Loop: Header=BB29_65 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(cli_strrcpy)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_75
	b	.LBB29_88
	.p2align	4, , 16
.LBB29_84:                              # %if.then437.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.w	$a0, $s3, 16
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	beq	$s2, $a0, .LBB29_113
# %bb.85:                               # %if.end444.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB29_21
.LBB29_86:                              # %if.end427.thread59.i
                                        #   in Loop: Header=BB29_22 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s3, 56
	bnez	$s7, .LBB29_40
	b	.LBB29_97
.LBB29_87:                              # %if.then483.i
                                        #   in Loop: Header=BB29_22 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB29_88:                              # %do.end.i
                                        #   in Loop: Header=BB29_22 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.97)
	addi.d	$a0, $a0, %pc_lo12(.L.str.97)
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $s3, 84
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB29_21
# %bb.89:                               # %if.then523.i
                                        #   in Loop: Header=BB29_22 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 84
	beqz	$a0, .LBB29_21
# %bb.90:                               # %base64Flush.exit.i
                                        #   in Loop: Header=BB29_22 Depth=1
	pcalau12i	$a0, %pc_hi20(base64)
	addi.d	$a3, $a0, %pc_lo12(base64)
	addi.d	$a2, $sp, 120
	move	$a0, $s3
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	st.w	$zero, $s3, 84
	beqz	$a0, .LBB29_21
# %bb.91:                               # %if.then529.i
                                        #   in Loop: Header=BB29_22 Depth=1
	addi.d	$a1, $sp, 120
	sub.d	$a2, $a0, $a1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	b	.LBB29_21
.LBB29_92:
	move	$a2, $zero
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB29_8
.LBB29_93:                              # %if.then16.i
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB29_95
.LBB29_94:                              # %if.then20.i
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
.LBB29_95:                              # %messageExport.specialized.1.exit
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_96:                              # %if.else.i
	pcalau12i	$a0, %pc_hi20(.L.str.78)
	addi.d	$a0, $a0, %pc_lo12(.L.str.78)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB29_118
.LBB29_97:                              # %if.then433.i
	pcalau12i	$a0, %pc_hi20(.L.str.96)
	addi.d	$a0, $a0, %pc_lo12(.L.str.96)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_98:                              # %cleanup360.thread.i
	pcalau12i	$a0, %pc_hi20(.L.str.90)
	addi.d	$a0, $a0, %pc_lo12(.L.str.90)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_99:                              # %cleanup103.thread.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB29_141
.LBB29_100:                             # %sw.bb80.i
                                        #   in Loop: Header=BB29_102 Depth=1
	ldx.b	$t2, $s2, $s4
	bstrpick.d	$t4, $t3, 5, 2
	or	$t2, $t2, $t4
	stx.b	$t2, $s2, $s4
	addi.d	$s4, $s4, 1
	slli.d	$t2, $t3, 6
	stx.b	$t2, $s2, $s4
	ori	$t2, $zero, 3
	.p2align	4, , 16
.LBB29_101:                             # %for.inc.i
                                        #   in Loop: Header=BB29_102 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB29_117
.LBB29_102:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t3, $a1, 0
	beq	$t3, $a2, .LBB29_101
# %bb.103:                              # %for.body.i
                                        #   in Loop: Header=BB29_102 Depth=1
	beq	$t3, $a3, .LBB29_101
# %bb.104:                              # %for.body.i
                                        #   in Loop: Header=BB29_102 Depth=1
	beq	$t3, $a4, .LBB29_117
# %bb.105:                              # %if.end47.i
                                        #   in Loop: Header=BB29_102 Depth=1
	ext.w.b	$t4, $t3
	blt	$t4, $a5, .LBB29_116
# %bb.106:                              # %lor.lhs.false55.i
                                        #   in Loop: Header=BB29_102 Depth=1
	ldx.bu	$t3, $a6, $t3
	beq	$t3, $a7, .LBB29_116
# %bb.107:                              # %if.end63.i
                                        #   in Loop: Header=BB29_102 Depth=1
	bltu	$t0, $t2, .LBB29_101
# %bb.108:                              # %if.end63.i
                                        #   in Loop: Header=BB29_102 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $t1, $t2
	add.d	$t2, $t1, $t2
	jr	$t2
.LBB29_109:                             # %sw.bb.i
                                        #   in Loop: Header=BB29_102 Depth=1
	slli.d	$t2, $t3, 2
	stx.b	$t2, $s2, $s4
	ori	$t2, $zero, 1
	b	.LBB29_101
.LBB29_110:                             # %sw.bb94.i
                                        #   in Loop: Header=BB29_102 Depth=1
	ldx.b	$t4, $s2, $s4
	move	$t2, $zero
	andi	$t3, $t3, 63
	addi.d	$t5, $s4, 1
	or	$t3, $t4, $t3
	stx.b	$t3, $s2, $s4
	move	$s4, $t5
	b	.LBB29_101
.LBB29_111:                             # %sw.bb69.i
                                        #   in Loop: Header=BB29_102 Depth=1
	ldx.b	$t2, $s2, $s4
	bstrpick.d	$t4, $t3, 5, 4
	or	$t2, $t2, $t4
	stx.b	$t2, $s2, $s4
	addi.d	$s4, $s4, 1
	slli.d	$t2, $t3, 4
	stx.b	$t2, $s2, $s4
	ori	$t2, $zero, 2
	b	.LBB29_101
.LBB29_112:
	move	$s4, $zero
	b	.LBB29_117
.LBB29_113:                             # %for.end543.i
	move	$a0, $s7
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_114:                             # %if.end328.critedge.i
	pcalau12i	$a0, %pc_hi20(.L.str.87)
	addi.d	$a0, $a0, %pc_lo12(.L.str.87)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.88)
	addi.d	$a1, $a0, %pc_lo12(.L.str.88)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.89)
	addi.d	$a2, $a0, %pc_lo12(.L.str.89)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 16
	bnez	$a0, .LBB29_19
.LBB29_115:                             # %if.then332.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(textToBlob)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.LBB29_116:                             # %if.then60.i
	andi	$a1, $t4, 255
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	move	$a2, $a1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB29_117:                             # %cleanup103.i
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB29_118:                             # %if.end106.i
	ori	$a1, $zero, 144
	move	$a0, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_137
# %bb.119:                              # %if.then108.i
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_140
# %bb.120:                              # %for.cond114.preheader.i
	move	$s5, $a0
	beqz	$s4, .LBB29_130
# %bb.121:                              # %for.body117.lr.ph.i
	move	$fp, $zero
	addi.d	$s6, $s4, -1
	ori	$s1, $zero, 1
	ori	$s8, $zero, 144
	ori	$s7, $zero, 2
	b	.LBB29_124
.LBB29_122:                             # %if.then134.i
                                        #   in Loop: Header=BB29_124 Depth=1
	st.b	$s8, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB29_123:                             # %if.end146.i
                                        #   in Loop: Header=BB29_124 Depth=1
	addi.d	$fp, $fp, 1
	bgeu	$fp, $s4, .LBB29_130
.LBB29_124:                             # %for.body117.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_129 Depth 2
	ldx.b	$a0, $s2, $fp
	st.b	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	bgeu	$fp, $s6, .LBB29_123
# %bb.125:                              # %land.lhs.true123.i
                                        #   in Loop: Header=BB29_124 Depth=1
	add.d	$a0, $s2, $fp
	ld.bu	$a0, $a0, 1
	bne	$a0, $s8, .LBB29_123
# %bb.126:                              # %if.then128.i
                                        #   in Loop: Header=BB29_124 Depth=1
	addi.d	$fp, $fp, 2
	ldx.bu	$s0, $s2, $fp
	beqz	$s0, .LBB29_122
# %bb.127:                              # %if.else136.i
                                        #   in Loop: Header=BB29_124 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(blobGrow)
	jirl	$ra, $ra, 0
	beq	$s0, $s1, .LBB29_123
# %bb.128:                              # %while.body142.preheader.i
                                        #   in Loop: Header=BB29_124 Depth=1
	addi.d	$s0, $s0, 1
	.p2align	4, , 16
.LBB29_129:                             # %while.body142.i
                                        #   Parent Loop BB29_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bltu	$s7, $s0, .LBB29_129
	b	.LBB29_123
.LBB29_130:                             # %cleanup152.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobGetData)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $s0
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	beqz	$s4, .LBB29_138
.LBB29_131:                             # %if.end160.i
	ld.bu	$s3, $s2, 0
	bgeu	$s3, $s4, .LBB29_139
# %bb.132:                              # %if.end166.i
	addi.d	$a0, $s3, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_139
# %bb.133:                              # %if.end174.i
	move	$s4, $a0
	addi.d	$a1, $s2, 1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s4, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(blobSetFilename)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB29_135
# %bb.134:                              # %if.then184.i
	pcalau12i	$a1, %pc_hi20(.L.str.82)
	addi.d	$a1, $a1, %pc_lo12(.L.str.82)
	move	$s0, $a0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(messageAddArgument)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB29_135:                             # %if.end186.i
	addi.d	$a0, $s3, 12
	andi	$a0, $a0, 255
	ldx.wu	$a1, $s2, $a0
	add.d	$a0, $s2, $a0
	ld.wu	$a0, $a0, 4
	revb.d	$a1, $a1
	srli.d	$s0, $a1, 32
	revb.d	$a0, $a0
	srli.d	$a3, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a0, $a0, %pc_lo12(.L.str.83)
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s3, 22
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	andi	$fp, $fp, 255
	sub.d	$s3, $a0, $fp
	bgeu	$s3, $s0, .LBB29_146
# %bb.136:                              # %if.then262.i
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a0, $a0, %pc_lo12(.L.str.84)
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB29_147
.LBB29_137:                             # %if.else155.i
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s5, $s3
	bnez	$s4, .LBB29_131
.LBB29_138:                             # %if.then159.i
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a0, $a0, %pc_lo12(.L.str.81)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB29_139:                             # %if.then165.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	b	.LBB29_141
.LBB29_140:                             # %cleanup152.thread.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB29_141:                             # %messageExport.specialized.1.exit
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
.LBB29_142:                             # %messageExport.specialized.1.exit
	beqz	$s5, .LBB29_145
.LBB29_143:                             # %land.lhs.true
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB29_145
# %bb.144:                              # %if.then
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s1, 0
.LBB29_145:                             # %if.end
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1224                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1232
	ret
.LBB29_146:
	move	$s3, $s0
.LBB29_147:                             # %if.end269.i
	add.d	$a1, $s2, $fp
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	beqz	$s5, .LBB29_149
# %bb.148:                              # %if.then273.i
	st.d	$zero, $s3, 104
.LBB29_149:                             # %if.end274.i
	ld.w	$a0, $s3, 16
	beqz	$a0, .LBB29_152
# %bb.150:                              # %if.end274.i
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB29_19
# %bb.151:                              # %land.lhs.true282.i
	ld.d	$a0, $s3, 8
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB29_20
.LBB29_152:                             # %if.then287.i
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a0, $a0, %pc_lo12(.L.str.85)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB29_143
	b	.LBB29_145
.Lfunc_end29:
	.size	messageToBlob, .Lfunc_end29-messageToBlob
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI29_0:
	.word	.LBB29_109-.LJTI29_0
	.word	.LBB29_111-.LJTI29_0
	.word	.LBB29_100-.LJTI29_0
	.word	.LBB29_110-.LJTI29_0
                                        # -- End function
	.text
	.globl	messageToText                   # -- Begin function messageToText
	.p2align	5
	.type	messageToText,@function
messageToText:                          # @messageToText
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1152
	st.d	$ra, $sp, 1144                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1064                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 16
	beqz	$a0, .LBB30_3
# %bb.1:                                # %for.cond27.preheader
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB30_69
# %bb.2:                                # %for.body30.lr.ph
	move	$s0, $zero
	move	$s4, $zero
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$s7, $a0, %pc_lo12(.L.str.43)
	ori	$s8, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(base64)
	addi.d	$a0, $a0, %pc_lo12(base64)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s3, $zero, 2
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	b	.LBB30_14
.LBB30_3:                               # %if.then
	ld.d	$s0, $fp, 56
	beqz	$s0, .LBB30_69
# %bb.4:                                # %for.body.preheader
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB30_7
	.p2align	4, , 16
.LBB30_5:                               # %if.then14
                                        #   in Loop: Header=BB30_7 Depth=1
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
.LBB30_6:                               # %for.inc
                                        #   in Loop: Header=BB30_7 Depth=1
	st.d	$a0, $fp, 0
	ld.d	$s0, $s0, 8
	move	$s1, $s4
	move	$s2, $fp
	beqz	$s0, .LBB30_63
.LBB30_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s4, $a0
	beqz	$s1, .LBB30_9
# %bb.8:                                # %if.else
                                        #   in Loop: Header=BB30_7 Depth=1
	st.d	$fp, $s2, 8
	move	$s4, $s1
.LBB30_9:                               # %if.end
                                        #   in Loop: Header=BB30_7 Depth=1
	beqz	$fp, .LBB30_61
# %bb.10:                               # %if.end11
                                        #   in Loop: Header=BB30_7 Depth=1
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB30_5
# %bb.11:                               #   in Loop: Header=BB30_7 Depth=1
	move	$a0, $zero
	b	.LBB30_6
.LBB30_12:                              #   in Loop: Header=BB30_14 Depth=1
	move	$s5, $s7
	move	$s4, $s2
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ori	$s8, $zero, 6
	.p2align	4, , 16
.LBB30_13:                              # %for.inc185
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.w	$a0, $fp, 16
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB30_64
.LBB30_14:                              # %for.body30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_20 Depth 2
                                        #     Child Loop BB30_33 Depth 2
	ld.d	$a0, $fp, 8
	slli.d	$a1, $s0, 2
	ldx.w	$s6, $a0, $a1
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s8, $s6, .LBB30_26
# %bb.15:                               # %for.body30
                                        #   in Loop: Header=BB30_14 Depth=1
	slli.d	$a0, $s6, 2
	pcalau12i	$a1, %pc_hi20(.LJTI30_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI30_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB30_16:                              # %sw.bb
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$s1, $fp, 56
	beqz	$s1, .LBB30_13
# %bb.17:                               # %for.body34.preheader
                                        #   in Loop: Header=BB30_14 Depth=1
	move	$s2, $s4
	move	$s6, $s5
	b	.LBB30_20
	.p2align	4, , 16
.LBB30_18:                              # %if.then52
                                        #   in Loop: Header=BB30_20 Depth=2
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
.LBB30_19:                              # %for.inc59
                                        #   in Loop: Header=BB30_20 Depth=2
	st.d	$a0, $s5, 0
	ld.d	$s1, $s1, 8
	move	$s2, $s4
	move	$s6, $s5
	beqz	$s1, .LBB30_13
.LBB30_20:                              # %for.body34
                                        #   Parent Loop BB30_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$s4, $a0
	beqz	$s2, .LBB30_22
# %bb.21:                               # %if.else38
                                        #   in Loop: Header=BB30_20 Depth=2
	st.d	$s5, $s6, 8
	move	$s4, $s2
.LBB30_22:                              # %if.end42
                                        #   in Loop: Header=BB30_20 Depth=2
	beqz	$s5, .LBB30_59
# %bb.23:                               # %if.end49
                                        #   in Loop: Header=BB30_20 Depth=2
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB30_18
# %bb.24:                               #   in Loop: Header=BB30_20 Depth=2
	move	$a0, $zero
	b	.LBB30_19
.LBB30_25:                              # %sw.bb67
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB30_68
.LBB30_26:                              # %sw.default
                                        #   in Loop: Header=BB30_14 Depth=1
	bnez	$s0, .LBB30_29
# %bb.27:                               # %land.lhs.true
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB30_29
# %bb.28:                               # %if.then80
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB30_29:                              # %if.end81
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$s1, $fp, 56
	bnez	$s1, .LBB30_33
.LBB30_30:                              #   in Loop: Header=BB30_14 Depth=1
	move	$s7, $s5
	move	$s2, $s4
	b	.LBB30_49
	.p2align	4, , 16
.LBB30_31:                              #   in Loop: Header=BB30_33 Depth=2
	move	$s7, $s5
	move	$s2, $s4
.LBB30_32:                              # %for.inc148
                                        #   in Loop: Header=BB30_33 Depth=2
	ld.d	$s1, $s1, 8
	move	$s4, $s2
	move	$s5, $s7
	beqz	$s1, .LBB30_49
.LBB30_33:                              # %for.body85
                                        #   Parent Loop BB30_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lineGetData)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	bne	$s6, $s3, .LBB30_35
# %bb.34:                               # %for.body85
                                        #   in Loop: Header=BB30_33 Depth=2
	beqz	$s8, .LBB30_31
.LBB30_35:                              # %if.end93
                                        #   in Loop: Header=BB30_33 Depth=2
	addi.d	$a3, $sp, 40
	ori	$a4, $zero, 1024
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s8
	pcaddu18i	$ra, %call36(decodeLine)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_30
# %bb.36:                               # %if.end97
                                        #   in Loop: Header=BB30_33 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$s2, $a0
	beqz	$s4, .LBB30_38
# %bb.37:                               # %if.else101
                                        #   in Loop: Header=BB30_33 Depth=2
	st.d	$s7, $s5, 8
	move	$s2, $s4
.LBB30_38:                              # %if.end105
                                        #   in Loop: Header=BB30_33 Depth=2
	beqz	$s7, .LBB30_48
# %bb.39:                               # %if.end108
                                        #   in Loop: Header=BB30_33 Depth=2
	ld.bu	$a1, $sp, 40
	move	$a0, $zero
	beqz	$a1, .LBB30_44
# %bb.40:                               # %if.end108
                                        #   in Loop: Header=BB30_33 Depth=2
	ori	$a2, $zero, 10
	beq	$a1, $a2, .LBB30_44
# %bb.41:                               # %if.else118
                                        #   in Loop: Header=BB30_33 Depth=2
	beqz	$s8, .LBB30_43
# %bb.42:                               # %land.lhs.true120
                                        #   in Loop: Header=BB30_33 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a0, $sp, 40
	move	$a1, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_47
.LBB30_43:                              # %if.else130
                                        #   in Loop: Header=BB30_33 Depth=2
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
.LBB30_44:                              # %if.end135
                                        #   in Loop: Header=BB30_33 Depth=2
	st.d	$a0, $s7, 0
	bne	$s6, $s3, .LBB30_32
.LBB30_45:                              # %if.end135
                                        #   in Loop: Header=BB30_33 Depth=2
	beqz	$s8, .LBB30_32
# %bb.46:                               # %if.then140
                                        #   in Loop: Header=BB30_33 Depth=2
	ori	$a1, $zero, 61
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB30_32
	b	.LBB30_49
.LBB30_47:                              # %if.then126
                                        #   in Loop: Header=BB30_33 Depth=2
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(lineLink)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	beq	$s6, $s3, .LBB30_45
	b	.LBB30_32
.LBB30_48:                              #   in Loop: Header=BB30_14 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB30_49:                              # %for.end150
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.w	$a0, $fp, 84
	beqz	$a0, .LBB30_12
# %bb.50:                               # %if.then152
                                        #   in Loop: Header=BB30_14 Depth=1
	st.w	$zero, $sp, 40
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	move	$a4, $zero
	pcaddu18i	$ra, %call36(decode)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 6
	beqz	$a0, .LBB30_56
# %bb.51:                               # %if.then152
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.bu	$a0, $sp, 40
	beqz	$a0, .LBB30_56
# %bb.52:                               # %if.then162
                                        #   in Loop: Header=BB30_14 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$s4, $a0
	beqz	$s2, .LBB30_54
# %bb.53:                               # %if.else167
                                        #   in Loop: Header=BB30_14 Depth=1
	st.d	$s5, $s7, 8
	move	$s4, $s2
.LBB30_54:                              # %if.end171
                                        #   in Loop: Header=BB30_14 Depth=1
	beqz	$s5, .LBB30_57
# %bb.55:                               # %if.then174
                                        #   in Loop: Header=BB30_14 Depth=1
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(lineCreate)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	b	.LBB30_58
.LBB30_56:                              #   in Loop: Header=BB30_14 Depth=1
	move	$s5, $s7
	move	$s4, $s2
	b	.LBB30_58
.LBB30_57:                              #   in Loop: Header=BB30_14 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB30_58:                              # %if.end179
                                        #   in Loop: Header=BB30_14 Depth=1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	st.w	$zero, $fp, 84
	b	.LBB30_13
.LBB30_59:                              # %if.then44
	beqz	$s4, .LBB30_69
# %bb.60:                               # %if.then46
	st.d	$zero, $zero, 8
	b	.LBB30_62
.LBB30_61:                              # %if.then7
	beqz	$s4, .LBB30_69
.LBB30_62:                              # %if.then9
	move	$a0, $s4
	pcaddu18i	$ra, %call36(textDestroy)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	b	.LBB30_70
.LBB30_63:                              # %if.then23
	st.d	$zero, $fp, 8
	b	.LBB30_70
.LBB30_64:                              # %for.end186
	beqz	$s5, .LBB30_70
# %bb.65:                               # %if.then188
	st.d	$zero, $s5, 8
	b	.LBB30_70
.LBB30_66:                              # %sw.bb62
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB30_69
.LBB30_67:                              # %if.then64
	st.d	$zero, $s5, 8
	b	.LBB30_62
.LBB30_68:                              # %if.then70
	bnez	$s4, .LBB30_67
.LBB30_69:
	move	$s4, $zero
.LBB30_70:                              # %cleanup191
	move	$a0, $s4
	ld.d	$s8, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1152
	ret
.Lfunc_end30:
	.size	messageToText, .Lfunc_end30-messageToText
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI30_0:
	.word	.LBB30_16-.LJTI30_0
	.word	.LBB30_26-.LJTI30_0
	.word	.LBB30_26-.LJTI30_0
	.word	.LBB30_16-.LJTI30_0
	.word	.LBB30_16-.LJTI30_0
	.word	.LBB30_66-.LJTI30_0
	.word	.LBB30_25-.LJTI30_0
                                        # -- End function
	.text
	.globl	yEncBegin                       # -- Begin function yEncBegin
	.p2align	5
	.type	yEncBegin,@function
yEncBegin:                              # @yEncBegin
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 112
	ret
.Lfunc_end31:
	.size	yEncBegin, .Lfunc_end31-yEncBegin
                                        # -- End function
	.globl	binhexBegin                     # -- Begin function binhexBegin
	.p2align	5
	.type	binhexBegin,@function
binhexBegin:                            # @binhexBegin
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 104
	ret
.Lfunc_end32:
	.size	binhexBegin, .Lfunc_end32-binhexBegin
                                        # -- End function
	.globl	decodeLine                      # -- Begin function decodeLine
	.p2align	5
	.type	decodeLine,@function
decodeLine:                             # @decodeLine
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $a1, -1
	ori	$a5, $zero, 5
	move	$fp, $a3
	move	$s1, $a2
	bltu	$a5, $a1, .LBB33_53
# %bb.1:                                # %entry
	move	$s0, $a4
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI33_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI33_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB33_2:                               # %sw.bb2
	beqz	$s1, .LBB33_56
# %bb.3:                                # %while.cond.preheader
	beqz	$s0, .LBB33_73
# %bb.4:
	ori	$s3, $zero, 61
	ori	$s4, $zero, 10
	ori	$s5, $zero, 5
	pcalau12i	$a0, %pc_hi20(.L.str.99)
	addi.d	$s2, $a0, %pc_lo12(.L.str.99)
	b	.LBB33_7
	.p2align	4, , 16
.LBB33_5:                               # %land.rhs
                                        #   in Loop: Header=BB33_7 Depth=1
	beqz	$a3, .LBB33_73
.LBB33_6:                               # %if.end46
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $fp, 1
	st.b	$a3, $fp, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	move	$fp, $a0
	beqz	$s0, .LBB33_81
.LBB33_7:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $s1, 0
	bne	$a3, $s3, .LBB33_5
# %bb.8:                                # %if.then10
                                        #   in Loop: Header=BB33_7 Depth=1
	ld.b	$s7, $s1, 1
	andi	$s6, $s7, 255
	beqz	$s6, .LBB33_109
# %bb.9:                                # %if.then10
                                        #   in Loop: Header=BB33_7 Depth=1
	beq	$s6, $s4, .LBB33_109
# %bb.10:                               # %if.end19
                                        #   in Loop: Header=BB33_7 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s7, 1
	ldx.hu	$a1, $a1, $a2
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB33_13
# %bb.11:                               # %if.end.i
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a1, $s6, -65
	andi	$a1, $a1, 255
	bltu	$s5, $a1, .LBB33_20
# %bb.12:                               # %if.then9.i
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a2, $s6, -55
	b	.LBB33_14
.LBB33_13:                              # %if.then.i
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a2, $s6, -48
.LBB33_14:                              # %hex.exit
                                        #   in Loop: Header=BB33_7 Depth=1
	ld.b	$a4, $s1, 2
	andi	$a1, $a4, 255
	beqz	$a1, .LBB33_80
# %bb.15:                               # %hex.exit
                                        #   in Loop: Header=BB33_7 Depth=1
	beq	$a1, $s4, .LBB33_80
# %bb.16:                               # %if.end31
                                        #   in Loop: Header=BB33_7 Depth=1
	andi	$a5, $a2, 255
	ori	$a3, $zero, 61
	beq	$a5, $a3, .LBB33_6
# %bb.17:                               # %if.then35
                                        #   in Loop: Header=BB33_7 Depth=1
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a4, 1
	ldx.hu	$a0, $a0, $a3
	addi.d	$s1, $s1, 2
	andi	$a0, $a0, 2048
	slli.d	$s6, $a2, 4
	bnez	$a0, .LBB33_22
# %bb.18:                               # %if.end.i84
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $a1, -65
	andi	$a0, $a0, 255
	bltu	$s5, $a0, .LBB33_24
# %bb.19:                               # %if.then9.i91
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $a1, -55
	add.d	$a3, $a0, $s6
	b	.LBB33_6
.LBB33_20:                              # %if.end13.i
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a1, $s6, -97
	andi	$a1, $a1, 255
	bltu	$s5, $a1, .LBB33_23
# %bb.21:                               # %if.then21.i
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a2, $s6, -87
	b	.LBB33_14
.LBB33_22:                              # %if.then.i81
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $a1, -48
	add.d	$a3, $a0, $s6
	b	.LBB33_6
.LBB33_23:                              # %if.end26.i
                                        #   in Loop: Header=BB33_7 Depth=1
	ext.w.b	$a1, $s6
	move	$s6, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ori	$a2, $zero, 61
	b	.LBB33_14
.LBB33_24:                              # %if.end13.i86
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $a1, -97
	andi	$a0, $a0, 255
	bltu	$s5, $a0, .LBB33_26
# %bb.25:                               # %if.then21.i89
                                        #   in Loop: Header=BB33_7 Depth=1
	addi.d	$a0, $a1, -87
	add.d	$a3, $a0, $s6
	b	.LBB33_6
.LBB33_26:                              # %if.end26.i88
                                        #   in Loop: Header=BB33_7 Depth=1
	ext.w.b	$a1, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	add.d	$a3, $s3, $s6
	b	.LBB33_6
.LBB33_27:                              # %sw.bb86
	beqz	$s1, .LBB33_109
# %bb.28:                               # %lor.lhs.false89
	ld.bu	$s4, $s1, 0
	beqz	$s4, .LBB33_109
# %bb.29:                               # %if.end94
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_109
# %bb.30:                               # %if.end99
	ori	$a0, $zero, 98
	beq	$s4, $a0, .LBB33_109
# %bb.31:                               # %if.end99
	andi	$a0, $s4, 63
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB33_109
# %bb.32:                               # %if.end109
	addi.d	$a0, $s4, -95
	andi	$a0, $a0, 255
	ori	$a1, $zero, 194
	bltu	$a0, $a1, .LBB33_109
# %bb.33:                               # %if.end120
	addi.d	$s2, $s1, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bltu	$s0, $a0, .LBB33_110
# %bb.34:                               # %if.end120
	addi.d	$a1, $s4, -32
	andi	$a2, $a1, 255
	bltu	$a0, $a2, .LBB33_110
# %bb.35:                               # %if.else128
	move	$a1, $s3
	ld.w	$a4, $s3, 84
	ori	$a5, $zero, 1
	move	$a3, $zero
	beq	$a4, $a5, .LBB33_113
# %bb.36:                               # %if.else128
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB33_39
# %bb.37:                               # %if.else128
	ori	$a3, $zero, 3
	bne	$a4, $a3, .LBB33_114
# %bb.38:                               # %sw.bb.i188
	ld.bu	$a3, $a1, 82
.LBB33_39:                              # %sw.bb1.i185
	move	$a0, $a3
	ld.bu	$a3, $a1, 81
	ld.bu	$a4, $a1, 80
	ld.bu	$a6, $s2, 0
	bnez	$a6, .LBB33_116
	b	.LBB33_140
.LBB33_40:                              # %sw.bb51
	beqz	$s1, .LBB33_109
# %bb.41:                               # %if.end55
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 76
	bltu	$a1, $a0, .LBB33_57
# %bb.42:                               # %if.then59
	addi.d	$a0, $sp, 19
	addi.d	$s0, $sp, 19
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	b	.LBB33_58
.LBB33_43:                              # %sw.bb135
	beqz	$s1, .LBB33_109
# %bb.44:                               # %lor.lhs.false138
	ld.bu	$s0, $s1, 0
	beqz	$s0, .LBB33_109
# %bb.45:                               # %if.end143
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 6
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_109
# %bb.46:                               # %while.cond149.preheader
	ori	$a0, $zero, 61
	b	.LBB33_50
	.p2align	4, , 16
.LBB33_47:                              # %while.cond149
                                        #   in Loop: Header=BB33_50 Depth=1
	beqz	$a1, .LBB33_109
# %bb.48:                               # %if.else167
                                        #   in Loop: Header=BB33_50 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$a1, $s0, -42
.LBB33_49:                              # %if.end174
                                        #   in Loop: Header=BB33_50 Depth=1
	st.b	$a1, $fp, 0
	ld.bu	$s0, $s1, 0
	addi.d	$fp, $fp, 1
.LBB33_50:                              # %while.cond149
                                        # =>This Inner Loop Header: Depth=1
	andi	$a1, $s0, 255
	bne	$a1, $a0, .LBB33_47
# %bb.51:                               # %if.then155
                                        #   in Loop: Header=BB33_50 Depth=1
	ld.bu	$a1, $s1, 1
	beqz	$a1, .LBB33_109
# %bb.52:                               # %if.end161
                                        #   in Loop: Header=BB33_50 Depth=1
	addi.d	$s1, $s1, 2
	addi.d	$a1, $a1, -64
	b	.LBB33_49
.LBB33_53:                              # %sw.default
	beqz	$s1, .LBB33_55
# %bb.54:                               # %if.then
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_strrcpy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB33_55:                              # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $fp
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	pcaddu18i	$t8, %call36(cli_strrcpy)
	jr	$t8
.LBB33_56:                              # %if.then3
	addi.d	$a0, $fp, 1
	ori	$a1, $zero, 10
	st.b	$a1, $fp, 0
	move	$fp, $a0
	b	.LBB33_109
.LBB33_57:                              # %if.else62
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB33_109
.LBB33_58:                              # %if.end68
	ori	$a1, $zero, 61
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_60
# %bb.59:                               # %if.then71
	st.b	$zero, $a0, 0
.LBB33_60:                              # %if.end72
	ld.bu	$a4, $s0, 0
	pcalau12i	$a1, %pc_hi20(base64Table)
	addi.d	$s1, $a1, %pc_lo12(base64Table)
	move	$a1, $s2
	beqz	$a4, .LBB33_67
# %bb.61:                               # %for.body.i.preheader
	ori	$a2, $zero, 255
	move	$a3, $s0
	b	.LBB33_63
	.p2align	4, , 16
.LBB33_62:                              # %for.inc12.i
                                        #   in Loop: Header=BB33_63 Depth=1
	ld.bu	$a4, $a3, 1
	addi.d	$a3, $a3, 1
	beqz	$a4, .LBB33_67
.LBB33_63:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_65 Depth 2
	ldx.bu	$a4, $s1, $a4
	bne	$a4, $a2, .LBB33_62
# %bb.64:                               # %for.body8.i.preheader
                                        #   in Loop: Header=BB33_63 Depth=1
	addi.d	$a4, $a3, 1
	.p2align	4, , 16
.LBB33_65:                              # %for.body8.i
                                        #   Parent Loop BB33_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a5, $a4, 0
	st.b	$a5, $a4, -1
	addi.d	$a4, $a4, 1
	bnez	$a5, .LBB33_65
# %bb.66:                               # %for.end.i
                                        #   in Loop: Header=BB33_63 Depth=1
	addi.d	$a3, $a3, -1
	b	.LBB33_62
.LBB33_67:                              # %sanitiseBase64.exit
	beqz	$a0, .LBB33_74
# %bb.68:
	move	$a2, $zero
	ld.w	$a3, $a1, 84
	ori	$a4, $zero, 1
	move	$a0, $zero
	beq	$a3, $a4, .LBB33_75
.LBB33_69:                              # %land.end79
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB33_72
# %bb.70:                               # %land.end79
	ori	$a0, $zero, 3
	bne	$a3, $a0, .LBB33_76
# %bb.71:                               # %sw.bb.i
	ld.bu	$a0, $a1, 82
.LBB33_72:                              # %sw.bb1.i
	move	$a3, $a0
	ld.bu	$a0, $a1, 81
	ld.bu	$a2, $a1, 80
	ld.bu	$a6, $s0, 0
	bnez	$a6, .LBB33_83
	b	.LBB33_99
.LBB33_73:                              # %land.rhs.if.then48.loopexit_crit_edge
	move	$a0, $fp
	b	.LBB33_81
.LBB33_74:                              # %land.rhs75
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	andi	$a0, $a0, 3
	sltui	$a2, $a0, 1
	ld.w	$a3, $a1, 84
	ori	$a4, $zero, 1
	move	$a0, $zero
	bne	$a3, $a4, .LBB33_69
.LBB33_75:
	move	$a3, $a0
	ld.bu	$a2, $a1, 80
	ld.bu	$a6, $s0, 0
	bnez	$a6, .LBB33_83
	b	.LBB33_99
.LBB33_76:                              # %sw.epilog.i
	ld.bu	$a6, $s0, 0
	beqz	$a2, .LBB33_82
# %bb.77:                               # %while.cond.preheader.i
	beqz	$a6, .LBB33_99
# %bb.78:                               # %while.body.i.preheader
	addi.d	$a0, $s0, 4
	ori	$a1, $zero, 63
	.p2align	4, , 16
.LBB33_79:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, -3
	ldx.bu	$a2, $s1, $a2
	ldx.b	$a3, $s1, $a6
	addi.d	$a4, $a2, -255
	ld.bu	$a5, $a0, -2
	sltui	$a4, $a4, 1
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a1, $a4
	ldx.bu	$a5, $s1, $a5
	or	$a2, $a4, $a2
	srli.d	$a4, $a2, 4
	bstrins.d	$a4, $a3, 63, 2
	addi.d	$a3, $a5, -255
	sltui	$a3, $a3, 1
	st.b	$a4, $fp, 0
	ld.bu	$a4, $a0, -1
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a5
	ldx.bu	$a4, $s1, $a4
	srli.d	$a5, $a3, 2
	bstrins.d	$a5, $a2, 63, 4
	st.b	$a5, $fp, 1
	bstrins.d	$a4, $a3, 63, 6
	st.b	$a4, $fp, 2
	ld.bu	$a6, $a0, 0
	addi.d	$s2, $fp, 3
	addi.d	$a0, $a0, 4
	move	$fp, $s2
	bnez	$a6, .LBB33_79
	b	.LBB33_106
.LBB33_80:                              # %cleanup.thread
	addi.d	$a0, $fp, 1
	st.b	$a2, $fp, 0
.LBB33_81:                              # %if.then48
	addi.d	$fp, $a0, 1
	ori	$a1, $zero, 10
	st.b	$a1, $a0, 0
	b	.LBB33_109
.LBB33_82:
	move	$a3, $zero
	move	$a0, $zero
	move	$a2, $zero
	beqz	$a6, .LBB33_99
.LBB33_83:                              # %while.body141.i.preheader
	ori	$a4, $zero, 63
	move	$a5, $s0
	.p2align	4, , 16
.LBB33_84:                              # %while.body141.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 84
	beqz	$t1, .LBB33_90
# %bb.85:                               # %if.end151.i
                                        #   in Loop: Header=BB33_84 Depth=1
	addi.w	$a6, $t1, -1
	st.w	$a6, $a1, 84
	ld.bu	$a7, $a5, 0
	beqz	$a7, .LBB33_101
# %bb.86:                               # %if.else156.i
                                        #   in Loop: Header=BB33_84 Depth=1
	beqz	$a6, .LBB33_92
# %bb.87:                               # %if.end165.i
                                        #   in Loop: Header=BB33_84 Depth=1
	addi.w	$a6, $t1, -2
	st.w	$a6, $a1, 84
	ld.bu	$t0, $a5, 0
	beqz	$t0, .LBB33_111
# %bb.88:                               # %if.else170.i
                                        #   in Loop: Header=BB33_84 Depth=1
	beqz	$a6, .LBB33_98
# %bb.89:                               # %if.then173.i
                                        #   in Loop: Header=BB33_84 Depth=1
	addi.d	$a6, $t1, -3
	st.w	$a6, $a1, 84
	move	$a6, $a2
	move	$a7, $a0
	move	$t0, $a3
	b	.LBB33_96
.LBB33_90:                              # %if.end151.i.thread
                                        #   in Loop: Header=BB33_84 Depth=1
	ldx.bu	$a6, $s1, $a6
	addi.d	$t0, $a6, -255
	ld.bu	$a7, $a5, 1
	sltui	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $a4, $t0
	or	$a6, $t0, $a6
	beqz	$a7, .LBB33_112
# %bb.91:                               #   in Loop: Header=BB33_84 Depth=1
	addi.d	$a5, $a5, 1
	b	.LBB33_93
.LBB33_92:                              #   in Loop: Header=BB33_84 Depth=1
	move	$a6, $a2
.LBB33_93:                              # %if.end165.i.thread
                                        #   in Loop: Header=BB33_84 Depth=1
	ldx.bu	$a7, $s1, $a7
	addi.d	$t1, $a7, -255
	ld.bu	$t0, $a5, 1
	sltui	$t1, $t1, 1
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $a4, $t1
	or	$a7, $t1, $a7
	beqz	$t0, .LBB33_102
# %bb.94:                               #   in Loop: Header=BB33_84 Depth=1
	addi.d	$a5, $a5, 1
.LBB33_95:                              # %if.else176.i
                                        #   in Loop: Header=BB33_84 Depth=1
	ldx.bu	$t0, $s1, $t0
	addi.d	$a5, $a5, 1
	addi.d	$t1, $t0, -255
	sltui	$t1, $t1, 1
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a4, $t1
	or	$t0, $t1, $t0
.LBB33_96:                              # %if.end179.i
                                        #   in Loop: Header=BB33_84 Depth=1
	ld.bu	$t1, $a5, 0
	beqz	$t1, .LBB33_100
# %bb.97:                               # %cleanup223.i
                                        #   in Loop: Header=BB33_84 Depth=1
	ldx.bu	$t1, $s1, $t1
	srli.d	$t2, $a7, 4
	bstrins.d	$t2, $a6, 63, 2
	st.b	$t2, $fp, 0
	srli.d	$a6, $t0, 2
	bstrins.d	$a6, $a7, 63, 4
	st.b	$a6, $fp, 1
	bstrins.d	$t1, $t0, 63, 6
	st.b	$t1, $fp, 2
	ld.bu	$a6, $a5, 1
	addi.d	$a5, $a5, 1
	addi.d	$s2, $fp, 3
	move	$fp, $s2
	bnez	$a6, .LBB33_84
	b	.LBB33_106
.LBB33_98:                              #   in Loop: Header=BB33_84 Depth=1
	move	$a6, $a2
	move	$a7, $a0
	b	.LBB33_95
.LBB33_99:
	move	$s2, $fp
	addi.d	$a0, $sp, 19
	bne	$s0, $a0, .LBB33_107
	b	.LBB33_108
.LBB33_100:                             # %sw.bb214.i
	st.b	$t0, $a1, 82
	ori	$a3, $zero, 3
	b	.LBB33_103
.LBB33_101:
	ori	$a3, $zero, 1
	b	.LBB33_105
.LBB33_102:
	ori	$a3, $zero, 2
.LBB33_103:                             # %sw.bb216.i
	move	$a0, $a7
	move	$a2, $a6
.LBB33_104:                             # %sw.bb216.i
	st.b	$a0, $a1, 81
.LBB33_105:                             # %cleanup223.thread.i
	st.b	$a2, $a1, 80
	st.w	$a3, $a1, 84
	move	$s2, $fp
.LBB33_106:                             # %decode.exit
	addi.d	$a0, $sp, 19
	beq	$s0, $a0, .LBB33_108
.LBB33_107:                             # %if.then84
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB33_108:
	move	$fp, $s2
.LBB33_109:                             # %sw.epilog
	st.b	$zero, $fp, 0
	move	$a0, $fp
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB33_110:                             # %if.then127
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	st.w	$zero, $s3, 84
	b	.LBB33_109
.LBB33_111:
	ori	$a3, $zero, 2
	b	.LBB33_104
.LBB33_112:
	ori	$a3, $zero, 1
	move	$a2, $a6
	b	.LBB33_105
.LBB33_113:
	move	$a0, $a3
	ld.bu	$a4, $a1, 80
	ld.bu	$a6, $s2, 0
	bnez	$a6, .LBB33_116
	b	.LBB33_140
.LBB33_114:                             # %sw.epilog.i190
	andi	$a0, $a0, 3
	beqz	$a0, .LBB33_133
# %bb.115:
	move	$a0, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.bu	$a6, $s2, 0
	beqz	$a6, .LBB33_140
.LBB33_116:                             # %while.body141.i121.preheader
	move	$a5, $fp
.LBB33_117:                             # %while.body141.i121
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a1, 84
	beqz	$t1, .LBB33_123
# %bb.118:                              # %if.end151.i127
                                        #   in Loop: Header=BB33_117 Depth=1
	addi.w	$a6, $t1, -1
	st.w	$a6, $a1, 84
	ld.bu	$a7, $s2, 0
	beqz	$a7, .LBB33_139
# %bb.119:                              # %if.else156.i131
                                        #   in Loop: Header=BB33_117 Depth=1
	beqz	$a6, .LBB33_125
# %bb.120:                              # %if.end165.i135
                                        #   in Loop: Header=BB33_117 Depth=1
	addi.w	$a6, $t1, -2
	st.w	$a6, $a1, 84
	ld.bu	$t0, $s2, 0
	beqz	$t0, .LBB33_136
# %bb.121:                              # %if.else170.i139
                                        #   in Loop: Header=BB33_117 Depth=1
	beqz	$a6, .LBB33_131
# %bb.122:                              # %if.then173.i141
                                        #   in Loop: Header=BB33_117 Depth=1
	addi.d	$a6, $t1, -3
	st.w	$a6, $a1, 84
	move	$a6, $a4
	move	$a7, $a3
	move	$t0, $a0
	b	.LBB33_129
.LBB33_123:                             # %if.end151.i127.thread
                                        #   in Loop: Header=BB33_117 Depth=1
	ld.bu	$a7, $s2, 1
	addi.d	$a6, $a6, -32
	beqz	$a7, .LBB33_138
# %bb.124:                              #   in Loop: Header=BB33_117 Depth=1
	addi.d	$s2, $s2, 1
	b	.LBB33_126
.LBB33_125:                             #   in Loop: Header=BB33_117 Depth=1
	move	$a6, $a4
.LBB33_126:                             # %if.end165.i135.thread
                                        #   in Loop: Header=BB33_117 Depth=1
	ld.bu	$t0, $s2, 1
	addi.d	$a7, $a7, -32
	beqz	$t0, .LBB33_137
# %bb.127:                              #   in Loop: Header=BB33_117 Depth=1
	addi.d	$s2, $s2, 1
.LBB33_128:                             # %if.else176.i173
                                        #   in Loop: Header=BB33_117 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$t0, $t0, -32
.LBB33_129:                             # %if.end179.i143
                                        #   in Loop: Header=BB33_117 Depth=1
	ld.bu	$t1, $s2, 0
	beqz	$t1, .LBB33_132
# %bb.130:                              # %cleanup223.i147
                                        #   in Loop: Header=BB33_117 Depth=1
	srli.d	$t2, $a7, 4
	bstrins.d	$t2, $a6, 63, 2
	st.b	$t2, $a5, 0
	srli.d	$a6, $t0, 2
	bstrins.d	$a6, $a7, 63, 4
	st.b	$a6, $a5, 1
	bstrins.d	$t1, $t0, 63, 6
	xori	$a6, $t1, 32
	st.b	$a6, $a5, 2
	ld.bu	$a6, $s2, 1
	addi.d	$s2, $s2, 1
	addi.d	$a5, $a5, 3
	bnez	$a6, .LBB33_117
	b	.LBB33_140
.LBB33_131:                             #   in Loop: Header=BB33_117 Depth=1
	move	$a6, $a4
	move	$a7, $a3
	b	.LBB33_128
.LBB33_132:                             # %sw.bb214.i165
	st.b	$t0, $a1, 82
	b	.LBB33_137
.LBB33_133:                             # %while.cond.preheader.i191
	ld.bu	$a4, $s2, 0
	beqz	$a4, .LBB33_140
# %bb.134:                              # %while.body.i193.preheader
	addi.d	$a0, $s1, 5
	move	$a3, $fp
.LBB33_135:                             # %while.body.i193
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a0, -3
	ld.b	$a6, $a0, -2
	srli.d	$a7, $a5, 4
	bstrins.d	$a7, $a4, 63, 2
	xori	$a4, $a7, 130
	st.b	$a4, $a3, 0
	ld.bu	$a4, $a0, -1
	srli.d	$a7, $a6, 2
	bstrins.d	$a7, $a5, 63, 4
	xori	$a5, $a7, 8
	st.b	$a5, $a3, 1
	bstrins.d	$a4, $a6, 63, 6
	xori	$a4, $a4, 32
	st.b	$a4, $a3, 2
	ld.bu	$a4, $a0, 0
	addi.d	$a3, $a3, 3
	addi.d	$a0, $a0, 4
	bnez	$a4, .LBB33_135
	b	.LBB33_140
.LBB33_136:
	move	$a7, $a3
	move	$a6, $a4
.LBB33_137:                             # %sw.bb216.i167
	st.b	$a7, $a1, 81
.LBB33_138:                             # %cleanup223.thread.i170
	move	$a4, $a6
.LBB33_139:                             # %cleanup223.thread.i170
	st.b	$a4, $a1, 80
.LBB33_140:                             # %decode.exit218
	add.d	$fp, $fp, $a2
	st.w	$zero, $a1, 84
	b	.LBB33_109
.Lfunc_end33:
	.size	decodeLine, .Lfunc_end33-decodeLine
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI33_0:
	.word	.LBB33_2-.LJTI33_0
	.word	.LBB33_40-.LJTI33_0
	.word	.LBB33_53-.LJTI33_0
	.word	.LBB33_53-.LJTI33_0
	.word	.LBB33_27-.LJTI33_0
	.word	.LBB33_43-.LJTI33_0
                                        # -- End function
	.text
	.globl	bounceBegin                     # -- Begin function bounceBegin
	.p2align	5
	.type	bounceBegin,@function
bounceBegin:                            # @bounceBegin
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 96
	ret
.Lfunc_end34:
	.size	bounceBegin, .Lfunc_end34-bounceBegin
                                        # -- End function
	.globl	encodingLine                    # -- Begin function encodingLine
	.p2align	5
	.type	encodingLine,@function
encodingLine:                           # @encodingLine
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 120
	ret
.Lfunc_end35:
	.size	encodingLine, .Lfunc_end35-encodingLine
                                        # -- End function
	.globl	messageClearMarkers             # -- Begin function messageClearMarkers
	.p2align	5
	.type	messageClearMarkers,@function
messageClearMarkers:                    # @messageClearMarkers
# %bb.0:                                # %entry
	st.d	$zero, $a0, 120
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 96
	ret
.Lfunc_end36:
	.size	messageClearMarkers, .Lfunc_end36-messageClearMarkers
                                        # -- End function
	.globl	isuuencodebegin                 # -- Begin function isuuencodebegin
	.p2align	5
	.type	isuuencodebegin,@function
isuuencodebegin:                        # @isuuencodebegin
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 98
	bne	$a0, $a1, .LBB37_6
# %bb.1:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	bltu	$a0, $a1, .LBB37_6
# %bb.2:                                # %if.end5
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strncasecmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_6
# %bb.3:                                # %land.lhs.true
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 6
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB37_6
# %bb.4:                                # %land.lhs.true14
	ld.b	$a1, $fp, 7
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB37_6
# %bb.5:                                # %land.lhs.true23
	ld.b	$a1, $fp, 8
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB37_7
.LBB37_6:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB37_7:                               # %land.rhs
	ld.bu	$a0, $fp, 9
	addi.d	$a0, $a0, -32
	sltui	$a0, $a0, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end37:
	.size	isuuencodebegin, .Lfunc_end37-isuuencodebegin
                                        # -- End function
	.globl	messageSetCTX                   # -- Begin function messageSetCTX
	.p2align	5
	.type	messageSetCTX,@function
messageSetCTX:                          # @messageSetCTX
# %bb.0:                                # %entry
	st.d	$a1, $a0, 72
	ret
.Lfunc_end38:
	.size	messageSetCTX, .Lfunc_end38-messageSetCTX
                                        # -- End function
	.globl	messageContainsVirus            # -- Begin function messageContainsVirus
	.p2align	5
	.type	messageContainsVirus,@function
messageContainsVirus:                   # @messageContainsVirus
# %bb.0:                                # %entry
	ld.bu	$a0, $a0, 88
	andi	$a0, $a0, 1
	ret
.Lfunc_end39:
	.size	messageContainsVirus, .Lfunc_end39-messageContainsVirus
                                        # -- End function
	.type	messageSetMimeType.mime_table,@object # @messageSetMimeType.mime_table
	.local	messageSetMimeType.mime_table
	.comm	messageSetMimeType.mime_table,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Empty content-type field\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"messageSetMimeType: '%s'\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"x-"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"plain"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Incorrect MIME type: `plain', set to Text\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unknown MIME type \"%s\" - guessing as %s (%u%% certainty)\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Unknown MIME type: `%s', set to Application - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.6, 118

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Empty content subtype\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.space	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"messageAddArgument, arg='%s'\n"
	.size	.L.str.9, 30

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"filename="
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"name="
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Force mime encoding to application\n"
	.size	.L.str.12, 36

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"application"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Add arguments '%s'\n"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Can't parse header \"%s\"\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Unbalanced quote character in \"%s\"\n"
	.size	.L.str.16, 36

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Can't parse header \"%s\" - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.17, 98

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Ignoring empty field in \"%s\"\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"messageFindArgument: no '=' sign found in MIME header '%s' (%s)\n"
	.size	.L.str.20, 65

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"filename"
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"name"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"file"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"messageSetEncoding: '%s'\n"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"8 bit"
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Broken content-transfer-encoding: '8 bit' changed to '8bit'\n"
	.size	.L.str.26, 61

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"8bit"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	" \t"
	.size	.L.str.28, 3

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"uuencode"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Ignoring duplicate encoding mechanism '%s'\n"
	.size	.L.str.30, 44

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Encoding type %d is \"%s\"\n"
	.size	.L.str.31, 26

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Unknown encoding type \"%s\" - guessing as %s (%u%% certainty)\n"
	.size	.L.str.32, 62

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Unknown encoding type \"%s\" - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.33, 101

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"base64"
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"quoted-printable"
	.size	.L.str.35, 17

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	" "
	.size	.L.str.36, 2

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"messageAddStr: out of memory\n"
	.size	.L.str.37, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"messageAddStrAtTop: out of memory\n"
	.size	.L.str.38, 35

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"messageMoveText sanity check: t not within old_message\n"
	.size	.L.str.39, 56

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"%d trailing bytes to export\n"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"messageToFileblob\n"
	.size	.L.str.41, 19

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"messageToBlob\n"
	.size	.L.str.42, 15

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"messageToText: export transfer method %d = %d\n"
	.size	.L.str.43, 47

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"messageToText: Unexpected attempt to handle uuencoded file - report to http://bugs.clamav.net\n"
	.size	.L.str.44, 95

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Binhex messages not supported yet.\n"
	.size	.L.str.45, 36

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"\n"
	.size	.L.str.46, 2

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"end"
	.size	.L.str.47, 4

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"uudecode: buffer overflow stopped, attempting to ignore but decoding may fail\n"
	.size	.L.str.48, 79

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"=yend "
	.size	.L.str.49, 7

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"begin "
	.size	.L.str.50, 7

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"text"
	.size	.L.str.51, 5

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"multipart"
	.size	.L.str.52, 10

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"audio"
	.size	.L.str.53, 6

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"image"
	.size	.L.str.54, 6

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"message"
	.size	.L.str.55, 8

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"video"
	.size	.L.str.56, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"messageArgumentExists: no '=' sign found in MIME header '%s' (%s)\n"
	.size	.L.str.58, 67

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"7bit"
	.size	.L.str.59, 5

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"text/plain"
	.size	.L.str.60, 11

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"binary"
	.size	.L.str.61, 7

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"x-uuencode"
	.size	.L.str.62, 11

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"x-yencode"
	.size	.L.str.63, 10

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"x-binhex"
	.size	.L.str.64, 9

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"us-ascii"
	.size	.L.str.65, 9

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"x-uue"
	.size	.L.str.66, 6

	.type	encoding_map,@object            # @encoding_map
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
encoding_map:
	.dword	.L.str.59
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.60
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.35
	.word	1                               # 0x1
	.space	4
	.dword	.L.str.34
	.word	2                               # 0x2
	.space	4
	.dword	.L.str.27
	.word	3                               # 0x3
	.space	4
	.dword	.L.str.61
	.word	4                               # 0x4
	.space	4
	.dword	.L.str.62
	.word	5                               # 0x5
	.space	4
	.dword	.L.str.63
	.word	6                               # 0x6
	.space	4
	.dword	.L.str.64
	.word	8                               # 0x8
	.space	4
	.dword	.L.str.65
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.66
	.word	5                               # 0x5
	.space	4
	.dword	.L.str.29
	.word	5                               # 0x5
	.space	4
	.space	16
	.size	encoding_map, 208

	.type	messageIsEncoding.encoding,@object # @messageIsEncoding.encoding
	.section	.rodata,"a",@progbits
messageIsEncoding.encoding:
	.asciz	"Content-Transfer-Encoding"
	.size	messageIsEncoding.encoding, 26

	.type	messageIsEncoding.binhex,@object # @messageIsEncoding.binhex
messageIsEncoding.binhex:
	.asciz	"(This file must be converted with BinHex 4.0)"
	.size	messageIsEncoding.binhex, 46

	.type	.L.str.68,@object               # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"Received: "
	.size	.L.str.68, 11

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"BinHex"
	.size	.L.str.69, 7

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"=ybegin line="
	.size	.L.str.70, 14

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"messageExport: numberOfEncTypes == %d\n"
	.size	.L.str.71, 39

	.type	.L__const.messageExport.hqxtbl,@object # @__const.messageExport.hqxtbl
	.section	.rodata,"a",@progbits
.L__const.messageExport.hqxtbl:
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\000\001\002\003\004\005\006\007\b\t\n\013\f\377\377\r\016\017\020\021\022\023\377\024\025\377\377\377\377\377\377\026\027\030\031\032\033\034\035\036\037 !\"#$\377%&'()*+\377,-./\377\377\377\3770123456\377789:;<\377\377=>?\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.size	.L__const.messageExport.hqxtbl, 128

	.type	.L.str.72,@object               # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"messageExport: decode binhex\n"
	.size	.L.str.72, 30

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"Couldn't start binhex parser\n"
	.size	.L.str.73, 30

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Couldn't locate the binhex message that was claimed to be there\n"
	.size	.L.str.74, 65

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"decode HQX7 message (%lu bytes)\n"
	.size	.L.str.75, 33

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Invalid HQX7 character '%c' (0x%02x)\n"
	.size	.L.str.76, 38

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"decoded HQX7 message (now %lu bytes)\n"
	.size	.L.str.77, 38

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"HQX8 messages not yet supported, extraction may fail - if you believe this file contains a virus, submit it to www.clamav.net\n"
	.size	.L.str.78, 127

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"Uncompressed %lu bytes to %lu\n"
	.size	.L.str.79, 31

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"HQX7 message (%lu bytes) is not compressed\n"
	.size	.L.str.80, 44

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Discarding empty binHex attachment\n"
	.size	.L.str.81, 36

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"name=%s"
	.size	.L.str.82, 8

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"Filename = '%s', data fork length = %lu, resource fork length = %lu bytes\n"
	.size	.L.str.83, 75

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"Corrupt BinHex file, claims it is %lu bytes long in a message of %lu bytes\n"
	.size	.L.str.84, 76

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Finished exporting binhex file\n"
	.size	.L.str.85, 32

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"messageExport: Entering fast copy mode\n"
	.size	.L.str.86, 40

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Unencoded attachment sent with no filename\n"
	.size	.L.str.87, 44

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"name=attachment"
	.size	.L.str.88, 16

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"attachment"
	.size	.L.str.89, 11

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Not all decoding algorithms were run\n"
	.size	.L.str.90, 38

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"messageExport: enctype %d is %d\n"
	.size	.L.str.91, 33

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	" name="
	.size	.L.str.92, 7

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"Set yEnc filename to \"%s\"\n"
	.size	.L.str.93, 27

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"messageExport: treat uuencode as text/plain\n"
	.size	.L.str.94, 45

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"Attachment sent with no filename\n"
	.size	.L.str.95, 34

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Empty attachment not saved\n"
	.size	.L.str.96, 28

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Exported %lu bytes using enctype %d\n"
	.size	.L.str.97, 37

	.type	base64Table,@object             # @base64Table
	.section	.rodata,"a",@progbits
base64Table:
	.ascii	"\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377>\377\377\377?456789:;<=\377\377\377\000\377\377\377\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\377\377\377\377\377\377\032\033\034\035\036\037 !\"#$%&'()*+,-./0123\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.size	base64Table, 256

	.type	.L.str.98,@object               # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"base64chars = %d (%c %c %c)\n"
	.size	.L.str.98, 29

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Illegal hex character '%c'\n"
	.size	.L.str.99, 28

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"boundary"
	.size	.L.str.100, 9

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"protocol"
	.size	.L.str.101, 9

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"id"
	.size	.L.str.102, 3

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"number"
	.size	.L.str.103, 7

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"total"
	.size	.L.str.104, 6

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"type"
	.size	.L.str.105, 5

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Discarding unwanted argument '%s'\n"
	.size	.L.str.106, 35

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"messageDedup\n"
	.size	.L.str.107, 14

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"messageDedup: out of memory\n"
	.size	.L.str.108, 29

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"messageDedup reclaimed %lu bytes\n"
	.size	.L.str.109, 34

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"*0*="
	.size	.L.str.110, 5

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"RFC2231 parameter continuations are not yet handled\n"
	.size	.L.str.111, 53

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"*0="
	.size	.L.str.112, 4

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"*="
	.size	.L.str.113, 3

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"rfc2231 '%s'\n"
	.size	.L.str.114, 14

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"Invalid RFC2231 header: '%s'\n"
	.size	.L.str.115, 30

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"rfc2231 returns '%s'\n"
	.size	.L.str.116, 22

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64
	.addrsig_sym messageIsEncoding.encoding
	.addrsig_sym messageIsEncoding.binhex
