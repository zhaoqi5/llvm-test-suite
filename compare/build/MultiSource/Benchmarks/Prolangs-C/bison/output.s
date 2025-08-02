	.file	"output.c"
	.text
	.globl	output_headers                  # -- Begin function output_headers
	.p2align	5
	.type	output_headers,@function
output_headers:                         # @output_headers
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$fp, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(fguard)
	ld.d	$a0, $a0, %got_pc_lo12(fguard)
	pcalau12i	$a1, %got_pc_hi20(attrsfile)
	ld.d	$a1, $a1, %got_pc_lo12(attrsfile)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
.LBB0_3:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	pcalau12i	$a2, %got_pc_hi20(attrsfile)
	ld.d	$a2, $a2, %got_pc_lo12(attrsfile)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end0:
	.size	output_headers, .Lfunc_end0-output_headers
                                        # -- End function
	.globl	output_trailers                 # -- Begin function output_trailers
	.p2align	5
	.type	output_trailers,@function
output_trailers:                        # @output_trailers
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$a0, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fguard)
	ld.d	$a0, $a0, %got_pc_lo12(fguard)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$fp, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB1_2:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(faction)
	ld.d	$a0, $a0, %got_pc_lo12(faction)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end1:
	.size	output_trailers, .Lfunc_end1-output_trailers
                                        # -- End function
	.globl	output                          # -- Begin function output
	.p2align	5
	.type	output,@function
output:                                 # @output
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(debugflag)
	ld.d	$a0, $a0, %got_pc_lo12(debugflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$a0, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end3
	pcalau12i	$a0, %got_pc_hi20(semantic_parser)
	ld.d	$fp, $a0, %got_pc_lo12(semantic_parser)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_4
# %bb.3:                                # %if.then5
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$a0, $a0, %got_pc_lo12(ftable)
	pcalau12i	$a1, %got_pc_hi20(attrsfile)
	ld.d	$a1, $a1, %got_pc_lo12(attrsfile)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end7
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s2, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(state_table)
	ld.d	$a0, $a0, %got_pc_lo12(state_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_6
# %bb.5:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %if.end.i
	pcalau12i	$a0, %got_pc_hi20(first_state)
	ld.d	$a0, $a0, %got_pc_lo12(first_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_8
	.p2align	4, , 16
.LBB2_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB2_7
.LBB2_8:                                # %free_itemsets.exit
	pcalau12i	$a0, %got_pc_hi20(final_state)
	ld.d	$a1, $a0, %got_pc_lo12(final_state)
	ld.d	$a0, $s2, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	lu12i.w	$a2, -8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a1, $a0, %got_pc_lo12(ntokens)
	ld.d	$a0, $s2, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_token_translations)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_10
# %bb.9:                                # %if.then11
	pcaddu18i	$ra, %call36(output_gram)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %if.end12
	pcalau12i	$a0, %got_pc_hi20(ritem)
	ld.d	$a0, $a0, %got_pc_lo12(ritem)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB2_12
# %bb.11:                               # %if.then14
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %if.end15
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_14
# %bb.13:                               # %if.then17
	pcaddu18i	$ra, %call36(output_stos)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %if.end18
	pcaddu18i	$ra, %call36(output_rule_data)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_actions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_parser)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(lineno)
	ld.d	$a0, $a0, %got_pc_lo12(lineno)
	pcalau12i	$a1, %got_pc_hi20(infile)
	ld.d	$a1, $a1, %got_pc_lo12(infile)
	ld.d	$fp, $s2, 0
	ld.w	$s0, $a0, 0
	ld.d	$s1, $a1, 0
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(finput)
	ld.d	$fp, $a0, %got_pc_lo12(finput)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB2_16
	.p2align	4, , 16
.LBB2_15:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB2_15
.LBB2_16:                               # %output_program.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	output, .Lfunc_end2-output
                                        # -- End function
	.globl	free_itemsets                   # -- Begin function free_itemsets
	.p2align	5
	.type	free_itemsets,@function
free_itemsets:                          # @free_itemsets
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(state_table)
	ld.d	$a0, $a0, %got_pc_lo12(state_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(first_state)
	ld.d	$a0, $a0, %got_pc_lo12(first_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB3_3
.LBB3_4:                                # %for.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	free_itemsets, .Lfunc_end3-free_itemsets
                                        # -- End function
	.globl	output_defines                  # -- Begin function output_defines
	.p2align	5
	.type	output_defines,@function
output_defines:                         # @output_defines
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$fp, $a0, %got_pc_lo12(ftable)
	pcalau12i	$a0, %got_pc_hi20(final_state)
	ld.d	$a1, $a0, %got_pc_lo12(final_state)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	lu12i.w	$a2, -8
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a1, $a0, %got_pc_lo12(ntokens)
	ld.d	$a0, $fp, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end4:
	.size	output_defines, .Lfunc_end4-output_defines
                                        # -- End function
	.globl	output_token_translations       # -- Begin function output_token_translations
	.p2align	5
	.type	output_token_translations,@function
output_token_translations:              # @output_token_translations
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(translations)
	ld.d	$a0, $a0, %got_pc_lo12(translations)
	pcalau12i	$a1, %got_pc_hi20(ftable)
	ld.d	$s0, $a1, %got_pc_lo12(ftable)
	ld.w	$a0, $a0, 0
	ld.d	$a4, $s0, 0
	beqz	$a0, .LBB5_3
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(max_user_token_number)
	ld.d	$s1, $a0, %got_pc_lo12(max_user_token_number)
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$a0, $a0, %got_pc_lo12(nsyms)
	ld.w	$a2, $s1, 0
	ld.w	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $a4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $a0, 0
	ld.d	$a3, $s0, 0
	ori	$a1, $zero, 126
	blt	$a1, $a0, .LBB5_4
# %bb.2:                                # %if.then1
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 42
	b	.LBB5_5
.LBB5_3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $a4
	b	.LBB5_12
.LBB5_4:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 43
.LBB5_5:                                # %if.end
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_11
# %bb.6:                                # %for.body.preheader
	move	$s2, $zero
	ori	$s3, $zero, 10
	ori	$s4, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(token_translations)
	ld.d	$s5, $a0, %got_pc_lo12(token_translations)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_7:                                # %if.else9
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.w	$s6, $s6, 1
.LBB5_8:                                # %if.end10
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 2
	bge	$s2, $a0, .LBB5_11
.LBB5_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s3, .LBB5_7
# %bb.10:                               # %if.then7
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB5_8
.LBB5_11:                               # %for.end
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
.LBB5_12:                               # %if.else14
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	output_token_translations, .Lfunc_end5-output_token_translations
                                        # -- End function
	.globl	output_gram                     # -- Begin function output_gram
	.p2align	5
	.type	output_gram,@function
output_gram:                            # @output_gram
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nrules)
	ld.d	$s0, $a0, %got_pc_lo12(nrules)
	ld.w	$a0, $s0, 0
	blt	$a0, $fp, .LBB6_6
# %bb.1:                                # %for.body.preheader
	move	$s2, $zero
	ori	$s3, $zero, 10
	ori	$s4, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$s5, $a0, %got_pc_lo12(rrhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB6_3:                                # %if.end
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 2
	bge	$s2, $a0, .LBB6_6
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s3, .LBB6_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB6_3
.LBB6_6:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(ritem)
	ld.d	$fp, $a0, %got_pc_lo12(ritem)
	ld.d	$a1, $fp, 0
	ld.d	$a0, $s1, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.hu	$a1, $a0, 2
	beqz	$a1, .LBB6_13
# %bb.7:                                # %for.body10.preheader
	addi.d	$s2, $a0, 4
	ori	$s3, $zero, 10
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$s0, $a0, %pc_lo12(.L.str.17)
	ori	$s5, $zero, 10
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_8:                                # %if.else25
                                        #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a3, $s1, 0
	ori	$a1, $zero, 6
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 0
	addi.d	$s2, $s2, 2
	beqz	$a0, .LBB6_13
.LBB6_9:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s5, $s3, .LBB6_11
# %bb.10:                               # %if.else16
                                        #   in Loop: Header=BB6_9 Depth=1
	addi.w	$s5, $s5, 1
	ld.h	$a2, $s2, -2
	bge	$a2, $s4, .LBB6_12
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_11:                               # %if.then14
                                        #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	ld.h	$a2, $s2, -2
	blt	$a2, $s4, .LBB6_8
.LBB6_12:                               # %if.then22
                                        #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 0
	addi.d	$s2, $s2, 2
	bnez	$a0, .LBB6_9
.LBB6_13:                               # %for.end29
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end6:
	.size	output_gram, .Lfunc_end6-output_gram
                                        # -- End function
	.globl	output_stos                     # -- Begin function output_stos
	.p2align	5
	.type	output_stos,@function
output_stos:                            # @output_stos
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s0, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 38
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s2, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s2, 0
	ori	$s3, $zero, 2
	blt	$a0, $s3, .LBB7_6
# %bb.1:                                # %for.body.preheader
	ori	$s4, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(accessing_symbol)
	ld.d	$s5, $a0, %got_pc_lo12(accessing_symbol)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                # %if.else
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.w	$s6, $s6, 1
.LBB7_3:                                # %if.end
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 2
	bge	$s1, $a0, .LBB7_6
.LBB7_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s4, .LBB7_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB7_3
.LBB7_6:                                # %for.end
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end7:
	.size	output_stos, .Lfunc_end7-output_stos
                                        # -- End function
	.globl	output_rule_data                # -- Begin function output_rule_data
	.p2align	5
	.type	output_rule_data,@function
output_rule_data:                       # @output_rule_data
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
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s4, $a0, %got_pc_lo12(ftable)
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 39
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nrules)
	ld.d	$s7, $a0, %got_pc_lo12(nrules)
	ld.w	$a0, $s7, 0
	blt	$a0, $s0, .LBB8_6
# %bb.1:                                # %for.body.preheader
	move	$s1, $zero
	ori	$s2, $zero, 10
	ori	$s3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rline)
	ld.d	$s5, $a0, %got_pc_lo12(rline)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                # %if.else
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.w	$s6, $s6, 1
.LBB8_3:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a0, $s4, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 2
	bge	$s1, $a0, .LBB8_6
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s2, .LBB8_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB8_3
.LBB8_6:                                # %for.end
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$a0, $a0, %got_pc_lo12(ntokens)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blt	$a0, $s0, .LBB8_26
# %bb.7:                                # %for.body10.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(tags)
	ld.d	$a1, $a1, %got_pc_lo12(tags)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 26
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$fp, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LJTI8_0)
	addi.d	$s5, $a1, %pc_lo12(.LJTI8_0)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$s1, $a1, %pc_lo12(.L.str.24)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$s2, $a1, %pc_lo12(.L.str.23)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$s3, $a1, %pc_lo12(.L.str.22)
	ori	$s0, $zero, 10
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %for.end71
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 34
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	addi.d	$a0, $s6, 1
	bge	$s6, $a1, .LBB8_26
.LBB8_9:                                # %for.body10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
	ld.d	$a1, $s4, 0
	move	$s6, $a0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bge	$s0, $a0, .LBB8_11
# %bb.10:                               # %if.else16
                                        #   in Loop: Header=BB8_9 Depth=1
	addi.w	$s0, $s0, 1
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               # %if.then14
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
.LBB8_12:                               # %if.end18
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 34
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 3
	ldx.d	$a1, $a0, $a1
	ld.bu	$a0, $a1, 0
	beqz	$a0, .LBB8_8
# %bb.13:                               # %for.body23.preheader
                                        #   in Loop: Header=BB8_9 Depth=1
	addi.d	$s8, $a1, 1
	b	.LBB8_16
.LBB8_14:                               # %if.then43
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB8_15:                               # %for.inc70
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$s8, $s8, 1
	beqz	$a0, .LBB8_8
.LBB8_16:                               # %for.body23
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a1, $a0, 255
	addi.d	$a3, $a1, -8
	ext.w.b	$a2, $a0
	bltu	$s7, $a3, .LBB8_19
# %bb.17:                               # %for.body23
                                        #   in Loop: Header=BB8_16 Depth=2
	slli.d	$a1, $a3, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a1, $s5, $a1
	jr	$a1
.LBB8_18:                               # %if.then49
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_19:                               # %for.body23
                                        #   in Loop: Header=BB8_16 Depth=2
	ori	$a3, $zero, 92
	bne	$a1, $a3, .LBB8_21
.LBB8_20:                               # %if.then30
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a0, $s4, 0
	move	$a1, $fp
	b	.LBB8_23
.LBB8_21:                               # %if.else51
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a1, $s4, 0
	addi.d	$a0, $a0, -127
	andi	$a0, $a0, 255
	ori	$a3, $zero, 160
	bltu	$a3, $a0, .LBB8_25
# %bb.22:                               # %if.then59
                                        #   in Loop: Header=BB8_16 Depth=2
	move	$a0, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB8_23:                               # %for.inc70
                                        #   in Loop: Header=BB8_16 Depth=2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_24:                               # %if.then37
                                        #   in Loop: Header=BB8_16 Depth=2
	ld.d	$a3, $s4, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_25:                               # %if.else62
                                        #   in Loop: Header=BB8_16 Depth=2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_26:                               # %for.end75
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $s6, 0
	blt	$a0, $fp, .LBB8_32
# %bb.27:                               # %for.body80.preheader
	move	$s0, $zero
	ori	$s1, $zero, 10
	ori	$s2, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$s3, $a0, %got_pc_lo12(rlhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s5, $zero, 10
	b	.LBB8_30
	.p2align	4, , 16
.LBB8_28:                               # %if.else86
                                        #   in Loop: Header=BB8_30 Depth=1
	addi.w	$s5, $s5, 1
.LBB8_29:                               # %if.end88
                                        #   in Loop: Header=BB8_30 Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s4, 0
	ldx.h	$a2, $a1, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 2
	bge	$s0, $a0, .LBB8_32
.LBB8_30:                               # %for.body80
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s5, $s1, .LBB8_28
# %bb.31:                               # %if.then84
                                        #   in Loop: Header=BB8_30 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB8_29
.LBB8_32:                               # %if.then97
	pcalau12i	$a0, %got_pc_hi20(rlhs)
	ld.d	$a0, $a0, %got_pc_lo12(rlhs)
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 40
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB8_38
# %bb.33:                               # %for.body104.preheader
	move	$s1, $zero
	ori	$s2, $zero, 10
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$s3, $a0, %got_pc_lo12(rrhs)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s5, $zero, 10
	b	.LBB8_36
	.p2align	4, , 16
.LBB8_34:                               # %if.else110
                                        #   in Loop: Header=BB8_36 Depth=1
	addi.w	$s5, $s5, 1
.LBB8_35:                               # %if.end112
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s1
	ld.h	$a2, $a1, 2
	ld.d	$a0, $s4, 0
	ld.h	$a1, $a1, 4
	addi.d	$s0, $s0, 1
	nor	$a2, $a2, $zero
	ext.w.h	$a2, $a2
	add.d	$a2, $a2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$s1, $s1, 2
	bge	$s0, $a0, .LBB8_39
.LBB8_36:                               # %for.body104
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s5, $s2, .LBB8_34
# %bb.37:                               # %if.then108
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	b	.LBB8_35
.LBB8_38:                               # %for.end123.thread
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB8_40
.LBB8_39:                               # %for.end123
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	blt	$s5, $a0, .LBB8_41
.LBB8_40:                               # %if.then127
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB8_41:                               # %if.end129
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$fp, $a0, %got_pc_lo12(rrhs)
	ld.w	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(nitems)
	ld.d	$a2, $a2, %got_pc_lo12(nitems)
	slli.d	$a0, $a0, 1
	ldx.h	$a1, $a1, $a0
	ld.w	$a2, $a2, 0
	ld.d	$a0, $s4, 0
	nor	$a1, $a1, $zero
	ext.w.h	$a1, $a1
	add.w	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end8:
	.size	output_rule_data, .Lfunc_end8-output_rule_data
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.word	.LBB8_18-.LJTI8_0
	.word	.LBB8_14-.LJTI8_0
	.word	.LBB8_24-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_21-.LJTI8_0
	.word	.LBB8_20-.LJTI8_0
                                        # -- End function
	.text
	.globl	output_actions                  # -- Begin function output_actions
	.p2align	5
	.type	output_actions,@function
output_actions:                         # @output_actions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$a0, $a0, %got_pc_lo12(nstates)
	pcalau12i	$a1, %got_pc_hi20(nvars)
	ld.d	$a1, $a1, %got_pc_lo12(nvars)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	add.d	$a0, $a1, $a0
	pcalau12i	$fp, %pc_hi20(nvectors)
	st.w	$a0, $fp, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(froms)
	st.d	$a0, $a2, %pc_lo12(froms)
	slli.w	$a0, $a1, 3
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(tos)
	st.d	$a0, $a2, %pc_lo12(tos)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	pcalau12i	$a2, %pc_hi20(tally)
	st.d	$a0, $a2, %pc_lo12(tally)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(width)
	st.d	$a0, $a1, %pc_lo12(width)
	pcaddu18i	$ra, %call36(token_actions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_2
# %bb.1:                                # %if.then.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_2:                                # %if.end.i
	pcalau12i	$a0, %got_pc_hi20(first_shift)
	ld.d	$a0, $a0, %got_pc_lo12(first_shift)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB9_3
.LBB9_4:                                # %free_shifts.exit
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_6
# %bb.5:                                # %if.then.i7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_6:                                # %if.end.i8
	pcalau12i	$a0, %got_pc_hi20(first_reduction)
	ld.d	$a0, $a0, %got_pc_lo12(first_reduction)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_8
	.p2align	4, , 16
.LBB9_7:                                # %for.body.i10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB9_7
.LBB9_8:                                # %free_reductions.exit
	pcalau12i	$a0, %got_pc_hi20(lookaheads)
	ld.d	$a0, $a0, %got_pc_lo12(lookaheads)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_10
# %bb.9:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_10:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(LA)
	ld.d	$a0, $a0, %got_pc_lo12(LA)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_12
# %bb.11:                               # %if.then15
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %if.end16
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a0, $a0, %got_pc_lo12(LAruleno)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_14
# %bb.13:                               # %if.then18
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_14:                               # %if.end19
	pcalau12i	$a0, %got_pc_hi20(accessing_symbol)
	ld.d	$a0, $a0, %got_pc_lo12(accessing_symbol)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_16
# %bb.15:                               # %if.then21
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %if.end22
	pcaddu18i	$ra, %call36(goto_actions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(goto_map)
	ld.d	$a0, $a0, %got_pc_lo12(goto_map)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_18
# %bb.17:                               # %if.then24
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $a1, 0
	alsl.d	$a0, $a1, $a0, 1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_18:                               # %if.end27
	pcalau12i	$a0, %got_pc_hi20(from_state)
	ld.d	$a0, $a0, %got_pc_lo12(from_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_20
# %bb.19:                               # %if.then29
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %if.end30
	pcalau12i	$a0, %got_pc_hi20(to_state)
	ld.d	$a0, $a0, %got_pc_lo12(to_state)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB9_22
# %bb.21:                               # %if.then32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB9_22:                               # %if.end33
	pcaddu18i	$ra, %call36(sort_actions)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(pack_table)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_base)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(output_table)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(output_check)
	jr	$t8
.Lfunc_end9:
	.size	output_actions, .Lfunc_end9-output_actions
                                        # -- End function
	.globl	output_parser                   # -- Begin function output_parser
	.p2align	5
	.type	output_parser,@function
output_parser:                          # @output_parser
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
	pcalau12i	$a0, %got_pc_hi20(pure_parser)
	ld.d	$a0, $a0, %got_pc_lo12(pure_parser)
	pcalau12i	$a1, %got_pc_hi20(ftable)
	ld.d	$s2, $a1, %got_pc_lo12(ftable)
	ld.w	$a0, $a0, 0
	ld.d	$a3, $s2, 0
	beqz	$a0, .LBB10_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 20
	b	.LBB10_3
.LBB10_2:                               # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 18
.LBB10_3:                               # %if.end
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(fparser)
	ld.d	$s3, $a0, %got_pc_lo12(fparser)
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB10_5
# %bb.4:                                # %lor.lhs.false
	pcaddu18i	$ra, %call36(feof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_6
.LBB10_5:                               # %cleanup
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
.LBB10_6:                               # %if.end6
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $zero, -1
	beq	$a0, $s4, .LBB10_5
# %bb.7:                                # %while.body.preheader
	pcalau12i	$a1, %got_pc_hi20(nolinesflag)
	ld.d	$s5, $a1, %got_pc_lo12(nolinesflag)
	ori	$s6, $zero, 10
	ori	$s7, $zero, 35
	ori	$s8, $zero, 108
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a1, $a1, %pc_lo12(.L.str.43)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(faction)
	ld.d	$s0, $a1, %got_pc_lo12(faction)
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$fp, $zero, 36
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_8:                               # %if.else58
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB10_9:                               # %if.end60
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB10_5
.LBB10_10:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #     Child Loop BB10_28 Depth 2
	bne	$a0, $s6, .LBB10_26
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.w	$a1, $s5, 0
	beqz	$a1, .LBB10_26
# %bb.12:                               # %if.then11
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB10_26
# %bb.13:                               # %if.then15
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB10_20
# %bb.14:                               # %if.then18
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 105
	bne	$a0, $a1, .LBB10_21
# %bb.15:                               # %if.then21
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB10_22
# %bb.16:                               # %if.then24
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB10_23
	.p2align	4, , 16
.LBB10_17:                              # %while.cond28
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB10_19
# %bb.18:                               # %while.cond28
                                        #   in Loop: Header=BB10_17 Depth=2
	blt	$s4, $a0, .LBB10_17
.LBB10_19:                              # %while.end
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	b	.LBB10_26
.LBB10_20:                              # %if.else46
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a1, $s2, 0
	move	$s1, $a0
	ori	$a0, $zero, 35
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB10_25
.LBB10_21:                              # %if.else43
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB10_24
.LBB10_22:                              # %if.else40
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB10_24
.LBB10_23:                              # %if.else37
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a3, $s2, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB10_24:                              # %if.end51
                                        #   in Loop: Header=BB10_10 Depth=1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB10_25:                              # %if.end51
                                        #   in Loop: Header=BB10_10 Depth=1
	move	$a0, $s1
.LBB10_26:                              # %if.end51
                                        #   in Loop: Header=BB10_10 Depth=1
	bne	$a0, $fp, .LBB10_8
# %bb.27:                               # %if.then53
                                        #   in Loop: Header=BB10_10 Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB10_9
	.p2align	4, , 16
.LBB10_28:                              # %for.body
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB10_28
	b	.LBB10_9
.Lfunc_end10:
	.size	output_parser, .Lfunc_end10-output_parser
                                        # -- End function
	.globl	output_program                  # -- Begin function output_program
	.p2align	5
	.type	output_program,@function
output_program:                         # @output_program
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s2, $a0, %got_pc_lo12(ftable)
	pcalau12i	$a0, %got_pc_hi20(lineno)
	ld.d	$a0, $a0, %got_pc_lo12(lineno)
	pcalau12i	$a1, %got_pc_hi20(infile)
	ld.d	$a1, $a1, %got_pc_lo12(infile)
	ld.d	$fp, $s2, 0
	ld.w	$s0, $a0, 0
	ld.d	$s1, $a1, 0
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(finput)
	ld.d	$fp, $a0, %got_pc_lo12(finput)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beq	$a0, $s0, .LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB11_1
.LBB11_2:                               # %while.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	output_program, .Lfunc_end11-output_program
                                        # -- End function
	.globl	token_actions                   # -- Begin function token_actions
	.p2align	5
	.type	token_actions,@function
token_actions:                          # @token_actions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ntokens)
	ld.d	$s4, $a0, %got_pc_lo12(ntokens)
	ld.w	$a0, $s4, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(actrow)
	st.d	$a0, $s2, %pc_lo12(actrow)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(action_row)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ftable)
	ld.d	$s5, $a1, %got_pc_lo12(ftable)
	ld.d	$a3, $s5, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	move	$a0, $a3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(tally)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(width)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	blt	$a0, $a1, .LBB12_15
# %bb.1:                                # %for.body.lr.ph.i
	ld.d	$a1, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_3
# %bb.2:
	move	$a2, $zero
	move	$s1, $zero
	b	.LBB12_6
.LBB12_3:                               # %vector.ph
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, 1
	move	$a4, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB12_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vseqi.h	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr1
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseqi.h	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB12_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr3, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s1, $vr0, 0
	beq	$a2, $a0, .LBB12_8
.LBB12_6:                               # %for.body.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 1
	.p2align	4, , 16
.LBB12_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a1, 0
	sltu	$a2, $zero, $a2
	add.w	$s1, $s1, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB12_7
.LBB12_8:                               # %for.end.i
	beqz	$s1, .LBB12_15
# %bb.9:                                # %if.end7.i
	slli.w	$s0, $s1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$fp, $a0
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(tos)
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $s4, 0
	ori	$a4, $zero, 1
	st.d	$a0, $a2, 0
	move	$a3, $fp
	blt	$a1, $a4, .LBB12_14
# %bb.10:                               # %for.body21.lr.ph.i
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $fp
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              # %for.inc33.i
                                        #   in Loop: Header=BB12_12 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB12_14
.LBB12_12:                              # %for.body21.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB12_11
# %bb.13:                               # %if.then27.i
                                        #   in Loop: Header=BB12_12 Depth=1
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB12_11
.LBB12_14:                              # %for.end35.i
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(tally)
	st.h	$s1, $a0, 0
	ld.h	$a0, $a3, -2
	ld.h	$a1, $fp, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(width)
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.h	$a0, $a2, 0
.LBB12_15:                              # %save_row.exit
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s8, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s8, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB12_36
# %bb.16:                               # %for.body.preheader
	ori	$fp, $zero, 10
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$s1, $a0, %pc_lo12(.L.str.12)
	pcalau12i	$a0, %pc_hi20(froms)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(tos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vrepli.b	$vr4, -1
	vrepli.w	$vr5, 1
	ori	$s0, $zero, 1
	ori	$s6, $zero, 10
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	b	.LBB12_19
	.p2align	4, , 16
.LBB12_17:                              # %for.end35.i25
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $s0, 1
	stx.h	$s3, $a0, $a1
	ld.h	$a0, $a3, -2
	ld.h	$a2, $s1, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
	ori	$fp, $zero, 10
	move	$s1, $s8
	move	$s8, $s5
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
.LBB12_18:                              # %save_row.exit48
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.w	$a0, $s8, 0
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB12_36
.LBB12_19:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_26 Depth 2
                                        #     Child Loop BB12_29 Depth 2
                                        #     Child Loop BB12_34 Depth 2
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $fp, .LBB12_21
# %bb.20:                               # %if.else
                                        #   in Loop: Header=BB12_19 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB12_22
	.p2align	4, , 16
.LBB12_21:                              # %if.then
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB12_22:                              # %if.end
                                        #   in Loop: Header=BB12_19 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(action_row)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
	vld	$vr5, $sp, 80                   # 16-byte Folded Reload
	blt	$a0, $s7, .LBB12_18
# %bb.23:                               # %for.body.lr.ph.i7
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a1, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_19 Depth=1
	move	$a2, $zero
	move	$s3, $zero
	b	.LBB12_28
	.p2align	4, , 16
.LBB12_25:                              # %vector.ph57
                                        #   in Loop: Header=BB12_19 Depth=1
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 8
	move	$a4, $a2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB12_26:                              # %vector.body60
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vseqi.h	$vr2, $vr2, 0
	vxor.v	$vr2, $vr2, $vr4
	vilvl.h	$vr2, $vr2, $vr2
	vand.v	$vr2, $vr2, $vr5
	vseqi.h	$vr3, $vr3, 0
	vxor.v	$vr3, $vr3, $vr4
	vilvl.h	$vr3, $vr3, $vr3
	vand.v	$vr3, $vr3, $vr5
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB12_26
# %bb.27:                               # %middle.block67
                                        #   in Loop: Header=BB12_19 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s3, $vr0, 0
	beq	$a2, $a0, .LBB12_30
.LBB12_28:                              # %for.body.i9.preheader
                                        #   in Loop: Header=BB12_19 Depth=1
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 1
	.p2align	4, , 16
.LBB12_29:                              # %for.body.i9
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a2, $a1, 0
	sltu	$a2, $zero, $a2
	add.w	$s3, $s3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 2
	bnez	$a0, .LBB12_29
.LBB12_30:                              # %for.end.i18
                                        #   in Loop: Header=BB12_19 Depth=1
	beqz	$s3, .LBB12_18
# %bb.31:                               # %if.end7.i20
                                        #   in Loop: Header=BB12_19 Depth=1
	move	$s5, $s8
	move	$s8, $s1
	move	$fp, $s4
	move	$s4, $s2
	slli.w	$s2, $s3, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$s1, $a0
	slli.d	$s7, $s0, 3
	stx.d	$a0, $a1, $s7
	move	$a0, $s2
	move	$s2, $s4
	move	$s4, $fp
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $fp, 0
	stx.d	$a0, $a2, $s7
	ori	$s7, $zero, 1
	move	$a3, $s1
	blt	$a1, $s7, .LBB12_17
# %bb.32:                               # %for.body21.lr.ph.i31
                                        #   in Loop: Header=BB12_19 Depth=1
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $s1
	b	.LBB12_34
	.p2align	4, , 16
.LBB12_33:                              # %for.inc33.i43
                                        #   in Loop: Header=BB12_34 Depth=2
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB12_17
.LBB12_34:                              # %for.body21.i33
                                        #   Parent Loop BB12_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB12_33
# %bb.35:                               # %if.then27.i39
                                        #   in Loop: Header=BB12_34 Depth=2
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB12_33
.LBB12_36:                              # %for.end
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(actrow)
	beqz	$a0, .LBB12_38
# %bb.37:                               # %if.then13
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB12_38:                              # %if.end14
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end12:
	.size	token_actions, .Lfunc_end12-token_actions
                                        # -- End function
	.globl	free_shifts                     # -- Begin function free_shifts
	.p2align	5
	.type	free_shifts,@function
free_shifts:                            # @free_shifts
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(shift_table)
	ld.d	$a0, $a0, %got_pc_lo12(shift_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB13_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(first_shift)
	ld.d	$a0, $a0, %got_pc_lo12(first_shift)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB13_3
.LBB13_4:                               # %for.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	free_shifts, .Lfunc_end13-free_shifts
                                        # -- End function
	.globl	free_reductions                 # -- Begin function free_reductions
	.p2align	5
	.type	free_reductions,@function
free_reductions:                        # @free_reductions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB14_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB14_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(first_reduction)
	ld.d	$a0, $a0, %got_pc_lo12(first_reduction)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB14_4
	.p2align	4, , 16
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB14_3
.LBB14_4:                               # %for.end
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	free_reductions, .Lfunc_end14-free_reductions
                                        # -- End function
	.globl	goto_actions                    # -- Begin function goto_actions
	.p2align	5
	.type	goto_actions,@function
goto_actions:                           # @goto_actions
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
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s0, $a0, %got_pc_lo12(nstates)
	ld.w	$a0, $s0, 0
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$s1, $a1, %got_pc_lo12(ntokens)
	pcalau12i	$a1, %got_pc_hi20(goto_map)
	ld.d	$a2, $a1, %got_pc_lo12(goto_map)
	ld.w	$a1, $s1, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	alsl.d	$a3, $a1, $a2, 1
	slli.d	$a1, $a1, 1
	ldx.h	$s5, $a2, $a1
	ld.hu	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(state_count)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(state_count)
	bstrpick.d	$a2, $s5, 15, 0
	addi.w	$fp, $zero, -1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	beq	$a2, $a1, .LBB15_9
# %bb.1:                                # %for.cond.preheader.i
	ld.w	$s2, $s0, 0
	ori	$a2, $zero, 1
	ext.w.h	$s3, $a1
	blt	$s2, $a2, .LBB15_3
# %bb.2:                                # %for.body.lr.ph.i
	slli.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$s0, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB15_3:                               # %for.cond9.preheader.i
	bge	$s5, $s3, .LBB15_6
# %bb.4:                                # %for.body12.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(to_state)
	ld.d	$a1, $a1, %got_pc_lo12(to_state)
	ld.d	$a2, $a1, 0
	sub.d	$a1, $s3, $s5
	alsl.d	$a2, $s5, $a2, 1
	.p2align	4, , 16
.LBB15_5:                               # %for.body12.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	stx.h	$a4, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB15_5
.LBB15_6:                               # %for.cond21.preheader.i
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB15_9
# %bb.7:                                # %for.body24.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	addi.w	$fp, $zero, -1
	.p2align	4, , 16
.LBB15_8:                               # %for.body24.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	slt	$a4, $a2, $a3
	masknez	$a5, $fp, $a4
	maskeqz	$a4, $a1, $a4
	or	$fp, $a4, $a5
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$s2, $s2, -1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$s2, .LBB15_8
.LBB15_9:                               # %default_goto.exit
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s5, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a1, $a1, %pc_lo12(.L.str.33)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(save_column)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$s6, $a0, %got_pc_lo12(nsyms)
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 0
	addi.d	$fp, $a0, 1
	addi.w	$a0, $fp, 0
	bge	$a0, $a1, .LBB15_24
# %bb.10:                               # %for.body.preheader
	addi.w	$s8, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	pcalau12i	$a1, %got_pc_hi20(to_state)
	ld.d	$a1, $a1, %got_pc_lo12(to_state)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s0, $a0, %pc_lo12(.L.str.12)
	ori	$s7, $zero, 10
	b	.LBB15_12
	.p2align	4, , 16
.LBB15_11:                              # %default_goto.exit42
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $s5, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(save_column)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	addi.d	$fp, $fp, 1
	bge	$fp, $a0, .LBB15_24
.LBB15_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_23 Depth 2
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	bge	$s7, $a0, .LBB15_14
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB15_12 Depth=1
	addi.w	$s7, $s7, 1
	b	.LBB15_15
	.p2align	4, , 16
.LBB15_14:                              # %if.then
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
.LBB15_15:                              # %if.end
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	alsl.d	$a1, $fp, $a0, 1
	slli.d	$a2, $fp, 1
	ldx.hu	$s3, $a0, $a2
	ld.hu	$s4, $a1, 2
	move	$s1, $s8
	beq	$s3, $s4, .LBB15_11
# %bb.16:                               # %for.cond.preheader.i12
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB15_18
# %bb.17:                               # %for.body.lr.ph.i41
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	slli.d	$a1, $s2, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_18:                              # %for.cond9.preheader.i14
                                        #   in Loop: Header=BB15_12 Depth=1
	ext.w.h	$a2, $s3
	ext.w.h	$a1, $s4
	bge	$a2, $a1, .LBB15_21
# %bb.19:                               # %for.body12.lr.ph.i31
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	sub.d	$a1, $a1, $a2
	alsl.d	$a2, $a2, $a3, 1
	.p2align	4, , 16
.LBB15_20:                              # %for.body12.i33
                                        #   Parent Loop BB15_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a2, 0
	slli.d	$a3, $a3, 1
	ldx.h	$a4, $a0, $a3
	addi.d	$a4, $a4, 1
	stx.h	$a4, $a0, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 2
	bnez	$a1, .LBB15_20
.LBB15_21:                              # %for.cond21.preheader.i16
                                        #   in Loop: Header=BB15_12 Depth=1
	move	$s1, $s8
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB15_11
# %bb.22:                               # %for.body24.lr.ph.i18
                                        #   in Loop: Header=BB15_12 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	move	$a1, $zero
	move	$a2, $zero
	move	$s1, $s8
	.p2align	4, , 16
.LBB15_23:                              # %for.body24.i20
                                        #   Parent Loop BB15_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a3, $a0, 0
	slt	$a4, $a2, $a3
	masknez	$a5, $s1, $a4
	maskeqz	$a4, $a1, $a4
	or	$s1, $a4, $a5
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$s2, $s2, -1
	addi.w	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$s2, .LBB15_23
	b	.LBB15_11
.LBB15_24:                              # %for.end
	ld.d	$a3, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(state_count)
	beqz	$a0, .LBB15_26
# %bb.25:                               # %if.then13
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB15_26:                              # %if.end14
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
.Lfunc_end15:
	.size	goto_actions, .Lfunc_end15-goto_actions
                                        # -- End function
	.globl	sort_actions                    # -- Begin function sort_actions
	.p2align	5
	.type	sort_actions,@function
sort_actions:                           # @sort_actions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(nvectors)
	ld.w	$a0, $fp, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a2, %pc_hi20(order)
	ld.w	$a1, $fp, %pc_lo12(nvectors)
	st.d	$a0, $a2, %pc_lo12(order)
	pcalau12i	$a2, %pc_hi20(nentries)
	ori	$a3, $zero, 1
	st.w	$zero, $a2, %pc_lo12(nentries)
	blt	$a1, $a3, .LBB16_30
# %bb.1:                                # %for.body.lr.ph
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a0, 2
	pcalau12i	$a7, %pc_hi20(tally)
	ld.d	$a7, $a7, %pc_lo12(tally)
	pcalau12i	$t0, %pc_hi20(width)
	ld.d	$t0, $t0, %pc_lo12(width)
	addi.d	$t1, $a0, -30
	addi.d	$t2, $a0, -14
	addi.w	$t3, $zero, -1
	ori	$t4, $zero, 8
	ori	$t5, $zero, 16
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_2:                               # %for.end
                                        #   in Loop: Header=BB16_4 Depth=1
	slli.d	$t6, $t6, 1
	stx.h	$a4, $a6, $t6
	addi.w	$a5, $a5, 1
	st.w	$a5, $a2, %pc_lo12(nentries)
.LBB16_3:                               # %for.inc57
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB16_30
.LBB16_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_9 Depth 2
                                        #     Child Loop BB16_26 Depth 2
                                        #     Child Loop BB16_23 Depth 2
                                        #     Child Loop BB16_17 Depth 2
	slli.d	$t6, $a4, 1
	ldx.h	$t7, $a7, $t6
	blt	$t7, $a3, .LBB16_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB16_4 Depth=1
	ldx.h	$fp, $t0, $t6
	slli.d	$t6, $a5, 32
	srai.d	$t6, $t6, 63
	and	$t6, $t6, $a5
	addi.w	$t6, $t6, -1
	move	$t8, $a5
	.p2align	4, , 16
.LBB16_6:                               # %while.cond
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$t8, $a3, .LBB16_13
# %bb.7:                                # %land.rhs
                                        #   in Loop: Header=BB16_6 Depth=2
	addi.w	$t8, $t8, -1
	slli.d	$s0, $t8, 1
	ldx.h	$s0, $a0, $s0
	slli.d	$s0, $s0, 1
	ldx.h	$s0, $t0, $s0
	blt	$s0, $fp, .LBB16_6
# %bb.8:                                # %land.lhs.true.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	bstrpick.d	$fp, $fp, 15, 0
	.p2align	4, , 16
.LBB16_9:                               # %land.lhs.true
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t6, $t8
	slli.d	$t8, $t8, 1
	ldx.h	$t8, $a0, $t8
	slli.d	$t8, $t8, 1
	ldx.hu	$s0, $t0, $t8
	bne	$s0, $fp, .LBB16_13
# %bb.10:                               # %land.rhs31
                                        #   in Loop: Header=BB16_9 Depth=2
	ldx.h	$t8, $a7, $t8
	bge	$t8, $t7, .LBB16_13
# %bb.11:                               # %while.body40
                                        #   in Loop: Header=BB16_9 Depth=2
	addi.w	$t8, $t6, -1
	bgtz	$t6, .LBB16_9
# %bb.12:                               #   in Loop: Header=BB16_4 Depth=1
	move	$t6, $t3
	.p2align	4, , 16
.LBB16_13:                              # %while.end42
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.w	$t7, $a5, -1
	bge	$t6, $t7, .LBB16_2
# %bb.14:                               # %iter.check
                                        #   in Loop: Header=BB16_4 Depth=1
	sub.d	$t8, $t7, $t6
	bgeu	$t8, $t4, .LBB16_18
.LBB16_15:                              #   in Loop: Header=BB16_4 Depth=1
	move	$fp, $a5
.LBB16_16:                              # %for.body47.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	alsl.d	$t8, $t7, $a0, 1
	move	$s0, $t7
	.p2align	4, , 16
.LBB16_17:                              # %for.body47
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s1, $t8, 0
	addi.w	$fp, $fp, 0
	slli.d	$fp, $fp, 1
	stx.h	$s1, $a0, $fp
	addi.d	$s0, $s0, -1
	move	$fp, $t7
	addi.d	$t7, $t7, -1
	addi.d	$t8, $t8, -2
	blt	$t6, $s0, .LBB16_17
	b	.LBB16_2
.LBB16_18:                              # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=1
	nor	$fp, $t6, $zero
	add.d	$fp, $fp, $t7
	sub.w	$s0, $a5, $fp
	blt	$a5, $s0, .LBB16_15
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=1
	srli.d	$s0, $fp, 32
	move	$fp, $a5
	bnez	$s0, .LBB16_16
# %bb.20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB16_4 Depth=1
	bgeu	$t8, $t5, .LBB16_25
# %bb.21:                               #   in Loop: Header=BB16_4 Depth=1
	move	$s0, $zero
.LBB16_22:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$s1, $t8
	bstrins.d	$s1, $zero, 2, 0
	sub.d	$s2, $t7, $s1
	sub.d	$fp, $a5, $s1
	sub.d	$s3, $s0, $s1
	sub.w	$s4, $a5, $s0
	slli.d	$t7, $t7, 1
	slli.d	$s0, $s0, 1
	sub.d	$t7, $t7, $s0
	add.d	$t7, $t2, $t7
	.p2align	4, , 16
.LBB16_23:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, 0
	slli.d	$s0, $s4, 1
	vstx	$vr0, $t2, $s0
	addi.d	$s3, $s3, 8
	addi.w	$s4, $s4, -8
	addi.d	$t7, $t7, -16
	bnez	$s3, .LBB16_23
# %bb.24:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$t7, $s2
	beq	$t8, $s1, .LBB16_2
	b	.LBB16_16
.LBB16_25:                              # %vector.ph
                                        #   in Loop: Header=BB16_4 Depth=1
	move	$s0, $t8
	bstrins.d	$s0, $zero, 3, 0
	alsl.d	$fp, $t7, $t1, 1
	move	$s1, $a5
	move	$s2, $s0
	.p2align	4, , 16
.LBB16_26:                              # %vector.body
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $fp, 0
	slli.d	$s3, $s1, 1
	xvstx	$xr0, $t1, $s3
	addi.d	$s2, $s2, -16
	addi.w	$s1, $s1, -16
	addi.d	$fp, $fp, -32
	bnez	$s2, .LBB16_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB16_4 Depth=1
	beq	$t8, $s0, .LBB16_2
# %bb.28:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB16_4 Depth=1
	andi	$fp, $t8, 8
	bnez	$fp, .LBB16_22
# %bb.29:                               #   in Loop: Header=BB16_4 Depth=1
	sub.d	$t7, $t7, $s0
	sub.d	$fp, $a5, $s0
	b	.LBB16_16
.LBB16_30:                              # %for.end59
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	sort_actions, .Lfunc_end16-sort_actions
                                        # -- End function
	.globl	pack_table                      # -- Begin function pack_table
	.p2align	5
	.type	pack_table,@function
pack_table:                             # @pack_table
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
	pcalau12i	$s1, %pc_hi20(nvectors)
	ld.w	$a0, $s1, %pc_lo12(nvectors)
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(nentries)
	ld.w	$a1, $s2, %pc_lo12(nentries)
	pcalau12i	$s3, %pc_hi20(base)
	st.d	$a0, $s3, %pc_lo12(base)
	slli.w	$a0, $a1, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(pos)
	st.d	$a0, $s0, %pc_lo12(pos)
	lu12i.w	$a0, 15
	ori	$fp, $a0, 4094
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(table)
	st.d	$a0, $a1, %pc_lo12(table)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(check)
	st.d	$a0, $a1, %pc_lo12(check)
	pcalau12i	$a1, %pc_hi20(lowzero)
	ld.w	$s4, $s1, %pc_lo12(nvectors)
	st.w	$zero, $a1, %pc_lo12(lowzero)
	pcalau12i	$a1, %pc_hi20(high)
	ori	$s5, $zero, 1
	st.w	$zero, $a1, %pc_lo12(high)
	blt	$s4, $s5, .LBB17_14
# %bb.1:                                # %iter.check
	ld.d	$a2, $s3, %pc_lo12(base)
	ori	$a3, $zero, 7
	lu12i.w	$a1, 8
	bltu	$a3, $s4, .LBB17_3
# %bb.2:
	move	$a3, $zero
	b	.LBB17_12
.LBB17_3:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 32
	bgeu	$s4, $a3, .LBB17_5
# %bb.4:
	move	$a3, $zero
	b	.LBB17_9
.LBB17_5:                               # %vector.ph
	bstrpick.d	$a3, $s4, 30, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $a2, 32
	xvreplgr2vr.h	$xr0, $a1
	move	$a5, $a3
	.p2align	4, , 16
.LBB17_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a4, -32
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB17_6
# %bb.7:                                # %middle.block
	beq	$a3, $s4, .LBB17_14
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a4, $s4, 24
	beqz	$a4, .LBB17_12
.LBB17_9:                               # %vec.epilog.ph
	move	$a5, $a3
	bstrpick.d	$a3, $s4, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a5, $a3
	alsl.d	$a5, $a5, $a2, 1
	vreplgr2vr.h	$vr0, $a1
	.p2align	4, , 16
.LBB17_10:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	bnez	$a4, .LBB17_10
# %bb.11:                               # %vec.epilog.middle.block
	beq	$a3, $s4, .LBB17_14
.LBB17_12:                              # %for.body.preheader
	alsl.d	$a2, $a3, $a2, 1
	sub.d	$a3, $s4, $a3
	.p2align	4, , 16
.LBB17_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a1, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB17_13
.LBB17_14:                              # %for.cond9.preheader
	ori	$a1, $zero, 255
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s2, %pc_lo12(nentries)
	blt	$s6, $s5, .LBB17_21
# %bb.15:                               # %for.body21.preheader
	move	$s4, $zero
	move	$fp, $zero
	move	$s5, $zero
	addi.w	$s7, $zero, -1
	pcalau12i	$s8, %pc_hi20(order)
	b	.LBB17_18
	.p2align	4, , 16
.LBB17_16:                              # %if.then
                                        #   in Loop: Header=BB17_18 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(pack_vector)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(base)
	ld.w	$s6, $s2, %pc_lo12(nentries)
.LBB17_17:                              # %if.end
                                        #   in Loop: Header=BB17_18 Depth=1
	ld.d	$a2, $s0, %pc_lo12(pos)
	ld.d	$a3, $s8, %pc_lo12(order)
	stx.h	$a0, $a2, $s4
	ldx.h	$a2, $a3, $s4
	slli.d	$a2, $a2, 1
	stx.h	$a0, $a1, $a2
	addi.d	$s5, $s5, 1
	addi.w	$fp, $fp, 1
	addi.d	$s4, $s4, 2
	bge	$s5, $s6, .LBB17_20
.LBB17_18:                              # %for.body21
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(matching_state)
	jirl	$ra, $ra, 0
	bge	$s7, $a0, .LBB17_16
# %bb.19:                               # %if.else
                                        #   in Loop: Header=BB17_18 Depth=1
	ld.d	$a1, $s3, %pc_lo12(base)
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $a1, $a0
	b	.LBB17_17
.LBB17_20:                              # %for.cond40.preheader.loopexit
	ld.w	$s4, $s1, %pc_lo12(nvectors)
.LBB17_21:                              # %for.cond40.preheader
	pcalau12i	$a0, %pc_hi20(froms)
	ld.d	$fp, $a0, %pc_lo12(froms)
	ori	$a0, $zero, 1
	pcalau12i	$s1, %pc_hi20(tos)
	blt	$s4, $a0, .LBB17_28
# %bb.22:                               # %for.body43.lr.ph
	ld.d	$s2, $s1, %pc_lo12(tos)
	move	$s3, $fp
	b	.LBB17_24
	.p2align	4, , 16
.LBB17_23:                              # %for.inc57
                                        #   in Loop: Header=BB17_24 Depth=1
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 8
	beqz	$s4, .LBB17_29
.LBB17_24:                              # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB17_26
# %bb.25:                               # %if.then46
                                        #   in Loop: Header=BB17_24 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_26:                              # %if.end49
                                        #   in Loop: Header=BB17_24 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB17_23
# %bb.27:                               # %if.then53
                                        #   in Loop: Header=BB17_24 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB17_23
.LBB17_28:                              # %for.end59
	beqz	$fp, .LBB17_30
.LBB17_29:                              # %if.then61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_30:                              # %if.end62
	ld.d	$a0, $s1, %pc_lo12(tos)
	beqz	$a0, .LBB17_32
# %bb.31:                               # %if.then64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB17_32:                              # %if.end65
	ld.d	$a0, $s0, %pc_lo12(pos)
	beqz	$a0, .LBB17_34
# %bb.33:                               # %if.then67
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB17_34:                              # %if.end68
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
.Lfunc_end17:
	.size	pack_table, .Lfunc_end17-pack_table
                                        # -- End function
	.globl	output_base                     # -- Begin function output_base
	.p2align	5
	.type	output_base,@function
output_base:                            # @output_base
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	pcalau12i	$s0, %pc_hi20(base)
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nstates)
	ld.d	$s2, $a0, %got_pc_lo12(nstates)
	ld.w	$a1, $s2, 0
	ori	$s3, $zero, 2
	blt	$a1, $s3, .LBB18_6
# %bb.1:                                # %for.body.preheader
	ori	$s4, $zero, 10
	ori	$s5, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_2:                               # %if.else
                                        #   in Loop: Header=BB18_4 Depth=1
	addi.w	$s6, $s6, 1
.LBB18_3:                               # %if.end
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 2
	bge	$s5, $a1, .LBB18_6
.LBB18_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s4, .LBB18_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB18_3
.LBB18_6:                               # %for.end
	ld.d	$a2, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a2, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	pcalau12i	$s2, %pc_hi20(nvectors)
	ld.w	$a1, $s2, %pc_lo12(nvectors)
	addi.d	$s3, $a0, 1
	addi.w	$a2, $s3, 0
	bge	$a2, $a1, .LBB18_12
# %bb.7:                                # %for.body17.preheader
	slli.d	$a0, $a0, 1
	addi.d	$s4, $a0, 2
	ori	$s5, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB18_10
	.p2align	4, , 16
.LBB18_8:                               # %if.else23
                                        #   in Loop: Header=BB18_10 Depth=1
	addi.w	$s6, $s6, 1
.LBB18_9:                               # %if.end25
                                        #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a1, $s0, %pc_lo12(base)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(nvectors)
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 2
	bge	$s3, $a0, .LBB18_12
.LBB18_10:                              # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	blt	$s6, $s5, .LBB18_8
# %bb.11:                               # %if.then21
                                        #   in Loop: Header=BB18_10 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	b	.LBB18_9
.LBB18_12:                              # %for.end32
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(base)
	beqz	$a0, .LBB18_14
# %bb.13:                               # %if.then34
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB18_14:                              # %if.end35
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end18:
	.size	output_base, .Lfunc_end18-output_base
                                        # -- End function
	.globl	output_table                    # -- Begin function output_table
	.p2align	5
	.type	output_table,@function
output_table:                           # @output_table
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s0, $a0, %got_pc_lo12(ftable)
	ld.d	$a0, $s0, 0
	pcalau12i	$s2, %pc_hi20(high)
	ld.w	$a2, $s2, %pc_lo12(high)
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(table)
	ld.d	$a1, $s1, %pc_lo12(table)
	ld.d	$a0, $s0, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB19_6
# %bb.1:                                # %for.body.preheader
	move	$s3, $zero
	ori	$s4, $zero, 10
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               # %if.then
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB19_3:                               # %if.end
                                        #   in Loop: Header=BB19_4 Depth=1
	ld.d	$a1, $s1, %pc_lo12(table)
	ld.d	$a0, $s0, 0
	ldx.h	$a2, $a1, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 2
	bge	$s3, $a0, .LBB19_6
.LBB19_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s4, .LBB19_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB19_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB19_3
.LBB19_6:                               # %for.end
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(table)
	beqz	$a0, .LBB19_8
# %bb.7:                                # %if.then12
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB19_8:                               # %if.end13
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end19:
	.size	output_table, .Lfunc_end19-output_table
                                        # -- End function
	.globl	output_check                    # -- Begin function output_check
	.p2align	5
	.type	output_check,@function
output_check:                           # @output_check
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(ftable)
	ld.d	$s1, $a0, %got_pc_lo12(ftable)
	pcalau12i	$s0, %pc_hi20(check)
	ld.d	$a1, $s0, %pc_lo12(check)
	ld.d	$a0, $s1, 0
	ld.h	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(high)
	ld.w	$a0, $s2, %pc_lo12(high)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB20_6
# %bb.1:                                # %for.body.preheader
	move	$s3, $zero
	ori	$s4, $zero, 10
	ori	$s5, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	ori	$s6, $zero, 10
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               # %if.then
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
.LBB20_3:                               # %if.end
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a1, $s0, %pc_lo12(check)
	ld.d	$a0, $s1, 0
	ldx.h	$a2, $a1, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(high)
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 2
	bge	$s3, $a0, .LBB20_6
.LBB20_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	bge	$s6, $s4, .LBB20_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB20_4 Depth=1
	addi.w	$s6, $s6, 1
	b	.LBB20_3
.LBB20_6:                               # %for.end
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(check)
	beqz	$a0, .LBB20_8
# %bb.7:                                # %if.then11
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB20_8:                               # %if.end12
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end20:
	.size	output_check, .Lfunc_end20-output_check
                                        # -- End function
	.globl	action_row                      # -- Begin function action_row
	.p2align	5
	.type	action_row,@function
action_row:                             # @action_row
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$s0, $a1, 0
	ori	$a1, $zero, 1
	move	$fp, $a0
	blt	$s0, $a1, .LBB21_2
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a0, %pc_hi20(actrow)
	ld.d	$a0, $a0, %pc_lo12(actrow)
	slli.d	$a1, $s0, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB21_2:                               # %for.end
	pcalau12i	$a0, %got_pc_hi20(reduction_table)
	ld.d	$a0, $a0, %got_pc_lo12(reduction_table)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	beqz	$a0, .LBB21_12
# %bb.3:                                # %if.then
	ld.h	$a2, $a0, 10
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB21_13
# %bb.4:                                # %if.then6
	pcalau12i	$a1, %got_pc_hi20(lookaheads)
	ld.d	$a1, $a1, %got_pc_lo12(lookaheads)
	ld.d	$a1, $a1, 0
	alsl.d	$a4, $fp, $a1, 1
	slli.d	$a3, $fp, 1
	ldx.h	$a3, $a1, $a3
	ld.h	$a1, $a4, 2
	bge	$a3, $a1, .LBB21_14
# %bb.5:                                # %for.body16.lr.ph
	ori	$a4, $zero, 1
	blt	$s0, $a4, .LBB21_14
# %bb.6:                                # %for.body16.us.preheader
	pcalau12i	$a5, %got_pc_hi20(LAruleno)
	ld.d	$a5, $a5, %got_pc_lo12(LAruleno)
	pcalau12i	$a6, %got_pc_hi20(LA)
	ld.d	$a6, $a6, %got_pc_lo12(LA)
	ld.d	$a5, $a5, 0
	pcalau12i	$a7, %got_pc_hi20(tokensetsize)
	ld.d	$t0, $a7, %got_pc_lo12(tokensetsize)
	ld.d	$a6, $a6, 0
	pcalau12i	$a7, %pc_hi20(actrow)
	ld.d	$a7, $a7, %pc_lo12(actrow)
	ld.w	$t0, $t0, 0
	move	$t1, $a1
	b	.LBB21_8
	.p2align	4, , 16
.LBB21_7:                               # %for.cond21.for.cond13.loopexit_crit_edge.us
                                        #   in Loop: Header=BB21_8 Depth=1
	bge	$a3, $t1, .LBB21_14
.LBB21_8:                               # %for.body16.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_10 Depth 2
	addi.d	$t1, $t1, -1
	slli.d	$t2, $t1, 1
	ldx.h	$t2, $a5, $t2
	sub.d	$t2, $zero, $t2
	mul.d	$t3, $t1, $t0
	alsl.d	$t3, $t3, $a6, 2
	ori	$t6, $zero, 1
	move	$t4, $s0
	move	$t5, $a7
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_9:                               # %if.end.us
                                        #   in Loop: Header=BB21_10 Depth=2
	slli.w	$t6, $t6, 1
	sltui	$t7, $t6, 1
	sltu	$t8, $a4, $t6
	masknez	$s1, $a4, $t8
	maskeqz	$t6, $t6, $t8
	or	$t6, $t6, $s1
	alsl.d	$t3, $t7, $t3, 2
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 2
	beqz	$t4, .LBB21_7
.LBB21_10:                              # %for.body24.us
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t3, 0
	and	$t7, $t7, $t6
	beqz	$t7, .LBB21_9
# %bb.11:                               # %if.then26.us
                                        #   in Loop: Header=BB21_10 Depth=2
	st.h	$t2, $t5, 0
	b	.LBB21_9
.LBB21_12:
	move	$a2, $zero
.LBB21_13:
                                        # implicit-def: $r5
                                        # implicit-def: $r7
.LBB21_14:                              # %if.end40
	pcalau12i	$a4, %got_pc_hi20(shift_table)
	ld.d	$a4, $a4, %got_pc_lo12(shift_table)
	ld.d	$a5, $a4, 0
	slli.d	$a4, $fp, 3
	ldx.d	$t3, $a5, $a4
	beqz	$t3, .LBB21_21
# %bb.15:                               # %if.then44
	ld.h	$a5, $t3, 10
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB21_21
# %bb.16:                               # %for.body49.lr.ph
	pcalau12i	$a7, %got_pc_hi20(accessing_symbol)
	ld.d	$a7, $a7, %got_pc_lo12(accessing_symbol)
	pcalau12i	$t0, %got_pc_hi20(error_token_number)
	ld.d	$t1, $t0, %got_pc_lo12(error_token_number)
	ld.d	$a7, $a7, 0
	pcalau12i	$t0, %pc_hi20(actrow)
	ld.d	$t0, $t0, %pc_lo12(actrow)
	ld.w	$t1, $t1, 0
	move	$t2, $zero
	addi.d	$t3, $t3, 12
	b	.LBB21_18
	.p2align	4, , 16
.LBB21_17:                              # %for.inc70
                                        #   in Loop: Header=BB21_18 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$t3, $t3, 2
	beqz	$a5, .LBB21_22
.LBB21_18:                              # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t5, $t3, 0
	bstrpick.d	$t4, $t5, 15, 0
	beqz	$t4, .LBB21_17
# %bb.19:                               # %if.end55
                                        #   in Loop: Header=BB21_18 Depth=1
	slli.d	$t5, $t5, 1
	ldx.h	$t5, $a7, $t5
	bge	$t5, $s0, .LBB21_22
# %bb.20:                               # %if.end62
                                        #   in Loop: Header=BB21_18 Depth=1
	slli.d	$t6, $t5, 1
	stx.h	$t4, $t0, $t6
	xor	$t4, $t1, $t5
	sltui	$t4, $t4, 1
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $a6, $t4
	or	$t2, $t4, $t2
	b	.LBB21_17
.LBB21_21:
	move	$a5, $zero
	b	.LBB21_23
.LBB21_22:                              # %if.end73.loopexit
	sltu	$a5, $zero, $t2
.LBB21_23:                              # %if.end73
	pcalau12i	$a6, %got_pc_hi20(err_table)
	ld.d	$a6, $a6, %got_pc_lo12(err_table)
	ld.d	$a6, $a6, 0
	ldx.d	$a7, $a6, $a4
	beqz	$a7, .LBB21_27
# %bb.24:                               # %if.then77
	ld.h	$a4, $a7, 0
	ori	$a6, $zero, 1
	blt	$a4, $a6, .LBB21_27
# %bb.25:                               # %for.body82.lr.ph
	pcalau12i	$a6, %pc_hi20(actrow)
	ld.d	$a6, $a6, %pc_lo12(actrow)
	addi.d	$a7, $a7, 2
	lu12i.w	$t0, 8
	.p2align	4, , 16
.LBB21_26:                              # %for.body82
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a7, 0
	slli.d	$t1, $t1, 1
	stx.h	$t0, $a6, $t1
	addi.d	$a4, $a4, -1
	addi.d	$a7, $a7, 2
	bnez	$a4, .LBB21_26
.LBB21_27:                              # %if.end91
	slti	$a2, $a2, 1
	or	$a2, $a2, $a5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB21_29
.LBB21_28:
	move	$a0, $zero
	b	.LBB21_31
.LBB21_29:                              # %if.then95
	pcalau12i	$a2, %got_pc_hi20(consistent)
	ld.d	$a2, $a2, %got_pc_lo12(consistent)
	ld.d	$a2, $a2, 0
	ldx.bu	$a2, $a2, $fp
	beqz	$a2, .LBB21_55
# %bb.30:                               # %if.then99
	ld.h	$a0, $a0, 12
.LBB21_31:                              # %if.end154
	addi.w	$a1, $a0, 0
	bnez	$a1, .LBB21_111
# %bb.32:                               # %if.end154
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB21_111
# %bb.33:                               # %iter.check201
	pcalau12i	$a1, %pc_hi20(actrow)
	ld.d	$a1, $a1, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$s0, $a2, .LBB21_35
# %bb.34:
	move	$a2, $zero
	b	.LBB21_103
.LBB21_35:                              # %vector.main.loop.iter.check203
	ori	$a2, $zero, 16
	bgeu	$s0, $a2, .LBB21_67
# %bb.36:
	move	$a2, $zero
.LBB21_37:                              # %vec.epilog.ph247
	move	$a4, $a2
	bstrpick.d	$a2, $s0, 30, 3
	slli.d	$a2, $a2, 3
	sub.d	$a3, $a4, $a2
	alsl.d	$a4, $a4, $a1, 1
	addi.d	$a4, $a4, 8
	lu12i.w	$a5, 8
	vreplgr2vr.h	$vr0, $a5
	b	.LBB21_39
	.p2align	4, , 16
.LBB21_38:                              # %pred.store.continue271
                                        #   in Loop: Header=BB21_39 Depth=1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 16
	beqz	$a3, .LBB21_66
.LBB21_39:                              # %vec.epilog.vector.body253
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -8
	vseq.h	$vr1, $vr1, $vr0
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_47
# %bb.40:                               # %pred.store.if256
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, -8
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_48
.LBB21_41:                              # %pred.store.continue259
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_49
.LBB21_42:                              # %pred.store.if260
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, -4
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_50
.LBB21_43:                              # %pred.store.continue263
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_51
.LBB21_44:                              # %pred.store.if264
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, 0
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_52
.LBB21_45:                              # %pred.store.continue267
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_53
.LBB21_46:                              # %pred.store.if268
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, 4
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_38
	b	.LBB21_54
	.p2align	4, , 16
.LBB21_47:                              # %pred.store.continue257
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_41
.LBB21_48:                              # %pred.store.if258
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, -6
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_42
.LBB21_49:                              # %pred.store.continue261
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_43
.LBB21_50:                              # %pred.store.if262
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, -2
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_44
.LBB21_51:                              # %pred.store.continue265
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_45
.LBB21_52:                              # %pred.store.if266
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, 2
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_46
.LBB21_53:                              # %pred.store.continue269
                                        #   in Loop: Header=BB21_39 Depth=1
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_38
.LBB21_54:                              # %pred.store.if270
                                        #   in Loop: Header=BB21_39 Depth=1
	st.h	$zero, $a4, 6
	b	.LBB21_38
.LBB21_55:                              # %for.cond102.preheader
	addi.w	$a1, $a1, 0
	addi.w	$a2, $a3, 0
	bge	$a2, $a1, .LBB21_28
# %bb.56:                               # %for.body105.lr.ph
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB21_110
# %bb.57:                               # %for.body105.us.preheader
	pcalau12i	$a0, %got_pc_hi20(LAruleno)
	ld.d	$a6, $a0, %got_pc_lo12(LAruleno)
	move	$a4, $zero
	move	$a0, $zero
	pcalau12i	$a3, %pc_hi20(actrow)
	ld.d	$a5, $a3, %pc_lo12(actrow)
	ld.d	$a6, $a6, 0
	bstrpick.d	$a7, $s0, 30, 3
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a5, 8
	ori	$t1, $zero, 8
	vrepli.b	$vr0, 0
	b	.LBB21_59
	.p2align	4, , 16
.LBB21_58:                              # %for.cond110.for.end124_crit_edge.us
                                        #   in Loop: Header=BB21_59 Depth=1
	slt	$t4, $a4, $t3
	masknez	$a0, $a0, $t4
	maskeqz	$t2, $t2, $t4
	or	$a0, $t2, $a0
	masknez	$a4, $a4, $t4
	maskeqz	$t2, $t3, $t4
	addi.d	$a2, $a2, 1
	or	$a4, $t2, $a4
	beq	$a2, $a1, .LBB21_107
.LBB21_59:                              # %for.body105.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_62 Depth 2
                                        #     Child Loop BB21_65 Depth 2
	slli.d	$t2, $a2, 1
	ldx.h	$t2, $a6, $t2
	sub.d	$t2, $zero, $t2
	bgeu	$s0, $t1, .LBB21_61
# %bb.60:                               #   in Loop: Header=BB21_59 Depth=1
	move	$t5, $zero
	move	$t3, $zero
	b	.LBB21_64
	.p2align	4, , 16
.LBB21_61:                              # %vector.ph
                                        #   in Loop: Header=BB21_59 Depth=1
	vreplgr2vr.w	$vr1, $t2
	move	$t3, $t0
	move	$t4, $a7
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB21_62:                              # %vector.body
                                        #   Parent Loop BB21_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $t3, -8
	ld.d	$t6, $t3, 0
	vinsgr2vr.d	$vr4, $t5, 0
	vinsgr2vr.d	$vr5, $t6, 0
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr5, $vr5, $vr5
	vslli.w	$vr5, $vr5, 16
	vsrai.w	$vr5, $vr5, 16
	vseq.w	$vr4, $vr1, $vr4
	vseq.w	$vr5, $vr1, $vr5
	vsub.w	$vr2, $vr2, $vr4
	vsub.w	$vr3, $vr3, $vr5
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 16
	bnez	$t4, .LBB21_62
# %bb.63:                               # %middle.block
                                        #   in Loop: Header=BB21_59 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$t3, $vr1, 0
	move	$t5, $a7
	beq	$a7, $s0, .LBB21_58
.LBB21_64:                              # %for.body113.us.preheader
                                        #   in Loop: Header=BB21_59 Depth=1
	alsl.d	$t4, $t5, $a5, 1
	sub.d	$t5, $s0, $t5
	.p2align	4, , 16
.LBB21_65:                              # %for.body113.us
                                        #   Parent Loop BB21_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t6, $t4, 0
	xor	$t6, $t6, $t2
	sltui	$t6, $t6, 1
	add.w	$t3, $t3, $t6
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB21_65
	b	.LBB21_58
.LBB21_66:                              # %vec.epilog.middle.block273
	beq	$a2, $s0, .LBB21_111
	b	.LBB21_103
.LBB21_67:                              # %vector.ph204
	bstrpick.d	$a2, $s0, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 16
	lu12i.w	$a4, 8
	xvreplgr2vr.h	$xr0, $a4
	move	$a4, $a2
	b	.LBB21_69
	.p2align	4, , 16
.LBB21_68:                              # %pred.store.continue241
                                        #   in Loop: Header=BB21_69 Depth=1
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 32
	beqz	$a4, .LBB21_101
.LBB21_69:                              # %vector.body207
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -16
	xvseq.h	$xr1, $xr1, $xr0
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_85
# %bb.70:                               # %pred.store.if210
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -16
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_86
.LBB21_71:                              # %pred.store.continue213
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_87
.LBB21_72:                              # %pred.store.if214
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -12
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_88
.LBB21_73:                              # %pred.store.continue217
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_89
.LBB21_74:                              # %pred.store.if218
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -8
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_90
.LBB21_75:                              # %pred.store.continue221
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_91
.LBB21_76:                              # %pred.store.if222
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -4
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_92
.LBB21_77:                              # %pred.store.continue225
                                        #   in Loop: Header=BB21_69 Depth=1
	xvpermi.d	$xr1, $xr1, 14
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_93
.LBB21_78:                              # %pred.store.if226
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 0
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_94
.LBB21_79:                              # %pred.store.continue229
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_95
.LBB21_80:                              # %pred.store.if230
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 4
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_96
.LBB21_81:                              # %pred.store.continue233
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_97
.LBB21_82:                              # %pred.store.if234
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 8
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_98
.LBB21_83:                              # %pred.store.continue237
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_99
.LBB21_84:                              # %pred.store.if238
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 12
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_68
	b	.LBB21_100
	.p2align	4, , 16
.LBB21_85:                              # %pred.store.continue211
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_71
.LBB21_86:                              # %pred.store.if212
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -14
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_72
.LBB21_87:                              # %pred.store.continue215
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_73
.LBB21_88:                              # %pred.store.if216
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -10
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_74
.LBB21_89:                              # %pred.store.continue219
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_75
.LBB21_90:                              # %pred.store.if220
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -6
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_76
.LBB21_91:                              # %pred.store.continue223
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_77
.LBB21_92:                              # %pred.store.if224
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, -2
	xvpermi.d	$xr1, $xr1, 14
	vpickve2gr.h	$a5, $vr1, 0
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_78
.LBB21_93:                              # %pred.store.continue227
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_79
.LBB21_94:                              # %pred.store.if228
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 2
	vpickve2gr.h	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_80
.LBB21_95:                              # %pred.store.continue231
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_81
.LBB21_96:                              # %pred.store.if232
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 6
	vpickve2gr.h	$a5, $vr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_82
.LBB21_97:                              # %pred.store.continue235
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_83
.LBB21_98:                              # %pred.store.if236
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 10
	vpickve2gr.h	$a5, $vr1, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_84
.LBB21_99:                              # %pred.store.continue239
                                        #   in Loop: Header=BB21_69 Depth=1
	vpickve2gr.h	$a5, $vr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_68
.LBB21_100:                             # %pred.store.if240
                                        #   in Loop: Header=BB21_69 Depth=1
	st.h	$zero, $a3, 14
	b	.LBB21_68
.LBB21_101:                             # %middle.block243
	beq	$a2, $s0, .LBB21_111
# %bb.102:                              # %vec.epilog.iter.check248
	andi	$a3, $s0, 8
	bnez	$a3, .LBB21_37
.LBB21_103:                             # %for.body161.preheader
	alsl.d	$a1, $a2, $a1, 1
	sub.d	$a2, $s0, $a2
	lu12i.w	$a3, 8
	b	.LBB21_105
	.p2align	4, , 16
.LBB21_104:                             # %for.inc171
                                        #   in Loop: Header=BB21_105 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB21_111
.LBB21_105:                             # %for.body161
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 0
	bne	$a4, $a3, .LBB21_104
# %bb.106:                              # %if.then167
                                        #   in Loop: Header=BB21_105 Depth=1
	st.h	$zero, $a1, 0
	b	.LBB21_104
.LBB21_107:                             # %for.end131
	beqz	$a4, .LBB21_31
# %bb.108:                              # %iter.check
	ld.d	$a1, $a3, %pc_lo12(actrow)
	ori	$a2, $zero, 4
	bgeu	$s0, $a2, .LBB21_112
# %bb.109:
	move	$a2, $zero
	b	.LBB21_162
.LBB21_110:
	move	$a0, $zero
.LBB21_111:                             # %if.end174
	addi.w	$a0, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB21_112:                             # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$s0, $a2, .LBB21_114
# %bb.113:
	move	$a2, $zero
	b	.LBB21_150
.LBB21_114:                             # %vector.ph140
	bstrpick.d	$a2, $s0, 30, 4
	slli.d	$a2, $a2, 4
	xvreplgr2vr.w	$xr0, $a0
	addi.d	$a3, $a1, 16
	move	$a4, $a2
	b	.LBB21_116
	.p2align	4, , 16
.LBB21_115:                             # %pred.store.continue177
                                        #   in Loop: Header=BB21_116 Depth=1
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 32
	beqz	$a4, .LBB21_148
.LBB21_116:                             # %vector.body145
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a3, -16
	vpickve2gr.h	$a5, $vr1, 0
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 0
	vpickve2gr.h	$a5, $vr1, 1
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 1
	vpickve2gr.h	$a5, $vr1, 2
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 2
	vpickve2gr.h	$a5, $vr1, 3
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 3
	vpickve2gr.h	$a5, $vr1, 4
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 4
	vpickve2gr.h	$a5, $vr1, 5
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 5
	vpickve2gr.h	$a5, $vr1, 6
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 6
	vpickve2gr.h	$a5, $vr1, 7
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 7
	xvseq.w	$xr2, $xr0, $xr2
	xvpickve2gr.w	$a5, $xr2, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_124
# %bb.117:                              # %pred.store.if
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -16
	xvpickve2gr.w	$a5, $xr2, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_125
.LBB21_118:                             # %pred.store.continue149
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_126
.LBB21_119:                             # %pred.store.if150
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -12
	xvpickve2gr.w	$a5, $xr2, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_127
.LBB21_120:                             # %pred.store.continue153
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_128
.LBB21_121:                             # %pred.store.if154
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -8
	xvpickve2gr.w	$a5, $xr2, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_129
.LBB21_122:                             # %pred.store.continue157
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_130
.LBB21_123:                             # %pred.store.if158
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -4
	xvpickve2gr.w	$a5, $xr2, 7
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_131
	b	.LBB21_132
	.p2align	4, , 16
.LBB21_124:                             # %pred.store.continue
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_118
.LBB21_125:                             # %pred.store.if148
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -14
	xvpickve2gr.w	$a5, $xr2, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_119
.LBB21_126:                             # %pred.store.continue151
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_120
.LBB21_127:                             # %pred.store.if152
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -10
	xvpickve2gr.w	$a5, $xr2, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_121
.LBB21_128:                             # %pred.store.continue155
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_122
.LBB21_129:                             # %pred.store.if156
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -6
	xvpickve2gr.w	$a5, $xr2, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_123
.LBB21_130:                             # %pred.store.continue159
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr2, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_132
.LBB21_131:                             # %pred.store.if160
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, -2
.LBB21_132:                             # %pred.store.continue161
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpermi.q	$xr1, $xr1, 1
	vpickve2gr.h	$a5, $vr1, 0
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 0
	vpickve2gr.h	$a5, $vr1, 1
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 1
	vpickve2gr.h	$a5, $vr1, 2
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 2
	vpickve2gr.h	$a5, $vr1, 3
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 3
	vpickve2gr.h	$a5, $vr1, 4
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 4
	vpickve2gr.h	$a5, $vr1, 5
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 5
	vpickve2gr.h	$a5, $vr1, 6
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 6
	vpickve2gr.h	$a5, $vr1, 7
	ext.w.h	$a5, $a5
	xvinsgr2vr.w	$xr2, $a5, 7
	xvseq.w	$xr1, $xr0, $xr2
	xvpickve2gr.w	$a5, $xr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_140
# %bb.133:                              # %pred.store.if162
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 0
	xvpickve2gr.w	$a5, $xr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_141
.LBB21_134:                             # %pred.store.continue165
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_142
.LBB21_135:                             # %pred.store.if166
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 4
	xvpickve2gr.w	$a5, $xr1, 3
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_143
.LBB21_136:                             # %pred.store.continue169
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 4
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_144
.LBB21_137:                             # %pred.store.if170
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 8
	xvpickve2gr.w	$a5, $xr1, 5
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_145
.LBB21_138:                             # %pred.store.continue173
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 6
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_146
.LBB21_139:                             # %pred.store.if174
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 12
	xvpickve2gr.w	$a5, $xr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_115
	b	.LBB21_147
	.p2align	4, , 16
.LBB21_140:                             # %pred.store.continue163
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_134
.LBB21_141:                             # %pred.store.if164
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 2
	xvpickve2gr.w	$a5, $xr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_135
.LBB21_142:                             # %pred.store.continue167
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_136
.LBB21_143:                             # %pred.store.if168
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 6
	xvpickve2gr.w	$a5, $xr1, 4
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_137
.LBB21_144:                             # %pred.store.continue171
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 5
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_138
.LBB21_145:                             # %pred.store.if172
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 10
	xvpickve2gr.w	$a5, $xr1, 6
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_139
.LBB21_146:                             # %pred.store.continue175
                                        #   in Loop: Header=BB21_116 Depth=1
	xvpickve2gr.w	$a5, $xr1, 7
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_115
.LBB21_147:                             # %pred.store.if176
                                        #   in Loop: Header=BB21_116 Depth=1
	st.h	$zero, $a3, 14
	b	.LBB21_115
.LBB21_148:                             # %middle.block179
	beq	$a2, $s0, .LBB21_161
# %bb.149:                              # %vec.epilog.iter.check
	andi	$a3, $s0, 12
	beqz	$a3, .LBB21_162
.LBB21_150:                             # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $s0, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a0
	alsl.d	$a3, $a4, $a1, 1
	sub.d	$a4, $a4, $a2
	b	.LBB21_152
	.p2align	4, , 16
.LBB21_151:                             # %pred.store.continue194
                                        #   in Loop: Header=BB21_152 Depth=1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 8
	beqz	$a4, .LBB21_160
.LBB21_152:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	vinsgr2vr.d	$vr1, $a5, 0
	vilvl.h	$vr1, $vr1, $vr1
	vslli.w	$vr1, $vr1, 16
	vsrai.w	$vr1, $vr1, 16
	vseq.w	$vr1, $vr0, $vr1
	vpickve2gr.w	$a5, $vr1, 0
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_156
# %bb.153:                              # %pred.store.if187
                                        #   in Loop: Header=BB21_152 Depth=1
	st.h	$zero, $a3, 0
	vpickve2gr.w	$a5, $vr1, 1
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_157
.LBB21_154:                             # %pred.store.continue190
                                        #   in Loop: Header=BB21_152 Depth=1
	vpickve2gr.w	$a5, $vr1, 2
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_158
.LBB21_155:                             # %pred.store.if191
                                        #   in Loop: Header=BB21_152 Depth=1
	st.h	$zero, $a3, 4
	vpickve2gr.w	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_151
	b	.LBB21_159
	.p2align	4, , 16
.LBB21_156:                             # %pred.store.continue188
                                        #   in Loop: Header=BB21_152 Depth=1
	vpickve2gr.w	$a5, $vr1, 1
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_154
.LBB21_157:                             # %pred.store.if189
                                        #   in Loop: Header=BB21_152 Depth=1
	st.h	$zero, $a3, 2
	vpickve2gr.w	$a5, $vr1, 2
	andi	$a5, $a5, 1
	bnez	$a5, .LBB21_155
.LBB21_158:                             # %pred.store.continue192
                                        #   in Loop: Header=BB21_152 Depth=1
	vpickve2gr.w	$a5, $vr1, 3
	andi	$a5, $a5, 1
	beqz	$a5, .LBB21_151
.LBB21_159:                             # %pred.store.if193
                                        #   in Loop: Header=BB21_152 Depth=1
	st.h	$zero, $a3, 6
	b	.LBB21_151
.LBB21_160:                             # %vec.epilog.middle.block
	bne	$a2, $s0, .LBB21_162
.LBB21_161:                             # %for.end150
	sub.d	$a0, $zero, $a0
	b	.LBB21_31
.LBB21_162:                             # %for.body138.preheader
	alsl.d	$a1, $a2, $a1, 1
	sub.d	$a2, $s0, $a2
	addi.w	$a3, $a0, 0
	b	.LBB21_164
	.p2align	4, , 16
.LBB21_163:                             # %for.inc148
                                        #   in Loop: Header=BB21_164 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 2
	beqz	$a2, .LBB21_161
.LBB21_164:                             # %for.body138
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	bne	$a3, $a4, .LBB21_163
# %bb.165:                              # %if.then144
                                        #   in Loop: Header=BB21_164 Depth=1
	st.h	$zero, $a1, 0
	b	.LBB21_163
.Lfunc_end21:
	.size	action_row, .Lfunc_end21-action_row
                                        # -- End function
	.globl	save_row                        # -- Begin function save_row
	.p2align	5
	.type	save_row,@function
save_row:                               # @save_row
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
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$s3, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $s3, 0
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB22_15
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a0
	pcalau12i	$s2, %pc_hi20(actrow)
	ld.d	$a0, $s2, %pc_lo12(actrow)
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB22_3
# %bb.2:
	move	$a2, $zero
	move	$s4, $zero
	b	.LBB22_6
.LBB22_3:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, 1
	move	$a4, $a2
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB22_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	ld.d	$a6, $a3, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vseqi.h	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr1
	vilvl.h	$vr4, $vr4, $vr4
	vand.v	$vr4, $vr4, $vr2
	vseqi.h	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vilvl.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr3, $vr3, $vr5
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB22_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr3, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	beq	$a2, $a1, .LBB22_8
.LBB22_6:                               # %for.body.preheader
	alsl.d	$a0, $a2, $a0, 1
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB22_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a0, 0
	sltu	$a2, $zero, $a2
	add.w	$s4, $s4, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB22_7
.LBB22_8:                               # %for.end
	beqz	$s4, .LBB22_15
# %bb.9:                                # %if.end7
	slli.w	$s1, $s4, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$s0, $a0
	slli.d	$s5, $fp, 3
	stx.d	$a0, $a1, $s5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(tos)
	ld.d	$a2, $a1, %pc_lo12(tos)
	ld.w	$a1, $s3, 0
	ori	$a4, $zero, 1
	stx.d	$a0, $a2, $s5
	move	$a3, $s0
	blt	$a1, $a4, .LBB22_14
# %bb.10:                               # %for.body21.lr.ph
	ld.d	$a2, $s2, %pc_lo12(actrow)
	move	$a4, $zero
	move	$a3, $s0
	b	.LBB22_12
	.p2align	4, , 16
.LBB22_11:                              # %for.inc33
                                        #   in Loop: Header=BB22_12 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	beq	$a1, $a4, .LBB22_14
.LBB22_12:                              # %for.body21
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	beqz	$a5, .LBB22_11
# %bb.13:                               # %if.then27
                                        #   in Loop: Header=BB22_12 Depth=1
	st.h	$a4, $a3, 0
	ld.h	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB22_11
.LBB22_14:                              # %for.end35
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $fp, 1
	stx.h	$s4, $a0, $a1
	ld.h	$a0, $a3, -2
	ld.h	$a2, $s0, 0
	pcalau12i	$a3, %pc_hi20(width)
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
.LBB22_15:                              # %cleanup
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
.Lfunc_end22:
	.size	save_row, .Lfunc_end22-save_row
                                        # -- End function
	.globl	default_goto                    # -- Begin function default_goto
	.p2align	5
	.type	default_goto,@function
default_goto:                           # @default_goto
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(goto_map)
	ld.d	$a1, $a1, %got_pc_lo12(goto_map)
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a0, $a1, 1
	slli.d	$a0, $a0, 1
	ldx.hu	$a1, $a1, $a0
	ld.hu	$a2, $a2, 2
	addi.w	$a0, $zero, -1
	beq	$a1, $a2, .LBB23_9
# %bb.1:                                # %for.cond.preheader
	pcalau12i	$a3, %got_pc_hi20(nstates)
	ld.d	$a3, $a3, %got_pc_lo12(nstates)
	ld.w	$fp, $a3, 0
	ext.w.h	$s1, $a1
	ext.w.h	$s2, $a2
	ori	$a1, $zero, 1
	pcalau12i	$s0, %pc_hi20(state_count)
	blt	$fp, $a1, .LBB23_3
# %bb.2:                                # %for.body.lr.ph
	ld.d	$a1, $s0, %pc_lo12(state_count)
	slli.d	$a2, $fp, 1
	bstrpick.d	$a2, $a2, 31, 1
	slli.d	$a2, $a2, 1
	move	$s3, $a0
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB23_3:                               # %for.cond9.preheader
	bge	$s1, $s2, .LBB23_6
# %bb.4:                                # %for.body12.lr.ph
	pcalau12i	$a1, %got_pc_hi20(to_state)
	ld.d	$a1, $a1, %got_pc_lo12(to_state)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $s0, %pc_lo12(state_count)
	alsl.d	$a2, $s1, $a2, 1
	sub.d	$a3, $s2, $s1
	.p2align	4, , 16
.LBB23_5:                               # %for.body12
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a2, 0
	slli.d	$a4, $a4, 1
	ldx.h	$a5, $a1, $a4
	addi.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB23_5
.LBB23_6:                               # %for.cond21.preheader
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB23_9
# %bb.7:                                # %for.body24.lr.ph
	ld.d	$a1, $s0, %pc_lo12(state_count)
	move	$a2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB23_8:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	slt	$a5, $a3, $a4
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a2, $a5
	or	$a0, $a5, $a0
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	addi.d	$a1, $a1, 2
	addi.d	$fp, $fp, -1
	addi.w	$a2, $a2, 1
	bnez	$fp, .LBB23_8
.LBB23_9:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end23:
	.size	default_goto, .Lfunc_end23-default_goto
                                        # -- End function
	.globl	save_column                     # -- Begin function save_column
	.p2align	5
	.type	save_column,@function
save_column:                            # @save_column
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
	pcalau12i	$a2, %got_pc_hi20(goto_map)
	ld.d	$a2, $a2, %got_pc_lo12(goto_map)
	ld.d	$a2, $a2, 0
	alsl.d	$a3, $a0, $a2, 1
	slli.d	$a4, $a0, 1
	ldx.h	$s2, $a2, $a4
	ld.h	$a2, $a3, 2
	bge	$s2, $a2, .LBB24_14
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a3, %got_pc_hi20(to_state)
	ld.d	$s3, $a3, %got_pc_lo12(to_state)
	ld.d	$a3, $s3, 0
	sub.d	$s1, $a2, $s2
	ori	$a4, $zero, 8
	bgeu	$s1, $a4, .LBB24_3
# %bb.2:
	move	$s4, $zero
	move	$a4, $s2
	b	.LBB24_6
.LBB24_3:                               # %vector.ph
	move	$a5, $s1
	bstrins.d	$a5, $zero, 2, 0
	add.d	$a4, $a5, $s2
	vreplgr2vr.w	$vr0, $a1
	alsl.d	$a6, $s2, $a3, 1
	vrepli.b	$vr1, 0
	addi.d	$a6, $a6, 8
	move	$a7, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB24_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr4, $t1, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vseq.w	$vr3, $vr0, $vr3
	vseq.w	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr1, $vr1, 1
	vadd.w	$vr2, $vr2, $vr4
	vaddi.wu	$vr2, $vr2, 1
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB24_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s4, $vr0, 0
	beq	$s1, $a5, .LBB24_8
.LBB24_6:                               # %for.body.preheader
	alsl.d	$a3, $a4, $a3, 1
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB24_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a3, 0
	xor	$a4, $a1, $a4
	sltu	$a4, $zero, $a4
	add.w	$s4, $s4, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 2
	bnez	$a2, .LBB24_7
.LBB24_8:                               # %for.end
	beqz	$s4, .LBB24_14
# %bb.9:                                # %for.body29.lr.ph
	pcalau12i	$a2, %got_pc_hi20(ntokens)
	ld.d	$a2, $a2, %got_pc_lo12(ntokens)
	pcalau12i	$a3, %got_pc_hi20(nstates)
	ld.d	$a3, $a3, %got_pc_lo12(nstates)
	ld.w	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	sub.d	$a0, $a0, $a2
	add.w	$s5, $a0, $a3
	slli.w	$s0, $s4, 1
	move	$a0, $s0
	move	$s6, $a1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(froms)
	ld.d	$a1, $a1, %pc_lo12(froms)
	move	$fp, $a0
	slli.d	$s7, $s5, 3
	stx.d	$a0, $a1, $s7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	move	$a1, $s6
	pcalau12i	$a2, %pc_hi20(tos)
	ld.d	$a2, $a2, %pc_lo12(tos)
	pcalau12i	$a3, %got_pc_hi20(from_state)
	ld.d	$a3, $a3, %got_pc_lo12(from_state)
	stx.d	$a0, $a2, $s7
	ld.d	$a2, $s3, 0
	ld.d	$a3, $a3, 0
	alsl.d	$a2, $s2, $a2, 1
	alsl.d	$a3, $s2, $a3, 1
	move	$a4, $fp
	b	.LBB24_11
	.p2align	4, , 16
.LBB24_10:                              # %for.inc42
                                        #   in Loop: Header=BB24_11 Depth=1
	addi.d	$a2, $a2, 2
	addi.d	$s1, $s1, -1
	addi.d	$a3, $a3, 2
	beqz	$s1, .LBB24_13
.LBB24_11:                              # %for.body29
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	beq	$a1, $a5, .LBB24_10
# %bb.12:                               # %if.then35
                                        #   in Loop: Header=BB24_11 Depth=1
	ld.h	$a5, $a3, 0
	st.h	$a5, $a4, 0
	ld.h	$a5, $a2, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a0, 2
	st.h	$a5, $a0, 0
	move	$a0, $a6
	b	.LBB24_10
.LBB24_13:                              # %for.end44
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $s5, 1
	stx.h	$s4, $a0, $a1
	ld.h	$a0, $a4, -2
	ld.h	$a2, $fp, 0
	pcalau12i	$a3, %pc_hi20(width)
	ld.d	$a3, $a3, %pc_lo12(width)
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	stx.h	$a0, $a3, $a1
.LBB24_14:                              # %cleanup
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
.Lfunc_end24:
	.size	save_column, .Lfunc_end24-save_column
                                        # -- End function
	.globl	matching_state                  # -- Begin function matching_state
	.p2align	5
	.type	matching_state,@function
matching_state:                         # @matching_state
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(order)
	ld.d	$a2, $a1, %pc_lo12(order)
	pcalau12i	$a1, %got_pc_hi20(nstates)
	ld.d	$a3, $a1, %got_pc_lo12(nstates)
	move	$a1, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$t2, $a2, $a0
	ld.w	$a3, $a3, 0
	addi.w	$a0, $zero, -1
	bge	$t2, $a3, .LBB25_16
# %bb.1:                                # %if.end
	pcalau12i	$a3, %pc_hi20(tally)
	ld.d	$a3, $a3, %pc_lo12(tally)
	slli.d	$a4, $t2, 1
	pcalau12i	$a5, %pc_hi20(width)
	ld.d	$a5, $a5, %pc_lo12(width)
	ldx.h	$a7, $a3, $a4
	ldx.hu	$a6, $a5, $a4
	ext.w.h	$a4, $a7
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB25_12
# %bb.2:                                # %for.cond.us.preheader
	blt	$a1, $a7, .LBB25_16
# %bb.3:                                # %for.body.us.lr.ph
	pcalau12i	$a7, %pc_hi20(tos)
	ld.d	$a7, $a7, %pc_lo12(tos)
	pcalau12i	$t0, %pc_hi20(froms)
	ld.d	$t0, $t0, %pc_lo12(froms)
	alsl.d	$t1, $t2, $a7, 3
	alsl.d	$t2, $t2, $t0, 3
	bstrpick.d	$t3, $a4, 15, 0
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_4:                               # %for.cond25.for.end_crit_edge.us
                                        #   in Loop: Header=BB25_5 Depth=1
	addi.w	$t4, $a1, 0
	blez	$t4, .LBB25_16
.LBB25_5:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_8 Depth 2
	addi.d	$a1, $a1, -1
	slli.d	$t4, $a1, 1
	ldx.h	$fp, $a2, $t4
	slli.d	$t4, $fp, 1
	ldx.hu	$t5, $a5, $t4
	bne	$t5, $a6, .LBB25_16
# %bb.6:                                # %lor.lhs.false.us
                                        #   in Loop: Header=BB25_5 Depth=1
	ldx.hu	$t4, $a3, $t4
	bne	$t4, $t3, .LBB25_16
# %bb.7:                                # %for.cond25.preheader.us
                                        #   in Loop: Header=BB25_5 Depth=1
	slli.d	$t4, $fp, 3
	ldx.d	$t4, $a7, $t4
	ld.d	$t6, $t1, 0
	move	$t7, $zero
	move	$t8, $zero
	bstrpick.d	$t5, $fp, 15, 0
	alsl.d	$fp, $fp, $t0, 3
	.p2align	4, , 16
.LBB25_8:                               # %for.body28.us
                                        #   Parent Loop BB25_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.hu	$s0, $t4, $t7
	ldx.hu	$s1, $t6, $t7
	bne	$s0, $s1, .LBB25_4
# %bb.9:                                # %lor.lhs.false41.us
                                        #   in Loop: Header=BB25_8 Depth=2
	ld.d	$s0, $fp, 0
	ld.d	$s1, $t2, 0
	ldx.hu	$s0, $s0, $t7
	ldx.hu	$s1, $s1, $t7
	bne	$s0, $s1, .LBB25_4
# %bb.10:                               # %for.inc.us
                                        #   in Loop: Header=BB25_8 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 2
	bltu	$t8, $a4, .LBB25_8
.LBB25_11:                              # %cleanup.loopexit.split.loop.exit23
	ext.w.h	$a0, $t5
	b	.LBB25_16
.LBB25_12:                              # %for.cond
	blt	$a1, $a7, .LBB25_16
# %bb.13:                               # %for.body
	alsl.d	$a1, $a1, $a2, 1
	ld.h	$a1, $a1, -2
	slli.d	$a2, $a1, 1
	ldx.hu	$a5, $a5, $a2
	bne	$a5, $a6, .LBB25_16
# %bb.14:                               # %lor.lhs.false
	ldx.hu	$a2, $a3, $a2
	bstrpick.d	$a3, $a4, 15, 0
	bne	$a2, $a3, .LBB25_16
# %bb.15:
	bstrpick.d	$t5, $a1, 15, 0
	b	.LBB25_11
.LBB25_16:                              # %cleanup
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end25:
	.size	matching_state, .Lfunc_end25-matching_state
                                        # -- End function
	.globl	pack_vector                     # -- Begin function pack_vector
	.p2align	5
	.type	pack_vector,@function
pack_vector:                            # @pack_vector
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(order)
	ld.d	$a1, $a1, %pc_lo12(order)
	move	$s0, $a0
	slli.d	$a0, $a0, 1
	ldx.h	$fp, $a1, $a0
	pcalau12i	$a0, %pc_hi20(tally)
	ld.d	$a0, $a0, %pc_lo12(tally)
	slli.d	$a1, $fp, 1
	ldx.h	$s4, $a0, $a1
	bnez	$s4, .LBB26_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(berror)
	jirl	$ra, $ra, 0
.LBB26_2:                               # %if.end
	pcalau12i	$a0, %pc_hi20(froms)
	ld.d	$a1, $a0, %pc_lo12(froms)
	slli.d	$a0, $fp, 3
	ldx.d	$s5, $a1, $a0
	pcalau12i	$a1, %pc_hi20(lowzero)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(lowzero)
	ld.h	$a2, $s5, 0
	sub.w	$fp, $a1, $a2
	lu12i.w	$a1, 7
	ori	$a2, $a1, 4094
	blt	$a2, $fp, .LBB26_25
# %bb.3:                                # %for.cond13.preheader.lr.ph
	pcalau12i	$a2, %pc_hi20(tos)
	ld.d	$a2, $a2, %pc_lo12(tos)
	ldx.d	$a0, $a2, $a0
	ori	$a2, $zero, 1
	blt	$s4, $a2, .LBB26_18
# %bb.4:                                # %for.cond13.preheader.us.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$s3, 8
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s1, $a0, %pc_lo12(.L.str.35)
	ori	$s2, $a1, 4095
	pcalau12i	$s8, %pc_hi20(table)
	pcalau12i	$a0, %pc_hi20(pos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB26_5:                               # %for.cond13.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
                                        #     Child Loop BB26_13 Depth 2
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB26_6:                               # %for.body16.us
                                        #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a1, $s5, 0
	add.w	$s7, $fp, $a1
	move	$s6, $a0
	blt	$s7, $s3, .LBB26_8
# %bb.7:                                # %if.then22.us
                                        #   in Loop: Header=BB26_6 Depth=2
	st.d	$zero, $sp, 0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(fatals)
	jirl	$ra, $ra, 0
.LBB26_8:                               # %if.end23.us
                                        #   in Loop: Header=BB26_6 Depth=2
	ld.d	$a0, $s8, %pc_lo12(table)
	slli.d	$a1, $s7, 1
	ldx.hu	$a1, $a0, $a1
	bnez	$a1, .LBB26_10
# %bb.9:                                # %if.end23.us
                                        #   in Loop: Header=BB26_6 Depth=2
	addi.d	$s5, $s5, 2
	addi.d	$a0, $s6, 1
	bltu	$s6, $s4, .LBB26_6
.LBB26_10:                              # %for.cond13.for.cond31.preheader_crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	sltui	$a0, $a1, 1
	bnez	$a1, .LBB26_17
# %bb.11:                               # %for.cond13.for.cond31.preheader_crit_edge.us
                                        #   in Loop: Header=BB26_5 Depth=1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB26_15
# %bb.12:                               # %for.body37.lr.ph.us
                                        #   in Loop: Header=BB26_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(pos)
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB26_13:                              # %for.body37.us
                                        #   Parent Loop BB26_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a1, 0
	xor	$a0, $fp, $a4
	sltu	$a0, $zero, $a0
	beq	$fp, $a4, .LBB26_15
# %bb.14:                               # %for.body37.us
                                        #   in Loop: Header=BB26_13 Depth=2
	move	$a3, $a2
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 1
	blt	$a3, $s0, .LBB26_13
.LBB26_15:                              # %for.end47.us
                                        #   in Loop: Header=BB26_5 Depth=1
	bnez	$a0, .LBB26_29
.LBB26_16:                              # %for.inc80.us
                                        #   in Loop: Header=BB26_5 Depth=1
	addi.w	$fp, $fp, 1
	bne	$fp, $s2, .LBB26_5
	b	.LBB26_25
	.p2align	4, , 16
.LBB26_17:                              #   in Loop: Header=BB26_5 Depth=1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB26_16
	b	.LBB26_29
.LBB26_18:                              # %for.cond13.preheader.lr.ph.split
	blt	$s0, $a2, .LBB26_27
# %bb.19:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(pos)
	ld.d	$a0, $a0, %pc_lo12(pos)
	ori	$a1, $a1, 4095
	.p2align	4, , 16
.LBB26_20:                              # %for.cond13.preheader.us44
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_21 Depth 2
	ori	$a3, $zero, 1
	move	$a2, $a0
	.p2align	4, , 16
.LBB26_21:                              # %for.body37.us51
                                        #   Parent Loop BB26_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a4, $a2, 0
	beq	$fp, $a4, .LBB26_23
# %bb.22:                               # %for.body37.us51
                                        #   in Loop: Header=BB26_21 Depth=2
	move	$a5, $a3
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 1
	blt	$a5, $s0, .LBB26_21
.LBB26_23:                              # %for.cond31.for.end47_crit_edge.us60
                                        #   in Loop: Header=BB26_20 Depth=1
	bne	$fp, $a4, .LBB26_28
# %bb.24:                               # %for.inc80.us48
                                        #   in Loop: Header=BB26_20 Depth=1
	addi.w	$fp, $fp, 1
	bne	$fp, $a1, .LBB26_20
.LBB26_25:                              # %for.end82
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(berror)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB26_26:                              # %cleanup
	move	$a0, $fp
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB26_27:                              # %for.cond50.preheader.thread
	pcalau12i	$a0, %pc_hi20(table)
	ld.d	$a0, $a0, %pc_lo12(table)
                                        # implicit-def: $r30
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB26_32
.LBB26_28:
                                        # implicit-def: $r30
.LBB26_29:                              # %for.cond50.preheader
	pcalau12i	$a0, %pc_hi20(table)
	ld.d	$a0, $a0, %pc_lo12(table)
	ori	$a1, $zero, 1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	blt	$s4, $a1, .LBB26_32
# %bb.30:                               # %for.body53.lr.ph
	pcalau12i	$a1, %pc_hi20(check)
	ld.d	$a1, $a1, %pc_lo12(check)
	.p2align	4, , 16
.LBB26_31:                              # %for.body53
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $s5, 0
	ld.h	$a3, $a5, 0
	add.w	$s7, $fp, $a2
	slli.d	$a2, $s7, 1
	stx.h	$a3, $a0, $a2
	ld.h	$a3, $s5, 0
	stx.h	$a3, $a1, $a2
	addi.d	$a5, $a5, 2
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 2
	bnez	$s4, .LBB26_31
.LBB26_32:                              # %while.cond.preheader
	ld.w	$a1, $a4, %pc_lo12(lowzero)
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	beqz	$a2, .LBB26_36
# %bb.33:                               # %while.body.preheader
	alsl.d	$a0, $a1, $a0, 1
	addi.d	$a0, $a0, 2
	.p2align	4, , 16
.LBB26_34:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB26_34
# %bb.35:                               # %while.cond.while.end_crit_edge
	st.w	$a1, $a4, %pc_lo12(lowzero)
.LBB26_36:                              # %while.end
	pcalau12i	$a0, %pc_hi20(high)
	ld.w	$a1, $a0, %pc_lo12(high)
	addi.w	$a2, $s7, 0
	bge	$a1, $a2, .LBB26_26
# %bb.37:                               # %if.then77
	st.w	$s7, $a0, %pc_lo12(high)
	b	.LBB26_26
.Lfunc_end26:
	.size	pack_vector, .Lfunc_end26-pack_vector
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n#include \"%s\"\nextern int yyerror;\nextern int yycost;\nextern char * yymsg;\nextern YYSTYPE yyval;\n\nyyguard(n, yyvsp, yylsp)\nregister int n;\nregister YYSTYPE *yyvsp;\nregister YYLTYPE *yylsp;\n{\n  yyerror = 0;\nyycost = 0;\n  yymsg = 0;\nswitch (n)\n    {"
	.size	.L.str, 248

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n#include \"%s\"\nextern YYSTYPE yyval;\nextern int yychar;yyaction(n, yyvsp, yylsp)\nregister int n;\nregister YYSTYPE *yyvsp;\nregister YYLTYPE *yylsp;\n{\n  switch (n)\n{"
	.size	.L.str.1, 164

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n  switch (yyn) {\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n    }\n}\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n}\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"#define YYDEBUG\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"#include \"%s\"\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"#include <stdio.h>\n\n"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"#ifndef __STDC__\n#define const\n#endif\n\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n#define YYTRANSLATE(x) ((unsigned)(x) <= %d ? yytranslate[x] : %d)\n"
	.size	.L.str.9, 69

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nstatic const char yytranslate[] = {     0"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nstatic const short yytranslate[] = {     0"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%6d"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\n};\n"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n#define YYTRANSLATE(x) (x)\n"
	.size	.L.str.14, 29

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\nstatic const short yyprhs[] = {     0"
	.size	.L.str.15, 39

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\n};\n\nstatic const short yyrhs[] = {%6d"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"     0"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\nstatic const short yystos[] = {     0"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nstatic const short yyrline[] = {     0"
	.size	.L.str.19, 40

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\n};\n\nstatic const char * const yytname[] = {     0"
	.size	.L.str.20, 51

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\\%c"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\\n"
	.size	.L.str.22, 3

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\\t"
	.size	.L.str.23, 3

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\\b"
	.size	.L.str.24, 3

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\\%03o"
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n};\n\nstatic const short yyr1[] = {     0"
	.size	.L.str.26, 41

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"\n};\n\nstatic const short yyr2[] = {     0"
	.size	.L.str.27, 41

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%6d\n};\n"
	.size	.L.str.28, 8

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\n\n#define\tYYFINAL\t\t%d\n"
	.size	.L.str.29, 23

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"#define\tYYFLAG\t\t%d\n"
	.size	.L.str.30, 20

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"#define\tYYNTBASE\t%d\n"
	.size	.L.str.31, 21

	.type	nvectors,@object                # @nvectors
	.local	nvectors
	.comm	nvectors,4,4
	.type	froms,@object                   # @froms
	.local	froms
	.comm	froms,8,8
	.type	tos,@object                     # @tos
	.local	tos
	.comm	tos,8,8
	.type	tally,@object                   # @tally
	.local	tally
	.comm	tally,8,8
	.type	width,@object                   # @width
	.local	width
	.comm	width,8,8
	.type	actrow,@object                  # @actrow
	.local	actrow
	.comm	actrow,8,8
	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"\nstatic const short yydefact[] = {%6d"
	.size	.L.str.32, 38

	.type	state_count,@object             # @state_count
	.local	state_count
	.comm	state_count,8,8
	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\nstatic const short yydefgoto[] = {%6d"
	.size	.L.str.33, 39

	.type	order,@object                   # @order
	.local	order
	.comm	order,8,8
	.type	nentries,@object                # @nentries
	.local	nentries
	.comm	nentries,4,4
	.type	base,@object                    # @base
	.local	base
	.comm	base,8,8
	.type	pos,@object                     # @pos
	.local	pos
	.comm	pos,8,8
	.type	table,@object                   # @table
	.local	table
	.comm	table,8,8
	.type	check,@object                   # @check
	.local	check
	.comm	check,8,8
	.type	lowzero,@object                 # @lowzero
	.local	lowzero
	.comm	lowzero,4,4
	.type	high,@object                    # @high
	.local	high
	.comm	high,4,4
	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"pack_vector"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"maximum table size (%d) exceeded"
	.size	.L.str.35, 33

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"\nstatic const short yypact[] = {%6d"
	.size	.L.str.36, 36

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n};\n\nstatic const short yypgoto[] = {%6d"
	.size	.L.str.37, 41

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"\n\n#define\tYYLAST\t\t%d\n\n"
	.size	.L.str.38, 23

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\nstatic const short yytable[] = {%6d"
	.size	.L.str.39, 37

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\nstatic const short yycheck[] = {%6d"
	.size	.L.str.40, 37

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"#define YYIMPURE 1\n\n"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"#define YYPURE 1\n\n"
	.size	.L.str.42, 19

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"#lin"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"#li"
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"#l"
	.size	.L.str.45, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"#line %d \"%s\"\n"
	.size	.L.str.47, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
