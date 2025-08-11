	.file	"getQueryCommand.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function getQueryCommand
.LCPI0_0:
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0xff7fffff                      # float -3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.globl	getQueryCommand
	.p2align	5
	.type	getQueryCommand,@function
getQueryCommand:                        # @getQueryCommand
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
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI0_0)
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	xvst	$xr0, $a1, 0
	st.d	$zero, $a2, 0
	ori	$s2, $zero, 51
	ori	$s3, $zero, 7
	pcalau12i	$a0, %pc_hi20(.LJTI0_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI0_0)
	ori	$s5, $zero, 1
	ori	$s6, $zero, 2
	.p2align	4, , 16
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getInt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $a0, -2
	bltu	$a1, $s6, .LBB0_26
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a0, $s5, .LBB0_1
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_4:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 16
	bgeu	$a0, $s2, .LBB0_25
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$a1, $sp, 8
	bltu	$s3, $a0, .LBB0_9
# %bb.6:                                # %if.then16
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getKeyAttribute)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_12
# %bb.7:                                # %if.then16
                                        #   in Loop: Header=BB0_1 Depth=1
	beq	$a0, $s5, .LBB0_27
# %bb.8:                                # %if.then16
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a0, $s6, .LBB0_1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_9:                                # %if.else75
                                        #   in Loop: Header=BB0_1 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getNonKeyAttribute)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.10:                               # %if.else75
                                        #   in Loop: Header=BB0_1 Depth=1
	beq	$a0, $s5, .LBB0_28
# %bb.11:                               # %if.else75
                                        #   in Loop: Header=BB0_1 Depth=1
	bne	$a0, $s6, .LBB0_1
	b	.LBB0_27
.LBB0_12:                               # %if.then19
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 16
	bltu	$s3, $a0, .LBB0_1
# %bb.13:                               # %if.then19
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB0_14:                               # %if.then21
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 0
	b	.LBB0_1
.LBB0_15:                               # %if.then79
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_32
# %bb.16:                               # %cleanup97.thread46
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 8
	ld.d	$a3, $fp, 0
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	st.d	$a3, $a0, 16
	st.d	$a0, $fp, 0
	b	.LBB0_1
.LBB0_17:                               # %if.then41
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 16
	b	.LBB0_1
.LBB0_18:                               # %if.then31
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 8
	b	.LBB0_1
.LBB0_19:                               # %if.then36
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 12
	b	.LBB0_1
.LBB0_20:                               # %if.then56
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 28
	b	.LBB0_1
.LBB0_21:                               # %if.then26
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 4
	b	.LBB0_1
.LBB0_22:                               # %if.then46
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 20
	b	.LBB0_1
.LBB0_23:                               # %if.then51
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$fa0, $sp, 8
	fst.s	$fa0, $s0, 24
	b	.LBB0_1
.LBB0_24:                               # %cleanup115.loopexit54
	move	$a0, $zero
	b	.LBB0_31
.LBB0_25:                               # %if.then14
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(getQueryCommand.name)
	addi.d	$a0, $a0, %pc_lo12(getQueryCommand.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %cleanup115.loopexit
	ori	$a0, $zero, 3
	b	.LBB0_31
.LBB0_27:                               # %cleanup.loopexit
	ori	$fp, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_30
.LBB0_28:                               # %cleanup97.thread.loopexit52
	ori	$fp, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_30
.LBB0_29:                               # %cleanup.loopexit53
	ori	$fp, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB0_30:                               # %cleanup
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(getQueryCommand.name)
	addi.d	$a0, $a0, %pc_lo12(getQueryCommand.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_31:                               # %cleanup115
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
.LBB0_32:                               # %cleanup97
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(getQueryCommand.name)
	addi.d	$a0, $a0, %pc_lo12(getQueryCommand.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	b	.LBB0_31
.Lfunc_end0:
	.size	getQueryCommand, .Lfunc_end0-getQueryCommand
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_19-.LJTI0_0
	.word	.LBB0_17-.LJTI0_0
	.word	.LBB0_22-.LJTI0_0
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_20-.LJTI0_0
                                        # -- End function
	.type	getQueryCommand.name,@object    # @getQueryCommand.name
	.data
getQueryCommand.name:
	.asciz	"getQueryCommand"
	.size	getQueryCommand.name, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"code out-of-range"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"improper format - early EOI"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"low-level I/O error"
	.size	.L.str.2, 20

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"allocation failure"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"allocation of non-key attribute"
	.size	.L.str.4, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getQueryCommand.name
