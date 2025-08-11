	.file	"stream.c"
	.text
	.globl	TreeCCDupString                 # -- Begin function TreeCCDupString
	.p2align	5
	.type	TreeCCDupString,@function
TreeCCDupString:                        # @TreeCCDupString
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_2
# %bb.1:                                # %if.then
	move	$s0, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_2:                                # %if.end
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(strcpy)
	jr	$t8
.Lfunc_end0:
	.size	TreeCCDupString, .Lfunc_end0-TreeCCDupString
                                        # -- End function
	.globl	TreeCCResolvePathname           # -- Begin function TreeCCResolvePathname
	.p2align	5
	.type	TreeCCResolvePathname,@function
TreeCCResolvePathname:                  # @TreeCCResolvePathname
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	beqz	$a0, .LBB1_6
# %bb.1:                                # %if.end
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_6
# %bb.2:                                # %land.lhs.true.preheader
	bstrpick.d	$a4, $a0, 30, 0
	ori	$a0, $zero, 47
	ori	$a2, $zero, 92
	.p2align	4, , 16
.LBB1_3:                                # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a4
	add.d	$a4, $s0, $a4
	ld.bu	$a4, $a4, -1
	beq	$a4, $a0, .LBB1_9
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	beq	$a4, $a2, .LBB1_9
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a4, $a3, -1
	blt	$a1, $a3, .LBB1_3
.LBB1_6:                                # %if.then14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_8
# %bb.7:
	move	$s1, $a0
	b	.LBB1_12
.LBB1_8:                                # %if.then.i
	move	$s0, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$s1, $s0
	b	.LBB1_12
.LBB1_9:                                # %if.end16
	bstrpick.d	$s2, $a3, 31, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB1_11
# %bb.10:                               # %if.then22
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %if.end23
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $s2
.LBB1_12:                               # %cleanup
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	TreeCCResolvePathname, .Lfunc_end1-TreeCCResolvePathname
                                        # -- End function
	.globl	TreeCCStreamCreate              # -- Begin function TreeCCStreamCreate
	.p2align	5
	.type	TreeCCStreamCreate,@function
TreeCCStreamCreate:                     # @TreeCCStreamCreate
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a4, $zero, -1
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	bge	$a4, $a3, .LBB2_9
# %bb.1:                                # %if.else
	move	$s0, $a3
	ldptr.d	$a0, $fp, 8192
	ld.d	$a0, $a0, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(TreeCCResolvePathname)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	slli.d	$a0, $s0, 2
	andi	$s4, $a0, 4
	ldptr.d	$s0, $fp, 8200
	beqz	$s0, .LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.3:                                # %if.end7
                                        #   in Loop: Header=BB2_2 Depth=1
	ld.d	$s0, $s0, 72
	bnez	$s0, .LBB2_2
.LBB2_4:                                # %while.end
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB2_13
# %bb.5:                                # %if.end11
	st.d	$fp, $s0, 0
	st.d	$s3, $s0, 8
	beqz	$s1, .LBB2_14
.LBB2_6:                                # %cond.true
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB2_8
# %bb.7:                                # %if.then.i39
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %TreeCCDupString.exit40
	move	$a0, $s3
	move	$a1, $s1
	b	.LBB2_17
.LBB2_9:                                # %if.then
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB2_11
# %bb.10:                               # %if.then.i
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB2_11:                               # %TreeCCDupString.exit
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	ldptr.d	$s0, $fp, 8200
	bnez	$s0, .LBB2_2
	b	.LBB2_4
.LBB2_12:                               # %if.then6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB2_18
.LBB2_13:                               # %if.then10
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 0
	st.d	$s3, $s0, 8
	bnez	$s1, .LBB2_6
.LBB2_14:                               # %cond.false
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB2_16
# %bb.15:                               # %if.then.i46
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %TreeCCDupString.exit47
	move	$a0, $s3
	move	$a1, $s2
.LBB2_17:                               # %cond.end
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$s3, $s0, 16
	ori	$a0, $zero, 1
	st.d	$a0, $s0, 24
	lu12i.w	$a0, 2
	ori	$a0, $a0, 48
	ldx.b	$a0, $fp, $a0
	ori	$a1, $zero, 2048
	st.w	$a1, $s0, 48
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $a0, 4, 4
	or	$a0, $s4, $a0
	ldptr.d	$a1, $fp, 8200
	vst	$vr0, $s0, 32
	st.b	$a0, $s0, 52
	vst	$vr0, $s0, 56
	st.d	$a1, $s0, 72
	stptr.d	$s0, $fp, 8200
.LBB2_18:                               # %cleanup
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
.Lfunc_end2:
	.size	TreeCCStreamCreate, .Lfunc_end2-TreeCCStreamCreate
                                        # -- End function
	.globl	TreeCCStreamGetJava             # -- Begin function TreeCCStreamGetJava
	.p2align	5
	.type	TreeCCStreamGetJava,@function
TreeCCStreamGetJava:                    # @TreeCCStreamGetJava
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s2, $a0, 8288
	move	$s1, $a1
	beqz	$s2, .LBB3_4
# %bb.1:                                # %if.then
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s0
	slli.d	$a0, $a0, 32
	ori	$s3, $zero, 0
	ori	$a1, $zero, 0
	lu32i.d	$a1, 7
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB3_3
# %bb.2:                                # %if.then7
	ldptr.d	$a0, $fp, 8192
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ldptr.d	$s2, $fp, 8288
.LBB3_3:                                # %if.end
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$s2, $a0, 32
	addi.w	$a0, $a0, 0
	add.d	$a1, $s0, $a0
	ori	$a2, $zero, 47
	stx.b	$a2, $s0, $a0
	addi.d	$a0, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s0, $a0
	stx.w	$a2, $s0, $a0
	st.h	$a1, $a3, 4
	lu32i.d	$s3, 1
	add.d	$a0, $s2, $s3
	srai.d	$a1, $a0, 32
	b	.LBB3_7
.LBB3_4:                                # %if.else
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 6
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB3_6
# %bb.5:                                # %if.then23
	ldptr.d	$a0, $fp, 8192
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %if.end25
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a3, $a1, 4
	move	$a1, $zero
	add.d	$a4, $s0, $a0
	stx.w	$a2, $s0, $a0
	st.h	$a3, $a4, 4
.LBB3_7:                                # %if.end28
	add.d	$a2, $s0, $a1
	addi.w	$a3, $zero, -1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamCreate)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	TreeCCStreamGetJava, .Lfunc_end3-TreeCCStreamGetJava
                                        # -- End function
	.globl	TreeCCStreamDestroy             # -- Begin function TreeCCStreamDestroy
	.p2align	5
	.type	TreeCCStreamDestroy,@function
TreeCCStreamDestroy:                    # @TreeCCStreamDestroy
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB4_2
	.p2align	4, , 16
.LBB4_1:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$s1, $a0, 2048
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB4_1
.LBB4_2:                                # %TreeCCStreamClear.exit
	ld.bu	$a0, $fp, 52
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	andi	$a0, $a0, 239
	st.b	$a0, $fp, 52
	ld.d	$s0, $fp, 56
	ori	$a0, $zero, 2048
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 24
	bnez	$s0, .LBB4_5
.LBB4_3:                                # %while.end
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
	.p2align	4, , 16
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB4_3
.LBB4_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 28
	ld.d	$s1, $s0, 32
	bnez	$a0, .LBB4_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB4_4
.Lfunc_end4:
	.size	TreeCCStreamDestroy, .Lfunc_end4-TreeCCStreamDestroy
                                        # -- End function
	.globl	TreeCCStreamClear               # -- Begin function TreeCCStreamClear
	.p2align	5
	.type	TreeCCStreamClear,@function
TreeCCStreamClear:                      # @TreeCCStreamClear
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB5_2
	.p2align	4, , 16
.LBB5_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ldptr.d	$s1, $a0, 2048
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB5_1
.LBB5_2:                                # %while.end
	ld.bu	$a0, $fp, 52
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 0
	andi	$a0, $a0, 239
	st.b	$a0, $fp, 52
	ori	$a0, $zero, 2048
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 24
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	TreeCCStreamClear, .Lfunc_end5-TreeCCStreamClear
                                        # -- End function
	.globl	TreeCCStreamFlush               # -- Begin function TreeCCStreamFlush
	.p2align	5
	.type	TreeCCStreamFlush,@function
TreeCCStreamFlush:                      # @TreeCCStreamFlush
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -80
	move	$fp, $a0
	ld.bu	$a0, $a0, 52
	andi	$a1, $a0, 8
	beqz	$a1, .LBB6_2
# %bb.1:                                # %land.lhs.true
	ld.d	$a1, $fp, 32
	beqz	$a1, .LBB6_26
.LBB6_2:                                # %if.end
	andi	$a0, $a0, 3
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB6_16
# %bb.3:                                # %if.then12
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_15
# %bb.4:                                # %if.then13
	move	$s0, $a0
	ld.d	$s1, $fp, 32
	ori	$s3, $zero, 2048
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_5:                                # %if.end48
                                        #   in Loop: Header=BB6_6 Depth=1
	ldptr.d	$s1, $s1, 2048
	blt	$s2, $s3, .LBB6_14
.LBB6_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2048
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$s2, $a0, 0
	beqz	$s2, .LBB6_14
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB6_6 Depth=1
	beqz	$s1, .LBB6_13
# %bb.8:                                # %if.end20
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $fp, 40
	beq	$s1, $a0, .LBB6_11
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB6_6 Depth=1
	bne	$s2, $s3, .LBB6_13
# %bb.10:                               # %if.end39
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 2048
	move	$a0, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_5
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_11:                               # %if.then23
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.w	$a0, $fp, 48
	bne	$a0, $s2, .LBB6_13
# %bb.12:                               # %if.end27
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_5
.LBB6_13:                               # %while.end.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB6_15
.LBB6_14:                               # %while.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB6_26
.LBB6_15:                               # %if.end64
	ld.bu	$a0, $fp, 52
	andi	$a0, $a0, 2
	bnez	$a0, .LBB6_29
.LBB6_16:                               # %if.end75
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_28
# %bb.17:                               # %if.end82
	move	$s0, $a0
	ld.d	$s1, $fp, 32
	beqz	$s1, .LBB6_24
# %bb.18:                               # %while.body.lr.ph.i
	ori	$s2, $zero, 2048
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_19:                               # %if.then.i
                                        #   in Loop: Header=BB6_21 Depth=1
	ld.w	$a2, $fp, 48
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 48
	bne	$a0, $a1, .LBB6_23
.LBB6_20:                               # %if.end14.i
                                        #   in Loop: Header=BB6_21 Depth=1
	ldptr.d	$s1, $s1, 2048
	beqz	$s1, .LBB6_24
.LBB6_21:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	beq	$s1, $a0, .LBB6_19
# %bb.22:                               # %if.else.i
                                        #   in Loop: Header=BB6_21 Depth=1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2048
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB6_20
.LBB6_23:
	move	$fp, $zero
	b	.LBB6_25
.LBB6_24:                               # %while.end.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	sltui	$fp, $a0, 1
.LBB6_25:                               # %TreeCCStreamFlushStdio.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB6_27
.LBB6_26:
	ori	$fp, $zero, 1
.LBB6_27:                               # %cleanup
	move	$a0, $fp
	addi.d	$sp, $sp, 80
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB6_28:                               # %if.then80
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB6_27
.LBB6_29:                               # %if.then71
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB6_27
.Lfunc_end6:
	.size	TreeCCStreamFlush, .Lfunc_end6-TreeCCStreamFlush
                                        # -- End function
	.globl	TreeCCStreamFlushStdio          # -- Begin function TreeCCStreamFlushStdio
	.p2align	5
	.type	TreeCCStreamFlushStdio,@function
TreeCCStreamFlushStdio:                 # @TreeCCStreamFlushStdio
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 32
	move	$fp, $a1
	beqz	$s1, .LBB7_7
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a0
	ori	$s2, $zero, 2048
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                # %if.then
                                        #   in Loop: Header=BB7_4 Depth=1
	ld.w	$a2, $s0, 48
	ori	$a1, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 48
	bne	$a0, $a1, .LBB7_6
.LBB7_3:                                # %if.end14
                                        #   in Loop: Header=BB7_4 Depth=1
	ldptr.d	$s1, $s1, 2048
	beqz	$s1, .LBB7_7
.LBB7_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	beq	$s1, $a0, .LBB7_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB7_4 Depth=1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2048
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s2, .LBB7_3
.LBB7_6:
	move	$a0, $zero
	b	.LBB7_8
.LBB7_7:                                # %while.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
.LBB7_8:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	TreeCCStreamFlushStdio, .Lfunc_end7-TreeCCStreamFlushStdio
                                        # -- End function
	.globl	TreeCCStreamPrint               # -- Begin function TreeCCStreamPrint
	.p2align	5
	.type	TreeCCStreamPrint,@function
TreeCCStreamPrint:                      # @TreeCCStreamPrint
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 1976                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1928                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -144
	move	$t0, $a1
	move	$fp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 120
	add.d	$a0, $sp, $a0
	st.d	$a7, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 112
	add.d	$a0, $sp, $a0
	st.d	$a6, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 104
	add.d	$a0, $sp, $a0
	st.d	$a5, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 96
	add.d	$a0, $sp, $a0
	st.d	$a4, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 88
	add.d	$a0, $sp, $a0
	st.d	$a3, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	st.d	$a2, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 80
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 16
	lu12i.w	$a1, 1
	addi.d	$a0, $sp, 24
	lu12i.w	$a2, 1
	ori	$a2, $a2, 80
	add.d	$a3, $sp, $a2
	addi.d	$s0, $sp, 24
	move	$a2, $t0
	pcaddu18i	$ra, %call36(vsnprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	ori	$a2, $zero, 1
	st.b	$a1, $fp, 52
	blt	$a0, $a2, .LBB8_11
# %bb.1:                                # %while.body.lr.ph.i
	ld.w	$a0, $fp, 48
	ori	$s4, $zero, 2048
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                # %if.else13.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s2, $fp, 40
	sub.w	$a1, $s4, $a0
.LBB8_3:                                # %if.end16.i
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.w	$a2, $s1, 0
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s3, $a1, $a2
	add.d	$a0, $s2, $a0
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s0, $s0, $s3
	sub.w	$s1, $s1, $s3
	add.w	$a0, $a0, $s3
	st.w	$a0, $fp, 48
	blez	$s1, .LBB8_11
.LBB8_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	blt	$a0, $s4, .LBB8_2
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB8_8
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s2, 2048
	beqz	$a0, .LBB8_9
.LBB8_7:                                # %if.then7.i
                                        #   in Loop: Header=BB8_4 Depth=1
	stptr.d	$s2, $a0, 2048
	b	.LBB8_10
.LBB8_8:                                # %if.then5.i
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s2, 2048
	bnez	$a0, .LBB8_7
.LBB8_9:                                # %if.else.i
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$s2, $fp, 32
.LBB8_10:                               # %if.end10.i
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a0, $zero
	st.d	$s2, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a1, $zero, 2048
	b	.LBB8_3
.LBB8_11:                               # %WriteBuffer.exit
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_14
# %bb.12:                               # %while.body.lr.ph.i2
	ld.d	$a1, $fp, 24
	addi.d	$s0, $a1, 1
	.p2align	4, , 16
.LBB8_13:                               # %while.body.i3
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, 1
	st.d	$s0, $fp, 24
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB8_13
.LBB8_14:                               # %UpdateLineNum.exit
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 160
	ld.d	$s4, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1976                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end8:
	.size	TreeCCStreamPrint, .Lfunc_end8-TreeCCStreamPrint
                                        # -- End function
	.globl	TreeCCStreamCode                # -- Begin function TreeCCStreamCode
	.p2align	5
	.type	TreeCCStreamCode,@function
TreeCCStreamCode:                       # @TreeCCStreamCode
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
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	ori	$a2, $zero, 1
	st.b	$a1, $fp, 52
	blt	$a0, $a2, .LBB9_11
# %bb.1:                                # %while.body.lr.ph.i
	ld.w	$a0, $fp, 48
	ori	$s5, $zero, 2048
	move	$s2, $s0
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %if.else13.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$s3, $fp, 40
	sub.w	$a1, $s5, $a0
.LBB9_3:                                # %if.end16.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a2, $s1, 0
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s4, $a1, $a2
	add.d	$a0, $s3, $a0
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s2, $s2, $s4
	sub.w	$s1, $s1, $s4
	add.w	$a0, $a0, $s4
	st.w	$a0, $fp, 48
	blez	$s1, .LBB9_11
.LBB9_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	blt	$a0, $s5, .LBB9_2
# %bb.5:                                # %if.then.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB9_8
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	beqz	$a0, .LBB9_9
.LBB9_7:                                # %if.then7.i
                                        #   in Loop: Header=BB9_4 Depth=1
	stptr.d	$s3, $a0, 2048
	b	.LBB9_10
.LBB9_8:                                # %if.then5.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	bnez	$a0, .LBB9_7
.LBB9_9:                                # %if.else.i
                                        #   in Loop: Header=BB9_4 Depth=1
	st.d	$s3, $fp, 32
.LBB9_10:                               # %if.end10.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$a0, $zero
	st.d	$s3, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a1, $zero, 2048
	b	.LBB9_3
.LBB9_11:                               # %WriteBuffer.exit
	ori	$a1, $zero, 10
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_14
# %bb.12:                               # %while.body.lr.ph.i3
	ld.d	$a1, $fp, 24
	addi.d	$s0, $a1, 1
	.p2align	4, , 16
.LBB9_13:                               # %while.body.i4
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a0, 1
	st.d	$s0, $fp, 24
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB9_13
.LBB9_14:                               # %UpdateLineNum.exit
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
.Lfunc_end9:
	.size	TreeCCStreamCode, .Lfunc_end9-TreeCCStreamCode
                                        # -- End function
	.globl	TreeCCStreamCodeIndent          # -- Begin function TreeCCStreamCodeIndent
	.p2align	5
	.type	TreeCCStreamCodeIndent,@function
TreeCCStreamCodeIndent:                 # @TreeCCStreamCodeIndent
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
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB10_33
# %bb.1:                                # %do.body.lr.ph
	move	$s0, $a2
	move	$s1, $a0
	ori	$a3, $zero, 2047
	ori	$s8, $zero, 2048
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %if.end33
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.bu	$a1, $fp, 1
	addi.d	$fp, $fp, 1
	beqz	$a1, .LBB10_33
.LBB10_3:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_20 Depth 2
                                        #       Child Loop BB10_26 Depth 3
	ld.w	$s7, $s1, 48
	blt	$a3, $s7, .LBB10_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 40
	addi.d	$a2, $s7, 1
	st.w	$a2, $s1, 48
	stx.b	$a1, $a0, $s7
	ld.b	$a0, $s1, 52
	ori	$a0, $a0, 16
	st.b	$a0, $s1, 52
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB10_2
	b	.LBB10_17
	.p2align	4, , 16
.LBB10_5:                               # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	st.b	$a1, $sp, 20
	st.b	$zero, $sp, 21
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 52
	move	$s2, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $s1, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_16
# %bb.6:                                # %while.body.i.i.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.d	$s3, $sp, 20
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_7:                               # %if.else13.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$s4, $s1, 40
	sub.w	$a0, $s8, $s7
.LBB10_8:                               # %if.end16.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	addi.w	$a1, $s2, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s5, $a0, $a1
	add.d	$a0, $s4, $s7
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 48
	add.d	$s3, $s3, $s5
	sub.w	$s2, $s2, $s5
	add.w	$s7, $a0, $s5
	st.w	$s7, $s1, 48
	blez	$s2, .LBB10_16
.LBB10_9:                               # %while.body.i.i
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s7, $s8, .LBB10_7
# %bb.10:                               # %if.then.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB10_13
# %bb.11:                               # %if.end.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a0, $s1, 40
	stptr.d	$zero, $s4, 2048
	beqz	$a0, .LBB10_14
.LBB10_12:                              # %if.then7.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	stptr.d	$s4, $a0, 2048
	b	.LBB10_15
.LBB10_13:                              # %if.then5.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	stptr.d	$zero, $s4, 2048
	bnez	$a0, .LBB10_12
.LBB10_14:                              # %if.else.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$s4, $s1, 32
.LBB10_15:                              # %if.end10.i.i
                                        #   in Loop: Header=BB10_9 Depth=2
	move	$s7, $zero
	st.d	$s4, $s1, 40
	st.w	$zero, $s1, 48
	ori	$a0, $zero, 2048
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_16:                              # %_StreamPut.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	ori	$a3, $zero, 2047
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB10_2
.LBB10_17:                              # %if.then9
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a0, $s1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 24
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB10_2
# %bb.18:                               # %do.body13.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$s7, $zero
	b	.LBB10_20
	.p2align	4, , 16
.LBB10_19:                              # %_StreamPut.exit58
                                        #   in Loop: Header=BB10_20 Depth=2
	ori	$a3, $zero, 2047
	addi.w	$s7, $s7, 1
	beq	$s7, $s0, .LBB10_2
.LBB10_20:                              # %do.body13
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_26 Depth 3
	ld.w	$s6, $s1, 48
	blt	$a3, $s6, .LBB10_22
# %bb.21:                               # %if.then17
                                        #   in Loop: Header=BB10_20 Depth=2
	ld.d	$a0, $s1, 40
	addi.d	$a1, $s6, 1
	st.w	$a1, $s1, 48
	ori	$a1, $zero, 9
	stx.b	$a1, $a0, $s6
	ld.b	$a0, $s1, 52
	ori	$a0, $a0, 16
	st.b	$a0, $s1, 52
	addi.w	$s7, $s7, 1
	bne	$s7, $s0, .LBB10_20
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_22:                              # %if.else28
                                        #   in Loop: Header=BB10_20 Depth=2
	ori	$a0, $zero, 9
	st.h	$a0, $sp, 22
	addi.d	$a0, $sp, 22
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 52
	move	$s2, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $s1, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_19
# %bb.23:                               # %while.body.i.i30.preheader
                                        #   in Loop: Header=BB10_20 Depth=2
	addi.d	$s3, $sp, 22
	b	.LBB10_26
	.p2align	4, , 16
.LBB10_24:                              # %if.else13.i.i34
                                        #   in Loop: Header=BB10_26 Depth=3
	ld.d	$s4, $s1, 40
	sub.w	$a0, $s8, $s6
.LBB10_25:                              # %if.end16.i.i36
                                        #   in Loop: Header=BB10_26 Depth=3
	addi.w	$a1, $s2, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s5, $a0, $a1
	add.d	$a0, $s4, $s6
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 48
	add.d	$s3, $s3, $s5
	sub.w	$s2, $s2, $s5
	add.w	$s6, $a0, $s5
	st.w	$s6, $s1, 48
	blez	$s2, .LBB10_19
.LBB10_26:                              # %while.body.i.i30
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$s6, $s8, .LBB10_24
# %bb.27:                               # %if.then.i.i47
                                        #   in Loop: Header=BB10_26 Depth=3
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a0, .LBB10_30
# %bb.28:                               # %if.end.i.i50
                                        #   in Loop: Header=BB10_26 Depth=3
	ld.d	$a0, $s1, 40
	stptr.d	$zero, $s4, 2048
	beqz	$a0, .LBB10_31
.LBB10_29:                              # %if.then7.i.i53
                                        #   in Loop: Header=BB10_26 Depth=3
	stptr.d	$s4, $a0, 2048
	b	.LBB10_32
.LBB10_30:                              # %if.then5.i.i57
                                        #   in Loop: Header=BB10_26 Depth=3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	stptr.d	$zero, $s4, 2048
	bnez	$a0, .LBB10_29
.LBB10_31:                              # %if.else.i.i56
                                        #   in Loop: Header=BB10_26 Depth=3
	st.d	$s4, $s1, 32
.LBB10_32:                              # %if.end10.i.i55
                                        #   in Loop: Header=BB10_26 Depth=3
	move	$s6, $zero
	st.d	$s4, $s1, 40
	st.w	$zero, $s1, 48
	ori	$a0, $zero, 2048
	b	.LBB10_25
.LBB10_33:                              # %while.end
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
.Lfunc_end10:
	.size	TreeCCStreamCodeIndent, .Lfunc_end10-TreeCCStreamCodeIndent
                                        # -- End function
	.globl	TreeCCStreamCodeIndentCustom    # -- Begin function TreeCCStreamCodeIndentCustom
	.p2align	5
	.type	TreeCCStreamCodeIndentCustom,@function
TreeCCStreamCodeIndentCustom:           # @TreeCCStreamCodeIndentCustom
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
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB11_33
# %bb.1:                                # %do.body.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a0
	ori	$a3, $zero, 2047
	ori	$s8, $zero, 2048
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %if.end34
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a1, $a0, 1
	addi.d	$fp, $a0, 1
	beqz	$a1, .LBB11_33
.LBB11_3:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
                                        #     Child Loop BB11_20 Depth 2
                                        #       Child Loop BB11_26 Depth 3
	ld.w	$s7, $s2, 48
	blt	$a3, $s7, .LBB11_5
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s2, 40
	addi.d	$a2, $s7, 1
	st.w	$a2, $s2, 48
	stx.b	$a1, $a0, $s7
	ld.b	$a0, $s2, 52
	ori	$a0, $a0, 16
	st.b	$a0, $s2, 52
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB11_2
	b	.LBB11_17
	.p2align	4, , 16
.LBB11_5:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	st.b	$a1, $sp, 20
	st.b	$zero, $sp, 21
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 52
	move	$s3, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $s2, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_16
# %bb.6:                                # %while.body.i.i.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$s4, $sp, 20
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_7:                               # %if.else13.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	ld.d	$s5, $s2, 40
	sub.w	$a0, $s8, $s7
.LBB11_8:                               # %if.end16.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	addi.w	$a1, $s3, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s6, $a0, $a1
	add.d	$a0, $s5, $s7
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 48
	add.d	$s4, $s4, $s6
	sub.w	$s3, $s3, $s6
	add.w	$s7, $a0, $s6
	st.w	$s7, $s2, 48
	blez	$s3, .LBB11_16
.LBB11_9:                               # %while.body.i.i
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s7, $s8, .LBB11_7
# %bb.10:                               # %if.then.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB11_13
# %bb.11:                               # %if.end.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	ld.d	$a0, $s2, 40
	stptr.d	$zero, $s5, 2048
	beqz	$a0, .LBB11_14
.LBB11_12:                              # %if.then7.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	stptr.d	$s5, $a0, 2048
	b	.LBB11_15
.LBB11_13:                              # %if.then5.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	stptr.d	$zero, $s5, 2048
	bnez	$a0, .LBB11_12
.LBB11_14:                              # %if.else.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	st.d	$s5, $s2, 32
.LBB11_15:                              # %if.end10.i.i
                                        #   in Loop: Header=BB11_9 Depth=2
	move	$s7, $zero
	st.d	$s5, $s2, 40
	st.w	$zero, $s2, 48
	ori	$a0, $zero, 2048
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_16:                              # %_StreamPut.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	ori	$a3, $zero, 2047
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.bu	$a0, $fp, 0
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB11_2
.LBB11_17:                              # %if.then9
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s2, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $s2, 24
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB11_2
# %bb.18:                               # %do.body13.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s7, $zero
	b	.LBB11_20
	.p2align	4, , 16
.LBB11_19:                              # %_StreamPut.exit59
                                        #   in Loop: Header=BB11_20 Depth=2
	ori	$a3, $zero, 2047
	addi.w	$s7, $s7, 1
	beq	$s7, $s0, .LBB11_2
.LBB11_20:                              # %do.body13
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_26 Depth 3
	ld.w	$fp, $s2, 48
	blt	$a3, $fp, .LBB11_22
# %bb.21:                               # %if.then17
                                        #   in Loop: Header=BB11_20 Depth=2
	ld.d	$a0, $s2, 40
	addi.d	$a1, $fp, 1
	st.w	$a1, $s2, 48
	stx.b	$s1, $a0, $fp
	ld.b	$a0, $s2, 52
	ori	$a0, $a0, 16
	st.b	$a0, $s2, 52
	addi.w	$s7, $s7, 1
	bne	$s7, $s0, .LBB11_20
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_22:                              # %if.else28
                                        #   in Loop: Header=BB11_20 Depth=2
	st.b	$s1, $sp, 22
	st.b	$zero, $sp, 23
	addi.d	$a0, $sp, 22
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s2, 52
	move	$s3, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $s2, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB11_19
# %bb.23:                               # %while.body.i.i31.preheader
                                        #   in Loop: Header=BB11_20 Depth=2
	addi.d	$s4, $sp, 22
	b	.LBB11_26
	.p2align	4, , 16
.LBB11_24:                              # %if.else13.i.i35
                                        #   in Loop: Header=BB11_26 Depth=3
	ld.d	$s5, $s2, 40
	sub.w	$a0, $s8, $fp
.LBB11_25:                              # %if.end16.i.i37
                                        #   in Loop: Header=BB11_26 Depth=3
	addi.w	$a1, $s3, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s6, $a0, $a1
	add.d	$a0, $s5, $fp
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 48
	add.d	$s4, $s4, $s6
	sub.w	$s3, $s3, $s6
	add.w	$fp, $a0, $s6
	st.w	$fp, $s2, 48
	blez	$s3, .LBB11_19
.LBB11_26:                              # %while.body.i.i31
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$fp, $s8, .LBB11_24
# %bb.27:                               # %if.then.i.i48
                                        #   in Loop: Header=BB11_26 Depth=3
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$a0, .LBB11_30
# %bb.28:                               # %if.end.i.i51
                                        #   in Loop: Header=BB11_26 Depth=3
	ld.d	$a0, $s2, 40
	stptr.d	$zero, $s5, 2048
	beqz	$a0, .LBB11_31
.LBB11_29:                              # %if.then7.i.i54
                                        #   in Loop: Header=BB11_26 Depth=3
	stptr.d	$s5, $a0, 2048
	b	.LBB11_32
.LBB11_30:                              # %if.then5.i.i58
                                        #   in Loop: Header=BB11_26 Depth=3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	stptr.d	$zero, $s5, 2048
	bnez	$a0, .LBB11_29
.LBB11_31:                              # %if.else.i.i57
                                        #   in Loop: Header=BB11_26 Depth=3
	st.d	$s5, $s2, 32
.LBB11_32:                              # %if.end10.i.i56
                                        #   in Loop: Header=BB11_26 Depth=3
	move	$fp, $zero
	st.d	$s5, $s2, 40
	st.w	$zero, $s2, 48
	ori	$a0, $zero, 2048
	b	.LBB11_25
.LBB11_33:                              # %while.end
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
.Lfunc_end11:
	.size	TreeCCStreamCodeIndentCustom, .Lfunc_end11-TreeCCStreamCodeIndentCustom
                                        # -- End function
	.globl	TreeCCStreamFixLine             # -- Begin function TreeCCStreamFixLine
	.p2align	5
	.type	TreeCCStreamFixLine,@function
TreeCCStreamFixLine:                    # @TreeCCStreamFixLine
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 48
	ldx.hu	$a1, $a1, $a2
	andi	$a2, $a1, 512
	bnez	$a2, .LBB12_2
# %bb.1:                                # %TreeCCStreamLine.exit
	ret
.LBB12_2:                               # %if.then.i
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a2, $a0, 24
	ld.d	$fp, $a0, 16
	andi	$a1, $a1, 256
	addi.d	$s0, $a2, 1
	beqz	$a1, .LBB12_11
# %bb.3:                                # %if.then7.i
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB12_9
# %bb.4:                                # %land.lhs.true.preheader.i
	bstrpick.d	$a6, $a1, 30, 0
	addi.d	$a3, $fp, -1
	ori	$a4, $zero, 47
	ori	$a5, $zero, 92
	move	$a0, $s1
	.p2align	4, , 16
.LBB12_5:                               # %land.lhs.true.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a6
	ldx.bu	$a6, $a3, $a6
	beq	$a6, $a4, .LBB12_10
# %bb.6:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB12_5 Depth=1
	beq	$a6, $a5, .LBB12_10
# %bb.7:                                # %while.body.i
                                        #   in Loop: Header=BB12_5 Depth=1
	addi.d	$a6, $a1, -1
	blt	$a2, $a1, .LBB12_5
# %bb.8:
	move	$a1, $zero
	b	.LBB12_10
.LBB12_9:
	move	$a0, $s1
.LBB12_10:                              # %while.end.i
	addi.w	$a1, $a1, 0
	add.d	$fp, $fp, $a1
.LBB12_11:                              # %if.end.i
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end12:
	.size	TreeCCStreamFixLine, .Lfunc_end12-TreeCCStreamFixLine
                                        # -- End function
	.globl	TreeCCStreamLine                # -- Begin function TreeCCStreamLine
	.p2align	5
	.type	TreeCCStreamLine,@function
TreeCCStreamLine:                       # @TreeCCStreamLine
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 0
	lu12i.w	$a4, 2
	ori	$a4, $a4, 48
	ldx.hu	$a3, $a3, $a4
	andi	$a4, $a3, 512
	bnez	$a4, .LBB13_2
# %bb.1:                                # %if.end18
	ret
.LBB13_2:                               # %if.then
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	andi	$a1, $a3, 256
	beqz	$a1, .LBB13_11
# %bb.3:                                # %if.then7
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB13_9
# %bb.4:                                # %land.lhs.true.preheader
	bstrpick.d	$a6, $a1, 30, 0
	addi.d	$a3, $fp, -1
	ori	$a4, $zero, 47
	ori	$a5, $zero, 92
	move	$a0, $s1
	.p2align	4, , 16
.LBB13_5:                               # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a6
	ldx.bu	$a6, $a3, $a6
	beq	$a6, $a4, .LBB13_10
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_5 Depth=1
	beq	$a6, $a5, .LBB13_10
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB13_5 Depth=1
	addi.d	$a6, $a1, -1
	blt	$a2, $a1, .LBB13_5
# %bb.8:
	move	$a1, $zero
	b	.LBB13_10
.LBB13_9:
	move	$a0, $s1
.LBB13_10:                              # %while.end
	addi.w	$a1, $a1, 0
	add.d	$fp, $fp, $a1
.LBB13_11:                              # %if.end
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end13:
	.size	TreeCCStreamLine, .Lfunc_end13-TreeCCStreamLine
                                        # -- End function
	.globl	TreeCCStreamAddLiteral          # -- Begin function TreeCCStreamAddLiteral
	.p2align	5
	.type	TreeCCStreamAddLiteral,@function
TreeCCStreamAddLiteral:                 # @TreeCCStreamAddLiteral
# %bb.0:                                # %entry
	beqz	$a0, .LBB14_7
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$fp, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	bnez	$a0, .LBB14_3
# %bb.2:                                # %if.then2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
.LBB14_3:                               # %if.end3
	st.d	$s5, $s3, 0
	st.d	$s4, $s3, 8
	ld.d	$a0, $fp, 64
	st.d	$s2, $s3, 16
	st.w	$s1, $s3, 24
	st.w	$s0, $s3, 28
	st.d	$zero, $s3, 32
	beqz	$a0, .LBB14_5
# %bb.4:                                # %if.then10
	st.d	$s3, $a0, 32
	b	.LBB14_6
.LBB14_5:                               # %if.else
	st.d	$s3, $fp, 56
.LBB14_6:                               # %if.end13
	st.d	$s3, $fp, 64
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB14_7:                               # %cleanup
	ret
.Lfunc_end14:
	.size	TreeCCStreamAddLiteral, .Lfunc_end14-TreeCCStreamAddLiteral
                                        # -- End function
	.globl	TreeCCStreamHeaderTop           # -- Begin function TreeCCStreamHeaderTop
	.p2align	5
	.type	TreeCCStreamHeaderTop,@function
TreeCCStreamHeaderTop:                  # @TreeCCStreamHeaderTop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldptr.d	$a2, $a0, 8248
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(OutputMacroName)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ldptr.d	$a2, $a0, 8248
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(OutputMacroName)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(OutputDefns)
	jr	$t8
.Lfunc_end15:
	.size	TreeCCStreamHeaderTop, .Lfunc_end15-TreeCCStreamHeaderTop
                                        # -- End function
	.p2align	5                               # -- Begin function OutputMacroName
	.type	OutputMacroName,@function
OutputMacroName:                        # @OutputMacroName
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
	move	$s0, $a1
	ld.bu	$a1, $a1, 0
	move	$fp, $a0
	beqz	$a1, .LBB16_32
# %bb.1:                                # %while.body.lr.ph
	ori	$s5, $zero, 10
	ori	$s6, $zero, 2047
	ori	$s8, $zero, 2048
	b	.LBB16_5
	.p2align	4, , 16
.LBB16_2:                               # %if.then25
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $fp, 40
	addi.d	$a2, $s7, 1
	st.w	$a2, $fp, 48
.LBB16_3:                               # %if.end47
                                        #   in Loop: Header=BB16_5 Depth=1
	stx.b	$a1, $a0, $s7
	ld.b	$a0, $fp, 52
	ori	$a0, $a0, 16
	st.b	$a0, $fp, 52
.LBB16_4:                               # %if.end47
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.bu	$a1, $s0, 1
	addi.d	$s0, $s0, 1
	beqz	$a1, .LBB16_32
.LBB16_5:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_25 Depth 2
                                        #     Child Loop BB16_14 Depth 2
	ld.w	$s7, $fp, 48
	addi.d	$a0, $a1, -48
	bltu	$a0, $s5, .LBB16_9
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB16_5 Depth=1
	andi	$a0, $a1, 223
	addi.d	$a0, $a0, -65
	ori	$a2, $zero, 25
	bgeu	$a2, $a0, .LBB16_9
# %bb.7:                                # %do.body29
                                        #   in Loop: Header=BB16_5 Depth=1
	blt	$s6, $s7, .LBB16_21
# %bb.8:                                # %if.then33
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.d	$a0, $fp, 40
	addi.d	$a1, $s7, 1
	st.w	$a1, $fp, 48
	ori	$a1, $zero, 95
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_9:                               # %do.body
                                        #   in Loop: Header=BB16_5 Depth=1
	bge	$s6, $s7, .LBB16_2
# %bb.10:                               # %if.else
                                        #   in Loop: Header=BB16_5 Depth=1
	st.b	$a1, $sp, 18
	st.b	$zero, $sp, 19
	addi.d	$a0, $sp, 18
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $fp, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_4
# %bb.11:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB16_5 Depth=1
	addi.d	$s2, $sp, 18
	b	.LBB16_14
	.p2align	4, , 16
.LBB16_12:                              # %if.else13.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	ld.d	$s3, $fp, 40
	sub.w	$a0, $s8, $s7
.LBB16_13:                              # %if.end16.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	addi.w	$a1, $s1, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s4, $a0, $a1
	add.d	$a0, $s3, $s7
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s2, $s2, $s4
	sub.w	$s1, $s1, $s4
	add.w	$s7, $a0, $s4
	st.w	$s7, $fp, 48
	blez	$s1, .LBB16_4
.LBB16_14:                              # %while.body.i.i
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s7, $s8, .LBB16_12
# %bb.15:                               # %if.then.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB16_18
# %bb.16:                               # %if.end.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	beqz	$a0, .LBB16_19
.LBB16_17:                              # %if.then7.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	stptr.d	$s3, $a0, 2048
	b	.LBB16_20
.LBB16_18:                              # %if.then5.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	bnez	$a0, .LBB16_17
.LBB16_19:                              # %if.else.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	st.d	$s3, $fp, 32
.LBB16_20:                              # %if.end10.i.i
                                        #   in Loop: Header=BB16_14 Depth=2
	move	$s7, $zero
	st.d	$s3, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a0, $zero, 2048
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_21:                              # %if.else44
                                        #   in Loop: Header=BB16_5 Depth=1
	ori	$a0, $zero, 95
	st.h	$a0, $sp, 20
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $fp, 52
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_4
# %bb.22:                               # %while.body.i.i42.preheader
                                        #   in Loop: Header=BB16_5 Depth=1
	addi.d	$s2, $sp, 20
	b	.LBB16_25
	.p2align	4, , 16
.LBB16_23:                              # %if.else13.i.i46
                                        #   in Loop: Header=BB16_25 Depth=2
	ld.d	$s3, $fp, 40
	sub.w	$a0, $s8, $s7
.LBB16_24:                              # %if.end16.i.i48
                                        #   in Loop: Header=BB16_25 Depth=2
	addi.w	$a1, $s1, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s4, $a0, $a1
	add.d	$a0, $s3, $s7
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s2, $s2, $s4
	sub.w	$s1, $s1, $s4
	add.w	$s7, $a0, $s4
	st.w	$s7, $fp, 48
	blez	$s1, .LBB16_4
.LBB16_25:                              # %while.body.i.i42
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s7, $s8, .LBB16_23
# %bb.26:                               # %if.then.i.i59
                                        #   in Loop: Header=BB16_25 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB16_29
# %bb.27:                               # %if.end.i.i62
                                        #   in Loop: Header=BB16_25 Depth=2
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	beqz	$a0, .LBB16_30
.LBB16_28:                              # %if.then7.i.i65
                                        #   in Loop: Header=BB16_25 Depth=2
	stptr.d	$s3, $a0, 2048
	b	.LBB16_31
.LBB16_29:                              # %if.then5.i.i69
                                        #   in Loop: Header=BB16_25 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	bnez	$a0, .LBB16_28
.LBB16_30:                              # %if.else.i.i68
                                        #   in Loop: Header=BB16_25 Depth=2
	st.d	$s3, $fp, 32
.LBB16_31:                              # %if.end10.i.i67
                                        #   in Loop: Header=BB16_25 Depth=2
	move	$s7, $zero
	st.d	$s3, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a0, $zero, 2048
	b	.LBB16_24
.LBB16_32:                              # %do.body48
	ld.w	$s5, $fp, 48
	ori	$a0, $zero, 2047
	blt	$a0, $s5, .LBB16_34
# %bb.33:                               # %if.then52
	ld.d	$a0, $fp, 40
	addi.d	$a1, $s5, 1
	st.w	$a1, $fp, 48
	ori	$a1, $zero, 10
	stx.b	$a1, $a0, $s5
	ld.b	$a0, $fp, 52
	ori	$a0, $a0, 16
	st.b	$a0, $fp, 52
	b	.LBB16_45
.LBB16_34:                              # %if.else63
	ori	$a0, $zero, 10
	st.h	$a0, $sp, 22
	addi.d	$a0, $sp, 22
	addi.d	$s0, $sp, 22
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	ori	$a2, $zero, 1
	st.b	$a1, $fp, 52
	blt	$a0, $a2, .LBB16_45
# %bb.35:                               # %while.body.lr.ph.i.i79
	ori	$s4, $zero, 2048
	b	.LBB16_38
	.p2align	4, , 16
.LBB16_36:                              # %if.else13.i.i88
                                        #   in Loop: Header=BB16_38 Depth=1
	ld.d	$s2, $fp, 40
	sub.w	$a0, $s4, $s5
.LBB16_37:                              # %if.end16.i.i90
                                        #   in Loop: Header=BB16_38 Depth=1
	addi.w	$a1, $s1, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s3, $a0, $a1
	add.d	$a0, $s2, $s5
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s0, $s0, $s3
	sub.w	$s1, $s1, $s3
	add.w	$s5, $a0, $s3
	st.w	$s5, $fp, 48
	blez	$s1, .LBB16_45
.LBB16_38:                              # %while.body.i.i84
                                        # =>This Inner Loop Header: Depth=1
	blt	$s5, $s4, .LBB16_36
# %bb.39:                               # %if.then.i.i101
                                        #   in Loop: Header=BB16_38 Depth=1
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB16_42
# %bb.40:                               # %if.end.i.i104
                                        #   in Loop: Header=BB16_38 Depth=1
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s2, 2048
	beqz	$a0, .LBB16_43
.LBB16_41:                              # %if.then7.i.i107
                                        #   in Loop: Header=BB16_38 Depth=1
	stptr.d	$s2, $a0, 2048
	b	.LBB16_44
.LBB16_42:                              # %if.then5.i.i111
                                        #   in Loop: Header=BB16_38 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s2, 2048
	bnez	$a0, .LBB16_41
.LBB16_43:                              # %if.else.i.i110
                                        #   in Loop: Header=BB16_38 Depth=1
	st.d	$s2, $fp, 32
.LBB16_44:                              # %if.end10.i.i109
                                        #   in Loop: Header=BB16_38 Depth=1
	move	$s5, $zero
	st.d	$s2, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a0, $zero, 2048
	b	.LBB16_37
.LBB16_45:                              # %do.end65
	ld.d	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
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
.Lfunc_end16:
	.size	OutputMacroName, .Lfunc_end16-OutputMacroName
                                        # -- End function
	.p2align	5                               # -- Begin function OutputDefns
	.type	OutputDefns,@function
OutputDefns:                            # @OutputDefns
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
	ld.d	$s5, $a0, 56
	beqz	$s5, .LBB17_48
# %bb.1:                                # %while.body.lr.ph
	move	$fp, $a0
	move	$s0, $a1
	move	$s6, $zero
	lu12i.w	$a0, 2
	ori	$s7, $a0, 48
	ori	$s3, $zero, 1
	ori	$s8, $zero, 2048
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB17_4
.LBB17_2:                               #   in Loop: Header=BB17_4 Depth=1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB17_3:                               # %if.end21
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$s5, $s5, 32
	beqz	$s5, .LBB17_46
.LBB17_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_9 Depth 2
                                        #     Child Loop BB17_19 Depth 2
                                        #     Child Loop BB17_28 Depth 2
                                        #     Child Loop BB17_37 Depth 2
	ld.w	$a0, $s5, 24
	bne	$a0, $s0, .LBB17_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $fp, 0
	ldx.hu	$a0, $a0, $s7
	andi	$a1, $a0, 512
	beqz	$a1, .LBB17_15
# %bb.6:                                # %if.then.i
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$s1, $s5, 16
	ld.d	$s2, $s5, 8
	andi	$a0, $a0, 256
	beqz	$a0, .LBB17_14
# %bb.7:                                # %if.then7.i
                                        #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blt	$a1, $s3, .LBB17_13
# %bb.8:                                # %land.lhs.true.preheader.i
                                        #   in Loop: Header=BB17_4 Depth=1
	bstrpick.d	$a2, $a0, 30, 0
	addi.d	$a1, $s2, -1
	.p2align	4, , 16
.LBB17_9:                               # %land.lhs.true.i
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a2
	ldx.bu	$a2, $a1, $a2
	ori	$a3, $zero, 47
	beq	$a2, $a3, .LBB17_13
# %bb.10:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB17_9 Depth=2
	ori	$a3, $zero, 92
	beq	$a2, $a3, .LBB17_13
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB17_9 Depth=2
	addi.d	$a2, $a0, -1
	blt	$s3, $a0, .LBB17_9
# %bb.12:                               #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $zero
.LBB17_13:                              # %while.end.i
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.w	$a0, $a0, 0
	add.d	$s2, $s2, $a0
.LBB17_14:                              # %if.end.i
                                        #   in Loop: Header=BB17_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
.LBB17_15:                              # %TreeCCStreamLine.exit
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$s1, $s5, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s2, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $fp, 52
	blt	$a0, $s3, .LBB17_26
# %bb.16:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.w	$a0, $fp, 48
	b	.LBB17_19
	.p2align	4, , 16
.LBB17_17:                              # %if.else13.i
                                        #   in Loop: Header=BB17_19 Depth=2
	ld.d	$s3, $fp, 40
	sub.w	$a1, $s8, $a0
.LBB17_18:                              # %if.end16.i
                                        #   in Loop: Header=BB17_19 Depth=2
	addi.w	$a2, $s2, 0
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s4, $a1, $a2
	add.d	$a0, $s3, $a0
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s1, $s1, $s4
	sub.w	$s2, $s2, $s4
	add.w	$a0, $a0, $s4
	st.w	$a0, $fp, 48
	blez	$s2, .LBB17_26
.LBB17_19:                              # %while.body.i24
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$a0, $s8, .LBB17_17
# %bb.20:                               # %if.then.i28
                                        #   in Loop: Header=BB17_19 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB17_23
# %bb.21:                               # %if.end.i30
                                        #   in Loop: Header=BB17_19 Depth=2
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	beqz	$a0, .LBB17_24
.LBB17_22:                              # %if.then7.i32
                                        #   in Loop: Header=BB17_19 Depth=2
	stptr.d	$s3, $a0, 2048
	b	.LBB17_25
.LBB17_23:                              # %if.then5.i
                                        #   in Loop: Header=BB17_19 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	bnez	$a0, .LBB17_22
.LBB17_24:                              # %if.else.i
                                        #   in Loop: Header=BB17_19 Depth=2
	st.d	$s3, $fp, 32
.LBB17_25:                              # %if.end10.i
                                        #   in Loop: Header=BB17_19 Depth=2
	move	$a0, $zero
	st.d	$s3, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a1, $zero, 2048
	b	.LBB17_18
	.p2align	4, , 16
.LBB17_26:                              # %WriteBuffer.exit
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$s1, $s5, 0
	ori	$a1, $zero, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_29
# %bb.27:                               # %while.body.lr.ph.i33
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a1, $fp, 24
	addi.d	$s2, $a1, 1
	.p2align	4, , 16
.LBB17_28:                              # %while.body.i34
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $a0, 1
	st.d	$s2, $fp, 24
	ori	$a1, $zero, 10
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	bnez	$a0, .LBB17_28
.LBB17_29:                              # %UpdateLineNum.exit
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.bu	$a0, $s1, 0
	ori	$s6, $zero, 1
	beqz	$a0, .LBB17_2
# %bb.30:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_4 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	ld.bu	$a0, $a0, -1
	ori	$s3, $zero, 1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB17_3
# %bb.31:                               # %do.body
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.w	$s7, $fp, 48
	ori	$a0, $zero, 2047
	blt	$a0, $s7, .LBB17_33
# %bb.32:                               # %if.then15
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $fp, 40
	addi.d	$a1, $s7, 1
	st.w	$a1, $fp, 48
	ori	$a1, $zero, 10
	stx.b	$a1, $a0, $s7
	ld.b	$a0, $fp, 52
	ori	$a0, $a0, 16
	st.b	$a0, $fp, 52
	b	.LBB17_45
.LBB17_33:                              # %if.else
                                        #   in Loop: Header=BB17_4 Depth=1
	ori	$a0, $zero, 10
	st.h	$a0, $sp, 22
	addi.d	$a0, $sp, 22
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 52
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $a1, 16
	st.b	$a1, $fp, 52
	blt	$a0, $s3, .LBB17_44
# %bb.34:                               # %while.body.i.i.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	addi.d	$s2, $sp, 22
	b	.LBB17_37
	.p2align	4, , 16
.LBB17_35:                              # %if.else13.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	ld.d	$s3, $fp, 40
	sub.w	$a0, $s8, $s7
.LBB17_36:                              # %if.end16.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	addi.w	$a1, $s1, 0
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s4, $a0, $a1
	add.d	$a0, $s3, $s7
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	add.d	$s2, $s2, $s4
	sub.w	$s1, $s1, $s4
	add.w	$s7, $a0, $s4
	st.w	$s7, $fp, 48
	blez	$s1, .LBB17_44
.LBB17_37:                              # %while.body.i.i
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s7, $s8, .LBB17_35
# %bb.38:                               # %if.then.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	ori	$a0, $zero, 2056
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$a0, .LBB17_41
# %bb.39:                               # %if.end.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	beqz	$a0, .LBB17_42
.LBB17_40:                              # %if.then7.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	stptr.d	$s3, $a0, 2048
	b	.LBB17_43
.LBB17_41:                              # %if.then5.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TreeCCOutOfMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	stptr.d	$zero, $s3, 2048
	bnez	$a0, .LBB17_40
.LBB17_42:                              # %if.else.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	st.d	$s3, $fp, 32
.LBB17_43:                              # %if.end10.i.i
                                        #   in Loop: Header=BB17_37 Depth=2
	move	$s7, $zero
	st.d	$s3, $fp, 40
	st.w	$zero, $fp, 48
	ori	$a0, $zero, 2048
	b	.LBB17_36
.LBB17_44:                              # %_StreamPut.exit
                                        #   in Loop: Header=BB17_4 Depth=1
	ori	$s3, $zero, 1
.LBB17_45:                              # %do.end
                                        #   in Loop: Header=BB17_4 Depth=1
	ld.d	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	b	.LBB17_3
.LBB17_46:                              # %while.end
	beqz	$s6, .LBB17_48
# %bb.47:                               # %if.then22
	ld.d	$a0, $fp, 0
	ldx.hu	$a0, $a0, $s7
	andi	$a1, $a0, 512
	bnez	$a1, .LBB17_49
.LBB17_48:                              # %if.end23
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
.LBB17_49:                              # %if.then.i.i42
	ld.d	$a1, $fp, 24
	ld.d	$s0, $fp, 16
	andi	$a0, $a0, 256
	addi.d	$s1, $a1, 1
	beqz	$a0, .LBB17_57
# %bb.50:                               # %if.then7.i.i44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB17_56
# %bb.51:                               # %land.lhs.true.preheader.i.i
	bstrpick.d	$a5, $a0, 30, 0
	addi.d	$a2, $s0, -1
	ori	$a3, $zero, 47
	ori	$a4, $zero, 92
	.p2align	4, , 16
.LBB17_52:                              # %land.lhs.true.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a5
	ldx.bu	$a5, $a2, $a5
	beq	$a5, $a3, .LBB17_56
# %bb.53:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB17_52 Depth=1
	beq	$a5, $a4, .LBB17_56
# %bb.54:                               # %while.body.i.i50
                                        #   in Loop: Header=BB17_52 Depth=1
	addi.d	$a5, $a0, -1
	blt	$a1, $a0, .LBB17_52
# %bb.55:
	move	$a0, $zero
.LBB17_56:                              # %while.end.i.i
	addi.w	$a0, $a0, 0
	add.d	$s0, $s0, $a0
.LBB17_57:                              # %if.end.i.i49
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $s0
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
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end17:
	.size	OutputDefns, .Lfunc_end17-OutputDefns
                                        # -- End function
	.globl	TreeCCStreamHeaderBottom        # -- Begin function TreeCCStreamHeaderBottom
	.p2align	5
	.type	TreeCCStreamHeaderBottom,@function
TreeCCStreamHeaderBottom:               # @TreeCCStreamHeaderBottom
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(OutputDefns)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(TreeCCStreamPrint)
	jr	$t8
.Lfunc_end18:
	.size	TreeCCStreamHeaderBottom, .Lfunc_end18-TreeCCStreamHeaderBottom
                                        # -- End function
	.globl	TreeCCStreamSourceTop           # -- Begin function TreeCCStreamSourceTop
	.p2align	5
	.type	TreeCCStreamSourceTop,@function
TreeCCStreamSourceTop:                  # @TreeCCStreamSourceTop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a2, $a0, 16
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TreeCCStreamPrint)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(OutputDefns)
	jr	$t8
.Lfunc_end19:
	.size	TreeCCStreamSourceTop, .Lfunc_end19-TreeCCStreamSourceTop
                                        # -- End function
	.globl	TreeCCStreamSourceTopCS         # -- Begin function TreeCCStreamSourceTopCS
	.p2align	5
	.type	TreeCCStreamSourceTopCS,@function
TreeCCStreamSourceTopCS:                # @TreeCCStreamSourceTopCS
# %bb.0:                                # %entry
	move	$a1, $zero
	pcaddu18i	$t8, %call36(OutputDefns)
	jr	$t8
.Lfunc_end20:
	.size	TreeCCStreamSourceTopCS, .Lfunc_end20-TreeCCStreamSourceTopCS
                                        # -- End function
	.globl	TreeCCStreamSourceBottom        # -- Begin function TreeCCStreamSourceBottom
	.p2align	5
	.type	TreeCCStreamSourceBottom,@function
TreeCCStreamSourceBottom:               # @TreeCCStreamSourceBottom
# %bb.0:                                # %entry
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(OutputDefns)
	jr	$t8
.Lfunc_end21:
	.size	TreeCCStreamSourceBottom, .Lfunc_end21-TreeCCStreamSourceBottom
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".java"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: read-only file has different contents\n"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"w"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"/* %s.  Generated automatically by treecc */\n"
	.size	.L.str.4, 46

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"#ifndef __%s_"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"#define __%s_"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"#endif\n"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"#line %ld \"%s\"\n"
	.size	.L.str.8, 16

	.section	".note.GNU-stack","",@progbits
	.addrsig
