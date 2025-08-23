	.file	"gram.c"
	.text
	.globl	new_production                  # -- Begin function new_production
	.p2align	5
	.type	new_production,@function
new_production:                         # @new_production
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
	move	$fp, $a1
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.wu	$s3, $s1, 8
	ld.d	$s4, $s1, 16
	addi.w	$s5, $s3, 0
	beqz	$s5, .LBB0_5
# %bb.1:                                # %for.body.lr.ph.i
	addi.w	$s2, $a0, 0
	move	$s6, $s4
	move	$s7, $s3
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc.i
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	beqz	$s7, .LBB0_5
.LBB0_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s6, 0
	ld.w	$a0, $s0, 8
	bne	$a0, $s2, .LBB0_2
# %bb.4:                                # %cleanup.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
	b	.LBB0_14
.LBB0_5:                                # %if.end
	ori	$a0, $zero, 1
	ori	$a1, $zero, 232
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s4, .LBB0_9
# %bb.6:                                # %if.else
	addi.d	$a1, $s1, 24
	addi.d	$a0, $s1, 8
	beq	$s4, $a1, .LBB0_10
# %bb.7:                                # %if.else29
	andi	$a1, $s3, 7
	beqz	$a1, .LBB0_12
# %bb.8:                                # %if.then33
	addi.d	$a1, $s3, 1
	st.w	$a1, $a0, 0
	slli.d	$a0, $s3, 3
	stx.d	$s0, $s4, $a0
	b	.LBB0_13
.LBB0_9:                                # %if.then4
	addi.d	$a0, $s1, 24
	st.d	$a0, $s1, 16
	addi.d	$a1, $s3, 1
	st.w	$a1, $s1, 8
	slli.d	$a1, $s3, 3
	stx.d	$s0, $a0, $a1
	b	.LBB0_13
.LBB0_10:                               # %if.then15
	ori	$a1, $zero, 2
	bltu	$a1, $s3, .LBB0_12
# %bb.11:                               # %if.then20
	addi.d	$a1, $s3, 1
	st.w	$a1, $a0, 0
	slli.d	$a0, $s5, 3
	stx.d	$s0, $s4, $a0
	b	.LBB0_13
.LBB0_12:                               # %if.end43
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %do.end
	st.d	$fp, $s0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 8
.LBB0_14:                               # %cleanup
	move	$a0, $s0
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
.Lfunc_end0:
	.size	new_production, .Lfunc_end0-new_production
                                        # -- End function
	.globl	lookup_production               # -- Begin function lookup_production
	.p2align	5
	.type	lookup_production,@function
lookup_production:                      # @lookup_production
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.wu	$s2, $a0, 8
	beqz	$s2, .LBB1_5
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a2
	move	$s0, $a1
	ld.d	$s3, $a0, 16
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB1_5
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s3, 0
	ld.w	$a0, $s1, 8
	bne	$a0, $fp, .LBB1_2
# %bb.4:                                # %cleanup
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
	b	.LBB1_6
.LBB1_5:
	move	$s1, $zero
.LBB1_6:                                # %cleanup4
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	lookup_production, .Lfunc_end1-lookup_production
                                        # -- End function
	.globl	new_rule                        # -- Begin function new_rule
	.p2align	5
	.type	new_rule,@function
new_rule:                               # @new_rule
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ld.w	$a1, $s0, 576
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 0
	st.d	$s1, $a0, 8
	st.w	$a1, $s1, 152
	move	$a0, $s1
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	new_rule, .Lfunc_end2-new_rule
                                        # -- End function
	.globl	new_elem_nterm                  # -- Begin function new_elem_nterm
	.p2align	5
	.type	new_elem_nterm,@function
new_elem_nterm:                         # @new_elem_nterm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 16
	st.d	$fp, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	new_elem_nterm, .Lfunc_end3-new_elem_nterm
                                        # -- End function
	.globl	escape_string_for_regex         # -- Begin function escape_string_for_regex
	.p2align	5
	.type	escape_string_for_regex,@function
escape_string_for_regex:                # @escape_string_for_regex
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 94
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ori	$a3, $zero, 92
	move	$a4, $a0
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_1:                                # %sw.bb
                                        #   in Loop: Header=BB4_3 Depth=1
	st.b	$a3, $a4, 0
	ld.bu	$a5, $fp, 0
	addi.d	$a4, $a4, 1
.LBB4_2:                                # %sw.default
                                        #   in Loop: Header=BB4_3 Depth=1
	st.b	$a5, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$fp, $fp, 1
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $fp, 0
	bltu	$a1, $a5, .LBB4_2
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a6, $a2, $a6
	jr	$a6
.LBB4_5:                                # %for.end
	st.b	$zero, $a4, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	escape_string_for_regex, .Lfunc_end4-escape_string_for_regex
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_5-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_2-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
	.word	.LBB4_1-.LJTI4_0
                                        # -- End function
	.text
	.globl	new_string                      # -- Begin function new_string
	.p2align	5
	.type	new_string,@function
new_string:                             # @new_string
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
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	pcaddu18i	$ra, %call36(new_term_string)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 0
	ld.d	$a2, $a0, 16
	addi.d	$a1, $a1, -34
	sltui	$a1, $a1, 1
	st.w	$a1, $a2, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 16
	ld.d	$s3, $s2, 24
	ori	$s4, $zero, 92
	ori	$s5, $zero, 86
	pcalau12i	$a0, %pc_hi20(.LJTI5_0)
	addi.d	$s6, $a0, %pc_lo12(.LJTI5_0)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s0, $zero, 53
	lu12i.w	$fp, 1
	move	$s1, $s3
	move	$s8, $fp
	b	.LBB5_4
.LBB5_1:                                #   in Loop: Header=BB5_4 Depth=1
	move	$s7, $s1
	ori	$s0, $zero, 53
	move	$fp, $s8
	.p2align	4, , 16
.LBB5_2:                                # %if.end177.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$s3, $s3, 1
.LBB5_3:                                # %for.inc.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$s1, $s7, 1
.LBB5_4:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s1, 0
	beq	$a0, $s4, .LBB5_7
# %bb.5:                                # %for.cond.i
                                        #   in Loop: Header=BB5_4 Depth=1
	beqz	$a0, .LBB5_39
# %bb.6:                                # %if.else176.i
                                        #   in Loop: Header=BB5_4 Depth=1
	st.b	$a0, $s3, 0
	move	$s7, $s1
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_7:                                # %if.then.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a0, $s1, 1
	addi.d	$a1, $a0, -34
	ori	$a0, $zero, 92
	bltu	$s5, $a1, .LBB5_15
# %bb.8:                                # %if.then.i
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s6, $a1
	add.d	$a1, $s6, $a1
	addi.d	$s7, $s1, 1
	jr	$a1
.LBB5_9:                                # %sw.bb108.i
                                        #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 2
	andi	$a2, $a1, 254
	ori	$fp, $zero, 1
	ori	$a3, $zero, 56
	beq	$a2, $a3, .LBB5_12
# %bb.10:                               # %sw.bb108.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.h	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB5_12
# %bb.11:                               # %if.then128.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a1, $s1, 3
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.h	$a0, $a0, $a2
	andi	$a0, $a0, 2048
	sltui	$a0, $a0, 1
	andi	$a1, $a1, 254
	addi.d	$a1, $a1, -56
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	xori	$fp, $a0, 3
.LBB5_12:                               # %Lncont.thread.i
                                        #   in Loop: Header=BB5_4 Depth=1
	add.d	$s1, $s1, $fp
	ori	$a2, $zero, 8
.LBB5_13:                               # %if.then156.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ldx.b	$s0, $s7, $fp
	stx.b	$zero, $s7, $fp
	move	$a0, $s7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.b	$a0, $s3, 0
	stx.b	$s0, $s7, $fp
	ld.b	$a0, $s1, 0
	bgtz	$a0, .LBB5_1
# %bb.14:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a1, $s2, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ori	$s0, $zero, 53
	move	$fp, $s8
.LBB5_15:                               # %sw.default.i
                                        #   in Loop: Header=BB5_4 Depth=1
	st.b	$a0, $s3, 0
	ld.b	$a0, $s1, 1
	st.b	$a0, $s3, 1
	addi.d	$s3, $s3, 1
	addi.d	$s7, $s1, 1
	b	.LBB5_2
.LBB5_16:                               # %sw.bb9.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 9
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_17:                               # %sw.bb.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 8
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_18:                               # %sw.bb11.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 11
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_19:                               # %sw.bb7.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 13
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_20:                               # %sw.bb5.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 10
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_21:                               # %sw.bb16.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a1, $s2, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB5_15
# %bb.22:                               # %if.then19.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 34
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_23:                               # %sw.bb21.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a1, $s2, 0
	bnez	$a1, .LBB5_15
# %bb.24:                               # %if.then25.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 39
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_25:                               # %sw.bb28.i
                                        #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $fp
	beqz	$a1, .LBB5_3
# %bb.26:                               # %if.then34.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.b	$a1, $s1, 3
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	addi.d	$s7, $s1, 2
	and	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 2
	sub.d	$fp, $a1, $a0
	ori	$a2, $zero, 16
	b	.LBB5_38
.LBB5_27:                               # %sw.bb13.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 7
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_28:                               # %sw.bb47.i
                                        #   in Loop: Header=BB5_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 2
	ld.d	$a3, $a0, 0
	slli.d	$a0, $a1, 1
	ldx.hu	$a0, $a3, $a0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB5_3
# %bb.29:                               # %if.then56.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.b	$a0, $s1, 3
	slli.d	$a2, $a0, 1
	ldx.hu	$a2, $a3, $a2
	addi.d	$s7, $s1, 2
	andi	$a4, $a2, 2048
	ori	$a2, $zero, 10
	ori	$fp, $zero, 1
	beqz	$a4, .LBB5_38
# %bb.30:                               # %if.then67.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.b	$a4, $s1, 4
	slli.d	$a5, $a4, 1
	ldx.hu	$a3, $a3, $a5
	andi	$a3, $a3, 2048
	ori	$fp, $zero, 2
	beqz	$a3, .LBB5_38
# %bb.31:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a3, $zero, 50
	bge	$a1, $a3, .LBB5_34
.LBB5_32:                               # %if.then100.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$fp, $zero, 3
	b	.LBB5_38
.LBB5_33:                               # %sw.bb3.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a0, $zero, 12
	st.b	$a0, $s3, 0
	b	.LBB5_2
.LBB5_34:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ori	$a3, $zero, 50
	bne	$a1, $a3, .LBB5_38
# %bb.35:                               # %land.lhs.true85.i
                                        #   in Loop: Header=BB5_4 Depth=1
	blt	$a0, $s0, .LBB5_32
# %bb.36:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB5_4 Depth=1
	bne	$a0, $s0, .LBB5_38
# %bb.37:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB5_4 Depth=1
	bge	$s0, $a4, .LBB5_32
.LBB5_38:                               # %Lncont.thread106.i
                                        #   in Loop: Header=BB5_4 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$s1, $a0, 1
	b	.LBB5_13
.LBB5_39:                               # %for.end.i
	st.b	$zero, $s3, 0
	ld.d	$s0, $s2, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	st.w	$a0, $s2, 32
	bnez	$a1, .LBB5_41
# %bb.40:                               # %if.then185.i
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %unescape_term_string.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
.LBB5_42:                               # %sw.bb15.i
	st.b	$zero, $s3, 0
	b	.LBB5_41
.Lfunc_end5:
	.size	new_string, .Lfunc_end5-new_string
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_21-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_9-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_27-.LJTI5_0
	.word	.LBB5_17-.LJTI5_0
	.word	.LBB5_42-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_33-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_20-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_19-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_16-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_25-.LJTI5_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function new_term_string
	.type	new_term_string,@function
new_term_string:                        # @new_term_string
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	sub.d	$s2, $s2, $s3
	addi.d	$a0, $s2, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s0, 24
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 56
	stx.b	$zero, $s4, $s2
	st.w	$s2, $s0, 32
	addi.d	$a3, $s1, 64
	beqz	$a1, .LBB6_4
# %bb.1:                                # %if.else
	addi.d	$a0, $s1, 48
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB6_5
# %bb.2:                                # %if.else38
	andi	$a3, $a2, 7
	beqz	$a3, .LBB6_7
# %bb.3:                                # %if.then42
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s0, $a1, $a0
	b	.LBB6_8
.LBB6_4:                                # %if.then
	ld.wu	$a0, $s1, 48
	st.d	$a3, $s1, 56
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 48
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a3, $a0
	b	.LBB6_8
.LBB6_5:                                # %if.then25
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB6_7
# %bb.6:                                # %if.then30
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s0, $a1, $a0
	b	.LBB6_8
.LBB6_7:                                # %if.end52
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %do.end
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 40
	st.w	$s1, $a0, 0
	st.d	$s0, $a0, 16
	st.d	$fp, $a0, 8
	addi.d	$a4, $fp, 48
	beqz	$a2, .LBB6_12
# %bb.9:                                # %if.else.i
	addi.d	$a1, $fp, 32
	ld.w	$a3, $a1, 0
	beq	$a2, $a4, .LBB6_13
# %bb.10:                               # %if.else24.i
	andi	$a4, $a3, 7
	beqz	$a4, .LBB6_15
# %bb.11:                               # %if.then28.i
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a1, 0
	slli.d	$a1, $a4, 3
	stx.d	$a0, $a2, $a1
	b	.LBB6_16
.LBB6_12:                               # %if.then.i
	ld.wu	$a1, $fp, 32
	st.d	$a4, $fp, 40
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 32
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a4, $a1
	b	.LBB6_16
.LBB6_13:                               # %if.then12.i
	ori	$a4, $zero, 2
	bltu	$a4, $a3, .LBB6_15
# %bb.14:                               # %if.then16.i
	addi.d	$a4, $a3, 1
	st.w	$a4, $a1, 0
	slli.d	$a1, $a3, 3
	stx.d	$a0, $a2, $a1
	b	.LBB6_16
.LBB6_15:                               # %if.end38.i
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_16:                               # %new_elem_term.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	new_term_string, .Lfunc_end6-new_term_string
                                        # -- End function
	.p2align	5
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 24
	st.d	$s0, $fp, 8
	beqz	$s0, .LBB7_9
# %bb.1:                                # %do.body
	ld.d	$a1, $s0, 40
	addi.d	$a3, $s0, 48
	beqz	$a1, .LBB7_5
# %bb.2:                                # %if.else
	addi.d	$a0, $s0, 32
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB7_6
# %bb.3:                                # %if.else33
	andi	$a3, $a2, 7
	beqz	$a3, .LBB7_8
# %bb.4:                                # %if.then37
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$fp, $a1, $a0
	b	.LBB7_9
.LBB7_5:                                # %if.then8
	ld.wu	$a0, $s0, 32
	st.d	$a3, $s0, 40
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 32
	slli.d	$a0, $a0, 3
	stx.d	$fp, $a3, $a0
	b	.LBB7_9
.LBB7_6:                                # %if.then20
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB7_8
# %bb.7:                                # %if.then25
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$fp, $a1, $a0
	b	.LBB7_9
.LBB7_8:                                # %if.end47
	move	$a1, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %if.end49
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
                                        # -- End function
	.globl	new_token                       # -- Begin function new_token
	.p2align	5
	.type	new_token,@function
new_token:                              # @new_token
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	sub.d	$s1, $s1, $s2
	addi.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $fp, 24
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 56
	stx.b	$zero, $s3, $s1
	st.w	$s1, $fp, 32
	addi.d	$a3, $s0, 64
	beqz	$a1, .LBB8_4
# %bb.1:                                # %if.else
	addi.d	$a0, $s0, 48
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB8_5
# %bb.2:                                # %if.else38
	andi	$a3, $a2, 7
	beqz	$a3, .LBB8_7
# %bb.3:                                # %if.then42
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$fp, $a1, $a0
	b	.LBB8_8
.LBB8_4:                                # %if.then
	ld.wu	$a0, $s0, 48
	st.d	$a3, $s0, 56
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 48
	slli.d	$a0, $a0, 3
	stx.d	$fp, $a3, $a0
	b	.LBB8_8
.LBB8_5:                                # %if.then25
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB8_7
# %bb.6:                                # %if.then30
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$fp, $a1, $a0
	b	.LBB8_8
.LBB8_7:                                # %if.end52
	move	$a1, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB8_8:                                # %do.end
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	new_token, .Lfunc_end8-new_token
                                        # -- End function
	.globl	new_code                        # -- Begin function new_code
	.p2align	5
	.type	new_code,@function
new_code:                               # @new_code
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(new_term_string)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 16
	ori	$a2, $zero, 2
	st.w	$a2, $a1, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	new_code, .Lfunc_end9-new_code
                                        # -- End function
	.globl	dup_elem                        # -- Begin function dup_elem
	.p2align	5
	.type	dup_elem,@function
dup_elem:                               # @dup_elem
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	vld	$vr0, $s0, 16
	st.d	$a1, $a0, 0
	vst	$vr0, $a0, 16
	st.d	$fp, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	dup_elem, .Lfunc_end10-dup_elem
                                        # -- End function
	.globl	add_global_code                 # -- Begin function add_global_code
	.p2align	5
	.type	add_global_code,@function
add_global_code:                        # @add_global_code
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 144
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	beqz	$a0, .LBB11_3
# %bb.1:                                # %if.else
	ld.w	$a1, $fp, 152
	addi.d	$a2, $a1, 1
	andi	$a2, $a2, 4
	bnez	$a2, .LBB11_5
# %bb.2:                                # %if.then3
	slli.d	$a1, $a1, 4
	addi.d	$a1, $a1, 64
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	b	.LBB11_4
.LBB11_3:                               # %if.then
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %if.end9.sink.split
	st.d	$a0, $fp, 144
.LBB11_5:                               # %if.end9
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 144
	ld.w	$a2, $fp, 152
	alsl.d	$a3, $a2, $a1, 4
	slli.d	$a4, $a2, 4
	stx.d	$a0, $a1, $a4
	st.w	$s0, $a3, 8
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 152
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	add_global_code, .Lfunc_end11-add_global_code
                                        # -- End function
	.globl	new_declaration                 # -- Begin function new_declaration
	.p2align	5
	.type	new_declaration,@function
new_declaration:                        # @new_declaration
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.wu	$a2, $fp, 160
	ld.d	$a3, $fp, 168
	st.d	$s1, $a0, 0
	st.w	$s0, $a0, 8
	st.w	$a2, $a0, 12
	addi.d	$a4, $fp, 176
	beqz	$a3, .LBB12_4
# %bb.1:                                # %if.else
	addi.d	$a0, $fp, 160
	beq	$a3, $a4, .LBB12_5
# %bb.2:                                # %if.else26
	andi	$a4, $a2, 7
	beqz	$a4, .LBB12_9
# %bb.3:                                # %if.then30
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a2, 3
	b	.LBB12_7
.LBB12_4:                               # %if.then
	st.d	$a4, $fp, 168
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 160
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a4, $a0
	b	.LBB12_8
.LBB12_5:                               # %if.then14
	ori	$a4, $zero, 2
	bltu	$a4, $a2, .LBB12_9
# %bb.6:                                # %if.then18
	addi.w	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a4, 3
.LBB12_7:                               # %do.end
	stx.d	$a1, $a3, $a0
.LBB12_8:                               # %do.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_9:                               # %if.end40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.Lfunc_end12:
	.size	new_declaration, .Lfunc_end12-new_declaration
                                        # -- End function
	.globl	add_declaration                 # -- Begin function add_declaration
	.p2align	5
	.type	add_declaration,@function
add_declaration:                        # @add_declaration
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	beq	$a1, $a2, .LBB13_4
# %bb.1:                                # %if.end
	ori	$a0, $zero, 3
	beq	$s0, $a0, .LBB13_10
.LBB13_2:                               # %if.end
	ori	$a0, $zero, 6
	bne	$s0, $a0, .LBB13_11
# %bb.3:                                # %sw.bb7
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 240
	b	.LBB13_22
.LBB13_4:                               # %if.then
	ori	$a0, $zero, 7
	bltu	$a0, $s0, .LBB13_9
# %bb.5:                                # %if.then
	slli.d	$a0, $s0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI13_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI13_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB13_6:                               # %sw.bb5
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 264
	b	.LBB13_22
.LBB13_7:                               # %sw.bb3
	st.w	$zero, $fp, 268
	b	.LBB13_22
.LBB13_8:                               # %sw.bb6
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 272
	b	.LBB13_22
.LBB13_9:                               # %sw.default
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $a4
	move	$s3, $a4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB13_2
.LBB13_10:                              # %sw.bb8
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $a4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB13_11:                              # %sw.default9
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 2
	st.w	$a0, $s3, 0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s3, 24
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.wu	$a2, $fp, 160
	ld.d	$a3, $fp, 168
	st.d	$s3, $a0, 0
	st.w	$s0, $a0, 8
	st.w	$a2, $a0, 12
	addi.d	$a4, $fp, 176
	beqz	$a3, .LBB13_15
# %bb.12:                               # %if.else.i
	addi.d	$a0, $fp, 160
	beq	$a3, $a4, .LBB13_16
# %bb.13:                               # %if.else26.i
	andi	$a4, $a2, 7
	beqz	$a4, .LBB13_18
# %bb.14:                               # %if.then30.i
	addi.d	$a4, $a2, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	b	.LBB13_22
.LBB13_15:                              # %if.then.i
	st.d	$a4, $fp, 168
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 160
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a4, $a0
	b	.LBB13_22
.LBB13_16:                              # %if.then14.i
	ori	$a4, $zero, 2
	bltu	$a4, $a2, .LBB13_18
# %bb.17:                               # %if.then18.i
	addi.w	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$a1, $a3, $a0
	b	.LBB13_22
.LBB13_18:                              # %if.end40.i
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.LBB13_19:                              # %sw.bb2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 268
	b	.LBB13_22
.LBB13_20:                              # %sw.bb
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 248
	b	.LBB13_22
.LBB13_21:                              # %sw.bb1
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 260
.LBB13_22:                              # %sw.epilog11
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	add_declaration, .Lfunc_end13-add_declaration
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_6-.LJTI13_0
	.word	.LBB13_19-.LJTI13_0
	.word	.LBB13_7-.LJTI13_0
	.word	.LBB13_20-.LJTI13_0
	.word	.LBB13_21-.LJTI13_0
	.word	.LBB13_9-.LJTI13_0
	.word	.LBB13_9-.LJTI13_0
	.word	.LBB13_8-.LJTI13_0
                                        # -- End function
	.text
	.globl	find_pass                       # -- Begin function find_pass
	.p2align	5
	.type	find_pass,@function
find_pass:                              # @find_pass
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a1
	ld.bu	$s3, $a1, 0
	move	$s0, $a2
	move	$s1, $a0
	beqz	$s3, .LBB14_4
# %bb.1:                                # %land.rhs.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	.p2align	4, , 16
.LBB14_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a2, $s3
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	and	$a2, $a2, $a1
	beqz	$a2, .LBB14_6
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	ld.bu	$s3, $s2, 1
	addi.d	$fp, $s2, 1
	move	$s2, $fp
	bnez	$s3, .LBB14_2
	b	.LBB14_5
.LBB14_4:
	move	$fp, $s2
.LBB14_5:                               # %while.end
	ld.wu	$s2, $s1, 200
	bnez	$s2, .LBB14_7
	b	.LBB14_11
.LBB14_6:
	move	$fp, $s2
	ld.wu	$s2, $s1, 200
	beqz	$s2, .LBB14_11
.LBB14_7:                               # %for.body.lr.ph
	ld.d	$s3, $s1, 208
	sub.w	$s0, $s0, $fp
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_8:                               # %for.inc
                                        #   in Loop: Header=BB14_9 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB14_11
.LBB14_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s3, 0
	ld.w	$a0, $s1, 8
	bne	$a0, $s0, .LBB14_8
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB14_9 Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_8
	b	.LBB14_12
.LBB14_11:
	move	$s1, $zero
.LBB14_12:                              # %cleanup
	move	$a0, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end14:
	.size	find_pass, .Lfunc_end14-find_pass
                                        # -- End function
	.globl	add_pass                        # -- Begin function add_pass
	.p2align	5
	.type	add_pass,@function
add_pass:                               # @add_pass
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
	move	$s0, $a1
	ld.bu	$s5, $a1, 0
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a0
	move	$s4, $a1
	beqz	$s5, .LBB15_4
# %bb.1:                                # %land.rhs.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	move	$a2, $s0
	.p2align	4, , 16
.LBB15_2:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $s5
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB15_5
# %bb.3:                                # %while.body.i
                                        #   in Loop: Header=BB15_2 Depth=1
	ld.bu	$s5, $a2, 1
	addi.d	$s4, $a2, 1
	move	$a2, $s4
	bnez	$s5, .LBB15_2
.LBB15_4:                               # %while.end.i
	ld.wu	$s6, $fp, 200
	bnez	$s6, .LBB15_6
	b	.LBB15_11
.LBB15_5:
	move	$s4, $a2
	ld.wu	$s6, $fp, 200
	beqz	$s6, .LBB15_11
.LBB15_6:                               # %for.body.lr.ph.i
	ld.d	$s7, $fp, 208
	sub.w	$s5, $s2, $s4
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %for.inc.i
                                        #   in Loop: Header=BB15_8 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	beqz	$s6, .LBB15_11
.LBB15_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.w	$a1, $a0, 8
	bne	$a1, $s5, .LBB15_7
# %bb.9:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB15_8 Depth=1
	ld.d	$a0, $a0, 0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_7
# %bb.10:                               # %if.then
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	move	$a2, $s3
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
	pcaddu18i	$t8, %call36(d_fail)
	jr	$t8
.LBB15_11:                              # %if.else
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	sub.d	$a0, $s2, $s0
	ld.w	$a2, $fp, 584
	st.w	$a0, $s3, 8
	st.w	$s1, $s3, 12
	ld.d	$a1, $fp, 208
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 584
	st.w	$a2, $s3, 16
	addi.d	$a3, $fp, 216
	beqz	$a1, .LBB15_15
# %bb.12:                               # %if.else12
	addi.d	$a0, $fp, 200
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB15_16
# %bb.13:                               # %if.else32
	andi	$a3, $a2, 7
	beqz	$a3, .LBB15_20
# %bb.14:                               # %if.then36
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	b	.LBB15_18
.LBB15_15:                              # %if.then6
	ld.wu	$a0, $fp, 200
	st.d	$a3, $fp, 208
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 200
	slli.d	$a0, $a0, 3
	stx.d	$s3, $a3, $a0
	b	.LBB15_19
.LBB15_16:                              # %if.then19
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB15_20
# %bb.17:                               # %if.then24
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
.LBB15_18:                              # %if.end48
	stx.d	$s3, $a1, $a0
.LBB15_19:                              # %if.end48
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
.LBB15_20:                              # %if.end46
	move	$a1, $s3
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
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.Lfunc_end15:
	.size	add_pass, .Lfunc_end15-add_pass
                                        # -- End function
	.globl	add_pass_code                   # -- Begin function add_pass_code
	.p2align	5
	.type	add_pass_code,@function
add_pass_code:                          # @add_pass_code
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
	move	$s4, $a2
	ld.bu	$fp, $a2, 0
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a6
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a4
	move	$s5, $a3
	move	$s0, $a1
	move	$s7, $a0
	move	$s6, $a2
	beqz	$fp, .LBB16_4
# %bb.1:                                # %land.rhs.lr.ph.i
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 2
	move	$a2, $s4
	.p2align	4, , 16
.LBB16_2:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a3, $fp
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a1
	beqz	$a3, .LBB16_5
# %bb.3:                                # %while.body.i
                                        #   in Loop: Header=BB16_2 Depth=1
	ld.bu	$fp, $a2, 1
	addi.d	$s6, $a2, 1
	move	$a2, $s6
	bnez	$fp, .LBB16_2
.LBB16_4:                               # %while.end.i
	ld.wu	$fp, $s7, 200
	bnez	$fp, .LBB16_6
	b	.LBB16_11
.LBB16_5:
	move	$s6, $a2
	ld.wu	$fp, $s7, 200
	beqz	$fp, .LBB16_11
.LBB16_6:                               # %for.body.lr.ph.i
	ld.d	$s1, $s7, 208
	sub.w	$s7, $s5, $s6
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_7:                               # %for.inc.i
                                        #   in Loop: Header=BB16_8 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	beqz	$fp, .LBB16_11
.LBB16_8:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s1, 0
	ld.w	$a0, $s8, 8
	bne	$a0, $s7, .LBB16_7
# %bb.9:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB16_8 Depth=1
	ld.d	$a0, $s8, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_7
# %bb.10:                               # %if.end
	ld.w	$a0, $s0, 112
	ld.w	$s4, $s8, 16
	bltu	$s4, $a0, .LBB16_12
	b	.LBB16_13
.LBB16_11:                              # %if.then
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	ld.w	$a0, $s0, 112
	ld.w	$s4, $s8, 16
	bgeu	$s4, $a0, .LBB16_13
.LBB16_12:                              # %while.end
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 120
	bstrpick.d	$a2, $s4, 31, 0
	slli.d	$a2, $a2, 3
	stx.d	$a0, $a1, $a2
	move	$a0, $s2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s8, 16
	ld.d	$a2, $s0, 120
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 8
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
.LBB16_13:                              # %do.body.lr.ph
	addi.d	$s3, $s0, 112
	addi.d	$s5, $s0, 128
	ori	$s6, $zero, 2
	b	.LBB16_16
	.p2align	4, , 16
.LBB16_14:                              # %if.then4
                                        #   in Loop: Header=BB16_16 Depth=1
	st.d	$s5, $s0, 120
	bstrpick.d	$a1, $a0, 31, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 112
	slli.d	$a1, $a1, 3
	stx.d	$zero, $s5, $a1
.LBB16_15:                              # %do.end
                                        #   in Loop: Header=BB16_16 Depth=1
	bltu	$s4, $a0, .LBB16_12
.LBB16_16:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 120
	beqz	$a1, .LBB16_14
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB16_16 Depth=1
	beq	$a1, $s5, .LBB16_20
# %bb.18:                               # %if.else29
                                        #   in Loop: Header=BB16_16 Depth=1
	andi	$a2, $a0, 7
	beqz	$a2, .LBB16_22
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB16_16 Depth=1
	bstrpick.d	$a2, $a0, 31, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s3, 0
	slli.d	$a2, $a2, 3
	stx.d	$zero, $a1, $a2
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_20:                              # %if.then16
                                        #   in Loop: Header=BB16_16 Depth=1
	bltu	$s6, $a0, .LBB16_22
# %bb.21:                               # %if.then20
                                        #   in Loop: Header=BB16_16 Depth=1
	slli.d	$a2, $a0, 3
	addi.w	$a0, $a0, 1
	st.w	$a0, $s3, 0
	stx.d	$zero, $a1, $a2
	b	.LBB16_15
	.p2align	4, , 16
.LBB16_22:                              # %if.end43
                                        #   in Loop: Header=BB16_16 Depth=1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$s4, $s8, 16
	b	.LBB16_15
.Lfunc_end16:
	.size	add_pass_code, .Lfunc_end16-add_pass_code
                                        # -- End function
	.globl	new_internal_production         # -- Begin function new_internal_production
	.p2align	5
	.type	new_internal_production,@function
new_internal_production:                # @new_internal_production
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	beqz	$a1, .LBB17_2
# %bb.1:                                # %cond.true
	ld.d	$s1, $fp, 0
	b	.LBB17_3
.LBB17_2:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
.LBB17_3:                               # %cond.end
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 20
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 8
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(new_production)
	jirl	$ra, $ra, 0
	ld.b	$a1, $a0, 60
	ori	$a2, $zero, 1
	bstrins.d	$a1, $a2, 4, 2
	st.b	$a1, $a0, 60
	beqz	$fp, .LBB17_12
# %bb.4:                                # %cond.true7
	ld.bu	$a2, $fp, 60
	andi	$a1, $a1, 230
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $a0, 60
	ld.w	$a1, $s0, 8
	beqz	$a1, .LBB17_13
# %bb.5:                                # %for.body.lr.ph
	ld.d	$a2, $s0, 16
	move	$a4, $zero
	move	$a3, $zero
	move	$a6, $zero
	b	.LBB17_8
	.p2align	4, , 16
.LBB17_6:                               # %if.then21
                                        #   in Loop: Header=BB17_8 Depth=1
	alsl.d	$a4, $a3, $a2, 3
	st.d	$a6, $a4, 0
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_8 Depth=1
	ori	$a4, $zero, 1
	addi.w	$a3, $a3, 1
	move	$a6, $a5
	bgeu	$a3, $a1, .LBB17_13
.LBB17_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a2, $a5
	bnez	$a4, .LBB17_6
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB17_8 Depth=1
	beq	$fp, $a5, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_8 Depth=1
	move	$a4, $zero
	move	$a5, $a6
	addi.w	$a3, $a3, 1
	move	$a6, $a5
	bltu	$a3, $a1, .LBB17_8
	b	.LBB17_13
.LBB17_11:                              # %if.then32
                                        #   in Loop: Header=BB17_8 Depth=1
	addi.w	$a3, $a3, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a2, $a4
	stx.d	$a0, $a2, $a4
	b	.LBB17_7
.LBB17_12:                              # %if.end45.critedge
	andi	$a1, $a1, 230
	st.b	$a1, $a0, 60
.LBB17_13:                              # %if.end45
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	new_internal_production, .Lfunc_end17-new_internal_production
                                        # -- End function
	.globl	conditional_EBNF                # -- Begin function conditional_EBNF
	.p2align	5
	.type	conditional_EBNF,@function
conditional_EBNF:                       # @conditional_EBNF
# %bb.0:                                # %do.end
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
	move	$s0, $a0
	ld.d	$a1, $a0, 552
	pcaddu18i	$ra, %call36(new_internal_production)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 227
	addi.d	$a0, $a0, 8
	st.b	$a0, $fp, 60
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 560
	st.d	$a0, $s2, 72
	ld.w	$a2, $a1, 32
	ori	$a3, $zero, 3
	st.w	$a3, $a0, 0
	ld.d	$a3, $a1, 40
	addi.d	$a2, $a2, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	addi.d	$a3, $s2, 48
	st.d	$a3, $s2, 40
	st.w	$s1, $s2, 32
	ld.w	$a3, $a1, 32
	ld.w	$a4, $s0, 576
	st.d	$a2, $s2, 48
	ld.d	$a1, $a1, 40
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	st.d	$s2, $a0, 8
	st.w	$a4, $s2, 152
	ld.d	$s5, $fp, 24
	st.d	$s2, $a1, 8
	st.d	$s2, $a2, 8
	addi.d	$s1, $fp, 16
	addi.d	$s6, $fp, 32
	beqz	$s5, .LBB18_4
# %bb.1:                                # %if.else104
	ld.wu	$a0, $s1, 0
	beq	$s5, $s6, .LBB18_5
# %bb.2:                                # %if.else124
	andi	$a1, $a0, 7
	beqz	$a1, .LBB18_6
.LBB18_3:                               # %if.else159.sink.split
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$s2, $s5, $a0
	b	.LBB18_7
.LBB18_4:                               # %if.else159.thread
	ld.wu	$a0, $fp, 16
	st.d	$s6, $fp, 24
	addi.d	$s4, $a0, 1
	st.w	$s4, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s2, $s6, $a0
	ld.w	$s3, $s0, 576
	addi.w	$s2, $s4, 0
	ori	$a0, $zero, 2
	bgeu	$a0, $s2, .LBB18_11
	b	.LBB18_12
.LBB18_5:                               # %if.then111
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB18_3
.LBB18_6:                               # %do.body143
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 24
	beqz	$s5, .LBB18_14
.LBB18_7:                               # %if.else159
	ld.wu	$s4, $fp, 16
	addi.d	$a0, $fp, 32
	beq	$s5, $a0, .LBB18_10
# %bb.8:                                # %if.else180
	ld.w	$s3, $s0, 576
	andi	$a0, $s4, 7
	beqz	$a0, .LBB18_12
# %bb.9:                                # %if.then185
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	st.w	$s3, $s1, 152
	addi.d	$a0, $s4, 1
	st.w	$a0, $fp, 16
	slli.d	$a0, $s4, 3
	stx.d	$s1, $s5, $a0
	b	.LBB18_13
.LBB18_10:
	move	$s6, $s5
	ld.w	$s3, $s0, 576
	addi.w	$s2, $s4, 0
	ori	$a0, $zero, 2
	bltu	$a0, $s2, .LBB18_12
.LBB18_11:                              # %if.then170
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	st.w	$s3, $s1, 152
	addi.d	$a0, $s4, 1
	st.w	$a0, $fp, 16
	slli.d	$a0, $s2, 3
	stx.d	$s1, $s6, $a0
	b	.LBB18_13
.LBB18_12:                              # %if.end196
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s2, $a0, 8
	st.w	$s3, $s2, 152
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB18_13:                              # %do.end200
	ld.d	$s0, $s0, 560
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	ld.w	$a1, $s0, 32
	st.d	$s0, $a0, 8
	ld.d	$a2, $s0, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
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
.LBB18_14:                              # %if.then147
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ori	$a1, $zero, 3
	ld.w	$a2, $s0, 576
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	ld.wu	$a0, $fp, 16
	st.w	$a2, $s1, 152
	addi.d	$a1, $fp, 32
	st.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a1, $a0
	b	.LBB18_13
.Lfunc_end18:
	.size	conditional_EBNF, .Lfunc_end18-conditional_EBNF
                                        # -- End function
	.globl	star_EBNF                       # -- Begin function star_EBNF
	.p2align	5
	.type	star_EBNF,@function
star_EBNF:                              # @star_EBNF
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
	move	$s0, $a0
	ld.d	$a1, $a0, 552
	pcaddu18i	$ra, %call36(new_internal_production)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 227
	addi.d	$a0, $a0, 12
	st.b	$a0, $fp, 60
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ld.w	$a1, $s0, 576
	ld.w	$a2, $s0, 252
	ori	$a3, $zero, 3
	st.w	$a3, $a0, 0
	st.d	$s1, $a0, 8
	st.w	$a1, $s1, 152
	beqz	$a2, .LBB19_5
# %bb.1:                                # %if.then288
	ld.d	$s3, $s0, 560
	ld.w	$a0, $s3, 32
	ld.d	$a1, $s3, 40
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	addi.d	$a1, $s1, 48
	st.d	$a1, $s1, 40
	st.w	$s2, $s1, 32
	st.d	$a0, $s1, 48
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	ld.w	$a1, $s3, 32
	ld.d	$a2, $s3, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	ld.d	$a1, $s1, 48
	st.d	$s3, $a0, 8
	st.d	$s1, $a1, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	st.d	$s1, $a0, 8
	ori	$a1, $zero, 2
	st.w	$a1, $s1, 32
	st.d	$a0, $s1, 56
	ld.d	$s4, $fp, 24
	addi.d	$s2, $fp, 16
	addi.d	$s5, $fp, 32
	beqz	$s4, .LBB19_6
.LBB19_2:                               # %if.else334
	ld.wu	$a0, $s2, 0
	beq	$s4, $s5, .LBB19_7
# %bb.3:                                # %if.else354
	andi	$a1, $a0, 7
	beqz	$a1, .LBB19_8
.LBB19_4:                               # %if.else389.sink.split
	addi.d	$a1, $a0, 1
	st.w	$a1, $s2, 0
	slli.d	$a0, $a0, 3
	stx.d	$s1, $s4, $a0
	b	.LBB19_9
.LBB19_5:                               # %do.end132
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 560
	st.d	$fp, $a0, 16
	addi.d	$a1, $s1, 48
	st.w	$s2, $s1, 32
	ld.w	$a2, $s3, 32
	st.d	$a1, $s1, 40
	st.d	$a0, $s1, 48
	ld.d	$s2, $s3, 40
	addi.d	$a1, $a2, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $s2, $a1
	st.d	$s1, $a0, 8
	ori	$a0, $zero, 2
	st.w	$a0, $s1, 32
	st.d	$a1, $s1, 56
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	ld.w	$a1, $s3, 32
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s2, $a1
	ld.d	$a1, $s1, 56
	st.d	$s3, $a0, 8
	st.d	$s1, $a1, 8
	ld.d	$s4, $fp, 24
	addi.d	$s2, $fp, 16
	addi.d	$s5, $fp, 32
	bnez	$s4, .LBB19_2
.LBB19_6:                               # %if.else389.thread
	ld.wu	$a0, $fp, 16
	st.d	$s5, $fp, 24
	addi.d	$s3, $a0, 1
	st.w	$s3, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s1, $s5, $a0
	ld.w	$s1, $s0, 576
	addi.w	$s4, $s3, 0
	ori	$a0, $zero, 2
	bgeu	$a0, $s4, .LBB19_13
	b	.LBB19_14
.LBB19_7:                               # %if.then341
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB19_4
.LBB19_8:                               # %do.body373
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s4, $fp, 24
	beqz	$s4, .LBB19_15
.LBB19_9:                               # %if.else389
	ld.wu	$s3, $fp, 16
	addi.d	$a0, $fp, 32
	beq	$s4, $a0, .LBB19_12
# %bb.10:                               # %if.else410
	ld.w	$s1, $s0, 576
	andi	$a0, $s3, 7
	beqz	$a0, .LBB19_14
# %bb.11:                               # %if.then415
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$s1, $s0, 152
	addi.d	$a0, $s3, 1
	st.w	$a0, $fp, 16
	slli.d	$a0, $s3, 3
	stx.d	$s0, $s4, $a0
	b	.LBB19_16
.LBB19_12:
	move	$s5, $s4
	ld.w	$s1, $s0, 576
	addi.w	$s4, $s3, 0
	ori	$a0, $zero, 2
	bltu	$a0, $s4, .LBB19_14
.LBB19_13:                              # %if.then400
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$s1, $s0, 152
	addi.d	$a0, $s3, 1
	st.w	$a0, $fp, 16
	slli.d	$a0, $s4, 3
	stx.d	$s0, $s5, $a0
	b	.LBB19_16
.LBB19_14:                              # %if.end426
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$s1, $s0, 152
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.LBB19_15:                              # %if.then377
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 72
	ori	$a1, $zero, 3
	ld.w	$a2, $s0, 576
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	ld.wu	$a0, $fp, 16
	st.w	$a2, $s1, 152
	addi.d	$a1, $fp, 32
	st.d	$a1, $fp, 24
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a1, $a0
.LBB19_16:                              # %do.end430
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
	.size	star_EBNF, .Lfunc_end19-star_EBNF
                                        # -- End function
	.globl	plus_EBNF                       # -- Begin function plus_EBNF
	.p2align	5
	.type	plus_EBNF,@function
plus_EBNF:                              # @plus_EBNF
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
	move	$s0, $a0
	ld.d	$a1, $a0, 552
	pcaddu18i	$ra, %call36(new_internal_production)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 227
	addi.d	$a0, $a0, 16
	st.b	$a0, $fp, 60
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 560
	st.d	$a0, $s1, 72
	ld.w	$a1, $s2, 32
	ld.w	$s4, $s0, 576
	ld.w	$a2, $s0, 252
	ld.d	$a3, $s2, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	ldx.d	$s3, $a3, $a1
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s1, $a0, 8
	st.w	$s4, $s1, 152
	beqz	$a2, .LBB20_5
# %bb.1:                                # %if.then227
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	xvld	$xr0, $s3, 0
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 8
	addi.d	$a1, $s1, 48
	st.d	$a1, $s1, 40
	st.w	$s5, $s1, 32
	st.d	$a0, $s1, 48
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	ld.w	$a1, $s2, 32
	st.d	$s2, $a0, 8
	ld.d	$a2, $s2, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	st.d	$s1, $a0, 8
	ori	$a1, $zero, 2
	st.w	$a1, $s1, 32
	st.d	$a0, $s1, 56
	ld.d	$a0, $fp, 24
	addi.d	$s2, $fp, 16
	addi.d	$s5, $fp, 32
	beqz	$a0, .LBB20_6
.LBB20_2:                               # %if.else273
	ld.w	$a1, $s2, 0
	beq	$a0, $s5, .LBB20_7
# %bb.3:                                # %if.else293
	andi	$a2, $a1, 7
	beqz	$a2, .LBB20_9
# %bb.4:                                # %if.then298
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 0
	slli.d	$a1, $a2, 3
	stx.d	$s1, $a0, $a1
	b	.LBB20_10
.LBB20_5:                               # %do.end109
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	st.d	$s1, $a0, 8
	addi.d	$a1, $s1, 48
	st.d	$a1, $s1, 40
	st.w	$s5, $s1, 32
	st.d	$a0, $s1, 48
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	xvld	$xr0, $s3, 0
	xvst	$xr0, $a0, 0
	st.d	$s1, $a0, 8
	ori	$a1, $zero, 2
	st.w	$a1, $s1, 32
	st.d	$a0, $s1, 56
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 16
	ld.w	$a1, $s2, 32
	st.d	$s2, $a0, 8
	ld.d	$a2, $s2, 40
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a2, $a1
	ld.d	$a0, $fp, 24
	addi.d	$s2, $fp, 16
	addi.d	$s5, $fp, 32
	bnez	$a0, .LBB20_2
.LBB20_6:                               # %if.then262
	ld.wu	$a0, $fp, 16
	st.d	$s5, $fp, 24
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s1, $s5, $a0
	b	.LBB20_10
.LBB20_7:                               # %if.then280
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB20_9
# %bb.8:                                # %if.then284
	addi.d	$a2, $a1, 1
	st.w	$a2, $s2, 0
	slli.d	$a1, $a1, 3
	stx.d	$s1, $a0, $a1
	b	.LBB20_10
.LBB20_9:                               # %if.end308
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s0, 576
.LBB20_10:                              # %do.end366
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$s4, $s0, 152
	addi.d	$a1, $s0, 48
	ld.d	$a0, $fp, 24
	st.d	$a1, $s0, 40
	st.w	$s1, $s0, 32
	st.d	$s3, $s0, 48
	st.d	$s0, $s3, 8
	beqz	$a0, .LBB20_14
# %bb.11:                               # %if.else382
	ld.w	$a1, $s2, 0
	beq	$a0, $s5, .LBB20_15
# %bb.12:                               # %if.else402
	andi	$a2, $a1, 7
	beqz	$a2, .LBB20_19
# %bb.13:                               # %if.then407
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s2, 0
	slli.d	$a1, $a2, 3
	b	.LBB20_17
.LBB20_14:                              # %if.then371
	ld.wu	$a0, $fp, 16
	st.d	$s5, $fp, 24
	addi.d	$a1, $a0, 1
	st.w	$a1, $fp, 16
	slli.d	$a0, $a0, 3
	stx.d	$s0, $s5, $a0
	b	.LBB20_18
.LBB20_15:                              # %if.then389
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB20_19
# %bb.16:                               # %if.then393
	addi.d	$a2, $a1, 1
	st.w	$a2, $s2, 0
	slli.d	$a1, $a1, 3
.LBB20_17:                              # %do.end420
	stx.d	$s0, $a0, $a1
.LBB20_18:                              # %do.end420
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
.LBB20_19:                              # %if.end417
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(vec_add_internal)
	jr	$t8
.Lfunc_end20:
	.size	plus_EBNF, .Lfunc_end20-plus_EBNF
                                        # -- End function
	.globl	initialize_productions          # -- Begin function initialize_productions
	.p2align	5
	.type	initialize_productions,@function
initialize_productions:                 # @initialize_productions
# %bb.0:                                # %do.body44
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_production)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.bu	$a0, $a0, 60
	andi	$a0, $a0, 227
	addi.d	$a0, $a0, 4
	st.b	$a0, $s1, 60
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ld.w	$a1, $fp, 576
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$a1, $s0, 152
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$s0, $a0, 8
	addi.d	$a2, $s0, 48
	ld.d	$a1, $s1, 24
	st.d	$a2, $s0, 40
	st.w	$s2, $s0, 32
	st.d	$a0, $s0, 48
	addi.d	$a3, $s1, 32
	beqz	$a1, .LBB21_4
# %bb.1:                                # %if.else58
	addi.d	$a0, $s1, 16
	ld.w	$a2, $a0, 0
	beq	$a1, $a3, .LBB21_5
# %bb.2:                                # %if.else78
	andi	$a3, $a2, 7
	beqz	$a3, .LBB21_7
# %bb.3:                                # %if.then83
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s0, $a1, $a0
	b	.LBB21_8
.LBB21_4:                               # %if.then47
	ld.wu	$a0, $s1, 16
	st.d	$a3, $s1, 24
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 16
	slli.d	$a0, $a0, 3
	stx.d	$s0, $a3, $a0
	b	.LBB21_8
.LBB21_5:                               # %if.then65
	ori	$a3, $zero, 2
	bltu	$a3, $a2, .LBB21_7
# %bb.6:                                # %if.then69
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a2, 3
	stx.d	$s0, $a1, $a0
	b	.LBB21_8
.LBB21_7:                               # %if.end93
	move	$a1, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB21_8:                               # %do.end96
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(new_production)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 60
	andi	$a1, $a1, 227
	addi.d	$a1, $a1, 4
	st.b	$a1, $a0, 60
	ld.d	$a1, $s0, 40
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 16
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end21:
	.size	initialize_productions, .Lfunc_end21-initialize_productions
                                        # -- End function
	.globl	finish_productions              # -- Begin function finish_productions
	.p2align	5
	.type	finish_productions,@function
finish_productions:                     # @finish_productions
# %bb.0:                                # %do.body47
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$s1, $a0, 16
	ld.d	$s2, $s1, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s2, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 72
	ld.w	$a1, $s0, 576
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 0
	st.d	$fp, $a0, 8
	st.w	$a1, $fp, 152
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	addi.d	$a1, $fp, 48
	ld.d	$a2, $s2, 24
	st.d	$a1, $fp, 40
	st.w	$s3, $fp, 32
	st.d	$a0, $fp, 48
	addi.d	$a4, $s2, 32
	beqz	$a2, .LBB22_4
# %bb.1:                                # %if.else61
	addi.d	$a0, $s2, 16
	ld.w	$a3, $a0, 0
	beq	$a2, $a4, .LBB22_5
# %bb.2:                                # %if.else81
	andi	$a4, $a3, 7
	beqz	$a4, .LBB22_7
# %bb.3:                                # %if.then86
	bstrpick.d	$a4, $a3, 31, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a4, 3
	stx.d	$fp, $a2, $a0
	b	.LBB22_8
.LBB22_4:                               # %if.then50
	ld.wu	$a0, $s2, 16
	st.d	$a4, $s2, 24
	addi.d	$a2, $a0, 1
	st.w	$a2, $s2, 16
	slli.d	$a0, $a0, 3
	stx.d	$fp, $a4, $a0
	b	.LBB22_8
.LBB22_5:                               # %if.then68
	ori	$a4, $zero, 2
	bltu	$a4, $a3, .LBB22_7
# %bb.6:                                # %if.then72
	addi.d	$a4, $a3, 1
	st.w	$a4, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$fp, $a2, $a0
	b	.LBB22_8
.LBB22_7:                               # %if.end96
	move	$a1, $fp
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ld.d	$a1, $fp, 40
.LBB22_8:                               # %do.end99
	ld.d	$a0, $s1, 16
	ld.d	$a1, $a1, 0
	st.d	$a0, $a1, 16
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end22:
	.size	finish_productions, .Lfunc_end22-finish_productions
                                        # -- End function
	.globl	print_term                      # -- Begin function print_term
	.p2align	5
	.type	print_term,@function
print_term:                             # @print_term
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB23_6
# %bb.1:                                # %cond.true
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB23_7
.LBB23_2:                               # %cond.end
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI23_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI23_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB23_3:                               # %if.then
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB23_12
# %bb.4:                                # %lor.lhs.false
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB23_12
# %bb.5:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB23_11
	b	.LBB23_13
.LBB23_6:
	move	$fp, $zero
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB23_2
.LBB23_7:                               # %if.else24
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB23_11
	b	.LBB23_13
.LBB23_8:                               # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB23_11
	b	.LBB23_13
.LBB23_9:                               # %if.then22
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB23_11
	b	.LBB23_13
.LBB23_10:                              # %if.then12
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB23_13
.LBB23_11:                              # %if.then30
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB23_12:                              # %if.then6
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB23_11
.LBB23_13:                              # %if.end31
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	print_term, .Lfunc_end23-print_term
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI23_0:
	.word	.LBB23_3-.LJTI23_0
	.word	.LBB23_10-.LJTI23_0
	.word	.LBB23_8-.LJTI23_0
	.word	.LBB23_9-.LJTI23_0
                                        # -- End function
	.text
	.globl	print_elem                      # -- Begin function print_elem
	.p2align	5
	.type	print_elem,@function
print_elem:                             # @print_elem
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	ld.d	$a1, $a0, 16
	ori	$a0, $zero, 2
	beq	$a2, $a0, .LBB24_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 1
	bne	$a2, $a0, .LBB24_3
# %bb.2:                                # %if.then
	move	$a0, $a1
	pcaddu18i	$t8, %call36(print_term)
	jr	$t8
.LBB24_3:                               # %if.else5
	ld.d	$a1, $a1, 0
.LBB24_4:                               # %if.then3
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.Lfunc_end24:
	.size	print_elem, .Lfunc_end24-print_elem
                                        # -- End function
	.globl	print_rule                      # -- Begin function print_rule
	.p2align	5
	.type	print_rule,@function
print_rule:                             # @print_rule
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
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 32
	beqz	$a0, .LBB25_7
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s0, $a0, %pc_lo12(.L.str.14)
	ori	$s4, $zero, 1
	b	.LBB25_4
	.p2align	4, , 16
.LBB25_2:                               # %if.else5.i
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.d	$a1, $a1, 0
.LBB25_3:                               # %print_elem.exit
                                        #   in Loop: Header=BB25_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 32
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a0, .LBB25_7
.LBB25_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	ldx.d	$a1, $a0, $s1
	ld.w	$a0, $a1, 0
	ld.d	$a1, $a1, 16
	beq	$a0, $s3, .LBB25_3
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	bne	$a0, $s4, .LBB25_2
# %bb.6:                                # %if.then.i
                                        #   in Loop: Header=BB25_4 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(print_term)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 32
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bltu	$s2, $a0, .LBB25_4
.LBB25_7:                               # %for.end
	ld.d	$a1, $fp, 80
	beqz	$a1, .LBB25_9
# %bb.8:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB25_9:                               # %if.end
	ld.d	$a1, $fp, 96
	beqz	$a1, .LBB25_11
# %bb.10:                               # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(printf)
	jr	$t8
.LBB25_11:                              # %if.end11
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end25:
	.size	print_rule, .Lfunc_end25-print_rule
                                        # -- End function
	.globl	print_grammar                   # -- Begin function print_grammar
	.p2align	5
	.type	print_grammar,@function
print_grammar:                          # @print_grammar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$s4, $a0
	ld.w	$a0, $a0, 8
	beqz	$a0, .LBB26_62
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	beqz	$a0, .LBB26_58
# %bb.2:                                # %for.body.lr.ph
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s3, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(assoc_strings)
	addi.d	$s1, $a0, %pc_lo12(assoc_strings)
	addi.d	$a0, $s1, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s1, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 48
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 64
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 80
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 96
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 112
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$s7, $zero, 2
	ori	$fp, $zero, 1
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_3:                               # %for.end64
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	ld.wu	$a0, $s4, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bgeu	$a2, $a0, .LBB26_58
.LBB26_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_7 Depth 2
                                        #       Child Loop BB26_12 Depth 3
	ld.d	$a0, $s4, 16
	slli.d	$a1, $a2, 3
	ldx.d	$s0, $a0, $a1
	ld.d	$a1, $s0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.w	$a2, $a2, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 16
	beqz	$a0, .LBB26_3
# %bb.5:                                # %for.body8.lr.ph
                                        #   in Loop: Header=BB26_4 Depth=1
	move	$s8, $zero
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB26_7
	.p2align	4, , 16
.LBB26_6:                               # %if.end60
                                        #   in Loop: Header=BB26_7 Depth=2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.wu	$a0, $s0, 16
	addi.d	$s8, $s8, 1
	bgeu	$s8, $a0, .LBB26_3
.LBB26_7:                               # %for.body8
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_12 Depth 3
	ld.d	$a0, $s0, 24
	slli.d	$a1, $s8, 3
	ldx.d	$s0, $a0, $a1
	sltui	$a0, $s8, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 32
	beqz	$a0, .LBB26_28
# %bb.8:                                # %for.body21.lr.ph
                                        #   in Loop: Header=BB26_7 Depth=2
	move	$s4, $zero
	move	$s2, $zero
	b	.LBB26_12
	.p2align	4, , 16
.LBB26_9:                               # %if.then3.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s6
.LBB26_10:                              # %print_elem.exit
                                        #   in Loop: Header=BB26_12 Depth=3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_11:                              # %print_elem.exit
                                        #   in Loop: Header=BB26_12 Depth=3
	ld.wu	$a0, $s0, 32
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	bgeu	$s2, $a0, .LBB26_28
.LBB26_12:                              # %for.body21
                                        #   Parent Loop BB26_4 Depth=1
                                        #     Parent Loop BB26_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 40
	ldx.d	$a1, $a0, $s4
	ld.w	$a0, $a1, 0
	ld.d	$s6, $a1, 16
	beq	$a0, $s7, .LBB26_9
# %bb.13:                               # %for.body21
                                        #   in Loop: Header=BB26_12 Depth=3
	bne	$a0, $fp, .LBB26_20
# %bb.14:                               # %if.then.i
                                        #   in Loop: Header=BB26_12 Depth=3
	ld.d	$a0, $s6, 24
	beqz	$a0, .LBB26_21
# %bb.15:                               # %cond.true.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB26_22
.LBB26_16:                              # %cond.end.i
                                        #   in Loop: Header=BB26_12 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI26_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI26_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB26_17:                              # %if.then.i66
                                        #   in Loop: Header=BB26_12 Depth=3
	ld.d	$a0, $s6, 24
	beqz	$a0, .LBB26_26
# %bb.18:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB26_12 Depth=3
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB26_26
# %bb.19:                               # %if.else.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB26_27
	b	.LBB26_11
	.p2align	4, , 16
.LBB26_20:                              # %if.else5.i
                                        #   in Loop: Header=BB26_12 Depth=3
	ld.d	$a1, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB26_10
.LBB26_21:                              #   in Loop: Header=BB26_12 Depth=3
	move	$s5, $zero
	ld.w	$a0, $s6, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB26_16
.LBB26_22:                              # %if.else24.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB26_27
	b	.LBB26_11
.LBB26_23:                              # %if.then17.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB26_27
	b	.LBB26_11
.LBB26_24:                              # %if.then22.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB26_27
	b	.LBB26_11
.LBB26_25:                              # %if.then12.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB26_27
	b	.LBB26_11
.LBB26_26:                              # %if.then6.i
                                        #   in Loop: Header=BB26_12 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB26_11
	.p2align	4, , 16
.LBB26_27:                              # %if.then30.i
                                        #   in Loop: Header=BB26_12 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB26_11
	.p2align	4, , 16
.LBB26_28:                              # %for.end
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a1, $s0, 16
	beqz	$a1, .LBB26_30
# %bb.29:                               # %if.then27
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_30:                              # %if.end30
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a0, $s0, 20
	beqz	$a0, .LBB26_41
# %bb.31:                               # %if.then32
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 0
	move	$a1, $s1
	beq	$a0, $a2, .LBB26_39
# %bb.32:                               # %for.cond.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 16
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.33:                               # %for.cond.1.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.34:                               # %for.cond.2.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.35:                               # %for.cond.3.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 64
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.36:                               # %for.cond.4.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 80
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.37:                               # %for.cond.5.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 96
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_39
# %bb.38:                               # %for.cond.6.i
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a3, $s1, 112
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB26_40
	.p2align	4, , 16
.LBB26_39:                              # %if.then.i43
                                        #   in Loop: Header=BB26_7 Depth=2
	addi.d	$a2, $a1, 8
.LBB26_40:                              # %assoc_str.exit
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a1, $a2, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_41:                              # %if.end36
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a1, $s0, 24
	beqz	$a1, .LBB26_43
# %bb.42:                               # %if.then38
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_43:                              # %if.end41
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a0, $s0, 28
	beqz	$a0, .LBB26_54
# %bb.44:                               # %if.then43
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 0
	move	$a1, $s1
	beq	$a0, $a2, .LBB26_52
# %bb.45:                               # %for.cond.i45
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 16
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.46:                               # %for.cond.1.i47
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 32
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.47:                               # %for.cond.2.i49
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 48
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.48:                               # %for.cond.3.i51
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 64
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.49:                               # %for.cond.4.i53
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 80
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.50:                               # %for.cond.5.i55
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a2, $s1, 96
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB26_52
# %bb.51:                               # %for.cond.6.i57
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.w	$a3, $s1, 112
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB26_53
	.p2align	4, , 16
.LBB26_52:                              # %if.then.i61
                                        #   in Loop: Header=BB26_7 Depth=2
	addi.d	$a2, $a1, 8
.LBB26_53:                              # %assoc_str.exit64
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a1, $a2, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_54:                              # %if.end47
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a1, $s0, 80
	beqz	$a1, .LBB26_56
# %bb.55:                               # %if.then49
                                        #   in Loop: Header=BB26_7 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB26_56:                              # %if.end53
                                        #   in Loop: Header=BB26_7 Depth=2
	ld.d	$a1, $s0, 96
	beqz	$a1, .LBB26_6
# %bb.57:                               # %if.then56
                                        #   in Loop: Header=BB26_7 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB26_6
.LBB26_58:                              # %for.end69
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 48
	beqz	$a0, .LBB26_61
# %bb.59:                               # %for.body74.lr.ph
	move	$fp, $zero
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$s0, $a0, %pc_lo12(.L.str.36)
	.p2align	4, , 16
.LBB26_60:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 56
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(print_term)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 8
	add.w	$a1, $s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 48
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 8
	bltu	$s2, $a0, .LBB26_60
.LBB26_61:                              # %for.end85
	ori	$a0, $zero, 10
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	pcaddu18i	$t8, %call36(putchar)
	jr	$t8
.LBB26_62:                              # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end26:
	.size	print_grammar, .Lfunc_end26-print_grammar
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI26_0:
	.word	.LBB26_17-.LJTI26_0
	.word	.LBB26_25-.LJTI26_0
	.word	.LBB26_23-.LJTI26_0
	.word	.LBB26_24-.LJTI26_0
                                        # -- End function
	.text
	.globl	print_states                    # -- Begin function print_states
	.p2align	5
	.type	print_states,@function
print_states:                           # @print_states
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.w	$a0, $a0, 88
	beqz	$a0, .LBB27_109
# %bb.1:                                # %for.body.lr.ph
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s7, $zero, 2
	ori	$s2, $zero, 1
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(action_types)
	addi.d	$s6, $a0, %pc_lo12(action_types)
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI27_3)
	addi.d	$a0, $a0, %pc_lo12(.LJTI27_3)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	b	.LBB27_4
	.p2align	4, , 16
.LBB27_2:                               # %print_conflict.exit48.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB27_3:                               # %print_state.exit
                                        #   in Loop: Header=BB27_4 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.wu	$a0, $a1, 88
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bgeu	$a2, $a0, .LBB27_108
.LBB27_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_9 Depth 2
                                        #       Child Loop BB27_14 Depth 3
                                        #     Child Loop BB27_38 Depth 2
                                        #     Child Loop BB27_57 Depth 2
                                        #       Child Loop BB27_62 Depth 3
                                        #     Child Loop BB27_87 Depth 2
	ld.d	$a0, $a1, 96
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a1, $a2, 3
	ldx.d	$s8, $a0, $a1
	ld.bu	$a0, $s8, 376
	ld.w	$a1, $s8, 0
	ld.w	$a2, $s8, 16
	andi	$a0, $a0, 1
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	masknez	$a3, $a3, $a0
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	or	$a3, $a0, $a3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 16
	beqz	$a0, .LBB27_32
# %bb.5:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$fp, $zero
	b	.LBB27_9
	.p2align	4, , 16
.LBB27_6:                               # %for.end.i.i
                                        #   in Loop: Header=BB27_9 Depth=2
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	beqz	$s3, .LBB27_8
.LBB27_7:                               # %if.then6.i.i
                                        #   in Loop: Header=BB27_9 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_8:                               # %print_item.exit.i
                                        #   in Loop: Header=BB27_9 Depth=2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 16
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB27_32
.LBB27_9:                               # %for.body.i
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_14 Depth 3
	ld.d	$a0, $s8, 24
	slli.d	$a1, $fp, 3
	ldx.d	$s0, $a0, $a1
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB27_7
# %bb.10:                               # %for.body.i.i.preheader
                                        #   in Loop: Header=BB27_9 Depth=2
	move	$s5, $zero
	move	$s6, $zero
	ori	$s3, $zero, 1
	b	.LBB27_14
	.p2align	4, , 16
.LBB27_11:                              # %if.then3.i.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s4
.LBB27_12:                              # %print_elem.exit.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_13:                              # %print_elem.exit.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.d	$a0, $s0, 8
	ld.wu	$a1, $a0, 32
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bgeu	$s6, $a1, .LBB27_6
.LBB27_14:                              # %for.body.i.i
                                        #   Parent Loop BB27_4 Depth=1
                                        #     Parent Loop BB27_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $a0, 40
	ldx.d	$s1, $a0, $s5
	bne	$s0, $s1, .LBB27_16
# %bb.15:                               # %if.then.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$s3, $zero
.LBB27_16:                              # %if.end.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.w	$a0, $s1, 0
	ld.d	$s4, $s1, 16
	beq	$a0, $s7, .LBB27_11
# %bb.17:                               # %if.end.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	bne	$a0, $s2, .LBB27_24
# %bb.18:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_25
# %bb.19:                               # %cond.true.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_26
.LBB27_20:                              # %cond.end.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI27_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI27_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB27_21:                              # %if.then.i51.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_30
# %bb.22:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_30
# %bb.23:                               # %if.else.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_31
	b	.LBB27_13
	.p2align	4, , 16
.LBB27_24:                              # %if.else5.i.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB27_12
.LBB27_25:                              #   in Loop: Header=BB27_14 Depth=3
	move	$s1, $zero
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB27_20
.LBB27_26:                              # %if.else24.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_31
	b	.LBB27_13
.LBB27_27:                              # %if.then17.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_31
	b	.LBB27_13
.LBB27_28:                              # %if.then22.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_31
	b	.LBB27_13
.LBB27_29:                              # %if.then12.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_31
	b	.LBB27_13
.LBB27_30:                              # %if.then6.i52.i
                                        #   in Loop: Header=BB27_14 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB27_13
	.p2align	4, , 16
.LBB27_31:                              # %if.then30.i.i
                                        #   in Loop: Header=BB27_14 Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_13
	.p2align	4, , 16
.LBB27_32:                              # %for.end.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.w	$a0, $s8, 96
	beqz	$a0, .LBB27_54
# %bb.33:                               # %if.end.i
                                        #   in Loop: Header=BB27_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 96
	beqz	$a0, .LBB27_54
# %bb.34:                               # %for.body11.lr.ph.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB27_38
	.p2align	4, , 16
.LBB27_35:                              # %if.then3.i.i
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s4
.LBB27_36:                              # %print_elem.exit.i
                                        #   in Loop: Header=BB27_38 Depth=2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_37:                              # %print_elem.exit.i
                                        #   in Loop: Header=BB27_38 Depth=2
	ld.d	$a0, $s8, 104
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 96
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s0, $a0, .LBB27_54
.LBB27_38:                              # %for.body11.i
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 104
	ldx.d	$a0, $a0, $fp
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a1, 0
	ld.d	$s4, $a1, 16
	beq	$a0, $s7, .LBB27_35
# %bb.39:                               # %for.body11.i
                                        #   in Loop: Header=BB27_38 Depth=2
	bne	$a0, $s2, .LBB27_46
# %bb.40:                               # %if.then.i37.i
                                        #   in Loop: Header=BB27_38 Depth=2
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_47
# %bb.41:                               # %cond.true.i29
                                        #   in Loop: Header=BB27_38 Depth=2
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_48
.LBB27_42:                              # %cond.end.i31
                                        #   in Loop: Header=BB27_38 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI27_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI27_1)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB27_43:                              # %if.then.i42
                                        #   in Loop: Header=BB27_38 Depth=2
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_52
# %bb.44:                               # %lor.lhs.false.i44
                                        #   in Loop: Header=BB27_38 Depth=2
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_52
# %bb.45:                               # %if.else.i46
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_53
	b	.LBB27_37
	.p2align	4, , 16
.LBB27_46:                              # %if.else5.i.i
                                        #   in Loop: Header=BB27_38 Depth=2
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB27_36
.LBB27_47:                              #   in Loop: Header=BB27_38 Depth=2
	move	$s1, $zero
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB27_42
.LBB27_48:                              # %if.else24.i50
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_53
	b	.LBB27_37
.LBB27_49:                              # %if.then17.i38
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_53
	b	.LBB27_37
.LBB27_50:                              # %if.then22.i33
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_53
	b	.LBB27_37
.LBB27_51:                              # %if.then12.i40
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_53
	b	.LBB27_37
.LBB27_52:                              # %if.then6.i48
                                        #   in Loop: Header=BB27_38 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB27_37
	.p2align	4, , 16
.LBB27_53:                              # %if.then30.i37
                                        #   in Loop: Header=BB27_38 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_37
	.p2align	4, , 16
.LBB27_54:                              # %for.end25.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 176
	beqz	$a0, .LBB27_82
# %bb.55:                               # %for.body30.lr.ph.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$fp, $zero
	b	.LBB27_57
	.p2align	4, , 16
.LBB27_56:                              # %print_rule.exit
                                        #   in Loop: Header=BB27_57 Depth=2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 176
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB27_83
.LBB27_57:                              # %for.body30.i
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB27_62 Depth 3
	ld.d	$a0, $s8, 184
	slli.d	$a1, $fp, 3
	ldx.d	$s0, $a0, $a1
	ld.wu	$a0, $s0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s6, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 32
	beqz	$a0, .LBB27_78
# %bb.58:                               # %for.body.lr.ph.i9
                                        #   in Loop: Header=BB27_57 Depth=2
	move	$s3, $zero
	move	$s5, $zero
	b	.LBB27_62
	.p2align	4, , 16
.LBB27_59:                              # %if.then3.i.i15
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	move	$a1, $s4
.LBB27_60:                              # %print_elem.exit.i17
                                        #   in Loop: Header=BB27_62 Depth=3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_61:                              # %print_elem.exit.i17
                                        #   in Loop: Header=BB27_62 Depth=3
	ld.wu	$a0, $s0, 32
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 8
	bgeu	$s5, $a0, .LBB27_78
.LBB27_62:                              # %for.body.i11
                                        #   Parent Loop BB27_4 Depth=1
                                        #     Parent Loop BB27_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 40
	ldx.d	$a1, $a0, $s3
	ld.w	$a0, $a1, 0
	ld.d	$s4, $a1, 16
	beq	$a0, $s7, .LBB27_59
# %bb.63:                               # %for.body.i11
                                        #   in Loop: Header=BB27_62 Depth=3
	bne	$a0, $s2, .LBB27_70
# %bb.64:                               # %if.then.i.i24
                                        #   in Loop: Header=BB27_62 Depth=3
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_71
# %bb.65:                               # %cond.true.i54
                                        #   in Loop: Header=BB27_62 Depth=3
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_72
.LBB27_66:                              # %cond.end.i56
                                        #   in Loop: Header=BB27_62 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI27_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI27_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB27_67:                              # %if.then.i67
                                        #   in Loop: Header=BB27_62 Depth=3
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_76
# %bb.68:                               # %lor.lhs.false.i69
                                        #   in Loop: Header=BB27_62 Depth=3
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_76
# %bb.69:                               # %if.else.i71
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_77
	b	.LBB27_61
	.p2align	4, , 16
.LBB27_70:                              # %if.else5.i.i25
                                        #   in Loop: Header=BB27_62 Depth=3
	ld.d	$a1, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB27_60
.LBB27_71:                              #   in Loop: Header=BB27_62 Depth=3
	move	$s1, $zero
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB27_66
.LBB27_72:                              # %if.else24.i75
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_77
	b	.LBB27_61
.LBB27_73:                              # %if.then17.i63
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_77
	b	.LBB27_61
.LBB27_74:                              # %if.then22.i58
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_77
	b	.LBB27_61
.LBB27_75:                              # %if.then12.i65
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_77
	b	.LBB27_61
.LBB27_76:                              # %if.then6.i73
                                        #   in Loop: Header=BB27_62 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB27_61
	.p2align	4, , 16
.LBB27_77:                              # %if.then30.i62
                                        #   in Loop: Header=BB27_62 Depth=3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_61
	.p2align	4, , 16
.LBB27_78:                              # %for.end.i20
                                        #   in Loop: Header=BB27_57 Depth=2
	ld.d	$a1, $s0, 80
	beqz	$a1, .LBB27_80
# %bb.79:                               # %if.then.i22
                                        #   in Loop: Header=BB27_57 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_80:                              # %if.end.i23
                                        #   in Loop: Header=BB27_57 Depth=2
	ld.d	$a1, $s0, 96
	beqz	$a1, .LBB27_56
# %bb.81:                               # %if.then7.i
                                        #   in Loop: Header=BB27_57 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB27_56
	.p2align	4, , 16
.LBB27_82:                              #   in Loop: Header=BB27_4 Depth=1
	move	$a0, $zero
.LBB27_83:                              # %for.cond42.preheader.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.w	$a1, $s8, 136
	beqz	$a1, .LBB27_102
# %bb.84:                               # %for.body45.lr.ph.i
                                        #   in Loop: Header=BB27_4 Depth=1
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB27_87
	.p2align	4, , 16
.LBB27_85:                              # %print_term.exit
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $s3, 24
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB27_86:                              # %if.end61.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 136
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s0, $a0, .LBB27_101
.LBB27_87:                              # %for.body45.i
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 144
	ldx.d	$s3, $a0, $fp
	ld.wu	$a0, $s3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s6, $a0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	bne	$a0, $s2, .LBB27_86
# %bb.88:                               # %if.then57.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$s4, $s3, 8
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_94
# %bb.89:                               # %cond.true.i
                                        #   in Loop: Header=BB27_87 Depth=2
	pcaddu18i	$ra, %call36(escape_string)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB27_95
.LBB27_90:                              # %cond.end.i
                                        #   in Loop: Header=BB27_87 Depth=2
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB27_91:                              # %if.then.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB27_99
# %bb.92:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB27_99
# %bb.93:                               # %if.else.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_100
	b	.LBB27_85
.LBB27_94:                              #   in Loop: Header=BB27_87 Depth=2
	move	$s1, $zero
	ld.w	$a0, $s4, 0
	ori	$a1, $zero, 3
	bgeu	$a1, $a0, .LBB27_90
.LBB27_95:                              # %if.else24.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_100
	b	.LBB27_85
.LBB27_96:                              # %if.then17.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_100
	b	.LBB27_85
.LBB27_97:                              # %if.then22.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_100
	b	.LBB27_85
.LBB27_98:                              # %if.then12.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB27_100
	b	.LBB27_85
.LBB27_99:                              # %if.then6.i
                                        #   in Loop: Header=BB27_87 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB27_85
	.p2align	4, , 16
.LBB27_100:                             # %if.then30.i
                                        #   in Loop: Header=BB27_87 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB27_85
	.p2align	4, , 16
.LBB27_101:                             # %for.end65.loopexit.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.w	$a0, $s8, 176
.LBB27_102:                             # %for.end65.i
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.w	$fp, $a0, 0
	bltu	$fp, $s7, .LBB27_104
# %bb.103:                              # %print_conflict.exit.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 176
.LBB27_104:                             # %if.end70.i
                                        #   in Loop: Header=BB27_4 Depth=1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB27_3
# %bb.105:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.w	$a0, $s8, 136
	beqz	$a0, .LBB27_3
# %bb.106:                              # %if.then77.i
                                        #   in Loop: Header=BB27_4 Depth=1
	bltu	$s2, $fp, .LBB27_2
# %bb.107:                              # %if.then.i46.i
                                        #   in Loop: Header=BB27_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB27_2
.LBB27_108:
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
.LBB27_109:                             # %for.end
	ret
.Lfunc_end27:
	.size	print_states, .Lfunc_end27-print_states
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI27_0:
	.word	.LBB27_21-.LJTI27_0
	.word	.LBB27_29-.LJTI27_0
	.word	.LBB27_27-.LJTI27_0
	.word	.LBB27_28-.LJTI27_0
.LJTI27_1:
	.word	.LBB27_43-.LJTI27_1
	.word	.LBB27_51-.LJTI27_1
	.word	.LBB27_49-.LJTI27_1
	.word	.LBB27_50-.LJTI27_1
.LJTI27_2:
	.word	.LBB27_67-.LJTI27_2
	.word	.LBB27_75-.LJTI27_2
	.word	.LBB27_73-.LJTI27_2
	.word	.LBB27_74-.LJTI27_2
.LJTI27_3:
	.word	.LBB27_91-.LJTI27_3
	.word	.LBB27_98-.LJTI27_3
	.word	.LBB27_96-.LJTI27_3
	.word	.LBB27_97-.LJTI27_3
                                        # -- End function
	.text
	.globl	state_for_declaration           # -- Begin function state_for_declaration
	.p2align	5
	.type	state_for_declaration,@function
state_for_declaration:                  # @state_for_declaration
# %bb.0:                                # %entry
	ld.wu	$a2, $a0, 160
	beqz	$a2, .LBB28_6
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $a0, 168
	ori	$a3, $zero, 5
	b	.LBB28_3
	.p2align	4, , 16
.LBB28_2:                               # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB28_6
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	ld.w	$a5, $a4, 8
	bne	$a5, $a3, .LBB28_2
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a4, $a4, 0
	ld.d	$a4, $a4, 16
	ld.w	$a4, $a4, 56
	bne	$a4, $a1, .LBB28_2
# %bb.5:
	ori	$a0, $zero, 1
	ret
.LBB28_6:
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	state_for_declaration, .Lfunc_end28-state_for_declaration
                                        # -- End function
	.globl	build_eq                        # -- Begin function build_eq
	.p2align	5
	.type	build_eq,@function
build_eq:                               # @build_eq
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
	ld.wu	$s6, $a0, 88
	slli.d	$a0, $s6, 4
	alsl.d	$a1, $s6, $a0, 3
	ori	$a0, $zero, 1
	ori	$s0, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$t1, $a0
	beqz	$s6, .LBB29_69
# %bb.1:                                # %for.cond.preheader.preheader
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB29_3
	.p2align	4, , 16
.LBB29_2:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB29_3 Depth=1
	move	$s0, $s6
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB29_42
.LBB29_3:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_6 Depth 2
                                        #       Child Loop BB29_12 Depth 3
                                        #         Child Loop BB29_21 Depth 4
                                        #         Child Loop BB29_34 Depth 4
	beqz	$s0, .LBB29_42
# %bb.4:                                # %for.body.preheader
                                        #   in Loop: Header=BB29_3 Depth=1
	move	$a2, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$s4, $zero, 1
	b	.LBB29_6
	.p2align	4, , 16
.LBB29_5:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB29_6 Depth=2
	addi.d	$s4, $s4, 1
	bgeu	$a2, $s6, .LBB29_2
.LBB29_6:                               # %for.body
                                        #   Parent Loop BB29_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_12 Depth 3
                                        #         Child Loop BB29_21 Depth 4
                                        #         Child Loop BB29_34 Depth 4
	move	$a0, $a2
	addi.d	$a2, $a2, 1
	bgeu	$a2, $s6, .LBB29_5
# %bb.7:                                # %for.body16.lr.ph
                                        #   in Loop: Header=BB29_6 Depth=2
	ld.d	$a1, $fp, 96
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	ld.wu	$a0, $s5, 0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s7, $t1, $a0
	ld.d	$a0, $s7, 0
	bnez	$a0, .LBB29_5
# %bb.8:                                # %for.body16.preheader
                                        #   in Loop: Header=BB29_6 Depth=2
	move	$s8, $s4
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB29_12
.LBB29_9:                               #   in Loop: Header=BB29_12 Depth=3
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
.LBB29_10:                              # %for.inc255
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB29_11:                              # %for.inc255
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.wu	$s6, $fp, 88
	addi.d	$s8, $s8, 1
	bgeu	$s8, $s6, .LBB29_5
.LBB29_12:                              # %for.body16
                                        #   Parent Loop BB29_3 Depth=1
                                        #     Parent Loop BB29_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB29_21 Depth 4
                                        #         Child Loop BB29_34 Depth 4
	ld.d	$a0, $s7, 0
	bnez	$a0, .LBB29_11
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.d	$a0, $fp, 96
	slli.d	$a1, $s8, 3
	ldx.d	$s2, $a0, $a1
	ld.wu	$a0, $s2, 0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	add.d	$s6, $t1, $a0
	ld.d	$a0, $s6, 0
	bnez	$a0, .LBB29_11
# %bb.14:                               # %if.end
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.d	$a1, $s5, 400
	ld.d	$a0, $s2, 400
	beq	$a1, $a0, .LBB29_16
# %bb.15:                               # %if.end
                                        #   in Loop: Header=BB29_12 Depth=3
	bne	$a0, $s5, .LBB29_11
.LBB29_16:                              # %if.end35
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.w	$a0, $s5, 96
	ld.w	$a1, $s2, 96
	bne	$a0, $a1, .LBB29_11
# %bb.17:                               # %for.cond43.preheader
                                        #   in Loop: Header=BB29_12 Depth=3
	beqz	$a0, .LBB29_29
# %bb.18:                               # %for.body48.lr.ph
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.d	$a0, $s5, 104
	move	$s0, $zero
	move	$s3, $zero
	b	.LBB29_21
	.p2align	4, , 16
.LBB29_19:                              # %cleanup
                                        #   in Loop: Header=BB29_21 Depth=4
	st.d	$a2, $s6, 16
	st.d	$a1, $s7, 16
.LBB29_20:                              # %for.inc
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.wu	$a1, $s5, 96
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	bgeu	$s3, $a1, .LBB29_29
.LBB29_21:                              # %for.body48
                                        #   Parent Loop BB29_3 Depth=1
                                        #     Parent Loop BB29_6 Depth=2
                                        #       Parent Loop BB29_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 104
	ldx.d	$a1, $a1, $s0
	ld.d	$a1, $a1, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(elem_symbol)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB29_9
# %bb.22:                               # %if.end63
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.d	$a0, $s5, 104
	ld.d	$a1, $s2, 104
	ldx.d	$a2, $a0, $s0
	ldx.d	$a3, $a1, $s0
	ld.d	$a1, $a2, 8
	ld.d	$a2, $a3, 8
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB29_20
# %bb.23:                               # %if.then75
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.wu	$a3, $a1, 0
	slli.d	$a4, $a3, 4
	alsl.d	$a3, $a3, $a4, 3
	ldx.d	$a3, $t1, $a3
	beq	$a3, $a2, .LBB29_25
# %bb.24:                               # %land.lhs.true100
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.wu	$a4, $a2, 0
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 3
	ldx.d	$a4, $t1, $a4
	bne	$a4, $a1, .LBB29_10
.LBB29_25:                              # %if.end110
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.d	$a4, $s6, 16
	beqz	$a4, .LBB29_27
# %bb.26:                               # %land.lhs.true112
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.wu	$a5, $a2, 0
	slli.d	$a6, $a5, 4
	alsl.d	$a5, $a5, $a6, 3
	ldx.d	$a5, $t1, $a5
	bne	$a4, $a5, .LBB29_10
.LBB29_27:                              # %lor.lhs.false125
                                        #   in Loop: Header=BB29_21 Depth=4
	ld.d	$a4, $s7, 16
	beqz	$a4, .LBB29_19
# %bb.28:                               # %lor.lhs.false125
                                        #   in Loop: Header=BB29_21 Depth=4
	beq	$a4, $a3, .LBB29_19
	b	.LBB29_10
.LBB29_29:                              # %for.end
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.w	$a2, $s5, 176
	ld.w	$a0, $s2, 176
	bne	$a2, $a0, .LBB29_10
# %bb.30:                               # %for.cond164.preheader
                                        #   in Loop: Header=BB29_12 Depth=3
	beqz	$a2, .LBB29_41
# %bb.31:                               # %for.body169.lr.ph
                                        #   in Loop: Header=BB29_12 Depth=3
	ld.d	$a0, $s5, 184
	ld.d	$a1, $s2, 184
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB29_34
	.p2align	4, , 16
.LBB29_32:                              # %if.end237
                                        #   in Loop: Header=BB29_34 Depth=4
	st.d	$a4, $s6, 8
	st.d	$a3, $s7, 8
.LBB29_33:                              # %for.inc251
                                        #   in Loop: Header=BB29_34 Depth=4
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	beqz	$a2, .LBB29_41
.LBB29_34:                              # %for.body169
                                        #   Parent Loop BB29_3 Depth=1
                                        #     Parent Loop BB29_6 Depth=2
                                        #       Parent Loop BB29_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a3, $a3, 16
	ld.d	$a4, $a4, 16
	beq	$a3, $a4, .LBB29_33
# %bb.35:                               # %if.end182
                                        #   in Loop: Header=BB29_34 Depth=4
	ld.d	$a5, $a3, 8
	ld.d	$a6, $a4, 8
	bne	$a5, $a6, .LBB29_10
# %bb.36:                               # %if.end197
                                        #   in Loop: Header=BB29_34 Depth=4
	ld.w	$a5, $a3, 32
	ld.w	$a6, $a4, 32
	beq	$a5, $a6, .LBB29_33
# %bb.37:                               # %if.then213
                                        #   in Loop: Header=BB29_34 Depth=4
	ld.d	$a5, $s6, 8
	beqz	$a5, .LBB29_39
# %bb.38:                               # %if.then213
                                        #   in Loop: Header=BB29_34 Depth=4
	bne	$a5, $a4, .LBB29_10
.LBB29_39:                              # %lor.lhs.false224
                                        #   in Loop: Header=BB29_34 Depth=4
	ld.d	$a5, $s7, 8
	beqz	$a5, .LBB29_32
# %bb.40:                               # %lor.lhs.false224
                                        #   in Loop: Header=BB29_34 Depth=4
	beq	$a5, $a3, .LBB29_32
	b	.LBB29_10
.LBB29_41:                              # %for.end253
                                        #   in Loop: Header=BB29_12 Depth=3
	st.d	$s5, $s6, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB29_10
.LBB29_42:                              # %for.cond261.preheader
	beqz	$s6, .LBB29_69
# %bb.43:                               # %for.body266.lr.ph
	pcalau12i	$a0, %got_pc_hi20(verbose_level)
	ld.d	$s7, $a0, %got_pc_lo12(verbose_level)
	move	$s8, $zero
	move	$s2, $zero
	ld.w	$a0, $s7, 0
	ori	$s3, $zero, 3
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$s1, $a1, %pc_lo12(.L.str.37)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$s5, $a1, %pc_lo12(.L.str.38)
	b	.LBB29_46
	.p2align	4, , 16
.LBB29_44:                              # %if.end310
                                        #   in Loop: Header=BB29_46 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.wu	$s6, $fp, 88
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
.LBB29_45:                              # %for.inc314
                                        #   in Loop: Header=BB29_46 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s8, $s8, 8
	bgeu	$s2, $s6, .LBB29_52
.LBB29_46:                              # %for.body266
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 96
	ldx.d	$a1, $a1, $s8
	ld.wu	$a1, $a1, 0
	slli.d	$a2, $a1, 4
	alsl.d	$a3, $a1, $a2, 3
	ldx.d	$s0, $t1, $a3
	beqz	$s0, .LBB29_45
# %bb.47:                               # %for.body266
                                        #   in Loop: Header=BB29_46 Depth=1
	blt	$a0, $s3, .LBB29_45
# %bb.48:                               # %if.then279
                                        #   in Loop: Header=BB29_46 Depth=1
	ld.w	$a2, $s0, 0
	addi.w	$a1, $a1, 0
	add.d	$s6, $t1, $a3
	move	$a0, $s1
	move	$s4, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 16
	beqz	$a0, .LBB29_50
# %bb.49:                               # %if.then286
                                        #   in Loop: Header=BB29_46 Depth=1
	ld.wu	$a1, $s0, 0
	slli.d	$a2, $a1, 4
	alsl.d	$a1, $a1, $a2, 3
	add.d	$a1, $s4, $a1
	ld.d	$a2, $a1, 16
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB29_50:                              # %if.end296
                                        #   in Loop: Header=BB29_46 Depth=1
	ld.d	$s6, $s6, 8
	beqz	$s6, .LBB29_44
# %bb.51:                               # %if.then299
                                        #   in Loop: Header=BB29_46 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(print_rule)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 0
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(print_rule)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 93
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	b	.LBB29_44
.LBB29_52:                              # %for.cond317.preheader
	beqz	$s6, .LBB29_69
# %bb.53:                               # %for.body322.lr.ph
	ld.d	$a0, $fp, 96
	ori	$a1, $zero, 24
	ori	$a2, $zero, 2
	move	$a3, $s6
	b	.LBB29_57
.LBB29_54:                              # %if.then352
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.wu	$a7, $a5, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $t1, $a7
	ld.d	$a7, $a7, 8
	st.d	$a5, $a4, 408
	st.d	$a7, $a4, 416
	addi.d	$a5, $a6, 8
.LBB29_55:                              # %for.inc398.sink.split
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.d	$a5, $a5, 0
	st.d	$a5, $a4, 424
.LBB29_56:                              # %for.inc398
                                        #   in Loop: Header=BB29_57 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	beqz	$a3, .LBB29_64
.LBB29_57:                              # %for.body322
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	ld.wu	$a5, $a4, 0
	slli.d	$a6, $a5, 4
	alsl.d	$a6, $a5, $a6, 3
	ldx.d	$a5, $t1, $a6
	beqz	$a5, .LBB29_56
# %bb.58:                               # %land.lhs.true332
                                        #   in Loop: Header=BB29_57 Depth=1
	add.d	$a6, $t1, $a6
	ld.d	$a7, $a6, 16
	beqz	$a7, .LBB29_56
# %bb.59:                               # %if.then335
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.wu	$a7, $a7, 0
	slli.d	$t0, $a7, 4
	alsl.d	$a7, $a7, $t0, 3
	add.d	$a7, $t1, $a7
	ld.d	$a7, $a7, 8
	beqz	$a7, .LBB29_61
# %bb.60:                               # %land.lhs.true342
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.w	$a7, $a7, 32
	beq	$a7, $a2, .LBB29_54
.LBB29_61:                              # %if.else
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.wu	$a7, $a5, 0
	mul.d	$t0, $a7, $a1
	add.d	$t0, $t1, $t0
	ld.d	$t0, $t0, 16
	ld.wu	$t0, $t0, 0
	mul.d	$t0, $t0, $a1
	add.d	$t0, $t1, $t0
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB29_56
# %bb.62:                               # %land.lhs.true370
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.w	$t0, $t0, 32
	bne	$t0, $a2, .LBB29_56
# %bb.63:                               # %if.then384
                                        #   in Loop: Header=BB29_57 Depth=1
	ld.d	$a6, $a6, 8
	st.d	$a4, $a5, 408
	st.d	$a6, $a4, 416
	slli.d	$a5, $a7, 4
	alsl.d	$a5, $a7, $a5, 3
	add.d	$a5, $t1, $a5
	addi.d	$a5, $a5, 8
	b	.LBB29_55
.LBB29_64:                              # %for.body406.lr.ph
	ld.w	$a0, $s7, 0
	move	$s0, $zero
	move	$s2, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$s1, $a1, %pc_lo12(.L.str.43)
	b	.LBB29_66
	.p2align	4, , 16
.LBB29_65:                              # %for.inc422
                                        #   in Loop: Header=BB29_66 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 8
	bgeu	$s2, $s6, .LBB29_69
.LBB29_66:                              # %for.body406
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 96
	ldx.d	$a1, $a1, $s0
	ld.d	$a2, $a1, 408
	beqz	$a2, .LBB29_65
# %bb.67:                               # %for.body406
                                        #   in Loop: Header=BB29_66 Depth=1
	beqz	$a0, .LBB29_65
# %bb.68:                               # %if.then415
                                        #   in Loop: Header=BB29_66 Depth=1
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 0
	ld.wu	$s6, $fp, 88
	b	.LBB29_65
.LBB29_69:                              # %for.end424
	move	$a0, $t1
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
.Lfunc_end29:
	.size	build_eq, .Lfunc_end29-build_eq
                                        # -- End function
	.globl	new_D_Grammar                   # -- Begin function new_D_Grammar
	.p2align	5
	.type	new_D_Grammar,@function
new_D_Grammar:                          # @new_D_Grammar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 592
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup_str)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	new_D_Grammar, .Lfunc_end30-new_D_Grammar
                                        # -- End function
	.globl	free_D_Grammar                  # -- Begin function free_D_Grammar
	.p2align	5
	.type	free_D_Grammar,@function
free_D_Grammar:                         # @free_D_Grammar
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end31:
	.size	free_D_Grammar, .Lfunc_end31-free_D_Grammar
                                        # -- End function
	.globl	parse_grammar                   # -- Begin function parse_grammar
	.p2align	5
	.type	parse_grammar,@function
parse_grammar:                          # @parse_grammar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s1, $a2
	move	$s3, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a1, $a1, %pc_lo12(.L.str.44)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
	beqz	$a0, .LBB32_6
# %bb.1:                                # %if.end
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(sbuf_read)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_6
# %bb.2:                                # %if.end5
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(initialize_productions)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(new_D_Parser)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	st.d	$fp, $a0, 0
	st.d	$a1, $a0, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(dparse)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_6
# %bb.3:                                # %if.then12
	ld.w	$a0, $fp, 8
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB32_5
# %bb.4:                                # %if.then14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(finish_productions)
	jirl	$ra, $ra, 0
.LBB32_5:                               # %cleanup
	move	$s0, $zero
.LBB32_6:                               # %cleanup
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end32:
	.size	parse_grammar, .Lfunc_end32-parse_grammar
                                        # -- End function
	.globl	build_grammar                   # -- Begin function build_grammar
	.p2align	5
	.type	build_grammar,@function
build_grammar:                          # @build_grammar
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.wu	$s2, $a0, 8
	st.w	$zero, $a0, 588
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$s2, .LBB33_39
# %bb.1:                                # %for.body.lr.ph.i.lr.ph.i
	move	$a0, $zero
	ori	$s4, $zero, 2
	ori	$s7, $zero, 3
	b	.LBB33_3
	.p2align	4, , 16
.LBB33_2:                               # %for.inc71.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.wu	$s2, $s6, 8
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s2, .LBB33_40
.LBB33_3:                               # %for.body.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_5 Depth 2
                                        #     Child Loop BB33_13 Depth 2
                                        #       Child Loop BB33_18 Depth 3
                                        #         Child Loop BB33_22 Depth 4
                                        #         Child Loop BB33_28 Depth 4
	ld.d	$fp, $s6, 16
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s1, $a0, 8
	b	.LBB33_5
	.p2align	4, , 16
.LBB33_4:                               # %for.inc.i.i
                                        #   in Loop: Header=BB33_5 Depth=2
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	beqz	$s2, .LBB33_38
.LBB33_5:                               # %for.body.i.i
                                        #   Parent Loop BB33_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $fp, 0
	ld.w	$a0, $s3, 8
	bne	$a0, $s1, .LBB33_4
# %bb.6:                                # %cleanup.i.i
                                        #   in Loop: Header=BB33_5 Depth=2
	ld.d	$a0, $s3, 0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_4
# %bb.7:                                # %lookup_production.exit.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beq	$fp, $s3, .LBB33_9
.LBB33_8:                               # %if.then.i
                                        #   in Loop: Header=BB33_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB33_9:                               # %if.end.i
                                        #   in Loop: Header=BB33_3 Depth=1
	ld.w	$a0, $fp, 16
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.w	$a1, $fp, 56
	beqz	$a0, .LBB33_2
# %bb.10:                               # %for.body7.lr.ph.i
                                        #   in Loop: Header=BB33_3 Depth=1
	move	$a1, $zero
	b	.LBB33_13
	.p2align	4, , 16
.LBB33_11:                              # %for.end.thread.i
                                        #   in Loop: Header=BB33_13 Depth=2
	ld.d	$a0, $s3, 72
	st.w	$zero, $a0, 4
.LBB33_12:                              # %for.inc68.i
                                        #   in Loop: Header=BB33_13 Depth=2
	ld.wu	$a0, $fp, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bgeu	$a1, $a0, .LBB33_2
.LBB33_13:                              # %for.body7.i
                                        #   Parent Loop BB33_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_18 Depth 3
                                        #         Child Loop BB33_22 Depth 4
                                        #         Child Loop BB33_28 Depth 4
	ld.d	$a0, $fp, 24
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s3, $a0, $a1
	ld.w	$a0, $s6, 588
	ld.w	$a1, $s3, 32
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 588
	st.w	$a0, $s3, 0
	beqz	$a1, .LBB33_11
# %bb.14:                               # %for.body17.lr.ph.i
                                        #   in Loop: Header=BB33_13 Depth=2
	move	$s6, $zero
	move	$s2, $zero
	b	.LBB33_18
.LBB33_15:                              # %if.end49.thread.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	st.d	$s5, $fp, 16
	move	$s2, $s5
.LBB33_16:                              # %for.inc.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ori	$s4, $zero, 2
	.p2align	4, , 16
.LBB33_17:                              # %for.inc.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.wu	$a0, $s3, 32
	addi.d	$s6, $s6, 1
	bgeu	$s6, $a0, .LBB33_34
.LBB33_18:                              # %for.body17.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_22 Depth 4
                                        #         Child Loop BB33_28 Depth 4
	ld.d	$a0, $s3, 40
	slli.d	$a1, $s6, 3
	ldx.d	$fp, $a0, $a1
	ld.w	$a0, $fp, 0
	st.w	$s6, $fp, 4
	bne	$a0, $s4, .LBB33_32
# %bb.19:                               # %if.then24.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.w	$s0, $fp, 24
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$s8, $a0, 8
	ld.d	$s1, $fp, 16
	beqz	$s8, .LBB33_25
# %bb.20:                               # %for.body.lr.ph.i57.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 16
	b	.LBB33_22
	.p2align	4, , 16
.LBB33_21:                              # %for.inc.i66.i
                                        #   in Loop: Header=BB33_22 Depth=4
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, 8
	beqz	$s8, .LBB33_25
.LBB33_22:                              # %for.body.i61.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_13 Depth=2
                                        #       Parent Loop BB33_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s5, $s4, 0
	ld.w	$a0, $s5, 8
	bne	$a0, $s0, .LBB33_21
# %bb.23:                               # %cleanup.i70.i
                                        #   in Loop: Header=BB33_22 Depth=4
	ld.d	$a0, $s5, 0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_21
# %bb.24:                               # %if.end49.thread101.i
                                        #   in Loop: Header=BB33_18 Depth=3
	st.w	$zero, $fp, 0
	st.d	$s5, $fp, 16
	b	.LBB33_16
	.p2align	4, , 16
.LBB33_25:                              # %if.else.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$s8, $a0, 48
	beqz	$s8, .LBB33_31
# %bb.26:                               # %for.body.lr.ph.i74.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 56
	b	.LBB33_28
	.p2align	4, , 16
.LBB33_27:                              # %for.inc.i82.i
                                        #   in Loop: Header=BB33_28 Depth=4
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, 8
	beqz	$s8, .LBB33_31
.LBB33_28:                              # %for.body.i78.i
                                        #   Parent Loop BB33_3 Depth=1
                                        #     Parent Loop BB33_13 Depth=2
                                        #       Parent Loop BB33_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s5, $s4, 0
	ld.w	$a0, $s5, 0
	bne	$a0, $s7, .LBB33_27
# %bb.29:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB33_28 Depth=4
	ld.w	$a0, $s5, 32
	bne	$a0, $s0, .LBB33_27
# %bb.30:                               # %cleanup.i86.i
                                        #   in Loop: Header=BB33_28 Depth=4
	ld.d	$a0, $s5, 24
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_27
	b	.LBB33_15
	.p2align	4, , 16
.LBB33_31:                              # %if.else38.i
                                        #   in Loop: Header=BB33_18 Depth=3
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	slti	$a0, $s0, 255
	ori	$a1, $zero, 255
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $sp, 40
	stx.b	$zero, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$s4, $zero, 2
.LBB33_32:                              # %if.end49.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB33_17
# %bb.33:                               # %if.end49.if.then53_crit_edge.i
                                        #   in Loop: Header=BB33_18 Depth=3
	ld.d	$s2, $fp, 16
	b	.LBB33_17
	.p2align	4, , 16
.LBB33_34:                              # %for.end.i
                                        #   in Loop: Header=BB33_13 Depth=2
	ld.d	$a1, $s3, 72
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $s6, 248
	st.w	$a0, $a1, 4
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a2, .LBB33_12
# %bb.35:                               # %for.end.i
                                        #   in Loop: Header=BB33_13 Depth=2
	beqz	$s2, .LBB33_12
# %bb.36:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB33_13 Depth=2
	ld.w	$a0, $s3, 28
	beqz	$a0, .LBB33_12
# %bb.37:                               # %if.then64.i
                                        #   in Loop: Header=BB33_13 Depth=2
	ld.w	$a1, $s3, 24
	st.w	$a0, $s2, 12
	st.w	$a1, $s2, 16
	b	.LBB33_12
	.p2align	4, , 16
.LBB33_38:                              #   in Loop: Header=BB33_3 Depth=1
	move	$s3, $zero
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	bne	$fp, $s3, .LBB33_8
	b	.LBB33_9
.LBB33_39:
	move	$s2, $zero
.LBB33_40:                              # %for.cond74.preheader.i
	ld.w	$a0, $s6, 48
	beqz	$a0, .LBB33_48
# %bb.41:                               # %for.body78.lr.ph.i
	ld.d	$a1, $s6, 56
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $a0, 31, 0
	bgeu	$a0, $a3, .LBB33_43
# %bb.42:
	move	$a0, $zero
	b	.LBB33_46
.LBB33_43:                              # %vector.ph
	bstrpick.d	$a0, $a2, 31, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a1, 32
	ori	$a4, $zero, 7
	move	$a5, $a0
	.p2align	4, , 16
.LBB33_44:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a6, $a4, -7
	addi.d	$a7, $a4, -6
	addi.d	$t0, $a4, -5
	addi.d	$t1, $a4, -4
	addi.d	$t2, $a4, -3
	addi.d	$t3, $a4, -2
	addi.d	$t4, $a4, -1
	ld.d	$t5, $a3, -32
	ld.d	$t6, $a3, -24
	ld.d	$t7, $a3, -16
	ld.d	$t8, $a3, -8
	ld.d	$fp, $a3, 0
	ld.d	$s0, $a3, 8
	ld.d	$s1, $a3, 16
	ld.d	$s3, $a3, 24
	st.w	$a6, $t5, 4
	st.w	$a7, $t6, 4
	st.w	$t0, $t7, 4
	st.w	$t1, $t8, 4
	st.w	$t2, $fp, 4
	st.w	$t3, $s0, 4
	st.w	$t4, $s1, 4
	st.w	$a4, $s3, 4
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 8
	addi.d	$a3, $a3, 64
	bnez	$a5, .LBB33_44
# %bb.45:                               # %middle.block
	beq	$a0, $a2, .LBB33_48
.LBB33_46:                              # %for.body78.i.preheader
	sub.d	$a2, $a2, $a0
	alsl.d	$a1, $a0, $a1, 3
	.p2align	4, , 16
.LBB33_47:                              # %for.body78.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 0
	st.w	$a0, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB33_47
.LBB33_48:                              # %for.end86.i
	beqz	$s2, .LBB33_85
# %bb.49:                               # %for.cond1.preheader.lr.ph.i.i
	ld.d	$a0, $s6, 16
	move	$a1, $zero
	b	.LBB33_52
	.p2align	4, , 16
.LBB33_50:                              # %if.then.i.i
                                        #   in Loop: Header=BB33_52 Depth=1
	st.d	$a5, $a2, 64
.LBB33_51:                              # %for.inc27.i.i
                                        #   in Loop: Header=BB33_52 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s2, .LBB33_56
.LBB33_52:                              # %for.cond1.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_54 Depth 2
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.wu	$a3, $a2, 16
	beqz	$a3, .LBB33_51
# %bb.53:                               # %for.body5.lr.ph.i.i
                                        #   in Loop: Header=BB33_52 Depth=1
	ld.d	$a4, $a2, 24
	.p2align	4, , 16
.LBB33_54:                              # %for.body5.i.i
                                        #   Parent Loop BB33_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ld.w	$a6, $a5, 32
	beqz	$a6, .LBB33_50
# %bb.55:                               # %for.cond1.i.i
                                        #   in Loop: Header=BB33_54 Depth=2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB33_54
	b	.LBB33_51
.LBB33_56:                              # %for.body35.us.i.i.preheader
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB33_58
	.p2align	4, , 16
.LBB33_57:                              # %for.cond31.while.cond.loopexit_crit_edge.us.i.i
                                        #   in Loop: Header=BB33_58 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	beqz	$a3, .LBB33_67
.LBB33_58:                              # %for.body35.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_63 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $a0, $a3
	ld.d	$a4, $a3, 64
	beqz	$a4, .LBB33_60
.LBB33_59:                              #   in Loop: Header=BB33_58 Depth=1
	move	$a3, $a2
	addi.d	$a1, $a1, 1
	move	$a2, $a3
	bne	$a1, $s2, .LBB33_58
	b	.LBB33_57
	.p2align	4, , 16
.LBB33_60:                              # %if.then42.us.i.i
                                        #   in Loop: Header=BB33_58 Depth=1
	ld.w	$a4, $a3, 16
	beqz	$a4, .LBB33_59
# %bb.61:                               # %for.cond52.preheader.us.i.i
                                        #   in Loop: Header=BB33_58 Depth=1
	ld.d	$a4, $a3, 24
	ld.d	$a4, $a4, 0
	ld.wu	$a5, $a4, 32
	beqz	$a5, .LBB33_66
# %bb.62:                               # %for.body64.lr.ph.us.i.i
                                        #   in Loop: Header=BB33_58 Depth=1
	ld.d	$a6, $a4, 40
	.p2align	4, , 16
.LBB33_63:                              # %for.body64.us.i.i
                                        #   Parent Loop BB33_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a6, 0
	ld.w	$t0, $a7, 0
	bnez	$t0, .LBB33_59
# %bb.64:                               # %lor.lhs.false.us.i.i
                                        #   in Loop: Header=BB33_63 Depth=2
	ld.d	$a7, $a7, 16
	ld.d	$a7, $a7, 64
	beqz	$a7, .LBB33_59
# %bb.65:                               # %for.cond52.us.i.i
                                        #   in Loop: Header=BB33_63 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB33_63
.LBB33_66:                              # %for.end85.us.i.i
                                        #   in Loop: Header=BB33_58 Depth=1
	st.d	$a4, $a3, 64
	ori	$a3, $zero, 1
	addi.d	$a1, $a1, 1
	move	$a2, $a3
	bne	$a1, $s2, .LBB33_58
	b	.LBB33_57
.LBB33_67:                              # %for.body.lr.ph.i
	move	$fp, $zero
	move	$s0, $zero
	b	.LBB33_69
	.p2align	4, , 16
.LBB33_68:                              # %for.inc.i22
                                        #   in Loop: Header=BB33_69 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s0, $s2, .LBB33_71
.LBB33_69:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 16
	ldx.d	$a1, $a0, $fp
	ld.bu	$a0, $a1, 60
	andi	$a0, $a0, 1
	beqz	$a0, .LBB33_68
# %bb.70:                               # %if.end.i20
                                        #   in Loop: Header=BB33_69 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(convert_regex_production_one)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $s6, 8
	b	.LBB33_68
.LBB33_71:                              # %for.cond2.preheader.i
	beqz	$s2, .LBB33_85
# %bb.72:                               # %for.body6.i.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	b	.LBB33_75
	.p2align	4, , 16
.LBB33_73:                              # %for.inc57.loopexit.i
                                        #   in Loop: Header=BB33_75 Depth=1
	ld.wu	$s2, $s6, 8
.LBB33_74:                              # %for.inc57.i
                                        #   in Loop: Header=BB33_75 Depth=1
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s2, .LBB33_85
.LBB33_75:                              # %for.body6.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_79 Depth 2
                                        #       Child Loop BB33_82 Depth 3
	ld.d	$a2, $s6, 16
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	ld.wu	$a6, $a2, 16
	beqz	$a6, .LBB33_74
# %bb.76:                               # %for.body14.lr.ph.i
                                        #   in Loop: Header=BB33_75 Depth=1
	move	$a3, $zero
	b	.LBB33_79
	.p2align	4, , 16
.LBB33_77:                              # %for.inc54.loopexit.i
                                        #   in Loop: Header=BB33_79 Depth=2
	ld.wu	$a6, $a2, 16
.LBB33_78:                              # %for.inc54.i
                                        #   in Loop: Header=BB33_79 Depth=2
	addi.d	$a3, $a3, 1
	bgeu	$a3, $a6, .LBB33_73
.LBB33_79:                              # %for.body14.i
                                        #   Parent Loop BB33_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_82 Depth 3
	ld.d	$a4, $a2, 24
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ld.wu	$a5, $a4, 32
	beqz	$a5, .LBB33_78
# %bb.80:                               # %for.body22.lr.ph.i
                                        #   in Loop: Header=BB33_79 Depth=2
	ld.d	$a6, $a4, 40
	move	$a7, $zero
	move	$t0, $zero
	b	.LBB33_82
	.p2align	4, , 16
.LBB33_81:                              # %for.inc51.i
                                        #   in Loop: Header=BB33_82 Depth=3
	addi.d	$t0, $t0, 1
	addi.d	$a7, $a7, 8
	bgeu	$t0, $a5, .LBB33_77
.LBB33_82:                              # %for.body22.i
                                        #   Parent Loop BB33_75 Depth=1
                                        #     Parent Loop BB33_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t1, $a6, $a7
	ld.w	$t2, $t1, 0
	bnez	$t2, .LBB33_81
# %bb.83:                               # %land.lhs.true.i27
                                        #   in Loop: Header=BB33_82 Depth=3
	ld.d	$t2, $t1, 16
	ld.d	$t2, $t2, 216
	beqz	$t2, .LBB33_81
# %bb.84:                               # %if.then33.i
                                        #   in Loop: Header=BB33_82 Depth=3
	st.d	$t2, $t1, 16
	ld.d	$a6, $a4, 40
	ldx.d	$t1, $a6, $a7
	ld.wu	$a5, $a4, 32
	st.w	$a1, $t1, 0
	b	.LBB33_81
.LBB33_85:                              # %convert_regex_productions.exit
	ld.w	$a0, $s6, 264
	addi.d	$s0, $s6, 160
	addi.d	$fp, $s6, 176
	beqz	$a0, .LBB33_94
# %bb.86:                               # %if.then.i29
	ld.d	$a0, $s6, 16
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s6, 160
	ld.d	$a3, $s6, 168
	move	$a1, $a0
	st.d	$s1, $a0, 0
	st.w	$zero, $a0, 8
	st.w	$a2, $a0, 12
	beqz	$a3, .LBB33_90
# %bb.87:                               # %if.else.i.i
	beq	$a3, $fp, .LBB33_91
# %bb.88:                               # %if.else26.i.i
	andi	$a0, $a2, 7
	beqz	$a0, .LBB33_93
# %bb.89:                               # %if.then30.i.i
	addi.d	$a0, $a2, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	b	.LBB33_94
.LBB33_90:                              # %if.then.i.i63
	st.d	$fp, $s6, 168
	addi.d	$a0, $a2, 1
	st.w	$a0, $s6, 160
	slli.d	$a0, $a2, 3
	stx.d	$a1, $fp, $a0
	b	.LBB33_94
.LBB33_91:                              # %if.then14.i.i
	ori	$a0, $zero, 2
	bltu	$a0, $a2, .LBB33_93
# %bb.92:                               # %if.then18.i.i
	addi.w	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	b	.LBB33_94
.LBB33_93:                              # %if.end40.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB33_94:                              # %if.end.i33
	ld.w	$a0, $s6, 268
	beqz	$a0, .LBB33_103
# %bb.95:                               # %if.then2.i
	ld.d	$a0, $s6, 16
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	ori	$s3, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $s6, 160
	ld.d	$a3, $s6, 168
	move	$a1, $a0
	st.d	$s1, $a0, 0
	st.w	$s3, $a0, 8
	st.w	$a2, $a0, 12
	beqz	$a3, .LBB33_99
# %bb.96:                               # %if.else.i63.i
	beq	$a3, $fp, .LBB33_100
# %bb.97:                               # %if.else26.i65.i
	andi	$a0, $a2, 7
	beqz	$a0, .LBB33_102
# %bb.98:                               # %if.then30.i68.i
	addi.d	$a0, $a2, 1
	st.w	$a0, $s0, 0
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	b	.LBB33_103
.LBB33_99:                              # %if.then.i79.i
	st.d	$fp, $s6, 168
	addi.d	$a0, $a2, 1
	st.w	$a0, $s6, 160
	slli.d	$a0, $a2, 3
	stx.d	$a1, $fp, $a0
	b	.LBB33_103
.LBB33_100:                             # %if.then14.i73.i
	ori	$a0, $zero, 2
	bltu	$a0, $a2, .LBB33_102
# %bb.101:                              # %if.then18.i75.i
	addi.w	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a3, $a0
	b	.LBB33_103
.LBB33_102:                             # %if.end40.i72.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB33_103:                             # %if.end7.i
	ld.wu	$a0, $s6, 160
	beqz	$a0, .LBB33_119
# %bb.104:                              # %for.body.lr.ph.i34
	move	$fp, $zero
	ori	$s3, $zero, 2
	pcalau12i	$a1, %pc_hi20(.L.str.73)
	addi.d	$s0, $a1, %pc_lo12(.L.str.73)
	b	.LBB33_108
	.p2align	4, , 16
.LBB33_105:                             # %if.then17.i
                                        #   in Loop: Header=BB33_108 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	move	$s7, $zero
.LBB33_106:                             # %if.end20.i
                                        #   in Loop: Header=BB33_108 Depth=1
	st.d	$s7, $s4, 16
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$a0, $s6, 160
	st.w	$zero, $s4, 0
.LBB33_107:                             # %for.inc.i39
                                        #   in Loop: Header=BB33_108 Depth=1
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB33_114
.LBB33_108:                             # %for.body.i36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_112 Depth 2
	ld.d	$a1, $s6, 168
	slli.d	$a2, $fp, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$s4, $a1, 0
	ld.w	$a1, $s4, 0
	bne	$a1, $s3, .LBB33_107
# %bb.109:                              # %if.then12.i
                                        #   in Loop: Header=BB33_108 Depth=1
	ld.wu	$s5, $s6, 8
	ld.d	$s1, $s4, 16
	beqz	$s5, .LBB33_105
# %bb.110:                              # %for.body.lr.ph.i.i50
                                        #   in Loop: Header=BB33_108 Depth=1
	ld.w	$s2, $s4, 24
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 16
	b	.LBB33_112
	.p2align	4, , 16
.LBB33_111:                             # %for.inc.i.i57
                                        #   in Loop: Header=BB33_112 Depth=2
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	beqz	$s5, .LBB33_105
.LBB33_112:                             # %for.body.i.i53
                                        #   Parent Loop BB33_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s7, $s6, 0
	ld.w	$a0, $s7, 8
	bne	$a0, $s2, .LBB33_111
# %bb.113:                              # %cleanup.i.i61
                                        #   in Loop: Header=BB33_112 Depth=2
	ld.d	$a0, $s7, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_111
	b	.LBB33_106
.LBB33_114:                             # %for.cond24.preheader.i
	beqz	$a0, .LBB33_119
# %bb.115:                              # %for.body28.i.preheader
	move	$fp, $zero
	move	$s0, $zero
	ori	$s1, $zero, 2
	b	.LBB33_117
	.p2align	4, , 16
.LBB33_116:                             # %for.inc47.i
                                        #   in Loop: Header=BB33_117 Depth=1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 8
	bgeu	$s0, $a0, .LBB33_119
.LBB33_117:                             # %for.body28.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 168
	ldx.d	$a2, $a1, $fp
	ld.w	$a1, $a2, 8
	bltu	$s1, $a1, .LBB33_116
# %bb.118:                              # %if.then35.i
                                        #   in Loop: Header=BB33_117 Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 16
	move	$a1, $a0
	pcaddu18i	$ra, %call36(set_declaration_group)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s6, 160
	b	.LBB33_116
.LBB33_119:                             # %for.cond50.preheader.i
	ld.wu	$s1, $s6, 8
	beqz	$s1, .LBB33_162
# %bb.120:                              # %for.body54.lr.ph.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	b	.LBB33_123
	.p2align	4, , 16
.LBB33_121:                             # %for.inc141.loopexit.i
                                        #   in Loop: Header=BB33_123 Depth=1
	ld.wu	$s1, $s6, 8
.LBB33_122:                             # %for.inc141.i
                                        #   in Loop: Header=BB33_123 Depth=1
	addi.d	$a0, $a0, 1
	bgeu	$a0, $s1, .LBB33_138
.LBB33_123:                             # %for.body54.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_127 Depth 2
                                        #       Child Loop BB33_132 Depth 3
	ld.d	$a2, $s6, 16
	slli.d	$a3, $a0, 3
	ldx.d	$a2, $a2, $a3
	ld.wu	$a5, $a2, 16
	beqz	$a5, .LBB33_122
# %bb.124:                              # %for.body62.lr.ph.i
                                        #   in Loop: Header=BB33_123 Depth=1
	move	$a3, $zero
	b	.LBB33_127
	.p2align	4, , 16
.LBB33_125:                             # %for.inc138.loopexit.i
                                        #   in Loop: Header=BB33_127 Depth=2
	ld.wu	$a5, $a2, 16
.LBB33_126:                             # %for.inc138.i
                                        #   in Loop: Header=BB33_127 Depth=2
	addi.d	$a3, $a3, 1
	bgeu	$a3, $a5, .LBB33_121
.LBB33_127:                             # %for.body62.i
                                        #   Parent Loop BB33_123 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_132 Depth 3
	ld.d	$a4, $a2, 24
	slli.d	$a6, $a3, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $a4, 32
	beqz	$a6, .LBB33_126
# %bb.128:                              # %for.body70.lr.ph.i
                                        #   in Loop: Header=BB33_127 Depth=2
	move	$a5, $zero
	move	$a6, $zero
	b	.LBB33_132
.LBB33_129:                             # %land.lhs.true.i46
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.d	$a7, $a7, 16
	ld.bu	$t0, $a7, 36
	andi	$t0, $t0, 248
.LBB33_130:                             # %if.else124.i
                                        #   in Loop: Header=BB33_132 Depth=3
	st.b	$t0, $a7, 36
.LBB33_131:                             # %for.inc135.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.wu	$a7, $a4, 32
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	bgeu	$a6, $a7, .LBB33_125
.LBB33_132:                             # %for.body70.i
                                        #   Parent Loop BB33_123 Depth=1
                                        #     Parent Loop BB33_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a4, 40
	ldx.d	$a7, $a7, $a5
	ld.w	$t0, $a7, 0
	bne	$t0, $a1, .LBB33_131
# %bb.133:                              # %if.then77.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.d	$t0, $a2, 80
	beqz	$t0, .LBB33_129
# %bb.134:                              # %land.lhs.true88.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.d	$t0, $a2, 88
	beqz	$t0, .LBB33_137
# %bb.135:                              # %if.else112.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.d	$t0, $a2, 144
	ld.d	$t1, $a2, 152
	ld.d	$a7, $a7, 16
	ld.w	$t2, $t0, 12
	ld.w	$t1, $t1, 12
	ld.b	$t0, $a7, 36
	bstrins.d	$t0, $zero, 2, 0
	bgeu	$t1, $t2, .LBB33_130
# %bb.136:                              # %if.then118.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ori	$t0, $t0, 1
	b	.LBB33_130
.LBB33_137:                             # %if.then92.i
                                        #   in Loop: Header=BB33_132 Depth=3
	ld.d	$a7, $a7, 16
	ld.bu	$t0, $a7, 36
	srli.d	$t0, $t0, 3
	ori	$t1, $zero, 1
	bstrins.d	$t1, $t0, 7, 3
	st.b	$t1, $a7, 36
	b	.LBB33_131
.LBB33_138:                             # %propogate_declarations.exit
	beqz	$s1, .LBB33_162
# %bb.139:                              # %for.body.lr.ph.i66
	move	$a2, $zero
	ori	$s2, $zero, 1
	b	.LBB33_142
	.p2align	4, , 16
.LBB33_140:                             # %for.inc24.loopexit.i
                                        #   in Loop: Header=BB33_142 Depth=1
	ld.wu	$s1, $s6, 8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB33_141:                             # %for.inc24.i
                                        #   in Loop: Header=BB33_142 Depth=1
	addi.d	$a2, $a2, 1
	bgeu	$a2, $s1, .LBB33_164
.LBB33_142:                             # %for.body.i70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_146 Depth 2
                                        #       Child Loop BB33_151 Depth 3
                                        #         Child Loop BB33_156 Depth 4
	ld.d	$a0, $s6, 16
	slli.d	$a1, $a2, 3
	ldx.d	$a3, $a0, $a1
	ld.wu	$a1, $a3, 16
	beqz	$a1, .LBB33_141
# %bb.143:                              # %for.body5.lr.ph.i
                                        #   in Loop: Header=BB33_142 Depth=1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $zero
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	b	.LBB33_146
	.p2align	4, , 16
.LBB33_144:                             # %for.inc21.loopexit.i
                                        #   in Loop: Header=BB33_146 Depth=2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a1, $a3, 16
.LBB33_145:                             # %for.inc21.i
                                        #   in Loop: Header=BB33_146 Depth=2
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a1, .LBB33_140
.LBB33_146:                             # %for.body5.i
                                        #   Parent Loop BB33_142 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_151 Depth 3
                                        #         Child Loop BB33_156 Depth 4
	ld.d	$a0, $a3, 24
	slli.d	$a2, $fp, 3
	ldx.d	$s1, $a0, $a2
	ld.wu	$a0, $s1, 32
	beqz	$a0, .LBB33_145
# %bb.147:                              # %for.body13.lr.ph.i
                                        #   in Loop: Header=BB33_146 Depth=2
	move	$s4, $zero
	b	.LBB33_151
	.p2align	4, , 16
.LBB33_148:                             #   in Loop: Header=BB33_151 Depth=3
	move	$s6, $s3
.LBB33_149:                             # %unique_term.exit.i
                                        #   in Loop: Header=BB33_151 Depth=3
	st.d	$s6, $s5, 16
	ld.wu	$a0, $s1, 32
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
.LBB33_150:                             # %for.inc.i75
                                        #   in Loop: Header=BB33_151 Depth=3
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a0, .LBB33_144
.LBB33_151:                             # %for.body13.i
                                        #   Parent Loop BB33_142 Depth=1
                                        #     Parent Loop BB33_146 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_156 Depth 4
	ld.d	$a1, $s1, 40
	slli.d	$a2, $s4, 3
	ldx.d	$s5, $a1, $a2
	ld.w	$a1, $s5, 0
	bne	$a1, $s2, .LBB33_150
# %bb.152:                              # %if.then.i78
                                        #   in Loop: Header=BB33_151 Depth=3
	ld.wu	$s7, $s6, 48
	ld.d	$s3, $s5, 16
	beqz	$s7, .LBB33_148
# %bb.153:                              # %for.body.lr.ph.i.i79
                                        #   in Loop: Header=BB33_151 Depth=3
	ld.w	$s8, $s3, 0
	ld.d	$s0, $s6, 56
	b	.LBB33_156
.LBB33_154:                             # %land.lhs.true31.i.i
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.d	$a0, $s3, 24
	ld.d	$a1, $s6, 24
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB33_149
	.p2align	4, , 16
.LBB33_155:                             # %for.inc.i.i86
                                        #   in Loop: Header=BB33_156 Depth=4
	addi.d	$s7, $s7, -1
	addi.d	$s0, $s0, 8
	beqz	$s7, .LBB33_148
.LBB33_156:                             # %for.body.i.i83
                                        #   Parent Loop BB33_142 Depth=1
                                        #     Parent Loop BB33_146 Depth=2
                                        #       Parent Loop BB33_151 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s6, $s0, 0
	ld.w	$a0, $s6, 0
	bne	$s8, $a0, .LBB33_155
# %bb.157:                              # %land.lhs.true.i.i
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.w	$a2, $s3, 32
	ld.w	$a0, $s6, 32
	bne	$a2, $a0, .LBB33_155
# %bb.158:                              # %land.lhs.true10.i.i
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.w	$a0, $s3, 8
	ld.w	$a1, $s6, 8
	bne	$a0, $a1, .LBB33_155
# %bb.159:                              # %land.lhs.true17.i.i
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 248
	beqz	$a0, .LBB33_154
# %bb.160:                              # %lor.lhs.false.i.i91
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.w	$a0, $s3, 12
	ld.w	$a1, $s6, 12
	bne	$a0, $a1, .LBB33_155
# %bb.161:                              # %land.lhs.true24.i.i
                                        #   in Loop: Header=BB33_156 Depth=4
	ld.w	$a0, $s3, 16
	ld.w	$a1, $s6, 16
	beq	$a0, $a1, .LBB33_154
	b	.LBB33_155
	ld.d	$s2, $s6, 16
	ld.d	$s3, $s2, 0
.LBB33_163:
	move	$s1, $zero
	ori	$fp, $zero, 1
	ld.w	$a0, $s6, 260
	bnez	$a0, .LBB33_192
	b	.LBB33_186
	ld.d	$s2, $s6, 16
	ld.d	$s3, $s2, 0
	beqz	$s1, .LBB33_163
# %bb.165:                              # %for.body.lr.ph.i96
	move	$s4, $zero
	ori	$s5, $zero, 5
	ori	$s6, $zero, 3
	b	.LBB33_168
	.p2align	4, , 16
.LBB33_166:                             # %if.then60.i
                                        #   in Loop: Header=BB33_168 Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $fp, 576
	st.d	$a0, $s0, 72
	st.w	$s6, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$a1, $s0, 152
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 588
	st.d	$s7, $a0, 16
	st.d	$s0, $a0, 8
	st.d	$a0, $s7, 208
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 588
	st.w	$a1, $s0, 0
.LBB33_167:                             # %for.inc81.i
                                        #   in Loop: Header=BB33_168 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s1, .LBB33_185
.LBB33_168:                             # %for.body.i100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_183 Depth 2
                                        #     Child Loop BB33_172 Depth 2
                                        #       Child Loop BB33_176 Depth 3
                                        #         Child Loop BB33_178 Depth 4
	slli.d	$a0, $s4, 3
	ldx.d	$s7, $s2, $a0
	ld.bu	$a0, $s7, 60
	andi	$a0, $a0, 28
	bnez	$a0, .LBB33_167
# %bb.169:                              # %if.then.i110
                                        #   in Loop: Header=BB33_168 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 260
	beqz	$a0, .LBB33_180
.LBB33_170:                             # %if.then7.i
                                        #   in Loop: Header=BB33_168 Depth=1
	move	$a0, $zero
	b	.LBB33_172
	.p2align	4, , 16
.LBB33_171:                             # %for.inc54.i120
                                        #   in Loop: Header=BB33_172 Depth=2
	addi.d	$a0, $a0, 1
	beq	$a0, $s1, .LBB33_166
.LBB33_172:                             # %for.cond13.preheader.i
                                        #   Parent Loop BB33_168 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_176 Depth 3
                                        #         Child Loop BB33_178 Depth 4
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $s2, $a1
	ld.wu	$a1, $a2, 16
	beqz	$a1, .LBB33_171
# %bb.173:                              # %for.body20.lr.ph.i
                                        #   in Loop: Header=BB33_172 Depth=2
	ld.d	$a2, $a2, 24
	move	$a3, $zero
	b	.LBB33_176
	.p2align	4, , 16
.LBB33_174:                             # %if.then42.i
                                        #   in Loop: Header=BB33_176 Depth=3
	st.d	$a6, $s7, 208
.LBB33_175:                             # %for.inc51.i119
                                        #   in Loop: Header=BB33_176 Depth=3
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB33_171
.LBB33_176:                             # %for.body20.i
                                        #   Parent Loop BB33_168 Depth=1
                                        #     Parent Loop BB33_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_178 Depth 4
	slli.d	$a4, $a3, 3
	ldx.d	$a5, $a2, $a4
	ld.wu	$a4, $a5, 32
	beqz	$a4, .LBB33_175
# %bb.177:                              # %for.body32.lr.ph.i
                                        #   in Loop: Header=BB33_176 Depth=3
	ld.d	$a5, $a5, 40
	.p2align	4, , 16
.LBB33_178:                             # %for.body32.i
                                        #   Parent Loop BB33_168 Depth=1
                                        #     Parent Loop BB33_172 Depth=2
                                        #       Parent Loop BB33_176 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a6, 16
	beq	$a7, $s7, .LBB33_174
# %bb.179:                              # %for.cond29.i
                                        #   in Loop: Header=BB33_178 Depth=4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB33_178
	b	.LBB33_175
.LBB33_180:                             # %lor.lhs.false.i
                                        #   in Loop: Header=BB33_168 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 160
	beqz	$a0, .LBB33_167
# %bb.181:                              # %for.body.lr.ph.i.i123
                                        #   in Loop: Header=BB33_168 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 168
	b	.LBB33_183
	.p2align	4, , 16
.LBB33_182:                             # %for.inc.i.i128
                                        #   in Loop: Header=BB33_183 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB33_167
.LBB33_183:                             # %for.body.i.i125
                                        #   Parent Loop BB33_168 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 0
	ld.w	$a3, $a2, 8
	bne	$a3, $s5, .LBB33_182
# %bb.184:                              # %land.lhs.true.i.i131
                                        #   in Loop: Header=BB33_183 Depth=2
	ld.d	$a2, $a2, 0
	ld.d	$a2, $a2, 16
	ld.wu	$a2, $a2, 56
	bne	$s4, $a2, .LBB33_182
	b	.LBB33_170
.LBB33_185:
	move	$fp, $zero
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s6, 260
	bnez	$a0, .LBB33_192
.LBB33_186:                             # %land.lhs.true.i103
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 256
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB33_192
# %bb.187:                              # %for.body.i48.i.preheader
	ori	$s5, $zero, 10
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s0, $a0, %pc_lo12(.L.str.75)
	move	$s6, $s2
	move	$s7, $s1
	b	.LBB33_189
	.p2align	4, , 16
.LBB33_188:                             # %for.inc.i51.i
                                        #   in Loop: Header=BB33_189 Depth=1
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	beqz	$s7, .LBB33_192
.LBB33_189:                             # %for.body.i48.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s6, 0
	ld.w	$a0, $s4, 8
	bne	$a0, $s5, .LBB33_188
# %bb.190:                              # %cleanup.i.i107
                                        #   in Loop: Header=BB33_189 Depth=1
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 10
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB33_188
# %bb.191:                              # %if.then90.i
	ori	$a0, $zero, 1
	ori	$a1, $zero, 168
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 8
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 72
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $s3, 576
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 0
	st.d	$s0, $a0, 8
	st.w	$a1, $s0, 152
	ori	$a0, $zero, 1
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 588
	st.d	$s4, $a0, 16
	st.d	$s0, $a0, 8
	st.d	$a0, $s4, 208
	addi.d	$a0, $a1, 1
	st.w	$a0, $s3, 588
	st.w	$a1, $s0, 0
.LBB33_192:                             # %make_elems_for_productions.exit
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	beqz	$fp, .LBB33_197
.LBB33_193:                             # %check_default_actions.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(build_LR_tables)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 88
	beqz	$a0, .LBB33_203
# %bb.194:                              # %for.body.lr.ph.i153
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB33_195:                             # %for.body.i155
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 96
	ldx.d	$a0, $a0, $a1
	ld.b	$a3, $a0, 376
	ori	$a3, $a3, 24
	st.b	$a3, $a0, 376
	ld.wu	$a0, $s0, 88
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	bltu	$a2, $a0, .LBB33_195
# %bb.196:                              # %for.cond2.preheader.i162
	ld.wu	$a1, $s0, 160
	bnez	$a1, .LBB33_204
	b	.LBB33_247
.LBB33_197:                             # %for.body.i.i138.preheader
	ori	$a0, $zero, 1
	ori	$a1, $zero, 95
	b	.LBB33_199
	.p2align	4, , 16
.LBB33_198:                             # %for.inc.i.i143
                                        #   in Loop: Header=BB33_199 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	beqz	$s1, .LBB33_193
.LBB33_199:                             # %for.body.i.i138
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	ld.w	$a3, $a2, 8
	bne	$a3, $a0, .LBB33_198
# %bb.200:                              # %cleanup.i.i147
                                        #   in Loop: Header=BB33_199 Depth=1
	ld.d	$a3, $a2, 0
	ld.bu	$a3, $a3, 0
	bne	$a3, $a1, .LBB33_198
# %bb.201:                              # %land.lhs.true.i149
	ld.w	$a0, $a2, 16
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB33_193
# %bb.202:                              # %if.then.i152
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	b	.LBB33_193
.LBB33_203:
	move	$a0, $zero
	ld.wu	$a1, $s0, 160
	beqz	$a1, .LBB33_247
.LBB33_204:                             # %for.body5.lr.ph.i164
	move	$s1, $zero
	ori	$s3, $zero, 1
	ori	$s4, $zero, 3
	move	$a2, $a0
	b	.LBB33_207
	.p2align	4, , 16
.LBB33_205:                             # %for.inc18.loopexit.i
                                        #   in Loop: Header=BB33_207 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$a1, $s0, 160
	move	$a2, $a0
.LBB33_206:                             # %for.inc18.i
                                        #   in Loop: Header=BB33_207 Depth=1
	addi.d	$s1, $s1, 1
	bgeu	$s1, $a1, .LBB33_247
.LBB33_207:                             # %for.body5.i167
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_210 Depth 2
                                        #       Child Loop BB33_233 Depth 3
                                        #         Child Loop BB33_235 Depth 4
                                        #       Child Loop BB33_218 Depth 3
	ld.d	$a3, $s0, 168
	slli.d	$a4, $s1, 3
	ldx.d	$s5, $a3, $a4
	ld.w	$a3, $s5, 8
	ori	$a4, $zero, 2
	bltu	$a4, $a3, .LBB33_206
# %bb.208:                              # %if.then.i171
                                        #   in Loop: Header=BB33_207 Depth=1
	addi.w	$a2, $a2, 0
	beqz	$a2, .LBB33_246
# %bb.209:                              # %for.body.i.i173.preheader
                                        #   in Loop: Header=BB33_207 Depth=1
	move	$s6, $zero
	move	$s8, $zero
	.p2align	4, , 16
.LBB33_210:                             # %for.body.i.i173
                                        #   Parent Loop BB33_207 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_233 Depth 3
                                        #         Child Loop BB33_235 Depth 4
                                        #       Child Loop BB33_218 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 96
	slli.d	$a1, $s6, 3
	ldx.d	$s7, $a0, $a1
	beqz	$a3, .LBB33_228
.LBB33_211:                             #   in Loop: Header=BB33_210 Depth=2
	move	$a1, $s8
.LBB33_212:                             # %for.cond7.preheader.i.i
                                        #   in Loop: Header=BB33_210 Depth=2
	ld.wu	$a0, $s7, 16
	beqz	$a0, .LBB33_226
# %bb.213:                              # %for.body10.lr.ph.i.i
                                        #   in Loop: Header=BB33_210 Depth=2
	ld.d	$a2, $s7, 24
	b	.LBB33_218
.LBB33_214:                             # %if.else62.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	andi	$a3, $a3, 231
.LBB33_215:                             # %for.inc.sink.split.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	addi.d	$a3, $a3, 16
.LBB33_216:                             # %for.inc.sink.split.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	st.b	$a3, $s7, 376
.LBB33_217:                             # %for.inc.i.i178
                                        #   in Loop: Header=BB33_218 Depth=3
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	beqz	$a0, .LBB33_226
.LBB33_218:                             # %for.body10.i.i
                                        #   Parent Loop BB33_207 Depth=1
                                        #     Parent Loop BB33_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	ld.w	$a4, $a3, 0
	bne	$a4, $s3, .LBB33_217
# %bb.219:                              # %if.then17.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	ld.d	$a3, $a3, 16
	ld.bu	$a3, $a3, 36
	andi	$a3, $a3, 7
	beqz	$a3, .LBB33_223
# %bb.220:                              # %if.then17.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	bne	$a3, $s3, .LBB33_217
# %bb.221:                              # %sw.bb.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	ld.bu	$a3, $s7, 376
	srli.d	$a4, $a3, 3
	bstrins.d	$a4, $s3, 63, 1
	andi	$a3, $a3, 231
	bne	$a4, $s4, .LBB33_215
# %bb.222:                              # %if.then33.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	addi.d	$a3, $a3, 8
	b	.LBB33_216
.LBB33_223:                             # %sw.bb43.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	ld.bu	$a3, $s7, 376
	bstrpick.d	$a4, $a3, 4, 3
	beq	$a4, $s4, .LBB33_225
# %bb.224:                              # %sw.bb43.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	bnez	$a4, .LBB33_214
.LBB33_225:                             # %if.then57.i.i
                                        #   in Loop: Header=BB33_218 Depth=3
	andi	$a3, $a3, 231
	b	.LBB33_216
	.p2align	4, , 16
.LBB33_226:                             # %for.inc70.i.i
                                        #   in Loop: Header=BB33_210 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 88
	addi.d	$s6, $s6, 1
	bgeu	$s6, $a0, .LBB33_205
# %bb.227:                              # %for.body.ithread-pre-split.i
                                        #   in Loop: Header=BB33_210 Depth=2
	ld.w	$a3, $s5, 8
	move	$s8, $a1
	b	.LBB33_210
	.p2align	4, , 16
.LBB33_228:                             # %if.then.i.i186
                                        #   in Loop: Header=BB33_210 Depth=2
	move	$a1, $s7
	beqz	$s8, .LBB33_212
# %bb.229:                              # %if.else.i.i188
                                        #   in Loop: Header=BB33_210 Depth=2
	ld.w	$a0, $s7, 136
	st.d	$s8, $s7, 400
	beqz	$a0, .LBB33_211
# %bb.230:                              # %for.cond1.preheader.lr.ph.i.i.i
                                        #   in Loop: Header=BB33_210 Depth=2
	move	$fp, $zero
	addi.d	$s0, $s8, 136
	addi.d	$s2, $s8, 152
	b	.LBB33_233
	.p2align	4, , 16
.LBB33_231:                             # %if.end69.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
.LBB33_232:                             # %for.inc75.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	ld.wu	$a0, $s7, 136
	addi.d	$fp, $fp, 1
	bgeu	$fp, $a0, .LBB33_211
.LBB33_233:                             # %for.cond1.preheader.i.i.i
                                        #   Parent Loop BB33_207 Depth=1
                                        #     Parent Loop BB33_210 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB33_235 Depth 4
	ld.w	$a2, $s8, 136
	ld.d	$a0, $s8, 144
	beqz	$a2, .LBB33_240
# %bb.234:                              # %for.body5.lr.ph.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	ld.d	$a1, $s7, 144
	slli.d	$a3, $fp, 3
	ldx.d	$a1, $a1, $a3
	ld.d	$a5, $a1, 8
	move	$a6, $zero
	bstrpick.d	$a3, $a2, 31, 0
	slli.d	$a4, $a3, 3
	.p2align	4, , 16
.LBB33_235:                             # %for.body5.i.i.i
                                        #   Parent Loop BB33_207 Depth=1
                                        #     Parent Loop BB33_210 Depth=2
                                        #       Parent Loop BB33_233 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a7, $a0, $a6
	ld.d	$a7, $a7, 8
	beq	$a5, $a7, .LBB33_232
# %bb.236:                              # %for.cond1.i.i.i
                                        #   in Loop: Header=BB33_235 Depth=4
	addi.d	$a6, $a6, 8
	bne	$a4, $a6, .LBB33_235
# %bb.237:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	beq	$a0, $s2, .LBB33_244
# %bb.238:                              # %if.else51.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	andi	$a3, $a2, 7
	beqz	$a3, .LBB33_231
# %bb.239:                              # %if.then55.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 0
	stx.d	$a1, $a0, $a4
	b	.LBB33_232
	.p2align	4, , 16
.LBB33_240:                             # %do.body.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	beqz	$a0, .LBB33_243
# %bb.241:                              # %if.else.thread.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	ld.d	$a1, $s7, 144
	slli.d	$a3, $fp, 3
	ldx.d	$a1, $a1, $a3
	bne	$a0, $s2, .LBB33_231
# %bb.242:                              #   in Loop: Header=BB33_233 Depth=3
	move	$a3, $zero
	b	.LBB33_245
.LBB33_243:                             # %if.then15.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	ld.d	$a0, $s7, 144
	slli.d	$a1, $fp, 3
	ldx.d	$a0, $a0, $a1
	st.d	$s2, $s8, 144
	st.w	$s3, $s8, 136
	st.d	$a0, $s8, 152
	b	.LBB33_232
.LBB33_244:                             # %if.then34.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	ori	$a4, $zero, 2
	bltu	$a4, $a2, .LBB33_231
.LBB33_245:                             # %if.then38.i.i.i
                                        #   in Loop: Header=BB33_233 Depth=3
	addi.d	$a2, $a2, 1
	st.w	$a2, $s0, 0
	slli.d	$a2, $a3, 3
	stx.d	$a1, $a0, $a2
	b	.LBB33_232
.LBB33_246:                             #   in Loop: Header=BB33_207 Depth=1
	move	$a2, $zero
	b	.LBB33_206
.LBB33_247:                             # %for.cond21.preheader.i
	addi.w	$a1, $a0, 0
	beqz	$a1, .LBB33_252
# %bb.248:                              # %for.body25.lr.ph.i
	move	$a1, $zero
	move	$a2, $zero
	ori	$a3, $zero, 24
	b	.LBB33_250
	.p2align	4, , 16
.LBB33_249:                             # %for.inc40.i
                                        #   in Loop: Header=BB33_250 Depth=1
	addi.d	$a2, $a2, 1
	bstrpick.d	$a4, $a0, 31, 0
	addi.d	$a1, $a1, 8
	bgeu	$a2, $a4, .LBB33_252
.LBB33_250:                             # %for.body25.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s0, 96
	ldx.d	$a4, $a4, $a1
	ld.bu	$a5, $a4, 376
	andi	$a6, $a5, 24
	bne	$a6, $a3, .LBB33_249
# %bb.251:                              # %if.then34.i
                                        #   in Loop: Header=BB33_250 Depth=1
	andi	$a0, $a5, 231
	st.b	$a0, $a4, 376
	ld.w	$a0, $s0, 88
	b	.LBB33_249
.LBB33_252:                             # %map_declarations_to_states.exit
	pcalau12i	$a1, %got_pc_hi20(verbose_level)
	ld.d	$fp, $a1, %got_pc_lo12(verbose_level)
	ld.w	$a1, $fp, 0
	beqz	$a1, .LBB33_255
# %bb.253:                              # %if.end
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s0, 48
	ld.w	$a4, $s0, 160
	addi.w	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB33_255
# %bb.254:                              # %if.then4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(print_grammar)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(print_states)
	jirl	$ra, $ra, 0
.LBB33_255:                             # %if.end5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(build_scanners)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(build_eq)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end33:
	.size	build_grammar, .Lfunc_end33-build_grammar
                                        # -- End function
	.p2align	5                               # -- Begin function convert_regex_production_one
	.type	convert_regex_production_one,@function
convert_regex_production_one:           # @convert_regex_production_one
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
	move	$fp, $a1
	ld.d	$a1, $a1, 216
	bnez	$a1, .LBB34_76
# %bb.1:                                # %if.end
	move	$s1, $a0
	ld.bu	$a1, $fp, 60
	andi	$a0, $a1, 2
	beqz	$a0, .LBB34_3
# %bb.2:                                # %if.then2
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 60
.LBB34_3:                               # %if.end3
	ld.w	$a0, $fp, 16
	ori	$a1, $a1, 2
	st.b	$a1, $fp, 60
	ori	$s4, $zero, 1
	beqz	$a0, .LBB34_27
# %bb.4:                                # %for.body.lr.ph
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s5, $zero, 2
	b	.LBB34_6
	.p2align	4, , 16
.LBB34_5:                               # %for.inc85
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.wu	$a1, $fp, 16
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 1
	bgeu	$s6, $a1, .LBB34_26
.LBB34_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_14 Depth 2
                                        #       Child Loop BB34_23 Depth 3
	ld.d	$a1, $fp, 24
	slli.d	$a2, $s6, 3
	ldx.d	$s0, $a1, $a2
	ld.d	$a1, $s0, 96
	bnez	$a1, .LBB34_8
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.d	$a1, $s0, 80
	sltui	$a1, $a1, 1
	orn	$a0, $a1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB34_9
.LBB34_8:                               # %if.then14
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB34_9:                               # %if.end16
                                        #   in Loop: Header=BB34_6 Depth=1
	ld.w	$a0, $s0, 32
	beqz	$a0, .LBB34_5
# %bb.10:                               # %for.body20.lr.ph
                                        #   in Loop: Header=BB34_6 Depth=1
	move	$s8, $zero
	b	.LBB34_14
	.p2align	4, , 16
.LBB34_11:                              # %for.end
                                        #   in Loop: Header=BB34_14 Depth=2
	beq	$fp, $s3, .LBB34_25
# %bb.12:                               # %if.then62
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(convert_regex_production_one)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 216
.LBB34_13:                              # %for.inc82.sink.split
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.w	$a0, $s3, 32
	addi.d	$a0, $a0, 5
	ld.wu	$a1, $s0, 32
	addi.d	$s8, $s8, 1
	add.d	$s7, $a0, $s7
	bgeu	$s8, $a1, .LBB34_5
.LBB34_14:                              # %for.body20
                                        #   Parent Loop BB34_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_23 Depth 3
	ld.d	$a0, $s0, 40
	slli.d	$a1, $s8, 3
	ldx.d	$s1, $a0, $a1
	ld.w	$a0, $s1, 0
	ld.d	$s3, $s1, 16
	beqz	$a0, .LBB34_17
# %bb.15:                               # %if.else67
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.wu	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	bne	$a0, $s5, .LBB34_13
# %bb.16:                               # %if.then75
                                        #   in Loop: Header=BB34_14 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 16
	b	.LBB34_13
	.p2align	4, , 16
.LBB34_17:                              # %if.then26
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.bu	$a0, $s3, 60
	andi	$a0, $a0, 1
	bnez	$a0, .LBB34_19
# %bb.18:                               # %if.then32
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.d	$a1, $fp, 0
	ld.d	$a2, $s3, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 16
.LBB34_19:                              # %if.end36
                                        #   in Loop: Header=BB34_14 Depth=2
	ld.wu	$a0, $s3, 16
	beqz	$a0, .LBB34_11
# %bb.20:                               # %for.body42.lr.ph
                                        #   in Loop: Header=BB34_14 Depth=2
	move	$s1, $zero
	move	$s4, $zero
	move	$s2, $zero
	b	.LBB34_23
	.p2align	4, , 16
.LBB34_21:                              # %if.then58
                                        #   in Loop: Header=BB34_23 Depth=3
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 16
.LBB34_22:                              # %for.inc
                                        #   in Loop: Header=BB34_23 Depth=3
	addi.d	$s2, $s2, 1
	addi.w	$s4, $s4, 1
	addi.d	$s1, $s1, 8
	bgeu	$s2, $a0, .LBB34_11
.LBB34_23:                              # %for.body42
                                        #   Parent Loop BB34_6 Depth=1
                                        #     Parent Loop BB34_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s3, 24
	ldx.d	$a1, $a1, $s1
	ld.d	$a2, $a1, 80
	bnez	$a2, .LBB34_21
# %bb.24:                               # %lor.lhs.false50
                                        #   in Loop: Header=BB34_23 Depth=3
	ld.d	$a1, $a1, 96
	bnez	$a1, .LBB34_21
	b	.LBB34_22
.LBB34_25:                              #   in Loop: Header=BB34_14 Depth=2
	ori	$a0, $zero, 5
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.wu	$a1, $s0, 32
	addi.d	$s8, $s8, 1
	add.d	$s7, $a0, $s7
	bltu	$s8, $a1, .LBB34_14
	b	.LBB34_5
.LBB34_26:                              # %for.end87.loopexit
	addi.w	$a0, $s7, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sltui	$s3, $a1, 1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ori	$s4, $zero, 1
	b	.LBB34_28
.LBB34_27:
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
.LBB34_28:                              # %for.end87
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.wu	$a1, $s1, 48
	st.w	$s4, $a0, 0
	ld.d	$a2, $s1, 56
	st.d	$s0, $a0, 24
	st.w	$a1, $a0, 4
	st.d	$fp, $a0, 40
	addi.d	$a3, $s1, 64
	beqz	$a2, .LBB34_32
# %bb.29:                               # %if.else105
	addi.d	$a0, $s1, 48
	beq	$a2, $a3, .LBB34_33
# %bb.30:                               # %if.else127
	andi	$a3, $a1, 7
	beqz	$a3, .LBB34_36
# %bb.31:                               # %if.then131
	addi.d	$a3, $a1, 1
	st.w	$a3, $a0, 0
	slli.d	$a0, $a1, 3
	stx.d	$s2, $a2, $a0
	ld.w	$a0, $fp, 16
	st.d	$s2, $fp, 216
	beqz	$s3, .LBB34_35
	b	.LBB34_37
.LBB34_32:                              # %if.then95
	st.d	$a3, $s1, 56
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 48
	slli.d	$a0, $a1, 3
	stx.d	$s2, $a3, $a0
	ld.w	$a0, $fp, 16
	st.d	$s2, $fp, 216
	beqz	$s3, .LBB34_35
	b	.LBB34_37
.LBB34_33:                              # %if.then113
	ori	$a3, $zero, 2
	bltu	$a3, $a1, .LBB34_36
# %bb.34:                               # %if.then118
	addi.w	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	slli.d	$a0, $a3, 3
	stx.d	$s2, $a2, $a0
	ld.w	$a0, $fp, 16
	st.d	$s2, $fp, 216
	bnez	$s3, .LBB34_37
.LBB34_35:                              # %if.then145
	ori	$s1, $zero, 2
	bne	$a0, $s1, .LBB34_60
	b	.LBB34_61
.LBB34_36:                              # %if.end141
	move	$a1, $s2
	pcaddu18i	$ra, %call36(vec_add_internal)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	st.d	$s2, $fp, 216
	beqz	$s3, .LBB34_35
.LBB34_37:                              # %if.else301
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB34_39
# %bb.38:                               # %if.end308.thread
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 40
	st.b	$a1, $s0, 0
	move	$s0, $a0
	b	.LBB34_40
.LBB34_39:                              # %if.end308
	beqz	$a0, .LBB34_59
.LBB34_40:                              # %for.body314.lr.ph
	move	$s3, $zero
	ori	$s4, $zero, 2
	ori	$s7, $zero, 1
	b	.LBB34_42
	.p2align	4, , 16
.LBB34_41:                              # %for.inc380
                                        #   in Loop: Header=BB34_42 Depth=1
	addi.d	$s3, $s3, 1
	bstrpick.d	$a1, $a0, 31, 0
	bgeu	$s3, $a1, .LBB34_57
.LBB34_42:                              # %for.body314
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_47 Depth 2
	ld.d	$a0, $fp, 24
	slli.d	$a1, $s3, 3
	ldx.d	$s8, $a0, $a1
	ld.w	$a0, $s8, 32
	bltu	$a0, $s4, .LBB34_44
# %bb.43:                               # %if.then323
                                        #   in Loop: Header=BB34_42 Depth=1
	ori	$a0, $zero, 40
	st.b	$a0, $s0, 0
	ld.w	$a0, $s8, 32
	addi.d	$s0, $s0, 1
.LBB34_44:                              # %if.end325
                                        #   in Loop: Header=BB34_42 Depth=1
	beqz	$a0, .LBB34_55
# %bb.45:                               # %for.body331.lr.ph
                                        #   in Loop: Header=BB34_42 Depth=1
	move	$s5, $zero
	move	$s6, $zero
	b	.LBB34_47
	.p2align	4, , 16
.LBB34_46:                              # %for.inc363
                                        #   in Loop: Header=BB34_47 Depth=2
	ld.wu	$a0, $s8, 32
	add.d	$s0, $s0, $s2
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bgeu	$s6, $a0, .LBB34_53
.LBB34_47:                              # %for.body331
                                        #   Parent Loop BB34_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s8, 40
	ldx.d	$a0, $a0, $s5
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 16
	beq	$a1, $s7, .LBB34_49
# %bb.48:                               # %cond.false341
                                        #   in Loop: Header=BB34_47 Depth=2
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 216
.LBB34_49:                              # %cond.end344
                                        #   in Loop: Header=BB34_47 Depth=2
	ld.d	$s2, $a0, 0
	ld.w	$a0, $s2, 0
	ld.d	$s1, $s2, 24
	bnez	$a0, .LBB34_51
# %bb.50:                               # %if.then349
                                        #   in Loop: Header=BB34_47 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(escape_string_for_regex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB34_51:                              # %if.end354
                                        #   in Loop: Header=BB34_47 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$s2, $a0
	bnez	$a1, .LBB34_46
# %bb.52:                               # %if.then361
                                        #   in Loop: Header=BB34_47 Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB34_46
	.p2align	4, , 16
.LBB34_53:                              # %for.end365
                                        #   in Loop: Header=BB34_42 Depth=1
	bltu	$a0, $s4, .LBB34_55
# %bb.54:                               # %if.then370
                                        #   in Loop: Header=BB34_42 Depth=1
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 41
	st.b	$a1, $s0, 0
	move	$s0, $a0
.LBB34_55:                              # %if.end372
                                        #   in Loop: Header=BB34_42 Depth=1
	ld.w	$a0, $fp, 16
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 31, 0
	beq	$s3, $a1, .LBB34_41
# %bb.56:                               # %if.then377
                                        #   in Loop: Header=BB34_42 Depth=1
	ori	$a0, $zero, 124
	st.b	$a0, $s0, 0
	ld.w	$a0, $fp, 16
	addi.d	$s0, $s0, 1
	b	.LBB34_41
.LBB34_57:                              # %for.end382
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB34_59
# %bb.58:                               # %if.then387
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 41
	st.b	$a1, $s0, 0
	move	$s0, $a0
.LBB34_59:                              # %if.end389
	st.b	$zero, $s0, 0
	b	.LBB34_75
.LBB34_60:                              # %Lfail
	ld.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	pcaddu18i	$ra, %call36(d_fail)
	jirl	$ra, $ra, 0
.LBB34_61:                              # %if.end152
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	ld.w	$a2, $a0, 32
	ld.w	$a3, $a1, 32
	add.w	$s2, $a3, $a2
	move	$a4, $s2
	bstrins.d	$a4, $zero, 0, 0
	bne	$a4, $s1, .LBB34_60
# %bb.62:                               # %if.then169
	ori	$a4, $zero, 2
	beq	$a2, $a4, .LBB34_64
# %bb.63:                               # %if.then169
	bne	$a3, $a4, .LBB34_60
.LBB34_64:                              # %if.end186
	addi.d	$a2, $a2, -2
	sltui	$a3, $a2, 1
	masknez	$a2, $a1, $a3
	maskeqz	$a4, $a0, $a3
	or	$a2, $a4, $a2
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a2, 0
	ld.d	$a4, $a4, 16
	ld.d	$a2, $a2, 8
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	beq	$a4, $fp, .LBB34_66
# %bb.65:                               # %land.lhs.true221
	ld.d	$a1, $a2, 16
	bne	$a1, $fp, .LBB34_60
.LBB34_66:                              # %if.end229
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB34_68
# %bb.67:                               # %land.lhs.true249
	ld.d	$a0, $a0, 40
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a2, 16
	ld.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB34_60
.LBB34_68:                              # %if.end258
	ld.w	$a1, $a2, 0
	ori	$a3, $zero, 1
	addi.d	$a0, $a2, 16
	beq	$a1, $a3, .LBB34_70
# %bb.69:                               # %cond.false264
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 216
.LBB34_70:                              # %cond.end267
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 40
	st.b	$a0, $s0, 0
	ld.w	$a0, $s3, 0
	ld.d	$s1, $s3, 24
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB34_72
# %bb.71:                               # %if.then272
	move	$a0, $s1
	pcaddu18i	$ra, %call36(escape_string_for_regex)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB34_72:                              # %if.end277
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	add.d	$s0, $s0, $a0
	bnez	$a1, .LBB34_74
# %bb.73:                               # %if.then283
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB34_74:                              # %if.end284
	addi.d	$a0, $s2, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 41
	st.b	$a1, $s0, 0
	xori	$a0, $a0, 43
	st.b	$a0, $s0, 1
	st.b	$zero, $s0, 2
.LBB34_75:                              # %if.end396
	ld.d	$s0, $fp, 216
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 32
	ld.bu	$a0, $fp, 60
	andi	$a0, $a0, 253
	st.b	$a0, $fp, 60
.LBB34_76:                              # %cleanup
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
.Lfunc_end34:
	.size	convert_regex_production_one, .Lfunc_end34-convert_regex_production_one
                                        # -- End function
	.p2align	5                               # -- Begin function set_declaration_group
	.type	set_declaration_group,@function
set_declaration_group:                  # @set_declaration_group
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
	move	$fp, $a2
	ld.wu	$a2, $a2, 8
	move	$s0, $a0
	alsl.d	$a0, $a2, $a0, 3
	ld.d	$a3, $a0, 72
	beq	$a3, $a1, .LBB35_13
# %bb.1:                                # %if.end
	move	$s1, $a1
	bnez	$a2, .LBB35_4
# %bb.2:                                # %if.end
	beqz	$a3, .LBB35_4
# %bb.3:                                # %if.then7
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(d_fail)
	jr	$t8
.LBB35_4:                               # %if.end8
	ld.wu	$a1, $s0, 16
	addi.d	$a2, $a0, 72
	st.d	$s1, $a2, 0
	st.d	$fp, $a0, 136
	beqz	$a1, .LBB35_13
# %bb.5:                                # %for.cond17.preheader.lr.ph
	ld.d	$a0, $s0, 24
	move	$s2, $zero
	b	.LBB35_8
	.p2align	4, , 16
.LBB35_6:                               # %for.inc44.loopexit
                                        #   in Loop: Header=BB35_8 Depth=1
	ld.wu	$a1, $s0, 16
.LBB35_7:                               # %for.inc44
                                        #   in Loop: Header=BB35_8 Depth=1
	addi.d	$s2, $s2, 1
	bgeu	$s2, $a1, .LBB35_13
.LBB35_8:                               # %for.cond17.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_11 Depth 2
	slli.d	$s3, $s2, 3
	ldx.d	$a2, $a0, $s3
	ld.w	$a3, $a2, 32
	beqz	$a3, .LBB35_7
# %bb.9:                                # %for.body23.preheader
                                        #   in Loop: Header=BB35_8 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB35_11
	.p2align	4, , 16
.LBB35_10:                              # %for.inc
                                        #   in Loop: Header=BB35_11 Depth=2
	ldx.d	$a2, $a0, $s3
	ld.wu	$a1, $a2, 32
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bgeu	$s5, $a1, .LBB35_6
.LBB35_11:                              # %for.body23
                                        #   Parent Loop BB35_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a2, 40
	ldx.d	$a1, $a1, $s4
	ld.w	$a2, $a1, 0
	bnez	$a2, .LBB35_10
# %bb.12:                               # %if.then34
                                        #   in Loop: Header=BB35_11 Depth=2
	ld.d	$a0, $a1, 16
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_declaration_group)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	b	.LBB35_10
.LBB35_13:                              # %cleanup
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
.Lfunc_end35:
	.size	set_declaration_group, .Lfunc_end35-set_declaration_group
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declare expects argument, line %d"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"declare does not expect argument, line %d"
	.size	.L.str.1, 42

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"duplicate pass '%s' line %d"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"unknown pass '%s' line %d"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" _synthetic"
	.size	.L.str.4, 12

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s.%d"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"0 Start"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"1 Start"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"<EOF> "
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"string(\"%s\") "
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"regex(\"%s\") "
	.size	.L.str.10, 13

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"code(\"%s\") "
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"token(\"%s\") "
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"unknown token kind"
	.size	.L.str.13, 19

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s "
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"$none"
	.size	.L.str.15, 6

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"$left"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"$right"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"$unary_left"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"$unary_right"
	.size	.L.str.19, 13

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"$binary_left"
	.size	.L.str.20, 13

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"$binary_right"
	.size	.L.str.21, 14

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"$noassoc"
	.size	.L.str.22, 9

	.type	assoc_strings,@object           # @assoc_strings
	.data
	.globl	assoc_strings
	.p2align	3, 0x0
assoc_strings:
	.word	0                               # 0x0
	.space	4
	.dword	.L.str.15
	.word	5                               # 0x5
	.space	4
	.dword	.L.str.16
	.word	6                               # 0x6
	.space	4
	.dword	.L.str.17
	.word	9                               # 0x9
	.space	4
	.dword	.L.str.18
	.word	10                              # 0xa
	.space	4
	.dword	.L.str.19
	.word	17                              # 0x11
	.space	4
	.dword	.L.str.20
	.word	18                              # 0x12
	.space	4
	.dword	.L.str.21
	.word	32                              # 0x20
	.space	4
	.dword	.L.str.22
	.size	assoc_strings, 128

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"%s: "
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SPECULATIVE_CODE\n%s\nEND CODE\n"
	.size	.L.str.24, 30

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"FINAL_CODE\n%s\nEND CODE\n"
	.size	.L.str.25, 24

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"%s (%d)\n"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\t: "
	.size	.L.str.28, 4

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\t| "
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"op %d "
	.size	.L.str.30, 7

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"rule %d "
	.size	.L.str.31, 9

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"(%d)\n"
	.size	.L.str.36, 6

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"eq %d %d "
	.size	.L.str.37, 10

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"diff state (%d %d) "
	.size	.L.str.38, 20

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"diff rule "
	.size	.L.str.39, 11

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"[ "
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"][ "
	.size	.L.str.41, 4

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"reduces_to %d %d\n"
	.size	.L.str.43, 18

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"r"
	.size	.L.str.44, 2

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%d productions %d terminals %d states %d declarations\n"
	.size	.L.str.45, 55

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"encountered an escaped NULL while processing '%s'"
	.size	.L.str.46, 50

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"empty string after unescape '%s'"
	.size	.L.str.47, 33

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"STATE %d (%d ITEMS)%s\n"
	.size	.L.str.48, 23

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	" ACCEPT"
	.size	.L.str.49, 8

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.space	1
	.size	.L.str.50, 1

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	" : %d\n"
	.size	.L.str.52, 7

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"\t%s\t"
	.size	.L.str.54, 5

	.type	action_types,@object            # @action_types
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
action_types:
	.dword	.L.str.60
	.dword	.L.str.61
	.dword	.L.str.62
	.size	action_types, 24

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"%d"
	.size	.L.str.55, 3

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"reduce/reduce"
	.size	.L.str.56, 14

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"shift/reduce"
	.size	.L.str.57, 13

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\t%s: "
	.size	.L.str.58, 6

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	". "
	.size	.L.str.59, 3

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"ACCEPT"
	.size	.L.str.60, 7

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SHIFT"
	.size	.L.str.61, 6

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"REDUCE"
	.size	.L.str.62, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\t%s conflict "
	.size	.L.str.64, 14

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"duplicate production '%s'"
	.size	.L.str.65, 26

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.size	.L.str.66, 28

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"circular regex production '%s'"
	.size	.L.str.67, 31

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"final and/or multi-rule code not permitted in regex productions '%s'"
	.size	.L.str.68, 69

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"regex production '%s' cannot invoke non-regex production '%s'"
	.size	.L.str.69, 62

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"code not permitted in rule %d of regex productions '%s'"
	.size	.L.str.70, 56

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"regex production '%s' cannot include scanners or tokens"
	.size	.L.str.71, 56

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"unable to resolve circular regex production: '%s'"
	.size	.L.str.72, 50

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"unresolved declaration '%s'"
	.size	.L.str.73, 28

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"shared tokenize subtrees"
	.size	.L.str.74, 25

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"whitespace"
	.size	.L.str.75, 11

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"number of rules in default action != 1"
	.size	.L.str.77, 39

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"PRODUCTIONS\n"
	.size	.Lstr, 13

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"TERMINALS\n"
	.size	.Lstr.1, 11

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"\t;"
	.size	.Lstr.2, 3

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"  GOTO"
	.size	.Lstr.3, 7

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"  ACTION"
	.size	.Lstr.4, 9

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"  CONFLICT (before precedence and associativity)"
	.size	.Lstr.5, 49

	.section	".note.GNU-stack","",@progbits
	.addrsig
