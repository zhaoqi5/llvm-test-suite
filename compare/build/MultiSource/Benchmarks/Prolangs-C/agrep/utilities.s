	.file	"utilities.c"
	.text
	.globl	Push                            # -- Begin function Push
	.p2align	5
	.type	Push,@function
Push:                                   # @Push
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	beqz	$fp, .LBB0_6
# %bb.1:                                # %entry
	beqz	$a0, .LBB0_6
# %bb.2:                                # %if.end
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 16
	st.d	$s0, $a0, 0
	beqz	$a1, .LBB0_4
# %bb.3:                                # %if.else
	ld.w	$a1, $a1, 8
	addi.d	$a1, $a1, 1
	b	.LBB0_5
.LBB0_4:
	ori	$a1, $zero, 1
.LBB0_5:                                # %if.end6
	st.w	$a1, $a0, 8
	st.d	$a0, $fp, 0
	move	$a1, $a0
.LBB0_6:                                # %cleanup
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Push, .Lfunc_end0-Push
                                        # -- End function
	.globl	Pop                             # -- Begin function Pop
	.p2align	5
	.type	Pop,@function
Pop:                                    # @Pop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB1_3
# %bb.1:                                # %lor.lhs.false
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB1_3
# %bb.2:                                # %if.else
	ld.d	$a2, $a1, 16
	ld.d	$fp, $a1, 0
	st.d	$a2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_4
.LBB1_3:
	move	$fp, $zero
.LBB1_4:                                # %cleanup
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	Pop, .Lfunc_end1-Pop
                                        # -- End function
	.globl	Top                             # -- Begin function Top
	.p2align	5
	.type	Top,@function
Top:                                    # @Top
# %bb.0:                                # %entry
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.else
	ld.d	$a0, $a0, 0
	ret
.LBB2_2:
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	Top, .Lfunc_end2-Top
                                        # -- End function
	.globl	Size                            # -- Begin function Size
	.p2align	5
	.type	Size,@function
Size:                                   # @Size
# %bb.0:                                # %entry
	beqz	$a0, .LBB3_2
# %bb.1:                                # %if.else
	ld.w	$a0, $a0, 8
	ret
.LBB3_2:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	Size, .Lfunc_end3-Size
                                        # -- End function
	.globl	occurs_in                       # -- Begin function occurs_in
	.p2align	5
	.type	occurs_in,@function
occurs_in:                              # @occurs_in
# %bb.0:                                # %entry
	beqz	$a1, .LBB4_3
	.p2align	4, , 16
.LBB4_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	beq	$a0, $a2, .LBB4_4
# %bb.2:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	ld.d	$a1, $a1, 8
	bnez	$a1, .LBB4_1
.LBB4_3:
	move	$a0, $zero
	ret
.LBB4_4:
	ori	$a0, $zero, 1
	ret
.Lfunc_end4:
	.size	occurs_in, .Lfunc_end4-occurs_in
                                        # -- End function
	.globl	pset_union                      # -- Begin function pset_union
	.p2align	5
	.type	pset_union,@function
pset_union:                             # @pset_union
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
	beqz	$a0, .LBB5_20
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a0
	beqz	$fp, .LBB5_14
# %bb.2:                                # %while.body.preheader
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_3:                                # %if.else
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$a0, $s1, 8
.LBB5_4:                                # %if.end9
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$s1, $a0
.LBB5_5:                                # %if.end9
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$s0, $s0, 8
	beqz	$s0, .LBB5_12
.LBB5_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.w	$s3, $s0, 0
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_7:                                # %while.body.i
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	beq	$s3, $a1, .LBB5_5
# %bb.8:                                # %if.else.i
                                        #   in Loop: Header=BB5_7 Depth=2
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB5_7
# %bb.9:                                # %if.then.loopexit
                                        #   in Loop: Header=BB5_6 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_19
# %bb.10:                               # %if.end
                                        #   in Loop: Header=BB5_6 Depth=1
	st.w	$s3, $a0, 0
	bnez	$s2, .LBB5_3
# %bb.11:                               #   in Loop: Header=BB5_6 Depth=1
	move	$s2, $a0
	b	.LBB5_4
.LBB5_12:                               # %while.end
	beqz	$s2, .LBB5_20
.LBB5_13:                               # %if.else13
	st.d	$fp, $s1, 8
	move	$fp, $s2
	b	.LBB5_20
.LBB5_14:                               # %while.body.us.preheader
	move	$s3, $zero
	move	$s4, $zero
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_15:                               # %if.end9.us
                                        #   in Loop: Header=BB5_16 Depth=1
	ld.d	$s0, $s0, 8
	move	$s3, $s1
	move	$s4, $s2
	beqz	$s0, .LBB5_13
.LBB5_16:                               # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_19
# %bb.17:                               # %if.end.us
                                        #   in Loop: Header=BB5_16 Depth=1
	move	$s1, $a0
	st.w	$s2, $a0, 0
	move	$s2, $a0
	beqz	$s4, .LBB5_15
# %bb.18:                               # %if.else.us
                                        #   in Loop: Header=BB5_16 Depth=1
	st.d	$s1, $s3, 8
	move	$s2, $s4
	b	.LBB5_15
.LBB5_19:
	move	$fp, $zero
.LBB5_20:                               # %cleanup
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
.Lfunc_end5:
	.size	pset_union, .Lfunc_end5-pset_union
                                        # -- End function
	.globl	create_pos                      # -- Begin function create_pos
	.p2align	5
	.type	create_pos,@function
create_pos:                             # @create_pos
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.1:                                # %if.end
	st.w	$fp, $a0, 0
	st.d	$zero, $a0, 8
.LBB6_2:                                # %cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	create_pos, .Lfunc_end6-create_pos
                                        # -- End function
	.globl	subset_pset                     # -- Begin function subset_pset
	.p2align	5
	.type	subset_pset,@function
subset_pset:                            # @subset_pset
# %bb.0:                                # %entry
	move	$a2, $a0
	ori	$a0, $zero, 1
	beqz	$a2, .LBB7_6
.LBB7_1:                                # %while.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	beqz	$a1, .LBB7_7
# %bb.2:                                # %while.body7.lr.ph
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.w	$a3, $a2, 0
	.p2align	4, , 16
.LBB7_3:                                # %while.body7
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	beq	$a3, $a4, .LBB7_5
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=2
	ld.d	$a1, $a1, 8
	bnez	$a1, .LBB7_3
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_5:                                # %while.end
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a2, $a2, 8
	bnez	$a2, .LBB7_1
.LBB7_6:                                # %while.end11
	ret
.LBB7_7:
	move	$a0, $zero
	ret
.Lfunc_end7:
	.size	subset_pset, .Lfunc_end7-subset_pset
                                        # -- End function
	.globl	eq_pset                         # -- Begin function eq_pset
	.p2align	5
	.type	eq_pset,@function
eq_pset:                                # @eq_pset
# %bb.0:                                # %entry
	beqz	$a0, .LBB8_7
# %bb.1:                                # %while.cond2.preheader.i.preheader
	move	$a2, $a1
	move	$a3, $a0
.LBB8_2:                                # %while.cond2.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	beqz	$a2, .LBB8_14
# %bb.3:                                # %while.body7.lr.ph.i
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.w	$a4, $a3, 0
	.p2align	4, , 16
.LBB8_4:                                # %while.body7.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	beq	$a4, $a5, .LBB8_6
# %bb.5:                                # %if.end.i
                                        #   in Loop: Header=BB8_4 Depth=2
	ld.d	$a2, $a2, 8
	bnez	$a2, .LBB8_4
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_6:                                # %while.end.i
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB8_2
.LBB8_7:                                # %land.rhs
	beqz	$a1, .LBB8_13
.LBB8_8:                                # %while.cond2.preheader.i4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	beqz	$a0, .LBB8_14
# %bb.9:                                # %while.body7.lr.ph.i8
                                        #   in Loop: Header=BB8_8 Depth=1
	ld.w	$a2, $a1, 0
	.p2align	4, , 16
.LBB8_10:                               # %while.body7.i9
                                        #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	beq	$a2, $a3, .LBB8_12
# %bb.11:                               # %if.end.i12
                                        #   in Loop: Header=BB8_10 Depth=2
	ld.d	$a0, $a0, 8
	bnez	$a0, .LBB8_10
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_12:                               # %while.end.i16
                                        #   in Loop: Header=BB8_8 Depth=1
	ld.d	$a1, $a1, 8
	bnez	$a1, .LBB8_8
.LBB8_13:
	ori	$a0, $zero, 1
	ret
.LBB8_14:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	eq_pset, .Lfunc_end8-eq_pset
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
