	.file	"ldump.c"
	.text
	.hidden	luaU_dump                       # -- Begin function luaU_dump
	.globl	luaU_dump
	.p2align	5
	.type	luaU_dump,@function
luaU_dump:                              # @luaU_dump
# %bb.0:                                # %DumpHeader.exit
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	st.d	$a0, $sp, 8
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 24
	st.w	$a4, $sp, 32
	addi.d	$a0, $sp, 44
	pcaddu18i	$ra, %call36(luaU_header)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	ori	$a2, $zero, 12
	move	$a0, $s2
	move	$a3, $fp
	jirl	$ra, $s0, 0
	st.w	$a0, $sp, 36
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(DumpFunction)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 36
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	luaU_dump, .Lfunc_end0-luaU_dump
                                        # -- End function
	.p2align	5                               # -- Begin function DumpFunction
	.type	DumpFunction,@function
DumpFunction:                           # @DumpFunction
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
	move	$fp, $a0
	ld.d	$s1, $a0, 64
	move	$s0, $a2
	beq	$s1, $a1, .LBB1_6
# %bb.1:                                # %lor.lhs.false
	beqz	$s1, .LBB1_6
# %bb.2:                                # %lor.lhs.false
	ld.w	$a0, $s0, 24
	bnez	$a0, .LBB1_6
# %bb.3:                                # %if.else.i
	ld.d	$a1, $s1, 16
	ld.w	$a0, $s0, 28
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 16
	bnez	$a0, .LBB1_7
# %bb.4:                                # %DumpBlock.exit12.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	bnez	$a0, .LBB1_7
# %bb.5:                                # %if.then.i15.i
	ld.d	$a2, $sp, 16
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $s1, 24
	b	.LBB1_9
.LBB1_6:                                # %if.then.i
	ld.w	$a0, $s0, 28
	st.d	$zero, $sp, 16
	beqz	$a0, .LBB1_8
.LBB1_7:                                # %DumpString.exit
	ld.w	$a1, $fp, 96
	st.w	$a1, $sp, 16
	bnez	$a0, .LBB1_17
	b	.LBB1_10
.LBB1_8:                                # %if.then.i.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
.LBB1_9:                                # %DumpString.exit
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$a1, $fp, 96
	st.w	$a1, $sp, 16
	bnez	$a0, .LBB1_17
.LBB1_10:                               # %DumpInt.exit
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$a1, $fp, 100
	st.w	$a1, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.11:                               # %DumpInt.exit37
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.b	$a1, $fp, 112
	st.b	$a1, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.12:                               # %DumpChar.exit
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.b	$a1, $fp, 113
	st.b	$a1, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.13:                               # %DumpChar.exit53
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.b	$a1, $fp, 114
	st.b	$a1, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.14:                               # %DumpChar.exit62
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.b	$a1, $fp, 115
	st.b	$a1, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.15:                               # %DumpChar.exit71
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$s2, $fp, 80
	ld.d	$s1, $fp, 24
	st.w	$s2, $sp, 16
	bnez	$a0, .LBB1_17
# %bb.16:                               # %DumpInt.exit.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	beqz	$a0, .LBB1_78
.LBB1_17:                               # %DumpVector.exit.thread
	ld.w	$s3, $fp, 76
.LBB1_18:                               # %DumpInt.exit159
	ori	$s1, $zero, 1
	blt	$s3, $s1, .LBB1_36
# %bb.19:                               # %for.body.i.lr.ph
	move	$s2, $zero
	slli.d	$s3, $s3, 4
	ori	$s4, $zero, 4
	ori	$s5, $zero, 3
	b	.LBB1_23
.LBB1_20:                               # %if.then.i.i127
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
.LBB1_21:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_23 Depth=1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
.LBB1_22:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_23 Depth=1
	addi.d	$s2, $s2, 16
	beq	$s3, $s2, .LBB1_36
.LBB1_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	add.d	$s6, $a1, $s2
	ld.w	$a1, $s6, 8
	addi.w	$a2, $a0, 0
	st.b	$a1, $sp, 16
	beqz	$a2, .LBB1_29
# %bb.24:                               # %DumpChar.exit150
                                        #   in Loop: Header=BB1_23 Depth=1
	beq	$a1, $s4, .LBB1_30
.LBB1_25:                               # %DumpChar.exit150
                                        #   in Loop: Header=BB1_23 Depth=1
	beq	$a1, $s5, .LBB1_34
# %bb.26:                               # %DumpChar.exit150
                                        #   in Loop: Header=BB1_23 Depth=1
	bne	$a1, $s1, .LBB1_22
# %bb.27:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.b	$a1, $s6, 0
	addi.w	$a2, $a0, 0
	st.b	$a1, $sp, 16
	bnez	$a2, .LBB1_22
# %bb.28:                               # %if.then.i.i136
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_29:                               # %if.then.i.i146
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$a1, $s6, 8
	bne	$a1, $s4, .LBB1_25
.LBB1_30:                               # %sw.bb4.i
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB1_35
# %bb.31:                               # %if.else.i100
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a1, $s6, 16
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	st.d	$a1, $sp, 16
	bnez	$a2, .LBB1_22
# %bb.32:                               # %DumpBlock.exit12.i107
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	bnez	$a0, .LBB1_22
# %bb.33:                               # %if.then.i15.i112
                                        #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a2, $sp, 16
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $s6, 24
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_34:                               # %sw.bb2.i
                                        #   in Loop: Header=BB1_23 Depth=1
	fld.d	$fa0, $s6, 0
	addi.w	$a1, $a0, 0
	fst.d	$fa0, $sp, 16
	bnez	$a1, .LBB1_22
	b	.LBB1_20
.LBB1_35:                               # %if.then.i114
                                        #   in Loop: Header=BB1_23 Depth=1
	addi.w	$a1, $a0, 0
	st.d	$zero, $sp, 16
	bnez	$a1, .LBB1_22
	b	.LBB1_20
.LBB1_36:                               # %for.end.i
	ld.w	$s1, $fp, 88
	addi.w	$a0, $a0, 0
	st.w	$s1, $sp, 16
	bnez	$a0, .LBB1_38
# %bb.37:                               # %if.then.i.i92
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
.LBB1_38:                               # %DumpInt.exit96
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_41
# %bb.39:                               # %for.body8.i.lr.ph
	move	$s2, $zero
	slli.d	$s1, $s1, 3
	.p2align	4, , 16
.LBB1_40:                               # %for.body8.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$a0, $a0, $s2
	ld.d	$a1, $fp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(DumpFunction)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	bne	$s1, $s2, .LBB1_40
.LBB1_41:                               # %DumpConstants.exit
	ld.w	$a0, $s0, 24
	beqz	$a0, .LBB1_43
# %bb.42:
	move	$s2, $zero
	ld.w	$a0, $s0, 28
	ld.d	$s1, $fp, 40
	st.w	$s2, $sp, 16
	bnez	$a0, .LBB1_45
	b	.LBB1_44
.LBB1_43:                               # %cond.false.i
	ld.w	$s2, $fp, 84
	ld.w	$a0, $s0, 28
	ld.d	$s1, $fp, 40
	st.w	$s2, $sp, 16
	bnez	$a0, .LBB1_45
.LBB1_44:                               # %DumpInt.exit.i.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	beqz	$a0, .LBB1_76
.LBB1_45:                               # %DumpVector.exit.i
	ld.w	$a1, $s0, 24
	beqz	$a1, .LBB1_77
.LBB1_46:
	move	$s2, $zero
	st.w	$s2, $sp, 16
	bnez	$a0, .LBB1_48
.LBB1_47:                               # %if.then.i.i29.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
.LBB1_48:                               # %DumpInt.exit.i78
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB1_61
# %bb.49:                               # %for.body.lr.ph.i
	move	$s1, $zero
	slli.d	$s2, $s2, 4
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_50:                               # %if.then.i.i83
                                        #   in Loop: Header=BB1_53 Depth=1
	st.d	$zero, $sp, 16
	beqz	$a1, .LBB1_59
.LBB1_51:                               # %DumpString.exit.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a1, $fp, 48
	add.d	$a1, $a1, $s1
	ld.w	$a1, $a1, 8
	addi.w	$a2, $a0, 0
	st.w	$a1, $sp, 16
	beqz	$a2, .LBB1_57
.LBB1_52:                               # %DumpInt.exit54.i
                                        #   in Loop: Header=BB1_53 Depth=1
	addi.d	$s1, $s1, 16
	beq	$s2, $s1, .LBB1_61
.LBB1_53:                               # %for.body.i80
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 48
	ldx.d	$s3, $a1, $s1
	addi.w	$a1, $a0, 0
	beqz	$s3, .LBB1_50
# %bb.54:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a2, $s3, 16
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 16
	bnez	$a1, .LBB1_51
# %bb.55:                               # %DumpBlock.exit12.i.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	bnez	$a0, .LBB1_51
# %bb.56:                               # %if.then.i15.i.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a2, $sp, 16
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $s3, 24
	b	.LBB1_60
	.p2align	4, , 16
.LBB1_57:                               # %DumpInt.exit45.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.d	$a1, $fp, 48
	add.d	$a1, $a1, $s1
	ld.w	$a1, $a1, 12
	st.w	$a1, $sp, 16
	bnez	$a0, .LBB1_52
# %bb.58:                               # %if.then.i.i50.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	b	.LBB1_52
.LBB1_59:                               # %if.then.i.i33.i
                                        #   in Loop: Header=BB1_53 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
.LBB1_60:                               # %DumpString.exit.i
                                        #   in Loop: Header=BB1_53 Depth=1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	b	.LBB1_51
.LBB1_61:                               # %for.end.i79
	ld.w	$a1, $s0, 24
	beqz	$a1, .LBB1_75
# %bb.62:
	move	$s2, $zero
	addi.w	$a1, $a0, 0
	st.w	$s2, $sp, 16
	bnez	$a1, .LBB1_64
.LBB1_63:                               # %if.then.i.i59.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
.LBB1_64:                               # %DumpInt.exit63.i
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB1_74
# %bb.65:                               # %for.body21.lr.ph.i
	move	$s1, $zero
	slli.d	$s2, $s2, 3
	b	.LBB1_68
	.p2align	4, , 16
.LBB1_66:                               # %if.then.i81.i
                                        #   in Loop: Header=BB1_68 Depth=1
	addi.w	$a1, $a0, 0
	st.d	$zero, $sp, 16
	beqz	$a1, .LBB1_72
.LBB1_67:                               # %DumpString.exit89.i
                                        #   in Loop: Header=BB1_68 Depth=1
	addi.d	$s1, $s1, 8
	beq	$s2, $s1, .LBB1_74
.LBB1_68:                               # %for.body21.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	ldx.d	$s3, $a1, $s1
	beqz	$s3, .LBB1_66
# %bb.69:                               # %if.else.i67.i
                                        #   in Loop: Header=BB1_68 Depth=1
	ld.d	$a1, $s3, 16
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a0, 0
	st.d	$a1, $sp, 16
	bnez	$a2, .LBB1_67
# %bb.70:                               # %DumpBlock.exit12.i74.i
                                        #   in Loop: Header=BB1_68 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	bnez	$a0, .LBB1_67
# %bb.71:                               # %if.then.i15.i79.i
                                        #   in Loop: Header=BB1_68 Depth=1
	ld.d	$a2, $sp, 16
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $s3, 24
	b	.LBB1_73
.LBB1_72:                               # %if.then.i.i85.i
                                        #   in Loop: Header=BB1_68 Depth=1
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 8
.LBB1_73:                               # %DumpString.exit89.i
                                        #   in Loop: Header=BB1_68 Depth=1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	b	.LBB1_67
.LBB1_74:                               # %DumpDebug.exit
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
.LBB1_75:                               # %cond.false16.i
	ld.w	$s2, $fp, 72
	addi.w	$a1, $a0, 0
	st.w	$s2, $sp, 16
	bnez	$a1, .LBB1_64
	b	.LBB1_63
.LBB1_76:                               # %if.then.i.i.i
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	slli.d	$a2, $s2, 2
	move	$a1, $s1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$a1, $s0, 24
	bnez	$a1, .LBB1_46
.LBB1_77:                               # %cond.false4.i
	ld.w	$s2, $fp, 92
	st.w	$s2, $sp, 16
	bnez	$a0, .LBB1_48
	b	.LBB1_47
.LBB1_78:                               # %DumpVector.exit
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	slli.d	$a2, $s2, 2
	move	$a1, $s1
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	ld.w	$s3, $fp, 76
	st.w	$s3, $sp, 16
	bnez	$a0, .LBB1_18
# %bb.79:                               # %if.then.i.i155
	ld.d	$a4, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a3, $s0, 16
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 4
	jirl	$ra, $a4, 0
	st.w	$a0, $s0, 28
	b	.LBB1_18
.Lfunc_end1:
	.size	DumpFunction, .Lfunc_end1-DumpFunction
                                        # -- End function
	.hidden	luaU_header
	.section	".note.GNU-stack","",@progbits
	.addrsig
