	.file	"insert.c"
	.text
	.globl	insert                          # -- Begin function insert
	.p2align	5
	.type	insert,@function
insert:                                 # @insert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(createIndexEntry)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.1:                                # %if.end
	move	$a1, $a0
	st.d	$s1, $a0, 0
	ld.d	$a0, $s1, 8
	fld.s	$fa0, $a0, 0
	fst.s	$fa0, $a1, 8
	fld.s	$fa0, $a0, 8
	fst.s	$fa0, $a1, 12
	fld.s	$fa0, $a0, 16
	fst.s	$fa0, $a1, 16
	fld.s	$fa0, $a0, 24
	fst.s	$fa0, $a1, 20
	fld.s	$fa0, $a0, 32
	fst.s	$fa0, $a1, 24
	fld.s	$fa0, $a0, 40
	fst.s	$fa0, $a1, 28
	fld.s	$fa0, $a0, 48
	fst.s	$fa0, $a1, 32
	fld.s	$fa0, $a0, 56
	ld.d	$a0, $fp, 0
	fst.s	$fa0, $a1, 36
	addi.d	$a4, $sp, 8
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(insertEntry)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB0_7
# %bb.2:                                # %if.end
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	ori	$a0, $zero, 2
	jr	$a1
.LBB0_3:                                # %if.then42
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB0_7
# %bb.4:                                # %if.then44
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(createIndexNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_12
# %bb.5:                                # %if.end48
	move	$s0, $a0
	pcaddu18i	$ra, %call36(createIndexEntry)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 8
	beqz	$a0, .LBB0_13
# %bb.6:                                # %if.end53
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	ld.d	$a2, $s0, 8
	ld.d	$a0, $a1, 8
	addi.d	$a1, $a2, 8
	pcaddu18i	$ra, %call36(keysUnion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	ld.d	$a1, $s0, 8
	st.d	$a0, $a1, 40
	st.d	$s0, $fp, 0
.LBB0_7:                                # %if.end72
	move	$a0, $zero
	b	.LBB0_11
.LBB0_8:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
.LBB0_9:                                # %cleanup73
	move	$a1, $zero
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(insert.name)
	addi.d	$a0, $a0, %pc_lo12(insert.name)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(errorMessage)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	b	.LBB0_11
.LBB0_10:                               # %if.then65
	ori	$a0, $zero, 1
.LBB0_11:                               # %cleanup73
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_12:                               # %if.then47
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_9
.LBB0_13:                               # %if.then52
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_9
.Lfunc_end0:
	.size	insert, .Lfunc_end0-insert
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
	.word	.LBB0_10-.LJTI0_0
	.word	.LBB0_11-.LJTI0_0
                                        # -- End function
	.type	insert.name,@object             # @insert.name
	.data
insert.name:
	.asciz	"insert"
	.size	insert.name, 7

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't create entry for new data object"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"can't create new root node"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"can't create entry for old root"
	.size	.L.str.2, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym insert.name
